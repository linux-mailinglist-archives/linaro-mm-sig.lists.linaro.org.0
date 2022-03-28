Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0674E9285
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 12:28:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 805123EF64
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 10:28:39 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id B47193EA5B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 10:28:34 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id a17so16332957edm.9
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 03:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2fnW0hKm3/LoNJLASktWawEV8gjSA8FRX1R6A2wJmoc=;
        b=AcbakU3oL6MVbrDUIllFrtKNdjGA58pmZ+0+Y+aRmRPr7qGEMAwr3+CnifI3kPcwMD
         lVFQZkUGL+hNuNfowrtyQIQl7V2AJnr/FM1UAVCnU9xaCKIF41NfF4XCcDcy4xrxREyn
         QVU0rtwTkF6CpqGBj0+urYVS9BGbbPStvFDgLXnF4sqTMC4aA0LVzXVbo732l9MoUuvP
         YW0tFpvCKngyCg6/Sv0k+Q9Z6GuvSGE3O9jxlX9n37FnL1oEI3tBJFmP9ylrn4cblPAt
         b/aA1KdvPicLOs8/a8bIF0SDH7pREkps3Hg/58ZLwwlfUzISlMrMCCtmbfGK16hIEaza
         58cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2fnW0hKm3/LoNJLASktWawEV8gjSA8FRX1R6A2wJmoc=;
        b=TwBqLCepTWvNTJc+0k1ROo4zWOWwHeL4t5trLWhi99bzcI6G5OtdQotj38pIT6V95G
         roKN7fvGhX536Vduo+gRxa2atpsYeWA5Ewi+CIlh563qfCVJfjvFZmk1+simlu3GgUV6
         AGiWDfHOyKIbjddEIRZxZ2KaVk9Mp2ZSkFDGqDfKOeawIuVF/DYdhR6PhW3kpAcOoLbF
         ATEzgZm3PIsRF9bBgJixO1TaYjHhmo1+ISa29zE9o31uCRKlXiGbxFewqAnsSwJOpx66
         ueWU9i/b8GM+UM1lvRHnMjMJB7e5kxwDOp/2ra38DusLNmC89mJb0xkrpImaa6xRq6Tb
         Cxzg==
X-Gm-Message-State: AOAM5338PfHMlrnfrekbRkrPntpUoTQw4swlYhNR5ocBFqqyDdd+aJsm
	4k9wDvM0+LfZa+h0liTuEnM=
X-Google-Smtp-Source: ABdhPJwCTNosh9GI+S3j5GevCu9iAaWtBDkxqy67gDMWi3yh/+yzOHoB574Ou1NqeC8q0+4VIzZU1w==
X-Received: by 2002:a05:6402:3689:b0:419:d380:ddbc with SMTP id ej9-20020a056402368900b00419d380ddbcmr8454741edb.230.1648463313648;
        Mon, 28 Mar 2022 03:28:33 -0700 (PDT)
Received: from ?IPV6:2a02:908:1252:fb60:4276:c469:b15d:9dea? ([2a02:908:1252:fb60:4276:c469:b15d:9dea])
        by smtp.gmail.com with ESMTPSA id u4-20020a170906780400b006ce69ff6050sm5729145ejm.69.2022.03.28.03.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 03:28:32 -0700 (PDT)
Message-ID: <338d0623-1161-c958-101f-dc7d8ef12f99@gmail.com>
Date: Mon, 28 Mar 2022 12:28:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <Yj3e0QjbnPoG7n4I@intel.com> <35cc3bd5-c0ab-0bd1-9603-4971234fbcd6@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <35cc3bd5-c0ab-0bd1-9603-4971234fbcd6@amd.com>
Message-ID-Hash: 6TAUYVVAVB37PI6K4TKFR3UWVORP4D2J
X-Message-ID-Hash: 6TAUYVVAVB37PI6K4TKFR3UWVORP4D2J
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: add dma_fence_unwrap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6TAUYVVAVB37PI6K4TKFR3UWVORP4D2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgVmlsbGUgJiBEYW5pZWwsDQoNCkFtIDI1LjAzLjIyIHVtIDE2OjI4IHNjaHJpZWIgQ2hyaXN0
aWFuIEvDtm5pZzoNCj4gQW0gMjUuMDMuMjIgdW0gMTY6MjUgc2NocmllYiBWaWxsZSBTeXJqw6Rs
w6Q6DQo+PiBPbiBGcmksIE1hciAxMSwgMjAyMiBhdCAxMjowMjo0M1BNICswMTAwLCBDaHJpc3Rp
YW4gS8O2bmlnIHdyb3RlOg0KPj4+IEFkZCBhIGdlbmVyYWwgcHVycG9zZSBoZWxwZXIgdG8gZGVl
cCBkaXZlIGludG8gDQo+Pj4gZG1hX2ZlbmNlX2NoYWluL2RtYV9mZW5jZV9hcnJheQ0KPj4+IHN0
cnVjdHVyZXMgYW5kIGl0ZXJhdGUgb3ZlciBhbGwgdGhlIGZlbmNlcyBpbiB0aGVtLg0KPj4+DQo+
Pj4gVGhpcyBpcyB1c2VmdWwgd2hlbiB3ZSBuZWVkIHRvIGZsYXR0ZW4gb3V0IGFsbCBmZW5jZXMg
aW4gdGhvc2UgDQo+Pj4gc3RydWN0dXJlcy4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IE9uZSBvZiB0aGUgZG1h
LWJ1ZiBwYXRjaGVzIHRvb2sgZG93biBJbnRlbCBDSS4gTG9va3MgbGlrZSBldmVyeQ0KPj4gbWFj
aGluZSBvb3BzZXMgaW4gc29tZSBzeW5jX2ZpbGUgdGhpbmcgbm93Og0KPj4gPDE+W8KgIDI2MC40
NzAwMDhdIEJVRzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczogDQo+
PiAwMDAwMDAwMDAwMDAwMDEwDQo+PiA8MT5bwqAgMjYwLjQ3MDAyMF0gI1BGOiBzdXBlcnZpc29y
IHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlDQo+PiA8MT5bwqAgMjYwLjQ3MDAyNV0gI1BGOiBl
cnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBwYWdlDQo+PiA8Nj5bwqAgMjYwLjQ3MDAz
MF0gUEdEIDAgUDREIDANCj4+IDw0PlvCoCAyNjAuNDcwMDM1XSBPb3BzOiAwMDAwIFsjMV0gUFJF
RU1QVCBTTVAgTk9QVEkNCj4+IDw0PlvCoCAyNjAuNDcwMDQwXSBDUFU6IDAgUElEOiA1MzA2IENv
bW06IGNvcmVfaG90dW5wbHVnIE5vdCB0YWludGVkIA0KPj4gNS4xNy4wLUNJLUNJX0RSTV8xMTQw
NSsgIzENCj4+IDw0PlvCoCAyNjAuNDcwMDQ5XSBIYXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3Jh
dGlvbiBKYXNwZXIgTGFrZSBDbGllbnQgDQo+PiBQbGF0Zm9ybS9KYXNwZXJsYWtlIEREUjQgU09E
SU1NIFJWUCwgQklPUyANCj4+IEpTTFNGV0kxLlIwMC4yMzg1LkQwMi4yMDEwMTYwODMxIDEwLzE2
LzIwMjANCj4+IDw0PlvCoCAyNjAuNDcwMDU4XSBSSVA6IDAwMTA6ZG1hX2ZlbmNlX2FycmF5X2Zp
cnN0KzB4MTkvMHgyMA0KDQpJJ3ZlIGxvb2tlZCBpbnRvIHRoaXMgYW5kIHRoZSByb290IGNhdXNl
IHNlZW1zIHRvIGJlIHRoYXQgdGhlIG5ldyBjb2RlIA0KZG9lc24ndCBoYW5kbGUgZG1hX2ZlbmNl
X2FycmF5cyB3aXRoIHplcm8gZWxlbWVudHMuDQoNClRoYXQgaXMgcmF0aGVyIGVhc3kgdG8gZml4
LCBidXQgYSBkbWFfZmVuY2VfYXJyYXkgd2l0aCB6ZXJvIG51bWJlciBvZiANCmVsZW1lbnRzIGlz
IG1vc3QgbGlrZWx5IGEgYnVnIGJlY2F1c2UgdW5kZXIgdGhlIHdyb25nIGNpcmN1bXN0YW5jZXMg
aXQgDQpjYW4gY3JlYXRlIGEgZG1hX2ZlbmNlIGluc3RhbmNlIHdoaWNoIHdpbGwgbmV2ZXIgc2ln
bmFsLg0KDQpJJ3ZlIHNlbmQgb3V0IGEgcGF0Y2ggb24gRnJpbmRheSAoW1BBVENIXSBkbWEtYnVm
OiBXSVAgDQpkbWFfZmVuY2VfYXJyYXlfZmlyc3QgZml4KSB3aGljaCBhdm9pZHMgdGhlIGNyYXNo
IGFuZCBwcmludHMgYSB3YXJuaW5nIA0KaWYgYW55Ym9keSB0cmllcyB0byBjcmVhdGUgYSBkbWFf
ZmVuY2VfYXJyYXkgd2l0aCB6ZXJvIGxlbmd0aC4NCg0KQ2FuIHlvdSB0ZXN0IHRoaXM/DQoNClRo
YW5rcyBpbiBhZHZhbmNlLA0KQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
