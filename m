Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5492B259D16
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:24:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 811026670B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 17:24:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 733906670D; Tue,  1 Sep 2020 17:24:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70D95666FC;
	Tue,  1 Sep 2020 17:24:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D90C666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 17:24:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5FCFC666FA; Tue,  1 Sep 2020 17:24:02 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id BA535666FC
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 17:23:58 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52E8A1FB;
 Tue,  1 Sep 2020 10:23:58 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 401F73F71F;
 Tue,  1 Sep 2020 10:23:56 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063527eucas1p1d68954adf1c25e1d760b92ca0845ab48@eucas1p1.samsung.com>
 <20200826063316.23486-2-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <bbbd5f0c-a0ae-015e-dbfd-4ae41e586983@arm.com>
Date: Tue, 1 Sep 2020 18:23:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-2-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 01/32] drm: prime: add common helper
 to check scatterlist contiguity
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

T24gMjAyMC0wOC0yNiAwNzozMiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBJdCBpcyBhIGNv
bW1vbiBvcGVyYXRpb24gZG9uZSBieSBEUk0gZHJpdmVycyB0byBjaGVjayB0aGUgY29udGlndWl0
eQo+IG9mIHRoZSBETUEtbWFwcGVkIGJ1ZmZlciBkZXNjcmliZWQgYnkgYSBzY2F0dGVybGlzdCBp
biB0aGUKPiBzZ190YWJsZSBvYmplY3QuIExldCdzIGFkZCBhIGNvbW1vbiBoZWxwZXIgZm9yIHRo
aXMgb3BlcmF0aW9uLgoKSSBzdGlsbCB0aGluayB0aGlzIGNvdWxkIGJlIGhvaXN0ZWQgZXZlbiBm
dXJ0aGVyIG91dCB0byB0aGUgY29tbW9uIApzZ3RhYmxlIEFQSSBsZXZlbCwgYnV0IGxldCdzIGdl
dCB0aGUgaW5kaXZpZHVhbCBzdWJzeXN0ZW1zIHN0cmFpZ2h0ZW5lZCAKb3V0IGZpcnN0IHRoZW4g
d29ycnkgYWJvdXQgY29uc29saWRhdGlvbiBsYXRlci4KClJldmlld2VkLWJ5OiBSb2JpbiBNdXJw
aHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93
c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogSGFq
ZGEgPGEuaGFqZGFAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV9jbWFfaGVscGVyLmMgfCAyMyArKystLS0tLS0tLS0tLS0tLS0tLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYyAgICAgICAgICB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiAgIGluY2x1ZGUvZHJtL2RybV9wcmltZS5oICAgICAgICAgICAgICB8ICAyICsrCj4gICAz
IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKPiBpbmRleCA4MjJlZGVhZGJhYjMuLjU5Yjlj
YTIwN2I0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVy
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKPiBAQCAtNDcx
LDI2ICs0NzEsOSBAQCBkcm1fZ2VtX2NtYV9wcmltZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2dlbV9jbWFfb2JqZWN0ICpjbWFf
b2JqOwo+ICAgCj4gLQlpZiAoc2d0LT5uZW50cyAhPSAxKSB7Cj4gLQkJLyogY2hlY2sgaWYgdGhl
IGVudHJpZXMgaW4gdGhlIHNnX3RhYmxlIGFyZSBjb250aWd1b3VzICovCj4gLQkJZG1hX2FkZHJf
dCBuZXh0X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7Cj4gLQkJc3RydWN0IHNjYXR0
ZXJsaXN0ICpzOwo+IC0JCXVuc2lnbmVkIGludCBpOwo+IC0KPiAtCQlmb3JfZWFjaF9zZyhzZ3Qt
PnNnbCwgcywgc2d0LT5uZW50cywgaSkgewo+IC0JCQkvKgo+IC0JCQkgKiBzZ19kbWFfYWRkcmVz
cyhzKSBpcyBvbmx5IHZhbGlkIGZvciBlbnRyaWVzCj4gLQkJCSAqIHRoYXQgaGF2ZSBzZ19kbWFf
bGVuKHMpICE9IDAKPiAtCQkJICovCj4gLQkJCWlmICghc2dfZG1hX2xlbihzKSkKPiAtCQkJCWNv
bnRpbnVlOwo+IC0KPiAtCQkJaWYgKHNnX2RtYV9hZGRyZXNzKHMpICE9IG5leHRfYWRkcikKPiAt
CQkJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+IC0KPiAtCQkJbmV4dF9hZGRyID0gc2dfZG1h
X2FkZHJlc3MocykgKyBzZ19kbWFfbGVuKHMpOwo+IC0JCX0KPiAtCX0KPiArCS8qIGNoZWNrIGlm
IHRoZSBlbnRyaWVzIGluIHRoZSBzZ190YWJsZSBhcmUgY29udGlndW91cyAqLwo+ICsJaWYgKGRy
bV9wcmltZV9nZXRfY29udGlndW91c19zaXplKHNndCkgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkK
PiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiAgIAo+ICAgCS8qIENyZWF0ZSBhIENNQSBH
RU0gYnVmZmVyLiAqLwo+ICAgCWNtYV9vYmogPSBfX2RybV9nZW1fY21hX2NyZWF0ZShkZXYsIGF0
dGFjaC0+ZG1hYnVmLT5zaXplKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9w
cmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCj4gaW5kZXggMTY5M2FhN2MxNGI1
Li40ZWQ1ZWQxZjA3OGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCj4gQEAgLTgyNSw2ICs4MjUsMzcg
QEAgc3RydWN0IHNnX3RhYmxlICpkcm1fcHJpbWVfcGFnZXNfdG9fc2coc3RydWN0IHBhZ2UgKipw
YWdlcywgdW5zaWduZWQgaW50IG5yX3BhZ2UKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0woZHJtX3By
aW1lX3BhZ2VzX3RvX3NnKTsKPiAgIAo+ICsvKioKPiArICogZHJtX3ByaW1lX2dldF9jb250aWd1
b3VzX3NpemUgLSByZXR1cm5zIHRoZSBjb250aWd1b3VzIHNpemUgb2YgdGhlIGJ1ZmZlcgo+ICsg
KiBAc2d0OiBzZ190YWJsZSBkZXNjcmliaW5nIHRoZSBidWZmZXIgdG8gY2hlY2sKPiArICoKPiAr
ICogVGhpcyBoZWxwZXIgY2FsY3VsYXRlcyB0aGUgY29udGlndW91cyBzaXplIGluIHRoZSBETUEg
YWRkcmVzcyBzcGFjZQo+ICsgKiBvZiB0aGUgdGhlIGJ1ZmZlciBkZXNjcmliZWQgYnkgdGhlIHBy
b3ZpZGVkIHNnX3RhYmxlLgo+ICsgKgo+ICsgKiBUaGlzIGlzIHVzZWZ1bCBmb3IgaW1wbGVtZW50
aW5nCj4gKyAqICZkcm1fZ2VtX29iamVjdF9mdW5jcy5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxl
Lgo+ICsgKi8KPiArdW5zaWduZWQgbG9uZyBkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShz
dHJ1Y3Qgc2dfdGFibGUgKnNndCkKPiArewo+ICsJZG1hX2FkZHJfdCBleHBlY3RlZCA9IHNnX2Rt
YV9hZGRyZXNzKHNndC0+c2dsKTsKPiArCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7Cj4gKwl1bnNp
Z25lZCBsb25nIHNpemUgPSAwOwo+ICsJaW50IGk7Cj4gKwo+ICsJZm9yX2VhY2hfc2d0YWJsZV9k
bWFfc2coc2d0LCBzZywgaSkgewo+ICsJCXVuc2lnbmVkIGludCBsZW4gPSBzZ19kbWFfbGVuKHNn
KTsKPiArCj4gKwkJaWYgKCFsZW4pCj4gKwkJCWJyZWFrOwo+ICsJCWlmIChzZ19kbWFfYWRkcmVz
cyhzZykgIT0gZXhwZWN0ZWQpCj4gKwkJCWJyZWFrOwo+ICsJCWV4cGVjdGVkICs9IGxlbjsKPiAr
CQlzaXplICs9IGxlbjsKPiArCX0KPiArCXJldHVybiBzaXplOwo+ICt9Cj4gK0VYUE9SVF9TWU1C
T0woZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUpOwo+ICsKPiAgIC8qKgo+ICAgICogZHJt
X2dlbV9wcmltZV9leHBvcnQgLSBoZWxwZXIgbGlicmFyeSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUg
ZXhwb3J0IGNhbGxiYWNrCj4gICAgKiBAb2JqOiBHRU0gb2JqZWN0IHRvIGV4cG9ydAo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2RybS9kcm1fcHJpbWUuaCBiL2luY2x1ZGUvZHJtL2RybV9wcmltZS5o
Cj4gaW5kZXggOWFmNzQyMmI0NGNmLi40N2VmMTE2MTQ2MjcgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVk
ZS9kcm0vZHJtX3ByaW1lLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fcHJpbWUuaAo+IEBAIC05
Miw2ICs5Miw4IEBAIHN0cnVjdCBzZ190YWJsZSAqZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKHN0cnVj
dCBwYWdlICoqcGFnZXMsIHVuc2lnbmVkIGludCBucl9wYWdlCj4gICBzdHJ1Y3QgZG1hX2J1ZiAq
ZHJtX2dlbV9wcmltZV9leHBvcnQoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCj4gICAJCQkJ
ICAgICBpbnQgZmxhZ3MpOwo+ICAgCj4gK3Vuc2lnbmVkIGxvbmcgZHJtX3ByaW1lX2dldF9jb250
aWd1b3VzX3NpemUoc3RydWN0IHNnX3RhYmxlICpzZ3QpOwo+ICsKPiAgIC8qIGhlbHBlciBmdW5j
dGlvbnMgZm9yIGltcG9ydGluZyAqLwo+ICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpkcm1fZ2Vt
X3ByaW1lX2ltcG9ydF9kZXYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgIAkJCQkJCXN0cnVj
dCBkbWFfYnVmICpkbWFfYnVmLAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
