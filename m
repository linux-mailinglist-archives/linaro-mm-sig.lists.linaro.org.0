Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E31A3669
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 16:58:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50442665A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 14:58:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4099066597; Thu,  9 Apr 2020 14:58:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
	TVD_SUBJ_WIPE_DEBT autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B11E66596;
	Thu,  9 Apr 2020 14:57:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 959346658C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 14:57:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7BED066596; Thu,  9 Apr 2020 14:57:26 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 067B26658C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 14:57:25 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id t28so10765263ott.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Apr 2020 07:57:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MvCVAZWSVpElREbfXb1mt2g3VRvFUkKvrzFHvdRqvkg=;
 b=Qh63OgOa1wBT5In4OWa6YDcvgnkujL6k67xJzSRxgigL+YDbblbLefJokjpNM28mEi
 Wr63/VU9OPgphM/X/z+TK8vKHK+shIJYzw64iB/dxQeDghxJovOE93zPb7a2InM2DYUF
 rxLHigR0Sqc5/0Nd0I7ZzvlVW15ufhthXz1VEdgObPnZZt4wTl5JDyk4XWFxVxI20XVY
 VVeUezym9vshElDyAwCvonaIbcCIwTxFQbpsJFs3Xjn8J6fECpnCZokJD/fBXB0ucGmo
 VtvggrvSjkdXaEGIVCwnVOD7dd4vfYhLcFib1zVXLNvq+7L5liHqoRIY96qeoUgtUExd
 fPFQ==
X-Gm-Message-State: AGi0PuZoXmFja3zOp92zdkVYPsdvZxQW5dKac7RYesYEomEGOd0R2bd5
 Uq5lqzaznxbjOy1cV5M2/4gOcFCyxkU77k7jE9EHnQ==
X-Google-Smtp-Source: APiQypIfaMneOW4AjWTG+JPErLig8zTku8dFSxJeBsmrgUZhaXvkSx7h0yWmBa2juZ12CNXUTDblTNSgeRCuieJep64=
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr251186otr.188.1586444244321; 
 Thu, 09 Apr 2020 07:57:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
 <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
 <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
 <CADnq5_MjTSm6j=_8huVQ854H6jXY5Rg36wc31QDfOpfjfscWxA@mail.gmail.com>
In-Reply-To: <CADnq5_MjTSm6j=_8huVQ854H6jXY5Rg36wc31QDfOpfjfscWxA@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 9 Apr 2020 16:57:12 +0200
Message-ID: <CAKMK7uESDf446FsdA2KC9sybSKxf5OdXvHZ-d4G3PAt-vvP8zg@mail.gmail.com>
To: Alex Deucher <alexdeucher@gmail.com>
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

T24gVGh1LCBBcHIgOSwgMjAyMCBhdCA0OjE5IFBNIEFsZXggRGV1Y2hlciA8YWxleGRldWNoZXJA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgQXByIDksIDIwMjAgYXQgNTo0MSBBTSBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgQXByIDks
IDIwMjAgYXQgMTA6NTQgQU0gQmVuamFtaW4gSGVycmVuc2NobWlkdAo+ID4gPGJlbmhAa2VybmVs
LmNyYXNoaW5nLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFdlZCwgMjAyMC0wNC0wOCBhdCAx
NDoyNSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gPiBPbiBXZWQsIEFwciAwOCwg
MjAyMCBhdCAwMTo1OToxN1BNICswMjAwLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiA+ID4g
PiA+IElmIHRoaXMgY29kZSB3YXMgYnJva2VuIGZvciBub24tY29oZXJlbnQgY2FjaGVzIGEgY3J1
ZGUgcG93ZXJwYyBoYWNrCj4gPiA+ID4gPiBpc24ndCBnb2luZyB0byBoZWxwIGFueW9uZSBlbHNl
LiAgUmVtb3ZlIHRoZSBoYWNrIGFzIGl0IGlzIHRoZSBsYXN0Cj4gPiA+ID4gPiB1c2VyIG9mIF9f
dm1hbGxvYyBwYXNzaW5nIGEgcGFnZSBwcm90ZWN0aW9uIGZsYWcgb3RoZXIgdGhhbiBQQUdFX0tF
Uk5FTC4KPiA+ID4gPgo+ID4gPiA+IFdlbGwgQmVuIGFkZGVkIHRoaXMgdG8gbWFrZSBzdHVmZiB3
b3JrIG9uIHBwYywgb2ZjIHRoZSBob21lIGdyb3duIGRtYQo+ID4gPiA+IGxheWVyIGluIGRybSBm
cm9tIGJhY2sgdGhlbiBpc24ndCBnb2luZyB0byB3b3JrIGluIG90aGVyIHBsYWNlcy4gSSBndWVz
cwo+ID4gPiA+IHNob3VsZCBoYXZlIGF0IGxlYXN0IGFuIGFjayBmcm9tIGhpbSwgaW4gY2FzZSBh
bnlvbmUgc3RpbGwgY2FyZXMgYWJvdXQKPiA+ID4gPiB0aGlzIG9uIHBwYy4gQWRkaW5nIEJlbiB0
byBjYy4KPiA+ID4KPiA+ID4gVGhpcyB3YXMgZHVlIHRvIHNvbWUgZHJpdmVycyAocmFkZW9uID8p
IHRyeWluZyB0byB1c2Ugdm1hbGxvYyBwYWdlcyBmb3IKPiA+ID4gY29oZXJlbnQgRE1BLCB3aGlj
aCBtZWFucyBvbiB0aG9zZSA0eHggcG93ZXJwYydzIG5lZWQgdG8gYmUgbm9uLWNhY2hlZC4KPiA+
ID4KPiA+ID4gVGhlcmUgd2VyZSBtYWNoaW5lcyB1c2luZyB0aGF0ICg0NDAgYmFzZWQgaWlyYyks
IHRob3VnaCBJIGhvbmVzdGx5Cj4gPiA+IGNhbid0IHRlbGwgaWYgYW55Ym9keSBzdGlsbCB1c2Vz
IGFueSBvZiBpdC4KPiA+Cj4gPiBhZ3Agc3Vic3lzdGVtIHN0aWxsIHNlZW1zIHRvIGhhcHBpbHkg
ZG8gdGhhdCAodm1hbGxvYyBtZW1vcnkgZm9yCj4gPiBkZXZpY2UgYWNjZXNzKSwgbmV2ZXIgaGF2
aW5nIGJlZW4gcG9ydGVkIHRvIGRtYSBhcGlzIChvciB3ZWxsCj4gPiBjb252ZXJ0ZWQgdG8gaW9t
bXUgZHJpdmVycywgd2hpY2ggdGhleSBraW5kYSBhcmUgcmVhbGx5KS4gU28gSSB0aGluawo+ID4g
dGhpcyBhbGwgc3RpbGwgd29ya3MgZXhhY3RseSBhcyBiYWNrIHRoZW4sIGV2ZW4gd2l0aCB0aGUg
a21zIHJhZGVvbgo+ID4gZHJpdmVycy4gUXVlc3Rpb24gcmVhbGx5IGlzIHdoZXRoZXIgd2UgaGF2
ZSB1c2VycyBsZWZ0LCBhbmQgSSBoYXZlIG5vCj4gPiBjbHVlIGFib3V0IHRoYXQgZWl0aGVyLgo+
ID4KPiA+IE5vdyBpZiB0aGVzZSBib3hlcyBkaWRuJ3QgZXZlciBoYXZlIGFncCB0aGVuIEkgdGhp
bmsgd2UgY2FuIGdldCBhd2F5Cj4gPiB3aXRoIGRlbGV0aW5nIHRoaXMsIHNpbmNlIHdlJ3ZlIGFs
cmVhZHkgZGVsZXRlZCB0aGUgbGVnYWN5IHJhZGVvbgo+ID4gZHJpdmVyLiBBbmQgdGhhdCBvbmUg
dXNlZCB2bWFsbG9jIGZvciBldmVyeXRoaW5nLiBUaGUgbmV3IGttcyBvbmUgZG9lcwo+ID4gdXNl
IHRoZSBkbWEtYXBpIGlmIHRoZSBncHUgaXNuJ3QgY29ubmVjdGVkIHRocm91Z2ggYWdwLgo+Cj4g
QWxsIHJhZGVvbnMgaGF2ZSBhIGJ1aWx0IGluIHJlbWFwcGluZyB0YWJsZSB0byBoYW5kbGUgbm9u
LUFHUCBzeXN0ZW1zLgo+IE9uIHRoZSBlYXJsaWVyIHJhZGVvbnMgaXQgd2Fzbid0IHF1aXRlIGFz
IHBlcmZvcm1hbnQgYXMgQUdQLCBidXQgaXQKPiB3YXMgYWx3YXlzIG1vcmUgcmVsaWFibGUgYmVj
YXVzZSBBR1AgaXMgQUdQLiAgTWF5YmUgaXQncyB0aW1lIHRvIGxldAo+IEFHUCBnbz8KCkknZCBi
ZSB2ZXJ5IG11Y2ggaW4gZmF2b3VyIG9mIHRoYXQsIGlmIHdlIGNhbiBqdXN0IHVzZSB0aGUgaW50
ZWdyYXRlZApnYXJ0IGFuZCBkcm9wIGFncCBmYXN0IHdyaXRlcyB3b2JibGluZXNzIG9uIHRoZSBm
bG9vci4gSSB0aGluayB0aGUKb25seSBvdGhlciBtb2Rlcm4gZHJpdmVyIHVzaW5nIGFncCB3b3Vs
ZCBiZSBub3V2ZWF1IGF0IHRoYXQgcG9pbnQuCi1EYW5pZWwKCj4KPiBBbGV4Cj4KPiA+IC1EYW5p
ZWwKPiA+Cj4gPiA+IENoZWVycywKPiA+ID4gQmVuLgo+ID4gPgo+ID4gPiA+IC1EYW5pZWwKPiA+
ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBIZWxsd2ln
IDxoY2hAbHN0LmRlPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2Ry
bV9zY2F0dGVyLmMgfCAxMSArLS0tLS0tLS0tLQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMTAgZGVsZXRpb25zKC0pCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc2NhdHRlci5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9zY2F0dGVyLmMKPiA+ID4gPiA+IGluZGV4IGNhNTIwMDI4YjJjYi4uZjRlNjE4NGQxODc3IDEw
MDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKPiA+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc2NhdHRlci5jCj4gPiA+ID4gPiBAQCAtNDMs
MTUgKzQzLDYgQEAKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgI2RlZmluZSBERUJVR19TQ0FUVEVSIDAK
PiA+ID4gPiA+Cj4gPiA+ID4gPiAtc3RhdGljIGlubGluZSB2b2lkICpkcm1fdm1hbGxvY19kbWEo
dW5zaWduZWQgbG9uZyBzaXplKQo+ID4gPiA+ID4gLXsKPiA+ID4gPiA+IC0jaWYgZGVmaW5lZChf
X3Bvd2VycGNfXykgJiYgZGVmaW5lZChDT05GSUdfTk9UX0NPSEVSRU5UX0NBQ0hFKQo+ID4gPiA+
ID4gLSAgIHJldHVybiBfX3ZtYWxsb2Moc2l6ZSwgR0ZQX0tFUk5FTCwgcGdwcm90X25vbmNhY2hl
ZF93YyhQQUdFX0tFUk5FTCkpOwo+ID4gPiA+ID4gLSNlbHNlCj4gPiA+ID4gPiAtICAgcmV0dXJu
IHZtYWxsb2NfMzIoc2l6ZSk7Cj4gPiA+ID4gPiAtI2VuZGlmCj4gPiA+ID4gPiAtfQo+ID4gPiA+
ID4gLQo+ID4gPiA+ID4gIHN0YXRpYyB2b2lkIGRybV9zZ19jbGVhbnVwKHN0cnVjdCBkcm1fc2df
bWVtICogZW50cnkpCj4gPiA+ID4gPiAgewo+ID4gPiA+ID4gICAgIHN0cnVjdCBwYWdlICpwYWdl
Owo+ID4gPiA+ID4gQEAgLTEyNiw3ICsxMTcsNyBAQCBpbnQgZHJtX2xlZ2FjeV9zZ19hbGxvYyhz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ID4gPiA+ID4gICAgICAgICAgICAg
cmV0dXJuIC1FTk9NRU07Cj4gPiA+ID4gPiAgICAgfQo+ID4gPiA+ID4KPiA+ID4gPiA+IC0gICBl
bnRyeS0+dmlydHVhbCA9IGRybV92bWFsbG9jX2RtYShwYWdlcyA8PCBQQUdFX1NISUZUKTsKPiA+
ID4gPiA+ICsgICBlbnRyeS0+dmlydHVhbCA9IHZtYWxsb2NfMzIocGFnZXMgPDwgUEFHRV9TSElG
VCk7Cj4gPiA+ID4gPiAgICAgaWYgKCFlbnRyeS0+dmlydHVhbCkgewo+ID4gPiA+ID4gICAgICAg
ICAgICAga2ZyZWUoZW50cnktPmJ1c2FkZHIpOwo+ID4gPiA+ID4gICAgICAgICAgICAga2ZyZWUo
ZW50cnktPnBhZ2VsaXN0KTsKPiA+ID4gPiA+IC0tCj4gPiA+ID4gPiAyLjI1LjEKPiA+ID4gPiA+
Cj4gPiA+ID4KPiA+ID4gPgo+ID4gPgo+ID4KPiA+Cj4gPiAtLQo+ID4gRGFuaWVsIFZldHRlcgo+
ID4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gPiArNDEgKDApIDc5IDM2
NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCj4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ID4g
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCgoKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4
IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
