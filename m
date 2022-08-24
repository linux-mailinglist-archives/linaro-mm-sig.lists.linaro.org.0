Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CFABB59FCD7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 16:11:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B9803F617
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 14:11:05 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 839393EC34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 14:10:57 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id s11so22195128edd.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 07:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=kqPUQCej5vuqxvtj8Chlk3T/0EwQ6MX8daIfGCr7o8M=;
        b=jTVBzq0qwP/Jiix3oxmDZ7+wYfTBhEWTauZQdu8hOviYHBGCplvf/sjEo/RV5EynDV
         F/3igCTqIWBw9y1M+Tz1KtUNZJ/Vc7vYsDCQckxSEEaEAATSUMLMhhZM/uRvXPKJwTID
         JFPXKVME1YPvW3AWEEt8IY1tnflEl6+s2+VTI3lNdEf9I2/bpW1ED4ELRE0sMfvAneeH
         /StlMvl5hA5f4v6Ub32YqKj3011/RpihmCQ/mxpFLVUJNkoTI8bwaIrfE8kqKCGPv4z9
         I+UIpLo6Qj3px/bXQ4vWO4iPykWOgMwW3vwWBjvKVJT+EdtLeVH/fQX5AFSNWc9Rj8ry
         Hsqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=kqPUQCej5vuqxvtj8Chlk3T/0EwQ6MX8daIfGCr7o8M=;
        b=e/ri79e5HPQ75tQmGohzSKypeQN6ShJAdGRauOpY7CxjnoFANYdwcDMW7zphhkOcy7
         KRFz2SxYJMRCaXv+CgqC1Z9ZQXXck+ETFMIwIm/gqtSA0JEmGJSnLKBAnrMLthH0WDb7
         XpBJrwzLyZYh+g44LwuEcOGQ1YZdgeQzNiJ/tcaJkPtjdzU4ER8qymbFpyAYjlyKz54F
         oOPHXpCSClFNEhWo4ueivXJgHnWNXdYMVWtKl1kjKPeGXKFbI/AT/LtOzG16j69hcQcy
         Sc24pU/3OLujr6q40a/srsGXpMiHI6a829fzkXwC25Oq+xJzgMpExz3TTovV2y7qV1bD
         q46g==
X-Gm-Message-State: ACgBeo2/DP0huvpYATs8gBe0WaNef2OEeLz7scSwt8EkzyfjQv8JmA0k
	b9GttH/Of4m2eciCKj0mPjE=
X-Google-Smtp-Source: AA6agR4FhXaC9pbWpsAk9+dYxjrSjwUKJso4IGx0zPGDwcQGaUM8T/17R/PS2YwW53RL5Bz2crZ4pw==
X-Received: by 2002:a05:6402:358a:b0:446:da94:e68c with SMTP id y10-20020a056402358a00b00446da94e68cmr7682224edc.356.1661350256435;
        Wed, 24 Aug 2022 07:10:56 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:62ca:57d9:b533:6057? ([2a02:908:1256:79a0:62ca:57d9:b533:6057])
        by smtp.gmail.com with ESMTPSA id u18-20020a1709061db200b0073d6d760daesm1229270ejh.60.2022.08.24.07.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 07:10:55 -0700 (PDT)
Message-ID: <abb7842a-ca07-59db-927b-06c3dc17974c@gmail.com>
Date: Wed, 24 Aug 2022 16:10:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>
References: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
 <20220824102248.91964-10-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220824102248.91964-10-dmitry.osipenko@collabora.com>
Message-ID-Hash: 5WYBARHJ5CUGRZPL4JEQCOH6O3R7P2O7
X-Message-ID-Hash: 5WYBARHJ5CUGRZPL4JEQCOH6O3R7P2O7
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 9/9] dma-buf: Remove internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5WYBARHJ5CUGRZPL4JEQCOH6O3R7P2O7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDguMjIgdW0gMTI6MjIgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFRoZSBpbnRl
cm5hbCBkbWEtYnVmIGxvY2sgaXNuJ3QgbmVlZGVkIGFueW1vcmUgYmVjYXVzZSB0aGUgdXBkYXRl
ZA0KPiBsb2NraW5nIHNwZWNpZmljYXRpb24gY2xhaW1zIHRoYXQgZG1hLWJ1ZiByZXNlcnZhdGlv
biBtdXN0IGJlIGxvY2tlZA0KPiBieSBpbXBvcnRlcnMsIGFuZCB0aHVzLCB0aGUgaW50ZXJuYWwg
ZGF0YSBpcyBhbHJlYWR5IHByb3RlY3RlZCBieSB0aGUNCj4gcmVzZXJ2YXRpb24gbG9jay4gUmVt
b3ZlIHRoZSBvYnNvbGV0ZWQgaW50ZXJuYWwgbG9jay4NCj4NCj4gU2lnbmVkLW9mZi1ieTogRG1p
dHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0N
Cj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTQgKysrKy0tLS0tLS0tLS0NCj4gICBp
bmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgIDkgLS0tLS0tLS0tDQo+ICAgMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4g
aW5kZXggNjk2ZDEzMmIwMmY0Li5hMDQwNjI1NGYwYWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBA
QCAtNjU2LDcgKzY1Niw2IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ICAgDQo+ICAgCWRtYWJ1Zi0+
ZmlsZSA9IGZpbGU7DQo+ICAgDQo+IC0JbXV0ZXhfaW5pdCgmZG1hYnVmLT5sb2NrKTsNCj4gICAJ
SU5JVF9MSVNUX0hFQUQoJmRtYWJ1Zi0+YXR0YWNobWVudHMpOw0KPiAgIA0KPiAgIAltdXRleF9s
b2NrKCZkYl9saXN0LmxvY2spOw0KPiBAQCAtMTUwMyw3ICsxNTAyLDcgQEAgRVhQT1JUX1NZTUJP
TF9OU19HUEwoZG1hX2J1Zl9tbWFwX3VubG9ja2VkLCBETUFfQlVGKTsNCj4gICBpbnQgZG1hX2J1
Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4g
ICB7DQo+ICAgCXN0cnVjdCBpb3N5c19tYXAgcHRyOw0KPiAtCWludCByZXQgPSAwOw0KPiArCWlu
dCByZXQ7DQo+ICAgDQo+ICAgCWlvc3lzX21hcF9jbGVhcihtYXApOw0KPiAgIA0KPiBAQCAtMTUx
NSwyOCArMTUxNCwyNSBAQCBpbnQgZG1hX2J1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYs
IHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gICAJaWYgKCFkbWFidWYtPm9wcy0+dm1hcCkNCj4g
ICAJCXJldHVybiAtRUlOVkFMOw0KPiAgIA0KPiAtCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7
DQo+ICAgCWlmIChkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIpIHsNCj4gICAJCWRtYWJ1Zi0+dm1h
cHBpbmdfY291bnRlcisrOw0KPiAgIAkJQlVHX09OKGlvc3lzX21hcF9pc19udWxsKCZkbWFidWYt
PnZtYXBfcHRyKSk7DQo+ICAgCQkqbWFwID0gZG1hYnVmLT52bWFwX3B0cjsNCj4gLQkJZ290byBv
dXRfdW5sb2NrOw0KPiArCQlyZXR1cm4gMDsNCj4gICAJfQ0KPiAgIA0KPiAgIAlCVUdfT04oaW9z
eXNfbWFwX2lzX3NldCgmZG1hYnVmLT52bWFwX3B0cikpOw0KPiAgIA0KPiAgIAlyZXQgPSBkbWFi
dWYtPm9wcy0+dm1hcChkbWFidWYsICZwdHIpOw0KPiAgIAlpZiAoV0FSTl9PTl9PTkNFKHJldCkp
DQo+IC0JCWdvdG8gb3V0X3VubG9jazsNCj4gKwkJcmV0dXJuIHJldDsNCj4gICANCj4gICAJZG1h
YnVmLT52bWFwX3B0ciA9IHB0cjsNCj4gICAJZG1hYnVmLT52bWFwcGluZ19jb3VudGVyID0gMTsN
Cj4gICANCj4gICAJKm1hcCA9IGRtYWJ1Zi0+dm1hcF9wdHI7DQo+ICAgDQo+IC1vdXRfdW5sb2Nr
Og0KPiAtCW11dGV4X3VubG9jaygmZG1hYnVmLT5sb2NrKTsNCj4gLQlyZXR1cm4gcmV0Ow0KPiAr
CXJldHVybiAwOw0KPiAgIH0NCj4gICBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3ZtYXAs
IERNQV9CVUYpOw0KPiAgIA0KPiBAQCAtMTU3OCwxMyArMTU3NCwxMSBAQCB2b2lkIGRtYV9idWZf
dnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4g
ICAJQlVHX09OKGRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlciA9PSAwKTsNCj4gICAJQlVHX09OKCFp
b3N5c19tYXBfaXNfZXF1YWwoJmRtYWJ1Zi0+dm1hcF9wdHIsIG1hcCkpOw0KPiAgIA0KPiAtCW11
dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7DQo+ICAgCWlmICgtLWRtYWJ1Zi0+dm1hcHBpbmdfY291
bnRlciA9PSAwKSB7DQo+ICAgCQlpZiAoZG1hYnVmLT5vcHMtPnZ1bm1hcCkNCj4gICAJCQlkbWFi
dWYtPm9wcy0+dnVubWFwKGRtYWJ1ZiwgbWFwKTsNCj4gICAJCWlvc3lzX21hcF9jbGVhcigmZG1h
YnVmLT52bWFwX3B0cik7DQo+ICAgCX0NCj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7
DQo+ICAgfQ0KPiAgIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdnVubWFwLCBETUFfQlVG
KTsNCj4gICANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgNCj4gaW5kZXggZDQ4ZDUzNGRjNTVjLi5hZWQ2Njk1YmJiNTAgMTAw
NjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQo+IEBAIC0zMjYsMTUgKzMyNiw2IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4g
ICAJLyoqIEBvcHM6IGRtYV9idWZfb3BzIGFzc29jaWF0ZWQgd2l0aCB0aGlzIGJ1ZmZlciBvYmpl
Y3QuICovDQo+ICAgCWNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyAqb3BzOw0KPiAgIA0KPiAtCS8q
Kg0KPiAtCSAqIEBsb2NrOg0KPiAtCSAqDQo+IC0JICogVXNlZCBpbnRlcm5hbGx5IHRvIHNlcmlh
bGl6ZSBsaXN0IG1hbmlwdWxhdGlvbiwgYXR0YWNoL2RldGFjaCBhbmQNCj4gLQkgKiB2bWFwL3Vu
bWFwLiBOb3RlIHRoYXQgaW4gbWFueSBjYXNlcyB0aGlzIGlzIHN1cGVyc2VlZGVkIGJ5DQo+IC0J
ICogZG1hX3Jlc3ZfbG9jaygpIG9uIEByZXN2Lg0KPiAtCSAqLw0KPiAtCXN0cnVjdCBtdXRleCBs
b2NrOw0KPiAtDQo+ICAgCS8qKg0KPiAgIAkgKiBAdm1hcHBpbmdfY291bnRlcjoNCj4gICAJICoN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
