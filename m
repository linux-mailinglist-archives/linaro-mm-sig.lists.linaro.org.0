Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E88F849E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 12:44:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2F87617DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 10:44:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A9063617F1; Wed,  7 Aug 2019 10:44:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD5F5617ED;
	Wed,  7 Aug 2019 10:43:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A9A5360795
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 10:43:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9E518617ED; Wed,  7 Aug 2019 10:43:48 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 81CFE60795
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 10:43:47 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n9so90967766wru.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Aug 2019 03:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=T86OWknBIj0SbHQKVsDCCT/XUegLJvpmZp+mGYDEZZY=;
 b=aLYohwAMa8UqgxWK/nkL5hcnFstPXqlfLu7LQRpkrDUHncaYquGcx7Mk1HT2FLMPWw
 7IlC8qyoNSBVeg8IO25f6/iSfswsGXGNgvS1BoTls3nlX7b/uNfHwMFBdOBS+jS4wsdC
 7H/Xs8GprsnnAzeehVhpAZ2tw1+Bzg4DKt1O33ZhUFk94+9hRqDGFYLbjwM0gmE3slBM
 x6gZB4iJSxUesvBvIpZ6HLpk63ihl6hlTPMG0nJrwj8/J2i6/wMP4bhMKgEzbBuEaTFV
 oDvGz9Kl7RBPOSTJal//EMn/BAnggfmnwJphHZbTl6iD+vadNeE+wBflX/BRYF5cGsD1
 vx2A==
X-Gm-Message-State: APjAAAXvpjFhYRPtigWQn7sWcmEEC/ScLx345dqJcwom7lD8mSogXA9P
 sirOlY1Jh8THY4P65A97RQ4bgye1
X-Google-Smtp-Source: APXvYqx2YmWQ9+Xz9DzzGMJ7RLS3dhNl8eVGEeDsNrmaXTkzkJHYxQZEoglDHJDZs5szwOfA6mNDBg==
X-Received: by 2002:a5d:6650:: with SMTP id f16mr10353897wrw.89.1565174626508; 
 Wed, 07 Aug 2019 03:43:46 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id i18sm120145328wrp.91.2019.08.07.03.43.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 03:43:45 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-2-christian.koenig@amd.com>
 <156511836757.6198.137641870638609300@skylake-alporthouse-com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <391322c9-b55c-a032-84c8-79a15277ed49@gmail.com>
Date: Wed, 7 Aug 2019 12:43:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156511836757.6198.137641870638609300@skylake-alporthouse-com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/8] dma-buf: fix shared fence list
 handling in reservation_object_copy_fences
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDYuMDguMTkgdW0gMjE6MDYgc2NocmllYiBDaHJpcyBXaWxzb246Cj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDE5LTA4LTA2IDE2OjAxOjI4KQo+PiBBZGQgc29tZSBoZWxwZXJzIHRv
IGNvcnJlY3RseSBhbGxvY2F0ZS9mcmVlIHJlc2VydmF0aW9uX29iamVjdF9saXN0cy4KPj4KPj4g
T3RoZXJ3aXNlIHdlIG1pZ2h0IGZvcmdldCB0byBkcm9wIGRtYV9mZW5jZSByZWZlcmVuY2VzIG9u
IGxpc3QgZGVzdHJ1Y3Rpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9kbWEtYnVmL3Jl
c2VydmF0aW9uLmMgfCA2NSArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQo+PiAg
IDEgZmlsZSBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jIGIvZHJpdmVycy9kbWEt
YnVmL3Jlc2VydmF0aW9uLmMKPj4gaW5kZXggZDU5MjA3Y2E3MmQyLi5jMGJhMDU5MzZhYjYgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCj4+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCj4+IEBAIC01NSw2ICs1NSw0NyBAQCBFWFBPUlRfU1lN
Qk9MKHJlc2VydmF0aW9uX3NlcWNvdW50X2NsYXNzKTsKPj4gICBjb25zdCBjaGFyIHJlc2VydmF0
aW9uX3NlcWNvdW50X3N0cmluZ1tdID0gInJlc2VydmF0aW9uX3NlcWNvdW50IjsKPj4gICBFWFBP
UlRfU1lNQk9MKHJlc2VydmF0aW9uX3NlcWNvdW50X3N0cmluZyk7Cj4+ICAgCj4+ICsvKioKPj4g
KyAqIHJlc2VydmF0aW9uX29iamVjdF9saXN0X2FsbG9jIC0gYWxsb2NhdGUgZmVuY2UgbGlzdAo+
PiArICogQHNoYXJlZF9tYXg6IG51bWJlciBvZiBmZW5jZXMgd2UgbmVlZCBzcGFjZSBmb3IKPj4g
KyAqCj4+ICsgKiBBbGxvY2F0ZSBhIG5ldyByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCBhbmQgbWFr
ZSBzdXJlIHRvIGNvcnJlY3RseSBpbml0aWFsaXplCj4+ICsgKiBzaGFyZWRfbWF4Lgo+PiArICov
Cj4+ICtzdGF0aWMgc3RydWN0IHJlc2VydmF0aW9uX29iamVjdF9saXN0ICoKPj4gK3Jlc2VydmF0
aW9uX29iamVjdF9saXN0X2FsbG9jKHVuc2lnbmVkIGludCBzaGFyZWRfbWF4KQo+PiArewo+PiAr
ICAgICAgIHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqbGlzdDsKPj4gKwo+PiArICAg
ICAgIGxpc3QgPSBrbWFsbG9jKG9mZnNldG9mKHR5cGVvZigqbGlzdCksIHNoYXJlZFtzaGFyZWRf
bWF4XSksIEdGUF9LRVJORUwpOwo+PiArICAgICAgIGlmICghbGlzdCkKPj4gKyAgICAgICAgICAg
ICAgIHJldHVybiBOVUxMOwo+PiArCj4+ICsgICAgICAgbGlzdC0+c2hhcmVkX21heCA9IChrc2l6
ZShsaXN0KSAtIG9mZnNldG9mKHR5cGVvZigqbGlzdCksIHNoYXJlZCkpIC8KPj4gKyAgICAgICAg
ICAgICAgIHNpemVvZigqbGlzdC0+c2hhcmVkKTsKPj4gKwo+PiArICAgICAgIHJldHVybiBsaXN0
Owo+PiArfQo+PiArCj4+ICsvKioKPj4gKyAqIHJlc2VydmF0aW9uX29iamVjdF9saXN0X2ZyZWUg
LSBmcmVlIGZlbmNlIGxpc3QKPj4gKyAqIEBsaXN0OiBsaXN0IHRvIGZyZWUKPj4gKyAqCj4+ICsg
KiBGcmVlIGEgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgYW5kIG1ha2Ugc3VyZSB0byBkcm9wIGFs
bCByZWZlcmVuY2VzLgo+PiArICovCj4+ICtzdGF0aWMgdm9pZCByZXNlcnZhdGlvbl9vYmplY3Rf
bGlzdF9mcmVlKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqbGlzdCkKPj4gK3sKPj4g
KyAgICAgICB1bnNpZ25lZCBpbnQgaTsKPj4gKwo+PiArICAgICAgIGlmICghbGlzdCkKPj4gKyAg
ICAgICAgICAgICAgIHJldHVybjsKPj4gKwo+PiArICAgICAgIGZvciAoaSA9IDA7IGkgPCBsaXN0
LT5zaGFyZWRfY291bnQ7ICsraSkKPj4gKyAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQocmN1
X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChsaXN0LT5zaGFyZWRbaV0sIHRydWUpKTsKPj4gKwo+PiAr
ICAgICAgIGtmcmVlX3JjdShsaXN0LCByY3UpOwo+IFNvIDIgb3V0IG9mIDMgcGF0aHMgZG9uJ3Qg
bmVlZCBhbm90aGVyIFJDVSBncmFjZSBwZXJpb2QgYmVmb3JlIGZyZWVpbmcuCj4gQWN0dWFsbHks
IHRoYXQgbGFjayBvZiBSQ1UgaW5zaWRlIHJlc2VydmF0aW9uX29iamVjdF9maW5pIGhhcyBjYXVn
aHQgbWUKPiBieSBzdXJwcmlzZSBiZWZvcmUuIE5vdCBzdXJlIGlmIHRoYXQncyB3b3J0aCB0cmVh
dGluZyBhcyBhbnl0aGluZyBvdGhlcgo+IHRoYW4gbXkgb3duIGJ1Zy4uLiBCdXQgaWYgd2UgYWNj
ZXB0IGl0IGlzIHdvcnRoIHByZXZlbnRpbmcgaGVyZSB0aGVuIHRoZQo+IG9ubHkgb2RkIG9uZSBv
dXQgaXMgb24gYSByZXNlcnZhdGlvbl9vYmplY3RfY29weV9mZW5jZXMoKSBlcnJvciBwYXRoLAo+
IHdoZXJlIHRoZSBleHRyYSBkZWxheSBzaG91bGRuJ3QgYmUgYW4gaXNzdWUuCj4KPiBTbyB0byBk
b3VibGUtUkNVIGRlZmVyIG9uIHJlc2VydmF0aW9uX29iamVjdF9maW5pKCkgb3Igbm90PwoKWWVh
aCwgSSB0aGluayBpbiB0aGUgX2ZpbmkgcGF0aCB1c2luZyBrZnJlZSBtaWdodCBiZSBsZWdhbCBi
ZWNhdXNlIApub2JvZHkgZWxzZSBzaG91bGQgaGF2ZSBhbiBleHRyYSByZWZlcmVuY2UgdG8gdGhl
IG9iamVjdC4KCkJ1dCB0aGUga2V5IHBvaW50IGlzIEkgZG9uJ3QgdGhpbmsgYW4gZXh0cmEgZ3Jh
Y2UgcGVyaW9kIHdvdWxkIGh1cnQgdXMgCmluIGFueSB3YXksCkNocmlzdGlhbi4KCj4KPiBGb3Ig
dGhlIHJlc3Qgb2YgdGhlIG1lY2hhbmljYWwgY2hhbmdlcywKPiBSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLUNocmlzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
