Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EE54112BD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 12:13:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C093461ECD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 10:13:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 98D7E61F45; Mon, 20 Sep 2021 10:13:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F7FB61016;
	Mon, 20 Sep 2021 10:13:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E2BE360C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:13:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DE81261016; Mon, 20 Sep 2021 10:13:46 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id ACEAC60C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:13:44 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t8so21004012wri.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 03:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Ijf8BnGoBReJLtthF3oociyimY+iDY1OqlO2QvejboY=;
 b=Sdr32UjiaBTNtRHHGYIY+toV7a1CRVt3k2GCdQ5p+wRqBziXgsCEf14miJvrVfmfa4
 8dN9n7FZV18YNiUqdGAOo1cFYVs0x5IZ52yFAoblW7M0S7CWNyHYACE+wz91ll50CP3L
 P14akjFNafFfAllxmDjcO4sh14Piz0TzWs0nQOKdublydqwC53nPA9cy0MSDG5TKKWoG
 TQaS1WkjFrMW27PgRFtN2pVQbIm701MgfyREbZvbliFlOA3R3zk9c1mhGl3HyU3zmo9X
 QaH+9iZ4iW1n71dk8QNSxGL5qSCO7lYaSyIJ6L56pKNqpd9m0hvab7Gq3Uq5xGZMTqSy
 5sag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Ijf8BnGoBReJLtthF3oociyimY+iDY1OqlO2QvejboY=;
 b=Fr12z7jQb1FdUEzQ0gzZfrncHkkqs9z196R+LpZc1mus2Wa5s061xRJNwZuPKFse2v
 YbMQ5G2h6AnN4nK4S2e8yUhgBaDQmyv3jKyOF8iFCatcXTF+qaUYJjaHd9y5hBrHYafB
 CMcnq8Kk3TZJSuP97dso1EK332i79wn0sGga5ypJVvFasBRdLbU+b+sVVytkm1c+iicp
 wcpvojVdIwsp652c76UzQCJ+eIbamVT9wPLttOALr/GV/V54Ecadh9kFHZSEUZZ+yitk
 JievsloSQEKD9kqmWy+bslBLoGqIs59+qMqHzcZwFgzyHIOR+deNgBib5pM1o6ukI29H
 GL3Q==
X-Gm-Message-State: AOAM532khABSNjAEHYXqqzBrjgw1B3qyuZFgU2qk+Cp3E901CObc/qFQ
 ++VDt/jn+0eg22ROLQK0uK8=
X-Google-Smtp-Source: ABdhPJxDEIj93yjMQea+LHs4FRqtqwAVoag8hA/rDb0lD5JZEwAo34hl2lIOUjmZXosR7OvYy3iMWA==
X-Received: by 2002:a1c:1b10:: with SMTP id b16mr23308889wmb.194.1632132823778; 
 Mon, 20 Sep 2021 03:13:43 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id c8sm8208615wru.30.2021.09.20.03.13.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Sep 2021 03:13:43 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-14-christian.koenig@amd.com>
 <6fbaca09-ec51-c44e-708c-334ef8be8595@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <368e8495-f4de-cbb2-3584-e022a5937885@gmail.com>
Date: Mon, 20 Sep 2021 12:13:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6fbaca09-ec51-c44e-708c-334ef8be8595@linux.intel.com>
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

QW0gMjAuMDkuMjEgdW0gMTA6NDUgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDE3LzA5
LzIwMjEgMTM6MzUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgbWFrZXMgdGhlIGZ1
bmN0aW9uIG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+PiByZXRyeSBsb2dpYyBpcyBu
b3cgaGFuZGxlZCBlbHNlIHdoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMzIgKysrKysrKystLS0tLS0tLS0tLS0tLS0t
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+PiBpbmRl
eCA2MjM0ZTE3MjU5YzEuLmIxY2I3YmE2ODhkYSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+IEBAIC04Miw4ICs4Miw4IEBAIGk5MTVfZ2VtX2J1c3lf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAKPj4gKmRhdGEsCj4+IMKgIHsKPj4g
wqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2J1c3kgKmFyZ3MgPSBkYXRhOwo+PiDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+IC3CoMKgwqAgc3RydWN0
IGRtYV9yZXN2X2xpc3QgKmxpc3Q7Cj4+IC3CoMKgwqAgdW5zaWduZWQgaW50IHNlcTsKPj4gK8Kg
wqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4+ICvCoMKgwqAgc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7Cj4+IMKgwqDCoMKgwqAgaW50IGVycjsKPj4gwqAgwqDCoMKgwqDCoCBlcnIg
PSAtRU5PRU5UOwo+PiBAQCAtMTA5LDI3ICsxMDksMTcgQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCAKPj4gdm9pZCAqZGF0YSwKPj4gwqDCoMKgwqDCoMKgICog
dG8gcmVwb3J0IHRoZSBvdmVyYWxsIGJ1c3luZXNzLiBUaGlzIGlzIHdoYXQgdGhlIHdhaXQtaW9j
dGwgCj4+IGRvZXMuCj4+IMKgwqDCoMKgwqDCoCAqCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiAtcmV0
cnk6Cj4+IC3CoMKgwqAgc2VxID0gcmF3X3JlYWRfc2VxY291bnQoJm9iai0+YmFzZS5yZXN2LT5z
ZXEpOwo+PiAtCj4+IC3CoMKgwqAgLyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8g
dGhlIFJFQUQgKmFuZCogV1JJVEUgZW5naW5lICovCj4+IC3CoMKgwqAgYXJncy0+YnVzeSA9IAo+
PiBidXN5X2NoZWNrX3dyaXRlcihkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2KSk7
Cj4+IC0KPj4gLcKgwqDCoCAvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBv
ZiBlbmdpbmVzICovCj4+IC3CoMKgwqAgbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iai0+
YmFzZS5yZXN2KTsKPj4gLcKgwqDCoCBpZiAobGlzdCkgewo+PiAtwqDCoMKgwqDCoMKgwqAgdW5z
aWduZWQgaW50IHNoYXJlZF9jb3VudCA9IGxpc3QtPnNoYXJlZF9jb3VudCwgaTsKPj4gLQo+PiAt
wqDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Cj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0KPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByY3VfZGVyZWZlcmVuY2UobGlzdC0+c2hhcmVkW2ld
KTsKPj4gLQo+PiArwqDCoMKgIGFyZ3MtPmJ1c3kgPSBmYWxzZTsKPj4gK8KgwqDCoCBkbWFfcmVz
dl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCB0cnVlKTsKPj4gK8KgwqDCoCBk
bWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+Cj4gWW91
IGRpZCBub3QgYWdyZWUgd2l0aCBteSBzdWdnZXN0aW9uIHRvIHJlc2V0IGFyZ3MtPmJ1c3kgb24g
cmVzdGFydCAKPiBhbmQgc28gcHJlc2VydmUgY3VycmVudCBiZWhhdmlvdXI/CgpObywgSSB3YW50
IHRvIGtlZXAgdGhlIHJlc3RhcnQgYmVoYXZpb3IgaW50ZXJuYWxseSB0byB0aGUgZG1hX3Jlc3Yg
Cm9iamVjdCBhbmQgYXMgZmFyIGFzIEkgY2FuIHNlZSBpdCBzaG91bGQgbm90IG1ha2UgYSBkaWZm
ZXJlbmNlIGhlcmUuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gUmVnYXJkcywKPgo+IFR2cnRr
bwo+Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1
cnNvcikpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVz
aXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIAo+PiBlbmdpbmUgKi8KPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgYXJncy0+YnVzeSA9IGJ1c3lfY2hlY2tfd3JpdGVyKGZlbmNlKTsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGVsc2UKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogVHJh
bnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNl
KTsKPj4gLcKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCB9Cj4+IC0KPj4gLcKgwqDCoCBp
ZiAoYXJncy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPmJhc2UucmVzdi0+c2Vx
LCBzZXEpKQo+PiAtwqDCoMKgwqDCoMKgwqAgZ290byByZXRyeTsKPj4gK8KgwqDCoCBkbWFfcmVz
dl9pdGVyX2VuZCgmY3Vyc29yKTsKPj4gwqAgwqDCoMKgwqDCoCBlcnIgPSAwOwo+PiDCoCBvdXQ6
Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
