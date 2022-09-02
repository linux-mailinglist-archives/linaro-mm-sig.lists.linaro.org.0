Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D02895AAC9F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Sep 2022 12:38:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D64C63F467
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Sep 2022 10:38:40 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by lists.linaro.org (Postfix) with ESMTPS id 36E4D3EDB5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Sep 2022 10:38:35 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id p18so1798071ljc.9
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 Sep 2022 03:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=zb5JB4hN023tPDYi3X8LwwwxfrMO5eJ6HDfLqyKNUp4=;
        b=b+3QDVeZ8R7VkX5Bf/lQ/zM5cKpssDiy6sioxY3jw9J59uDY2aLPinjOd5/AfzMPSF
         F25cqjiDBi0zlLf8NewvQzjGLBKLLwe77dGjcGOssNv9QG7GD4v9Y7R5vUVBkwhzJqAt
         W+NgPvhc+LGHFoczAHcg6Xd3RZE5aY0kB0c6sHOthdo2C6I6KgqGlMNMjWhr5LBa7hEJ
         PF8PoWJrMQEbxEgzwwdfZOe63pnK6yiDDUckqcBXrJcCgoCnkkMNTICwsyuKzCch5zAF
         oZnume/cpTmEe8YMT0zAnJRdyZ8FX7N+NEVx+V/5rqxYqoL28d0bRVzC4c7nr4HeYJuG
         nuzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=zb5JB4hN023tPDYi3X8LwwwxfrMO5eJ6HDfLqyKNUp4=;
        b=prlhHLxu4KDHIybqJH2UhTGDJ76lb+WoMixkIOqDV+DNYlBgYVxpvA6J35PdIwLriF
         /U5scDKw9hKiZQfF6jSqyq5G4kMT7Xq/Je+6EKRcwmiU0pBfcVziQXhYqQ5rzWIrypRJ
         1d2NwZrIcHwipYEH3tSgTL4/+BiY1gE0tAqgaw9reHoVvR6/I2J+ZLJKjoCri9HamX91
         0BhDg/VITL2fE78saa++qK2nYsHwTPAdGkj6W0smOc6rpBt/fdlm8UqP+376bjlaR97E
         HxP/qbvU0ImERF0mnFmKQOFvppsOlvhjNj4tPHQVJW6V5YPfO5Vso5tqPPtUNpYDI1nR
         Fb8g==
X-Gm-Message-State: ACgBeo0jC7UXluCUzKkHkwwCSDl5+wyBr12Qo9Rlkg7DO0N8D+yf+QMq
	JSFWFNc4ZCj0zwrARZar7eU=
X-Google-Smtp-Source: AA6agR40LFWSHSrrETgLqAmkw4fHaA4WAaccG4Nn66YZ/3AUuSYYBeJUuN4jK3ma7gFMPZa8TWb1KQ==
X-Received: by 2002:a2e:bf07:0:b0:261:cafb:d4a8 with SMTP id c7-20020a2ebf07000000b00261cafbd4a8mr10289818ljr.268.1662115113077;
        Fri, 02 Sep 2022 03:38:33 -0700 (PDT)
Received: from [192.168.2.145] (109-252-119-13.nat.spd-mgts.ru. [109.252.119.13])
        by smtp.googlemail.com with ESMTPSA id 5-20020a2eb945000000b00267232d0652sm147092ljs.46.2022.09.02.03.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Sep 2022 03:38:32 -0700 (PDT)
Message-ID: <c89680d0-30ee-f5d7-be68-fa84458df04d@gmail.com>
Date: Fri, 2 Sep 2022 13:38:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
From: Dmitry Osipenko <digetx@gmail.com>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-7-dmitry.osipenko@collabora.com>
 <DM5PR11MB1324088635FDE00B0D957816C17B9@DM5PR11MB1324.namprd11.prod.outlook.com>
 <760b999f-b15d-102e-8bc7-c3e69f07f43f@gmail.com>
In-Reply-To: <760b999f-b15d-102e-8bc7-c3e69f07f43f@gmail.com>
Message-ID-Hash: MAVWYKXPQT6OZ4246VZRK3GUILVJTH2G
X-Message-ID-Hash: MAVWYKXPQT6OZ4246VZRK3GUILVJTH2G
X-MailFrom: digetx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "kernel@collabora.com" <kernel@collabora.com>, "virtualization@lists.linux-foundation.org" <virtualization@lists.linux-foundation.org>, "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tome
 u.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Qiang Yu <yuq825@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, "Gross, Jurgen" <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/21] drm/i915: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MAVWYKXPQT6OZ4246VZRK3GUILVJTH2G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

MDIuMDkuMjAyMiAxMzozMSwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6DQo+IDAxLjA5LjIw
MjIgMTc6MDIsIFJ1aGwsIE1pY2hhZWwgSiDQv9C40YjQtdGCOg0KPiAuLi4NCj4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMNCj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMNCj4+PiBAQCAtMzMxLDcgKzMz
MSwxOSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QNCj4+PiBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPj4+IAkJCWNvbnRpbnVlOw0KPj4+IAkJfQ0KPj4+DQo+
Pj4gKwkJLyoNCj4+PiArCQkgKiBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoKSByZXF1aXJlcyBy
ZXNlcnZhdGlvbiB0byBiZQ0KPj4+ICsJCSAqIGxvY2tlZC4gVGhlIGltcG9ydGVkIEdFTSBzaG91
bGRuJ3Qgc2hhcmUgcmVzZXJ2YXRpb24gbG9jaywNCj4+PiArCQkgKiBzbyBpdCdzIHNhZmUgdG8g
dGFrZSB0aGUgbG9jay4NCj4+PiArCQkgKi8NCj4+PiArCQlpZiAob2JqLT5iYXNlLmltcG9ydF9h
dHRhY2gpDQo+Pj4gKwkJCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwgTlVMTCk7DQo+Pg0KPj4g
VGhlcmUgaXMgYSBsb3Qgb2Ygc3R1ZmYgZ29pbmcgaGVyZS4gIFRha2luZyB0aGUgbG9jayBtYXkg
YmUgcHJlbWF0dXJlLi4uDQo+Pg0KPj4+IAkJX19pOTE1X2dlbV9vYmplY3RfcGFnZXNfZmluaShv
YmopOw0KPj4NCj4+IFRoZSBpOTE1X2dlbV9kbWFidWYuYzppOTE1X2dlbV9vYmplY3RfcHV0X3Bh
Z2VzX2RtYWJ1ZiBpcyB3aGVyZQ0KPj4gdW5tYXBfYXR0YWNobWVudCBpcyBhY3R1YWxseSBjYWxs
ZWQsIHdvdWxkIGl0IG1ha2UgbW9yZSBzZW5zZSB0byBtYWtlDQo+PiBkbyB0aGUgbG9ja2luZyB0
aGVyZT8NCj4gDQo+IFRoZSBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMoKSBpcyBpbnZva2Vk
IHdpdGggYSBoZWxkIHJlc2VydmF0aW9uDQo+IGxvY2ssIHdoaWxlIGZyZWVpbmcgb2JqZWN0IGlz
IGEgc3BlY2lhbCB0aW1lIHdoZW4gd2Uga25vdyB0aGF0IEdFTSBpcw0KPiB1bnVzZWQuDQo+IA0K
PiBUaGUgX19pOTE1X2dlbV9mcmVlX29iamVjdHMoKSB3YXMgdGFraW5nIHRoZSBsb2NrIHR3byB3
ZWVrcyBhZ28gdW50aWwNCj4gdGhlIGNoYW5nZSBtYWRlIENocmlzIFdpbHNvbiBbMV0gcmVhY2hl
ZCBsaW51eC1uZXh0Lg0KPiANCj4gWzFdDQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvY29tbWl0Lz9pZD0yODI2ZDQ0
N2ZiZDYwZTZhMDVlNTNkNWY5MThiY2ViOGMwNGUzMTVjDQo+IA0KPiBJIGRvbid0IHRoaW5rIHdl
IGNhbiB0YWtlIHRoZSBsb2NrIHdpdGhpbg0KPiBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2Rt
YWJ1ZigpLCBpdCBtYXkvc2hvdWxkIGRlYWRsb2NrIG90aGVyIGNvZGUgcGF0aHMuDQoNCk9uIHRo
ZSBvdGhlciBoYW5kLCB3ZSBjYW4gY2hlY2sgd2hldGhlciB0aGUgR0VNJ3MgcmVmY291bnQgbnVt
YmVyIGlzDQp6ZXJvIGluIGk5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXNfZG1hYnVmKCkgYW5kIHRo
ZW4gdGFrZSB0aGUgbG9jayBpZg0KaXQncyB6ZXJvLg0KDQpBbHNvLCBzZWVtcyBpdCBzaG91bGQg
YmUgcG9zc2libGUganVzdCB0byBiYWlsIG91dCBmcm9tDQppOTE1X2dlbV9vYmplY3RfcHV0X3Bh
Z2VzX2RtYWJ1ZigpIGlmIHJlZmNvdW50PTAuIFRoZSBmdXJ0aGVyDQpkcm1fcHJpbWVfZ2VtX2Rl
c3Ryb3koKSB3aWxsIHRha2UgY2FyZSBvZiB1bm1hcHBpbmcuIFBlcmhhcHMgdGhpcyBjb3VsZA0K
YmUgdGhlIGJlc3Qgb3B0aW9uLCBJJ2xsIGdpdmUgaXQgYSB0ZXN0Lg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
