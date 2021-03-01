Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE2E327933
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Mar 2021 09:29:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE3A26677D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Mar 2021 08:29:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BDB656677B; Mon,  1 Mar 2021 08:29:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F435666F4;
	Mon,  1 Mar 2021 08:28:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2682E60763
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Mar 2021 08:28:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 09E0C666F4; Mon,  1 Mar 2021 08:28:37 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by lists.linaro.org (Postfix) with ESMTPS id 97DE260763
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Mar 2021 08:28:35 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id s3so15694581otg.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Mar 2021 00:28:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Po0BcOHVOJTG0hvFYjPlIwmZEd13oK67+UakEhu7B6Q=;
 b=JmZB0VAj68WRLushIWDDWiIt03DUYOdPQvpz0woX9pSK1uXqLm/xi4sGJph9up5hl3
 6BWkuIxzZGg5LQ09mpyLVyOhAi2KXft+PHcdjDH9pfL+aXGskXy9iIvdGf4+1MZPmuo7
 JthwL4XWYpHrV6kIrUuwMq5odZvofcM3JjBLw51zVuFMEM0ownQ8mMTgiNJhxmcZ/Iy6
 6x4/O8DBKOePvPIlf8F8IX5Isvnn69XfOYDSSt9y/ARwdvU/3AJRsIawifnxZhOt/fDy
 x1nkRMOeIMmS9G7Bkzw9bFgUQKxvZCsjbKOamkTnICzCNHa+MHFFIymbtNefRWx/NPuF
 rXhw==
X-Gm-Message-State: AOAM533SbH5GMnS2ErgHj/IQyKbEz8bin9Z2URldtQjGE6zzg3JHxZvZ
 ry3D2+BeW8OFP3II7d4F06wTl4Qwk3rs1QPLSmgOOA==
X-Google-Smtp-Source: ABdhPJympOz7bwbjwQR+/YqRgluV9bZ9F2UL/K13jiisJVkY2GNo/v3HZSpiXQHFFJMtqZ1UFhbbahYsC9DYYMGGasg=
X-Received: by 2002:a9d:6481:: with SMTP id g1mr2759310otl.303.1614587314867; 
 Mon, 01 Mar 2021 00:28:34 -0800 (PST)
MIME-Version: 1.0
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
 <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
 <CAKMK7uFezcV52oTZbHeve2HFFATeCGyK6zTT6nE1KVP69QRr0A@mail.gmail.com>
 <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
 <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
 <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
In-Reply-To: <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 1 Mar 2021 09:28:23 +0100
Message-ID: <CAKMK7uE=8+hj-MUFXHFoG_hAbz_Obi8a99+DE5_d1K+KZaG+tQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
	mmap
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

T24gU2F0LCBGZWIgMjcsIDIwMjEgYXQgOTowNiBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiBPbiAyLzI2LzIxIDI6MjggUE0sIERh
bmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBTbyBJIHRoaW5rIGl0IHN0b3BzIGd1cC4gQnV0IEkgaGF2
ZW4ndCB2ZXJpZmllZCBhdCBhbGwuIFdvdWxkIGJlIGdvb2QKPiA+IGlmIENocmlzdGlhbiBjYW4g
Y2hlY2sgdGhpcyB3aXRoIHNvbWUgZGlyZWN0IGlvIHRvIGEgYnVmZmVyIGluIHN5c3RlbQo+ID4g
bWVtb3J5Lgo+Cj4gSG1tLAo+Cj4gRG9jcyAoYWdhaW4gdm1fbm9ybWFsX3BhZ2UoKSBzYXkpCj4K
PiAgICogVk1fTUlYRURNQVAgbWFwcGluZ3MgY2FuIGxpa2V3aXNlIGNvbnRhaW4gbWVtb3J5IHdp
dGggb3Igd2l0aG91dCAic3RydWN0Cj4gICAqIHBhZ2UiIGJhY2tpbmcsIGhvd2V2ZXIgdGhlIGRp
ZmZlcmVuY2UgaXMgdGhhdCBfYWxsXyBwYWdlcyB3aXRoIGEgc3RydWN0Cj4gICAqIHBhZ2UgKHRo
YXQgaXMsIHRob3NlIHdoZXJlIHBmbl92YWxpZCBpcyB0cnVlKSBhcmUgcmVmY291bnRlZCBhbmQK
PiBjb25zaWRlcmVkCj4gICAqIG5vcm1hbCBwYWdlcyBieSB0aGUgVk0uIFRoZSBkaXNhZHZhbnRh
Z2UgaXMgdGhhdCBwYWdlcyBhcmUgcmVmY291bnRlZAo+ICAgKiAod2hpY2ggY2FuIGJlIHNsb3dl
ciBhbmQgc2ltcGx5IG5vdCBhbiBvcHRpb24gZm9yIHNvbWUgUEZOTUFQCj4gdXNlcnMpLiBUaGUK
PiAgICogYWR2YW50YWdlIGlzIHRoYXQgd2UgZG9uJ3QgaGF2ZSB0byBmb2xsb3cgdGhlIHN0cmlj
dCBsaW5lYXJpdHkgcnVsZSBvZgo+ICAgKiBQRk5NQVAgbWFwcGluZ3MgaW4gb3JkZXIgdG8gc3Vw
cG9ydCBDT1dhYmxlIG1hcHBpbmdzLgo+Cj4gYnV0IGl0J3MgdHJ1ZSBfX3ZtX2luc2VydF9taXhl
ZCgpIGVuZHMgdXAgaW4gdGhlIGluc2VydF9wZm4oKSBwYXRoLCBzbwo+IHRoZSBhYm92ZSBpc24n
dCByZWFsbHkgdHJ1ZSwgd2hpY2ggbWFrZXMgbWUgd29uZGVyIGlmIGFuZCBpbiB0aGF0IGNhc2UK
PiB3aHkgdGhlcmUgY291bGQgYW55IGxvbmdlciBldmVyIGJlIGEgc2lnbmlmaWNhbnQgcGVyZm9y
bWFuY2UgZGlmZmVyZW5jZQo+IGJldHdlZW4gTUlYRURNQVAgYW5kIFBGTk1BUC4KClllYWggaXQn
cyBkZWZpbml0ZWx5IGNvbmZ1c2luZy4gSSBndWVzcyBJJ2xsIGhhY2sgdXAgYSBwYXRjaCBhbmQg
c2VlCndoYXQgc3RpY2tzLgoKPiBCVFcgcmVnYXJkaW5nIHRoZSBUVE0gaHVnZXB0ZXMsIEkgZG9u
J3QgdGhpbmsgd2UgZXZlciBsYW5kZWQgdGhhdCBkZXZtYXAKPiBoYWNrLCBzbyB0aGV5IGFyZSAo
Zm9yIHRoZSBub24tZ3VwIGNhc2UpIHJlbHlpbmcgb24KPiB2bWFfaXNfc3BlY2lhbF9odWdlKCku
IEZvciB0aGUgZ3VwIGNhc2UsIEkgdGhpbmsgdGhlIGJ1ZyBpcyBzdGlsbCB0aGVyZS4KCk1heWJl
IHRoZXJlJ3MgYW5vdGhlciBkZXZtYXAgaGFjaywgYnV0IHRoZSB0dG1fdm1faW5zZXJ0IGZ1bmN0
aW9ucyBkbwp1c2UgUEZOX0RFViBhbmQgYWxsIHRoYXQuIEFuZCBJIHRoaW5rIHRoYXQgc3RvcHMg
Z3VwX2Zhc3QgZnJvbSB0cnlpbmcKdG8gZmluZCB0aGUgdW5kZXJseWluZyBwYWdlLgotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
