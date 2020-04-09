Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F6E1A35C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 16:20:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA1A26656E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 14:20:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B622866572; Thu,  9 Apr 2020 14:20:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,TVD_SUBJ_WIPE_DEBT autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3A3F6657F;
	Thu,  9 Apr 2020 14:19:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D517E6656E
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 14:19:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BB9BD6657F; Thu,  9 Apr 2020 14:19:43 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 521656656E
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 14:19:42 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id 65so12161075wrl.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Apr 2020 07:19:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZUmhXgHoG6HvjILgsbXz8GHCgll+LOxrRpBdz13V/lg=;
 b=KaIfqZaeM0YkDJHHsFOwSFU4NgMp5w8OJOFpUvQ9/Q2nUtOfNuzn30byNLwrDAgiMY
 3vGYY2hX5EnQLsQZkQjZ/UzJAq5oi17AVMucmUmVBRxMSBDeBwtl9pSShZ4/fTnvCNQT
 hcBVlre2kH5ofR3C2cJOBgSIjg17XIcujIJn2ck9geBGmZKBsS4G1PBUJoQRDRshljjn
 N0qGRT546dZyQZuu4JwsMLaR0/G8T+cNd934eFEx9E2fPJ6vHbX/PkGBfXNkMu6492lr
 fUnXO/mBaIDqRjguLSxyR+hiPuPwWZgvicPcXHgCmhtLDqvbq/o8LM5jhFhKOuu0q/Zq
 h5mA==
X-Gm-Message-State: AGi0PuaMt+bHvVmPxJR5PBDskrqIWjf6emD+Fe8vXNPqk0k0XKrb9ESp
 e8umI+sMJRVr8ax2yBFtI5w8o+1+q7EBq5gBJ9Q=
X-Google-Smtp-Source: APiQypLOoBbfys5GjBpuB2sw0gQny4RebKmCrdoglSc09SupmnqmNJDVTgB3bGVTn0oBHL2+TIHKXrenRgwfEr3zhLg=
X-Received: by 2002:a5d:4145:: with SMTP id c5mr9091691wrq.362.1586441981450; 
 Thu, 09 Apr 2020 07:19:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
 <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
 <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
In-Reply-To: <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 9 Apr 2020 10:19:30 -0400
Message-ID: <CADnq5_MjTSm6j=_8huVQ854H6jXY5Rg36wc31QDfOpfjfscWxA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Christoph Hellwig <hch@lst.de>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, X86 ML <x86@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, bpf <bpf@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [Linaro-mm-sig] [PATCH 19/28] gpu/drm: remove the powerpc hack
	in drm_legacy_sg_alloc
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

T24gVGh1LCBBcHIgOSwgMjAyMCBhdCA1OjQxIEFNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZnds
bC5jaD4gd3JvdGU6Cj4KPiBPbiBUaHUsIEFwciA5LCAyMDIwIGF0IDEwOjU0IEFNIEJlbmphbWlu
IEhlcnJlbnNjaG1pZHQKPiA8YmVuaEBrZXJuZWwuY3Jhc2hpbmcub3JnPiB3cm90ZToKPiA+Cj4g
PiBPbiBXZWQsIDIwMjAtMDQtMDggYXQgMTQ6MjUgKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6
Cj4gPiA+IE9uIFdlZCwgQXByIDA4LCAyMDIwIGF0IDAxOjU5OjE3UE0gKzAyMDAsIENocmlzdG9w
aCBIZWxsd2lnIHdyb3RlOgo+ID4gPiA+IElmIHRoaXMgY29kZSB3YXMgYnJva2VuIGZvciBub24t
Y29oZXJlbnQgY2FjaGVzIGEgY3J1ZGUgcG93ZXJwYyBoYWNrCj4gPiA+ID4gaXNuJ3QgZ29pbmcg
dG8gaGVscCBhbnlvbmUgZWxzZS4gIFJlbW92ZSB0aGUgaGFjayBhcyBpdCBpcyB0aGUgbGFzdAo+
ID4gPiA+IHVzZXIgb2YgX192bWFsbG9jIHBhc3NpbmcgYSBwYWdlIHByb3RlY3Rpb24gZmxhZyBv
dGhlciB0aGFuIFBBR0VfS0VSTkVMLgo+ID4gPgo+ID4gPiBXZWxsIEJlbiBhZGRlZCB0aGlzIHRv
IG1ha2Ugc3R1ZmYgd29yayBvbiBwcGMsIG9mYyB0aGUgaG9tZSBncm93biBkbWEKPiA+ID4gbGF5
ZXIgaW4gZHJtIGZyb20gYmFjayB0aGVuIGlzbid0IGdvaW5nIHRvIHdvcmsgaW4gb3RoZXIgcGxh
Y2VzLiBJIGd1ZXNzCj4gPiA+IHNob3VsZCBoYXZlIGF0IGxlYXN0IGFuIGFjayBmcm9tIGhpbSwg
aW4gY2FzZSBhbnlvbmUgc3RpbGwgY2FyZXMgYWJvdXQKPiA+ID4gdGhpcyBvbiBwcGMuIEFkZGlu
ZyBCZW4gdG8gY2MuCj4gPgo+ID4gVGhpcyB3YXMgZHVlIHRvIHNvbWUgZHJpdmVycyAocmFkZW9u
ID8pIHRyeWluZyB0byB1c2Ugdm1hbGxvYyBwYWdlcyBmb3IKPiA+IGNvaGVyZW50IERNQSwgd2hp
Y2ggbWVhbnMgb24gdGhvc2UgNHh4IHBvd2VycGMncyBuZWVkIHRvIGJlIG5vbi1jYWNoZWQuCj4g
Pgo+ID4gVGhlcmUgd2VyZSBtYWNoaW5lcyB1c2luZyB0aGF0ICg0NDAgYmFzZWQgaWlyYyksIHRo
b3VnaCBJIGhvbmVzdGx5Cj4gPiBjYW4ndCB0ZWxsIGlmIGFueWJvZHkgc3RpbGwgdXNlcyBhbnkg
b2YgaXQuCj4KPiBhZ3Agc3Vic3lzdGVtIHN0aWxsIHNlZW1zIHRvIGhhcHBpbHkgZG8gdGhhdCAo
dm1hbGxvYyBtZW1vcnkgZm9yCj4gZGV2aWNlIGFjY2VzcyksIG5ldmVyIGhhdmluZyBiZWVuIHBv
cnRlZCB0byBkbWEgYXBpcyAob3Igd2VsbAo+IGNvbnZlcnRlZCB0byBpb21tdSBkcml2ZXJzLCB3
aGljaCB0aGV5IGtpbmRhIGFyZSByZWFsbHkpLiBTbyBJIHRoaW5rCj4gdGhpcyBhbGwgc3RpbGwg
d29ya3MgZXhhY3RseSBhcyBiYWNrIHRoZW4sIGV2ZW4gd2l0aCB0aGUga21zIHJhZGVvbgo+IGRy
aXZlcnMuIFF1ZXN0aW9uIHJlYWxseSBpcyB3aGV0aGVyIHdlIGhhdmUgdXNlcnMgbGVmdCwgYW5k
IEkgaGF2ZSBubwo+IGNsdWUgYWJvdXQgdGhhdCBlaXRoZXIuCj4KPiBOb3cgaWYgdGhlc2UgYm94
ZXMgZGlkbid0IGV2ZXIgaGF2ZSBhZ3AgdGhlbiBJIHRoaW5rIHdlIGNhbiBnZXQgYXdheQo+IHdp
dGggZGVsZXRpbmcgdGhpcywgc2luY2Ugd2UndmUgYWxyZWFkeSBkZWxldGVkIHRoZSBsZWdhY3kg
cmFkZW9uCj4gZHJpdmVyLiBBbmQgdGhhdCBvbmUgdXNlZCB2bWFsbG9jIGZvciBldmVyeXRoaW5n
LiBUaGUgbmV3IGttcyBvbmUgZG9lcwo+IHVzZSB0aGUgZG1hLWFwaSBpZiB0aGUgZ3B1IGlzbid0
IGNvbm5lY3RlZCB0aHJvdWdoIGFncC4KCkFsbCByYWRlb25zIGhhdmUgYSBidWlsdCBpbiByZW1h
cHBpbmcgdGFibGUgdG8gaGFuZGxlIG5vbi1BR1Agc3lzdGVtcy4KT24gdGhlIGVhcmxpZXIgcmFk
ZW9ucyBpdCB3YXNuJ3QgcXVpdGUgYXMgcGVyZm9ybWFudCBhcyBBR1AsIGJ1dCBpdAp3YXMgYWx3
YXlzIG1vcmUgcmVsaWFibGUgYmVjYXVzZSBBR1AgaXMgQUdQLiAgTWF5YmUgaXQncyB0aW1lIHRv
IGxldApBR1AgZ28/CgpBbGV4Cgo+IC1EYW5pZWwKPgo+ID4gQ2hlZXJzLAo+ID4gQmVuLgo+ID4K
PiA+ID4gLURhbmllbAo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0
b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9kcm1fc2NhdHRlci5jIHwgMTEgKy0tLS0tLS0tLS0KPiA+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxMCBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3NjYXR0ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fc2NhdHRlci5jCj4gPiA+ID4gaW5kZXggY2E1MjAwMjhiMmNiLi5mNGU2MTg0ZDE4NzcgMTAw
NjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKPiA+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3NjYXR0ZXIuYwo+ID4gPiA+IEBAIC00MywxNSArNDMs
NiBAQAo+ID4gPiA+Cj4gPiA+ID4gICNkZWZpbmUgREVCVUdfU0NBVFRFUiAwCj4gPiA+ID4KPiA+
ID4gPiAtc3RhdGljIGlubGluZSB2b2lkICpkcm1fdm1hbGxvY19kbWEodW5zaWduZWQgbG9uZyBz
aXplKQo+ID4gPiA+IC17Cj4gPiA+ID4gLSNpZiBkZWZpbmVkKF9fcG93ZXJwY19fKSAmJiBkZWZp
bmVkKENPTkZJR19OT1RfQ09IRVJFTlRfQ0FDSEUpCj4gPiA+ID4gLSAgIHJldHVybiBfX3ZtYWxs
b2Moc2l6ZSwgR0ZQX0tFUk5FTCwgcGdwcm90X25vbmNhY2hlZF93YyhQQUdFX0tFUk5FTCkpOwo+
ID4gPiA+IC0jZWxzZQo+ID4gPiA+IC0gICByZXR1cm4gdm1hbGxvY18zMihzaXplKTsKPiA+ID4g
PiAtI2VuZGlmCj4gPiA+ID4gLX0KPiA+ID4gPiAtCj4gPiA+ID4gIHN0YXRpYyB2b2lkIGRybV9z
Z19jbGVhbnVwKHN0cnVjdCBkcm1fc2dfbWVtICogZW50cnkpCj4gPiA+ID4gIHsKPiA+ID4gPiAg
ICAgc3RydWN0IHBhZ2UgKnBhZ2U7Cj4gPiA+ID4gQEAgLTEyNiw3ICsxMTcsNyBAQCBpbnQgZHJt
X2xlZ2FjeV9zZ19hbGxvYyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ID4g
PiA+ICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4gPiA+ICAgICB9Cj4gPiA+ID4KPiA+
ID4gPiAtICAgZW50cnktPnZpcnR1YWwgPSBkcm1fdm1hbGxvY19kbWEocGFnZXMgPDwgUEFHRV9T
SElGVCk7Cj4gPiA+ID4gKyAgIGVudHJ5LT52aXJ0dWFsID0gdm1hbGxvY18zMihwYWdlcyA8PCBQ
QUdFX1NISUZUKTsKPiA+ID4gPiAgICAgaWYgKCFlbnRyeS0+dmlydHVhbCkgewo+ID4gPiA+ICAg
ICAgICAgICAgIGtmcmVlKGVudHJ5LT5idXNhZGRyKTsKPiA+ID4gPiAgICAgICAgICAgICBrZnJl
ZShlbnRyeS0+cGFnZWxpc3QpOwo+ID4gPiA+IC0tCj4gPiA+ID4gMi4yNS4xCj4gPiA+ID4KPiA+
ID4KPiA+ID4KPiA+Cj4KPgo+IC0tCj4gRGFuaWVsIFZldHRlcgo+IFNvZnR3YXJlIEVuZ2luZWVy
LCBJbnRlbCBDb3Jwb3JhdGlvbgo+ICs0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cu
ZmZ3bGwuY2gKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
