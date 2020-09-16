Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 906DA26C2DF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 14:42:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C24FB666D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 12:42:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B6C95666D7; Wed, 16 Sep 2020 12:42:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DFDC616DE;
	Wed, 16 Sep 2020 12:42:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 283EE60F5B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 12:42:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1BACB616DE; Wed, 16 Sep 2020 12:42:04 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id E4F2C60F5B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 12:42:02 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id w16so7968467oia.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 05:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=czd653EAQqRd9y6KWSclqvh0oWs0wM7+eL3iGSU/nsI=;
 b=biPyDU9Qj8pD4h/djnCQI27h80vYQ91QFsOJ5Lp0xRjLjZw+aPtGKj23MVHCBtNxi0
 3CtCbz5iVzW/118LgwKTJUzg37u1katv20/wOnXmzSsGR/JXu9BX24ZKRBCsfzTAe4WY
 de0GoHqLO33mqpgcbOXv8WqHeomCwExIo/Q0sUZDhDjGGMPMX4353AS96xSfpjf2AvK4
 GgwW/IfKjSHkm/TSHsAlLpFDknUKk9jllQ67CE1ur14by7V2Ayty5EPWg543GQRC+9yJ
 YBrO5Z7tElWbdWIQC9Xfg1xUCbO0mlJIkTtSS6yTPL4lbQGSvoVri9jN9OEUvgZsTwzo
 yGYw==
X-Gm-Message-State: AOAM532aLWvg6OnBytmaL7B3b70I10p3miHIGqFANtj3AYdj4PwKGPWq
 i4gnJwgBNzbWMAORZgKJ+pfNb8wTY4fuKeZV0zCZog==
X-Google-Smtp-Source: ABdhPJwB+2iScSnSRjswx0wBN3crEjmROMPJs/KcyWAFLMOIPP9Nlf6b8MzVFM61WOlkTuWWi8Wacl+i3PJJq3k7BoM=
X-Received: by 2002:aca:6083:: with SMTP id u125mr3033440oib.14.1600260122457; 
 Wed, 16 Sep 2020 05:42:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
 <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
 <20200916095359.GD438822@phenom.ffwll.local>
 <fc8f2af7-9fc2-cb55-3065-75a4060b7c82@amd.com>
 <b621db68-30b9-cc3f-c2c0-237a7fe4db09@amd.com>
In-Reply-To: <b621db68-30b9-cc3f-c2c0-237a7fe4db09@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 16 Sep 2020 14:41:51 +0200
Message-ID: <CAKMK7uGJVMj6Sb1nDTBoY8SsXc55y2ypUEsGhNLOkbbjFLuYfw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux MM <linux-mm@kvack.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gV2VkLCBTZXAgMTYsIDIwMjAgYXQgMTo0NSBQTSBDaHJpc3RpYW4gS8O2bmlnCjxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4gW1NOSVBdCj4KPiBCdXQgSmFzb24gcG9pbnRl
ZCBtZSB0byB0aGUgcmlnaHQgcGllY2Ugb2YgY29kZS4gU2VlIHRoaXMgY29tbWVudCBpbiBpbiBt
bWFwX3JlZ2lvbigpOgo+Cj4gLyogLT5tbWFwKCkgY2FuIGNoYW5nZSB2bWEtPnZtX2ZpbGUsIGJ1
dCBtdXN0IGd1YXJhbnRlZSB0aGF0Cj4gKiB2bWFfbGluaygpIGJlbG93IGNhbiBkZW55IHdyaXRl
LWFjY2VzcyBpZiBWTV9ERU5ZV1JJVEUgaXMgc2V0Cj4gKiBhbmQgbWFwIHdyaXRhYmx5IGlmIFZN
X1NIQVJFRCBpcyBzZXQuIFRoaXMgdXN1YWxseSBtZWFucyB0aGUKPiAqIG5ldyBmaWxlIG11c3Qg
bm90IGhhdmUgYmVlbiBleHBvc2VkIHRvIHVzZXItc3BhY2UsIHlldC4KPiAqLwo+IHZtYS0+dm1f
ZmlsZSA9IGdldF9maWxlKGZpbGUpOwo+IGVycm9yID0gY2FsbF9tbWFwKGZpbGUsIHZtYSk7Cj4K
Pgo+IFNvIGNoYW5naW5nIHZtYS0+dm1fZmlsZSBpcyBhbGxvd2VkIGF0IGxlYXN0IHVuZGVyIGNl
cnRhaW4gY2lyY3Vtc3RhbmNlcy4KPgo+IE9ubHkgdGhlICJmaWxlIG11c3Qgbm90IGhhdmUgYmVl
biBleHBvc2VkIHRvIHVzZXItc3BhY2UsIHlldCIgcGFydCBzdGlsbCBuZWVkcyBkb3VibGUgY2hl
Y2tpbmcuIEN1cnJlbnRseSB3b3JraW5nIG9uIHRoYXQuCj4KPgo+IE9rLCBJIHRoaW5rIHdlIGNh
biBndWFyYW50ZWUgZm9yIGFsbCBETUEtYnVmcyB3aGF0IGlzIHJlcXVpcmVkIGhlcmUuCj4KPiBX
aGlsZSBzZWFyY2hpbmcgdGhlIGNvZGUgSSd2ZSBmb3VuZCB0aGF0IGF0IGxlYXN0IHZnZW1fcHJp
bWVfbW1hcCgpIGFuZCBpOTE1X2dlbV9kbWFidWZfbW1hcCgpIGFyZSBkb2luZyB0aGUgc2FtZSB0
aGluZyBvZiBtb2RpZnlpbmcgdm1hLT52bV9maWxlLgo+Cj4gU28gSSdtIGxlYW5pbmcgdG93YXJk
cyB0aGF0IHRoaXMgd29ya3MgYXMgZXhwZWN0ZWQgYW5kIHdlIHNob3VsZCBqdXN0IGRvY3VtZW50
IHRoaXMgcHJvcGVybHkuCj4KPiBEYW5pZWwgYW5kIEphc29uIHdoYXQgZG8geW91IHRoaW5rPwoK
V2VsbCBJIGNhbiBjbGFpbSBJIHN0YXJ0ZWQgdGhpcywgc28gSSBzdGFydGVkIG91dCB3aXRoIG5h
aXZlbHkKYXNzdW1pbmcgdGhhdCBpdCBKdXN0IFdvcmtzIDotKQoKSSB0aGluayB3ZSBhbHJlYWR5
IGhhdmUgdmdlbS9pOTE1IHByaW1lIHRlc3RjYXNlcyBpbiBpZ3Qgd2hpY2ggdHJ5IHRvCmV4Y2Vy
Y2lzZSB0aGlzIG1tYXAgZm9yd2FyZGluZywgaW5jbHVkaW5nIHByb3Zva2luZyBwdGUgc2hvb3Qt
ZG93bnMuClNvIEkgdGhpbmsgYmVzdCB3b3VsZCBiZSBpZiB5b3UgY291bGQgYWxzbyBhZGQgYSB2
YXJpYW50IGZvciBhbWRncHUsCnRvIG1ha2Ugc3VyZSB0aGlzIHJlYWxseSB3b3JrcyBhbmQga2Vl
cHMgd29ya2luZy4KClBsdXMgb2ZjIHRoZSBkb2N1bWVudGF0aW9uIHBhdGNoIHNvIHRoYXQgY29y
ZSBtbSBmb2xrcyBjYW4gb2ZmaWNpYWxseQphY2sgdGhpcyBhcyBsZWdpdC4KLURhbmllbAotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
