Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD52414615
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 12:21:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F193B619CF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 10:21:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D0CDF61758; Wed, 22 Sep 2021 10:21:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 771C160C97;
	Wed, 22 Sep 2021 10:21:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1640C60A81
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 10:21:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 099DC60C97; Wed, 22 Sep 2021 10:21:39 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by lists.linaro.org (Postfix) with ESMTPS id A9D7660A81
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 10:21:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223208796"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="223208796"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 03:21:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="512927375"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 03:21:33 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-14-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
Date: Wed, 22 Sep 2021 11:21:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210922091044.2612-14-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 13/26] drm/i915: use the new iterator in
 i915_gem_busy_ioctl
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

Ck9uIDIyLzA5LzIwMjEgMTA6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gVGhpcyBtYWtl
cyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4Cj4gcmV0cnkgbG9n
aWMgaXMgbm93IGhhbmRsZWQgZWxzZSB3aGVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMzUgKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4gaW5kZXggNjIz
NGUxNzI1OWMxLi4zMTNhZmI0YTExYzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9idXN5LmMKPiBAQCAtODIsOCArODIsOCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICB7Cj4gICAJc3RydWN0IGRybV9p
OTE1X2dlbV9idXN5ICphcmdzID0gZGF0YTsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqOwo+IC0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3Q7Cj4gLQl1bnNpZ25lZCBpbnQg
c2VxOwo+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+ICsJc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2U7Cj4gICAJaW50IGVycjsKPiAgIAo+ICAgCWVyciA9IC1FTk9FTlQ7Cj4gQEAgLTEw
OSwyNyArMTA5LDIwIEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKPiAgIAkgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVzeW5lc3MuIFRo
aXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCBkb2VzLgo+ICAgCSAqCj4gICAJICovCj4gLXJldHJ5
Ogo+IC0Jc2VxID0gcmF3X3JlYWRfc2VxY291bnQoJm9iai0+YmFzZS5yZXN2LT5zZXEpOwo+IC0K
PiAtCS8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIFdS
SVRFIGVuZ2luZSAqLwo+IC0JYXJncy0+YnVzeSA9IGJ1c3lfY2hlY2tfd3JpdGVyKGRtYV9yZXN2
X2V4Y2xfZmVuY2Uob2JqLT5iYXNlLnJlc3YpKTsKPiAtCj4gLQkvKiBUcmFuc2xhdGUgc2hhcmVk
IGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdpbmVzICovCj4gLQlsaXN0ID0gZG1hX3Jlc3Zfc2hh
cmVkX2xpc3Qob2JqLT5iYXNlLnJlc3YpOwo+IC0JaWYgKGxpc3QpIHsKPiAtCQl1bnNpZ25lZCBp
bnQgc2hhcmVkX2NvdW50ID0gbGlzdC0+c2hhcmVkX2NvdW50LCBpOwo+IC0KPiAtCQlmb3IgKGkg
PSAwOyBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsKPiAtCQkJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UgPQo+IC0JCQkJcmN1X2RlcmVmZXJlbmNlKGxpc3QtPnNoYXJlZFtpXSk7Cj4gLQo+ICsJYXJn
cy0+YnVzeSA9IGZhbHNlOwoKWW91IGNhbiBkcm9wIHRoaXMgbGluZSwgZXNwZWNpYWxseSBzaW5j
ZSBpdCBpcyBub3QgYSBib29sZWFuLiBXaXRoIHRoYXQ6CgpSZXZpZXdlZC1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gKwlk
bWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCB0cnVlKTsKPiArCWRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Cj4gKwkJaWYg
KGRtYV9yZXN2X2l0ZXJfaXNfcmVzdGFydGVkKCZjdXJzb3IpKQo+ICsJCQlhcmdzLT5idXN5ID0g
MDsKPiArCj4gKwkJaWYgKGRtYV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKCZjdXJzb3IpKQo+ICsJ
CQkvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklU
RSBlbmdpbmUgKi8KPiArCQkJYXJncy0+YnVzeSB8PSBidXN5X2NoZWNrX3dyaXRlcihmZW5jZSk7
Cj4gKwkJZWxzZQo+ICsJCQkvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBv
ZiBlbmdpbmVzICovCj4gICAJCQlhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNl
KTsKPiAtCQl9Cj4gICAJfQo+IC0KPiAtCWlmIChhcmdzLT5idXN5ICYmIHJlYWRfc2VxY291bnRf
cmV0cnkoJm9iai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCj4gLQkJZ290byByZXRyeTsKPiArCWRt
YV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+ICAgCj4gICAJZXJyID0gMDsKPiAgIG91dDoKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
