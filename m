Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4FB58F013
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 18:06:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6D3847963
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 16:06:28 +0000 (UTC)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	by lists.linaro.org (Postfix) with ESMTPS id EB6893EF5A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jul 2022 09:14:01 +0000 (UTC)
Received: by mail-vk1-f172.google.com with SMTP id m30so5232250vkl.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jul 2022 02:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=USiHEWO3jenD+4D67wgYkGKlAcIRmi0lfoN5PdFyKzQ=;
        b=dFYdzZzeGTwRc0FPEgBG5fRwMWNVjXZzxLxwtIHOW4IyAUtC1iJhL8ze0h/ntk8Iq4
         lKlrAFaVxT4/pV4802tsmPOfXqrd/5krNwAeme2Ty0hfRzSXMQ2O+C/Kf1izAeM/mOcz
         8LysLHAdaCtPPppxeQNBi2EL1ZGV/VNGij1I4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=USiHEWO3jenD+4D67wgYkGKlAcIRmi0lfoN5PdFyKzQ=;
        b=ryfqqrj+OjijgtLc7mA34Uw8kER5BLydqjhlH0UZWRawshpJpPTOMoVaXMtkEV9jph
         snJIV/BcHzXFQi6UgbejhztlLYtwYHHYVcb8TH76rGk2eqdS6lNdePEVx1h8TUXqeeWk
         3n1buNV3LMGULwoy2NgwqA5ZqHUZ2810A+yB6KdfIVmFIpxXMq3J+fRVlUD+bdWtF2uV
         t5EtW5wgVlZ+4s3Q0IaFqjESpr1xtvqBdLqz6MHfISzfKJOnihf95R0YHF4C3CB6DPry
         Hlm0ZJU14hJguIun/JXsmpAi2LqbNHjJ4PIT4NDVP76EvT7EtXUaTlUOzUgkaA32O0Vk
         XNNw==
X-Gm-Message-State: AJIora9VpEoE1x3cM5fh39H3l2ecSWFlRk8x6mYNKxrzylJUuNf+kL1U
	UOm623572Ju/H4GBsdJMSU8Uboct74ToZQ==
X-Google-Smtp-Source: AGRyM1vMLr7lRMIBlV2sB2LeOyXGJY4o7ZMa/iKjStJVql8YofpDutYwJchrcG0YeHIbLtVbdmf1tw==
X-Received: by 2002:a1f:3d88:0:b0:374:e94e:4d40 with SMTP id k130-20020a1f3d88000000b00374e94e4d40mr10711136vka.27.1658222040907;
        Tue, 19 Jul 2022 02:14:00 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id n14-20020a9f3ece000000b003842250a024sm168762uaj.10.2022.07.19.02.14.00
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 02:14:00 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id t21so6513088uaq.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jul 2022 02:14:00 -0700 (PDT)
X-Received: by 2002:a81:6ccd:0:b0:31d:c77:73e5 with SMTP id
 h196-20020a816ccd000000b0031d0c7773e5mr33706265ywc.314.1658222030025; Tue, 19
 Jul 2022 02:13:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 19 Jul 2022 18:13:39 +0900
X-Gmail-Original-Message-ID: <CAAFQd5C0dx5X=VEqXDyj22fbxs1jhOQLLid3vSNfAc9vataPhg@mail.gmail.com>
Message-ID: <CAAFQd5C0dx5X=VEqXDyj22fbxs1jhOQLLid3vSNfAc9vataPhg@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
X-MailFrom: tfiga@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RNQ4Y2HWZEUZVUXYKQU37RMIV36UJIXQ
X-Message-ID-Hash: RNQ4Y2HWZEUZVUXYKQU37RMIV36UJIXQ
X-Mailman-Approved-At: Wed, 10 Aug 2022 16:06:26 +0000
CC: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, dri-devel@lists.
 freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 0/6] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RNQ4Y2HWZEUZVUXYKQU37RMIV36UJIXQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKdWwgMTUsIDIwMjIgYXQgOTo1MyBBTSBEbWl0cnkgT3NpcGVua28NCjxkbWl0cnku
b3NpcGVua29AY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+DQo+IEhlbGxvLA0KPg0KPiBUaGlzIHNl
cmllcyBtb3ZlcyBhbGwgZHJpdmVycyB0byBhIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nIHNwZWNp
ZmljYXRpb24uDQo+IEZyb20gbm93IG9uIGFsbCBkbWEtYnVmIGltcG9ydGVycyBhcmUgbWFkZSBy
ZXNwb25zaWJsZSBmb3IgaG9sZGluZw0KPiBkbWEtYnVmJ3MgcmVzZXJ2YXRpb24gbG9jayBhcm91
bmQgYWxsIG9wZXJhdGlvbnMgcGVyZm9ybWVkIG92ZXIgZG1hLWJ1ZnMuDQo+IFRoaXMgY29tbW9u
IGxvY2tpbmcgY29udmVudGlvbiBhbGxvd3MgdXMgdG8gdXRpbGl6ZSByZXNlcnZhdGlvbiBsb2Nr
IG1vcmUNCj4gYnJvYWRseSBhcm91bmQga2VybmVsIHdpdGhvdXQgZmVhcmluZyBvZiBwb3RlbnRp
YWwgZGVhZCBsb2Nrcy4NCj4NCj4gVGhpcyBwYXRjaHNldCBwYXNzZXMgYWxsIGk5MTUgc2VsZnRl
c3RzLiBJdCB3YXMgYWxzbyB0ZXN0ZWQgdXNpbmcgVmlydElPLA0KPiBQYW5mcm9zdCwgTGltYSBh
bmQgVGVncmEgZHJpdmVycy4gSSB0ZXN0ZWQgY2FzZXMgb2YgZGlzcGxheStHUFUsDQo+IGRpc3Bs
YXkrVjRMIGFuZCBHUFUrVjRMIGRtYS1idWYgc2hhcmluZywgd2hpY2ggY292ZXJzIG1ham9yaXR5
IG9mIGtlcm5lbA0KPiBkcml2ZXJzIHNpbmNlIHJlc3Qgb2YgdGhlIGRyaXZlcnMgc2hhcmUgc2Ft
ZSBvciBzaW1pbGFyIGNvZGUgcGF0aHMuDQo+DQo+IFRoaXMgaXMgYSBjb250aW51YXRpb24gb2Yg
WzFdIHdoZXJlIENocmlzdGlhbiBLw7ZuaWcgYXNrZWQgdG8gZmFjdG9yIG91dA0KPiB0aGUgZG1h
LWJ1ZiBsb2NraW5nIGNoYW5nZXMgaW50byBzZXBhcmF0ZSBzZXJpZXMuDQo+DQo+IFsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMjA1MjYyMzUwNDAuNjc4OTg0LTEtZG1p
dHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20vDQo+DQo+IERtaXRyeSBPc2lwZW5rbyAoNik6DQo+
ICAgZG1hLWJ1ZjogQWRkIF91bmxvY2tlZCBwb3N0Zml4IHRvIGZ1bmN0aW9uIG5hbWVzDQo+ICAg
ZHJtL2dlbTogVGFrZSByZXNlcnZhdGlvbiBsb2NrIGZvciB2bWFwL3Z1bm1hcCBvcGVyYXRpb25z
DQo+ICAgZG1hLWJ1ZjogTW92ZSBhbGwgZG1hLWJ1ZnMgdG8gZHluYW1pYyBsb2NraW5nIHNwZWNp
ZmljYXRpb24NCj4gICBkbWEtYnVmOiBBY3F1aXJlIHdhaXQtd291bmQgY29udGV4dCBvbiBhdHRh
Y2htZW50DQo+ICAgbWVkaWE6IHZpZGVvYnVmMjogU3RvcCB1c2luZyBpbnRlcm5hbCBkbWEtYnVm
IGxvY2sNCj4gICBkbWEtYnVmOiBSZW1vdmUgaW50ZXJuYWwgbG9jaw0KPg0KPiAgZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyAgICAgICAgICAgICAgICAgICAgIHwgMTk4ICsrKysrKysrKysrLS0t
LS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyAgIHwg
ICA0ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgICAg
fCAgIDQgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jICAgICAgICAg
ICB8ICAxNCArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnQuYyAgICAgICAgICAgICAg
ICAgIHwgICA0ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jICAgICAgICAgICAgICAg
ICAgICAgfCAgMjggKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMg
ICAgICAgICAgfCAgIDYgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2ZyYW1lYnVmZmVy
X2hlbHBlci5jICB8ICAgNiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVs
cGVyLmMgICAgICAgIHwgICA2ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAg
ICAgICAgICAgICAgICAgfCAgMTIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2
aXZfZ2VtX3ByaW1lLmMgICB8ICAgNiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlu
b3NfZHJtX2dlbS5jICAgICAgIHwgICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG1hYnVmLmMgICAgfCAgMjAgKy0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8ICAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgICA2ICstDQo+ICAuLi4vZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYyAgfCAgMjAgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2V2aWN0LmMgICAgICAgICB8ICAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fd3cuYyAgICAgICAgICAgIHwgIDI2ICsrLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fd3cuaCAgICAgICAgICAgIHwgIDE1ICstDQo+ICBkcml2ZXJzL2dw
dS9kcm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyAgICAgfCAgIDggKy0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9xeGwvcXhsX29iamVjdC5jICAgICAgICAgICAgICB8ICAxNyArLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuYyAgICAgICAgICAgICAgIHwgICA0ICstDQo+ICBkcml2
ZXJzL2dwdS9kcm0vdGVncmEvZ2VtLmMgICAgICAgICAgICAgICAgICAgfCAgMjcgKy0tDQo+ICBk
cml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jICAgICAgICAgfCAgMTEgKy0NCj4g
IC4uLi9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMgICB8ICAyNiArLS0N
Cj4gIC4uLi9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyB8ICAyMyAr
LQ0KPiAgLi4uL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyAgICAgIHwgIDE3
ICstDQoNCkZvciB0aGUgdmlkZW9idWYyIGNoYW5nZXM6DQoNCkFja2VkLWJ5OiBUb21hc3ogRmln
YSA8dGZpZ2FAY2hyb21pdW0ub3JnPg0KDQpCZXN0IHJlZ2FyZHMsDQpUb21hc3oNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
