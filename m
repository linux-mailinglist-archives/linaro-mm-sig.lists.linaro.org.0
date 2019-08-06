Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E7C8395B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 21:06:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A332F617CB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 19:06:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 96267617D1; Tue,  6 Aug 2019 19:06:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49503617C3;
	Tue,  6 Aug 2019 19:06:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A62B4617B0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:06:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 99EC7617C3; Tue,  6 Aug 2019 19:06:14 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 63551617B0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:06:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17909663-1500050 for multiple; Tue, 06 Aug 2019 20:06:10 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-2-christian.koenig@amd.com>
In-Reply-To: <20190806150134.104222-2-christian.koenig@amd.com>
Message-ID: <156511836757.6198.137641870638609300@skylake-alporthouse-com>
Date: Tue, 06 Aug 2019 20:06:07 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/8] dma-buf: fix shared fence list
 handling in reservation_object_copy_fences
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA2IDE2OjAxOjI4KQo+IEFkZCBzb21l
IGhlbHBlcnMgdG8gY29ycmVjdGx5IGFsbG9jYXRlL2ZyZWUgcmVzZXJ2YXRpb25fb2JqZWN0X2xp
c3RzLgo+IAo+IE90aGVyd2lzZSB3ZSBtaWdodCBmb3JnZXQgdG8gZHJvcCBkbWFfZmVuY2UgcmVm
ZXJlbmNlcyBvbiBsaXN0IGRlc3RydWN0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kbWEt
YnVmL3Jlc2VydmF0aW9uLmMgfCA2NSArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jIGIvZHJpdmVycy9k
bWEtYnVmL3Jlc2VydmF0aW9uLmMKPiBpbmRleCBkNTkyMDdjYTcyZDIuLmMwYmEwNTkzNmFiNiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYwo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCj4gQEAgLTU1LDYgKzU1LDQ3IEBAIEVYUE9SVF9TWU1C
T0wocmVzZXJ2YXRpb25fc2VxY291bnRfY2xhc3MpOwo+ICBjb25zdCBjaGFyIHJlc2VydmF0aW9u
X3NlcWNvdW50X3N0cmluZ1tdID0gInJlc2VydmF0aW9uX3NlcWNvdW50IjsKPiAgRVhQT1JUX1NZ
TUJPTChyZXNlcnZhdGlvbl9zZXFjb3VudF9zdHJpbmcpOwo+ICAKPiArLyoqCj4gKyAqIHJlc2Vy
dmF0aW9uX29iamVjdF9saXN0X2FsbG9jIC0gYWxsb2NhdGUgZmVuY2UgbGlzdAo+ICsgKiBAc2hh
cmVkX21heDogbnVtYmVyIG9mIGZlbmNlcyB3ZSBuZWVkIHNwYWNlIGZvcgo+ICsgKgo+ICsgKiBB
bGxvY2F0ZSBhIG5ldyByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCBhbmQgbWFrZSBzdXJlIHRvIGNv
cnJlY3RseSBpbml0aWFsaXplCj4gKyAqIHNoYXJlZF9tYXguCj4gKyAqLwo+ICtzdGF0aWMgc3Ry
dWN0IHJlc2VydmF0aW9uX29iamVjdF9saXN0ICoKPiArcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3Rf
YWxsb2ModW5zaWduZWQgaW50IHNoYXJlZF9tYXgpCj4gK3sKPiArICAgICAgIHN0cnVjdCByZXNl
cnZhdGlvbl9vYmplY3RfbGlzdCAqbGlzdDsKPiArCj4gKyAgICAgICBsaXN0ID0ga21hbGxvYyhv
ZmZzZXRvZih0eXBlb2YoKmxpc3QpLCBzaGFyZWRbc2hhcmVkX21heF0pLCBHRlBfS0VSTkVMKTsK
PiArICAgICAgIGlmICghbGlzdCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gKwo+
ICsgICAgICAgbGlzdC0+c2hhcmVkX21heCA9IChrc2l6ZShsaXN0KSAtIG9mZnNldG9mKHR5cGVv
ZigqbGlzdCksIHNoYXJlZCkpIC8KPiArICAgICAgICAgICAgICAgc2l6ZW9mKCpsaXN0LT5zaGFy
ZWQpOwo+ICsKPiArICAgICAgIHJldHVybiBsaXN0Owo+ICt9Cj4gKwo+ICsvKioKPiArICogcmVz
ZXJ2YXRpb25fb2JqZWN0X2xpc3RfZnJlZSAtIGZyZWUgZmVuY2UgbGlzdAo+ICsgKiBAbGlzdDog
bGlzdCB0byBmcmVlCj4gKyAqCj4gKyAqIEZyZWUgYSByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCBh
bmQgbWFrZSBzdXJlIHRvIGRyb3AgYWxsIHJlZmVyZW5jZXMuCj4gKyAqLwo+ICtzdGF0aWMgdm9p
ZCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdF9mcmVlKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3Rf
bGlzdCAqbGlzdCkKPiArewo+ICsgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gKwo+ICsgICAgICAg
aWYgKCFsaXN0KQo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgZm9yIChp
ID0gMDsgaSA8IGxpc3QtPnNoYXJlZF9jb3VudDsgKytpKQo+ICsgICAgICAgICAgICAgICBkbWFf
ZmVuY2VfcHV0KHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQobGlzdC0+c2hhcmVkW2ldLCB0cnVl
KSk7Cj4gKwo+ICsgICAgICAga2ZyZWVfcmN1KGxpc3QsIHJjdSk7CgpTbyAyIG91dCBvZiAzIHBh
dGhzIGRvbid0IG5lZWQgYW5vdGhlciBSQ1UgZ3JhY2UgcGVyaW9kIGJlZm9yZSBmcmVlaW5nLgpB
Y3R1YWxseSwgdGhhdCBsYWNrIG9mIFJDVSBpbnNpZGUgcmVzZXJ2YXRpb25fb2JqZWN0X2Zpbmkg
aGFzIGNhdWdodCBtZQpieSBzdXJwcmlzZSBiZWZvcmUuIE5vdCBzdXJlIGlmIHRoYXQncyB3b3J0
aCB0cmVhdGluZyBhcyBhbnl0aGluZyBvdGhlcgp0aGFuIG15IG93biBidWcuLi4gQnV0IGlmIHdl
IGFjY2VwdCBpdCBpcyB3b3J0aCBwcmV2ZW50aW5nIGhlcmUgdGhlbiB0aGUKb25seSBvZGQgb25l
IG91dCBpcyBvbiBhIHJlc2VydmF0aW9uX29iamVjdF9jb3B5X2ZlbmNlcygpIGVycm9yIHBhdGgs
CndoZXJlIHRoZSBleHRyYSBkZWxheSBzaG91bGRuJ3QgYmUgYW4gaXNzdWUuCgpTbyB0byBkb3Vi
bGUtUkNVIGRlZmVyIG9uIHJlc2VydmF0aW9uX29iamVjdF9maW5pKCkgb3Igbm90PwoKRm9yIHRo
ZSByZXN0IG9mIHRoZSBtZWNoYW5pY2FsIGNoYW5nZXMsClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
