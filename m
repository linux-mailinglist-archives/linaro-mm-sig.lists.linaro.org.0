Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A88A423A968
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Aug 2020 17:33:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F3E8619B0
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Aug 2020 15:33:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 41D7D6604B; Mon,  3 Aug 2020 15:33:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B9AE61653;
	Mon,  3 Aug 2020 15:32:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF5B261513
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 15:32:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D024B61653; Mon,  3 Aug 2020 15:32:43 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id D8A3E61513
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 15:32:42 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8611720678;
 Mon,  3 Aug 2020 15:32:39 +0000 (UTC)
Date: Mon, 3 Aug 2020 11:32:39 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Kalesh Singh <kaleshsingh@google.com>
Message-ID: <20200803113239.194eb86f@oasis.local.home>
In-Reply-To: <20200803144719.3184138-3-kaleshsingh@google.com>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-doc@vger.kernel.org, kernel-team@android.com,
 Jonathan Corbet <corbet@lwn.net>, Ioannis Ilkos <ilkos@google.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Hridya Valsaraju <hridya@google.com>,
 Ingo Molnar <mingo@redhat.com>, John Stultz <john.stultz@linaro.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dmabuf/tracing: Add dma-buf trace
	events
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gTW9uLCAgMyBBdWcgMjAyMCAxNDo0NzoxOSArMDAwMApLYWxlc2ggU2luZ2ggPGthbGVzaHNp
bmdoQGdvb2dsZS5jb20+IHdyb3RlOgoKPiArREVDTEFSRV9FVkVOVF9DTEFTUyhkbWFfYnVmX3Jl
Zl90ZW1wbGF0ZSwKPiArCj4gKwlUUF9QUk9UTyhzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRhc2ssIHN0
cnVjdCBmaWxlICpmaWxwKSwKPiArCj4gKwlUUF9BUkdTKHRhc2ssICBmaWxwKSwKPiArCj4gKwlU
UF9TVFJVQ1RfX2VudHJ5KAo+ICsJCV9fZmllbGQodTMyLCB0Z2lkKQo+ICsJCV9fZmllbGQodTMy
LCBwaWQpCgpJIG9ubHkgc2VlICJjdXJyZW50IiBwYXNzZWQgaW4gYXMgInRhc2siLiBXaHkgYXJl
IHlvdSByZWNvcmRpbmcgdGhlIHBpZAphbmQgdGdpZCBhcyB0aGVzZSBhcmUgYXZhaWxhYmxlIGJ5
IHRoZSB0cmFjaW5nIGluZnJhc3RydWN0dXJlLgoKQXQgbGVhc3QgdGhlIHBpZCBpcyBzYXZlZCBh
dCBldmVyeSBldmVudC4gWW91IGNhbiBzZWUgdGhlIHRnaWQgd2hlbgplbmFibGluZyB0aGUgInJl
Y29yZF90Z2lkIi4KCiAjIHRyYWNlLWNtZCBzdGFydCAtZSBhbGwgLU8gcmVjb3JkX3RnaWQKICMg
dHJhY2UtY21kIHNob3cKCiMgdHJhY2VyOiBub3AKIwojIGVudHJpZXMtaW4tYnVmZmVyL2VudHJp
ZXMtd3JpdHRlbjogMzk3NTAvMzk3NTAgICAjUDo4CiMKIyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXy0tLS0tPT4gaXJxcy1vZmYKIyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAvIF8tLS0tPT4gbmVlZC1yZXNjaGVkCiMgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IC8gXy0tLT0+IGhhcmRpcnEvc29mdGlycQojICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfHwgLyBfLS09PiBwcmVlbXB0LWRlcHRoCiMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8fHwgLyAgICAgZGVsYXkKIyAgICAgICAgICAg
VEFTSy1QSUQgICAgVEdJRCAgIENQVSMgIHx8fHwgICAgVElNRVNUQU1QICBGVU5DVElPTgojICAg
ICAgICAgICAgICB8IHwgICAgICAgIHwgICAgICB8ICAgfHx8fCAgICAgICB8ICAgICAgICAgfAog
ICAgICAgdHJhY2UtY21kLTI4Mjg0ICgyODI4NCkgWzAwNV0gLi4uLiAyNDAzMzguOTM0NjcxOiBz
eXNfZXhpdDogTlIgMSA9IDEKICAgICBrd29ya2VyLzM6Mi0yNzg5MSAoMjc4OTEpIFswMDNdIGQu
Li4gMjQwMzM4LjkzNDY3MTogdGltZXJfc3RhcnQ6IHRpbWVyPTAwMDAwMDAwZDY0M2RlYmQgZnVu
Y3Rpb249ZGVsYXllZF93b3JrX3RpbWVyX2ZuIGV4cGlyZXM9NDUzNTAwODg5MyBbdGltZW91dD0x
OTgxXSBjcHU9MyBpZHg9MTg2IGZsYWdzPUkKICAgICAgIHRyYWNlLWNtZC0yODI4NCAoMjgyODQp
IFswMDVdIC4uLi4gMjQwMzM4LjkzNDY3Mjogc3lzX3dyaXRlIC0+IDB4MQogICAgIGt3b3JrZXIv
MzoyLTI3ODkxICgyNzg5MSkgWzAwM10gLi4uLiAyNDAzMzguOTM0NjcyOiB3b3JrcXVldWVfZXhl
Y3V0ZV9lbmQ6IHdvcmsgc3RydWN0IDAwMDAwMDAwOGZkZGQ0MDM6IGZ1bmN0aW9uIHBzaV9hdmdz
X3dvcmsKICAgICBrd29ya2VyLzM6Mi0yNzg5MSAoMjc4OTEpIFswMDNdIC4uLi4gMjQwMzM4Ljkz
NDY3Mzogd29ya3F1ZXVlX2V4ZWN1dGVfc3RhcnQ6IHdvcmsgc3RydWN0IDAwMDAwMDAwMTExYzk0
MWU6IGZ1bmN0aW9uIGRic193b3JrX2hhbmRsZXIKICAgICBrd29ya2VyLzM6Mi0yNzg5MSAoMjc4
OTEpIFswMDNdIC4uLi4gMjQwMzM4LjkzNDY3Mzogd29ya3F1ZXVlX2V4ZWN1dGVfZW5kOiB3b3Jr
IHN0cnVjdCAwMDAwMDAwMDExMWM5NDFlOiBmdW5jdGlvbiBkYnNfd29ya19oYW5kbGVyCiAgICAg
a3dvcmtlci8zOjItMjc4OTEgKDI3ODkxKSBbMDAzXSBkLi4uIDI0MDMzOC45MzQ2NzM6IHJjdV91
dGlsaXphdGlvbjogU3RhcnQgY29udGV4dCBzd2l0Y2gKICAgICBrd29ya2VyLzM6Mi0yNzg5MSAo
Mjc4OTEpIFswMDNdIGQuLi4gMjQwMzM4LjkzNDY3MzogcmN1X3V0aWxpemF0aW9uOiBFbmQgY29u
dGV4dCBzd2l0Y2gKCi0tIFN0ZXZlCgo+ICsJCV9fZmllbGQodTY0LCBzaXplKQo+ICsJCV9fZmll
bGQoczY0LCBjb3VudCkKPiArCQlfX3N0cmluZyhleHBfbmFtZSwgZG1hX2J1ZmZlcihmaWxwKS0+
ZXhwX25hbWUpCj4gKwkJX19zdHJpbmcobmFtZSwgZG1hX2J1ZmZlcihmaWxwKS0+bmFtZSA/IGRt
YV9idWZmZXIoZmlscCktPm5hbWUgOiBVTktOT1dOKQo+ICsJCV9fZmllbGQodTY0LCBpX2lubykK
PiArCSksCj4gKwo+ICsJVFBfZmFzdF9hc3NpZ24oCj4gKwkJX19lbnRyeS0+dGdpZCA9IHRhc2st
PnRnaWQ7Cj4gKwkJX19lbnRyeS0+cGlkID0gdGFzay0+cGlkOwo+ICsJCV9fZW50cnktPnNpemUg
PSBkbWFfYnVmZmVyKGZpbHApLT5zaXplOwo+ICsJCV9fZW50cnktPmNvdW50ID0gZmlsZV9jb3Vu
dChmaWxwKTsKPiArCQlfX2Fzc2lnbl9zdHIoZXhwX25hbWUsIGRtYV9idWZmZXIoZmlscCktPmV4
cF9uYW1lKTsKPiArCQlfX2Fzc2lnbl9zdHIobmFtZSwgZG1hX2J1ZmZlcihmaWxwKS0+bmFtZSA/
IGRtYV9idWZmZXIoZmlscCktPm5hbWUgOiBVTktOT1dOKTsKPiArCQlfX2VudHJ5LT5pX2lubyA9
IGZpbHAtPmZfaW5vZGUtPmlfaW5vOwo+ICsJKSwKPiArCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
