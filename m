Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A06740ADC1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 14:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21AFE6242A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 12:32:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8D52E6242C; Tue, 14 Sep 2021 12:32:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7831D61021;
	Tue, 14 Sep 2021 12:32:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 60DF160EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:32:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5867861021; Tue, 14 Sep 2021 12:32:28 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 4D93960EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:32:26 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id i23so19949945wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 05:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=sXfmj2M53N/TbaZbI+SjUFAeDqc/IDs8+uMoYaNJZU4=;
 b=HsubuF+h35O423vb5Yp0swD0qMN+3hCwxw3dc/16JLxG0DIyTNvxC4YxwfyZvtWQVX
 rSx1Lw2MYv8ZOu5BVcvz2VwYhchipWP/QTN6bpLRmKFw+e7jfCCsLV32rPFrvDc5ngGF
 e8fyjI01dTfr4qq98OQWgNYWEthIUTTPA5AFBYnnf1qGsU5vDcar7CpDcIj1NfCBWOd+
 dwNBwRhtxKQntju13I7fK1VfRcirolcc5bzYX9EyUXmZekQFNo2vVsCdOBA3nxhG2wYN
 GgE1A8LGVf1z+DvrE7FERo3vz/aqwQVUP/gCLfHwTpbeEWtPiFZRkgNAILPm7GfVvA5e
 uaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=sXfmj2M53N/TbaZbI+SjUFAeDqc/IDs8+uMoYaNJZU4=;
 b=z9lXFmsl2+qeGQRbkS+/588Od77XXXMC6JQ27MlNOewCu6sItwQVIClbQ4wAOBLYq+
 u+lZf3mh78SOyVh5hxlYO32vvxo5CUfaWzUR/bYe4uwekjAyNOMWlw9k+S9Ll1PkfJ+U
 eJe9X9qSZWmo0zlT6FJQDUaqlXQ2dp4MMoGdCe4lAGhCHb5xTihdkzk0QURFX9bg5Fj6
 fbLCD606GYxUGaJmJtMZjsmdEuX32AP7fUJtFyDy9s/ecq0cS3tuc8aOPBO+soApoBkL
 p/5PHxg9YgnbeBINQ45l+ZrCMGz7cJ6/WR7GrM4e+EHKr9T/k2bBnw73FkD0NljZrrOc
 1qDQ==
X-Gm-Message-State: AOAM5310O1uD0MiE2Zn9PJ76zvSjuH7vTSyxo7+0TKJgto86i/JP7T7L
 +BSkSMlGxoP8XnpYisfXqHU=
X-Google-Smtp-Source: ABdhPJw33KA2/3TyF4xFL116xXN7VUkrI/GJWvVPoOdm3sQFvhn6EKH6DIF1b9oPfcp5I4CKY2EVTA==
X-Received: by 2002:adf:e349:: with SMTP id n9mr19135425wrj.326.1631622745310; 
 Tue, 14 Sep 2021 05:32:25 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id y9sm1153302wmj.36.2021.09.14.05.32.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Sep 2021 05:32:24 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-19-christian.koenig@amd.com>
 <46a40614-b448-7f2d-7b6b-0705c4277e2b@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <6c0217a7-6ac8-0c12-4087-ee55f456f99c@gmail.com>
Date: Tue, 14 Sep 2021 14:32:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <46a40614-b448-7f2d-7b6b-0705c4277e2b@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 18/26] drm/i915: use new
 iterator in i915_gem_object_last_write_engine
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

QW0gMTQuMDkuMjEgdW0gMTQ6Mjcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDEzLzA5
LzIwMjEgMTQ6MTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgaXMgbWF5YmUgZXZl
biBhIGZpeCBzaW5jZSB0aGUgUkNVIHVzYWdlIGhlcmUgbG9va3MgaW5jb3JyZWN0Lgo+Cj4gV2hh
dCB5b3UgdGhpbmsgaXMgaW5jb3JyZWN0PyBQb2ludGxlc3MgZXh0cmEgcmN1IGxvY2tpbmc/CgpZ
ZWFoLCBleGFjdGx5IHRoYXQuIEkgYWxzbyB3b25kZXJlZCBmb3IgYSBzZWNvbmQgaWYgcmN1X3Jl
YWRfbG9jaygpIGNhbiAKbmVzdCBvciBub3QuIEJ1dCBvYnZpb3VzbHkgaXQgZWl0aGVyIHdvcmtz
IG9yIGxvY2tkZXAgaGFzbid0IGNvbXBsYWluZWQgeWV0LgoKQnV0IEkndmUgbWFkZSBhIG1pc3Rh
a2UgaGVyZSBhbmQgYXQgYSBjb3VwbGUgb2Ygb3RoZXIgcGxhY2VzIHRvIHJlbW92ZSAKdG8gbWFu
eSByY3VfcmVhZF9sb2NrKCkgY2FsbHMuIFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhhdCBvdXQsIGdv
aW5nIHRvIApmaXggaXQgYXMgd2VsbC4KCj4gQWxzbywgRldJVywgSSBzdWJtaXR0ZWQgYSBwYXRj
aCB0byByZW1vdmUgdGhpcyBmdW5jdGlvbiBhbHRvZ2V0aGVyIAo+IHNpbmNlIGl0cyBJTU8gcHJl
dHR5IHVzZWxlc3MsIGp1c3QgZmFpbGVkIGluIGdldHRpbmcgYW55b25lIHRvIGFjayBpdCAKPiBz
byBmYXIuCgpJIHdhcyBvbiB0aGUgZWRnZSBvZiBzdWdnZXN0aW5nIHRoYXQgYXMgd2VsbCBzaW5j
ZSBpdCdzIG9ubHkgZGVidWdmcyAKdXNhZ2UgbG9va2VkIHF1aXRlIHBvaW50bGVzcyB0byBtZS4K
CkZlZWwgZnJlZSB0byBDQyBtZSBvbiB0aGUgcGF0Y2ggYW5kIHlvdSBjYW4gaGF2ZSBteSBhY2tl
ZC1ieS4KClRoYW5rcywKQ2hyaXN0aWFuLgoKPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+PiBT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0Lmgg
fCAxNSArKysrKysrLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmgKPj4gaW5kZXggZTllZWNlYmY1YzlkLi4zMzQzOTIyYWY0ZDYgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAo+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPj4gQEAgLTUw
MCwxNiArNTAwLDE1IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqCj4+
IMKgIGk5MTVfZ2VtX29iamVjdF9sYXN0X3dyaXRlX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lID0gTlVMTDsKPj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29yIGN1cnNv
cjsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPj4gwqAgLcKgwqDCoCBy
Y3VfcmVhZF9sb2NrKCk7Cj4+IC3CoMKgwqAgZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxv
Y2tlZChvYmotPmJhc2UucmVzdik7Cj4+IC3CoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4+IC0K
Pj4gLcKgwqDCoCBpZiAoZmVuY2UgJiYgZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpICYmIAo+PiAh
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKPj4gLcKgwqDCoMKgwqDCoMKgIGVuZ2luZSA9
IHRvX3JlcXVlc3QoZmVuY2UpLT5lbmdpbmU7Cj4+IC3CoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7Cj4+IC0KPj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChvYmot
PmJhc2UucmVzdiwgJmN1cnNvciwgZmFsc2UsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGZlbmNlKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoZmVuY2UgJiYg
ZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpICYmCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFk
bWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBl
bmdpbmUgPSB0b19yZXF1ZXN0KGZlbmNlKS0+ZW5naW5lOwo+PiArwqDCoMKgIH0KPj4gwqDCoMKg
wqDCoCByZXR1cm4gZW5naW5lOwo+PiDCoCB9Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
