Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF8C41462E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 12:27:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD62F61A3D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 10:27:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B6CF961754; Wed, 22 Sep 2021 10:27:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88E9660ADB;
	Wed, 22 Sep 2021 10:27:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 51DE460ADB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 10:27:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4F89461725; Wed, 22 Sep 2021 10:27:30 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by lists.linaro.org (Postfix) with ESMTPS id 0C67B60ADB
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 10:27:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="246002235"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="246002235"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 03:27:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="512928662"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 03:27:25 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-19-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <92e428d5-76d5-e63f-5322-aa5cf1a1952a@linux.intel.com>
Date: Wed, 22 Sep 2021 11:27:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210922091044.2612-19-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 18/26] drm/i915: use new iterator in
 i915_gem_object_last_write_engine
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

Ck9uIDIyLzA5LzIwMjEgMTA6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gVGhpcyBpcyBt
YXliZSBldmVuIGEgZml4IHNpbmNlIHRoZSBSQ1UgdXNhZ2UgaGVyZSBsb29rcyBpbmNvcnJlY3Qu
CgpJJ20gYWZyYWlkIEkgZ2F6dW1wZWQgeW91IGhlcmUgYnkgcmVtb3ZpbmcgdGhpcyBmdW5jdGlv
biBzaG9ydGx5IGJlZm9yZSAKeW91IHBvc3RlZCB0aGUgcmVzcGluLgoKUmVnYXJkcywKClR2cnRr
bwoKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmggfCAxNiArKysrKysrKy0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmgKPiBpbmRleCA0ODExMmI5ZDc2ZGYuLmUyMGVmZmZjZTNhOSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBAQCAtNTA3LDE2ICs1
MDcsMTYgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoKPiAgIGk5MTVf
Z2VtX29iamVjdF9sYXN0X3dyaXRlX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQo+ICAgewo+ICAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IE5VTEw7Cj4g
KwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4gICAJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2U7Cj4gICAKPiAtCXJjdV9yZWFkX2xvY2soKTsKPiAtCWZlbmNlID0gZG1hX3Jlc3ZfZ2V0X2V4
Y2xfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3YpOwo+IC0JcmN1X3JlYWRfdW5sb2NrKCk7Cj4gLQo+
IC0JaWYgKGZlbmNlICYmIGRtYV9mZW5jZV9pc19pOTE1KGZlbmNlKSAmJiAhZG1hX2ZlbmNlX2lz
X3NpZ25hbGVkKGZlbmNlKSkKPiAtCQllbmdpbmUgPSB0b19yZXF1ZXN0KGZlbmNlKS0+ZW5naW5l
Owo+IC0JZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4gLQo+ICsJZG1hX3Jlc3ZfaXRlcl9iZWdpbigm
Y3Vyc29yLCBvYmotPmJhc2UucmVzdiwgZmFsc2UpOwo+ICsJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVu
Y2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPiArCQlpZiAoZmVuY2UgJiYgZG1hX2ZlbmNl
X2lzX2k5MTUoZmVuY2UpICYmCj4gKwkJICAgICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2Up
KQo+ICsJCQllbmdpbmUgPSB0b19yZXF1ZXN0KGZlbmNlKS0+ZW5naW5lOwo+ICsJfQo+ICsJZG1h
X3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4gICAJcmV0dXJuIGVuZ2luZTsKPiAgIH0KPiAgIAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
