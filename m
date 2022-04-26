Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D24E50FD33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 14:38:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7637447FA4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 12:38:45 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by lists.linaro.org (Postfix) with ESMTPS id D545147FA4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 12:38:39 +0000 (UTC)
Received: from mail-yw1-f169.google.com ([209.85.128.169]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1Mf0Ru-1oOShw2BZ4-00gZmx for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr
 2022 14:38:38 +0200
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-2ebf4b91212so180502407b3.8
        for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 05:38:38 -0700 (PDT)
X-Gm-Message-State: AOAM533X0+QoUfUEROPUJ+w6gIYZspGqx5Ey6nrjVzcAO+IyLaC2hrq/
	75ffcgGz7UxYx8AYIjp7aI5PZKK718klqhmuIoI=
X-Google-Smtp-Source: ABdhPJwgCuCUa4o+AgAH4pI2w9geQ9zGuYooiQu61gb9/bVoeW8aj/5quj9UKhljTouqCt64isUtADXX7teUyfMtQT0=
X-Received: by 2002:a0d:d804:0:b0:2f4:e47d:1c2c with SMTP id
 a4-20020a0dd804000000b002f4e47d1c2cmr21230444ywe.320.1650976717282; Tue, 26
 Apr 2022 05:38:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220426060808.78225-1-cai.huoqing@linux.dev> <20220426060808.78225-5-cai.huoqing@linux.dev>
 <618a4f53-0998-1e6b-e32b-8bf2d3057cec@amd.com> <CAK8P3a2w1t7Sk897u0ndD66Lwp5a4DuOqqQLN4yHSg=JmrpOHQ@mail.gmail.com>
 <20220426122404.GA6788@chq-T47>
In-Reply-To: <20220426122404.GA6788@chq-T47>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 26 Apr 2022 14:38:21 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2M=zw509HGRALmgbr+E6GjKoZqqkh9kCbyGB9hD_+3LA@mail.gmail.com>
Message-ID: <CAK8P3a2M=zw509HGRALmgbr+E6GjKoZqqkh9kCbyGB9hD_+3LA@mail.gmail.com>
To: Cai Huoqing <cai.huoqing@linux.dev>
X-Provags-ID: V03:K1:N6cXqL8hpo4aFj0AEHugIr/j5sMvctii8MNDSoe3000DVBT0a3u
 ho+FKlXcgSYZHdd0w/7XCAcRPQLdj1qPPWBckTiHnmfEXu+XpN+kaNKZPjWVOC6rFf9bcmU
 MWurIEzJVPLvfSL70S8Qmn2JXcDpIxdiUafSVwvF/8IGHazTYsnCTfAz7fjr9czD3mWxbLn
 NeN0vVhRPo34vqXtGNrEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:40dddYyt2AM=:FkQ9SFtl/VcRFD2aD2lQlL
 B5FPG9q8gsWawUGqSbOGB3tW/6i7y2HXo+o1rbA9luLOoEoh7+snZWrW/1CGtQhPQPOSOs9ey
 IQGEoC+gsqng5UIbGTGPcK4IVySqV7O9ub1QrbCycu8qsSpL18pwHrlzPq9bSBuzu1VQJ0Q9j
 xEJSmwb/d62DY+N646ZUwXlgYWCpCHIT0HNV/youvHvf8ipCde+IITno4WX4pyA3wB30v1iiw
 EuFItt71ASIWJPfzxz1FC6QhUf9BcPG3E9zWVSr1nP56lNBxtg5QP1wFwAdQoISCoQ8692Bey
 dn6qE7WhFjtnaXjdNuPKxWCEWESWmQ/NL7lFQt/jFkANwPPp6iZzW1hyZIXx5/IDebwjGsX9O
 h4+V8lMmQgBNuAzz6We7oYOrfKUT+/MvSj0Q3zaXswjX/hy1arC3xAszmdxUl2dVhxYUShT+B
 bSKxVo4iuf6aEwHqTlEw2C5CP2Si8KzKIPae0e0jaPmm9inHCqPNpIaiZYzsynPYM+YUAbMlr
 M9EAB/sXGfopVvLoJI7kuzh6GsYJHP/ct6/fk08Zkk2w9chhUaTbMbRfUxTUTyDCHTBty1xce
 K0Ykt3I3lkpN40j0OTEQgei9M+6BC9Mu3gfxPemPGFjo3KQaVqIvaZ605GmoDRTrM+rmVBGR/
 jl5NifECnUUQCK9Px8IwJdsn+PWayreLHJaOcWq3UjXxHGZX9wAa8w8ZdmMRocdOTRAUJYxYO
 4j+D53IFIWmAgiNPJmyuue6gZ7ijpia0v0tpo9g9ZJ9cEpKdFYp0Bi+iPOUiGh2eEBPUtt5TC
 tBUPaZgYhIPYu4eMOdMnyqJudMzG2Ry9yZkXeo4aHhcLMBTBok=
Message-ID-Hash: TWILRLNGDTL2I7ZXIV4N5TWRSKPGNXWX
X-Message-ID-Hash: TWILRLNGDTL2I7ZXIV4N5TWRSKPGNXWX
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Arnd Bergmann <arnd@arndb.de>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TWILRLNGDTL2I7ZXIV4N5TWRSKPGNXWX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMjYsIDIwMjIgYXQgMjoyNCBQTSBDYWkgSHVvcWluZyA8Y2FpLmh1b3FpbmdA
bGludXguZGV2PiB3cm90ZToNCj4gT24gMjYgNOaciCAyMiAxMjo1MDo1MCwgQXJuZCBCZXJnbWFu
biB3cm90ZToNCg0KPiA+ID4gPiArI2RlZmluZSBEUk1fTlZETEFfU1VCTUlUICAgICAgICAgICAg
IDB4MDANCj4gPiA+ID4gKyNkZWZpbmUgRFJNX05WRExBX0dFTV9DUkVBVEUgMHgwMQ0KPiA+ID4g
PiArI2RlZmluZSBEUk1fTlZETEFfR0VNX01NQVAgICAgICAgICAgIDB4MDINCj4gPg0KPiA+IElz
IHRoaXMgYW4gYWN0dWFsIG1tYXAoKSBjYWxsLCBvciBzb21ldGhpbmcgdGhhdCBuZWVkcyB0byBi
ZSBkb25lIGJlZm9yZSB0aGUNCj4gPiBtbWFwKCk/IElzIHRoZSAnaGFuZGxlJyBhIGZpbGUgZGVz
Y3JpcHRvciBvciBzb21lIGludGVybmFsIG51bWJlcj8NCj4gSXQncyBhbiBnZW0gb2JqZWN0IG1t
YXAgd2hpY2ggY2FsbHMgZHJtX2dlbV9kdW1iX21hcF9vZmZzZXQoKSBpbnNpZGUgYW5kDQo+IHRo
ZSBoYW5kbGUgaXMgZ2VtIG9iamVjdCBoYW5kbGUuDQoNCk9rLCB0aGFua3MgZm9yIHRoZSBjbGFy
aWZpY2F0aW9uLiBJIHNlZSB0aGF0IG90aGVyIGRyaXZlcnMgaGF2ZSB0aGUNCmV4YWN0IHNhbWUg
dGhpbmcsDQpzbyBJIGFzc3VtZSBpdCdzIGZpbmUgZm9yIGRyaXZlcnMvZ3B1LyB0aGVuLCBldmVu
IGlmIGl0IHdvdWxkIGJlIGEgYml0IG9kZCBmb3INCm90aGVyIHN1YnN5c3RlbXMuDQoNCiAgICAg
ICBBcm5kDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
