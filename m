Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFFD508FDC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 20:56:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B9BB4046B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 18:56:46 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id 29AA53EBF8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Apr 2022 18:56:41 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id lc2so5366303ejb.12
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Apr 2022 11:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rc0pPwaP6/47w0P3YZ39eMLVgRn/8HQa1EN8gwRIGPs=;
        b=cmErzdTGtahwYRQP00Qx8ZhwKKlMefoOYkcL5s+3xGq3JNVsS/YzcT3ZAxRoU+OnB4
         Fvu4mS+ZQeWtA88hbuNOPIUv9KPSuSzmrdD6Jlfnd6b+tSHT2NlftqPlRufBHvi9tMc2
         loSjNnChoqebzllejBYgyAhkRSGLI3PCNbTbGPCjMCKVg4LE2dQPoCVGHM3jECncMctU
         IYggO6Zr8mhmCjUIPHb9H3vbiDHEPEjT/WXKJNUvplY7zVVI7teffHrjweDk2osj+f3P
         XkkBMv24FTjxyGvP7mVVyU9y9/awljahl+gICqSG3mdp1b8uKhkc7YI095oI7p3pldf0
         Evpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rc0pPwaP6/47w0P3YZ39eMLVgRn/8HQa1EN8gwRIGPs=;
        b=3Fm9yOvKqVOPpaKugLZvZro27JSl+kpk6FQxZB/M0O6WizfI3zwJn56W+1S7UbElPP
         L/ig8HSaMbX/dxofDoiiA50LQk5GSFG0OvqGIRrR8rabHsUKnoWrQ4ZhGI0I78QhZZxH
         1X9t13PphMBPI6BQTVJgMByADL0romS1VV6I10XURLy/lcvsgvQgP6JISHXMZxj4+bXj
         6WzmgaMGjx5xVZS7+ON1M2BG7tkdq2NgdidpJbCQpKuMR5iDv12yKCepXcEWxM06WAsf
         MkMJPtWEb4bKz99xxJUZfJ9WWNzzgS7h72vmbwk/rsNjWH5chTLzk4LZHi4RIVKdfQEF
         /rWw==
X-Gm-Message-State: AOAM532Q7gBjup9eMl2X0JhgFp9A8GUf++EmqXWCphlALNLutWr1FLep
	n9KnFglHPC0IQmCgszE/qf75rGOeAwk=
X-Google-Smtp-Source: ABdhPJymoss9KS5UEweBNeuSGQfdIi8XFSwbjs/XNcQRdCopeJCWXgyfUb9ZXOzrmQgQ0Um++2aN9Q==
X-Received: by 2002:a17:906:31c2:b0:6e8:6e8b:cbe4 with SMTP id f2-20020a17090631c200b006e86e8bcbe4mr20179080ejf.293.1650481000148;
        Wed, 20 Apr 2022 11:56:40 -0700 (PDT)
Received: from ?IPV6:2a02:908:1252:fb60:425d:2971:45fa:ac5d? ([2a02:908:1252:fb60:425d:2971:45fa:ac5d])
        by smtp.gmail.com with ESMTPSA id r3-20020aa7d583000000b00420a8b66566sm10414324edq.97.2022.04.20.11.56.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 11:56:39 -0700 (PDT)
Message-ID: <ac12f900-fb47-37d6-9a1c-ac44bc711069@gmail.com>
Date: Wed, 20 Apr 2022 20:56:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <baa19a2d-6ad9-63ea-20f4-284a794f8998@amd.com>
Message-ID-Hash: QKQFFJDZ5AFBDIPCEDRDSOJ5LENTV6OT
X-Message-ID-Hash: QKQFFJDZ5AFBDIPCEDRDSOJ5LENTV6OT
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/15] dma-buf & drm/amdgpu: remove dma_resv workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QKQFFJDZ5AFBDIPCEDRDSOJ5LENTV6OT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDQuMjIgdW0gMjA6NDkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBBbSAyMC4w
NC4yMiB1bSAyMDo0MSBzY2hyaWViIFphY2sgUnVzaW46DQo+PiBPbiBXZWQsIDIwMjItMDQtMjAg
YXQgMTk6NDAgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gQW0gMjAuMDQuMjIg
dW0gMTk6Mzggc2NocmllYiBaYWNrIFJ1c2luOg0KPj4+PiBPbiBXZWQsIDIwMjItMDQtMjAgYXQg
MDk6MzcgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+PiDimqAgRXh0ZXJuYWwg
RW1haWwNCj4+Pj4+DQo+Pj4+PiBIaSBaYWNrLA0KPj4+Pj4NCj4+Pj4+IEFtIDIwLjA0LjIyIHVt
IDA1OjU2IHNjaHJpZWIgWmFjayBSdXNpbjoNCj4+Pj4+PiBPbiBUaHUsIDIwMjItMDQtMDcgYXQg
MTA6NTkgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+Pj4+IFJld29yayB0aGUg
aW50ZXJuYWxzIG9mIHRoZSBkbWFfcmVzdiBvYmplY3QgdG8gYWxsb3cgYWRkaW5nDQo+Pj4+Pj4+
IG1vcmUNCj4+Pj4+Pj4gdGhhbg0KPj4+Pj4+PiBvbmUNCj4+Pj4+Pj4gd3JpdGUgZmVuY2UgYW5k
IHJlbWVtYmVyIGZvciBlYWNoIGZlbmNlIHdoYXQgcHVycG9zZSBpdCBoYWQuDQo+Pj4+Pj4+DQo+
Pj4+Pj4+IFRoaXMgYWxsb3dzIHJlbW92aW5nIHRoZSB3b3JrYXJvdW5kIGZyb20gYW1kZ3B1IHdo
aWNoIHVzZWQgYQ0KPj4+Pj4+PiBjb250YWluZXINCj4+Pj4+Pj4gZm9yDQo+Pj4+Pj4+IHRoaXMg
aW5zdGVhZC4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+Pj4+PiBSZXZpZXdlZC1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCj4+Pj4+Pj4gQ2M6IGFtZC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+Pj4+Pj4gYWZhaWN0IHRoaXMgY2hhbmdlIGJyb2tlIHZtd2dm
eCB3aGljaCBub3cga2VybmVsIG9vcHMgcmlnaHQNCj4+Pj4+PiBhZnRlcg0KPj4+Pj4+IGJvb3Qu
DQo+Pj4+Pj4gSSBoYXZlbid0IGhhZCB0aGUgdGltZSB0byBsb29rIGludG8gaXQgeWV0LCBzbyBJ
J20gbm90IHN1cmUNCj4+Pj4+PiB3aGF0J3MNCj4+Pj4+PiB0aGUNCj4+Pj4+PiBwcm9ibGVtLiBJ
J2xsIGxvb2sgYXQgdGhpcyB0b21vcnJvdywgYnV0IGp1c3QgaW4gY2FzZSB5b3UgaGF2ZQ0KPj4+
Pj4+IHNvbWUNCj4+Pj4+PiBjbHVlcywgdGhlIGJhY2t0cmFjZSBmb2xsb3dzOg0KPj4+Pj4gdGhh
dCdzIGEga25vd24gaXNzdWUgYW5kIHNob3VsZCBhbHJlYWR5IGJlIGZpeGVkIHdpdGg6DQo+Pj4+
Pg0KPj4+Pj4gY29tbWl0IGQ3MmRjYmU5ZmNlNTA1MjI4ZGFlNDNiZWY5ZGE4ZjJiNzA3ZDFiM2QN
Cj4+Pj4+IEF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPj4+Pj4gRGF0ZTrCoMKgIE1vbiBBcHIgMTEgMTU6MjE6NTkgMjAyMiArMDIwMA0KPj4+PiBV
bmZvcnR1bmF0ZWx5IHRoYXQgZG9lc24ndCBzZWVtIHRvIGJlIGl0LiBUaGUgYmFja3RyYWNlIGlz
IGZyb20gdGhlDQo+Pj4+IGN1cnJlbnQgKGFzIG9mIHRoZSB0aW1lIG9mIHNlbmRpbmcgb2YgdGhp
cyBlbWFpbCkgZHJtLW1pc2MtbmV4dCwNCj4+Pj4gd2hpY2gNCj4+Pj4gaGFzIHRoaXMgY2hhbmdl
LCBzbyBpdCdzIHNvbWV0aGluZyBlbHNlLg0KPj4+IE9rLCB0aGF0J3Mgc3RyYW5nZS4gSW4gdGhp
cyBjYXNlIEkgbmVlZCB0byBpbnZlc3RpZ2F0ZSBmdXJ0aGVyLg0KPj4+DQo+Pj4gTWF5YmUgVk1X
R0ZYIGlzIGFkZGluZyBtb3JlIHRoYW4gb25lIGZlbmNlIGFuZCB3ZSBhY3R1YWxseSBuZWVkIHRv
DQo+Pj4gcmVzZXJ2ZSBtdWx0aXBsZSBzbG90cy4NCj4+IFRoaXMgbWlnaHQgYmUgaGVscGVyIGNv
ZGUgaXNzdWUgd2l0aCBDT05GSUdfREVCVUdfTVVURVhFUyBzZXQuIE9uIA0KPj4gdGhhdCBjb25m
aWcNCj4+IGRtYV9yZXN2X3Jlc2V0X21heF9mZW5jZXMgZG9lczoNCj4+IMKgwqDCoCBmZW5jZXMt
Pm1heF9mZW5jZXMgPSBmZW5jZXMtPm51bV9mZW5jZXM7DQo+PiBGb3Igc29tZSBvYmplY3RzIG51
bV9mZW5jZXMgaXMgMCBhbmQgc28gYWZ0ZXIgbWF4X2ZlbmNlcyBhbmQgDQo+PiBudW1fZmVuY2Vz
IGFyZSBib3RoIDAuDQo+PiBBbmQgdGhlbiBCVUdfT04obnVtX2ZlbmNlcyA+PSBtYXhfZmVuY2Vz
KSBpcyB0cmlnZ2VyZWQuDQo+DQo+IFllYWgsIGJ1dCB0aGF0J3MgZXhwZWN0ZWQgYmVoYXZpb3Iu
DQo+DQo+IFdoYXQncyBub3QgZXhwZWN0ZWQgaXMgdGhhdCBtYXhfZmVuY2VzIGlzIHN0aWxsIDAg
KG9yIGVxdWFsIHRvIG9sZCANCj4gbnVtX2ZlbmNlcykgd2hlbiBWTVdHRlggdHJpZXMgdG8gYWRk
IGEgbmV3IGZlbmNlLiBUaGUgZnVuY3Rpb24gDQo+IHR0bV9ldV9yZXNlcnZlX2J1ZmZlcnMoKSBz
aG91bGQgaGF2ZSByZXNlcnZlZCBhdCBsZWFzdCBvbmUgZmVuY2Ugc2xvdC4NCj4NCj4gU28gdGhl
IHVuZGVybHlpbmcgcHJvYmxlbSBpcyB0aGF0IGVpdGhlciB0dG1fZXVfcmVzZXJ2ZV9idWZmZXJz
KCkgd2FzIA0KPiBuZXZlciBjYWxsZWQgb3IgVk1XR0ZYIHRyaWVkIHRvIGFkZCBtb3JlIHRoYW4g
b25lIGZlbmNlLg0KDQoNClRvIGZpZ3VyZSBvdXQgd2hhdCBpdCBpcyBjb3VsZCB5b3UgdHJ5IHRo
ZSBmb2xsb3dpbmcgY29kZSBmcmFnbWVudDoNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS92bXdnZngvdm13Z2Z4X3ZhbGlkYXRpb24uYyANCmIvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92
bXdnZnhfdmFsaWRhdGlvbi5jDQppbmRleCBmNDY4OTEwMTJiZTMuLmEzNmY4OWQzZjM2ZCAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3ZhbGlkYXRpb24uYw0KKysr
IGIvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdmFsaWRhdGlvbi5jDQpAQCAtMjg4LDcg
KzI4OCw3IEBAIGludCB2bXdfdmFsaWRhdGlvbl9hZGRfYm8oc3RydWN0IA0Kdm13X3ZhbGlkYXRp
b25fY29udGV4dCAqY3R4LA0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YWxfYnVm
LT5ibyA9IHR0bV9ib19nZXRfdW5sZXNzX3plcm8oJnZiby0+YmFzZSk7DQogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICghdmFsX2J1Zi0+Ym8pDQogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVTUkNIOw0KLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdmFsX2J1Zi0+bnVtX3NoYXJlZCA9IDA7DQorwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB2YWxfYnVmLT5udW1fc2hhcmVkID0gMTY7DQogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGxpc3RfYWRkX3RhaWwoJnZhbF9idWYtPmhlYWQsICZjdHgtPmJv
X2xpc3QpOw0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib19ub2RlLT5hc19tb2Ig
PSBhc19tb2I7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvX25vZGUtPmNwdV9i
bGl0ID0gY3B1X2JsaXQ7DQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPg0KPiBSZWdhcmRzLA0K
PiBDaHJpc3RpYW4uDQo+DQo+Pg0KPj4geg0KPj4NCj4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
