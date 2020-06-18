Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EA01FF8F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:16:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B5BE60688
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:16:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3BB5666583; Thu, 18 Jun 2020 16:16:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EE81665C5;
	Thu, 18 Jun 2020 16:10:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B1C7866591
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 16:10:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 95CDF665A6; Thu, 18 Jun 2020 16:10:42 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id D05FF665B0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 16:08:29 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68354101E;
 Thu, 18 Jun 2020 09:08:29 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E6CF3F6CF;
 Thu, 18 Jun 2020 09:08:22 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154014eucas1p12812b08c65f53bb216f8ac8751a309de@eucas1p1.samsung.com>
 <20200618153956.29558-2-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <968a920c-83b7-a0e5-8d0d-fa8486816b01@arm.com>
Date: Thu, 18 Jun 2020 17:07:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200618153956.29558-2-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v6 01/36] drm: prime: add common helper
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

T24gMjAyMC0wNi0xOCAxNjozOSwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBJdCBpcyBhIGNv
bW1vbiBvcGVyYXRpb24gZG9uZSBieSBEUk0gZHJpdmVycyB0byBjaGVjayB0aGUgY29udGlndWl0
eQo+IG9mIHRoZSBETUEtbWFwcGVkIGJ1ZmZlciBkZXNjcmliZWQgYnkgYSBzY2F0dGVybGlzdCBp
biB0aGUKPiBzZ190YWJsZSBvYmplY3QuIExldCdzIGFkZCBhIGNvbW1vbiBoZWxwZXIgZm9yIHRo
aXMgb3BlcmF0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5
cHJvd3NraUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2Nt
YV9oZWxwZXIuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vZHJtX3ByaW1lLmMgICAgICAgICAgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ICAgaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmggICAgICAgICAgICAgIHwgIDIgKysKPiAgIDMgZmls
ZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYwo+IGluZGV4IDA2YTViOWVlMWZlMC4uNDE1NjZhMTVk
YWJkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYwo+IEBAIC00NzEsMjYg
KzQ3MSw5IEBAIGRybV9nZW1fY21hX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAo+ICAgewo+ICAgCXN0cnVjdCBkcm1fZ2VtX2NtYV9vYmplY3QgKmNtYV9vYmo7
Cj4gICAKPiAtCWlmIChzZ3QtPm5lbnRzICE9IDEpIHsKPiAtCQkvKiBjaGVjayBpZiB0aGUgZW50
cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRpZ3VvdXMgKi8KPiAtCQlkbWFfYWRkcl90IG5l
eHRfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsKPiAtCQlzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKnM7Cj4gLQkJdW5zaWduZWQgaW50IGk7Cj4gLQo+IC0JCWZvcl9lYWNoX3NnKHNndC0+c2ds
LCBzLCBzZ3QtPm5lbnRzLCBpKSB7Cj4gLQkJCS8qCj4gLQkJCSAqIHNnX2RtYV9hZGRyZXNzKHMp
IGlzIG9ubHkgdmFsaWQgZm9yIGVudHJpZXMKPiAtCQkJICogdGhhdCBoYXZlIHNnX2RtYV9sZW4o
cykgIT0gMAo+IC0JCQkgKi8KPiAtCQkJaWYgKCFzZ19kbWFfbGVuKHMpKQo+IC0JCQkJY29udGlu
dWU7Cj4gLQo+IC0JCQlpZiAoc2dfZG1hX2FkZHJlc3MocykgIT0gbmV4dF9hZGRyKQo+IC0JCQkJ
cmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4gLQo+IC0JCQluZXh0X2FkZHIgPSBzZ19kbWFfYWRk
cmVzcyhzKSArIHNnX2RtYV9sZW4ocyk7Cj4gLQkJfQo+IC0JfQo+ICsJLyogY2hlY2sgaWYgdGhl
IGVudHJpZXMgaW4gdGhlIHNnX3RhYmxlIGFyZSBjb250aWd1b3VzICovCj4gKwlpZiAoZHJtX3By
aW1lX2dldF9jb250aWd1b3VzX3NpemUoc2d0KSA8IGF0dGFjaC0+ZG1hYnVmLT5zaXplKQo+ICsJ
CXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ICAgCj4gICAJLyogQ3JlYXRlIGEgQ01BIEdFTSBi
dWZmZXIuICovCj4gICAJY21hX29iaiA9IF9fZHJtX2dlbV9jbWFfY3JlYXRlKGRldiwgYXR0YWNo
LT5kbWFidWYtPnNpemUpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1l
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKPiBpbmRleCBiYmZjNzEzYmZkYzMuLjA3
ODQ5Njk4OTRjMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKPiBAQCAtODI1LDYgKzgyNSwzMiBAQCBz
dHJ1Y3Qgc2dfdGFibGUgKmRybV9wcmltZV9wYWdlc190b19zZyhzdHJ1Y3QgcGFnZSAqKnBhZ2Vz
LCB1bnNpZ25lZCBpbnQgbnJfcGFnZQo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTChkcm1fcHJpbWVf
cGFnZXNfdG9fc2cpOwo+ICAgCj4gKy8qKgo+ICsgKiBkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNf
c2l6ZSAtIHJldHVybnMgdGhlIGNvbnRpZ3VvdXMgc2l6ZSBvZiB0aGUgYnVmZmVyCj4gKyAqIEBz
Z3Q6IHNnX3RhYmxlIGRlc2NyaWJpbmcgdGhlIGJ1ZmZlciB0byBjaGVjawo+ICsgKgo+ICsgKiBU
aGlzIGhlbHBlciBjYWxjdWxhdGVzIHRoZSBjb250aWd1b3VzIHNpemUgaW4gdGhlIERNQSBhZGRy
ZXNzIHNwYWNlCj4gKyAqIG9mIHRoZSB0aGUgYnVmZmVyIGRlc2NyaWJlZCBieSB0aGUgcHJvdmlk
ZWQgc2dfdGFibGUuCj4gKyAqCj4gKyAqIFRoaXMgaXMgdXNlZnVsIGZvciBpbXBsZW1lbnRpbmcK
PiArICogJmRybV9nZW1fb2JqZWN0X2Z1bmNzLmdlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUuCj4g
KyAqLwo+ICt1bnNpZ25lZCBsb25nIGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXplKHN0cnVj
dCBzZ190YWJsZSAqc2d0KQo+ICt7Cj4gKwlkbWFfYWRkcl90IGV4cGVjdGVkID0gc2dfZG1hX2Fk
ZHJlc3Moc2d0LT5zZ2wpOwo+ICsJc3RydWN0IHNnX2RtYV9wYWdlX2l0ZXIgZG1hX2l0ZXI7Cj4g
Kwl1bnNpZ25lZCBsb25nIHNpemUgPSAwOwo+ICsKPiArCWZvcl9lYWNoX3NndGFibGVfZG1hX3Bh
Z2Uoc2d0LCAmZG1hX2l0ZXIsIDApIHsKPiArCQlpZiAoc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNz
KCZkbWFfaXRlcikgIT0gZXhwZWN0ZWQpCj4gKwkJCWJyZWFrOwo+ICsJCWV4cGVjdGVkICs9IFBB
R0VfU0laRTsKPiArCQlzaXplICs9IFBBR0VfU0laRTsKCkhtbSwgaW4gbWFueSBjYXNlcyB0aGlz
IGlzIGxpa2VseSB0byBiZSBmYXIgbGVzcyBlZmZpY2llbnQgdGhhbiBzaW1wbHkgCnVzaW5nIGZv
cl9lYWNoX3NndGFibGVfZG1hKCkgYW5kIHNnX2RtYV9sZW4oKSBlcXVpdmFsZW50IHRvIHRoZSBv
cmlnaW5hbCAKaW1wbGVtZW50YXRpb24sIGFuZCB0aGVyZSBkb2Vzbid0IHNlZW0gdG8gYmUgYW55
IGdvb2QgcmVhc29uIGZvciB0aGF0LiAKUGx1cyBBRkFJQ1MgaXQgY291bGQgcG90ZW50aWFsbHkg
bGV0IGZhbHNlLXBvc2l0aXZlcyB0aHJvdWdoIGlmIHNvbWVvbmUgCndlcmUgdG8gcGFzcyBpbiBh
IHRhYmxlIHdpdGggbm9uLXBhZ2UtYWxpZ25lZCBsZW5ndGhzIChJIGFzc3VtZSB0aGF0J3MgCmV4
cGVjdGVkIG5ldmVyIHRvIGhhcHBlbiwgYnV0IHN0aWxsLi4uKQoKUm9iaW4uCgo+ICsJfQo+ICsJ
cmV0dXJuIHNpemU7Cj4gK30KPiArRVhQT1JUX1NZTUJPTChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3Vv
dXNfc2l6ZSk7Cj4gKwo+ICAgLyoqCj4gICAgKiBkcm1fZ2VtX3ByaW1lX2V4cG9ydCAtIGhlbHBl
ciBsaWJyYXJ5IGltcGxlbWVudGF0aW9uIG9mIHRoZSBleHBvcnQgY2FsbGJhY2sKPiAgICAqIEBv
Ymo6IEdFTSBvYmplY3QgdG8gZXhwb3J0Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9w
cmltZS5oIGIvaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmgKPiBpbmRleCA5YWY3NDIyYjQ0Y2YuLjQ3
ZWYxMTYxNDYyNyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fcHJpbWUuaAo+ICsrKyBi
L2luY2x1ZGUvZHJtL2RybV9wcmltZS5oCj4gQEAgLTkyLDYgKzkyLDggQEAgc3RydWN0IHNnX3Rh
YmxlICpkcm1fcHJpbWVfcGFnZXNfdG9fc2coc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQg
aW50IG5yX3BhZ2UKPiAgIHN0cnVjdCBkbWFfYnVmICpkcm1fZ2VtX3ByaW1lX2V4cG9ydChzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJCQkgICAgIGludCBmbGFncyk7Cj4gICAKPiAr
dW5zaWduZWQgbG9uZyBkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzdHJ1Y3Qgc2dfdGFi
bGUgKnNndCk7Cj4gKwo+ICAgLyogaGVscGVyIGZ1bmN0aW9ucyBmb3IgaW1wb3J0aW5nICovCj4g
ICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmRybV9nZW1fcHJpbWVfaW1wb3J0X2RldihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAo+ICAgCQkJCQkJc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
