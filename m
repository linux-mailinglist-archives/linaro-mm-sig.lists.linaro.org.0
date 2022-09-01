Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6795A8E88
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:45:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9255F479B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:45:51 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 3C7B347965
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 06:45:46 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id w2so5755533edc.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Aug 2022 23:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=++zrN/rWVjY3ex9jtOllxTCInKN3pkXs9YkUhtChz5k=;
        b=YnX8YJAiNhDBYXCKbeG4LzILhSuYf6l34DOfoXAV+2BNNiqDejkT1JhCOqk85bbLvM
         zoR2Hcge5b95X53WQMadn1yVJwPDDawbp0y0RILXXbQrJ05xxfQJ9LytnW8uFtfxdomX
         HQxLEqSY0zmbjFH5qo+HIVqX11AzLuaXZXmMVUbkcVJyin2bh3p19cTXD3ijCHkGg3JQ
         QmozsU/gGAP4TCFY028A4kfd3jsdpgVW6S3Vuu6BkOJHrMWqfM1ne9IOHZplONd14kYK
         3KjcL+VdwhlqnsHbUMqkKTTGVJncmoWHNfx6LnxwRuQcifdVoguXtSILMcx3/MwDW/MA
         kCEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=++zrN/rWVjY3ex9jtOllxTCInKN3pkXs9YkUhtChz5k=;
        b=M6XcBb7dygFnm20YA7Aqof2FaFxrpg6vzZ/bpNaLVL4OeOHkSXyDDoC6dlOyy62wGR
         DPNptFTpfV6g5I6uU612taoI3HZv6v+iKtHmuJTyNsUCD3fotDJzW5aihF+IApTIUt3y
         DXkaaK4jyO09SrYa2pIaJW5Cs/6slKvtXxyE5FXDvzX+W4u9sd2fGfrKMYuTLDt9uXGN
         EJfwziJajA2bi/C17ptcUDorUbNsRE5u/yMS97OB+wJ/ZzB/I+G6wswP14yhnbS4azCB
         /3jfRerM4j8mK7Ua86UHVbxGM9g4mrnUAxs/eW5lAY88k80o8+8YljmphrbkC7JTv4Wk
         VLvw==
X-Gm-Message-State: ACgBeo3SMJlp1ZUkPBfVCFe9O65jd9wLtSFLTKS/MAuP4YQhg4dzjLQp
	d3gP83Ia4T9kBeuEQyStE60=
X-Google-Smtp-Source: AA6agR4WM9TvD6ATr67LU+K3A/g1BJohEx6M/gXPe6GWUlzDISRTSlHNurPT278X8F2LNo/Uip9krw==
X-Received: by 2002:aa7:cb13:0:b0:448:3759:8c57 with SMTP id s19-20020aa7cb13000000b0044837598c57mr18470629edt.8.1662014745147;
        Wed, 31 Aug 2022 23:45:45 -0700 (PDT)
Received: from [192.168.178.21] (p4fc20ad4.dip0.t-ipconnect.de. [79.194.10.212])
        by smtp.gmail.com with ESMTPSA id gt23-20020a170906f21700b007306a4bc9b4sm8019660ejb.38.2022.08.31.23.45.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 23:45:44 -0700 (PDT)
Message-ID: <06cad130-4b0d-a894-d444-21b5ee5b5a63@gmail.com>
Date: Thu, 1 Sep 2022 08:45:40 +0200
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
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
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
 Qiang Yu <yuq825@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-8-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220831153757.97381-8-dmitry.osipenko@collabora.com>
Message-ID-Hash: UZOCIKD3NKOUUZRDBFFNCEPFEDJA4EZV
X-Message-ID-Hash: UZOCIKD3NKOUUZRDBFFNCEPFEDJA4EZV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 07/21] drm/omapdrm: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZOCIKD3NKOUUZRDBFFNCEPFEDJA4EZV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
T01BUCBEUk0gZHJpdmVyIHRvIHRoZSBjb21tb24gZHluYW1pYyBkbWEtYnVmIGxvY2tpbmcgY29u
dmVudGlvbg0KPiBieSBzdGFydGluZyB0byB1c2UgdGhlIHVubG9ja2VkIHZlcnNpb25zIG9mIGRt
YS1idWYgQVBJIGZ1bmN0aW9ucy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gICBkcml2ZXJzL2dw
dS9kcm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyB8IDQgKystLQ0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9vbWFwZHJtL29tYXBfZ2VtX2RtYWJ1Zi5jDQo+IGluZGV4IDM5M2Y4MmUyNjkyNy4uOGUxOTRk
YmM5NTA2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbV9k
bWFidWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbV9kbWFidWYu
Yw0KPiBAQCAtMTI1LDcgKzEyNSw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb21hcF9nZW1f
cHJpbWVfaW1wb3J0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ICAgDQo+ICAgCWdldF9kbWFf
YnVmKGRtYV9idWYpOw0KPiAgIA0KPiAtCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoYXR0
YWNoLCBETUFfVE9fREVWSUNFKTsNCj4gKwlzZ3QgPSBkbWFfYnVmX21hcF9hdHRhY2htZW50X3Vu
bG9ja2VkKGF0dGFjaCwgRE1BX1RPX0RFVklDRSk7DQo+ICAgCWlmIChJU19FUlIoc2d0KSkgew0K
PiAgIAkJcmV0ID0gUFRSX0VSUihzZ3QpOw0KPiAgIAkJZ290byBmYWlsX2RldGFjaDsNCj4gQEAg
LTE0Miw3ICsxNDIsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX3ByaW1lX2lt
cG9ydChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiAgIAlyZXR1cm4gb2JqOw0KPiAgIA0KPiAg
IGZhaWxfdW5tYXA6DQo+IC0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KGF0dGFjaCwgc2d0LCBE
TUFfVE9fREVWSUNFKTsNCj4gKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYXR0
YWNoLCBzZ3QsIERNQV9UT19ERVZJQ0UpOw0KPiAgIGZhaWxfZGV0YWNoOg0KPiAgIAlkbWFfYnVm
X2RldGFjaChkbWFfYnVmLCBhdHRhY2gpOw0KPiAgIAlkbWFfYnVmX3B1dChkbWFfYnVmKTsNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
