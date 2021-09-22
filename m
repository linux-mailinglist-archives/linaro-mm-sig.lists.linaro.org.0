Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A5F41476E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 13:12:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64F18619C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6B50C61978; Wed, 22 Sep 2021 11:12:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15CDE6117A;
	Wed, 22 Sep 2021 11:12:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D49836068A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 11:12:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C94706117A; Wed, 22 Sep 2021 11:12:12 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by lists.linaro.org (Postfix) with ESMTPS id 7DAE66068A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 11:12:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223602429"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="223602429"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 04:12:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="512939305"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 04:12:07 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-19-christian.koenig@amd.com>
 <92e428d5-76d5-e63f-5322-aa5cf1a1952a@linux.intel.com>
 <db679020-b35b-8664-a6b8-3d88ed2ca8c6@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <80ac45ad-c23b-92a7-59dd-b6a253789df5@linux.intel.com>
Date: Wed, 22 Sep 2021 12:12:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <db679020-b35b-8664-a6b8-3d88ed2ca8c6@gmail.com>
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

Ck9uIDIyLzA5LzIwMjEgMTI6MDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjIuMDku
MjEgdW0gMTI6Mjcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMjIvMDkvMjAyMSAx
MDoxMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IFRoaXMgaXMgbWF5YmUgZXZlbiBhIGZp
eCBzaW5jZSB0aGUgUkNVIHVzYWdlIGhlcmUgbG9va3MgaW5jb3JyZWN0Lgo+Pgo+PiBJJ20gYWZy
YWlkIEkgZ2F6dW1wZWQgeW91IGhlcmUgYnkgcmVtb3ZpbmcgdGhpcyBmdW5jdGlvbiBzaG9ydGx5
IAo+PiBiZWZvcmUgeW91IHBvc3RlZCB0aGUgcmVzcGluLgo+IAo+IElzIHRoYXQgYWxyZWFkeSBs
YW5kZWQgaW4gZHJtLW1pc2MtbmV4dD8gSWYgbm90IGp1c3QgZ2l2ZSBtZSBhbiBBY2tlZC1ieSAK
PiBhbmQgaXQgd2lsbCBiZSBmaXhlZCB3aGVuIG1lcmdpbmcgdHJlZXMgdG9nZXRoZXIgYWdhaW4g
YnkganVzdCBkcm9wcGluZyAKPiB0aGUgY2hhbmdlLgo+IAo+IEFsdGVybmF0aXZlbHkgaWYgaXQg
aXMgbm90IGluIGRybS1uZXh0IEkgd2lsbCBwaW5nIHRoZSBkcm0tbWlzYy1uZXh0IAo+IG1haW50
YWluZXIgZm9yIGEgbWVyZ2UuCgpQcm9ibGVtIGlzIHlvdSB3aWxsIG5ldmVyIHBhc3Mgb3VyIENJ
IHdpdGggYSBzZXJpZXMgd2hpY2ggZG9lcyBub3QgYXBwbHkgCnRvIGRybS10aXAuIDspCgpSZWdh
cmRzLAoKVHZydGtvCgo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFuLgo+IAo+Pgo+PiBSZWdhcmRzLAo+
Pgo+PiBUdnJ0a28KPj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgMTYgKysrKysrKystLS0tLS0tLQo+Pj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIAo+Pj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPj4+IGluZGV4IDQ4MTEy
YjlkNzZkZi4uZTIwZWZmZmNlM2E5IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmgKPj4+IEBAIC01MDcsMTYgKzUwNywxNiBAQCBzdGF0aWMgaW5s
aW5lIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKgo+Pj4gwqAgaTkxNV9nZW1fb2JqZWN0X2xhc3Rf
d3JpdGVfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4+PiDCoCB7Cj4+
PiDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IE5VTEw7Cj4+PiAr
wqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+IMKgwqDCoMKgwqAgc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7Cj4+PiDCoCAtwqDCoMKgIHJjdV9yZWFkX2xvY2soKTsKPj4+IC3C
oMKgwqAgZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPmJhc2UucmVzdik7
Cj4+PiAtwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+Pj4gLQo+Pj4gLcKgwqDCoCBpZiAoZmVu
Y2UgJiYgZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpICYmIAo+Pj4gIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChmZW5jZSkpCj4+PiAtwqDCoMKgwqDCoMKgwqAgZW5naW5lID0gdG9fcmVxdWVzdChmZW5j
ZSktPmVuZ2luZTsKPj4+IC3CoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4+PiAtCj4+PiAr
wqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIGZhbHNl
KTsKPj4+ICvCoMKgwqAgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwg
ZmVuY2UpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoZmVuY2UgJiYgZG1hX2ZlbmNlX2lzX2k5
MTUoZmVuY2UpICYmCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkKGZlbmNlKSkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuZ2luZSA9IHRvX3Jl
cXVlc3QoZmVuY2UpLT5lbmdpbmU7Cj4+PiArwqDCoMKgIH0KPj4+ICvCoMKgwqAgZG1hX3Jlc3Zf
aXRlcl9lbmQoJmN1cnNvcik7Cj4+PiDCoMKgwqDCoMKgIHJldHVybiBlbmdpbmU7Cj4+PiDCoCB9
Cj4+Pgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
