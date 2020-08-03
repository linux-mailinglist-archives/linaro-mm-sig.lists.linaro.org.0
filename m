Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F27B3248540
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:49:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14A8360665
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:49:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 08D3160E39; Tue, 18 Aug 2020 12:49:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FSL_HELO_FAKE,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 972F9666EB;
	Tue, 18 Aug 2020 12:32:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A614B60E91
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:33:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8ACB461655; Mon,  3 Aug 2020 16:33:39 +0000 (UTC)
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
 [209.85.221.193])
 by lists.linaro.org (Postfix) with ESMTPS id A432660E91
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:33:38 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id r197so4047393vkf.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Aug 2020 09:33:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZrsVGmEonw8RlzrjbIL0se7EVy203/PdgKAT5NhYH9U=;
 b=b/MYiqf9Tna8Zc/IZ2ygHJw7x+hmnzHe6vzjShIjwZMz1+WbfceTfciW2qNJ22TN8a
 DCqnwMVkd5oYJrNN194dD4snz9mZiGPqhPCOoieywe1qX4OGGLGLJ/sCxfscleTMRhRa
 8g+ldYEPmw3vIbnLWu/goZiR67P8vZySyQoPyUaXrnwO2LOiDvra6J6Y1AyJn/aOVj9j
 bIg78HlzIWQMu02aeYH3T4hyPHMw6ckKOUce0wS+KJ4at00NpfHU4xiestYnoKgOVyyR
 EIyAP62BLg8EZ1pWrE+YuHl73QNfHNDOwjWFrBKBxodXBC62d3PVffT/eUq3w2WV1C1D
 wezg==
X-Gm-Message-State: AOAM533PVVEId0k9JEfXOTNbhXbuTqgK8YtHNb6UZXj+nxhjA7VSo2w2
 KXhwIWpfYc0dh9HTz2rL/pL9nA==
X-Google-Smtp-Source: ABdhPJxNZWf6OwoaN9iiZETX6lkFT97KzJHntHF276HRslkmU5htJ72jrlMz9cB9lP3tWNZIEV7w6g==
X-Received: by 2002:a05:6122:1353:: with SMTP id
 f19mr12642301vkp.38.1596472418034; 
 Mon, 03 Aug 2020 09:33:38 -0700 (PDT)
Received: from google.com (182.71.196.35.bc.googleusercontent.com.
 [35.196.71.182])
 by smtp.gmail.com with ESMTPSA id k74sm2802571vka.16.2020.08.03.09.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Aug 2020 09:33:37 -0700 (PDT)
Date: Mon, 3 Aug 2020 16:33:34 +0000
From: Kalesh Singh <kaleshsingh@google.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20200803163334.GA3212137@google.com>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803113239.194eb86f@oasis.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200803113239.194eb86f@oasis.local.home>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMTE6MzI6MzlBTSAtMDQwMCwgU3RldmVuIFJvc3RlZHQg
d3JvdGU6Cj4gT24gTW9uLCAgMyBBdWcgMjAyMCAxNDo0NzoxOSArMDAwMAo+IEthbGVzaCBTaW5n
aCA8a2FsZXNoc2luZ2hAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4gCj4gPiArREVDTEFSRV9FVkVOVF9D
TEFTUyhkbWFfYnVmX3JlZl90ZW1wbGF0ZSwKPiA+ICsKPiA+ICsJVFBfUFJPVE8oc3RydWN0IHRh
c2tfc3RydWN0ICp0YXNrLCBzdHJ1Y3QgZmlsZSAqZmlscCksCj4gPiArCj4gPiArCVRQX0FSR1Mo
dGFzaywgIGZpbHApLAo+ID4gKwo+ID4gKwlUUF9TVFJVQ1RfX2VudHJ5KAo+ID4gKwkJX19maWVs
ZCh1MzIsIHRnaWQpCj4gPiArCQlfX2ZpZWxkKHUzMiwgcGlkKQo+IAo+IEkgb25seSBzZWUgImN1
cnJlbnQiIHBhc3NlZCBpbiBhcyAidGFzayIuIFdoeSBhcmUgeW91IHJlY29yZGluZyB0aGUgcGlk
Cj4gYW5kIHRnaWQgYXMgdGhlc2UgYXJlIGF2YWlsYWJsZSBieSB0aGUgdHJhY2luZyBpbmZyYXN0
cnVjdHVyZS4KPiAKPiBBdCBsZWFzdCB0aGUgcGlkIGlzIHNhdmVkIGF0IGV2ZXJ5IGV2ZW50LiBZ
b3UgY2FuIHNlZSB0aGUgdGdpZCB3aGVuCj4gZW5hYmxpbmcgdGhlICJyZWNvcmRfdGdpZCIuCj4g
Cj4gICMgdHJhY2UtY21kIHN0YXJ0IC1lIGFsbCAtTyByZWNvcmRfdGdpZAo+ICAjIHRyYWNlLWNt
ZCBzaG93Cj4gCj4gIyB0cmFjZXI6IG5vcAo+ICMKPiAjIGVudHJpZXMtaW4tYnVmZmVyL2VudHJp
ZXMtd3JpdHRlbjogMzk3NTAvMzk3NTAgICAjUDo4Cj4gIwo+ICMgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF8tLS0tLT0+IGlycXMtb2ZmCj4gIyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAvIF8tLS0tPT4gbmVlZC1yZXNjaGVkCj4gIyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgLyBfLS0tPT4gaGFyZGlycS9zb2Z0aXJxCj4gIyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHx8IC8gXy0tPT4gcHJlZW1wdC1kZXB0
aAo+ICMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8fHwgLyAgICAgZGVsYXkK
PiAjICAgICAgICAgICBUQVNLLVBJRCAgICBUR0lEICAgQ1BVIyAgfHx8fCAgICBUSU1FU1RBTVAg
IEZVTkNUSU9OCj4gIyAgICAgICAgICAgICAgfCB8ICAgICAgICB8ICAgICAgfCAgIHx8fHwgICAg
ICAgfCAgICAgICAgIHwKPiAgICAgICAgdHJhY2UtY21kLTI4Mjg0ICgyODI4NCkgWzAwNV0gLi4u
LiAyNDAzMzguOTM0NjcxOiBzeXNfZXhpdDogTlIgMSA9IDEKPiAgICAgIGt3b3JrZXIvMzoyLTI3
ODkxICgyNzg5MSkgWzAwM10gZC4uLiAyNDAzMzguOTM0NjcxOiB0aW1lcl9zdGFydDogdGltZXI9
MDAwMDAwMDBkNjQzZGViZCBmdW5jdGlvbj1kZWxheWVkX3dvcmtfdGltZXJfZm4gZXhwaXJlcz00
NTM1MDA4ODkzIFt0aW1lb3V0PTE5ODFdIGNwdT0zIGlkeD0xODYgZmxhZ3M9SQo+ICAgICAgICB0
cmFjZS1jbWQtMjgyODQgKDI4Mjg0KSBbMDA1XSAuLi4uIDI0MDMzOC45MzQ2NzI6IHN5c193cml0
ZSAtPiAweDEKPiAgICAgIGt3b3JrZXIvMzoyLTI3ODkxICgyNzg5MSkgWzAwM10gLi4uLiAyNDAz
MzguOTM0NjcyOiB3b3JrcXVldWVfZXhlY3V0ZV9lbmQ6IHdvcmsgc3RydWN0IDAwMDAwMDAwOGZk
ZGQ0MDM6IGZ1bmN0aW9uIHBzaV9hdmdzX3dvcmsKPiAgICAgIGt3b3JrZXIvMzoyLTI3ODkxICgy
Nzg5MSkgWzAwM10gLi4uLiAyNDAzMzguOTM0NjczOiB3b3JrcXVldWVfZXhlY3V0ZV9zdGFydDog
d29yayBzdHJ1Y3QgMDAwMDAwMDAxMTFjOTQxZTogZnVuY3Rpb24gZGJzX3dvcmtfaGFuZGxlcgo+
ICAgICAga3dvcmtlci8zOjItMjc4OTEgKDI3ODkxKSBbMDAzXSAuLi4uIDI0MDMzOC45MzQ2NzM6
IHdvcmtxdWV1ZV9leGVjdXRlX2VuZDogd29yayBzdHJ1Y3QgMDAwMDAwMDAxMTFjOTQxZTogZnVu
Y3Rpb24gZGJzX3dvcmtfaGFuZGxlcgo+ICAgICAga3dvcmtlci8zOjItMjc4OTEgKDI3ODkxKSBb
MDAzXSBkLi4uIDI0MDMzOC45MzQ2NzM6IHJjdV91dGlsaXphdGlvbjogU3RhcnQgY29udGV4dCBz
d2l0Y2gKPiAgICAgIGt3b3JrZXIvMzoyLTI3ODkxICgyNzg5MSkgWzAwM10gZC4uLiAyNDAzMzgu
OTM0NjczOiByY3VfdXRpbGl6YXRpb246IEVuZCBjb250ZXh0IHN3aXRjaAo+IAo+IC0tIFN0ZXZl
Cj4gClRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzIFN0ZXZlLiBJJ2xsIHJlbW92ZSB0aGUgdGFzayBh
cmcuCgo+ID4gKwkJX19maWVsZCh1NjQsIHNpemUpCj4gPiArCQlfX2ZpZWxkKHM2NCwgY291bnQp
Cj4gPiArCQlfX3N0cmluZyhleHBfbmFtZSwgZG1hX2J1ZmZlcihmaWxwKS0+ZXhwX25hbWUpCj4g
PiArCQlfX3N0cmluZyhuYW1lLCBkbWFfYnVmZmVyKGZpbHApLT5uYW1lID8gZG1hX2J1ZmZlcihm
aWxwKS0+bmFtZSA6IFVOS05PV04pCj4gPiArCQlfX2ZpZWxkKHU2NCwgaV9pbm8pCj4gPiArCSks
Cj4gPiArCj4gPiArCVRQX2Zhc3RfYXNzaWduKAo+ID4gKwkJX19lbnRyeS0+dGdpZCA9IHRhc2st
PnRnaWQ7Cj4gPiArCQlfX2VudHJ5LT5waWQgPSB0YXNrLT5waWQ7Cj4gPiArCQlfX2VudHJ5LT5z
aXplID0gZG1hX2J1ZmZlcihmaWxwKS0+c2l6ZTsKPiA+ICsJCV9fZW50cnktPmNvdW50ID0gZmls
ZV9jb3VudChmaWxwKTsKPiA+ICsJCV9fYXNzaWduX3N0cihleHBfbmFtZSwgZG1hX2J1ZmZlcihm
aWxwKS0+ZXhwX25hbWUpOwo+ID4gKwkJX19hc3NpZ25fc3RyKG5hbWUsIGRtYV9idWZmZXIoZmls
cCktPm5hbWUgPyBkbWFfYnVmZmVyKGZpbHApLT5uYW1lIDogVU5LTk9XTik7Cj4gPiArCQlfX2Vu
dHJ5LT5pX2lubyA9IGZpbHAtPmZfaW5vZGUtPmlfaW5vOwo+ID4gKwkpLAo+ID4gKwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
