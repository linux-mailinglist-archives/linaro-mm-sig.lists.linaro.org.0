Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 970A441EB0A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:37:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12621631AA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:37:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 04D5362434; Fri,  1 Oct 2021 10:37:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4173E619CD;
	Fri,  1 Oct 2021 10:37:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E19061805
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:37:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6BD0D619CD; Fri,  1 Oct 2021 10:37:46 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by lists.linaro.org (Postfix) with ESMTPS id 2DA0F61805
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="205551055"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="205551055"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 03:37:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="619007698"
Received: from howells-mobl.ger.corp.intel.com (HELO [10.213.208.92])
 ([10.213.208.92])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 03:37:40 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-18-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c6837f74-0ba5-e3c2-5778-a9d120c6ea67@linux.intel.com>
Date: Fri, 1 Oct 2021 11:37:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211001100610.2899-18-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 17/28] drm/i915: use the new iterator in
 i915_gem_busy_ioctl v2
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
Cc: daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDAxLzEwLzIwMjEgMTE6MDUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gVGhpcyBtYWtl
cyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4Cj4gcmV0cnkgbG9n
aWMgaXMgbm93IGhhbmRsZWQgZWxzZSB3aGVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpTb3JyeSBJIHJldHJhY3QgdW50
aWwgeW91IGFkZCB0aGUgdGV4dCBhYm91dCB0aGUgaW5jcmVhc2VkIGNvc3Qgb2YgdGhlIAphZGRl
ZCBhdG9taWNzLiBJIHRoaW5rIHRoZSBwb2ludCBpcyBpbXBvcnRhbnQgdG8gZGlzY3VzcyBnaXZl
biBwcm9wb3NhbCAKZ29lcyBmcm9tIHplcm8gYXRvbWljcyB0byBudW1fZmVuY2VzICogMiAoZmVu
Y2UgZ2V0L3B1dCB1bmxlc3MgSSBhbSAKbWlzdGFrZW4pIGF0b21pY3MgcGVyIGJ1c3kgaW9jdGwu
IFRoYXQgbWFrZXMgbWUgbGVhbiB0b3dhcmRzIGp1c3QgCmxlYXZpbmcgdGhpcyBhcyBpcyBzaW5j
ZSBpdCBpcyBub3QgdGhhdCBjb21wbGV4LgoKUmVnYXJkcywKClR2cnRrbwoKPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMgfCAzNSArKysrKysrKysrLS0t
LS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyMSBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2J1c3kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKPiBp
bmRleCA2MjM0ZTE3MjU5YzEuLmRjNzJiMzZkYWU1NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+IEBAIC04Miw4ICs4Miw4IEBAIGk5MTVfZ2VtX2J1c3lf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgIHsKPiAgIAlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2J1c3kgKmFyZ3MgPSBkYXRhOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmo7Cj4gLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlzdDsKPiAtCXVuc2ln
bmVkIGludCBzZXE7Cj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4gKwlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZTsKPiAgIAlpbnQgZXJyOwo+ICAgCj4gICAJZXJyID0gLUVOT0VOVDsK
PiBAQCAtMTA5LDI3ICsxMDksMjAgQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgCSAqIHRvIHJlcG9ydCB0aGUgb3ZlcmFsbCBidXN5
bmVzcy4gVGhpcyBpcyB3aGF0IHRoZSB3YWl0LWlvY3RsIGRvZXMuCj4gICAJICoKPiAgIAkgKi8K
PiAtcmV0cnk6Cj4gLQlzZXEgPSByYXdfcmVhZF9zZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNl
cSk7Cj4gLQo+IC0JLyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQg
KmFuZCogV1JJVEUgZW5naW5lICovCj4gLQlhcmdzLT5idXN5ID0gYnVzeV9jaGVja193cml0ZXIo
ZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmotPmJhc2UucmVzdikpOwo+IC0KPiAtCS8qIFRyYW5zbGF0
ZSBzaGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPiAtCWxpc3QgPSBkbWFf
cmVzdl9zaGFyZWRfbGlzdChvYmotPmJhc2UucmVzdik7Cj4gLQlpZiAobGlzdCkgewo+IC0JCXVu
c2lnbmVkIGludCBzaGFyZWRfY291bnQgPSBsaXN0LT5zaGFyZWRfY291bnQsIGk7Cj4gLQo+IC0J
CWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewo+IC0JCQlzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSA9Cj4gLQkJCQlyY3VfZGVyZWZlcmVuY2UobGlzdC0+c2hhcmVkW2ldKTsKPiAt
Cj4gKwlhcmdzLT5idXN5ID0gMDsKPiArCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2Jq
LT5iYXNlLnJlc3YsIHRydWUpOwo+ICsJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQo
JmN1cnNvciwgZmVuY2UpIHsKPiArCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQoJmN1
cnNvcikpCj4gKwkJCWFyZ3MtPmJ1c3kgPSAwOwo+ICsKPiArCQlpZiAoZG1hX3Jlc3ZfaXRlcl9p
c19leGNsdXNpdmUoJmN1cnNvcikpCj4gKwkJCS8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZl
bmNlIHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIGVuZ2luZSAqLwo+ICsJCQlhcmdzLT5idXN5IHw9
IGJ1c3lfY2hlY2tfd3JpdGVyKGZlbmNlKTsKPiArCQllbHNlCj4gKwkJCS8qIFRyYW5zbGF0ZSBz
aGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPiAgIAkJCWFyZ3MtPmJ1c3kg
fD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwo+IC0JCX0KPiAgIAl9Cj4gLQo+IC0JaWYgKGFy
Z3MtPmJ1c3kgJiYgcmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5iYXNlLnJlc3YtPnNlcSwgc2Vx
KSkKPiAtCQlnb3RvIHJldHJ5Owo+ICsJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4gICAK
PiAgIAllcnIgPSAwOwo+ICAgb3V0Ogo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
