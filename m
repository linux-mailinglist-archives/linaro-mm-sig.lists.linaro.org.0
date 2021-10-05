Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B38B14226F0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 14:40:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E51060A49
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 12:40:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 502F060E41; Tue,  5 Oct 2021 12:40:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B74F605A9;
	Tue,  5 Oct 2021 12:40:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1B0466057D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 12:40:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F927605A9; Tue,  5 Oct 2021 12:40:37 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by lists.linaro.org (Postfix) with ESMTPS id C1E1D6057D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 12:40:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="286604320"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="286604320"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 05:40:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="438680930"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.238.194])
 ([10.213.238.194])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 05:40:32 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-18-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <50b8ffb7-2720-619d-3140-af2f90450a21@linux.intel.com>
Date: Tue, 5 Oct 2021 13:40:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211005113742.1101-18-christian.koenig@amd.com>
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

Ck9uIDA1LzEwLzIwMjEgMTI6MzcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gVGhpcyBtYWtl
cyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4Cj4gcmV0cnkgbG9n
aWMgaXMgbm93IGhhbmRsZWQgZWxzZSB3aGVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZW1pbmRlciAtIHItYiB3YXMg
cmV0cmFjdGVkIHVudGlsIGF0IGxlYXN0IG1vcmUgdGV4dCBpcyBhZGRlZCB0byBjb21taXQgCm1l
c3NhZ2UgYWJvdXQgcHJvcyBhbmQgY29ucy4gQnV0IHJlYWxseSBzb21lIGRpc2N1c3Npb24gaGFk
IGluc2lkZSB0aGUgCmk5MTUgdGVhbSBvbiB0aGUgdG9waWMuCgpSZWdhcmRzLAoKVHZydGtvCgo+
IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDM1ICsr
KysrKysrKystLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDIxIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fYnVzeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2J1c3kuYwo+IGluZGV4IDYyMzRlMTcyNTljMS4uZGM3MmIzNmRhZTU0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4gQEAgLTgyLDggKzgyLDggQEAgaTkx
NV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAg
ewo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7Cj4gICAJc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAtCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0
Owo+IC0JdW5zaWduZWQgaW50IHNlcTsKPiArCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsK
PiArCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+ICAgCWludCBlcnI7Cj4gICAKPiAgIAllcnIg
PSAtRU5PRU5UOwo+IEBAIC0xMDksMjcgKzEwOSwyMCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAJICogdG8gcmVwb3J0IHRoZSBv
dmVyYWxsIGJ1c3luZXNzLiBUaGlzIGlzIHdoYXQgdGhlIHdhaXQtaW9jdGwgZG9lcy4KPiAgIAkg
Kgo+ICAgCSAqLwo+IC1yZXRyeToKPiAtCXNlcSA9IHJhd19yZWFkX3NlcWNvdW50KCZvYmotPmJh
c2UucmVzdi0+c2VxKTsKPiAtCj4gLQkvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0
byB0aGUgUkVBRCAqYW5kKiBXUklURSBlbmdpbmUgKi8KPiAtCWFyZ3MtPmJ1c3kgPSBidXN5X2No
ZWNrX3dyaXRlcihkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2KSk7Cj4gLQo+IC0J
LyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+IC0J
bGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iai0+YmFzZS5yZXN2KTsKPiAtCWlmIChsaXN0
KSB7Cj4gLQkJdW5zaWduZWQgaW50IHNoYXJlZF9jb3VudCA9IGxpc3QtPnNoYXJlZF9jb3VudCwg
aTsKPiAtCj4gLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Cj4gLQkJCXN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0KPiAtCQkJCXJjdV9kZXJlZmVyZW5jZShsaXN0LT5zaGFy
ZWRbaV0pOwo+IC0KPiArCWFyZ3MtPmJ1c3kgPSAwOwo+ICsJZG1hX3Jlc3ZfaXRlcl9iZWdpbigm
Y3Vyc29yLCBvYmotPmJhc2UucmVzdiwgdHJ1ZSk7Cj4gKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5j
ZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+ICsJCWlmIChkbWFfcmVzdl9pdGVyX2lzX3Jl
c3RhcnRlZCgmY3Vyc29yKSkKPiArCQkJYXJncy0+YnVzeSA9IDA7Cj4gKwo+ICsJCWlmIChkbWFf
cmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSkKPiArCQkJLyogVHJhbnNsYXRlIHRoZSBl
eGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUgZW5naW5lICovCj4gKwkJCWFy
Z3MtPmJ1c3kgfD0gYnVzeV9jaGVja193cml0ZXIoZmVuY2UpOwo+ICsJCWVsc2UKPiArCQkJLyog
VHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+ICAgCQkJ
YXJncy0+YnVzeSB8PSBidXN5X2NoZWNrX3JlYWRlcihmZW5jZSk7Cj4gLQkJfQo+ICAgCX0KPiAt
Cj4gLQlpZiAoYXJncy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPmJhc2UucmVz
di0+c2VxLCBzZXEpKQo+IC0JCWdvdG8gcmV0cnk7Cj4gKwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vy
c29yKTsKPiAgIAo+ICAgCWVyciA9IDA7Cj4gICBvdXQ6Cj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
