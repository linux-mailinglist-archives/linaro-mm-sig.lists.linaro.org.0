Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FE1259EA0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:55:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 159FC6670E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 18:55:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 074986670F; Tue,  1 Sep 2020 18:55:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE9966670B;
	Tue,  1 Sep 2020 18:55:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B7D12666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:55:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9F6D06670B; Tue,  1 Sep 2020 18:55:01 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 77C01666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:55:00 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C3121FB;
 Tue,  1 Sep 2020 11:55:00 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 168583F71F;
 Tue,  1 Sep 2020 11:54:56 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063534eucas1p2647f5e9679f79f568e184b092f743f8b@eucas1p2.samsung.com>
 <20200826063316.23486-12-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <30f20ad6-783b-89c3-17b5-30c6a2587d23@arm.com>
Date: Tue, 1 Sep 2020 19:54:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-12-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 11/32] drm: mediatek: use common
 helper for extracting pages array
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
IGhlbHBlciBmb3IgY29udmVydGluZyBhIHNnX3RhYmxlIG9iamVjdCBpbnRvIHN0cnVjdAo+IHBh
Z2UgcG9pbnRlciBhcnJheS4KClJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBo
eUBhcm0uY29tPgoKU2lkZSBub3RlOiBpcyBtdGtfZHJtX2dlbV9wcmltZV92bWFwKCkgbWlzc2lu
ZyBhIGNhbGwgdG8gCnNnX2ZyZWVfdGFibGUoc2d0KSBiZWZvcmUgaXRzIGtmcmVlKHNndCk/Cgo+
IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIHwgOSAr
Ky0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dl
bS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiBpbmRleCAzNjU0
ZWM3MzIwMjkuLjA1ODNlNTU3YWQzNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX2RybV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
ZHJtX2dlbS5jCj4gQEAgLTIzMyw5ICsyMzMsNyBAQCB2b2lkICptdGtfZHJtX2dlbV9wcmltZV92
bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQo+ICAgewo+ICAgCXN0cnVjdCBtdGtfZHJt
X2dlbV9vYmogKm10a19nZW0gPSB0b19tdGtfZ2VtX29iaihvYmopOwo+ICAgCXN0cnVjdCBzZ190
YWJsZSAqc2d0Owo+IC0Jc3RydWN0IHNnX3BhZ2VfaXRlciBpdGVyOwo+ICAgCXVuc2lnbmVkIGlu
dCBucGFnZXM7Cj4gLQl1bnNpZ25lZCBpbnQgaSA9IDA7Cj4gICAKPiAgIAlpZiAobXRrX2dlbS0+
a3ZhZGRyKQo+ICAgCQlyZXR1cm4gbXRrX2dlbS0+a3ZhZGRyOwo+IEBAIC0yNDksMTEgKzI0Nyw4
IEBAIHZvaWQgKm10a19kcm1fZ2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmopCj4gICAJaWYgKCFtdGtfZ2VtLT5wYWdlcykKPiAgIAkJZ290byBvdXQ7Cj4gICAKPiAtCWZv
cl9lYWNoX3NnX3BhZ2Uoc2d0LT5zZ2wsICZpdGVyLCBzZ3QtPm9yaWdfbmVudHMsIDApIHsKPiAt
CQltdGtfZ2VtLT5wYWdlc1tpKytdID0gc2dfcGFnZV9pdGVyX3BhZ2UoJml0ZXIpOwo+IC0JCWlm
IChpID4gbnBhZ2VzKQo+IC0JCQlicmVhazsKPiAtCX0KPiArCWRybV9wcmltZV9zZ190b19wYWdl
X2FkZHJfYXJyYXlzKHNndCwgbXRrX2dlbS0+cGFnZXMsIE5VTEwsIG5wYWdlcyk7Cj4gKwo+ICAg
CW10a19nZW0tPmt2YWRkciA9IHZtYXAobXRrX2dlbS0+cGFnZXMsIG5wYWdlcywgVk1fTUFQLAo+
ICAgCQkJICAgICAgIHBncHJvdF93cml0ZWNvbWJpbmUoUEFHRV9LRVJORUwpKTsKPiAgIAo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
