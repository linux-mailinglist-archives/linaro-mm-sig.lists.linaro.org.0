Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AFF41127B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 12:01:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AA0361016
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 10:01:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3D9416263A; Mon, 20 Sep 2021 10:01:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7E0460B3A;
	Mon, 20 Sep 2021 10:01:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C031660B3A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:01:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B928560E9C; Mon, 20 Sep 2021 10:01:06 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by lists.linaro.org (Postfix) with ESMTPS id 6403E60B3A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:01:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="210179605"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="210179605"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 03:01:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="473542972"
Received: from gbradyx-mobl2.ger.corp.intel.com (HELO [10.213.235.119])
 ([10.213.235.119])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 03:01:01 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-17-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e0954bdd-2183-f662-8192-c44f931c602b@linux.intel.com>
Date: Mon, 20 Sep 2021 11:00:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210917123513.1106-17-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 16/26] drm/i915: use new
 iterator in i915_gem_object_wait_reservation v2
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

Ck9uIDE3LzA5LzIwMjEgMTM6MzUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gU2ltcGxpZnlp
bmcgdGhlIGNvZGUgYSBiaXQuCj4gCj4gdjI6IGFkZCBtaXNzaW5nIHJjdSByZWFkIHVubG9jay4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5j
IHwgNTcgKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgNDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fd2FpdC5jCj4gaW5kZXggZjkwOWFhYTA5ZDljLi5lNDE2Y2Y1Mjg2MzUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKPiBAQCAtMzcsNTUgKzM3
LDI2IEBAIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBkbWFfcmVzdiAq
cmVzdiwKPiAgIAkJCQkgdW5zaWduZWQgaW50IGZsYWdzLAo+ICAgCQkJCSBsb25nIHRpbWVvdXQp
Cj4gICB7Cj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOwo+IC0JYm9vbCBwcnVuZV9mZW5jZXMg
PSBmYWxzZTsKPiAtCj4gLQlpZiAoZmxhZ3MgJiBJOTE1X1dBSVRfQUxMKSB7Cj4gLQkJc3RydWN0
IGRtYV9mZW5jZSAqKnNoYXJlZDsKPiAtCQl1bnNpZ25lZCBpbnQgY291bnQsIGk7Cj4gLQkJaW50
IHJldDsKPiAtCj4gLQkJcmV0ID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhyZXN2LCAmZXhjbCwgJmNv
dW50LCAmc2hhcmVkKTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0Owo+IC0KPiAtCQlm
b3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewo+IC0JCQl0aW1lb3V0ID0gaTkxNV9nZW1fb2Jq
ZWN0X3dhaXRfZmVuY2Uoc2hhcmVkW2ldLAo+IC0JCQkJCQkJICAgICBmbGFncywgdGltZW91dCk7
Cj4gLQkJCWlmICh0aW1lb3V0IDwgMCkKPiAtCQkJCWJyZWFrOwo+IC0KPiAtCQkJZG1hX2ZlbmNl
X3B1dChzaGFyZWRbaV0pOwo+IC0JCX0KPiAtCj4gLQkJZm9yICg7IGkgPCBjb3VudDsgaSsrKQo+
IC0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Cj4gLQkJa2ZyZWUoc2hhcmVkKTsKPiAtCj4g
LQkJLyoKPiAtCQkgKiBJZiBib3RoIHNoYXJlZCBmZW5jZXMgYW5kIGFuIGV4Y2x1c2l2ZSBmZW5j
ZSBleGlzdCwKPiAtCQkgKiB0aGVuIGJ5IGNvbnN0cnVjdGlvbiB0aGUgc2hhcmVkIGZlbmNlcyBt
dXN0IGJlIGxhdGVyCj4gLQkJICogdGhhbiB0aGUgZXhjbHVzaXZlIGZlbmNlLiBJZiB3ZSBzdWNj
ZXNzZnVsbHkgd2FpdCBmb3IKPiAtCQkgKiBhbGwgdGhlIHNoYXJlZCBmZW5jZXMsIHdlIGtub3cg
dGhhdCB0aGUgZXhjbHVzaXZlIGZlbmNlCj4gLQkJICogbXVzdCBhbGwgYmUgc2lnbmFsZWQuIElm
IGFsbCB0aGUgc2hhcmVkIGZlbmNlcyBhcmUKPiAtCQkgKiBzaWduYWxlZCwgd2UgY2FuIHBydW5l
IHRoZSBhcnJheSBhbmQgcmVjb3ZlciB0aGUKPiAtCQkgKiBmbG9hdGluZyByZWZlcmVuY2VzIG9u
IHRoZSBmZW5jZXMvcmVxdWVzdHMuCj4gLQkJICovCj4gLQkJcHJ1bmVfZmVuY2VzID0gY291bnQg
JiYgdGltZW91dCA+PSAwOwo+IC0JfSBlbHNlIHsKPiAtCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4
Y2xfdW5sb2NrZWQocmVzdik7Cj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4gKwlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPiArCj4gKwlyY3VfcmVhZF9sb2NrKCk7Cj4gKwlkbWFf
cmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIHJlc3YsIGZsYWdzICYgSTkxNV9XQUlUX0FMTCk7Cj4g
KwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+ICsJ
CXJjdV9yZWFkX3VubG9jaygpOwo+ICsJCXRpbWVvdXQgPSBpOTE1X2dlbV9vYmplY3Rfd2FpdF9m
ZW5jZShmZW5jZSwgZmxhZ3MsIHRpbWVvdXQpOwoKQ29udmVydGluZyB0aGlzIG9uZSBjb3VsZCBi
ZSBwcm9ibGVtYXRpYy4gSXQncyB0aGUgd2FpdCBpb2N0bCB3aGljaCB1c2VkIAp0byBncmFiIGFu
IGF0b21pYyBzbmFwc2hvdCBhbmQgd2FpdCBmb3IgdGhhdCByZW5kZXJpbmcgdG8gY29tcGxldGUu
IFdpdGggCnRoaXMgY2hhbmdlIEkgdGhpbmsgaXQgaGFzIHRoZSBwb3RlbnRpYWwgdG8gcnVuIGZv
cmV2ZXIga2VlcHMgY2F0Y2hpbmcgCm5ldyBhY3Rpdml0eSBhZ2FpbnN0IHRoZSBzYW1lIG9iamVj
dC4KCkkgYW0gbm90IHN1cmUgd2hldGhlciBvciBub3QgdGhlIGRpZmZlcmVuY2UgaXMgcmVsZXZh
bnQgZm9yIGhvdyAKdXNlcnNwYWNlIHVzZXMgaXQgYnV0IEkgdGhpbmsgbmVlZHMgZGlzY3Vzc2lv
bi4KCkhtIGFjdHVhbGx5IHRoZXJlIGFyZSBpbnRlcm5hbCBjYWxsZXJzIGFzIHdlbGwsIGFuZCBh
dCBsZWFzdCBzb21lIG9mIAp0aG9zZSBoYXZlIHRoZSBvYmplY3QgbG9ja2VkLiBXb3VsZCBhIHdp
ZGVyIHJlZmFjdG9yaW5nIHRvIHNlcGFyYXRlIAp0aG9zZSBpbnRvIGJ1Y2tldHMgKGxvY2tlZCB2
cyB1bmxvY2tlZCkgbWFrZSBzZW5zZT8KClJlZ2FyZHMsCgpUdnJ0a28KCgo+ICsJCXJjdV9yZWFk
X2xvY2soKTsKPiArCQlpZiAodGltZW91dCA8IDApCj4gKwkJCWJyZWFrOwo+ICAgCX0KPiAtCj4g
LQlpZiAoZXhjbCAmJiB0aW1lb3V0ID49IDApCj4gLQkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVj
dF93YWl0X2ZlbmNlKGV4Y2wsIGZsYWdzLCB0aW1lb3V0KTsKPiAtCj4gLQlkbWFfZmVuY2VfcHV0
KGV4Y2wpOwo+ICsJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4gKwlyY3VfcmVhZF91bmxv
Y2soKTsKPiAgIAo+ICAgCS8qCj4gICAJICogT3Bwb3J0dW5pc3RpY2FsbHkgcHJ1bmUgdGhlIGZl
bmNlcyBpZmYgd2Uga25vdyB0aGV5IGhhdmUgKmFsbCogYmVlbgo+ICAgCSAqIHNpZ25hbGVkLgo+
ICAgCSAqLwo+IC0JaWYgKHBydW5lX2ZlbmNlcykKPiArCWlmICh0aW1lb3V0ID4gMCkKPiAgIAkJ
ZG1hX3Jlc3ZfcHJ1bmUocmVzdik7Cj4gICAKPiAgIAlyZXR1cm4gdGltZW91dDsKPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
