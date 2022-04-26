Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8FF5104DB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 19:05:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 941E547FE2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 17:05:58 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id B2B433EE48
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 17:05:54 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id z99so23141157ede.5
        for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 10:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1d6XYPEIOlSgqhPimpriycmvoOlXuKEavH90oQKFT58=;
        b=BW1uW0cKB5fLPLvX4Kdp7TRxewBLJTBqUEO7YRLZ2czLoIbu7HWYs9GwFxNGd5PWog
         l3FeJqKIKEoeGEOmiScWZEayoJ1n6zqFsIU17b4thJP1qaXiLIsSg6PZUO5NqqaYlsVt
         4wp4ARfD5PsWrYHurhMKX04pnn6cWdHrXyr7pS9Y9Y7Lze4kEryph9xIrquynUGk/CUm
         0nORrBtwl6s2hqegqs7SIMwoJzWoh566Tjn2TNbCwiY6dfj8WnskS3rQYkWTxVNrMS0Q
         r322luV/HEd1sf9jEwszc3HkgqHATUFOLa+q2Z6h1KppJP5X/rOIyK0/gy8YUyqTiTbb
         R/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1d6XYPEIOlSgqhPimpriycmvoOlXuKEavH90oQKFT58=;
        b=JNQ46J5KQNE9KlPfxtIz17n/0thnU2E5RIeoFfM9vM0Es8uHQeeL04ZhToMr26INOk
         DCqmDz/yJyAbOh+jdfxAFn9eQkoscLphHjsDOxhRaJeIaPAEpu0cyS8O3d0+ztI5yca+
         niYxGGKOEa2iPGBiFAJ0Ngfs6mT6yKQ9YT0UkNhvpU37uLSqQR5XSTv6v7AoHOGU+ApK
         uSLiFs3oKwtSBT5SefwtnWaRVhSVJ0vFvtA3L8KMku3q4z0V5NoOiCIQVW54/dyISps1
         NkT5d2ZGAFtuG+KKCX7WPWlCRS/E8td/XDz+MM6KUo/usRMKUjgwC/TOu9dEuRmSN1o+
         Chew==
X-Gm-Message-State: AOAM530Ce37IaxZoiocHUuHdvRg6y7Bj3ePtLPhOnfjfEaa3o1B2ty10
	Qhnz8nLxT192Mb8cRsEb7Ou/PuWDGkQ=
X-Google-Smtp-Source: ABdhPJz3N30G7WL5/5A7bIeTHap9cpiax0UhXn4o2lF1gEfPodWNtRBEGhX+CYJ2psY7F8OcxVJ43A==
X-Received: by 2002:aa7:c5c9:0:b0:425:ca31:4e35 with SMTP id h9-20020aa7c5c9000000b00425ca314e35mr20395140eds.315.1650992753740;
        Tue, 26 Apr 2022 10:05:53 -0700 (PDT)
Received: from ?IPV6:2a02:908:1252:fb60:331b:81d1:1030:30f5? ([2a02:908:1252:fb60:331b:81d1:1030:30f5])
        by smtp.gmail.com with ESMTPSA id m1-20020a170906234100b006ef83025804sm5318989eja.87.2022.04.26.10.05.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 10:05:52 -0700 (PDT)
Message-ID: <cb734eb3-2b65-4384-6d3d-f74b38489681@gmail.com>
Date: Tue, 26 Apr 2022 19:05:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20220426170044.29454-1-christian.koenig@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220426170044.29454-1-christian.koenig@amd.com>
Message-ID-Hash: 2TLIVZSBPBCNL7ESD6BIQS2V2LX7R7D4
X-Message-ID-Hash: 2TLIVZSBPBCNL7ESD6BIQS2V2LX7R7D4
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Rob Clark <robdclark@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: remove trace_dma_fence_emit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2TLIVZSBPBCNL7ESD6BIQS2V2LX7R7D4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QWRkIGEgZmV3IG1vcmUgcGVvcGxlIG9uIENDLg0KDQpBbSAyNi4wNC4yMiB1bSAxOTowMCBzY2hy
aWViIENocmlzdGlhbiBLw7ZuaWc6DQo+IFRoZXJlIHdhcyBuZXZlciBhbnkgc2lnbmlmaWNhbnQg
ZGlmZmVyZW5jZSBiZXR3ZWVuIHRyYWNlX2RtYV9mZW5jZV9lbWl0KCkNCj4gYW5kIHRyYWNlX2Rt
YV9mZW5jZV9pbml0KCkgYW5kIHRoZSBvbmx5IHBsYWNlIHdoZXJlIGl0IHdvdWxkIG1hZGUgYQ0K
PiBzaWduaWZpY2FudCBkaWZmZXJlbmNlIHdhcyBuZXZlciBpbXBsZW1lbnRlZC4NCj4NCj4gU28g
cmVtb3ZlIHRyYWNlX2RtYV9mZW5jZV9lbWl0KCkgc2luY2Ugd2UgaGF2ZSBhbiByZXBlYXRpbmcg
aXNzdWUgdGhhdA0KPiBwZW9wbGUgYXJlIHRyeWluZyB0byB1c2UgaXQgZm9yIHZpc3VhbGl6YXRp
b24gYW5kIGFyZSBzdXJwcmlzZWQgdGhhdA0KPiBpdCBhY3R1YWxseSBkb2Vzbid0IHdvcmsgZm9y
IG1vc3QgZHJpdmVycy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMgICAgICAgICAgICAgfCAxIC0NCj4gICBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2
ZWF1X2ZlbmNlLmMgfCAxIC0NCj4gICBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMg
ICAgICAgfCAxIC0NCj4gICBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfZmVuY2UuYyAg
fCAyIC0tDQo+ICAgaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggICAgICAgIHwgNyAt
LS0tLS0tDQo+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxMiBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KPiBpbmRleCAwNjY0MDBlZDg4NDEuLmQwZDcwNGYzZWRhZSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYw0KPiBAQCAtMjAsNyArMjAsNiBAQA0KPiAgICNkZWZpbmUgQ1JFQVRFX1RSQUNF
X1BPSU5UUw0KPiAgICNpbmNsdWRlIDx0cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmg+DQo+ICAgDQo+
IC1FWFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX2VtaXQpOw0KPiAgIEVYUE9SVF9U
UkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2VfZW5hYmxlX3NpZ25hbCk7DQo+ICAgRVhQT1JUX1RS
QUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9zaWduYWxlZCk7DQo+ICAgDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMNCj4gaW5kZXggN2YwMWRjZjgxZmFiLi5hYmNhYzdk
YjQzNDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVu
Y2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMNCj4g
QEAgLTIyNCw3ICsyMjQsNiBAQCBub3V2ZWF1X2ZlbmNlX2VtaXQoc3RydWN0IG5vdXZlYXVfZmVu
Y2UgKmZlbmNlLCBzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpjaGFuKQ0KPiAgIAkJCSAgICAgICAm
ZmN0eC0+bG9jaywgZmN0eC0+Y29udGV4dCwgKytmY3R4LT5zZXF1ZW5jZSk7DQo+ICAgCWtyZWZf
Z2V0KCZmY3R4LT5mZW5jZV9yZWYpOw0KPiAgIA0KPiAtCXRyYWNlX2RtYV9mZW5jZV9lbWl0KCZm
ZW5jZS0+YmFzZSk7DQo+ICAgCXJldCA9IGZjdHgtPmVtaXQoZmVuY2UpOw0KPiAgIAlpZiAoIXJl
dCkgew0KPiAgIAkJZG1hX2ZlbmNlX2dldCgmZmVuY2UtPmJhc2UpOw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9x
eGxfcmVsZWFzZS5jDQo+IGluZGV4IDM2OGQyNmRhMGQ2YS4uY2I5ZjI3NzcxZjMyIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jDQo+IEBAIC00MjQsNyArNDI0LDYgQEAgdm9pZCBx
eGxfcmVsZWFzZV9mZW5jZV9idWZmZXJfb2JqZWN0cyhzdHJ1Y3QgcXhsX3JlbGVhc2UgKnJlbGVh
c2UpDQo+ICAgCSAqLw0KPiAgIAlkbWFfZmVuY2VfaW5pdCgmcmVsZWFzZS0+YmFzZSwgJnF4bF9m
ZW5jZV9vcHMsICZxZGV2LT5yZWxlYXNlX2xvY2ssDQo+ICAgCQkgICAgICAgcmVsZWFzZS0+aWQg
fCAweGYwMDAwMDAwLCByZWxlYXNlLT5iYXNlLnNlcW5vKTsNCj4gLQl0cmFjZV9kbWFfZmVuY2Vf
ZW1pdCgmcmVsZWFzZS0+YmFzZSk7DQo+ICAgDQo+ICAgCWxpc3RfZm9yX2VhY2hfZW50cnkoZW50
cnksICZyZWxlYXNlLT5ib3MsIGhlYWQpIHsNCj4gICAJCWJvID0gZW50cnktPmJvOw0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2ZlbmNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfZmVuY2UuYw0KPiBpbmRleCBmMjgzNTdkYmRlMzUuLmU4
YjZkZWMzNzk3NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1
X2ZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2ZlbmNlLmMN
Cj4gQEAgLTExMSw4ICsxMTEsNiBAQCB2b2lkIHZpcnRpb19ncHVfZmVuY2VfZW1pdChzdHJ1Y3Qg
dmlydGlvX2dwdV9kZXZpY2UgKnZnZGV2LA0KPiAgIAlsaXN0X2FkZF90YWlsKCZmZW5jZS0+bm9k
ZSwgJmRydi0+ZmVuY2VzKTsNCj4gICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZHJ2LT5sb2Nr
LCBpcnFfZmxhZ3MpOw0KPiAgIA0KPiAtCXRyYWNlX2RtYV9mZW5jZV9lbWl0KCZmZW5jZS0+Zik7
DQo+IC0NCj4gICAJY21kX2hkci0+ZmxhZ3MgfD0gY3B1X3RvX2xlMzIoVklSVElPX0dQVV9GTEFH
X0ZFTkNFKTsNCj4gICAJY21kX2hkci0+ZmVuY2VfaWQgPSBjcHVfdG9fbGU2NChmZW5jZS0+ZmVu
Y2VfaWQpOw0KPiAgIA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2Zl
bmNlLmggYi9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KPiBpbmRleCAzOTYzZTc5
Y2E3YjQuLmViNzQ0YTZhY2E0OSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS90cmFjZS9ldmVudHMv
ZG1hX2ZlbmNlLmgNCj4gKysrIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCj4g
QEAgLTM0LDEzICszNCw2IEBAIERFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNlLA0KPiAgIAkJ
ICBfX2VudHJ5LT5zZXFubykNCj4gICApOw0KPiAgIA0KPiAtREVGSU5FX0VWRU5UKGRtYV9mZW5j
ZSwgZG1hX2ZlbmNlX2VtaXQsDQo+IC0NCj4gLQlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSksDQo+IC0NCj4gLQlUUF9BUkdTKGZlbmNlKQ0KPiAtKTsNCj4gLQ0KPiAgIERFRklORV9F
VkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9pbml0LA0KPiAgIA0KPiAgIAlUUF9QUk9UTyhzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
