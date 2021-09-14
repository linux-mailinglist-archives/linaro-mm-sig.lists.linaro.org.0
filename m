Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3986E40AE16
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 14:43:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E8A86216E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 12:43:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C0C99623DC; Tue, 14 Sep 2021 12:43:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 72AAA61021;
	Tue, 14 Sep 2021 12:42:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 68E7760EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:42:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5DA0061021; Tue, 14 Sep 2021 12:42:57 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by lists.linaro.org (Postfix) with ESMTPS id D4FAF60EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:42:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="218804638"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="218804638"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:42:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="544055574"
Received: from ocascan-mobl.ger.corp.intel.com (HELO [10.213.234.116])
 ([10.213.234.116])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:42:52 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-18-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <23f10a18-925f-cffe-a335-3d6c745d263a@linux.intel.com>
Date: Tue, 14 Sep 2021 13:42:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210913131707.45639-18-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 17/26] drm/i915: use new
 iterator in i915_gem_object_wait_priority
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

Ck9uIDEzLzA5LzIwMjEgMTQ6MTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gU2ltcGxpZnlp
bmcgdGhlIGNvZGUgYSBiaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3dhaXQuYyB8IDI5ICsrKystLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCj4gaW5kZXggMTMxNzQ1NDFmNmM4Li5l
MjE3M2E1NWU1MjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3dhaXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0
LmMKPiBAQCAtMTIwLDMxICsxMjAsMTIgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHko
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJCSAgICAgIHVuc2lnbmVkIGlu
dCBmbGFncywKPiAgIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIp
Cj4gICB7Cj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOwo+IC0KPiAtCWlmIChmbGFncyAmIEk5
MTVfV0FJVF9BTEwpIHsKPiAtCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqc2hhcmVkOwo+IC0JCXVuc2ln
bmVkIGludCBjb3VudCwgaTsKPiAtCQlpbnQgcmV0Owo+IC0KPiAtCQlyZXQgPSBkbWFfcmVzdl9n
ZXRfZmVuY2VzKG9iai0+YmFzZS5yZXN2LCAmZXhjbCwgJmNvdW50LAo+IC0JCQkJCSAgJnNoYXJl
ZCk7Cj4gLQkJaWYgKHJldCkKPiAtCQkJcmV0dXJuIHJldDsKPiAtCj4gLQkJZm9yIChpID0gMDsg
aSA8IGNvdW50OyBpKyspIHsKPiAtCQkJaTkxNV9nZW1fZmVuY2Vfd2FpdF9wcmlvcml0eShzaGFy
ZWRbaV0sIGF0dHIpOwo+IC0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Cj4gLQkJfQo+IC0K
PiAtCQlrZnJlZShzaGFyZWQpOwo+IC0JfSBlbHNlIHsKPiAtCQlleGNsID0gZG1hX3Jlc3ZfZ2V0
X2V4Y2xfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3YpOwo+IC0JfQo+ICsJc3RydWN0IGRtYV9yZXN2
X2N1cnNvciBjdXJzb3I7Cj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPiAgIAo+IC0JaWYg
KGV4Y2wpIHsKPiAtCQlpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5KGV4Y2wsIGF0dHIpOwo+
IC0JCWRtYV9mZW5jZV9wdXQoZXhjbCk7Cj4gKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxv
Y2tlZChvYmotPmJhc2UucmVzdiwgJmN1cnNvciwKPiArCQkJCQkgZmxhZ3MgJiBJOTE1X1dBSVRf
QUxMLCBmZW5jZSkgewo+ICsJCWk5MTVfZ2VtX2ZlbmNlX3dhaXRfcHJpb3JpdHkoZmVuY2UsIGF0
dHIpOwoKRG8geW91IGtub3cgaWYgdGhlIFJDVSBsb2NrIGlzIGFjdHVhbGx5IGhlbGQgaGVyZT8g
SSB0cmllZCBmb2xsb3dpbmcgdGhlIApLTVMgY29kZSBwYXRocyBidXQgZ290IGxvc3QgaW4gY29y
ZSBoZWxwZXJzIGFuZCBkcml2ZXIgdmZ1bmNzLgoKUmVnYXJkcywKClR2cnRrbwoKPiAgIAl9Cj4g
ICAJcmV0dXJuIDA7Cj4gICB9Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
