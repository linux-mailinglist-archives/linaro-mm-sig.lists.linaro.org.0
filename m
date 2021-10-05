Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 355FF421FA8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 09:48:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AFBB66C02
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 07:48:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4CC2F67034; Tue,  5 Oct 2021 07:48:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18F2961A07;
	Tue,  5 Oct 2021 07:48:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 98581617B3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:48:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 962DE6197F; Tue,  5 Oct 2021 07:48:24 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by lists.linaro.org (Postfix) with ESMTPS id 5236F617B3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:48:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="224453127"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="224453127"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:48:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="487921719"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.238.194])
 ([10.213.238.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:48:19 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-24-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2caa3933-2e29-1b86-a20e-82225d266710@linux.intel.com>
Date: Tue, 5 Oct 2021 08:48:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211001100610.2899-24-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 23/28] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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

Ck9uIDAxLzEwLzIwMjEgMTE6MDYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gU2ltcGxpZnlp
bmcgdGhlIGNvZGUgYSBiaXQuCj4gCj4gdjI6IGFkZCBtaXNzaW5nIHJjdV9yZWFkX2xvY2soKS91
bmxvY2soKQo+IHYzOiBzd2l0Y2ggdG8gbG9ja2VkIHZlcnNpb24KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIHwgMjYgKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9nZW0uYwo+IGluZGV4IDA5YzgyMDA0NTg1OS4uNGRjZGVjNjQ4N2JiIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbS5jCj4gQEAgLTEzNDAsMzEgKzEzNDAsMTUgQEAgaW50IGRybV9nZW1fZmVuY2VfYXJyYXlf
YWRkX2ltcGxpY2l0KHN0cnVjdCB4YXJyYXkgKmZlbmNlX2FycmF5LAo+ICAgCQkJCSAgICAgc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCj4gICAJCQkJICAgICBib29sIHdyaXRlKQo+ICAgewo+
IC0JaW50IHJldDsKPiAtCXN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXM7Cj4gLQl1bnNpZ25lZCBp
bnQgaSwgZmVuY2VfY291bnQ7Cj4gLQo+IC0JaWYgKCF3cml0ZSkgewo+IC0JCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlID0KPiAtCQkJZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5yZXN2
KTsKPiAtCj4gLQkJcmV0dXJuIGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBm
ZW5jZSk7Cj4gLQl9Cj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4gKwlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZTsKPiArCWludCByZXQgPSAwOwo+ICAgCj4gLQlyZXQgPSBkbWFfcmVz
dl9nZXRfZmVuY2VzKG9iai0+cmVzdiwgTlVMTCwKPiAtCQkJCQkJJmZlbmNlX2NvdW50LCAmZmVu
Y2VzKTsKPiAtCWlmIChyZXQgfHwgIWZlbmNlX2NvdW50KQo+IC0JCXJldHVybiByZXQ7Cj4gLQo+
IC0JZm9yIChpID0gMDsgaSA8IGZlbmNlX2NvdW50OyBpKyspIHsKPiAtCQlyZXQgPSBkcm1fZ2Vt
X2ZlbmNlX2FycmF5X2FkZChmZW5jZV9hcnJheSwgZmVuY2VzW2ldKTsKPiArCWRtYV9yZXN2X2Zv
cl9lYWNoX2ZlbmNlKCZjdXJzb3IsIG9iai0+cmVzdiwgd3JpdGUsIGZlbmNlKSB7Cj4gKwkJcmV0
ID0gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoZmVuY2VfYXJyYXksIGZlbmNlKTsKPiAgIAkJaWYg
KHJldCkKPiAgIAkJCWJyZWFrOwo+ICAgCX0KPiAtCj4gLQlmb3IgKDsgaSA8IGZlbmNlX2NvdW50
OyBpKyspCj4gLQkJZG1hX2ZlbmNlX3B1dChmZW5jZXNbaV0pOwo+IC0Ja2ZyZWUoZmVuY2VzKTsK
PiAgIAlyZXR1cm4gcmV0Owo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX2ZlbmNlX2Fy
cmF5X2FkZF9pbXBsaWNpdCk7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
