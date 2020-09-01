Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BF131259D1D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:25:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E279466703
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 17:25:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D3BB366714; Tue,  1 Sep 2020 17:25:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FE1166706;
	Tue,  1 Sep 2020 17:25:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD841666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 17:24:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B77626670D; Tue,  1 Sep 2020 17:24:56 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 52E38666F2
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 17:24:21 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 266601FB;
 Tue,  1 Sep 2020 10:24:21 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27F3B3F71F;
 Tue,  1 Sep 2020 10:24:18 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063528eucas1p1502c849c0fd337245541e1b31352d87f@eucas1p1.samsung.com>
 <20200826063316.23486-3-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <484582f2-b027-8406-b6ff-f50c0d1ba7b0@arm.com>
Date: Tue, 1 Sep 2020 18:24:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-3-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 02/32] drm: prime: use sgtable
 iterators in drm_prime_sg_to_page_addr_arrays()
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

T24gMjAyMC0wOC0yNiAwNzozMiwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBSZXBsYWNlIHRo
ZSBjdXJyZW50IGhhbmQtY3JhZnRlZCBjb2RlIGZvciBleHRyYWN0aW5nIHBhZ2VzIGFuZCBETUEK
PiBhZGRyZXNzZXMgZnJvbSB0aGUgZ2l2ZW4gc2NhdHRlcmxpc3QgYnkgdGhlIG11Y2ggbW9yZSBy
b2J1c3QKPiBjb2RlIGJhc2VkIG9uIHRoZSBnZW5lcmljIHNjYXR0ZXJsaXN0IGl0ZXJhdG9ycyBh
bmQgcmVjZW50bHkKPiBpbnRyb2R1Y2VkIHNnX3RhYmxlLWJhc2VkIHdyYXBwZXJzLiBUaGUgcmVz
dWx0aW5nIGNvZGUgaXMgc2ltcGxlIGFuZAo+IGVhc3kgdG8gdW5kZXJzdGFuZCwgc28gdGhlIGNv
bW1lbnQgZGVzY3JpYmluZyB0aGUgb2xkIGNvZGUgaXMgbm8KPiBsb25nZXIgbmVlZGVkLgoKSXMg
cmVtb3ZpbmcgdGhlIFdBUk5fT04oKXMgaW50ZW50aW9uYWw/IEl0IGNlcnRhaW5seSBzZWVtcyBs
aWtlIGl0IHdvdWxkIApiZSBhIGdlbnVpbmUgZHJpdmVyIGJ1ZyBpZiB0aGUgY2FsbGVyIGFza2Vk
IGZvciBhZGRyZXNzZXMgYnV0IGRpZG4ndCAKYWxsb2NhdGUgYXBwcm9wcmlhdGVseS1zaXplZCBh
cnJheXMuIE1pZ2h0IGJlIHdvcnRoIG5vdGluZyBlaXRoZXIgd2F5LiAKSSdtIGFsc28gYXNzdW1p
bmcgdGhpcyBpc24ndCBjYWxsZWQgaW4gcGVyZm9ybWFuY2UtY3JpdGljYWwgcGF0aHMgd2l0aCAK
bWFzc2l2ZSBsaXN0cyBzdWNoIHRoYXQgdGhlIHR3byBzZXBhcmF0ZSBpdGVyYXRpb25zIG1pZ2h0
IGhhdmUgYSAKbm90aWNlYWJsZSBpbXBhY3QuCgpOaXRzIGFzaWRlLAoKUmV2aWV3ZWQtYnk6IFJv
YmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVr
IFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPiBSZXZpZXdlZC1ieTogQW5k
cnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1fcHJpbWUuYyB8IDQ5ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9wcmltZS5jCj4gaW5kZXggNGVkNWVkMWYwNzhjLi41ZDE4MWJmNjBhNDQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9wcmltZS5jCj4gQEAgLTk5MCw0NSArOTkwLDI2IEBAIEVYUE9SVF9TWU1CT0woZHJt
X2dlbV9wcmltZV9pbXBvcnQpOwo+ICAgaW50IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJy
YXlzKHN0cnVjdCBzZ190YWJsZSAqc2d0LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAo+ICAgCQkJCSAg
ICAgZG1hX2FkZHJfdCAqYWRkcnMsIGludCBtYXhfZW50cmllcykKPiAgIHsKPiAtCXVuc2lnbmVk
IGNvdW50Owo+IC0Jc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsKPiAtCXN0cnVjdCBwYWdlICpwYWdl
Owo+IC0JdTMyIHBhZ2VfbGVuLCBwYWdlX2luZGV4Owo+IC0JZG1hX2FkZHJfdCBhZGRyOwo+IC0J
dTMyIGRtYV9sZW4sIGRtYV9pbmRleDsKPiAtCj4gLQkvKgo+IC0JICogU2NhdHRlcmxpc3QgZWxl
bWVudHMgY29udGFpbnMgYm90aCBwYWdlcyBhbmQgRE1BIGFkZHJlc3NlcywgYnV0Cj4gLQkgKiBv
bmUgc2hvdWQgbm90IGFzc3VtZSAxOjEgcmVsYXRpb24gYmV0d2VlbiB0aGVtLiBUaGUgc2ctPmxl
bmd0aCBpcwo+IC0JICogdGhlIHNpemUgb2YgdGhlIHBoeXNpY2FsIG1lbW9yeSBjaHVuayBkZXNj
cmliZWQgYnkgdGhlIHNnLT5wYWdlLAo+IC0JICogd2hpbGUgc2dfZG1hX2xlbihzZykgaXMgdGhl
IHNpemUgb2YgdGhlIERNQSAoSU8gdmlydHVhbCkgY2h1bmsKPiAtCSAqIGRlc2NyaWJlZCBieSB0
aGUgc2dfZG1hX2FkZHJlc3Moc2cpLgo+IC0JICovCj4gLQlwYWdlX2luZGV4ID0gMDsKPiAtCWRt
YV9pbmRleCA9IDA7Cj4gLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMsIGNv
dW50KSB7Cj4gLQkJcGFnZV9sZW4gPSBzZy0+bGVuZ3RoOwo+IC0JCXBhZ2UgPSBzZ19wYWdlKHNn
KTsKPiAtCQlkbWFfbGVuID0gc2dfZG1hX2xlbihzZyk7Cj4gLQkJYWRkciA9IHNnX2RtYV9hZGRy
ZXNzKHNnKTsKPiAtCj4gLQkJd2hpbGUgKHBhZ2VzICYmIHBhZ2VfbGVuID4gMCkgewo+IC0JCQlp
ZiAoV0FSTl9PTihwYWdlX2luZGV4ID49IG1heF9lbnRyaWVzKSkKPiArCXN0cnVjdCBzZ19kbWFf
cGFnZV9pdGVyIGRtYV9pdGVyOwo+ICsJc3RydWN0IHNnX3BhZ2VfaXRlciBwYWdlX2l0ZXI7Cj4g
KwlzdHJ1Y3QgcGFnZSAqKnAgPSBwYWdlczsKPiArCWRtYV9hZGRyX3QgKmEgPSBhZGRyczsKPiAr
Cj4gKwlpZiAocGFnZXMpIHsKPiArCQlmb3JfZWFjaF9zZ3RhYmxlX3BhZ2Uoc2d0LCAmcGFnZV9p
dGVyLCAwKSB7Cj4gKwkJCWlmIChwIC0gcGFnZXMgPj0gbWF4X2VudHJpZXMpCj4gICAJCQkJcmV0
dXJuIC0xOwo+IC0JCQlwYWdlc1twYWdlX2luZGV4XSA9IHBhZ2U7Cj4gLQkJCXBhZ2UrKzsKPiAt
CQkJcGFnZV9sZW4gLT0gUEFHRV9TSVpFOwo+IC0JCQlwYWdlX2luZGV4Kys7Cj4gKwkJCSpwKysg
PSBzZ19wYWdlX2l0ZXJfcGFnZSgmcGFnZV9pdGVyKTsKPiAgIAkJfQo+IC0JCXdoaWxlIChhZGRy
cyAmJiBkbWFfbGVuID4gMCkgewo+IC0JCQlpZiAoV0FSTl9PTihkbWFfaW5kZXggPj0gbWF4X2Vu
dHJpZXMpKQo+ICsJfQo+ICsJaWYgKGFkZHJzKSB7Cj4gKwkJZm9yX2VhY2hfc2d0YWJsZV9kbWFf
cGFnZShzZ3QsICZkbWFfaXRlciwgMCkgewo+ICsJCQlpZiAoYSAtIGFkZHJzID49IG1heF9lbnRy
aWVzKQo+ICAgCQkJCXJldHVybiAtMTsKPiAtCQkJYWRkcnNbZG1hX2luZGV4XSA9IGFkZHI7Cj4g
LQkJCWFkZHIgKz0gUEFHRV9TSVpFOwo+IC0JCQlkbWFfbGVuIC09IFBBR0VfU0laRTsKPiAtCQkJ
ZG1hX2luZGV4Kys7Cj4gKwkJCSphKysgPSBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJmRtYV9p
dGVyKTsKPiAgIAkJfQo+ICAgCX0KPiArCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICBFWFBPUlRf
U1lNQk9MKGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKTsKPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
