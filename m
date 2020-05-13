Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EE21D1784
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:23:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5F3860D70
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:23:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 98B7465F8C; Wed, 13 May 2020 14:23:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACB4065F88;
	Wed, 13 May 2020 14:23:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 294C260BD9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 14:23:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0838D65F88; Wed, 13 May 2020 14:23:12 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by lists.linaro.org (Postfix) with ESMTPS id 1F85E60BD9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 14:23:10 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6D87851F;
 Wed, 13 May 2020 16:23:08 +0200 (CEST)
Date: Wed, 13 May 2020 17:23:02 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200513142302.GK5945@pendragon.ideasonboard.com>
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133317eucas1p27aead4025db2da13e5b7c3e14a7cd79d@eucas1p2.samsung.com>
 <20200513133245.6408-29-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513133245.6408-29-m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v5 29/38] drm: rcar-du: fix common
 struct sg_table related issues
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

SGkgTWFyZWssCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk9uIFdlZCwgTWF5IDEzLCAyMDIw
IGF0IDAzOjMyOjM2UE0gKzAyMDAsIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6Cj4gVGhlIERvY3Vt
ZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9tYXBfc2coKSBm
dW5jdGlvbgo+IHJldHVybnMgdGhlIG51bWJlciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRo
ZSBETUEgYWRkcmVzcyBzcGFjZS4KPiBIb3dldmVyIHRoZSBzdWJzZXF1ZW50IGNhbGxzIHRvIHRo
ZSBkbWFfc3luY19zZ19mb3Jfe2RldmljZSxjcHV9KCkgYW5kCj4gZG1hX3VubWFwX3NnIG11c3Qg
YmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwo+IHBhc3Nl
ZCB0byB0aGUgZG1hX21hcF9zZygpLgo+IAo+IHN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBz
dHJ1Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCj4gbWVtb3J5IGJ1
ZmZlciwgdXNlZCBjb21tb25seSBpbiB0aGUgRFJNIGFuZCBncmFwaGljcyBzdWJzeXN0ZW1zLiBJ
dAo+IGNvbnNpc3RzIG9mIGEgc2NhdHRlcmxpc3Qgd2l0aCBtZW1vcnkgcGFnZXMgYW5kIERNQSBh
ZGRyZXNzZXMgKHNnbCBlbnRyeSksCj4gYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJs
aXN0IGVudHJpZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKPiBhbmQgRE1BIG1hcHBl
ZCBwYWdlcyAobmVudHMgZW50cnkpLgo+IAo+IEl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBj
b21tb24gbWlzdGFrZSB0byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKPiBlbnRyaWVzLCBj
YWxsaW5nIERNQS1tYXBwaW5nIGZ1bmN0aW9ucyB3aXRoIGEgd3JvbmcgbnVtYmVyIG9mIGVudHJp
ZXMgb3IKPiBpZ25vcmluZyB0aGUgbnVtYmVyIG9mIG1hcHBlZCBlbnRyaWVzIHJldHVybmVkIGJ5
IHRoZSBkbWFfbWFwX3NnKCkKPiBmdW5jdGlvbi4KPiAKPiBUbyBhdm9pZCBzdWNoIGlzc3Vlcywg
bGV0cyB1c2UgYSBjb21tb24gZG1hLW1hcHBpbmcgd3JhcHBlcnMgb3BlcmF0aW5nCj4gZGlyZWN0
bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBvYmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFn
ZQo+IGl0ZXJhdG9ycyB3aGVyZSBwb3NzaWJsZS4gVGhpcywgYWxtb3N0IGFsd2F5cywgaGlkZXMg
cmVmZXJlbmNlcyB0byB0aGUKPiBuZW50cyBhbmQgb3JpZ19uZW50cyBlbnRyaWVzLCBtYWtpbmcg
dGhlIGNvZGUgcm9idXN0LCBlYXNpZXIgdG8gZm9sbG93Cj4gYW5kIGNvcHkvcGFzdGUgc2FmZS4K
PiAKPiBkbWFfbWFwX3NndGFibGUoKSBmdW5jdGlvbiByZXR1cm5zIHplcm8gb3IgYW4gZXJyb3Ig
Y29kZSwgc28gYWRqdXN0IHRoZQo+IHJldHVybiB2YWx1ZSBjaGVjayBmb3IgdGhlIHZzcDFfZHVf
bWFwX3NnKCkgZnVuY3Rpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8
bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKVGhpcyBpcyBhIHZlcnkgbmljZSBzaW1wbGlmaWNh
dGlvbiwgSSd2ZSBhbHdheXMgZm91ZG4gdGhlIGRtYV9tYXBfc2cgQVBJCmN1bWJlcnNvbWUgdG8g
dXNlLgoKUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRl
YXNvbmJvYXJkLmNvbT4KCkkgYXNzdW1lIHlvdSB3aWxsIGdldCB0aGUgd2hvbGUgc2VyaWVzIG1l
cmdlZCBpbiBvbmUgZ28uIElmIEkgbmVlZCB0bwpwaWNrIHRoZSBwYXRjaCB1cCBhdCBhbnkgcG9p
bnQsIHBsZWFzZSBsZXQgbWUga25vdy4gT3RoZXJ3aXNlIEknbGwgd2FpdAp1bnRpbCBJIHNlZSBp
dCB1cHN0cmVhbSwgbm8gcmVwbHkgbmVlZGVkIDotKQoKPiAtLS0KPiBGb3IgbW9yZSBpbmZvcm1h
dGlvbiwgc2VlICdbUEFUQ0ggdjUgMDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBuZW50
cwo+IHZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhyZWFkOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LWlvbW11LzIwMjAwNTEzMTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3Vu
Zy5jb20vVC8KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYyAg
fCAzICstLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYyB8IDggKysr
Ky0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yY2FyLWR1L3JjYXJfZHVfdnNwLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9yY2FyX2R1X3ZzcC5jCj4gaW5kZXggNWU0ZmFmMi4u
MmZjMTgxNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9yY2FyX2R1X3Zz
cC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYwo+IEBAIC0x
OTcsOSArMTk3LDggQEAgaW50IHJjYXJfZHVfdnNwX21hcF9mYihzdHJ1Y3QgcmNhcl9kdV92c3Ag
KnZzcCwgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4gIAkJCWdvdG8gZmFpbDsKPiAgCj4g
IAkJcmV0ID0gdnNwMV9kdV9tYXBfc2codnNwLT52c3AsIHNndCk7Cj4gLQkJaWYgKCFyZXQpIHsK
PiArCQlpZiAocmV0KSB7Cj4gIAkJCXNnX2ZyZWVfdGFibGUoc2d0KTsKPiAtCQkJcmV0ID0gLUVO
T01FTTsKPiAgCQkJZ290byBmYWlsOwo+ICAJCX0KPiAgCX0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZzcDEvdnNwMV9kcm0uYwo+IGluZGV4IGE0YTQ1ZDYuLjg2ZDVlM2YgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMKPiArKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYwo+IEBAIC05MTIsOCArOTEyLDggQEAgaW50IHZz
cDFfZHVfbWFwX3NnKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHNnX3RhYmxlICpzZ3QpCj4g
IAkgKiBza2lwIGNhY2hlIHN5bmMuIFRoaXMgd2lsbCBuZWVkIHRvIGJlIHJldmlzaXRlZCB3aGVu
IHN1cHBvcnQgZm9yCj4gIAkgKiBub24tY29oZXJlbnQgYnVmZmVycyB3aWxsIGJlIGFkZGVkIHRv
IHRoZSBEVSBkcml2ZXIuCj4gIAkgKi8KPiAtCXJldHVybiBkbWFfbWFwX3NnX2F0dHJzKHZzcDEt
PmJ1c19tYXN0ZXIsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAo+IC0JCQkJRE1BX1RPX0RFVklDRSwg
RE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7Cj4gKwlyZXR1cm4gZG1hX21hcF9zZ3RhYmxlKHZzcDEt
PmJ1c19tYXN0ZXIsIHNndCwgRE1BX1RPX0RFVklDRSwKPiArCQkJICAgICAgIERNQV9BVFRSX1NL
SVBfQ1BVX1NZTkMpOwo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKHZzcDFfZHVfbWFwX3NnKTsK
PiAgCj4gQEAgLTkyMSw4ICs5MjEsOCBAQCB2b2lkIHZzcDFfZHVfdW5tYXBfc2coc3RydWN0IGRl
dmljZSAqZGV2LCBzdHJ1Y3Qgc2dfdGFibGUgKnNndCkKPiAgewo+ICAJc3RydWN0IHZzcDFfZGV2
aWNlICp2c3AxID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gIAo+IC0JZG1hX3VubWFwX3NnX2F0
dHJzKHZzcDEtPmJ1c19tYXN0ZXIsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAo+IC0JCQkgICBETUFf
VE9fREVWSUNFLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKPiArCWRtYV91bm1hcF9zZ3RhYmxl
KHZzcDEtPmJ1c19tYXN0ZXIsIHNndCwgRE1BX1RPX0RFVklDRSwKPiArCQkJICBETUFfQVRUUl9T
S0lQX0NQVV9TWU5DKTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTCh2c3AxX2R1X3VubWFwX3Nn
KTsKPiAgCgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
