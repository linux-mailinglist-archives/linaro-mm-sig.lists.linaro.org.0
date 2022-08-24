Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E62E259FCFF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 16:15:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1433B3F5FA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 14:15:12 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id 889DD3F445
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 14:15:04 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id u15so25124161ejt.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 07:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=3RY0kXIvgqIVojhkrE4Zwlr7wJlH94oU+XFloUi3XjI=;
        b=k433WZpJORtGGgjLBRUCWg89Ct3eMmhhzzPwfTl6//mc8KZmXsfUkvjXK2CPv2G6j9
         FW4/JFsVFe8WZ8qXfiG0G2WUSXJhVho/22M2ZvYonWllG8JjwTj6MhS+/biMgV4nO5Zr
         llPWeve491++YksKYHfxR6w08hbYD3Jv+FtIHtqkeqoTfLN6sUfa2AlD62I2SrAPThJb
         x/pSysLoKr056pSqqIrDP4Zf5umrg7az72DW3OYvoPJOZdkczmoNmarSqM1+dim8Vhiv
         BxZj98y4ZeYDVEzsmdne2xhUZzSQUjC7gSpIH2W4w1Iq4MHPRdAGpb04pB6x8cp2I0OU
         nIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=3RY0kXIvgqIVojhkrE4Zwlr7wJlH94oU+XFloUi3XjI=;
        b=cQGbR290BRquw7oKH2NMw6L9icsuRvZ8gmS6YmaCH4whjwELBxtKagrJU/77cnQgY6
         Ch+XmWdgEoDarY+0GP+qtNUXhjsVcU7jbpowWB1ogtsuLjHcHr64UqFihPwO3NgTjZL9
         gujDTYt+HZeJwEuKBqx7gCCqxhilAj626s6bBRVau7loW2pkrfSe2v/SiJwEuCf149TF
         iUosbjgVTaiz43eky27JNBoSlXJgF6mEWxyBfC7xp74q2YIan4wUjqheg756ar/Yez3X
         x2aeCx9ptWzrwqd0NXQnwjhWEIlNCag6EVfCtvTl09BkVzAwx1A9fn19wI/Fwyrv9n/b
         DFiA==
X-Gm-Message-State: ACgBeo2K/nPRx1YaAniuUCuL/IbaGVz99dOShYiCURE6E8tDV8bx3oWq
	Frv1uf6E/ALcSMoIgpfygZo=
X-Google-Smtp-Source: AA6agR5vl7eAC3d146n4WFT7uLsC77WQL4B00T85StELI9JlyPgaC5TszQICKao2kaYSaa7iVSFw9A==
X-Received: by 2002:a17:907:7256:b0:73d:9c6b:35e2 with SMTP id ds22-20020a170907725600b0073d9c6b35e2mr2992627ejc.197.1661350503452;
        Wed, 24 Aug 2022 07:15:03 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:62ca:57d9:b533:6057? ([2a02:908:1256:79a0:62ca:57d9:b533:6057])
        by smtp.gmail.com with ESMTPSA id m26-20020a056402051a00b004464c3de6dasm3147684edv.65.2022.08.24.07.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 07:15:02 -0700 (PDT)
Message-ID: <79cf9887-64ad-9cfd-035a-4b6e41b864e0@gmail.com>
Date: Wed, 24 Aug 2022 16:15:00 +0200
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
Message-ID-Hash: UOPU7OJM26B3QUPXQKR2H63WWFRJIGTT
X-Message-ID-Hash: UOPU7OJM26B3QUPXQKR2H63WWFRJIGTT
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/9] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UOPU7OJM26B3QUPXQKR2H63WWFRJIGTT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

UmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4g
dG8gcGF0Y2hlcyAjMi0jNA0KDQpBbSAyNC4wOC4yMiB1bSAxMjoyMiBzY2hyaWViIERtaXRyeSBP
c2lwZW5rbzoNCj4gSGVsbG8sDQo+DQo+IFRoaXMgc2VyaWVzIG1vdmVzIGFsbCBkcml2ZXJzIHRv
IGEgZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgc3BlY2lmaWNhdGlvbi4NCj4gIEZyb20gbm93IG9u
IGFsbCBkbWEtYnVmIGltcG9ydGVycyBhcmUgbWFkZSByZXNwb25zaWJsZSBmb3IgaG9sZGluZw0K
PiBkbWEtYnVmJ3MgcmVzZXJ2YXRpb24gbG9jayBhcm91bmQgYWxsIG9wZXJhdGlvbnMgcGVyZm9y
bWVkIG92ZXIgZG1hLWJ1ZnMNCj4gaW4gYWNjb3JkYW5jZSB0byB0aGUgbG9ja2luZyBzcGVjaWZp
Y2F0aW9uLiBUaGlzIGFsbG93cyB1cyB0byB1dGlsaXplDQo+IHJlc2VydmF0aW9uIGxvY2sgbW9y
ZSBicm9hZGx5IGFyb3VuZCBrZXJuZWwgd2l0aG91dCBmZWFyaW5nIG9mIGEgcG90ZW50aWFsDQo+
IGRlYWRsb2Nrcy4NCj4NCj4gVGhpcyBwYXRjaHNldCBwYXNzZXMgYWxsIGk5MTUgc2VsZnRlc3Rz
LiBJdCB3YXMgYWxzbyB0ZXN0ZWQgdXNpbmcgVmlydElPLA0KPiBQYW5mcm9zdCwgTGltYSwgVGVn
cmEsIHVkbWFidWYsIEFNREdQVSBhbmQgTm91dmVhdSBkcml2ZXJzLiBJIHRlc3RlZCBjYXNlcw0K
PiBvZiBkaXNwbGF5K0dQVSwgZGlzcGxheStWNEwgYW5kIEdQVStWNEwgZG1hLWJ1ZiBzaGFyaW5n
ICh3aGVyZSBhcHByb3ByaWF0ZSksDQo+IHdoaWNoIGNvdmVycyBtYWpvcml0eSBvZiBrZXJuZWwg
ZHJpdmVycyBzaW5jZSByZXN0IG9mIHRoZSBkcml2ZXJzIHNoYXJlDQo+IHNhbWUgb3Igc2ltaWxh
ciBjb2RlIHBhdGhzLg0KPg0KPiBDaGFuZ2Vsb2c6DQo+DQo+IHYzOiAtIEZhY3RvcmVkIG91dCBk
bWFfYnVmX21tYXBfdW5sb2NrZWQoKSBhbmQgYXR0YWNobWVudCBmdW5jdGlvbnMNCj4gICAgICAg
IGludG8gYXNlcGFyYXRlIHBhdGNoZXMsIGxpa2Ugd2FzIHN1Z2dlc3RlZCBieSBDaHJpc3RpYW4g
S8O2bmlnLg0KPg0KPiAgICAgIC0gQ29ycmVjdGVkIGFuZCBmYWN0b3JlZCBvdXQgZG1hLWJ1ZiBs
b2NraW5nIGRvY3VtZW50YXRpb24gaW50bw0KPiAgICAgICAgYSBzZXBhcmF0ZSBwYXRjaCwgbGlr
ZSB3YXMgc3VnZ2VzdGVkIGJ5IENocmlzdGlhbiBLw7ZuaWcuDQo+DQo+ICAgICAgLSBJbnRlbCBk
cml2ZXIgZHJvcHBlZCB0aGUgcmVzZXJ2YXRpb24gbG9ja2luZyBmZXdzIGRheXMgYWdvIGZyb20N
Cj4gICAgICAgIGl0cyBCTy1yZWxlYXNlIGNvZGUgcGF0aCwgYnV0IHdlIG5lZWQgdGhhdCBsb2Nr
aW5nIGZvciB0aGUgaW1wb3J0ZWQNCj4gICAgICAgIEdFTXMgYmVjYXVzZSBpbiB0aGUgZW5kIHRo
YXQgY29kZSBwYXRoIHVubWFwcyB0aGUgaW1wb3J0ZWQgR0VNLg0KPiAgICAgICAgU28gSSBhZGRl
ZCBiYWNrIHRoZSBsb2NraW5nIG5lZWRlZCBieSB0aGUgaW1wb3J0ZWQgR0VNcywgdXBkYXRpbmcN
Cj4gICAgICAgIHRoZSAiZG1hLWJ1ZiBhdHRhY2htZW50IGxvY2tpbmcgc3BlY2lmaWNhdGlvbiIg
cGF0Y2ggYXBwcm9wcmlhdGVseS4NCj4NCj4gICAgICAtIFRlc3RlZCBOb3V2ZWF1K0ludGVsIGRt
YS1idWYgaW1wb3J0L2V4cG9ydCBjb21iby4NCj4NCj4gICAgICAtIFRlc3RlZCB1ZG1hYnVmIGlt
cG9ydCB0byBpOTE1L05vdXZlYXUvQU1ER1BVLg0KPg0KPiAgICAgIC0gRml4ZWQgZmV3IHBsYWNl
cyBpbiBFdG5hdml2LCBQYW5mcm9zdCBhbmQgTGltYSBkcml2ZXJzIHRoYXQgSSBtaXNzZWQNCj4g
ICAgICAgIHRvIHN3aXRjaCB0byBsb2NrZWQgZG1hLWJ1ZiB2bWFwcGluZyBpbiB0aGUgZHJtL2dl
bTogVGFrZSByZXNlcnZhdGlvbg0KPiAgICAgICAgbG9jayBmb3Igdm1hcC92dW5tYXAgb3BlcmF0
aW9ucyIgcGF0Y2guIEluIGEgcmVzdWx0IGludmFsaWRhdGVkIHRoZQ0KPiAgICAgICAgQ2hyaXN0
aWFuJ3Mgci1iIHRoYXQgaGUgZ2F2ZSB0byB2Mi4NCj4NCj4gICAgICAtIEFkZGVkIGxvY2tlZCBk
bWEtYnVmIHZtYXAvdnVubWFwIGZ1bmN0aW9ucyB0aGF0IGFyZSBuZWVkZWQgZm9yIGZpeGluZw0K
PiAgICAgICAgdm1hcHBwaW5nIG9mIEV0bmF2aXYsIFBhbmZyb3N0IGFuZCBMaW1hIGRyaXZlcnMg
bWVudGlvbmVkIGFib3ZlLg0KPiAgICAgICAgSSBhY3R1YWxseSBoYWQgdGhpcyBjaGFuZ2Ugc3Rh
c2hlZCBmb3IgdGhlIGRybS1zaG1lbSBzaHJpbmtlciBwYXRjaHNldCwNCj4gICAgICAgIGJ1dCB0
aGVuIHJlYWxpemVkIHRoYXQgaXQncyBhbHJlYWR5IG5lZWRlZCBieSB0aGUgZG1hLWJ1ZiBwYXRj
aGVzLg0KPiAgICAgICAgQWxzbyBpbXByb3ZlZCBteSB0ZXN0cyB0byBiZXR0ZXIgY292ZXIgdGhl
c2UgY29kZSBwYXRocy4NCj4NCj4gdjI6IC0gQ2hhbmdlZCBsb2NraW5nIHNwZWNpZmljYXRpb24g
dG8gYXZvaWQgcHJvYmxlbXMgd2l0aCBhIGNyb3NzLWRyaXZlcg0KPiAgICAgICAgd3cgbG9ja2lu
ZywgbGlrZSB3YXMgc3VnZ2VzdGVkIGJ5IENocmlzdGlhbiBLw7ZuaWcuIE5vdyB0aGUgYXR0YWNo
L2RldGFjaA0KPiAgICAgICAgY2FsbGJhY2tzIGFyZSBpbnZva2VkIHdpdGhvdXQgdGhlIGhlbGQg
bG9jayBhbmQgZXhwb3J0ZXIgc2hvdWxkIHRha2UgdGhlDQo+ICAgICAgICBsb2NrLg0KPg0KPiAg
ICAgIC0gQWRkZWQgImxvY2tpbmcgY29udmVudGlvbiIgZG9jdW1lbnRhdGlvbiB0aGF0IGV4cGxh
aW5zIHdoaWNoIGRtYS1idWYNCj4gICAgICAgIGZ1bmN0aW9ucyBhbmQgY2FsbGJhY2tzIGFyZSBs
b2NrZWQvdW5sb2NrZWQgZm9yIGltcG9ydGVycyBhbmQgZXhwb3J0ZXJzLA0KPiAgICAgICAgd2hp
Y2ggd2FzIHJlcXVlc3RlZCBieSBDaHJpc3RpYW4gS8O2bmlnLg0KPg0KPiAgICAgIC0gQWRkZWQg
YWNrIGZyb20gVG9tYXN6IEZpZ2EgdG8gdGhlIFY0TCBwYXRjaGVzIHRoYXQgaGUgZ2F2ZSB0byB2
MS4NCj4NCj4gRG1pdHJ5IE9zaXBlbmtvICg5KToNCj4gICAgZG1hLWJ1ZjogQWRkIF91bmxvY2tl
ZCBwb3N0Zml4IHRvIGZ1bmN0aW9uIG5hbWVzDQo+ICAgIGRtYS1idWY6IEFkZCBsb2NrZWQgdmFy
aWFudCBvZiBkbWFfYnVmX3ZtYXAvdnVubWFwKCkNCj4gICAgZHJtL2dlbTogVGFrZSByZXNlcnZh
dGlvbiBsb2NrIGZvciB2bWFwL3Z1bm1hcCBvcGVyYXRpb25zDQo+ICAgIGRtYS1idWY6IE1vdmUg
ZG1hX2J1Zl92bWFwL3Z1bm1hcF91bmxvY2tlZCgpIHRvIGR5bmFtaWMgbG9ja2luZw0KPiAgICAg
IHNwZWNpZmljYXRpb24NCj4gICAgZG1hLWJ1ZjogTW92ZSBkbWFfYnVmX21tYXBfdW5sb2NrZWQo
KSB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KPiAgICBkbWEtYnVmOiBNb3ZlIGRt
YS1idWYgYXR0YWNobWVudCB0byBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbg0KPiAgICBk
bWEtYnVmOiBEb2N1bWVudCBkeW5hbWljIGxvY2tpbmcgY29udmVudGlvbg0KPiAgICBtZWRpYTog
dmlkZW9idWYyOiBTdG9wIHVzaW5nIGludGVybmFsIGRtYS1idWYgbG9jaw0KPiAgICBkbWEtYnVm
OiBSZW1vdmUgaW50ZXJuYWwgbG9jaw0KPg0KPiAgIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9k
bWEtYnVmLnJzdCAgICAgICAgICB8ICAgNiArDQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyAgICAgICAgICAgICAgICAgICAgIHwgMjc2ICsrKysrKysrKysrKysrLS0tLQ0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgICB8ICAgNCArLQ0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jICAgICAgICAgICB8ICAxNCArLQ0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50LmMgICAgICAgICAgICAgICAgICB8ICAgNCArLQ0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgICAgICAgICAgICAgICAgICAgICB8ICAyNCAr
Kw0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2RtYV9oZWxwZXIuYyAgICAgICAgICB8ICAg
NiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2ZyYW1lYnVmZmVyX2hlbHBlci5jICB8
ICAgNiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jICAgICAg
ICB8ICAgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3R0bV9oZWxwZXIuYyAgICAg
ICAgICB8ICAgOSArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyAgICAgICAgICAg
ICAgICAgICB8ICAxMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2Vt
X3ByaW1lLmMgICB8ICAgNCArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2Ry
bV9nZW0uYyAgICAgICB8ICAgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kbWFidWYuYyAgICB8ICAgNiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuYyAgICB8ICAxMiArDQo+ICAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgIDIwICstDQo+ICAgZHJpdmVycy9ncHUvZHJtL2xpbWEv
bGltYV9zY2hlZC5jICAgICAgICAgICAgIHwgICA0ICstDQo+ICAgZHJpdmVycy9ncHUvZHJtL29t
YXBkcm0vb21hcF9nZW1fZG1hYnVmLmMgICAgIHwgICA4ICstDQo+ICAgZHJpdmVycy9ncHUvZHJt
L3BhbmZyb3N0L3BhbmZyb3N0X2R1bXAuYyAgICAgIHwgICA0ICstDQo+ICAgZHJpdmVycy9ncHUv
ZHJtL3BhbmZyb3N0L3BhbmZyb3N0X3BlcmZjbnQuYyAgIHwgICA2ICstDQo+ICAgZHJpdmVycy9n
cHUvZHJtL3F4bC9xeGxfb2JqZWN0LmMgICAgICAgICAgICAgIHwgIDE3ICstDQo+ICAgZHJpdmVy
cy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuYyAgICAgICAgICAgICAgIHwgICA0ICstDQo+ICAgZHJp
dmVycy9ncHUvZHJtL3RlZ3JhL2dlbS5jICAgICAgICAgICAgICAgICAgIHwgIDI3ICstDQo+ICAg
ZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYyAgICAgICAgIHwgIDExICstDQo+
ICAgLi4uL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYyAgIHwgIDI2ICst
DQo+ICAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jIHwgIDIz
ICstDQo+ICAgLi4uL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyAgICAgIHwg
IDE3ICstDQo+ICAgLi4uL3BsYXRmb3JtL252aWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMg
IHwgIDEyICstDQo+ICAgZHJpdmVycy9taXNjL2Zhc3RycGMuYyAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDEyICstDQo+ICAgZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jICAgICAgICAgICAg
ICAgICAgIHwgIDE0ICstDQo+ICAgaW5jbHVkZS9kcm0vZHJtX2dlbS5oICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAzICsNCj4gICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAg
ICAgICAgICAgICAgfCAgNTcgKystLQ0KPiAgIDMyIGZpbGVzIGNoYW5nZWQsIDQxMCBpbnNlcnRp
b25zKCspLCAyNDIgZGVsZXRpb25zKC0pDQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
