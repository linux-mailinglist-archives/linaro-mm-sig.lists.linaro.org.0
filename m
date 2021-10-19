Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8391A433695
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 15:02:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D46D607C3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 13:02:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0922C60759; Tue, 19 Oct 2021 13:02:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 365F96057D;
	Tue, 19 Oct 2021 13:02:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EC78F60537
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 13:02:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E2EA06057D; Tue, 19 Oct 2021 13:02:30 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id D73D960537
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 13:02:28 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id u18so47783951wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 06:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=zoeKeQkU3KvxnJa2mZcZh7Nvtdmvi6KvvNHJWqgrlL8=;
 b=FSCLJ7rXFMRdh8Hphd/PqIDV+GZiMLqJSKAwavuZJNmFA/mMD9Ak0NQPQbbpgDDnNc
 fXKDZZ1y9N1+JUIR4tKmMmLZOZ3nnVtTcDn8tRKqQbKVIX6v7xwHeff2kEU7BiR1NA+g
 PQV/Nwg7i1nm+yqzXLYYhPVunq2dbEY0AuI+jw943gw1sg35lXKh2L/36UxV8SoLJa0l
 K7mBye1O98rGDeQKm4zm16bdddNgVXAXlKvqLPcxu1k1UlWpsV9KV5AmlNlydNp8OYDV
 FDoW/JXk8+BGNCmOWKNE8QMVSKSjFNSqd8lns9m6GnYyI4059eFsZI7tKciAzZzjQqyg
 2RzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zoeKeQkU3KvxnJa2mZcZh7Nvtdmvi6KvvNHJWqgrlL8=;
 b=zvoA870AHs8FzDqjE3dQ8VTaKVHfUmDUaCqtR6R5MkIg3TuivYKDcB92bdNRC/JD1Y
 jJnhUMI0K+WXXTktKp/oggHmZRyq69ZTwTeKhE1o3v3jz47gMiIMSQPMHUt4L1A8BGX6
 BX/DOLSjdafejCUlokF5KjOc4quoGdFORA20/Gxk+bpsxnMAA8u3PSiipo35KxUC/6DS
 AHhgN9Cufe/LMDHFRwKWTl0OrPppKMLh/U34PHWyb6YZdVxFtLFpZdTFP7mrn2jEO736
 hPP8h1sADkhAZGR6EIXyNrJQTjCjq9vcmGvv/r9mTu6yIYx8BC04I/rC+cjaTOjPn7X2
 /PsQ==
X-Gm-Message-State: AOAM530oSe1CLfTxfbRN1vTtZ51T39VjvR5NY+KstOTB7XoiorxEuwgu
 3FoBF+y5iBvrB8Mjb85yGFE=
X-Google-Smtp-Source: ABdhPJwYkuZW66DOQ5LnvWYT8S9+EZRh5ym4fe7u61zzmk2TGTHLVlTipFq0g7dFHF62PBJ/0ELvHg==
X-Received: by 2002:adf:a38d:: with SMTP id l13mr43616254wrb.103.1634648547710; 
 Tue, 19 Oct 2021 06:02:27 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:f344:748e:38f7:c50?
 ([2a02:908:1252:fb60:f344:748e:38f7:c50])
 by smtp.gmail.com with ESMTPSA id t8sm15103147wrx.46.2021.10.19.06.02.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 06:02:27 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-25-christian.koenig@amd.com>
 <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <405b9df8-58fd-b8f2-cec2-acde69aa5633@gmail.com>
Date: Tue, 19 Oct 2021 15:02:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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
Cc: linaro-mm-sig@lists.linaro.org, tvrtko.ursulin@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMTAuMjEgdW0gMTY6MjMgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDA1LCAyMDIxIGF0IDAxOjM3OjM4UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IE1ha2VzIHRoZSBoYW5kbGluZyBhIGJpdCBtb3JlIGNvbXBsZXgsIGJ1dCBhdm9pZHMgdGhlIHVz
ZSBvZgo+PiBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCgpLgo+Pgo+PiB2MjogaW1wcm92ZSBj
b2RpbmcgYW5kIGRvY3VtZW50YXRpb24KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgfCAxMyArKysrKysrKysrKy0tCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMKPj4gaW5kZXggZTU3MDM5OGFiZDc4Li44NTM0
Zjc4ZDRkNmQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19o
ZWxwZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMK
Pj4gQEAgLTE0Myw2ICsxNDMsNyBAQAo+PiAgICAqLwo+PiAgIGludCBkcm1fZ2VtX3BsYW5lX2hl
bHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5l
X3N0YXRlICpzdGF0ZSkKPj4gICB7Cj4+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+
PiAgIAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iajsKPj4gICAJc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2U7Cj4+ICAgCj4+IEBAIC0xNTAsOSArMTUxLDE3IEBAIGludCBkcm1fZ2VtX3BsYW5lX2hl
bHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5l
X3N0Cj4+ICAgCQlyZXR1cm4gMDsKPj4gICAKPj4gICAJb2JqID0gZHJtX2dlbV9mYl9nZXRfb2Jq
KHN0YXRlLT5mYiwgMCk7Cj4+IC0JZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChv
YmotPnJlc3YpOwo+PiAtCWRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVu
Y2UpOwo+PiArCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5yZXN2LCBmYWxzZSk7
Cj4+ICsJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsK
Pj4gKwkJLyogVE9ETzogV2Ugb25seSB1c2UgdGhlIGZpcnN0IHdyaXRlIGZlbmNlIGhlcmUgYW5k
IG5lZWQgdG8gZml4Cj4+ICsJCSAqIHRoZSBkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUo
KSBBUEkgdG8gYWNjZXB0IG1vcmUgdGhhbgo+PiArCQkgKiBvbmUuICovCj4gSSdtIGNvbmZ1c2Vk
LCByaWdodCBub3cgdGhlcmUgaXMgb25seSBvbmUgd3JpdGUgZmVuY2UuIFNvIG5vIG5lZWQgdG8K
PiBpdGVyYXRlLCBhbmQgYWxzbyBubyBuZWVkIHRvIGFkZCBhIFRPRE8uIElmL3doZW4gd2UgYWRk
IG1vcmUgd3JpdGUgZmVuY2VzCj4gdGhlbiBJIHRoaW5rIHRoaXMgbmVlZHMgdG8gYmUgcmV2aXNp
dGVkLCBhbmQgb2ZjIHRoZW4gd2UgZG8gbmVlZCB0byB1cGRhdGUKPiB0aGUgc2V0X2ZlbmNlIGhl
bHBlcnMgdG8gY2FycnkgYW4gZW50aXJlIGFycmF5IG9mIGZlbmNlcy4KCldlbGwgY291bGQgYmUg
dGhhdCBJIG1pc3VuZGVyc3Rvb2QgeW91LCBidXQgaW4geW91ciBsYXN0IGV4cGxhbmF0aW9uIGl0
IApzb3VuZGVkIGxpa2UgdGhlIGRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZSgpIGZ1bmN0
aW9uIG5lZWRzIGZpeGluZyAKYW55d2F5IGJlY2F1c2UgYSBwbGFuZSBjb3VsZCBoYXZlIG11bHRp
cGxlIEJPcy4KClNvIGluIG15IHVuZGVyc3RhbmRpbmcgd2hhdCB3ZSBuZWVkIGlzIGEgCmRybV9h
dG9taWNfYWRkX2RlcGVuZGVuY3lfZm9yX3BsYW5lKCkgZnVuY3Rpb24gd2hpY2ggcmVjb3JkcyB0
aGF0IGEgCmNlcnRhaW4gZmVuY2UgbmVlZHMgdG8gYmUgc2lnbmFsZWQgYmVmb3JlIGEgZmxpcC4K
ClN1cHBvcnQgZm9yIG1vcmUgdGhhbiBvbmUgd3JpdGUgZmVuY2UgdGhlbiBjb21lcyB0b3RhbGx5
IG5hdHVyYWxseS4KCkNocmlzdGlhbi4KCj4gLURhbmllbAo+Cj4+ICsJCWRtYV9mZW5jZV9nZXQo
ZmVuY2UpOwo+PiArCQlicmVhazsKPj4gKwl9Cj4+ICsJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNv
cik7Cj4+ICAgCj4+ICsJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBmZW5j
ZSk7Cj4+ICAgCXJldHVybiAwOwo+PiAgIH0KPj4gICBFWFBPUlRfU1lNQk9MX0dQTChkcm1fZ2Vt
X3BsYW5lX2hlbHBlcl9wcmVwYXJlX2ZiKTsKPj4gLS0gCj4+IDIuMjUuMQo+PgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
