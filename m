Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DC02B523B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 21:16:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2CD7619B0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:16:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A7717665FA; Mon, 16 Nov 2020 20:16:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 418E0666D5;
	Mon, 16 Nov 2020 20:15:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 59AA160900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:15:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A831665FA; Mon, 16 Nov 2020 20:15:31 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id ED64860900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:15:29 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 19so551101wmf.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 12:15:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Cqs0L9mq4LM3hzHwL7Vxr+3/WEKB0WUANiW7vqEYbdw=;
 b=A02ha2nSdIkR5CWxrsCCfTu1wn3iPub+07iCT5hEFfVHQ/PO8LqQENqVHKWca0r8Zs
 i5aJ79+TR+SRLI9qYULFtNLcqvX86WAd1Y6YI7GFRaN2MM9GSbjxwT1cjd8LdOkoJQRc
 JofM7OoUgTiZRIqGGTCtzt76pMKF0W4gZJreXSDK+ED7hX/lfVAYOrbBHkf48pfuLxwZ
 ndi8p8pAOsyFaltFS+gEMbvKNyDqbyn9oDiXsZomo/3zsW0T/m8KntnJOx8ckFfish0R
 ynCmQ8zkTJvJhfaz4KnEEGjn5c17T9zZ3criG84FrDx/01uv7KgtPUt4UeMVFCuHmtOa
 fwuQ==
X-Gm-Message-State: AOAM5325rofGJ1C7iqg7x8mXXj31kJUBjrN74J5PaM/QMMNoDKRHfxdU
 olIbjOgw7dkVfAQn1MYm8RLRkJux9c5Pptjddls=
X-Google-Smtp-Source: ABdhPJxW6dtT5waXDuu9RfOmT1vSRwN4pUavgumlbd68/qeoEMNN0kUrMTLhSpdG6DjOKNpJPdQDZtyuJlgXWXgPlag=
X-Received: by 2002:a1c:1c3:: with SMTP id 186mr604675wmb.39.1605557729178;
 Mon, 16 Nov 2020 12:15:29 -0800 (PST)
MIME-Version: 1.0
References: <20201116173700.1830487-1-lee.jones@linaro.org>
 <20201116173700.1830487-23-lee.jones@linaro.org>
In-Reply-To: <20201116173700.1830487-23-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 15:15:18 -0500
Message-ID: <CADnq5_MVdGk7XrdOpRA0wDH1jNXcZ84iOUcmD9hdnGY7aw4e1A@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 22/43] drm/radeon/cik: Move
 'r600_ih_ring_{alloc, fini}()'s prototypes to shared header
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzggUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuYzozNDgwOjU6IHdh
cm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYcjYwMF9paF9yaW5nX2FsbG9j4oCZ
IFstV21pc3NpbmctcHJvdG90eXBlc10KPiAgMzQ4MCB8IGludCByNjAwX2loX3JpbmdfYWxsb2Mo
c3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpCj4gIHwgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gIGRy
aXZlcnMvZ3B1L2RybS9yYWRlb24vcjYwMC5jOjM1MTY6Njogd2FybmluZzogbm8gcHJldmlvdXMg
cHJvdG90eXBlIGZvciDigJhyNjAwX2loX3JpbmdfZmluaeKAmSBbLVdtaXNzaW5nLXByb3RvdHlw
ZXNdCj4gIDM1MTYgfCB2b2lkIHI2MDBfaWhfcmluZ19maW5pKHN0cnVjdCByYWRlb25fZGV2aWNl
ICpyZGV2KQo+ICB8IF5+fn5+fn5+fn5+fn5+fn5+Cj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4
YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+
IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8
c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+
IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgpBcHBsaWVk
LiAgVGhhbmtzIQoKQWxleAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYyAg
fCAzICstLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuaCB8IDIgKysKPiAgZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9zaS5jICAgfCAzICstLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL2Npay5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYwo+IGluZGV4IDMx
NWM0ZjNkZjM2NTYuLjk4MGI1MGQwNDZjYmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9jaWsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMKPiBAQCAt
MzQsNiArMzQsNyBAQAo+ICAjaW5jbHVkZSAiY2lrX2JsaXRfc2hhZGVycy5oIgo+ICAjaW5jbHVk
ZSAiY2lrZC5oIgo+ICAjaW5jbHVkZSAiY2xlYXJzdGF0ZV9jaS5oIgo+ICsjaW5jbHVkZSAicjYw
MC5oIgo+ICAjaW5jbHVkZSAicmFkZW9uLmgiCj4gICNpbmNsdWRlICJyYWRlb25fYXNpYy5oIgo+
ICAjaW5jbHVkZSAicmFkZW9uX2F1ZGlvLmgiCj4gQEAgLTEyNSw4ICsxMjYsNiBAQCBNT0RVTEVf
RklSTVdBUkUoInJhZGVvbi9tdWxsaW5zX21lYy5iaW4iKTsKPiAgTU9EVUxFX0ZJUk1XQVJFKCJy
YWRlb24vbXVsbGluc19ybGMuYmluIik7Cj4gIE1PRFVMRV9GSVJNV0FSRSgicmFkZW9uL211bGxp
bnNfc2RtYS5iaW4iKTsKPgo+IC1leHRlcm4gaW50IHI2MDBfaWhfcmluZ19hbGxvYyhzdHJ1Y3Qg
cmFkZW9uX2RldmljZSAqcmRldik7Cj4gLWV4dGVybiB2b2lkIHI2MDBfaWhfcmluZ19maW5pKHN0
cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KTsKPiAgZXh0ZXJuIHZvaWQgc2lfdnJhbV9ndHRfbG9j
YXRpb24oc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsIHN0cnVjdCByYWRlb25fbWMgKm1jKTsK
PiAgZXh0ZXJuIHZvaWQgc2lfcmxjX3Jlc2V0KHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KTsK
PiAgZXh0ZXJuIHZvaWQgc2lfaW5pdF91dmRfaW50ZXJuYWxfY2coc3RydWN0IHJhZGVvbl9kZXZp
Y2UgKnJkZXYpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuaCBi
L2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYwMC5oCj4gaW5kZXggMmEzOTE1ZjAwMzllNC4uZTY2
ZWY1ODcwNmNkOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuaAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYwMC5oCj4gQEAgLTMxLDUgKzMxLDcgQEAK
PiAgc3RydWN0IHJhZGVvbl9kZXZpY2U7Cj4KPiAgdTMyIHI2MDBfZ3B1X2NoZWNrX3NvZnRfcmVz
ZXQoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICtpbnQgcjYwMF9paF9yaW5nX2FsbG9j
KHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KTsKPiArdm9pZCByNjAwX2loX3JpbmdfZmluaShz
dHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4KPiAgI2VuZGlmICAgICAgICAgICAgICAgICAg
ICAgICAgIC8qIF9fUjYwMF9IX18gKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9zaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9zaS5jCj4gaW5kZXggNDUwNzZjMjdk
N2RlZC4uZDA0MDcxNDVjMDdiNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3NpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3NpLmMKPiBAQCAtMzMsNiArMzMs
NyBAQAo+ICAjaW5jbHVkZSAiYXRvbS5oIgo+ICAjaW5jbHVkZSAiY2xlYXJzdGF0ZV9zaS5oIgo+
ICAjaW5jbHVkZSAiZXZlcmdyZWVuLmgiCj4gKyNpbmNsdWRlICJyNjAwLmgiCj4gICNpbmNsdWRl
ICJyYWRlb24uaCIKPiAgI2luY2x1ZGUgInJhZGVvbl9hc2ljLmgiCj4gICNpbmNsdWRlICJyYWRl
b25fYXVkaW8uaCIKPiBAQCAtMTI4LDggKzEyOSw2IEBAIHN0YXRpYyB2b2lkIHNpX3BjaWVfZ2Vu
M19lbmFibGUoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICBzdGF0aWMgdm9pZCBzaV9w
cm9ncmFtX2FzcG0oc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICBleHRlcm4gdm9pZCBz
dW1vX3JsY19maW5pKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KTsKPiAgZXh0ZXJuIGludCBz
dW1vX3JsY19pbml0KHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KTsKPiAtZXh0ZXJuIGludCBy
NjAwX2loX3JpbmdfYWxsb2Moc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+IC1leHRlcm4g
dm9pZCByNjAwX2loX3JpbmdfZmluaShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gIHN0
YXRpYyB2b2lkIHNpX2VuYWJsZV9ndWlfaWRsZV9pbnRlcnJ1cHQoc3RydWN0IHJhZGVvbl9kZXZp
Y2UgKnJkZXYsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBib29s
IGVuYWJsZSk7Cj4gIHN0YXRpYyB2b2lkIHNpX2luaXRfcGcoc3RydWN0IHJhZGVvbl9kZXZpY2Ug
KnJkZXYpOwo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
