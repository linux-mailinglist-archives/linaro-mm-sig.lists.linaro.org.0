Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BA04130D1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 11:42:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 999C060F2F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 09:42:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2F34C60F11; Tue, 21 Sep 2021 09:42:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E39760F2F;
	Tue, 21 Sep 2021 09:41:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ADE7060C15
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 09:41:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9941E60F2F; Tue, 21 Sep 2021 09:41:57 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 8D1F360C15
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 09:41:55 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id i23so37277506wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 02:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=lhKy8aw3qz18WoJCn9BMq8t8vFOczTyYGa6bT8vvq40=;
 b=BmHd6yMMPHdEgnvHlRJtatT9HbSmrNtHG/X/GfMCHnmVWusFjkEtaNZpFD8t1aPtky
 iKuYgZHlA3+iGCUFN/VRPiafTrtsMFY1UFeFUoDHjxjSeoH98JXblO7cTfRr4LFhyki3
 KBc/78souy9wsXqzT4kE0T5HPHQtfywc+voR9i1oP50QPrvpyea53Vzn+2cJButAuitw
 snfglU4bZraTBIGW37zZayAFHbSmltE3zRbaUFai7O3UvVTTqoBqY7Psr61tCnmcaeg9
 8UEVaAUcynqDW4TWU5ryOH9L3lGXAnGQHi3wgFMirbU78Fbh8xSnlSDdkQHztyO0b2Yj
 WhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=lhKy8aw3qz18WoJCn9BMq8t8vFOczTyYGa6bT8vvq40=;
 b=FFukEcf8s6oGiUFvhz71iPrtHEU7kUQWhqNnupq3Rt7drG3saG8arTeUw158kXDmAa
 1C84QAlDkFjUxqGpSnqWdijY+ATs0cLItcngzbB6z5A2Co0FviMXID+r0lg5bXTihOLg
 hAxMkFwoBjaUXd4IqRCMo/QJJpde/QK7JA4qQx2m/RTjTVoVa/2UOxvFaRWe29fiFxSQ
 ICN57DRrTLezvQ7F4ASdZpzSVBXZn6R1W8mvtuMOHGuE20JCrAINEtJ8awQDrNHe9hzB
 NMFQmI+spk2LhRuUFwOdtgOt0OweoznJRcGnMnvLuRAtbzpwlO2qTmOwcNa+3+bLr+he
 O4Og==
X-Gm-Message-State: AOAM533q+f++hXpYGem9C6C3Ojh6eIiWc8s6Q6ih+XahGCeIsWp8qCqK
 TzSen01oqf1dTlOS1/Js+dY=
X-Google-Smtp-Source: ABdhPJx9nQdVuGGy9wMdElYgZLnuNTs32BWOoQ8xeJsHeWKaP1XN12OLjWgPt9yZUC6aBjhEO9VgxA==
X-Received: by 2002:a7b:c112:: with SMTP id w18mr3563637wmi.86.1632217314584; 
 Tue, 21 Sep 2021 02:41:54 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:9e25:63a7:d115:3eab?
 ([2a02:908:1252:fb60:9e25:63a7:d115:3eab])
 by smtp.gmail.com with ESMTPSA id n186sm2168506wme.31.2021.09.21.02.41.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Sep 2021 02:41:53 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-14-christian.koenig@amd.com>
 <6fbaca09-ec51-c44e-708c-334ef8be8595@linux.intel.com>
 <368e8495-f4de-cbb2-3584-e022a5937885@gmail.com>
 <563bb7c3-f956-212d-6085-b1b88292887c@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <64b6a924-be38-0ed0-da92-86296702f71c@gmail.com>
Date: Tue, 21 Sep 2021 11:41:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <563bb7c3-f956-212d-6085-b1b88292887c@linux.intel.com>
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

QW0gMjAuMDkuMjEgdW0gMTI6MzMgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPiBPbiAyMC8wOS8y
MDIxIDExOjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+PiBBbSAyMC4wOS4yMSB1bSAxMDo0
NSBzY2hyaWViIFR2cnRrbyBVcnN1bGluOgo+Pj4KPj4+IE9uIDE3LzA5LzIwMjEgMTM6MzUsIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4gVGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBz
aW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4Cj4+Pj4gcmV0cnkgbG9naWMgaXMgbm93IGhhbmRsZWQg
ZWxzZSB3aGVyZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+PiAtLS0KPj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMzIgCj4+Pj4gKysrKysrKystLS0tLS0tLS0tLS0t
LS0tCj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9u
cygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9idXN5LmMgCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVz
eS5jCj4+Pj4gaW5kZXggNjIzNGUxNzI1OWMxLi5iMWNiN2JhNjg4ZGEgMTAwNjQ0Cj4+Pj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+Pj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKPj4+PiBAQCAtODIsOCArODIs
OCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgCj4+
Pj4gKmRhdGEsCj4+Pj4gwqAgewo+Pj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9i
dXN5ICphcmdzID0gZGF0YTsKPj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmo7Cj4+Pj4gLcKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlzdDsKPj4+PiAt
wqDCoMKgIHVuc2lnbmVkIGludCBzZXE7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRl
ciBjdXJzb3I7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPj4+PiDCoMKg
wqDCoMKgIGludCBlcnI7Cj4+Pj4gwqAgwqDCoMKgwqDCoCBlcnIgPSAtRU5PRU5UOwo+Pj4+IEBA
IC0xMDksMjcgKzEwOSwxNyBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsIAo+Pj4+IHZvaWQgKmRhdGEsCj4+Pj4gwqDCoMKgwqDCoMKgICogdG8gcmVwb3J0IHRo
ZSBvdmVyYWxsIGJ1c3luZXNzLiBUaGlzIGlzIHdoYXQgdGhlIAo+Pj4+IHdhaXQtaW9jdGwgZG9l
cy4KPj4+PiDCoMKgwqDCoMKgwqAgKgo+Pj4+IMKgwqDCoMKgwqDCoCAqLwo+Pj4+IC1yZXRyeToK
Pj4+PiAtwqDCoMKgIHNlcSA9IHJhd19yZWFkX3NlcWNvdW50KCZvYmotPmJhc2UucmVzdi0+c2Vx
KTsKPj4+PiAtCj4+Pj4gLcKgwqDCoCAvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0
byB0aGUgUkVBRCAqYW5kKiBXUklURSAKPj4+PiBlbmdpbmUgKi8KPj4+PiAtwqDCoMKgIGFyZ3Mt
PmJ1c3kgPSAKPj4+PiBidXN5X2NoZWNrX3dyaXRlcihkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+
YmFzZS5yZXN2KSk7Cj4+Pj4gLQo+Pj4+IC3CoMKgwqAgLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5j
ZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+Pj4+IC3CoMKgwqAgbGlzdCA9IGRtYV9yZXN2
X3NoYXJlZF9saXN0KG9iai0+YmFzZS5yZXN2KTsKPj4+PiAtwqDCoMKgIGlmIChsaXN0KSB7Cj4+
Pj4gLcKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBzaGFyZWRfY291bnQgPSBsaXN0LT5zaGFy
ZWRfY291bnQsIGk7Cj4+Pj4gLQo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwg
c2hhcmVkX2NvdW50OyArK2kpIHsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSA9Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
Y3VfZGVyZWZlcmVuY2UobGlzdC0+c2hhcmVkW2ldKTsKPj4+PiAtCj4+Pj4gK8KgwqDCoCBhcmdz
LT5idXN5ID0gZmFsc2U7Cj4+Pj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3Is
IG9iai0+YmFzZS5yZXN2LCB0cnVlKTsKPj4+PiArwqDCoMKgIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Cj4+Pgo+Pj4gWW91IGRpZCBub3QgYWdyZWUg
d2l0aCBteSBzdWdnZXN0aW9uIHRvIHJlc2V0IGFyZ3MtPmJ1c3kgb24gcmVzdGFydCAKPj4+IGFu
ZCBzbyBwcmVzZXJ2ZSBjdXJyZW50IGJlaGF2aW91cj8KPj4KPj4gTm8sIEkgd2FudCB0byBrZWVw
IHRoZSByZXN0YXJ0IGJlaGF2aW9yIGludGVybmFsbHkgdG8gdGhlIGRtYV9yZXN2IAo+PiBvYmpl
Y3QgYW5kIGFzIGZhciBhcyBJIGNhbiBzZWUgaXQgc2hvdWxkIG5vdCBtYWtlIGEgZGlmZmVyZW5j
ZSBoZXJlLgo+Cj4gVG8gYmUgY2xlYXIsIG9uIHBhcGVyIGRpZmZlcmVuY2UgYmV0d2VlbiBvbGQg
YW5kIG5ldyBpbXBsZW1lbnRhdGlvbiBpcyAKPiBpZiB0aGUgcmVzdGFydCBoYXBwZW5zIHdoaWxl
IHByb2Nlc3NpbmcgdGhlIHNoYXJlZCBmZW5jZXMuCj4KPiBPbGQgaW1wbGVtZW50YXRpb24gdW5j
b25kaXRpb25hbGx5IGdvZXMgdG8gImFyZ3MtPmJ1c3kgPQo+ID4+PiBidXN5X2NoZWNrX3dyaXRl
cihkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2KSk7IiBhbmQgc28gCj4gb3Zlcndy
aXRlcyB0aGUgc2V0IG9mIGZsYWdzIHJldHVybmVkIHRvIHVzZXJzcGFjZS4KPgo+IE5ldyBpbXBs
ZW1lbnRhdGlvbiBjYW4gbWVyZ2UgbmV3IHJlYWQgZmxhZ3MgdG8gdGhlIG9sZCBzZXQgb2YgZmxh
Z3MgCj4gYW5kIHNvIHJldHVybiBhIGNvbXBvc2l0aW9uIG9mIHBhc3QgYW5kIGN1cnJlbnQgZmVu
Y2VzLgo+Cj4gTWF5YmUgaXQgZG9lcyBub3QgbWF0dGVyIGh1Z2VseSBpbiB0aGlzIGNhc2UsIGRl
cGVuZHMgaWYgdXNlcnNwYWNlIAo+IHR5cGljYWxseSBqdXN0IHJlc3RhcnRzIHVudGlsIGZsYWdz
IGFyZSBjbGVhci4gQnV0IEkgYW0gbm90IHN1cmUuCj4KPiBPbiB0aGUgaGlnaGVyIGxldmVsIC0g
d2hhdCBkbyB5b3UgbWVhbiB3aXRoIHdhbnRpbmcgdG8ga2VlcCB0aGUgCj4gcmVzdGFydCBiZWhh
dmlvdXIgaW50ZXJuYWw/IE5vdCBwcm92aWRpbmcgaXRlcmF0b3JzIHVzZXJzIG1lYW5zIG9mIAo+
IGRldGVjdGluZyBpdD8gSSB0aGluayBpdCBoYXMgdG8gYmUgcHJvdmlkZWQuCgpPayBJIHdpbGwg
YWRqdXN0IHRoYXQgZm9yIG5vdyB0byBnZXQgdGhlIHBhdGNoIHNldCB1cHN0cmVhbS4gQnV0IGlu
IApnZW5lcmFsIHdoZW4gc29tZWJvZHkgb3V0c2lkZSBvZiB0aGUgZG1hX3Jlc3YgY29kZSBiYXNl
IGRlcGVuZHMgb24gdGhlIApyZXN0YXJ0IGJlaGF2aW9yIHRoZW4gdGhhdCdzIGEgYnVnIGluc2lk
ZSB0aGUgZGVzaWduIG9mIHRoYXQgY29kZS4KClRoZSBjYWxsZXJzIHNob3VsZCBvbmx5IGNhcmUg
YWJvdXQgd2hhdCB1bnNpZ25hbGVkIGZlbmNlcyBhcmUgaW5zaWRlIHRoZSAKZG1hX3Jlc3YgY29u
dGFpbmVyIGFuZCBpdCBzaG91bGRuJ3QgbWF0dGVyIGlmIHRob3NlIGZlbmNlcyBhcmUgcHJlc2Vu
dGVkIApvbmNlIG9yIG11bHRpcGxlIHRpbWVzIGJlY2F1c2Ugb2YgYSByZXNldC4uCgpXaGVuIHRo
aXMgbWFrZXMgYSBkaWZmZXJlbmNlIHdlIGhhdmUgYSBidWcgaW4gdGhlIGhhbmRsaW5nIGFuZCBz
aG91bGQgCnByb2JhYmx5IGNvbnNpZGVyIHRha2luZyB0aGUgZG1hX3Jlc3YubG9jayBpbnN0ZWFk
LgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+PiBSZWdh
cmRzLAo+PiBDaHJpc3RpYW4uCj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+Cj4+PiBUdnJ0a28KPj4+
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkbWFfcmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vy
c29yKSkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1
c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiAKPj4+PiBXUklURSBlbmdpbmUgKi8KPj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5ID0gYnVzeV9jaGVja193cml0ZXIoZmVu
Y2UpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19y
ZWFkZXIoZmVuY2UpOwo+Pj4+IC3CoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gwqDCoMKgwqDCoCB9Cj4+
Pj4gLQo+Pj4+IC3CoMKgwqAgaWYgKGFyZ3MtPmJ1c3kgJiYgcmVhZF9zZXFjb3VudF9yZXRyeSgm
b2JqLT5iYXNlLnJlc3YtPnNlcSwgc2VxKSkKPj4+PiAtwqDCoMKgwqDCoMKgwqAgZ290byByZXRy
eTsKPj4+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+Pj4+IMKgIMKgwqDC
oMKgwqAgZXJyID0gMDsKPj4+PiDCoCBvdXQ6Cj4+Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
