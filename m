Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 821A74ECBF0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 20:25:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9813D3EC60
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 18:24:59 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by lists.linaro.org (Postfix) with ESMTPS id B96D73EC2C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Mar 2022 18:24:55 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id e16so37265030lfc.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Mar 2022 11:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AdJ8ve3qHqvvd1c/19/c++F2nvBXXpoJRywWLK1c6GA=;
        b=VzF/bjKqvvZH4+Vs+UicO3gdz9nsJEXm+dcg6UGPbVU/yoLYmVm1YueOWKdDhZNgix
         FY/hHbfESYn9c5fsPZWbC3dGHSEHNdwzq2Na4EsfiTXsSN3f9AEGxQ7WX6R9UspJpGIg
         GjAPpxb4luejAubvpVp9DqPmBzV/k+Uifz+4m6bxdYb3PW5nh+qg64xIFbJpwXxDGbma
         qoDOQnqngwklcxTK5GIuOH1jbuWUIQruO6S704/oPf42LwNUqsE0xxqSPXlF1vvPC2Cb
         1wypDNZE3Rt183RhPwh9ASNC2gk7NFZ98o916r+4FtmsWO03lLUfD25XLuDJcZGZ57IA
         e1hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AdJ8ve3qHqvvd1c/19/c++F2nvBXXpoJRywWLK1c6GA=;
        b=HNSIjXpojT3olOjlW0r/5MMs9KMBYdAlxEBx01D0nYrumGEXvn5PNScxdyrwLVNSpC
         0jU0eaVkxKLoGGBk5EcZIPx8n+uPRYnd45t5CKPikTupAWSZd4K5vQXQdfcahzjm9nko
         5URH4GZgd+A7rS76Dclp6nvHZT63nWLuLVeV5wb0kRAwkaK8hi27ZO6o4chIso54vd0r
         bkIRz2EMfpaDTdyjzZQOVmimX2etqEHy32K+ZrCbU/ahrSMGa+Z/LVVbvK03JIzCt2M+
         8AEc512hkuuVpF/4bqUN1twDzBj7Ytxz4ldqAVZ3RKmAs+gt7RLGjMGHrW1HRxgxBRuY
         ahOQ==
X-Gm-Message-State: AOAM533zi5EFgyS8xEhGCjNgRGe3hXKh0zGezxHupwFGcUbncJi5dQt2
	NpHKK6ho5mCvx3Y7tO4uhMw=
X-Google-Smtp-Source: ABdhPJy/021JKKynej47Sox209kOnGV7+kHTY+Ir+6FxgM4yrCyy/XHL3xiVimSA0AHiJ0FmcxKMmw==
X-Received: by 2002:a19:4f5d:0:b0:44a:2905:84ea with SMTP id a29-20020a194f5d000000b0044a290584eamr7774216lfk.120.1648664694266;
        Wed, 30 Mar 2022 11:24:54 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.67.247])
        by smtp.gmail.com with ESMTPSA id o3-20020a198c03000000b00448b7b1780csm2410866lfd.63.2022.03.30.11.24.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 11:24:53 -0700 (PDT)
Message-ID: <ecf7ccdd-0d6f-9407-6778-ae7f0a6bf538@gmail.com>
Date: Wed, 30 Mar 2022 21:24:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com,
 daniel.vetter@ffwll.ch
References: <20220329221425.22691-1-paskripkin@gmail.com>
 <8af3d213-6cb7-a021-c198-e1bd37c47e7c@gmail.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <8af3d213-6cb7-a021-c198-e1bd37c47e7c@gmail.com>
Message-ID-Hash: IQ6IH7RUXEJHTUANI4DSAVYNO6S62G4W
X-Message-ID-Hash: IQ6IH7RUXEJHTUANI4DSAVYNO6S62G4W
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH next] dma-buf/sync-file: do not allow zero size allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IQ6IH7RUXEJHTUANI4DSAVYNO6S62G4W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiAzLzMwLzIyIDEwOjA5LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBUaGF0IHByb2JsZW0gaXMgYWxyZWFkeSBmaXhlZCB3aXRoIHBhdGNoIDIxZDEzOWQ3M2Y3
NyBkbWEtYnVmL3N5bmMtZmlsZToNCj4gZml4IGxvZ2ljIGVycm9yIGluIG5ldyBmZW5jZSBtZXJn
ZSBjb2RlLg0KPiANCj4gQW0gMzAuMDMuMjIgdW0gMDA6MTQgc2NocmllYiBQYXZlbCBTa3JpcGtp
bjoNCj4+IHN5emJvdCByZXBvcnRlZCBHUEYgaW4gZG1hX2ZlbmNlX2FycmF5X2ZpcnN0KCksIHdo
aWNoIGlzIGNhdXNlZCBieQ0KPj4gZGVyZWZlcmVuY2luZyBaRVJPX1BUUiBpbiBkbWEtYnVmIGlu
dGVybmFscy4NCj4+DQo+PiBaRVJPX1BUUiB3YXMgZ2VuZXJhdGVkIGluIHN5bmNfZmlsZV9tZXJn
ZSgpLiBUaGlzIGZ1bmN0dWlvbiB0cmllcyB0bw0KPj4gcmVkdWNlIGFsbG9jYXRpb24gc2l6ZSwg
YnV0IGRvZXMgbm90IGNoZWNrIGlmIGl0IHJlZHVjaW5nIHRvIDAuDQo+IA0KPiBUaGlzIGlzIGFj
dHVhbGx5IHBlcmZlY3RseSBvay4gVGhlIGNvZGUgYWJvdmUgc2hvdWxkIGhhdmUgcHJldmVudGVk
IHRoZQ0KPiBzaXplIHRvIGJlY29tZSAwLg0KPiANCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0K
PiANCg0KVGhhbmtzIGZvciB5b3VyIHJlcGx5ISBJIHNlZSB0aGF0IDIxZDEzOWQ3M2Y3NyBmaXhl
cyBHUEYgaW4gDQpkbWFfZmVuY2VfYXJyYXlfZmlyc3QoKSwgYnV0IHdoYXQgYWJvdXQgdGhpcyBw
YXJ0Og0KDQo+PiAgIA0KPj4gLQlpZiAobnVtX2ZlbmNlcyA+IElOVF9NQVgpDQo+PiArCWlmIChu
dW1fZmVuY2VzID4gSU5UX01BWCB8fCAhbnVtX2ZlbmNlcykNCj4+ICAgCQlnb3RvIGVycl9mcmVl
X3N5bmNfZmlsZTsNCj4+ICAgDQo+PiAgIAlmZW5jZXMgPSBrY2FsbG9jKG51bV9mZW5jZXMsIHNp
emVvZigqZmVuY2VzKSwgR0ZQX0tFUk5FTCk7DQo+PiBAQCAtMjY0LDcgKzI2NCw3IEBAIHN0YXRp
YyBzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3QgY2hhciAqbmFtZSwgc3Ry
dWN0IHN5bmNfZmlsZSAqYSwNCj4+ICAgCWlmIChpbmRleCA9PSAwKQ0KDQpJZiBudW1fZmVuY2Vz
IGlzIGVxdWFsIHRvIHplcm8gdGhlbiBmZW5jZXMgZGVyZWZlcmVuY2Ugd2lsbCBjYXVzZSBhbiAN
Cm9vcHMuIE9yIHRoaXMgb25lIGlzIGFsc28gZml4ZWQgaW4geW91ciB0cmVlPw0KDQoNClRoYW5r
cyENCg0KDQoNCg0KV2l0aCByZWdhcmRzLA0KUGF2ZWwgU2tyaXBraW4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
