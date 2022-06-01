Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2529753A993
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 17:06:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D39F3F0CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 15:06:27 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by lists.linaro.org (Postfix) with ESMTPS id 8C4123F05C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 15:06:22 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id h5so2806782wrb.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 08:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Leic+PhDW9JBtVqGFF33qmkBBaBIyf37xeEUSNRuRLw=;
        b=XH0GWUPC4rtX5tdQrQMcCWEEcsMs/2hrq9PygPpWzqZYP/RMZk4ONuHge/lYiEsFvK
         v6WciuNGiBg9/HBVpBfVhFPN7njNI4GhL8VuA60R1eK0ujsX8Qy023cZ2tJM0fo6ke7z
         b7w0lc1yowLDgawmU2z/eV4WKF4q6HF0igBC9PUd4L0Kjb288DE7ESq8B+FnFK3MUmkn
         V+qufjMsi9wJZfTauz6awGg8LcZ/+KC8xQuHPnyhm7DDkg65d8bSk1jYP+6a3gBVigHl
         qUcikYx/jZvWz84tlXATBy0l6rjdcCQ5p2308GFL4GHy5T33GvTxaFUMb2Z129RazxTC
         0MEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Leic+PhDW9JBtVqGFF33qmkBBaBIyf37xeEUSNRuRLw=;
        b=Urbt/CMI/Dn8F0EcL3+vXuJWg3CDqG/AGB/dlY1CEU3vfZHCSxoqYqSWOkE3L/xdmL
         bqbwM0SEjlTsqI4a78Ebey2t1fT4NtSKXeT58pNHUmVvpk6tFvX9tNxmOnywCtMwQ9o3
         n2dM29ZPZbMSAau0f3g9JwQdbBkISyq0l0MM9kgM/htC+af4dEFka8yFawh6TU3JmKk0
         MtCAEINZUYUuirN0v2SMkMKReC5yov/5/NAjKnQYYH0buGTyG6s7BdCTfyvHH9bT3+Ql
         N98jhOuZhQ6xTK3nJ0EcGZfBqumsG1ZMTqX/ewL+dc/8PPZT7Pl9J9RwrGOZzCzzHUb4
         CVSQ==
X-Gm-Message-State: AOAM531m+YZU7UQ1+gxHmxBc6Vv6kMLYnsDyHT5YcMdP+025uwXXyKtL
	oxbXQewaQsYc4mzzQevZzZU=
X-Google-Smtp-Source: ABdhPJywvalFqzq1oRD29IlI1pb78iiaj27Usi9lg7MLrT/V1m31Qrl/vNekEuBU1JaXIWlVnGyUxw==
X-Received: by 2002:adf:d1a3:0:b0:210:29f7:2d52 with SMTP id w3-20020adfd1a3000000b0021029f72d52mr179090wrc.397.1654095981285;
        Wed, 01 Jun 2022 08:06:21 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:d1fb:e1e4:e193:e55f? ([2a02:908:1256:79a0:d1fb:e1e4:e193:e55f])
        by smtp.gmail.com with ESMTPSA id n20-20020a7bc5d4000000b0039aef592ca0sm2247384wmk.35.2022.06.01.08.06.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 08:06:20 -0700 (PDT)
Message-ID: <30c96646-bb16-a876-57f5-155d46b8d805@gmail.com>
Date: Wed, 1 Jun 2022 17:06:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Sergey Senozhatsky <senozhatsky@chromium.org>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com> <YpWCvniLzJfcp684@google.com>
 <33aba213-b6ad-4a15-9272-c62f5dfb1fb7@gmail.com>
 <Ypd3Us3a93aLonqT@google.com>
 <a009c207-a5fa-af1e-b961-8083b48360bf@gmail.com>
 <Ypd9OSqMtGMVKYZ0@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <Ypd9OSqMtGMVKYZ0@google.com>
Message-ID-Hash: WGLAHCBKJYBJXWJ5LDIA3QZ5V7TL2LGR
X-Message-ID-Hash: WGLAHCBKJYBJXWJ5LDIA3QZ5V7TL2LGR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WGLAHCBKJYBJXWJ5LDIA3QZ5V7TL2LGR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDEuMDYuMjIgdW0gMTY6NTIgc2NocmllYiBTZXJnZXkgU2Vub3poYXRza3k6DQo+IE9uICgy
Mi8wNi8wMSAxNjozOCksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IFdlbGwsIHlvdSBk
b24ndC4NCj4+Pj4NCj4+Pj4gSWYgeW91IGhhdmUgYSBkeW5hbWljIGNvbnRleHQgc3RydWN0dXJl
IHlvdSBuZWVkIHRvIHJlZmVyZW5jZSBjb3VudCB0aGF0IGFzDQo+Pj4+IHdlbGwuIEluIG90aGVy
IHdvcmRzIGV2ZXJ5IHRpbWUgeW91IGNyZWF0ZSBhIGZlbmNlIGluIHlvdXIgY29udGV4dCB5b3Ug
bmVlZA0KPj4+PiB0byBpbmNyZW1lbnQgdGhlIHJlZmVyZW5jZSBjb3VudCBhbmQgZXZlcnkgdGlt
ZSBhIGZlbmNlIGlzIHJlbGVhc2UgeW91DQo+Pj4+IGRlY3JlbWVudCBpdC4NCj4+PiBPSyB0aGVu
IGZlbmNlIHJlbGVhc2Ugc2hvdWxkIGJlIGFibGUgdG8gcG9pbnQgYmFjayB0byBpdHMgImNvbnRl
eHQiDQo+Pj4gc3RydWN0dXJlLiBFaXRoZXIgYSAicHJpdmF0ZSIgZGF0YSBpbiBkbWEgZmVuY2Ug
b3Igd2UgbmVlZCB0byAiZW1iZWQiDQo+Pj4gZmVuY2UgaW50byBhbm90aGVyIG9iamVjdCAocmVm
Y291bnRlZCkgdGhhdCBvd25zIHRoZSBsb2NrIGFuZCBwcm92aWRlDQo+Pj4gZG1hIGZlbmNlIG9w
cy0+cmVsZWFzZSBjYWxsYmFjaywgd2hpY2ggY2FuIGNvbnRhaW5lcl9vZigpIHRvIHRoZSBvYmpl
Y3QNCj4+PiB0aGF0IGRtYSBmZW5jZSBpcyBlbWJlZGRlZCBpbnRvLg0KPj4+DQo+Pj4gSSB0aGlu
ayB5b3UgYXJlIHN1Z2dlc3RpbmcgdGhlIGxhdHRlci4gVGhhbmtzIGZvciBjbGFyaWZpY2F0aW9u
cy4NCj4+IERhbmllbCBtaWdodCBodXJ0IG1lIGZvciB0aGlzLCBidXQgaWYgeW91IHJlYWxseSBv
bmx5IG5lZWQgYSBwb2ludGVyIHRvIHlvdXINCj4+IGNvbnRleHQgdGhlbiB3ZSBjb3VsZCBzYXkg
dGhhdCB1c2luZyBhIHBvaW50ZXIgdmFsdWUgZm9yIHRoZSBjb250ZXh0IGZpZWxkDQo+PiBpcyBv
ayBhcyB3ZWxsLg0KPj4NCj4+IFRoYXQgc2hvdWxkIGJlIGZpbmUgYXMgd2VsbCBhcyBsb25nIGFz
IHlvdSBjYW4gZ3VhcmFudGVlIHRoYXQgaXQgd2lsbCBiZQ0KPj4gdW5pcXVlIGR1cmluZyB0aGUg
bGlmZXRpbWUgb2YgYWxsIGl0J3MgZmVuY2VzLg0KPiBJIHRoaW5rIHdlIGNhbiBndWFyYW50ZWUg
dGhhdC4gT2JqZWN0IHRoYXQgY3JlYXRlcyBmZW5jZSBpcyBrbWFsbG9jLWVkIGFuZA0KPiBpdCBz
dGlja3MgYXJvdW5kIHVudGlsIGRtYV9mZW5jZV9yZWxlYXNlKCkgY2FsbHMgb3BzLT5yZWxlYXNl
KCkgYW5kIGtmcmVlLXMNCj4gaXQuIFdlICpwcm9iYWJseSogY2FuIGV2ZW4gZG8gc29tZXRoaW5n
IGxpa2UgaXQgbm93LCBieSByZS1wdXJwb3NpbmcgZG1hX2ZlbmNlDQo+IGNvbnRleHQgbWVtYmVy
Og0KPg0KPiAgICAgICAgICBkbWFfZmVuY2VfaW5pdChvYmotPmZlbmNlLA0KPiAgICAgICAgICAg
ICAgICAgICAgICAgICAmZmVuY2Vfb3BzLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAmb2Jq
LT5mZW5jZV9sb2NrLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAodTY0KW9iaiwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDw8ICAgOi8NCj4gICAgICAgICAgICAgICAgICAgICAgICAg
YXRvbWljNjRfaW5jX3JldHVybigmb2JqLT5zZXFubykpOw0KPg0KPiBJJ2QgY2VydGFpbmx5IHJl
ZnJhaW4gZnJvbSBiZWluZyBjcmVhdGl2ZSBoZXJlIGFuZCBkb2luZyB0aGluZ3MgdGhhdA0KPiBh
cmUgbm90IGRvY3VtZW50ZWQvY29tbW9uLiBETUEgZmVuY2UgZW1iZWRkaW5nIHNob3VsZCB3b3Jr
IGZvciB1cy4NCg0KWWVhaCwgZXhhY3RseSB0aGF0J3MgdGhlIGlkZWEuIEJ1dCBpZiB5b3UgYXJl
IGZpbmUgdG8gY3JlYXRlIGEgc3ViY2xhc3MgDQpvZiB0aGUgZG1hX2ZlbmNlIHRoYW4gdGhhdCB3
b3VsZCBpbmRlZWQgYmUgY2xlYW5lci4NCg0KQ2hyaXN0aWFuLg0KDQo+DQo+Pj4gVGhlIGxpbWl0
aW5nIGZhY3RvciBvZiB0aGlzIGFwcHJvYWNoIGlzIHRoYXQgbm93IG91ciBvcHMtPnJlbGVhc2Uo
KSBpcw0KPj4+IHVuZGVyIHRoZSBzYW1lICJwcmVzc3VyZSIgYXMgZG1hX2ZlbmNlX3B1dCgpLT5k
bWFfZmVuY2VfcmVsZWFzZSgpIGFyZS4NCj4+PiBkbWFfZmVuY2VfcHV0KCkgYW5kIGRtYV9mZW5j
ZV9yZWxlYXNlKCkgY2FuIGJlIGNhbGxlZCBmcm9tIGFueSBjb250ZXh0LA0KPj4+IGFzIGZhciBh
cyBJIHVuZGVyc3RhbmQsIGUuZy4gSVJRLCBob3dldmVyIG91ciBub3JtYWwgb2JqZWN0IC0+cmVs
ZWFzZQ0KPj4+IGNhbiBzY2hlZHVsZSwgd2UgZG8gdGhpbmdzIGxpa2Ugc3luY2hyb25pemVfcmN1
KCkgYW5kIHNvIG9uLiBOb3RoaW5nIGlzDQo+Pj4gaW1wb3NzaWJsZSwganVzdCBzYXlpbmcgdGhh
dCBldmVuIHRoaXMgYXBwcm9hY2ggaXMgbm90IDEwMCUgcGVyZmVjdCBhbmQNCj4+PiBtYXkgbmVl
ZCBhZGRpdGlvbmFsIHdvcmthcm91bmRzLg0KPj4gV2VsbCBqdXN0IHVzZSBhIHdvcmsgaXRlbSBm
b3IgcmVsZWFzZS4NCj4gWXVwLCB0aGF0J3MgdGhlIHBsYW4uDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
