Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C4840AB9F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 12:27:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAC9E6321B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 10:26:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B689E6242C; Tue, 14 Sep 2021 10:26:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7320C6194E;
	Tue, 14 Sep 2021 10:26:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 647DD618BC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 10:26:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5B06F6197F; Tue, 14 Sep 2021 10:26:51 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by lists.linaro.org (Postfix) with ESMTPS id 05A2B6194E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 10:26:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221990766"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="221990766"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 03:26:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="432945409"
Received: from ocascan-mobl.ger.corp.intel.com (HELO [10.213.234.116])
 ([10.213.234.116])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 03:26:45 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-16-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f9ebc539-3965-b57f-7040-78aaba72afbd@linux.intel.com>
Date: Tue, 14 Sep 2021 11:26:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210913131707.45639-16-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 15/26] drm/i915: use the new
 iterator in i915_request_await_object
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
aTkxNV9yZXF1ZXN0LmMgfCAzNiArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiBpbmRleCAzN2FlZjEzMDg1NzMuLmI4MTA0NWNlYjYx
OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gQEAgLTE1ODMsMzggKzE1
ODMsMTYgQEAgaTkxNV9yZXF1ZXN0X2F3YWl0X29iamVjdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp0
bywKPiAgIAkJCSAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJCSAgYm9v
bCB3cml0ZSkKPiAgIHsKPiAtCXN0cnVjdCBkbWFfZmVuY2UgKmV4Y2w7Cj4gKwlzdHJ1Y3QgZG1h
X3Jlc3ZfY3Vyc29yIGN1cnNvcjsKPiArCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+ICAgCWlu
dCByZXQgPSAwOwo+ICAgCj4gLQlpZiAod3JpdGUpIHsKPiAtCQlzdHJ1Y3QgZG1hX2ZlbmNlICoq
c2hhcmVkOwo+IC0JCXVuc2lnbmVkIGludCBjb3VudCwgaTsKPiAtCj4gLQkJcmV0ID0gZG1hX3Jl
c3ZfZ2V0X2ZlbmNlcyhvYmotPmJhc2UucmVzdiwgJmV4Y2wsICZjb3VudCwKPiAtCQkJCQkgICZz
aGFyZWQpOwo+IC0JCWlmIChyZXQpCj4gLQkJCXJldHVybiByZXQ7Cj4gLQo+IC0JCWZvciAoaSA9
IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4gLQkJCXJldCA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFf
ZmVuY2UodG8sIHNoYXJlZFtpXSk7Cj4gLQkJCWlmIChyZXQpCj4gLQkJCQlicmVhazsKPiAtCj4g
LQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPiArCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNl
X3VubG9ja2VkKG9iai0+YmFzZS5yZXN2LCAmY3Vyc29yLCB3cml0ZSwgZmVuY2UpIHsKCkkgdGhp
bmsgY2FsbGVycyBoYXZlIHRoZSBvYmplY3QgbG9ja2VkIGZvciB0aGlzIG9uZS4gQXQgbGVhc3Qg
aWYgeW91IApoYXZlbid0IHRyaWVkIGl0IGl0J3Mgd29ydGggYXNraW5nIENJICh5b3UgaGF2ZSB0
aGUgYXNzZXJ0IGFscmVhZHkgc28gaXQgCndpbGwgdGVsbCB5b3UpLiBCdXQgSSB0aGluayBpdCdz
IGltcG9ydGFudCB0byBoYXZlIGFuIGF0b21pYyBzbmFwc2hvdCBoZXJlLgoKUmVnYXJkcywKClR2
cnRrbwoKPiArCQlyZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBmZW5jZSk7
Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiArCQkJYnJlYWs7
Cj4gICAJCX0KPiAtCj4gLQkJZm9yICg7IGkgPCBjb3VudDsgaSsrKQo+IC0JCQlkbWFfZmVuY2Vf
cHV0KHNoYXJlZFtpXSk7Cj4gLQkJa2ZyZWUoc2hhcmVkKTsKPiAtCX0gZWxzZSB7Cj4gLQkJZXhj
bCA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+YmFzZS5yZXN2KTsKPiAtCX0KPiAt
Cj4gLQlpZiAoZXhjbCkgewo+IC0JCWlmIChyZXQgPT0gMCkKPiAtCQkJcmV0ID0gaTkxNV9yZXF1
ZXN0X2F3YWl0X2RtYV9mZW5jZSh0bywgZXhjbCk7Cj4gLQo+IC0JCWRtYV9mZW5jZV9wdXQoZXhj
bCk7Cj4gICAJfQo+ICAgCj4gICAJcmV0dXJuIHJldDsKPiAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
