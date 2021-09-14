Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFBA40AEC3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 15:18:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 600DC63223
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 13:18:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DB91D61081; Tue, 14 Sep 2021 13:18:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F0936100C;
	Tue, 14 Sep 2021 13:18:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A6DCB604A0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 13:18:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AD9A6100C; Tue, 14 Sep 2021 13:18:19 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by lists.linaro.org (Postfix) with ESMTPS id 6027F604A0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 13:18:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="220115211"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="220115211"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 06:18:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="544067834"
Received: from ocascan-mobl.ger.corp.intel.com (HELO [10.213.234.116])
 ([10.213.234.116])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 06:18:14 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-14-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7d5d6454-2d74-53e7-73ea-2d0d60b3c44c@linux.intel.com>
Date: Tue, 14 Sep 2021 14:18:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210913131707.45639-14-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 13/26] drm/i915: use the new
 iterator in i915_gem_busy_ioctl
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDEzLzA5LzIwMjEgMTQ6MTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gVGhpcyBtYWtl
cyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4Cj4gcmV0cnkgbG9n
aWMgaXMgbm93IGhhbmRsZWQgZWxzZSB3aGVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMzAgKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKPiBpbmRleCA2MjM0
ZTE3MjU5YzEuLmM2YzZkNzQ3YjMzZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2J1c3kuYwo+IEBAIC04Miw4ICs4Miw4IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2J1c3kgKmFyZ3MgPSBkYXRhOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmo7Cj4gLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlzdDsKPiAtCXVuc2lnbmVkIGludCBz
ZXE7Cj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29yIGN1cnNvcjsKPiArCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOwo+ICAgCWludCBlcnI7Cj4gICAKPiAgIAllcnIgPSAtRU5PRU5UOwo+IEBAIC0x
MDksMjggKzEwOSwxNiBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCj4gICAJICogdG8gcmVwb3J0IHRoZSBvdmVyYWxsIGJ1c3luZXNzLiBU
aGlzIGlzIHdoYXQgdGhlIHdhaXQtaW9jdGwgZG9lcy4KPiAgIAkgKgo+ICAgCSAqLwo+IC1yZXRy
eToKPiAtCXNlcSA9IHJhd19yZWFkX3NlcWNvdW50KCZvYmotPmJhc2UucmVzdi0+c2VxKTsKPiAt
Cj4gLQkvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBX
UklURSBlbmdpbmUgKi8KPiAtCWFyZ3MtPmJ1c3kgPSBidXN5X2NoZWNrX3dyaXRlcihkbWFfcmVz
dl9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2KSk7Cj4gLQo+IC0JLyogVHJhbnNsYXRlIHNoYXJl
ZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+IC0JbGlzdCA9IGRtYV9yZXN2X3No
YXJlZF9saXN0KG9iai0+YmFzZS5yZXN2KTsKPiAtCWlmIChsaXN0KSB7Cj4gLQkJdW5zaWduZWQg
aW50IHNoYXJlZF9jb3VudCA9IGxpc3QtPnNoYXJlZF9jb3VudCwgaTsKPiAtCj4gLQkJZm9yIChp
ID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Cj4gLQkJCXN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlID0KPiAtCQkJCXJjdV9kZXJlZmVyZW5jZShsaXN0LT5zaGFyZWRbaV0pOwo+IC0KPiArCWFy
Z3MtPmJ1c3kgPSBmYWxzZTsKPiArCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9i
ai0+YmFzZS5yZXN2LCAmY3Vyc29yLCB0cnVlLCBmZW5jZSkgewoKVG8gcHJlc2VydmUgc3RyaWN0
bHkgaWRlbnRpY2FsIGJlaGF2aW91ciwgSSB0aGluayBhZGQgYmVmb3JlIHRoZSBiZWxvdyAKaWYt
ZWxzZToKCglpZiAoY3Vyc29yLmlzX2ZpcnN0KQoJCWFyZ3MtPmJ1c3kgPSAwOwoKQXMgbWVudGlv
bmVkIGVsc2V3aGVyZSBpbiB0aGUgdGhyZWFkIEkgYW0gbm90IGNvbnZpbmNlZCBpdCBpcyBodWdl
bHkgCmltcG9ydGFudCwgYWxsIHRoYXQgY2FuIGhhcHBlbiB3aXRob3V0IGl0IGlzIHRoYXQgc3Rh
bGUgcmVhZCBhY3Rpdml0eSAKZ2V0cyByZXBvcnRlZCwgYW5kIHRoaXMgaW9jdGwgaXMgbm90IHJl
YWxseSB0aGF0IHNlbnNpdGl2ZSB0byB0aGF0LgoKUmVnYXJkcywKClR2cnRrbwoKPiArCQlpZiAo
Y3Vyc29yLmlzX2V4Y2x1c2l2ZSkKPiArCQkJLyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVu
Y2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUgZW5naW5lICovCj4gKwkJCWFyZ3MtPmJ1c3kgPSBi
dXN5X2NoZWNrX3dyaXRlcihmZW5jZSk7Cj4gKwkJZWxzZQo+ICsJCQkvKiBUcmFuc2xhdGUgc2hh
cmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdpbmVzICovCj4gICAJCQlhcmdzLT5idXN5IHw9
IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKPiAtCQl9Cj4gICAJfQo+ICAgCj4gLQlpZiAoYXJn
cy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPmJhc2UucmVzdi0+c2VxLCBzZXEp
KQo+IC0JCWdvdG8gcmV0cnk7Cj4gLQo+ICAgCWVyciA9IDA7Cj4gICBvdXQ6Cj4gICAJcmN1X3Jl
YWRfdW5sb2NrKCk7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
