Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE9242D8C5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Oct 2021 14:04:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6371D61964
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Oct 2021 12:04:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E2EA361951; Thu, 14 Oct 2021 12:04:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99A43611AF;
	Thu, 14 Oct 2021 12:04:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 65AA860A12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Oct 2021 12:04:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 57E0C611AF; Thu, 14 Oct 2021 12:04:25 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by lists.linaro.org (Postfix) with ESMTPS id 206AA60A12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Oct 2021 12:04:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="207775540"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="207775540"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 05:04:22 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="481235432"
Received: from thanners-mobl.ger.corp.intel.com (HELO [10.252.62.140])
 ([10.252.62.140])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 05:04:20 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-21-christian.koenig@amd.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <5accca25-8ac3-47ca-ee56-8b33c208fc80@linux.intel.com>
Date: Thu, 14 Oct 2021 14:04:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211005113742.1101-21-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 20/28] drm/i915: use new iterator in
 i915_gem_object_wait_reservation
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3AgMDUtMTAtMjAyMSBvbSAxMzozNyBzY2hyZWVmIENocmlzdGlhbiBLw7ZuaWc6Cj4gU2ltcGxp
ZnlpbmcgdGhlIGNvZGUgYSBiaXQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV93YWl0LmMgfCA1MSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKPiBpbmRleCBmOTA5YWFhMDlkOWMuLmEx
MzE5M2RiMWRiYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fd2FpdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQu
Ywo+IEBAIC0zNyw1NSArMzcsMjIgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcmVzZXJ2YXRpb24o
c3RydWN0IGRtYV9yZXN2ICpyZXN2LAo+ICAJCQkJIHVuc2lnbmVkIGludCBmbGFncywKPiAgCQkJ
CSBsb25nIHRpbWVvdXQpCj4gIHsKPiAtCXN0cnVjdCBkbWFfZmVuY2UgKmV4Y2w7Cj4gLQlib29s
IHBydW5lX2ZlbmNlcyA9IGZhbHNlOwo+IC0KPiAtCWlmIChmbGFncyAmIEk5MTVfV0FJVF9BTEwp
IHsKPiAtCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqc2hhcmVkOwo+IC0JCXVuc2lnbmVkIGludCBjb3Vu
dCwgaTsKPiAtCQlpbnQgcmV0Owo+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+ICsJ
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4gIAo+IC0JCXJldCA9IGRtYV9yZXN2X2dldF9mZW5j
ZXMocmVzdiwgJmV4Y2wsICZjb3VudCwgJnNoYXJlZCk7Cj4gLQkJaWYgKHJldCkKPiAtCQkJcmV0
dXJuIHJldDsKPiAtCj4gLQkJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKyspIHsKPiAtCQkJdGlt
ZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKHNoYXJlZFtpXSwKPiAtCQkJCQkJCSAg
ICAgZmxhZ3MsIHRpbWVvdXQpOwo+IC0JCQlpZiAodGltZW91dCA8IDApCj4gLQkJCQlicmVhazsK
PiAtCj4gLQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPiAtCQl9Cj4gLQo+IC0JCWZvciAo
OyBpIDwgY291bnQ7IGkrKykKPiAtCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwo+IC0JCWtm
cmVlKHNoYXJlZCk7Cj4gLQo+IC0JCS8qCj4gLQkJICogSWYgYm90aCBzaGFyZWQgZmVuY2VzIGFu
ZCBhbiBleGNsdXNpdmUgZmVuY2UgZXhpc3QsCj4gLQkJICogdGhlbiBieSBjb25zdHJ1Y3Rpb24g
dGhlIHNoYXJlZCBmZW5jZXMgbXVzdCBiZSBsYXRlcgo+IC0JCSAqIHRoYW4gdGhlIGV4Y2x1c2l2
ZSBmZW5jZS4gSWYgd2Ugc3VjY2Vzc2Z1bGx5IHdhaXQgZm9yCj4gLQkJICogYWxsIHRoZSBzaGFy
ZWQgZmVuY2VzLCB3ZSBrbm93IHRoYXQgdGhlIGV4Y2x1c2l2ZSBmZW5jZQo+IC0JCSAqIG11c3Qg
YWxsIGJlIHNpZ25hbGVkLiBJZiBhbGwgdGhlIHNoYXJlZCBmZW5jZXMgYXJlCj4gLQkJICogc2ln
bmFsZWQsIHdlIGNhbiBwcnVuZSB0aGUgYXJyYXkgYW5kIHJlY292ZXIgdGhlCj4gLQkJICogZmxv
YXRpbmcgcmVmZXJlbmNlcyBvbiB0aGUgZmVuY2VzL3JlcXVlc3RzLgo+IC0JCSAqLwo+IC0JCXBy
dW5lX2ZlbmNlcyA9IGNvdW50ICYmIHRpbWVvdXQgPj0gMDsKPiAtCX0gZWxzZSB7Cj4gLQkJZXhj
bCA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKHJlc3YpOwo+ICsJZG1hX3Jlc3ZfaXRlcl9i
ZWdpbigmY3Vyc29yLCByZXN2LCBmbGFncyAmIEk5MTVfV0FJVF9BTEwpOwo+ICsJZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPiArCQl0aW1lb3V0ID0g
aTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2UoZmVuY2UsIGZsYWdzLCB0aW1lb3V0KTsKPiArCQlp
ZiAodGltZW91dCA8IDApCj4gKwkJCWJyZWFrOwo+ICAJfQo+IC0KPiAtCWlmIChleGNsICYmIHRp
bWVvdXQgPj0gMCkKPiAtCQl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2UoZXhj
bCwgZmxhZ3MsIHRpbWVvdXQpOwo+IC0KPiAtCWRtYV9mZW5jZV9wdXQoZXhjbCk7Cj4gKwlkbWFf
cmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPiAgCj4gIAkvKgo+ICAJICogT3Bwb3J0dW5pc3RpY2Fs
bHkgcHJ1bmUgdGhlIGZlbmNlcyBpZmYgd2Uga25vdyB0aGV5IGhhdmUgKmFsbCogYmVlbgo+ICAJ
ICogc2lnbmFsZWQuCj4gIAkgKi8KPiAtCWlmIChwcnVuZV9mZW5jZXMpCj4gKwlpZiAodGltZW91
dCA+IDApCj4gIAkJZG1hX3Jlc3ZfcHJ1bmUocmVzdik7Cj4gIAo+ICAJcmV0dXJuIHRpbWVvdXQ7
CgpXaGVuIHJlcGx5aW5nIHRvIHR2cnRrbyBhYm91dCBjb3JyZWN0bmVzcyBvZiB0aGUgY29udmVy
c2lvbiwgSSBqdXN0IG5vdyBub3RpY2VkIGEgbG9naWMgYnVnIGhlcmUsIHRoZSBzYW1lIGxvZ2lj
IGJ1ZyBhbHNvIGFmZmVjdHMgZG1hX3Jlc3Zfd2FpdF90aW1lb3V0LgoKbG9uZyBkbWFfcmVzdl93
YWl0X3RpbWVvdXQoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50
ciwKCQkJICAgdW5zaWduZWQgbG9uZyB0aW1lb3V0KQp7Cglsb25nIHJldCA9IHRpbWVvdXQgPyB0
aW1lb3V0IDogMTsKCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOwoKCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB3YWl0X2FsbCk7
CglkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewoKCQly
ZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOwoJCWlmIChyZXQg
PD0gMCkgewoJCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKCQkJcmV0dXJuIHJldDsKCQl9
Cgl9CglkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKCglyZXR1cm4gcmV0Owp9CgpJdCBmYWls
cyB0byBoYW5kbGUgdGhlIGNhc2UgY29ycmVjdGx5IHdoZW4gdGltZW91dCA9IDAsIEkgdGhpbmsg
dGhlIG9yaWdpbmFsIGNvZGUgcHJvYmFibHkgZGlkLgpkbWFfZmVuY2Vfd2FpdF90aW1lb3V0IHNo
b3VsZCBiZSBjYWxsZWQgd2l0aCB0aW1lb3V0ID0gMCBleHBsaWNpdGx5LgoKRml4ZWQgY29kZSBm
b3IgaW5uZXIgbG9vcDoKcmV0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwgaW50ciwg
dGltZW91dCk7CmlmIChyZXQgPD0gMCkgYnJlYWs7CmlmICh0aW1lb3V0KSB0aW1lb3V0ID0gcmV0
OwoKVGhpcyBidWcgYWxzbyBhZmZlY3RzIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9u
LCBzbyB0aGUgd2hvbGUgc2VyaWVzIG1pZ2h0IG5lZWQgdG8gYmUKcmVzcGlubmVkLCBvciBhdCBs
ZWFzdCBjaGVja2VkLCBpZiBtb3JlIHdhaXQgY29udmVyc2lvbnMgYXJlIGFmZmVjdGVkLgoKfk1h
YXJ0ZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
