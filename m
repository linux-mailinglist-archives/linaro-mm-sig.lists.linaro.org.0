Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1F5508EA8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 19:40:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2BCB40471
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 17:40:28 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 811773EBC1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Apr 2022 17:40:23 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id f17so3267294edt.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Apr 2022 10:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UGqF/VNrOQXVy0XVsg7vlIex9Byf7MQ1HLHnkGVT8jI=;
        b=jEJ8ogj8lc9owjZce7IJB4It8T4hbhUnmPeuGb9BcLfMhltaGMKp4GqC8/3NkFbH7h
         ymNvxWDpt/iCgckENBA7mGuXa2Vgzj+XsdFqwroEgf+BNnzssz3JnND7K3x0opOK4SlL
         4kxC5HmhON6Epj8hkoIgY14/PklMvafmxMBy2EjsORqnUGj+mBqKW+QEpoSBXKjbHI4f
         NYzqjFZWDn6usSAYL2EdbnNQVn1MF86oDYi0qsGN66jLhxxqOiVCI0cNXox0EN2YjJ2d
         QGuH2UdIfE80ppvFsk/bXC29kpp53y0/+rN6ZzcuzSsEjgLh+K160NXtR+g97QC3BiWX
         K8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UGqF/VNrOQXVy0XVsg7vlIex9Byf7MQ1HLHnkGVT8jI=;
        b=Lxfi6mVATti6NL0VWNnUooXLdqfH5tePtM5UcDanajfjg9m4sU9NqYNg3dq1FiPH4Q
         k52j5Ftc4FFLvj2+ua0GR46qyB/W9aL1OBuobKnWQgH3AoeNZmauphQ5u+MMI4wXRPTl
         100TAbgvPWckxg/gGwVT7TbfRRkBcKMlSXAR5zL+Y8c+JhQ988g99rqt56j0qnVjFqGa
         iXdmrAuHyxW+Pki64s77k7KNZNBT9udwc0Vq4e9bBnXYvLMoOcKR+12SHMnbvcJzbKre
         x8ZsYSDTQk13V6EDXLpmACjTQhBSPCtP+1mQWeGJDi+hdRPa9jkUDEkMAzNZu92Jw5V9
         c82w==
X-Gm-Message-State: AOAM53097Xy0AbMk+0bk0obXpYbCcvEEnFT3YZME60rQ8eGo8s1Tajsd
	v3/s71iV4YXKEhNaXj8QtBQ=
X-Google-Smtp-Source: ABdhPJzl4hP6+bYyCHH6YeLv3zGSn/Zl1qGJV0gcCoYdO4ALyzAM4zbXzED5a3WR79SdNoCSmCxO/w==
X-Received: by 2002:a50:fd81:0:b0:41d:7582:75df with SMTP id o1-20020a50fd81000000b0041d758275dfmr24584159edt.208.1650476422538;
        Wed, 20 Apr 2022 10:40:22 -0700 (PDT)
Received: from ?IPV6:2a02:908:1252:fb60:425d:2971:45fa:ac5d? ([2a02:908:1252:fb60:425d:2971:45fa:ac5d])
        by smtp.gmail.com with ESMTPSA id g15-20020a170906520f00b006cd07ba40absm6918464ejm.160.2022.04.20.10.40.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 10:40:21 -0700 (PDT)
Message-ID: <54d00af9-9384-5794-490c-7d4cafe086b6@gmail.com>
Date: Wed, 20 Apr 2022 19:40:20 +0200
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <fe8916b53b0f0101e6616d23eb6896399b092d58.camel@vmware.com>
Message-ID-Hash: TRZ25YTTKM2S6IJQ5BLJ7EVZOG7ZVOGT
X-Message-ID-Hash: TRZ25YTTKM2S6IJQ5BLJ7EVZOG7ZVOGT
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/15] dma-buf & drm/amdgpu: remove dma_resv workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRZ25YTTKM2S6IJQ5BLJ7EVZOG7ZVOGT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDQuMjIgdW0gMTk6Mzggc2NocmllYiBaYWNrIFJ1c2luOg0KPiBPbiBXZWQsIDIwMjIt
MDQtMjAgYXQgMDk6MzcgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiDimqAgRXh0
ZXJuYWwgRW1haWwNCj4+DQo+PiBIaSBaYWNrLA0KPj4NCj4+IEFtIDIwLjA0LjIyIHVtIDA1OjU2
IHNjaHJpZWIgWmFjayBSdXNpbjoNCj4+PiBPbiBUaHUsIDIwMjItMDQtMDcgYXQgMTA6NTkgKzAy
MDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IFJld29yayB0aGUgaW50ZXJuYWxzIG9m
IHRoZSBkbWFfcmVzdiBvYmplY3QgdG8gYWxsb3cgYWRkaW5nIG1vcmUNCj4+Pj4gdGhhbg0KPj4+
PiBvbmUNCj4+Pj4gd3JpdGUgZmVuY2UgYW5kIHJlbWVtYmVyIGZvciBlYWNoIGZlbmNlIHdoYXQg
cHVycG9zZSBpdCBoYWQuDQo+Pj4+DQo+Pj4+IFRoaXMgYWxsb3dzIHJlbW92aW5nIHRoZSB3b3Jr
YXJvdW5kIGZyb20gYW1kZ3B1IHdoaWNoIHVzZWQgYQ0KPj4+PiBjb250YWluZXINCj4+Pj4gZm9y
DQo+Pj4+IHRoaXMgaW5zdGVhZC4NCj4+Pj4NCj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+PiBSZXZpZXdlZC1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCj4+Pj4gQ2M6IGFtZC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+Pj4gYWZhaWN0IHRoaXMgY2hhbmdlIGJyb2tlIHZtd2dmeCB3
aGljaCBub3cga2VybmVsIG9vcHMgcmlnaHQgYWZ0ZXINCj4+PiBib290Lg0KPj4+IEkgaGF2ZW4n
dCBoYWQgdGhlIHRpbWUgdG8gbG9vayBpbnRvIGl0IHlldCwgc28gSSdtIG5vdCBzdXJlIHdoYXQn
cw0KPj4+IHRoZQ0KPj4+IHByb2JsZW0uIEknbGwgbG9vayBhdCB0aGlzIHRvbW9ycm93LCBidXQg
anVzdCBpbiBjYXNlIHlvdSBoYXZlIHNvbWUNCj4+PiBjbHVlcywgdGhlIGJhY2t0cmFjZSBmb2xs
b3dzOg0KPj4gdGhhdCdzIGEga25vd24gaXNzdWUgYW5kIHNob3VsZCBhbHJlYWR5IGJlIGZpeGVk
IHdpdGg6DQo+Pg0KPj4gY29tbWl0IGQ3MmRjYmU5ZmNlNTA1MjI4ZGFlNDNiZWY5ZGE4ZjJiNzA3
ZDFiM2QNCj4+IEF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPj4gRGF0ZTrCoMKgIE1vbiBBcHIgMTEgMTU6MjE6NTkgMjAyMiArMDIwMA0KPiBVbmZv
cnR1bmF0ZWx5IHRoYXQgZG9lc24ndCBzZWVtIHRvIGJlIGl0LiBUaGUgYmFja3RyYWNlIGlzIGZy
b20gdGhlDQo+IGN1cnJlbnQgKGFzIG9mIHRoZSB0aW1lIG9mIHNlbmRpbmcgb2YgdGhpcyBlbWFp
bCkgZHJtLW1pc2MtbmV4dCwgd2hpY2gNCj4gaGFzIHRoaXMgY2hhbmdlLCBzbyBpdCdzIHNvbWV0
aGluZyBlbHNlLg0KDQpPaywgdGhhdCdzIHN0cmFuZ2UuIEluIHRoaXMgY2FzZSBJIG5lZWQgdG8g
aW52ZXN0aWdhdGUgZnVydGhlci4NCg0KTWF5YmUgVk1XR0ZYIGlzIGFkZGluZyBtb3JlIHRoYW4g
b25lIGZlbmNlIGFuZCB3ZSBhY3R1YWxseSBuZWVkIHRvIA0KcmVzZXJ2ZSBtdWx0aXBsZSBzbG90
cy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiB6DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
