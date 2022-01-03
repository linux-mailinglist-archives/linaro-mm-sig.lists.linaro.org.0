Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CA14830FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 13:24:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA8BC3ED76
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 12:24:52 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 22D883ECB9
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Jan 2022 12:24:37 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id v10-20020a05600c214a00b00345e59928eeso14477479wml.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jan 2022 04:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=fPyh02WKyhlLdOzBJxhe/AtlHRa+RMJ3Fx1lN0POwGI=;
        b=jCfJIyv5VYDTqzr3GLGtL0BeIbN25t8cts/aGkGFVXFxxI2nkmwNrN/YKYniFKokGl
         T5jYBTHsPz0Op5SQG5n0AGMbkeZvGVaOr1gSJmcGyZPT5Tc+v4esBs/B9v5mETH0Lmp1
         /Jdn2+vuSMYiKSA3X2wo3gutG+lJY8VDXgbd6yBGdq/ruNpYs4r4j4Idkc5xGdeRmZc9
         xgdm0gUern3AH9tIRT3l6J2jHAyhYI3ZRO9EZLoNDbjmvpUljljZiMTiw5R/CTKaQrpq
         TSaOT+2bZsVFrpFF60N6L7LuUq5qb5cz9192VGVuVKp2/5ybm96q9vEx4O/WcdZaatej
         9HAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=fPyh02WKyhlLdOzBJxhe/AtlHRa+RMJ3Fx1lN0POwGI=;
        b=CsO3mp+sjmULcB+RFJ6kyZSGZUEsCSLWErFa7G+rf8LHozAQmUJbjyy6Gk53gxf1q4
         tTuXjU+bf8ObN1duVhojC3lZdTSZWahpDufKTRwuJXD3J3cXkPU9mGAS1P1lKY6wW/DM
         3UacpdnnRiBjIPJQI7jx/CEBrJv5kvebEDMY8QiHT91ewVBpm4Z6Po8AgtV7+g/+f12m
         oy/wIoqTSoLiQlUgLRLX21lYQLpQkLMrjs09K7h9Y7tzEgHQCLXKcZ9PHP9REUyErDGU
         g4Q/cOAYQ0dDL5kcRPdCtSiUufJNcba3dTwDV3lL5pOK+1PaC82wv8LCQ/l+CvWhHUGH
         bujg==
X-Gm-Message-State: AOAM532i0UcZtyLKqOWziB+Jx6RFbXxDpepRiLNUxJzxVYoGN/I/NAyh
	/GKyf61omx1pDObKOISw90e4Q0Pn4Cg=
X-Google-Smtp-Source: ABdhPJxFptxVTR9FMOpISbuLIGa/Nbhx38Xp92VKcc2aenJW0S8G6mDTOJ0duIdmv0C747lM25+H0A==
X-Received: by 2002:a05:600c:4e08:: with SMTP id b8mr38529644wmq.31.1641212676161;
        Mon, 03 Jan 2022 04:24:36 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:4bf5:8542:f955:f736? ([2a02:908:1252:fb60:4bf5:8542:f955:f736])
        by smtp.gmail.com with ESMTPSA id p11sm39567159wru.99.2022.01.03.04.24.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 04:24:35 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-12-christian.koenig@amd.com>
 <YcOapBWDYQj5hKRn@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <10dd0d62-b80a-f7ef-4964-e0e13fe12400@gmail.com>
Date: Mon, 3 Jan 2022 13:24:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YcOapBWDYQj5hKRn@phenom.ffwll.local>
Content-Language: en-US
Message-ID-Hash: MTHHAMYSPXDYSKICSWHICVJJNCAM6E2W
X-Message-ID-Hash: MTHHAMYSPXDYSKICSWHICVJJNCAM6E2W
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/24] drm/amdgpu: use dma_resv_for_each_fence for CS workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MTHHAMYSPXDYSKICSWHICVJJNCAM6E2W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDIyLjEyLjIxIHVtIDIyOjM3IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoNCj4gT24gVHVl
LCBEZWMgMDcsIDIwMjEgYXQgMDE6MzM6NThQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToNCj4+IEdldCB0aGUgd3JpdGUgZmVuY2UgdXNpbmcgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2Ug
aW5zdGVhZCBvZiBhY2Nlc3NpbmcNCj4+IGl0IG1hbnVhbGx5Lg0KPj4NCj4+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IC0tLQ0K
Pj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyB8IDkgKysrKysrLS0t
DQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+
Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMNCj4+IGluZGV4IDUzZTQw
N2VhNGM4OS4uN2ZhY2Q2MTRlNTBhIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2NzLmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9jcy5jDQo+PiBAQCAtMTI2OCw2ICsxMjY4LDggQEAgc3RhdGljIGludCBhbWRncHVf
Y3Nfc3VibWl0KHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwLA0KPj4gICAJYW1kZ3B1X2JvX2xp
c3RfZm9yX2VhY2hfZW50cnkoZSwgcC0+Ym9fbGlzdCkgew0KPj4gICAJCXN0cnVjdCBkbWFfcmVz
diAqcmVzdiA9IGUtPnR2LmJvLT5iYXNlLnJlc3Y7DQo+PiAgIAkJc3RydWN0IGRtYV9mZW5jZV9j
aGFpbiAqY2hhaW4gPSBlLT5jaGFpbjsNCj4+ICsJCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNv
cjsNCj4+ICsJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPj4gICANCj4+ICAgCQlpZiAoIWNo
YWluKQ0KPj4gICAJCQljb250aW51ZTsNCj4+IEBAIC0xMjc3LDkgKzEyNzksMTAgQEAgc3RhdGlj
IGludCBhbWRncHVfY3Nfc3VibWl0KHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwLA0KPj4gICAJ
CSAqIHN1Ym1pc3Npb24gaW4gYSBkbWFfZmVuY2VfY2hhaW4gYW5kIGFkZCBpdCBhcyBleGNsdXNp
dmUNCj4+ICAgCQkgKiBmZW5jZS4NCj4+ICAgCQkgKi8NCj4+IC0JCWRtYV9mZW5jZV9jaGFpbl9p
bml0KGNoYWluLCBkbWFfcmVzdl9leGNsX2ZlbmNlKHJlc3YpLA0KPj4gLQkJCQkgICAgIGRtYV9m
ZW5jZV9nZXQocC0+ZmVuY2UpLCAxKTsNCj4+IC0NCj4+ICsJCWRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlKCZjdXJzb3IsIHJlc3YsIGZhbHNlLCBmZW5jZSkgew0KPj4gKwkJCWJyZWFrOw0KPj4gKwkJ
fQ0KPj4gKwkJZG1hX2ZlbmNlX2NoYWluX2luaXQoY2hhaW4sIGZlbmNlLCBkbWFfZmVuY2VfZ2V0
KHAtPmZlbmNlKSwgMSk7DQo+IFVoIHRoaXMgbmVlZHMgYSBUT0RPLiBJJ20gYXNzdW1pbmcgeW91
J2xsIGZpeCB0aGlzIHVwIGxhdGVyIG9uIHdoZW4NCj4gdGhlcmUncyBtb3JlIHRoYW4gd3JpdGUg
ZmVuY2UsIGJ1dCBpbiBjYXNlIG9mIGJpc2VjdCBvciB3aGF0ZXZlciB0aGlzIGlzIGENCj4gYml0
IHRvbyBjbGV2ZXIuIExpa2UgeW91IGp1c3QgcmVwbGFjZSBvbmUgImRpZyBhcm91bmQgaW4gZG1h
LXJlc3YNCj4gaW1wbGVtZW50YXRpb24gZGV0YWlscyIgd2l0aCBvbmUgdGhhdCdzIG5vdCBldmVu
IGEgZG9jdW1lbnRlZCBpbnRlcmZhY2UNCj4gOi0pDQoNCkFoLCB5ZXMuIFRoZXJlIGlzIGEgcmF0
aGVyIGJpZyBUT0RPIGp1c3QgYWJvdmUgdGhpcywgYnV0IEkgc2hvdWxkIA0KcHJvYmFibHkgbWFr
ZSB0aGF0IGV2ZW4gbW9yZSBzdHJvbmdlci4NCg0KPg0KPiBXaXRoIGFuIGFkZXF1YXRlbHkgbG91
ZCBjb21tZW50IGFkZGVkIGludGVyaW06DQo+DQo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4+
ICAgCQlyY3VfYXNzaWduX3BvaW50ZXIocmVzdi0+ZmVuY2VfZXhjbCwgJmNoYWluLT5iYXNlKTsN
Cj4+ICAgCQllLT5jaGFpbiA9IE5VTEw7DQo+PiAgIAl9DQo+PiAtLSANCj4+IDIuMjUuMQ0KPj4N
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
