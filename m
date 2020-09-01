Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C994259E54
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:45:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B7AD666F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 18:45:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F7696670E; Tue,  1 Sep 2020 18:45:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EECA26670B;
	Tue,  1 Sep 2020 18:44:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE290666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:44:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DBB426670B; Tue,  1 Sep 2020 18:44:41 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id DF2B8666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:44:40 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AAB81FB;
 Tue,  1 Sep 2020 11:44:40 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82E493F71F;
 Tue,  1 Sep 2020 11:44:36 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063533eucas1p1fad2f2afb117b026081468d2d840ab0f@eucas1p1.samsung.com>
 <20200826063316.23486-11-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0fda65b1-1755-9e18-7c84-3156f5124752@arm.com>
Date: Tue, 1 Sep 2020 19:44:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-11-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 10/32] drm: mediatek: use common
 helper for a scatterlist contiguity check
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

T24gMjAyMC0wOC0yNiAwNzozMiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBVc2UgY29tbW9u
IGhlbHBlciBmb3IgY2hlY2tpbmcgdGhlIGNvbnRpZ3VpdHkgb2YgdGhlIGltcG9ydGVkIGRtYS1i
dWYgYW5kCj4gZG8gdGhpcyBjaGVjayBiZWZvcmUgYWxsb2NhdGluZyByZXNvdXJjZXMsIHNvIHRo
ZSBlcnJvciBwYXRoIGlzIHNpbXBsZXIuCgpSZXZpZXdlZC1ieTogUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4KCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kcm1fZ2VtLmMgfCAyOCArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiBpbmRleCA2MTkwY2MzYjdiMGQuLjM2NTRlYzcz
MjAyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0u
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jCj4gQEAgLTIx
MiwzNyArMjEyLDIxIEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqbXRrX2dlbV9wcmltZV9pbXBv
cnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgIAkJCXN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmF0dGFjaCwgc3RydWN0IHNnX3RhYmxlICpzZykKPiAgIHsKPiAgIAlzdHJ1
Y3QgbXRrX2RybV9nZW1fb2JqICptdGtfZ2VtOwo+IC0JaW50IHJldDsKPiAtCXN0cnVjdCBzY2F0
dGVybGlzdCAqczsKPiAtCXVuc2lnbmVkIGludCBpOwo+IC0JZG1hX2FkZHJfdCBleHBlY3RlZDsK
PiAgIAo+IC0JbXRrX2dlbSA9IG10a19kcm1fZ2VtX2luaXQoZGV2LCBhdHRhY2gtPmRtYWJ1Zi0+
c2l6ZSk7Cj4gKwkvKiBjaGVjayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNv
bnRpZ3VvdXMgKi8KPiArCWlmIChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZykgPCBh
dHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgewo+ICsJCURSTV9FUlJPUigic2dfdGFibGUgaXMgbm90IGNv
bnRpZ3VvdXMiKTsKPiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiArCX0KPiAgIAo+ICsJ
bXRrX2dlbSA9IG10a19kcm1fZ2VtX2luaXQoZGV2LCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSk7Cj4g
ICAJaWYgKElTX0VSUihtdGtfZ2VtKSkKPiAgIAkJcmV0dXJuIEVSUl9DQVNUKG10a19nZW0pOwo+
ICAgCj4gLQlleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHNnLT5zZ2wpOwo+IC0JZm9yX2VhY2hf
c2coc2ctPnNnbCwgcywgc2ctPm5lbnRzLCBpKSB7Cj4gLQkJaWYgKCFzZ19kbWFfbGVuKHMpKQo+
IC0JCQlicmVhazsKPiAtCj4gLQkJaWYgKHNnX2RtYV9hZGRyZXNzKHMpICE9IGV4cGVjdGVkKSB7
Cj4gLQkJCURSTV9FUlJPUigic2dfdGFibGUgaXMgbm90IGNvbnRpZ3VvdXMiKTsKPiAtCQkJcmV0
ID0gLUVJTlZBTDsKPiAtCQkJZ290byBlcnJfZ2VtX2ZyZWU7Cj4gLQkJfQo+IC0JCWV4cGVjdGVk
ID0gc2dfZG1hX2FkZHJlc3MocykgKyBzZ19kbWFfbGVuKHMpOwo+IC0JfQo+IC0KPiAgIAltdGtf
Z2VtLT5kbWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnLT5zZ2wpOwo+ICAgCW10a19nZW0tPnNn
ID0gc2c7Cj4gICAKPiAgIAlyZXR1cm4gJm10a19nZW0tPmJhc2U7Cj4gLQo+IC1lcnJfZ2VtX2Zy
ZWU6Cj4gLQlrZnJlZShtdGtfZ2VtKTsKPiAtCXJldHVybiBFUlJfUFRSKHJldCk7Cj4gICB9Cj4g
ICAKPiAgIHZvaWQgKm10a19kcm1fZ2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmopCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
