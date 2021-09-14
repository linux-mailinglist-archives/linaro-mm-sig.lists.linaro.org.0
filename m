Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E77B40ADAB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 14:28:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E98AD62164
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 12:28:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C5B1D619C1; Tue, 14 Sep 2021 12:28:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A748A61021;
	Tue, 14 Sep 2021 12:28:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4775060EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:28:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3BCCE61021; Tue, 14 Sep 2021 12:28:06 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by lists.linaro.org (Postfix) with ESMTPS id E63E660EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:28:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="202149935"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="202149935"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:28:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="432975337"
Received: from ocascan-mobl.ger.corp.intel.com (HELO [10.213.234.116])
 ([10.213.234.116])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:28:01 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-19-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <46a40614-b448-7f2d-7b6b-0705c4277e2b@linux.intel.com>
Date: Tue, 14 Sep 2021 13:27:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210913131707.45639-19-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 18/26] drm/i915: use new
 iterator in i915_gem_object_last_write_engine
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

Ck9uIDEzLzA5LzIwMjEgMTQ6MTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gVGhpcyBpcyBt
YXliZSBldmVuIGEgZml4IHNpbmNlIHRoZSBSQ1UgdXNhZ2UgaGVyZSBsb29rcyBpbmNvcnJlY3Qu
CgpXaGF0IHlvdSB0aGluayBpcyBpbmNvcnJlY3Q/IFBvaW50bGVzcyBleHRyYSByY3UgbG9ja2lu
Zz8KCkFsc28sIEZXSVcsIEkgc3VibWl0dGVkIGEgcGF0Y2ggdG8gcmVtb3ZlIHRoaXMgZnVuY3Rp
b24gYWx0b2dldGhlciBzaW5jZSAKaXRzIElNTyBwcmV0dHkgdXNlbGVzcywganVzdCBmYWlsZWQg
aW4gZ2V0dGluZyBhbnlvbmUgdG8gYWNrIGl0IHNvIGZhci4KClJlZ2FyZHMsCgpUdnJ0a28KCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwg
MTUgKysrKysrKy0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA4
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmgKPiBpbmRleCBlOWVlY2ViZjVjOWQuLjMzNDM5MjJhZjRkNiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBAQCAtNTAwLDE2ICs1MDAsMTUg
QEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoKPiAgIGk5MTVfZ2VtX29i
amVjdF9sYXN0X3dyaXRlX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+
ICAgewo+ICAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IE5VTEw7Cj4gKwlzdHJ1
Y3QgZG1hX3Jlc3ZfY3Vyc29yIGN1cnNvcjsKPiAgIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsK
PiAgIAo+IC0JcmN1X3JlYWRfbG9jaygpOwo+IC0JZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91
bmxvY2tlZChvYmotPmJhc2UucmVzdik7Cj4gLQlyY3VfcmVhZF91bmxvY2soKTsKPiAtCj4gLQlp
ZiAoZmVuY2UgJiYgZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpICYmICFkbWFfZmVuY2VfaXNfc2ln
bmFsZWQoZmVuY2UpKQo+IC0JCWVuZ2luZSA9IHRvX3JlcXVlc3QoZmVuY2UpLT5lbmdpbmU7Cj4g
LQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiAtCj4gKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91
bmxvY2tlZChvYmotPmJhc2UucmVzdiwgJmN1cnNvciwgZmFsc2UsCj4gKwkJCQkJIGZlbmNlKSB7
Cj4gKwkJaWYgKGZlbmNlICYmIGRtYV9mZW5jZV9pc19pOTE1KGZlbmNlKSAmJgo+ICsJCSAgICAh
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKPiArCQkJZW5naW5lID0gdG9fcmVxdWVzdChm
ZW5jZSktPmVuZ2luZTsKPiArCX0KPiAgIAlyZXR1cm4gZW5naW5lOwo+ICAgfQo+ICAgCj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
