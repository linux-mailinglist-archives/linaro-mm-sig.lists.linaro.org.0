Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFB341113D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 10:45:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B58C0607A7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 08:45:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 406F86263A; Mon, 20 Sep 2021 08:45:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8A4C60C2C;
	Mon, 20 Sep 2021 08:45:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F24CD607A7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 08:45:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EFFDA60C2C; Mon, 20 Sep 2021 08:45:17 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by lists.linaro.org (Postfix) with ESMTPS id AA6E8607A7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 08:45:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="202588942"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="202588942"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:45:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="473489071"
Received: from gbradyx-mobl2.ger.corp.intel.com (HELO [10.213.235.119])
 ([10.213.235.119])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:45:13 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-14-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6fbaca09-ec51-c44e-708c-334ef8be8595@linux.intel.com>
Date: Mon, 20 Sep 2021 09:45:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210917123513.1106-14-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 13/26] drm/i915: use the new
 iterator in i915_gem_busy_ioctl
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

Ck9uIDE3LzA5LzIwMjEgMTM6MzUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gVGhpcyBtYWtl
cyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4Cj4gcmV0cnkgbG9n
aWMgaXMgbm93IGhhbmRsZWQgZWxzZSB3aGVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMzIgKysrKysrKystLS0tLS0tLS0tLS0t
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4gaW5kZXggNjIz
NGUxNzI1OWMxLi5iMWNiN2JhNjg4ZGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9idXN5LmMKPiBAQCAtODIsOCArODIsOCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICB7Cj4gICAJc3RydWN0IGRybV9p
OTE1X2dlbV9idXN5ICphcmdzID0gZGF0YTsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqOwo+IC0Jc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3Q7Cj4gLQl1bnNpZ25lZCBpbnQg
c2VxOwo+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+ICsJc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2U7Cj4gICAJaW50IGVycjsKPiAgIAo+ICAgCWVyciA9IC1FTk9FTlQ7Cj4gQEAgLTEw
OSwyNyArMTA5LDE3IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
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
cy0+YnVzeSA9IGZhbHNlOwo+ICsJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBvYmotPmJh
c2UucmVzdiwgdHJ1ZSk7Cj4gKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vy
c29yLCBmZW5jZSkgewoKWW91IGRpZCBub3QgYWdyZWUgd2l0aCBteSBzdWdnZXN0aW9uIHRvIHJl
c2V0IGFyZ3MtPmJ1c3kgb24gcmVzdGFydCBhbmQgCnNvIHByZXNlcnZlIGN1cnJlbnQgYmVoYXZp
b3VyPwoKUmVnYXJkcywKClR2cnRrbwoKPiArCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNp
dmUoJmN1cnNvcikpCj4gKwkJCS8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRo
ZSBSRUFEICphbmQqIFdSSVRFIGVuZ2luZSAqLwo+ICsJCQlhcmdzLT5idXN5ID0gYnVzeV9jaGVj
a193cml0ZXIoZmVuY2UpOwo+ICsJCWVsc2UKPiArCQkJLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5j
ZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+ICAgCQkJYXJncy0+YnVzeSB8PSBidXN5X2No
ZWNrX3JlYWRlcihmZW5jZSk7Cj4gLQkJfQo+ICAgCX0KPiAtCj4gLQlpZiAoYXJncy0+YnVzeSAm
JiByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPmJhc2UucmVzdi0+c2VxLCBzZXEpKQo+IC0JCWdv
dG8gcmV0cnk7Cj4gKwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPiAgIAo+ICAgCWVyciA9
IDA7Cj4gICBvdXQ6Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
