Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CAB2D5773
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 10:44:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE95260639
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 09:44:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B0BFD6653E; Thu, 10 Dec 2020 09:44:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7165360F2C;
	Thu, 10 Dec 2020 09:43:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 26CDA60639
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 09:43:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 104D360F2C; Thu, 10 Dec 2020 09:43:48 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 1073360639
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 09:43:47 +0000 (UTC)
Date: Thu, 10 Dec 2020 10:45:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hridya Valsaraju <hridya@google.com>
Message-ID: <X9HuHFQntOEUNpst@kroah.com>
References: <20201210044400.1080308-1-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210044400.1080308-1-hridya@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: surenb@google.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, john.stultz@linaro.org,
 kernel-team@android.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: Add the capability to expose
 DMA-BUF stats in sysfs
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

T24gV2VkLCBEZWMgMDksIDIwMjAgYXQgMDg6NDM6NTdQTSAtMDgwMCwgSHJpZHlhIFZhbHNhcmFq
dSB3cm90ZToKPiBUaGlzIHBhdGNoIGFsbG93cyBzdGF0aXN0aWNzIHRvIGJlIGVuYWJsZWQgZm9y
IGVhY2ggRE1BLUJVRiBpbgo+IHN5c2ZzIGJ5IGVuYWJsaW5nIHRoZSBjb25maWcgQ09ORklHX0RN
QUJVRl9TWVNGU19TVEFUUy4KPiAKPiBUaGUgZm9sbG93aW5nIHN0YXRzIHdpbGwgYmUgZXhwb3Nl
ZCBieSB0aGUgaW50ZXJmYWNlOgo+IAo+IC9zeXMva2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVy
Pi9leHBvcnRlcl9uYW1lCj4gL3N5cy9rZXJuZWwvZG1hYnVmLzxpbm9kZV9udW1iZXI+L3NpemUK
PiAvc3lzL2tlcm5lbC9kbWFidWYvPGlub2RlX251bWJlcj4vZGV2X21hcF9pbmZvCj4gCj4gVGhl
IGlub2RlX251bWJlciBpcyB1bmlxdWUgZm9yIGVhY2ggRE1BLUJVRiBhbmQgd2FzIGFkZGVkIGVh
cmxpZXIgWzFdCj4gaW4gb3JkZXIgdG8gYWxsb3cgdXNlcnNwYWNlIHRvIHRyYWNrIERNQS1CVUYg
dXNhZ2UgYWNyb3NzIGRpZmZlcmVudAo+IHByb2Nlc3Nlcy4KPiAKPiBDdXJyZW50bHksIHRoaXMg
aW5mb3JtYXRpb24gaXMgZXhwb3NlZCBpbgo+IC9zeXMva2VybmVsL2RlYnVnL2RtYV9idWYvYnVm
aW5mby4KPiBIb3dldmVyLCBzaW5jZSBkZWJ1Z2ZzIGlzIGNvbnNpZGVyZWQgdW5zYWZlIHRvIGJl
IG1vdW50ZWQgaW4gcHJvZHVjdGlvbiwKPiBpdCBpcyBiZWluZyBkdXBsaWNhdGVkIGluIHN5c2Zz
Lgo+IAo+IFRoaXMgaW5mb3JtYXRpb24gaXMgaW50ZW5kZWQgdG8gaGVscCB3aXRoIHJvb3QtY2F1
c2luZwo+IGxvdy1tZW1vcnkga2lsbHMgYW5kIHRoZSBkZWJ1Z2dpbmcvYW5hbHlzaXMgb2Ygb3Ro
ZXIgbWVtb3J5LXJlbGF0ZWQgaXNzdWVzLgo+IAo+IEl0IHdpbGwgYWxzbyBiZSB1c2VkIHRvIGRl
cml2ZSBETUEtQlVGCj4gcGVyLWV4cG9ydGVyIHN0YXRzIGFuZCBwZXItZGV2aWNlIHVzYWdlIHN0
YXRzIGZvciBBbmRyb2lkIEJ1ZyByZXBvcnRzLgo+IAo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwODg3OTEvCj4gCj4gU2lnbmVkLW9mZi1ieTogSHJpZHlh
IFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+CgpUaGFua3MgZm9yIGFkZGluZyBhbGwgb2Yg
dGhpcywgbmljZSB3b3JrIQoKUmV2aWV3ZWQtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
