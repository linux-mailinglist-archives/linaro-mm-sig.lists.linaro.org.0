Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3170F3103C5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 04:40:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A9FD6186A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 03:40:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4CFC766759; Fri,  5 Feb 2021 03:40:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA90A6602F;
	Fri,  5 Feb 2021 03:39:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E168360197
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 03:39:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CEB0F6602F; Fri,  5 Feb 2021 03:39:33 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id 71B6060197
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 03:39:32 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id j11so4836475wmi.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 19:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EdjLgTFEfuQJGZBK+nXnyy4MdoUmVzeK7aTpj4p2cVs=;
 b=cWJyygRAOSlSJSzsUJ9t1mvtNYJM2bVKGE5mPNsXCEeD5IiP7k7HC3MGJtnaUoz7m/
 o4PzcZ7OOaS+fOwcLd6myjc6j6me6Lbgfsn6jrJW433LvBT1TDF3jxZT+JWZyJlaxLLa
 NsoHv3ztOBRiFJ7+mbvcXVnJomb1p24my78sx8Lye8tYEM6UDFa0V9RYssd+CyCQdBN/
 ULFd79QyJ7ueOtXeFhWfXGFuxmHSfqhk3WFKcr74ZPytyDJ9VFXHG1IKOypgqH3x7XtR
 SnUGvwsTmS3FQxdKl+AnmNOqWyb1DgbY/whqvB5+ZvFMqUYyiOcRZu1wwVnTKfXekUrU
 673Q==
X-Gm-Message-State: AOAM533AKRteqvpn1q9ba2Tzz5eSeQiXVZvrPiUDd18vT/u3UFXddeYE
 HbBzCGHK5P6Q6Jh7xh+FP89gs1HmsL/MMNdy5c04VQ==
X-Google-Smtp-Source: ABdhPJwQJDGTRMEZ//zE5/HAppxy72r/wRamcStzdUixQgW9nAir2xq28+kgXZDBfrH14dhfKQY0nMy71MkA5Gx9FJg=
X-Received: by 2002:a05:600c:4fcb:: with SMTP id
 o11mr1704797wmq.88.1612496371382; 
 Thu, 04 Feb 2021 19:39:31 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
 <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
 <CAKMK7uETu_m+=MHyPmqBbEP__qjMF_wmr4c2BiVTPcwE8c+5Mg@mail.gmail.com>
 <CAJuCfpHC6P5cJh-1hv=vjGHCCkM6mA_p19H6tCZmCDxhTuASkQ@mail.gmail.com>
 <ced1c1be-e731-946e-e9ce-919520fe935a@amd.com>
 <CADnq5_Oi_To=9rpet=Q73FY2_-abV47XtXYVVz5TBnRyzwffng@mail.gmail.com>
In-Reply-To: <CADnq5_Oi_To=9rpet=Q73FY2_-abV47XtXYVVz5TBnRyzwffng@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 4 Feb 2021 19:39:20 -0800
Message-ID: <CAJuCfpFjW-QcbZbspOCJ-pLFv01htN3Vp5hkvbkBJxonnV8_Hw@mail.gmail.com>
To: Alex Deucher <alexdeucher@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 Android Kernel Team <kernel-team@android.com>,
 Sandeep Patil <sspatil@google.com>, Liam Mark <lmark@codeaurora.org>,
 Minchan Kim <minchan@kernel.org>, James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>, Linux MM <linux-mm@kvack.org>,
 Matthew Wilcox <willy@infradead.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gVGh1LCBGZWIgNCwgMjAyMSBhdCA3OjU1IEFNIEFsZXggRGV1Y2hlciA8YWxleGRldWNoZXJA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgRmViIDQsIDIwMjEgYXQgMzoxNiBBTSBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4KPiA+IEFt
IDAzLjAyLjIxIHVtIDIyOjQxIHNjaHJpZWIgU3VyZW4gQmFnaGRhc2FyeWFuOgo+ID4gPiBbU05J
UF0KPiA+ID4+PiBIb3cgbWFueSBzZW1pLXVucmVsYXRlZCBidWZmZXIgYWNjb3VudGluZyBzY2hl
bWVzIGRvZXMgZ29vZ2xlIGNvbWUgdXAgd2l0aD8KPiA+ID4+Pgo+ID4gPj4+IFdlJ3JlIGF0IHRo
cmVlIHdpdGggdGhpcyBvbmUuCj4gPiA+Pj4KPiA+ID4+PiBBbmQgYWxzbyB3ZSBfY2Fubm90XyBy
ZXF1aXJlZCB0aGF0IGFsbCBkbWEtYnVmcyBhcmUgYmFja2VkIGJ5IHN0cnVjdAo+ID4gPj4+IHBh
Z2UsIHNvIHJlcXVpcmluZyBzdHJ1Y3QgcGFnZSB0byBtYWtlIHRoaXMgd29yayBpcyBhIG5vLWdv
Lgo+ID4gPj4+Cj4gPiA+Pj4gU2Vjb25kLCB3ZSBkbyBub3Qgd2FudCB0byBhbGwgZ2V0X3VzZXJf
cGFnZXMgYW5kIGZyaWVuZHMgdG8gd29yayBvbgo+ID4gPj4+IGRtYS1idWYsIGl0IGNhdXNlcyBh
bGwga2luZHMgb2YgcGFpbi4gWWVzIG9uIFNvQyB3aGVyZSBkbWEtYnVmIGFyZQo+ID4gPj4+IGV4
Y2x1c2l2ZWx5IGluIHN5c3RlbSBtZW1vcnkgeW91IGNhbiBtYXliZSBnZXQgYXdheSB3aXRoIHRo
aXMsIGJ1dAo+ID4gPj4+IGRtYS1idWYgaXMgc3VwcG9zZWQgdG8gd29yayBpbiBtb3JlIHBsYWNl
cyB0aGFuIGp1c3QgQW5kcm9pZCBTb0NzLgo+ID4gPj4gSSBqdXN0IHJlYWxpemVkIHRoYXQgdm1f
aW5zZXJfcGFnZSBkb2Vzbid0IGV2ZW4gd29yayBmb3IgQ01BLCBpdCB3b3VsZAo+ID4gPj4gdXBz
ZXQgZ2V0X3VzZXJfcGFnZXMgcHJldHR5IGJhZGx5IC0geW91J3JlIHRyeWluZyB0byBwaW4gYSBw
YWdlIGluCj4gPiA+PiBaT05FX01PVkVBQkxFIGJ1dCB5b3UgY2FuJ3QgbW92ZSBpdCBiZWNhdXNl
IGl0J3MgcmF0aGVyIHNwZWNpYWwuCj4gPiA+PiBWTV9TUEVDSUFMIGlzIGV4YWN0bHkgbWVhbnQg
dG8gY2F0Y2ggdGhpcyBzdHVmZi4KPiA+ID4gVGhhbmtzIGZvciB0aGUgaW5wdXQsIERhbmllbCEg
TGV0IG1lIHRoaW5rIGFib3V0IHRoZSBjYXNlcyB5b3UgcG9pbnRlZCBvdXQuCj4gPiA+Cj4gPiA+
IElNSE8sIHRoZSBpc3N1ZSB3aXRoIFBTUyBpcyB0aGUgZGlmZmljdWx0eSBvZiBjYWxjdWxhdGlu
ZyB0aGlzIG1ldHJpYwo+ID4gPiB3aXRob3V0IHN0cnVjdCBwYWdlIHVzYWdlLiBJIGRvbid0IHRo
aW5rIHRoYXQgcHJvYmxlbSBiZWNvbWVzIGVhc2llcgo+ID4gPiBpZiB3ZSB1c2UgY2dyb3VwcyBv
ciBhbnkgb3RoZXIgQVBJLiBJIHdhbnRlZCB0byBlbmFibGUgZXhpc3RpbmcgUFNTCj4gPiA+IGNh
bGN1bGF0aW9uIG1lY2hhbmlzbXMgZm9yIHRoZSBkbWFidWZzIGtub3duIHRvIGJlIGJhY2tlZCBi
eSBzdHJ1Y3QKPiA+ID4gcGFnZXMgKHNpbmNlIHdlIGtub3cgaG93IHRoZSBoZWFwIGFsbG9jYXRl
ZCB0aGF0IG1lbW9yeSksIGJ1dCBzb3VuZHMKPiA+ID4gbGlrZSB0aGlzIHdvdWxkIGxlYWQgdG8g
cHJvYmxlbXMgdGhhdCBJIGRpZCBub3QgY29uc2lkZXIuCj4gPgo+ID4gWWVhaCwgdXNpbmcgc3Ry
dWN0IHBhZ2UgaW5kZWVkIHdvbid0IHdvcmsuIFdlIGRpc2N1c3NlZCB0aGF0IG11bHRpcGxlCj4g
PiB0aW1lcyBub3cgYW5kIERhbmllbCBldmVuIGhhcyBhIHBhdGNoIHRvIG1hbmdsZSB0aGUgc3Ry
dWN0IHBhZ2UgcG9pbnRlcnMKPiA+IGluc2lkZSB0aGUgc2dfdGFibGUgb2JqZWN0IHRvIHByZXZl
bnQgYWJ1c2UgaW4gdGhhdCBkaXJlY3Rpb24uCj4gPgo+ID4gT24gdGhlIG90aGVyIGhhbmQgSSB0
b3RhbGx5IGFncmVlIHRoYXQgd2UgbmVlZCB0byBkbyBzb21ldGhpbmcgb24gdGhpcwo+ID4gc2lk
ZSB3aGljaCBnb2VzIGJleW9uZyB3aGF0IGNncm91cHMgcHJvdmlkZS4KPiA+Cj4gPiBBIGZldyB5
ZWFycyBhZ28gSSBjYW1lIHVwIHdpdGggcGF0Y2hlcyB0byBpbXByb3ZlIHRoZSBPT00ga2lsbGVy
IHRvCj4gPiBpbmNsdWRlIHJlc291cmNlcyBib3VuZCB0byB0aGUgcHJvY2Vzc2VzIHRocm91Z2gg
ZmlsZSBkZXNjcmlwdG9ycy4gSQo+ID4gdW5mb3J0dW5hdGVseSBjYW4ndCBmaW5kIHRoZW0gb2Yg
aGFuZCBhbnkgbW9yZSBhbmQgSSdtIGN1cnJlbnRseSB0byBidXN5Cj4gPiB0byBkaWcgdGhlbSB1
cC4KPgo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8y
MDE1LVNlcHRlbWJlci8wODk3NzguaHRtbAo+IEkgdGhpbmsgdGhlcmUgd2FzIGEgbW9yZSByZWNl
bnQgZGlzY3Vzc2lvbiwgYnV0IEkgY2FuJ3Qgc2VlbSB0byBmaW5kIGl0LgoKVGhhbmtzIGZvciB0
aGUgcG9pbnRlciEKQXBwcmVjaWF0ZSB0aGUgdGltZSBldmVyeW9uZSB0b29rIHRvIGV4cGxhaW4g
dGhlIGlzc3Vlcy4KVGhhbmtzLApTdXJlbi4KCj4KPiBBbGV4Cj4KPiA+Cj4gPiBJbiBnZW5lcmFs
IEkgdGhpbmsgd2UgbmVlZCB0byBtYWtlIGl0IHBvc3NpYmxlIHRoYXQgYm90aCB0aGUgaW4ga2Vy
bmVsCj4gPiBPT00ga2lsbGVyIGFzIHdlbGwgYXMgdXNlcnNwYWNlIHByb2Nlc3NlcyBhbmQgaGFu
ZGxlcnMgaGF2ZSBhY2Nlc3MgdG8KPiA+IHRoYXQga2luZCBvZiBkYXRhLgo+ID4KPiA+IFRoZSBm
ZGluZm8gYXBwcm9hY2ggYXMgc3VnZ2VzdGVkIGluIHRoZSBvdGhlciB0aHJlYWQgc291bmRzIGxp
a2UgdGhlCj4gPiBlYXNpZXN0IHNvbHV0aW9uIHRvIG1lLgo+ID4KPiA+IFJlZ2FyZHMsCj4gPiBD
aHJpc3RpYW4uCj4gPgo+ID4gPiBUaGFua3MsCj4gPiA+IFN1cmVuLgo+ID4gPgo+ID4gPgo+ID4K
PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBk
cmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
