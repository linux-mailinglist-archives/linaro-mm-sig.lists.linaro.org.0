Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 60853509D5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 12:17:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EA3F47FAE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 10:17:43 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 2F1373EA4A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Apr 2022 10:17:39 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id ks6so9070905ejb.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Apr 2022 03:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=o9Uwrnr+J/6PoPyTPGmYSGkDODoDuGBLtRMs0gUpXJk=;
        b=Tw1xmngZVfgCT7TLBstw8nQFpll9Eq0dUwiVJsGbsS/YNeQ/L4ksc7k4vKU2gYhMG4
         WIP/P3GVtSM8yQUBvFu0wzQ78CvU/jVksuhYepDhTmaFzetdJPma6K/6biJfMh2ou1mV
         Y8YlaBN2lk5t/HxXOih3jiSyY0LmmKxksUQfDKQigduQaJfdeFZYGTZtfX6lrtc+7PgK
         nU0GqecKph+MxFN0nxH2edRAv/7RwdPu1D7V/yjTDsOtz0gs4xjJISOSJZgsCOOt6zRZ
         DFqR9U/lLaDZcgzIAgXpFM0KtrraQjTO95+6FFitzuEIK1qjfmZ2ZOUfzFuf61KKx9nZ
         ynZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o9Uwrnr+J/6PoPyTPGmYSGkDODoDuGBLtRMs0gUpXJk=;
        b=6V+ORE+EBfjUTaB5SkceT1fkuVeNcD8Zt7R4QuAYfAyRcFlR60KeZyQEm9sdqhQjPO
         3PwmWPgOekPZ0n0vVEpyaKcj9zC9+SlpdeEOYBSn5L/MutyZoCRedrNhnjSv2M29MXcZ
         n/WG9V3d9X8qb0HlJRqYpUVyKe8cceZhdixrt1j1mLMTfC1MNFvrjZex0JNed9DZIZDt
         Ny+K00TycRQFaxe1wWFgPksT8tedeuCb8wVWiS3Mf71TZdBIerMfjqCpUOyW+loATrLX
         GF9mb/7MegWUfz79nde1m4JYxErFGO3z7YfcrCG/yzjjA64Lx002QHFcu8Ml2lWNi05D
         BNHw==
X-Gm-Message-State: AOAM530y/B074dDv7BGfY2v6/nGcmfAB+KKLQYBvuznws6LlapqtVCMg
	vB7jepHjStZM42NAobuUNhY=
X-Google-Smtp-Source: ABdhPJwfX3c1ZjiNGKR8X3C8C8qD7akq9C+VUDTYnVQCMx9rkiXUpNWEIgmkZxnq8ehfCKoNipcwXg==
X-Received: by 2002:a17:907:7da3:b0:6f0:d63:69bd with SMTP id oz35-20020a1709077da300b006f00d6369bdmr5677073ejc.289.1650536258169;
        Thu, 21 Apr 2022 03:17:38 -0700 (PDT)
Received: from ?IPV6:2a02:908:1252:fb60:74ec:39fd:9a7c:7ff3? ([2a02:908:1252:fb60:74ec:39fd:9a7c:7ff3])
        by smtp.gmail.com with ESMTPSA id a1-20020a1709063e8100b006ce06ed8aa7sm7745262ejj.142.2022.04.21.03.17.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 03:17:37 -0700 (PDT)
Message-ID: <6cd3571c-099b-df43-a7e0-243aba11726b@gmail.com>
Date: Thu, 21 Apr 2022 12:17:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Zack Rusin <zackr@vmware.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-4-christian.koenig@amd.com>
 <60ab53ce1ce1333f5e6a15fc83c3c05cd9bd1084.camel@vmware.com>
 <4c2e9414-3926-c9d7-8482-0d6d9191c2ac@amd.com>
 <fe8916b53b0f0101e6616d23eb6896399b092d58.camel@vmware.com>
 <54d00af9-9384-5794-490c-7d4cafe086b6@gmail.com>
 <e1c60e2a1478c406f515d51608a751fdc9feff3a.camel@vmware.com>
 <baa19a2d-6ad9-63ea-20f4-284a794f8998@amd.com>
 <ac12f900-fb47-37d6-9a1c-ac44bc711069@gmail.com>
 <5d699ffa903b5e54e8660367c3b46f07c86f4c55.camel@vmware.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <5d699ffa903b5e54e8660367c3b46f07c86f4c55.camel@vmware.com>
Message-ID-Hash: UOWGG7ROE63CADBCTYOLFF52GPUY2KXD
X-Message-ID-Hash: UOWGG7ROE63CADBCTYOLFF52GPUY2KXD
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/15] dma-buf & drm/amdgpu: remove dma_resv workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UOWGG7ROE63CADBCTYOLFF52GPUY2KXD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDQuMjIgdW0gMjE6Mjggc2NocmllYiBaYWNrIFJ1c2luOg0KPiBbU05JUF0NCj4+IFRv
IGZpZ3VyZSBvdXQgd2hhdCBpdCBpcyBjb3VsZCB5b3UgdHJ5IHRoZSBmb2xsb3dpbmcgY29kZSBm
cmFnbWVudDoNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdn
ZnhfdmFsaWRhdGlvbi5jDQo+PiBiL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3ZhbGlk
YXRpb24uYw0KPj4gaW5kZXggZjQ2ODkxMDEyYmUzLi5hMzZmODlkM2YzNmQgMTAwNjQ0DQo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF92YWxpZGF0aW9uLmMNCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3ZhbGlkYXRpb24uYw0KPj4gQEAgLTI4OCw3
ICsyODgsNyBAQCBpbnQgdm13X3ZhbGlkYXRpb25fYWRkX2JvKHN0cnVjdA0KPj4gdm13X3ZhbGlk
YXRpb25fY29udGV4dCAqY3R4LA0KPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHZhbF9idWYtPmJvID0gdHRtX2JvX2dldF91bmxlc3NfemVybygmdmJvLT5iYXNlKTsNCj4+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIXZhbF9idWYtPmJvKQ0KPj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVT
UkNIOw0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsX2J1Zi0+bnVtX3NoYXJl
ZCA9IDA7DQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YWxfYnVmLT5udW1fc2hh
cmVkID0gMTY7DQo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGlzdF9hZGRf
dGFpbCgmdmFsX2J1Zi0+aGVhZCwgJmN0eC0+Ym9fbGlzdCk7DQo+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgYm9fbm9kZS0+YXNfbW9iID0gYXNfbW9iOw0KPj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvX25vZGUtPmNwdV9ibGl0ID0gY3B1X2JsaXQ7DQo+
IEZhaWxzIHRoZSBzYW1lIEJVR19PTiB3aXRoIG51bV9mZW5jZXMgYW5kIG1heF9mZW5jZXMgPT0g
MC4NCg0KVGhhbmtzIGZvciB0ZXN0aW5nIHRoaXMuDQoNClNvIHRoZSBidWZmZXIgb2JqZWN0IGlz
IG5vdCByZXNlcnZlZCB0aHJvdWdoIA0Kdm13X3ZhbGlkYXRpb25fYm9fcmVzZXJ2ZSgpLCBidXQg
Y29tZXMgZnJvbSBzb21ld2hlcmUgZWxzZS4gDQpVbmZvcnR1bmF0ZWx5IEkgYWJzb2x1dGVseSBj
YW4ndCBmaW5kIHdoZXJlIHRoYXQncyBjb21pbmcgZnJvbS4NCg0KRG8geW91IGhhdmUgc29tZSBk
b2N1bWVudGF0aW9uIGhvd3RvIHNldHVwIHZtd2dmeD8gRS5nLiBzYW1wbGUgVk0gd2hpY2ggDQpJ
IGNhbiBkb3dubG9hZCBzb21ld2hlcmUgZXRjLi4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+
DQo+IHoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
