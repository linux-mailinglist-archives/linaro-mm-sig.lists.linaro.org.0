Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A383E259E4D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:43:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7BA46670D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 18:43:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AABC56670F; Tue,  1 Sep 2020 18:43:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1355B66706;
	Tue,  1 Sep 2020 18:42:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A8AEF666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:42:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 98DF266706; Tue,  1 Sep 2020 18:42:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 6DFB1666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:42:37 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 272A71FB;
 Tue,  1 Sep 2020 11:42:37 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C9B773F71F;
 Tue,  1 Sep 2020 11:42:34 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063532eucas1p2a9e0215f483104d45af0560d5dbfa8e0@eucas1p2.samsung.com>
 <20200826063316.23486-9-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <38960f66-aab6-8615-9187-b85cf628a4fd@arm.com>
Date: Tue, 1 Sep 2020 19:42:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-9-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 08/32] drm: i915: fix common struct
 sg_table related issues
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

T24gMjAyMC0wOC0yNiAwNzozMiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBUaGUgRG9jdW1l
bnRhdGlvbi9ETUEtQVBJLUhPV1RPLnR4dCBzdGF0ZXMgdGhhdCB0aGUgZG1hX21hcF9zZygpIGZ1
bmN0aW9uCj4gcmV0dXJucyB0aGUgbnVtYmVyIG9mIHRoZSBjcmVhdGVkIGVudHJpZXMgaW4gdGhl
IERNQSBhZGRyZXNzIHNwYWNlLgo+IEhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMgdG8gdGhl
IGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKPiBkbWFfdW5tYXBfc2cgbXVzdCBi
ZSBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzCj4gcGFzc2Vk
IHRvIHRoZSBkbWFfbWFwX3NnKCkuCj4gCj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0
cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5nIGEgbm9uLWNvbnRpZ3VvdXMKPiBtZW1vcnkgYnVm
ZmVyLCB1c2VkIGNvbW1vbmx5IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0
Cj4gY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFk
ZHJlc3NlcyAoc2dsIGVudHJ5KSwKPiBhcyB3ZWxsIGFzIHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxp
c3QgZW50cmllczogQ1BVIHBhZ2VzIChvcmlnX25lbnRzIGVudHJ5KQo+IGFuZCBETUEgbWFwcGVk
IHBhZ2VzIChuZW50cyBlbnRyeSkuCj4gCj4gSXQgdHVybmVkIG91dCB0aGF0IGl0IHdhcyBhIGNv
bW1vbiBtaXN0YWtlIHRvIG1pc3VzZSBuZW50cyBhbmQgb3JpZ19uZW50cwo+IGVudHJpZXMsIGNh
bGxpbmcgRE1BLW1hcHBpbmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmll
cyBvcgo+IGlnbm9yaW5nIHRoZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkg
dGhlIGRtYV9tYXBfc2coKQo+IGZ1bmN0aW9uLgo+IAo+IFRoaXMgZHJpdmVyIGNyZWF0aXZlbHkg
dXNlcyBzZ190YWJsZS0+b3JpZ19uZW50cyB0byBzdG9yZSB0aGUgc2l6ZSBvZiB0aGUKPiBhbGxv
Y2F0ZWQgc2NhdHRlcmxpc3QgYW5kIGlnbm9yZXMgdGhlIG51bWJlciBvZiB0aGUgZW50cmllcyBy
ZXR1cm5lZCBieQo+IGRtYV9tYXBfc2cgZnVuY3Rpb24uIFRoZSBzZ190YWJsZS0+b3JpZ19uZW50
cyBpcyAobWlzKXVzZWQgdG8gcHJvcGVybHkKPiBmcmVlIHRoZSAob3ZlcilhbGxvY2F0ZWQgc2Nh
dHRlcmxpc3QuCj4gCj4gVGhpcyBwYXRjaCBvbmx5IGludHJvZHVjZXMgdGhlIGNvbW1vbiBETUEt
bWFwcGluZyB3cmFwcGVycyBvcGVyYXRpbmcKPiBkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3Rh
YmxlIG9iamVjdHMgdG8gdGhlIGRtYWJ1ZiByZWxhdGVkIGZ1bmN0aW9ucywKPiBzbyB0aGUgb3Ro
ZXIgZHJpdmVycywgd2hpY2ggbWlnaHQgc2hhcmUgYnVmZmVycyB3aXRoIGk5MTUgY291bGQgcmVs
eSBvbgo+IHRoZSBwcm9wZXJseSBzZXQgbmVudHMgYW5kIG9yaWdfbmVudHMgdmFsdWVzLgoKVGhp
cyBvbmUgbG9va3MgbWVjaGFuaWNhbCBlbm91Z2ggOikKClJldmlld2VkLWJ5OiBSb2JpbiBNdXJw
aHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93
c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgICAgfCAxMSArKystLS0tLS0tLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jIHwgIDcgKysrLS0t
LQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVm
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKPiBpbmRleCAy
Njc5MzgwMTU5ZmMuLjhhOTg4NTkyNzE1YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZG1hYnVmLmMKPiBAQCAtNDgsMTIgKzQ4LDkgQEAgc3RhdGljIHN0cnVjdCBz
Z190YWJsZSAqaTkxNV9nZW1fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
YXR0YWNobWUKPiAgIAkJc3JjID0gc2dfbmV4dChzcmMpOwo+ICAgCX0KPiAgIAo+IC0JaWYgKCFk
bWFfbWFwX3NnX2F0dHJzKGF0dGFjaG1lbnQtPmRldiwKPiAtCQkJICAgICAgc3QtPnNnbCwgc3Qt
Pm5lbnRzLCBkaXIsCj4gLQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7Cj4gLQkJ
cmV0ID0gLUVOT01FTTsKPiArCXJldCA9IGRtYV9tYXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYs
IHN0LCBkaXIsIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwo+ICsJaWYgKHJldCkKPiAgIAkJZ290
byBlcnJfZnJlZV9zZzsKPiAtCX0KPiAgIAo+ICAgCXJldHVybiBzdDsKPiAgIAo+IEBAIC03Myw5
ICs3MCw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqID0gZG1hX2J1Zl90b19vYmooYXR0YWNobWVudC0+ZG1hYnVmKTsKPiAgIAo+
IC0JZG1hX3VubWFwX3NnX2F0dHJzKGF0dGFjaG1lbnQtPmRldiwKPiAtCQkJICAgc2ctPnNnbCwg
c2ctPm5lbnRzLCBkaXIsCj4gLQkJCSAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwo+ICsJZG1h
X3VubWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCBzZywgZGlyLCBETUFfQVRUUl9TS0lQX0NQ
VV9TWU5DKTsKPiAgIAlzZ19mcmVlX3RhYmxlKHNnKTsKPiAgIAlrZnJlZShzZyk7Cj4gICAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1
Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jCj4g
aW5kZXggZGViYWY3YjE4YWI1Li5iZTMwYjI3ZTI5MjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jCj4gQEAgLTI4LDEwICsyOCw5
IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKm1vY2tfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKPiAgIAkJc2cgPSBzZ19uZXh0KHNnKTsKPiAgIAl9
Cj4gICAKPiAtCWlmICghZG1hX21hcF9zZyhhdHRhY2htZW50LT5kZXYsIHN0LT5zZ2wsIHN0LT5u
ZW50cywgZGlyKSkgewo+IC0JCWVyciA9IC1FTk9NRU07Cj4gKwllcnIgPSBkbWFfbWFwX3NndGFi
bGUoYXR0YWNobWVudC0+ZGV2LCBzdCwgZGlyLCAwKTsKPiArCWlmIChlcnIpCj4gICAJCWdvdG8g
ZXJyX3N0Owo+IC0JfQo+ICAgCj4gICAJcmV0dXJuIHN0Owo+ICAgCj4gQEAgLTQ2LDcgKzQ1LDcg
QEAgc3RhdGljIHZvaWQgbW9ja191bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaG1lbnQsCj4gICAJCQkgICAgICAgc3RydWN0IHNnX3RhYmxlICpzdCwKPiAgIAkJ
CSAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCj4gICB7Cj4gLQlkbWFfdW5tYXBf
c2coYXR0YWNobWVudC0+ZGV2LCBzdC0+c2dsLCBzdC0+bmVudHMsIGRpcik7Cj4gKwlkbWFfdW5t
YXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHN0LCBkaXIsIDApOwo+ICAgCXNnX2ZyZWVfdGFi
bGUoc3QpOwo+ICAgCWtmcmVlKHN0KTsKPiAgIH0KPiAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
