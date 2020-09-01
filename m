Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A896F259F14
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 21:17:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C104F66713
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:17:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AE92766714; Tue,  1 Sep 2020 19:17:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E3086670E;
	Tue,  1 Sep 2020 19:17:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 72C6F6670A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:17:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5D6A36670E; Tue,  1 Sep 2020 19:17:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 29DB06670A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:17:22 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0A3B1FB;
 Tue,  1 Sep 2020 12:17:21 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EC9D3F71F;
 Tue,  1 Sep 2020 12:17:20 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063535eucas1p1a98e3295a64f14d475371ac0b003782f@eucas1p1.samsung.com>
 <20200826063316.23486-14-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f1474b67-eca5-d115-82a6-e7e74cccaf9f@arm.com>
Date: Tue, 1 Sep 2020 20:17:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-14-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 13/32] drm: omapdrm: use common
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
Z2UgcG9pbnRlciBhcnJheS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxt
LnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vb21hcGRy
bS9vbWFwX2dlbS5jIHwgMTQgKysrKy0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vb21hcGRybS9vbWFwX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9n
ZW0uYwo+IGluZGV4IGQwZDEyZDVkZDc2Yy4uZmYwYzRiMGMzZmQwIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
b21hcGRybS9vbWFwX2dlbS5jCj4gQEAgLTEyOTcsMTAgKzEyOTcsOSBAQCBzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKm9tYXBfZ2VtX25ld19kbWFidWYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc2l6
ZV90IHNpemUsCj4gICAJCW9tYXBfb2JqLT5kbWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNndC0+
c2dsKTsKPiAgIAl9IGVsc2Ugewo+ICAgCQkvKiBDcmVhdGUgcGFnZXMgbGlzdCBmcm9tIHNndCAq
Lwo+IC0JCXN0cnVjdCBzZ19wYWdlX2l0ZXIgaXRlcjsKPiAgIAkJc3RydWN0IHBhZ2UgKipwYWdl
czsKPiAgIAkJdW5zaWduZWQgaW50IG5wYWdlczsKPiAtCQl1bnNpZ25lZCBpbnQgaSA9IDA7Cj4g
KwkJdW5zaWduZWQgaW50IHJldDsKPiAgIAo+ICAgCQlucGFnZXMgPSBESVZfUk9VTkRfVVAoc2l6
ZSwgUEFHRV9TSVpFKTsKPiAgIAkJcGFnZXMgPSBrY2FsbG9jKG5wYWdlcywgc2l6ZW9mKCpwYWdl
cyksIEdGUF9LRVJORUwpOwo+IEBAIC0xMzExLDE0ICsxMzEwLDkgQEAgc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvbWFwX2dlbV9uZXdfZG1hYnVmKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHNpemVf
dCBzaXplLAo+ICAgCQl9Cj4gICAKPiAgIAkJb21hcF9vYmotPnBhZ2VzID0gcGFnZXM7Cj4gLQo+
IC0JCWZvcl9lYWNoX3NnX3BhZ2Uoc2d0LT5zZ2wsICZpdGVyLCBzZ3QtPm9yaWdfbmVudHMsIDAp
IHsKPiAtCQkJcGFnZXNbaSsrXSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZpdGVyKTsKPiAtCQkJaWYg
KGkgPiBucGFnZXMpCj4gLQkJCQlicmVhazsKPiAtCQl9Cj4gLQo+IC0JCWlmIChXQVJOX09OKGkg
IT0gbnBhZ2VzKSkgewo+ICsJCXJldCA9IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlz
KHNndCwgcGFnZXMsIE5VTEwsCj4gKwkJCQkJCSAgICAgICBucGFnZXMpOwo+ICsJCWlmIChXQVJO
X09OKHJldCkpIHsKCkFnYWluLCBJJ20gaW5jbGluZWQgdG8gdGhpbmsgdGhlIFdBUk5fT04gc2hv
dWxkIHJlbWFpbiBpbiAKZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoKSBpdHNlbGYg
c3VjaCB0aGF0IGl0IGNvdWxkIGJlIHJlbW92ZWQgCmhlcmUsIGJ1dCBlaXRoZXIgd2F5LAoKUmV2
aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cgo+ICAgCQkJb21h
cF9nZW1fZnJlZV9vYmplY3Qob2JqKTsKPiAgIAkJCW9iaiA9IEVSUl9QVFIoLUVOT01FTSk7Cj4g
ICAJCQlnb3RvIGRvbmU7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
