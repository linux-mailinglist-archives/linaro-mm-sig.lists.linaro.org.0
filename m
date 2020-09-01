Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B7A259F85
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 21:55:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 050CE66717
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:55:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EA83466718; Tue,  1 Sep 2020 19:55:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F157766716;
	Tue,  1 Sep 2020 19:54:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4E50866714
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:54:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 30C1966716; Tue,  1 Sep 2020 19:54:17 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id A253766714
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:54:15 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 597CC1FB;
 Tue,  1 Sep 2020 12:54:15 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A33DA3F66F;
 Tue,  1 Sep 2020 12:54:13 -0700 (PDT)
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0@eucas1p2.samsung.com>
 <20200826063316.23486-9-m.szyprowski@samsung.com>
 <259df561c4bb4ef484799e3776dbb402@intel.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1825327a-efd5-b836-d57e-d9356e279762@arm.com>
Date: Tue, 1 Sep 2020 20:54:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <259df561c4bb4ef484799e3776dbb402@intel.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH v9 08/32] drm: i915: fix
 common struct sg_table related issues
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMC0wOS0wMSAyMDozOCwgUnVobCwgTWljaGFlbCBKIHdyb3RlOgo+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj4+IE1hcmVrIFN6eXByb3dza2kKPj4g
U2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMjYsIDIwMjAgMjozMyBBTQo+PiBUbzogZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW9tbXVAbGlzdHMubGludXgtZm91bmRhdGlvbi5vcmc7
Cj4+IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZwo+PiBDYzogQmFydGxvbWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNh
bXN1bmcuY29tPjsgRGF2aWQgQWlybGllCj4+IDxhaXJsaWVkQGxpbnV4LmllPjsgaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgUm9iaW4gTXVycGh5Cj4+IDxyb2Jpbi5tdXJwaHlAYXJt
LmNvbT47IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPjsgbGludXgtYXJtLQo+PiBrZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgTWFyZWsgU3p5cHJvd3NraQo+PiA8bS5zenlwcm93c2tp
QHNhbXN1bmcuY29tPgo+PiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjkgMDgvMzJdIGRy
bTogaTkxNTogZml4IGNvbW1vbiBzdHJ1Y3Qgc2dfdGFibGUKPj4gcmVsYXRlZCBpc3N1ZXMKPj4K
Pj4gVGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRt
YV9tYXBfc2coKQo+PiBmdW5jdGlvbgo+PiByZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0
ZWQgZW50cmllcyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCj4+IEhvd2V2ZXIgdGhlIHN1YnNl
cXVlbnQgY2FsbHMgdG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKPj4g
ZG1hX3VubWFwX3NnIG11c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0
aGUgZW50cmllcwo+PiBwYXNzZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KPj4KPj4gc3RydWN0IHNn
X3RhYmxlIGlzIGEgY29tbW9uIHN0cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5nIGEgbm9uLWNv
bnRpZ3VvdXMKPj4gbWVtb3J5IGJ1ZmZlciwgdXNlZCBjb21tb25seSBpbiB0aGUgRFJNIGFuZCBn
cmFwaGljcyBzdWJzeXN0ZW1zLiBJdAo+PiBjb25zaXN0cyBvZiBhIHNjYXR0ZXJsaXN0IHdpdGgg
bWVtb3J5IHBhZ2VzIGFuZCBETUEgYWRkcmVzc2VzIChzZ2wgZW50cnkpLAo+PiBhcyB3ZWxsIGFz
IHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxpc3QgZW50cmllczogQ1BVIHBhZ2VzIChvcmlnX25lbnRz
IGVudHJ5KQo+PiBhbmQgRE1BIG1hcHBlZCBwYWdlcyAobmVudHMgZW50cnkpLgo+Pgo+PiBJdCB0
dXJuZWQgb3V0IHRoYXQgaXQgd2FzIGEgY29tbW9uIG1pc3Rha2UgdG8gbWlzdXNlIG5lbnRzIGFu
ZCBvcmlnX25lbnRzCj4+IGVudHJpZXMsIGNhbGxpbmcgRE1BLW1hcHBpbmcgZnVuY3Rpb25zIHdp
dGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmllcyBvcgo+PiBpZ25vcmluZyB0aGUgbnVtYmVyIG9m
IG1hcHBlZCBlbnRyaWVzIHJldHVybmVkIGJ5IHRoZSBkbWFfbWFwX3NnKCkKPj4gZnVuY3Rpb24u
Cj4+Cj4+IFRoaXMgZHJpdmVyIGNyZWF0aXZlbHkgdXNlcyBzZ190YWJsZS0+b3JpZ19uZW50cyB0
byBzdG9yZSB0aGUgc2l6ZSBvZiB0aGUKPj4gYWxsb2NhdGVkIHNjYXR0ZXJsaXN0IGFuZCBpZ25v
cmVzIHRoZSBudW1iZXIgb2YgdGhlIGVudHJpZXMgcmV0dXJuZWQgYnkKPj4gZG1hX21hcF9zZyBm
dW5jdGlvbi4gVGhlIHNnX3RhYmxlLT5vcmlnX25lbnRzIGlzIChtaXMpdXNlZCB0byBwcm9wZXJs
eQo+PiBmcmVlIHRoZSAob3ZlcilhbGxvY2F0ZWQgc2NhdHRlcmxpc3QuCj4+Cj4+IFRoaXMgcGF0
Y2ggb25seSBpbnRyb2R1Y2VzIHRoZSBjb21tb24gRE1BLW1hcHBpbmcgd3JhcHBlcnMgb3BlcmF0
aW5nCj4+IGRpcmVjdGx5IG9uIHRoZSBzdHJ1Y3Qgc2dfdGFibGUgb2JqZWN0cyB0byB0aGUgZG1h
YnVmIHJlbGF0ZWQgZnVuY3Rpb25zLAo+PiBzbyB0aGUgb3RoZXIgZHJpdmVycywgd2hpY2ggbWln
aHQgc2hhcmUgYnVmZmVycyB3aXRoIGk5MTUgY291bGQgcmVseSBvbgo+PiB0aGUgcHJvcGVybHkg
c2V0IG5lbnRzIGFuZCBvcmlnX25lbnRzIHZhbHVlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+PiAtLS0KPj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgICAgIHwgMTEgKysrLS0tLS0t
LS0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jIHwg
IDcgKysrLS0tLQo+PiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRp
b25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZG1hYnVmLmMKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVm
LmMKPj4gaW5kZXggMjY3OTM4MDE1OWZjLi44YTk4ODU5MjcxNWIgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKPj4gQEAgLTQ4LDEyICs0OCw5IEBA
IHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmk5MTVfZ2VtX21hcF9kbWFfYnVmKHN0cnVjdAo+PiBk
bWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lCj4+IAkJc3JjID0gc2dfbmV4dChzcmMpOwo+PiAJ
fQo+Pgo+PiAtCWlmICghZG1hX21hcF9zZ19hdHRycyhhdHRhY2htZW50LT5kZXYsCj4+IC0JCQkg
ICAgICBzdC0+c2dsLCBzdC0+bmVudHMsIGRpciwKPj4gLQkJCSAgICAgIERNQV9BVFRSX1NLSVBf
Q1BVX1NZTkMpKSB7Cj4+IC0JCXJldCA9IC1FTk9NRU07Cj4gCj4gWW91IGhhdmUgZHJvcHBlZCB0
aGlzIGVycm9yIHZhbHVlLgo+IAo+IERvIHlvdSBub3cgaWYgdGhpcyBpcyBhIGJlbmlnbiBsb3Nz
PwoKVHJ1ZSwgZG1hX21hcF9zZ3RhYmxlKCkgd2lsbCByZXR1cm4gLUVJTlZBTCByYXRoZXIgdGhh
biAtRU5PTUVNIGZvciAKZmFpbHVyZS4gQSBxdWljayBsb29rIHRocm91Z2ggb3RoZXIgLm1hcF9k
bWFfYnVmIGNhbGxiYWNrcyBzdWdnZXN0cyAKdGhleSdyZSByZXR1cm5pbmcgYSBtb3RsZXkgbWl4
IG9mIGVycm9yIHZhbHVlcyBhbmQgTlVMTCBmb3IgZmFpbHVyZSAKY2FzZXMsIHNvIEknZCBpbWFn
aW5lIHRoYXQgaW1wb3J0ZXJzIHNob3VsZG4ndCBiZSB0b28gc2Vuc2l0aXZlIHRvIHRoZSAKZXhh
Y3QgdmFsdWUuCgpSb2Jpbi4KCj4gCj4gTQo+IAo+PiArCXJldCA9IGRtYV9tYXBfc2d0YWJsZShh
dHRhY2htZW50LT5kZXYsIHN0LCBkaXIsCj4+IERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwo+PiAr
CWlmIChyZXQpCj4+IAkJZ290byBlcnJfZnJlZV9zZzsKPj4gLQl9Cj4+Cj4+IAlyZXR1cm4gc3Q7
Cj4+Cj4+IEBAIC03Myw5ICs3MCw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3VubWFwX2RtYV9i
dWYoc3RydWN0Cj4+IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKPj4gewo+PiAJc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGRtYV9idWZfdG9fb2JqKGF0dGFjaG1lbnQt
Cj4+PiBkbWFidWYpOwo+Pgo+PiAtCWRtYV91bm1hcF9zZ19hdHRycyhhdHRhY2htZW50LT5kZXYs
Cj4+IC0JCQkgICBzZy0+c2dsLCBzZy0+bmVudHMsIGRpciwKPj4gLQkJCSAgIERNQV9BVFRSX1NL
SVBfQ1BVX1NZTkMpOwo+PiArCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc2cs
IGRpciwKPj4gRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7Cj4+IAlzZ19mcmVlX3RhYmxlKHNnKTsK
Pj4gCWtmcmVlKHNnKTsKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYwo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvbW9ja19kbWFidWYuYwo+PiBpbmRleCBkZWJhZjdiMThhYjUuLmJlMzBiMjdlMjky
NiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2Nr
X2RtYWJ1Zi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9j
a19kbWFidWYuYwo+PiBAQCAtMjgsMTAgKzI4LDkgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAq
bW9ja19tYXBfZG1hX2J1ZihzdHJ1Y3QKPj4gZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50
LAo+PiAJCXNnID0gc2dfbmV4dChzZyk7Cj4+IAl9Cj4+Cj4+IC0JaWYgKCFkbWFfbWFwX3NnKGF0
dGFjaG1lbnQtPmRldiwgc3QtPnNnbCwgc3QtPm5lbnRzLCBkaXIpKSB7Cj4+IC0JCWVyciA9IC1F
Tk9NRU07Cj4+ICsJZXJyID0gZG1hX21hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgc3QsIGRp
ciwgMCk7Cj4+ICsJaWYgKGVycikKPj4gCQlnb3RvIGVycl9zdDsKPj4gLQl9Cj4+Cj4+IAlyZXR1
cm4gc3Q7Cj4+Cj4+IEBAIC00Niw3ICs0NSw3IEBAIHN0YXRpYyB2b2lkIG1vY2tfdW5tYXBfZG1h
X2J1ZihzdHJ1Y3QKPj4gZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAo+PiAJCQkgICAg
ICAgc3RydWN0IHNnX3RhYmxlICpzdCwKPj4gCQkJICAgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0
aW9uIGRpcikKPj4gewo+PiAtCWRtYV91bm1hcF9zZyhhdHRhY2htZW50LT5kZXYsIHN0LT5zZ2ws
IHN0LT5uZW50cywgZGlyKTsKPj4gKwlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYs
IHN0LCBkaXIsIDApOwo+PiAJc2dfZnJlZV90YWJsZShzdCk7Cj4+IAlrZnJlZShzdCk7Cj4+IH0K
Pj4gLS0KPj4gMi4xNy4xCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
