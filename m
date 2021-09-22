Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A1941468D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 12:35:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31AED61A3C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 10:35:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 16A8F617E8; Wed, 22 Sep 2021 10:35:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05E7761725;
	Wed, 22 Sep 2021 10:35:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B83E4610C2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 10:35:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AC1EA61725; Wed, 22 Sep 2021 10:35:12 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by lists.linaro.org (Postfix) with ESMTPS id 6CB9A610C2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 10:35:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="309118243"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="309118243"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 03:35:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="512930172"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 03:34:59 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-16-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0af21739-f397-096b-d4fa-e51840603c6f@linux.intel.com>
Date: Wed, 22 Sep 2021 11:34:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210922091044.2612-16-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 15/26] drm/i915: use the new iterator in
 i915_request_await_object v2
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

Ck9uIDIyLzA5LzIwMjEgMTA6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gU2ltcGxpZnlp
bmcgdGhlIGNvZGUgYSBiaXQuCj4gCj4gdjI6IGFkZCBtaXNzaW5nIHJjdV9yZWFkX2xvY2soKS9y
Y3VfcmVhZF91bmxvY2soKQo+IHYzOiB1c2UgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UgaW5zdGVh
ZAo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwg
MzQgKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVx
dWVzdC5jCj4gaW5kZXggY2U0NDY3MTZkMDkyLi4zODM5NzEyZWJkMjMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IEBAIC0xNTA5LDM4ICsxNTA5LDE0IEBAIGk5MTVfcmVx
dWVzdF9hd2FpdF9vYmplY3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqdG8sCj4gICAJCQkgIHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gICAJCQkgIGJvb2wgd3JpdGUpCj4gICB7Cj4g
LQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOwo+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29y
Owo+ICsJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4gICAJaW50IHJldCA9IDA7Cj4gICAKPiAt
CWlmICh3cml0ZSkgewo+IC0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7Cj4gLQkJdW5zaWdu
ZWQgaW50IGNvdW50LCBpOwo+IC0KPiAtCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKG9iai0+
YmFzZS5yZXN2LCAmZXhjbCwgJmNvdW50LAo+IC0JCQkJCSAgJnNoYXJlZCk7Cj4gKwlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCBvYmotPmJhc2UucmVzdiwgd3JpdGUsIGZlbmNlKSB7
Cj4gKwkJcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZSh0bywgZmVuY2UpOwo+ICAg
CQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0Owo+IC0KPiAtCQlmb3IgKGkgPSAwOyBpIDwgY291
bnQ7IGkrKykgewo+IC0JCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBz
aGFyZWRbaV0pOwo+IC0JCQlpZiAocmV0KQo+IC0JCQkJYnJlYWs7Cj4gLQo+IC0JCQlkbWFfZmVu
Y2VfcHV0KHNoYXJlZFtpXSk7Cj4gLQkJfQo+IC0KPiAtCQlmb3IgKDsgaSA8IGNvdW50OyBpKysp
Cj4gLQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPiAtCQlrZnJlZShzaGFyZWQpOwo+IC0J
fSBlbHNlIHsKPiAtCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5iYXNl
LnJlc3YpOwo+IC0JfQo+IC0KPiAtCWlmIChleGNsKSB7Cj4gLQkJaWYgKHJldCA9PSAwKQo+IC0J
CQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBleGNsKTsKPiAtCj4gLQkJ
ZG1hX2ZlbmNlX3B1dChleGNsKTsKPiArCQkJYnJlYWs7Cj4gICAJfQo+ICAgCj4gICAJcmV0dXJu
IHJldDsKPiAKClNob3J0IGFuZCBzd2VldC4gSSBob3BlIENJIGNvbmZpcm1zIGFsbCBjYWxsZXJz
IGhhdmUgaXQgbG9ja2VkIGFuZCBpbiAKdGhlIG1lYW50aW1lIEkgd2lsbCByaXNrIGl0OgoKUmV2
aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdh
cmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
