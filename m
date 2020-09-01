Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F415B259F42
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 21:34:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E6C966710
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 19:34:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 11DA566713; Tue,  1 Sep 2020 19:34:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82EB26670F;
	Tue,  1 Sep 2020 19:33:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 83121665F3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:33:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 696866670F; Tue,  1 Sep 2020 19:33:34 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 1BD0A665F3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 19:33:33 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67D051FB;
 Tue,  1 Sep 2020 12:33:32 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABCE13F71F;
 Tue,  1 Sep 2020 12:33:30 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063536eucas1p2e29d2b061b8b74c06c9ea61ad6737ba2@eucas1p2.samsung.com>
 <20200826063316.23486-15-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7298cc55-c550-0b41-3f3c-8eebed845848@arm.com>
Date: Tue, 1 Sep 2020 20:33:29 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-15-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 14/32] drm: omapdrm: fix common
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
dGhlIGRtYV9tYXBfc2coKQo+IGZ1bmN0aW9uLgo+IAo+IEZpeCB0aGUgY29kZSB0byByZWZlciB0
byBwcm9wZXIgbmVudHMgb3Igb3JpZ19uZW50cyBlbnRyaWVzLiBUaGlzIGRyaXZlcgo+IGNoZWNr
cyBmb3IgYSBidWZmZXIgY29udGlndWl0eSBpbiBETUEgYWRkcmVzcyBzcGFjZSwgc28gaXQgc2hv
dWxkIHRlc3QKPiBzZ190YWJsZS0+bmVudHMgZW50cnkuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW0uYyB8IDYgKysrLS0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0v
b21hcF9nZW0uYwo+IGluZGV4IGZmMGM0YjBjM2ZkMC4uYTdhOWEwYWZlMmI2IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vb21hcGRybS9vbWFwX2dlbS5jCj4gQEAgLTQ4LDcgKzQ4LDcgQEAgc3RydWN0IG9tYXBf
Z2VtX29iamVjdCB7Cj4gICAJICogICBPTUFQX0JPX01FTV9ETUFfQVBJIGZsYWcgc2V0KQo+ICAg
CSAqCj4gICAJICogLSBidWZmZXJzIGltcG9ydGVkIGZyb20gZG1hYnVmICh3aXRoIHRoZSBPTUFQ
X0JPX01FTV9ETUFCVUYgZmxhZyBzZXQpCj4gLQkgKiAgIGlmIHRoZXkgYXJlIHBoeXNpY2FsbHkg
Y29udGlndW91cyAod2hlbiBzZ3QtPm9yaWdfbmVudHMgPT0gMSkKPiArCSAqICAgaWYgdGhleSBh
cmUgcGh5c2ljYWxseSBjb250aWd1b3VzICh3aGVuIHNndC0+bmVudHMgPT0gMSkKCkhtbSwgaWYg
dGhpcyByZWFsbHkgZG9lcyBtZWFuICpwaHlzaWNhbGx5KiBjb250aWd1b3VzIC0gaS5lLiBpZiBi
dWZmZXJzIAptaWdodCBiZSBzaGFyZWQgYmV0d2VlbiBETUEtdHJhbnNsYXRhYmxlIGFuZCBub24t
RE1BLXRyYW5zbGF0YWJsZSAKZGV2aWNlcyAtIHRoZW4gdGhlc2UgY2hhbmdlcyBtaWdodCBub3Qg
YmUgYXBwcm9wcmlhdGUuIElmIG5vdCBhbmQgaXQgCm9ubHkgYWN0dWFsbHkgbWVhbnMgRE1BLWNv
bnRpZ3VvdXMsIHRoZW4gaXQgd291bGQgYmUgZ29vZCB0byBjbGFyaWZ5IHRoZSAKY29tbWVudHMg
dG8gdGhhdCBlZmZlY3QuCgpDYW4gYW55b25lIGZhbWlsaWFyIHdpdGggb21hcGRybSBjbGFyaWZ5
IHdoYXQgZXhhY3RseSB0aGUgY2FzZSBpcyBoZXJlPyAKSSBrbm93IHRoYXQgSU9NTVVzIG1pZ2h0
IGJlIGludm9sdmVkIHRvIHNvbWUgZGVncmVlLCBhbmQgSSd2ZSBza2ltbWVkIAp0aGUgaW50ZXJj
b25uZWN0IGNoYXB0ZXJzIG9mIGVub3VnaCBPTUFQIFRSTXMgdG8gYmUgc2NhcmVkIGJ5IHRoZSAK
cmVmZXJlbmNlIHRvIHRoZSB0aWxlciBhcGVydHVyZSBpbiB0aGUgY29udGV4dCBiZWxvdyA6KQoK
Um9iaW4uCgo+ICAgCSAqCj4gICAJICogLSBidWZmZXJzIG1hcHBlZCB0aHJvdWdoIHRoZSBUSUxF
UiB3aGVuIGRtYV9hZGRyX2NudCBpcyBub3QgemVybywgaW4KPiAgIAkgKiAgIHdoaWNoIGNhc2Ug
dGhlIERNQSBhZGRyZXNzIHBvaW50cyB0byB0aGUgVElMRVIgYXBlcnR1cmUKPiBAQCAtMTI3OSw3
ICsxMjc5LDcgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvbWFwX2dlbV9uZXdfZG1hYnVmKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHNpemVfdCBzaXplLAo+ICAgCXVuaW9uIG9tYXBfZ2VtX3Np
emUgZ3NpemU7Cj4gICAKPiAgIAkvKiBXaXRob3V0IGEgRE1NIG9ubHkgcGh5c2ljYWxseSBjb250
aWd1b3VzIGJ1ZmZlcnMgY2FuIGJlIHN1cHBvcnRlZC4gKi8KPiAtCWlmIChzZ3QtPm9yaWdfbmVu
dHMgIT0gMSAmJiAhcHJpdi0+aGFzX2RtbSkKPiArCWlmIChzZ3QtPm5lbnRzICE9IDEgJiYgIXBy
aXYtPmhhc19kbW0pCj4gICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ICAgCj4gICAJZ3Np
emUuYnl0ZXMgPSBQQUdFX0FMSUdOKHNpemUpOwo+IEBAIC0xMjkzLDcgKzEyOTMsNyBAQCBzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX25ld19kbWFidWYoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgc2l6ZV90IHNpemUsCj4gICAKPiAgIAlvbWFwX29iai0+c2d0ID0gc2d0Owo+ICAgCj4g
LQlpZiAoc2d0LT5vcmlnX25lbnRzID09IDEpIHsKPiArCWlmIChzZ3QtPm5lbnRzID09IDEpIHsK
PiAgIAkJb21hcF9vYmotPmRtYV9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOwo+ICAg
CX0gZWxzZSB7Cj4gICAJCS8qIENyZWF0ZSBwYWdlcyBsaXN0IGZyb20gc2d0ICovCj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
