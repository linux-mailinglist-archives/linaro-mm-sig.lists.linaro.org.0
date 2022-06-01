Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A10B53A648
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 15:53:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88A723ED16
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 13:53:02 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 2E8763ED16
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 13:52:57 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 67-20020a1c1946000000b00397382b44f4so1131302wmz.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 06:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Gkqx8uNGHQMl7//wICbhrmo/07INDVRlCWrBKZDsclM=;
        b=Ve12/IxpNSBPttcoaHlRlZrHm92pIFyNWIzGp4j9wwkTa8iHtIBw8dcwytxiJU8E9B
         cFQ8hZrytmwx2s4f2UuEwjOO9UIJ6Dm1r3s9CpXENWPhIN6j5t/DO8piLQudyplqOCei
         SqfMGdd7Kv1zkZBObq7ReXs/cDEdX3dmrr4qSk/Hat5dBCjKpV+0gQ48ir6mweiNWHZP
         Lpp/B+T5YF9t93Pw1FEd0hUK8VsfRdwGHO8yXJIhiHP+KLwzpcdvaHNY8Qjt4hWjaGhc
         lRY3O9gyGScMsaYLgihxPTpmmW1O3KnfbzzvT3tOGJChyuY4aVaclh9t6SI3BjcCyOgI
         gmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Gkqx8uNGHQMl7//wICbhrmo/07INDVRlCWrBKZDsclM=;
        b=hAObY0qqd93RLEuDBuA7vbbnLbvkHy6u5Znx6BOJp4gvyH7Y7nXB5of1K8yKRe6mNp
         2L0wBf9w7JDsJs9eJWrc4f9BRYNdFQcZZF4hFO6JHEEhvATacfGxGXV/nc0u0f1kbnkz
         PvZcMyZZZ6szG2H/uhqLCtF5LmHhTP1C284uN3I/jlAPITg1Eex0L9L/n1uabw0bXBP0
         X4gbTzeO52gATacd2PZ32uBSUOEEwYBvh39QC0stjBonSYK73K8p/B8s9/GpRIzr6NwH
         YiC/ECc/EQVeSi7KZM4hSta7puK/aYNiJ8gNk8tsLbSSCmWxS0zwG72Js8XsTbwM+lFg
         sMKw==
X-Gm-Message-State: AOAM533ZVAR6CC6o1mabgnScJYZ/Rff1ZdSqyDX1L0TuI2vlJT6phiTp
	G0oyTk2n02c4be6rq2dD3JA=
X-Google-Smtp-Source: ABdhPJwbZYR808yKUqN3/m85GcP2QTKQJSBiDQBR3SnLiJ67wdJ3ufk1zAMFeaXfFzxf1FgkOaYUlA==
X-Received: by 2002:a05:600c:414e:b0:397:55aa:ccc0 with SMTP id h14-20020a05600c414e00b0039755aaccc0mr29543460wmm.51.1654091576305;
        Wed, 01 Jun 2022 06:52:56 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:d1fb:e1e4:e193:e55f? ([2a02:908:1256:79a0:d1fb:e1e4:e193:e55f])
        by smtp.gmail.com with ESMTPSA id c16-20020a7bc850000000b003942a244f48sm5240824wml.33.2022.06.01.06.52.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 06:52:55 -0700 (PDT)
Message-ID: <ab42ca92-70e3-ec82-c52c-0fc41d5b4a53@gmail.com>
Date: Wed, 1 Jun 2022 15:52:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Sergey Senozhatsky <senozhatsky@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan
 <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>,
 Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig
 <hch@infradead.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com> <YpWCvniLzJfcp684@google.com>
 <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
 <YpdoEzLmlBfJks3q@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <YpdoEzLmlBfJks3q@phenom.ffwll.local>
Message-ID-Hash: XN4HDBRZ33IUR6K3VJGD2UZF5LMR6B5R
X-Message-ID-Hash: XN4HDBRZ33IUR6K3VJGD2UZF5LMR6B5R
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XN4HDBRZ33IUR6K3VJGD2UZF5LMR6B5R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDEuMDYuMjIgdW0gMTU6MjIgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBXZWQsIEp1
biAwMSwgMjAyMiBhdCAwMjo0NTo0MlBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gQW0gMzEuMDUuMjIgdW0gMDQ6NTEgc2NocmllYiBTZXJnZXkgU2Vub3poYXRza3k6DQo+Pj4g
T24gKDIyLzA1LzMwIDE2OjU1KSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4gQW0gMzAu
MDUuMjIgdW0gMTY6MjIgc2NocmllYiBTZXJnZXkgU2Vub3poYXRza3k6DQo+Pj4+PiBbU05JUF0N
Cj4+Pj4+IFNvIHRoZSBgbG9ja2Agc2hvdWxkIGhhdmUgYXQgbGVhc3Qgc2FtZSBsaWZlc3BhbiBh
cyB0aGUgRE1BIGZlbmNlDQo+Pj4+PiB0aGF0IGJvcnJvd3MgaXQsIHdoaWNoIGlzIGltcG9zc2li
bGUgdG8gZ3VhcmFudGVlIGluIG91ciBjYXNlLg0KPj4+PiBOb3BlLCB0aGF0J3Mgbm90IGNvcnJl
Y3QuIFRoZSBsb2NrIHNob3VsZCBoYXZlIGF0IGxlYXN0IHNhbWUgbGlmZXNwYW4gYXMgdGhlDQo+
Pj4+IGNvbnRleHQgb2YgdGhlIERNQSBmZW5jZS4NCj4+PiBIb3cgZG9lcyBvbmUga25vdyB3aGVu
IGl0J3Mgc2FmZSB0byByZWxlYXNlIHRoZSBjb250ZXh0PyBETUEgZmVuY2UNCj4+PiBvYmplY3Rz
IGFyZSBzdGlsbCB0cmFuc3BhcmVudGx5IHJlZmNvdW50LWVkIGFuZCAibGl2ZSB0aGVpciBvd24g
bGl2ZXMiLA0KPj4+IGhvdyBkb2VzIG9uZSBzeW5jaHJvbml6ZSBsaWZlc3BhbnM/DQo+PiBXZWxs
LCB5b3UgZG9uJ3QuDQo+Pg0KPj4gSWYgeW91IGhhdmUgYSBkeW5hbWljIGNvbnRleHQgc3RydWN0
dXJlIHlvdSBuZWVkIHRvIHJlZmVyZW5jZSBjb3VudCB0aGF0IGFzDQo+PiB3ZWxsLiBJbiBvdGhl
ciB3b3JkcyBldmVyeSB0aW1lIHlvdSBjcmVhdGUgYSBmZW5jZSBpbiB5b3VyIGNvbnRleHQgeW91
IG5lZWQNCj4+IHRvIGluY3JlbWVudCB0aGUgcmVmZXJlbmNlIGNvdW50IGFuZCBldmVyeSB0aW1l
IGEgZmVuY2UgaXMgcmVsZWFzZSB5b3UNCj4+IGRlY3JlbWVudCBpdC4NCj4+DQo+PiBJZiB5b3Ug
aGF2ZSBhIHN0YXRpYyBjb250ZXh0IHN0cnVjdHVyZSBsaWtlIG1vc3QgZHJpdmVycyBoYXZlIHRo
ZW4geW91IG11c3QNCj4+IG1ha2Ugc3VyZSB0aGF0IGFsbCBmZW5jZXMgYXQgbGVhc3Qgc2lnbmFs
IGJlZm9yZSB5b3UgdW5sb2FkIHlvdXIgZHJpdmVyLiBXZQ0KPj4gc3RpbGwgc29tZXdoYXQgaGF2
ZSBhIHJhY2Ugd2hlbiB5b3UgdHJ5IHRvIHVubG9hZCBhIGRyaXZlciBhbmQgdGhlIGZlbmNlX29w
cw0KPj4gc3RydWN0dXJlIHN1ZGRlbmx5IGRpc2FwcGVhciwgYnV0IHdlIGN1cnJlbnRseSBsaXZl
IHdpdGggdGhhdC4NCj4+DQo+PiBBcGFydCBmcm9tIHRoYXQgeW91IGFyZSByaWdodCwgZmVuY2Vz
IGNhbiBsaXZlIGZvcmV2ZXIgYW5kIHdlIG5lZWQgdG8gZGVhbA0KPj4gd2l0aCB0aGF0Lg0KPiBZ
ZWFoIHRoaXMgZW50aXJlIHRoaW5nIGlzIGEgYml0IGFuICJvb3BzIHdlIG1pZ2h0IGhhdmUgc2Ny
ZXdlZCB1cCIgbW9tZW50Lg0KPiBJIHRoaW5rIHRoZSBjbGVhbmVzdCB3YXkgaXMgdG8gZXNzZW50
aWFsbHkgZG8gd2hhdCB0aGUgZHJtL3NjaGVkIGNvZGVzDQo+IGRvZXMsIHdoaWNoIGlzIHNwbGl0
IHRoZSBncHUgam9iIGludG8gdGhlIHB1YmxpYyBkbWFfZmVuY2UgKHdoaWNoIGNhbiBsaXZlDQo+
IGZvcmV2ZXIpIGFuZCB0aGUgaW50ZXJuYWwgam9iIGZlbmNlICh3aGljaCBoYXMgdG8gZGVhbCB3
aXRoIGFsbCB0aGUNCj4gcmVzb3VyY2UgcmVmY291bnRpbmcgaXNzdWVzKS4gQW5kIHRoZW4gbWFr
ZSBzdXJlIHRoYXQgb25seSBldmVyIHRoZSBwdWJsaWMNCj4gZmVuY2UgZXNjYXBlcyB0byBwbGFj
ZXMgd2hlcmUgdGhlIGZlbmNlIGNhbiBsaXZlIGZvcmV2ZXIgKGRtYV9yZXN2LA0KPiBkcm1fc3lu
Y29iaiwgc3luY19maWxlIGFzIG91ciB1YXBpIGNvbnRhaW5lciBvYmplY3RzIGFyZSB0aGUgcHJv
bWluZW50DQo+IGNhc2VzIHJlYWxseSkuDQo+DQo+IEl0IHN1Y2tzIGEgYml0Lg0KDQpJdCdzIGFj
dHVhbGx5IG5vdCB0aGF0IGJhZC4NCg0KU2VlIGFmdGVyIHNpZ25hbGluZyB0aGUgZG1hX2ZlbmNl
X29wcyBpcyBtb3N0bHkgdXNlZCBmb3IgZGVidWdnaW5nIEkgDQp0aGluaywgZS5nLiB0aW1lbGlu
ZSBuYW1lIGV0Yy4uLg0KDQpDaHJpc3RpYW4uDQoNCj4gLURhbmllbA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
