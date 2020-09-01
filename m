Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FD0259E16
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:27:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 857F566706
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 18:27:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 751C06670B; Tue,  1 Sep 2020 18:27:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6ECAD666FC;
	Tue,  1 Sep 2020 18:26:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2B26C665F3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:26:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 134F7666FC; Tue,  1 Sep 2020 18:26:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id C639E665F3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 18:26:35 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B5561FB;
 Tue,  1 Sep 2020 11:26:35 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63A0F3F71F;
 Tue,  1 Sep 2020 11:26:33 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063529eucas1p24a398fd2bacf53a33a14d7977a097f61@eucas1p2.samsung.com>
 <20200826063316.23486-5-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f3a3e178-4d52-7015-1913-bf44993f07f3@arm.com>
Date: Tue, 1 Sep 2020 19:26:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-5-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 04/32] drm: armada: fix common struct
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
dGhlIGRtYV9tYXBfc2coKQo+IGZ1bmN0aW9uLgo+IAo+IFRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBs
ZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFwcGluZyB3cmFwcGVycyBvcGVyYXRpbmcKPiBkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIHVzZSBzY2F0dGVybGlzdCBwYWdl
Cj4gaXRlcmF0b3JzIHdoZXJlIHBvc3NpYmxlLiBUaGlzLCBhbG1vc3QgYWx3YXlzLCBoaWRlcyBy
ZWZlcmVuY2VzIHRvIHRoZQo+IG5lbnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0
aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xsb3cKPiBhbmQgY29weS9wYXN0ZSBzYWZlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5n
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jIHwgMTIg
KysrKysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCj4gaW5kZXggODAwNTYx
NGQyZTZiLi5iZWRkODkzN2Q4YTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FybWFk
YS9hcm1hZGFfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9nZW0u
Ywo+IEBAIC0zOTUsNyArMzk1LDcgQEAgYXJtYWRhX2dlbV9wcmltZV9tYXBfZG1hX2J1ZihzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gICAKPiAgIAkJbWFwcGluZyA9IGRvYmot
Pm9iai5maWxwLT5mX21hcHBpbmc7Cj4gICAKPiAtCQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2cs
IGNvdW50LCBpKSB7Cj4gKwkJZm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBpKSB7Cj4gICAJ
CQlzdHJ1Y3QgcGFnZSAqcGFnZTsKPiAgIAo+ICAgCQkJcGFnZSA9IHNobWVtX3JlYWRfbWFwcGlu
Z19wYWdlKG1hcHBpbmcsIGkpOwo+IEBAIC00MDcsOCArNDA3LDggQEAgYXJtYWRhX2dlbV9wcmlt
ZV9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gICAJCQlz
Z19zZXRfcGFnZShzZywgcGFnZSwgUEFHRV9TSVpFLCAwKTsKPiAgIAkJfQo+ICAgCj4gLQkJaWYg
KGRtYV9tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpID09IDAp
IHsKPiAtCQkJbnVtID0gc2d0LT5uZW50czsKPiArCQlpZiAoZG1hX21hcF9zZ3RhYmxlKGF0dGFj
aC0+ZGV2LCBzZ3QsIGRpciwgMCkpIHsKPiArCQkJbnVtID0gY291bnQ7CgpJIHRoaW5rIGl0IG1p
Z2h0IGJlIGV2ZW4gbmljZXIgdG8gZ2V0IHJpZCBvZiAibnVtIiBlbnRpcmVseSBhbmQgY29udmVy
dCAKdGhlIGNsZWFudXAgcGF0aCB0byBmb3JfZWFjaF9zZ3RhYmxlX3NnKCkgZm9yIGNvbXBsZXRl
bmVzcyAtIEFGQUlDUyBpdCAKc2hvdWxkIG9ubHkgbmVlZCBhbiBleHRyYSAiaWYgKHNnX3BhZ2Uo
c2cpKS4uLiIgY2hlY2sgaW4gdGhhdCBsb29wLiBUaGVuIAoiY291bnQiIGNvdWxkIHBvc3NpYmx5
IGJlIHNxdWFzaGVkIGludG8gaXRzIG9uZSByZW1haW5pbmcgdXNlIGFzIHdlbGwsIApidXQgbWF5
YmUgaXQncyB3b3J0aCBrZWVwaW5nIGZvciByZWFkYWJpbGl0eS4KClJvYmluLgoKPiAgIAkJCWdv
dG8gcmVsZWFzZTsKPiAgIAkJfQo+ICAgCX0gZWxzZSBpZiAoZG9iai0+cGFnZSkgewo+IEBAIC00
MTgsNyArNDE4LDcgQEAgYXJtYWRhX2dlbV9wcmltZV9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gICAKPiAgIAkJc2dfc2V0X3BhZ2Uoc2d0LT5zZ2wsIGRv
YmotPnBhZ2UsIGRvYmotPm9iai5zaXplLCAwKTsKPiAgIAo+IC0JCWlmIChkbWFfbWFwX3NnKGF0
dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyKSA9PSAwKQo+ICsJCWlmIChkbWFf
bWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHNndCwgZGlyLCAwKSkKPiAgIAkJCWdvdG8gZnJlZV90
YWJsZTsKPiAgIAl9IGVsc2UgaWYgKGRvYmotPmxpbmVhcikgewo+ICAgCQkvKiBTaW5nbGUgY29u
dGlndW91cyBwaHlzaWNhbCByZWdpb24gLSBubyBzdHJ1Y3QgcGFnZSAqLwo+IEBAIC00NDksMTEg
KzQ0OSwxMSBAQCBzdGF0aWMgdm9pZCBhcm1hZGFfZ2VtX3ByaW1lX3VubWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAgCWludCBpOwo+ICAgCj4gICAJaWYg
KCFkb2JqLT5saW5lYXIpCj4gLQkJZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwg
c2d0LT5uZW50cywgZGlyKTsKPiArCQlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0
LCBkaXIsIDApOwo+ICAgCj4gICAJaWYgKGRvYmotPm9iai5maWxwKSB7Cj4gICAJCXN0cnVjdCBz
Y2F0dGVybGlzdCAqc2c7Cj4gLQkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRz
LCBpKQo+ICsJCWZvcl9lYWNoX3NndGFibGVfc2coc2d0LCBzZywgaSkKPiAgIAkJCXB1dF9wYWdl
KHNnX3BhZ2Uoc2cpKTsKPiAgIAl9Cj4gICAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
