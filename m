Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E72421FC5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 09:54:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EAA567E22
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 07:54:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4CB506338D; Tue,  5 Oct 2021 07:54:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 928B3618C3;
	Tue,  5 Oct 2021 07:54:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 082C8608ED
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:54:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05821618C3; Tue,  5 Oct 2021 07:54:01 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by lists.linaro.org (Postfix) with ESMTPS id B4379608ED
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:53:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="212801454"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="212801454"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:53:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="487924881"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.238.194])
 ([10.213.238.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:53:56 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-25-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <80bb132f-0e40-68a1-d034-2d4b17d321ad@linux.intel.com>
Date: Tue, 5 Oct 2021 08:53:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211001100610.2899-25-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb
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

Ck9uIDAxLzEwLzIwMjEgMTE6MDYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gTWFrZXMgdGhl
IGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0aGUgdXNlIG9mCj4gZG1h
X3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQoKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgfCAxMyArKysrKysrKysrKy0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCj4gaW5kZXggZTU3MDM5OGFiZDc4Li4yMWVkOTMw
MDQyYjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBl
ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCj4gQEAg
LTE0Myw2ICsxNDMsNyBAQAo+ICAgICovCj4gICBpbnQgZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJl
cGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAq
c3RhdGUpCj4gICB7Cj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4gICAJc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmo7Cj4gICAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4gICAK
PiBAQCAtMTUwLDkgKzE1MSwxNyBAQCBpbnQgZHJtX2dlbV9wbGFuZV9oZWxwZXJfcHJlcGFyZV9m
YihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdAo+ICAgCQlyZXR1
cm4gMDsKPiAgIAo+ICAgCW9iaiA9IGRybV9nZW1fZmJfZ2V0X29iaihzdGF0ZS0+ZmIsIDApOwo+
IC0JZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwo+IC0JZHJt
X2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBmZW5jZSk7Cj4gKwlkbWFfcmVzdl9p
dGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+cmVzdiwgZmFsc2UpOwo+ICsJZG1hX3Jlc3ZfZm9yX2Vh
Y2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPiArCQlkbWFfZmVuY2VfZ2V0KGZl
bmNlKTsKPiArCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPiArCQkvKiBUT0RPOiBXZSBv
bmx5IHVzZSB0aGUgZmlyc3Qgd3JpdGUgZmVuY2UgaGVyZSAqLwoKV2hhdCBpcyB0aGUgVE9ETz8g
TkIgaW5zdGVhZD8KCj4gKwkJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBm
ZW5jZSk7Cj4gKwkJcmV0dXJuIDA7Cj4gKwl9Cj4gKwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29y
KTsKPiAgIAo+ICsJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBOVUxMKTsK
CglkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+cmVzdiwgZmFsc2UpOwoJZG1hX3Jl
c3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKCQlkbWFfZmVuY2Vf
Z2V0KGZlbmNlKTsKCQlicmVhazsKCX0KCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwoKCWRy
bV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOwoKRG9lcyB0aGlzIHdv
cms/CgpCdXQgb3ZlcmFsbCBJIGFtIG5vdCBzdXJlIHRoaXMgaXMgbmljZXIuIElzIHRoZSBnb2Fs
IHRvIHJlbW92ZSAKZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQgYXMgQVBJIGl0IGp1c3QgZG9l
cyBub3QgaGFwcGVuIGluIHRoaXMgc2VyaWVzPwoKUmVnYXJkcywKClR2cnRrbwoKPiAgIAlyZXR1
cm4gMDsKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fcGxhbmVfaGVscGVyX3By
ZXBhcmVfZmIpOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
