Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 190D0414BFE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 16:31:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E5A0618D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 14:31:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 00227618C3; Wed, 22 Sep 2021 14:31:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F39061793;
	Wed, 22 Sep 2021 14:31:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 39D4A60A81
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 14:31:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3155161793; Wed, 22 Sep 2021 14:31:18 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 2433460A81
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 14:31:16 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id t18so7596775wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 07:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=6+ziFqfFy8tUj5gzWw86pYLxOc595Xo/AjkfAmBa908=;
 b=K67bSyxTp3ZCWesKPb97kyJAm3vnTIN17UBOtqFBWEV5azCeYOHHHhVlux5V0oR2j6
 HbAAnVqAcX6k0GQXAe5oPRd8d5+YvMlK0QtRdtTWHmWMvGJj0oZOS6kpO881yrpPs12X
 Q0zPhcxDkxPlw5lB00MtlRIzjlZBiJOkVpRNuIF2AHXtAODNvmqKq1Frvy4eZ/aczBKh
 lEH1ETXwtO0jQg8eSmSXI7OBtNMR/NCe7T3e48Jqf8ztmSWvqZVAN1rVR4BYkNQ1bHwg
 aoPaFCPYECdPKrFGfEd4rH7FNOA33hx051yI8kMWhTT54PKAOr9XADHjgletpWicG3I8
 IQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6+ziFqfFy8tUj5gzWw86pYLxOc595Xo/AjkfAmBa908=;
 b=FOP6CgKXYjujMhvOq1jyURZaWV0COdPsiHj0ann4jMzFlE8qQj1AyeDHeoKLoXZM3W
 YdcjMcxjrUOYA+IC3h7TtGMM1NDSa21k3LNVuXmNIOyi522/R+y28IBE1kL6q4rOud8i
 pua2zLzdTK4APvOv6pl7bPk4ugQeKcijWY4LHjSk5IBAk9iP9P7Lj4X9U/swp0AwJhvE
 XKH+hXST0zockAxJ4EhEtdRfHzkZjNaWaBO48743pCuNC31slvx/BfWkM+jXUPB7xjI8
 MNxngoE0GVvKu1WVlz2wJgFMLorUlGUS09NSZyxbqA3l+OiRD9OhRT/qDjZVHBOs50/W
 iicw==
X-Gm-Message-State: AOAM533dMzCjZEfdHXuHkBYmUxjrRPwmo63Fpc+BbCN7PgJl+WBWQuRG
 Ahle2DE9ry5EGZ+cdI6Pm0I=
X-Google-Smtp-Source: ABdhPJx+1fhNG4+4ei6QAwpCbb/RRpqC5TGiPZYBRWYQUFK2+/82eGkOvanY1qn8p5mJxdbPjVmGEg==
X-Received: by 2002:adf:d21c:: with SMTP id j28mr1660105wrh.43.1632321073308; 
 Wed, 22 Sep 2021 07:31:13 -0700 (PDT)
Received: from [192.168.158.115] (ip-178-202-40-91.hsi09.unitymediagroup.de.
 [178.202.40.91])
 by smtp.gmail.com with ESMTPSA id j21sm2348710wrd.48.2021.09.22.07.31.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 07:31:11 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-14-christian.koenig@amd.com>
 <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <2afbdc22-28a7-9a47-186c-f47b4f5aceab@gmail.com>
Date: Wed, 22 Sep 2021 16:31:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
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

QW0gMjIuMDkuMjEgdW0gMTI6MjEgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDIyLzA5
LzIwMjEgMTA6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgbWFrZXMgdGhlIGZ1
bmN0aW9uIG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+PiByZXRyeSBsb2dpYyBpcyBu
b3cgaGFuZGxlZCBlbHNlIHdoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMzUgKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+PiBpbmRl
eCA2MjM0ZTE3MjU5YzEuLjMxM2FmYjRhMTFjNyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+IEBAIC04Miw4ICs4Miw4IEBAIGk5MTVfZ2VtX2J1c3lf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAKPj4gKmRhdGEsCj4+IMKgIHsKPj4g
wqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2J1c3kgKmFyZ3MgPSBkYXRhOwo+PiDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+IC3CoMKgwqAgc3RydWN0
IGRtYV9yZXN2X2xpc3QgKmxpc3Q7Cj4+IC3CoMKgwqAgdW5zaWduZWQgaW50IHNlcTsKPj4gK8Kg
wqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4+ICvCoMKgwqAgc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2U7Cj4+IMKgwqDCoMKgwqAgaW50IGVycjsKPj4gwqAgwqDCoMKgwqDCoCBlcnIg
PSAtRU5PRU5UOwo+PiBAQCAtMTA5LDI3ICsxMDksMjAgQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChz
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
KTsKPj4gLQo+PiArwqDCoMKgIGFyZ3MtPmJ1c3kgPSBmYWxzZTsKPgo+IFlvdSBjYW4gZHJvcCB0
aGlzIGxpbmUsIGVzcGVjaWFsbHkgc2luY2UgaXQgaXMgbm90IGEgYm9vbGVhbi4gV2l0aCB0aGF0
OgoKSSBqdXN0IHJlYWxpemVkIHRoYXQgdGhpcyB3b24ndCB3b3JrLiBXZSBzdGlsbCBuZWVkIHRv
IGluaXRpYWxpemUgdGhlIApyZXR1cm4gdmFsdWUgd2hlbiB0aGVyZSBpcyBubyBmZW5jZSBhdCBh
bGwgaW4gdGhlIHJlc3Ygb2JqZWN0LgoKPgo+IFJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKRG9lcyB0aGF0IHN0aWxsIGNvdW50cyBpZiBJIHNl
dCBhcmdzLT5idXN5IHRvIHplcm8/CgpUaGFua3MsCkNocmlzdGlhbi4KCj4KPiBSZWdhcmRzLAo+
Cj4gVHZydGtvCj4KPj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+
YmFzZS5yZXN2LCB0cnVlKTsKPj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxv
Y2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGRtYV9yZXN2X2l0
ZXJfaXNfcmVzdGFydGVkKCZjdXJzb3IpKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdz
LT5idXN5ID0gMDsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGRtYV9yZXN2X2l0ZXJfaXNf
ZXhjbHVzaXZlKCZjdXJzb3IpKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBUcmFuc2xh
dGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSAKPj4gZW5naW5l
ICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja193
cml0ZXIoZmVuY2UpOwo+PiArwqDCoMKgwqDCoMKgwqAgZWxzZQo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdpbmVz
ICovCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVj
a19yZWFkZXIoZmVuY2UpOwo+PiAtwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIH0KPj4g
LQo+PiAtwqDCoMKgIGlmIChhcmdzLT5idXN5ICYmIHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+
YmFzZS5yZXN2LT5zZXEsIHNlcSkpCj4+IC3CoMKgwqDCoMKgwqDCoCBnb3RvIHJldHJ5Owo+PiAr
wqDCoMKgIGRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+PiDCoCDCoMKgwqDCoMKgIGVyciA9
IDA7Cj4+IMKgIG91dDoKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
