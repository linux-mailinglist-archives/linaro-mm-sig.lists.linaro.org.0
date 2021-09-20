Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF6641114C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 10:46:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 216F863296
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 08:46:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DB49D63390; Mon, 20 Sep 2021 08:46:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9794960C2C;
	Mon, 20 Sep 2021 08:46:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 30C5360E9C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 08:46:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 24B8C61081; Mon, 20 Sep 2021 08:46:03 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by lists.linaro.org (Postfix) with ESMTPS id B56AD60E9C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 08:46:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="222739108"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="222739108"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:45:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="473492639"
Received: from gbradyx-mobl2.ger.corp.intel.com (HELO [10.213.235.119])
 ([10.213.235.119])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:45:58 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-15-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <93b93f00-7ad3-9ea3-e947-77297b4552c9@linux.intel.com>
Date: Mon, 20 Sep 2021 09:45:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210917123513.1106-15-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 14/26] drm/i915: use the new
 iterator in i915_sw_fence_await_reservation v3
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
bmcgdGhlIGNvZGUgYSBiaXQuCj4gCj4gdjI6IHVzZSBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSBp
bnN0ZWFkLCBhY2NvcmRpbmcgdG8gVHZydGtvIHRoZSBsb2NrIGlzCj4gICAgICBoZWxkIGhlcmUg
YW55d2F5Lgo+IHYzOiBiYWNrIHRvIHVzaW5nIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9j
a2VkLgoKSXQgZGlkIG5vdCB3b3JrIG91dCAtIHdoYXQgaGFwcGVuZWQ/CgpSZWdhcmRzLAoKVHZy
dGtvCgo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyB8
IDU3ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9z
d19mZW5jZS5jCj4gaW5kZXggYzU4OWE2ODFkYTc3Li43NjM1YjA0NzhlYTUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCj4gQEAgLTU3Miw1NiArNTcyLDI5IEBAIGludCBp
OTE1X3N3X2ZlbmNlX2F3YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5j
ZSwKPiAgIAkJCQkgICAgdW5zaWduZWQgbG9uZyB0aW1lb3V0LAo+ICAgCQkJCSAgICBnZnBfdCBn
ZnApCj4gICB7Cj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOwo+ICsJc3RydWN0IGRtYV9yZXN2
X2l0ZXIgY3Vyc29yOwo+ICsJc3RydWN0IGRtYV9mZW5jZSAqZjsKPiAgIAlpbnQgcmV0ID0gMCwg
cGVuZGluZzsKPiAgIAo+ICAgCWRlYnVnX2ZlbmNlX2Fzc2VydChmZW5jZSk7Cj4gICAJbWlnaHRf
c2xlZXBfaWYoZ2ZwZmxhZ3NfYWxsb3dfYmxvY2tpbmcoZ2ZwKSk7Cj4gICAKPiAtCWlmICh3cml0
ZSkgewo+IC0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7Cj4gLQkJdW5zaWduZWQgaW50IGNv
dW50LCBpOwo+IC0KPiAtCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKHJlc3YsICZleGNsLCAm
Y291bnQsICZzaGFyZWQpOwo+IC0JCWlmIChyZXQpCj4gLQkJCXJldHVybiByZXQ7Cj4gLQo+IC0J
CWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4gLQkJCWlmIChzaGFyZWRbaV0tPm9wcyA9
PSBleGNsdWRlKQo+IC0JCQkJY29udGludWU7Cj4gLQo+IC0JCQlwZW5kaW5nID0gaTkxNV9zd19m
ZW5jZV9hd2FpdF9kbWFfZmVuY2UoZmVuY2UsCj4gLQkJCQkJCQkJc2hhcmVkW2ldLAo+IC0JCQkJ
CQkJCXRpbWVvdXQsCj4gLQkJCQkJCQkJZ2ZwKTsKPiAtCQkJaWYgKHBlbmRpbmcgPCAwKSB7Cj4g
LQkJCQlyZXQgPSBwZW5kaW5nOwo+IC0JCQkJYnJlYWs7Cj4gLQkJCX0KPiAtCj4gLQkJCXJldCB8
PSBwZW5kaW5nOwo+IC0JCX0KPiAtCj4gLQkJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKyspCj4g
LQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPiAtCQlrZnJlZShzaGFyZWQpOwo+IC0JfSBl
bHNlIHsKPiAtCQlleGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQocmVzdik7Cj4gLQl9
Cj4gLQo+IC0JaWYgKHJldCA+PSAwICYmIGV4Y2wgJiYgZXhjbC0+b3BzICE9IGV4Y2x1ZGUpIHsK
PiAtCQlwZW5kaW5nID0gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoZmVuY2UsCj4gLQkJ
CQkJCQlleGNsLAo+IC0JCQkJCQkJdGltZW91dCwKPiArCXJjdV9yZWFkX2xvY2soKTsKPiArCWRt
YV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgcmVzdiwgd3JpdGUpOwo+ICsJZG1hX3Jlc3ZfZm9y
X2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZikgewo+ICsJCXJjdV9yZWFkX3VubG9jaygp
Owo+ICsJCXBlbmRpbmcgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZShmZW5jZSwgZiwg
dGltZW91dCwKPiAgIAkJCQkJCQlnZnApOwo+IC0JCWlmIChwZW5kaW5nIDwgMCkKPiArCQlyY3Vf
cmVhZF9sb2NrKCk7Cj4gKwkJaWYgKHBlbmRpbmcgPCAwKSB7Cj4gICAJCQlyZXQgPSBwZW5kaW5n
Owo+IC0JCWVsc2UKPiAtCQkJcmV0IHw9IHBlbmRpbmc7Cj4gLQl9Cj4gLQo+IC0JZG1hX2ZlbmNl
X3B1dChleGNsKTsKPiArCQkJYnJlYWs7Cj4gKwkJfQo+ICAgCj4gKwkJcmV0IHw9IHBlbmRpbmc7
Cj4gKwl9Cj4gKwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPiArCXJjdV9yZWFkX3VubG9j
aygpOwo+ICAgCXJldHVybiByZXQ7Cj4gICB9Cj4gICAKPiAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
