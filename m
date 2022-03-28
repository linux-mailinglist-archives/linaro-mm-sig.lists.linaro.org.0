Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4408D4EC4B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:42:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 746473EE97
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:42:26 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 851443ECAA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 20:59:15 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id b24so18372591edu.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 13:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XpihMQW3ITEGr80CFfEgsPwVbFmNePy8AVTnWzohyno=;
        b=fo6+o9w1krLj+t9+r6Huq6bmXGajiPbFdocT5kBjC0HNvq2kYhvbOf+nwkdlfWEihJ
         XFooInFSC2XxwxaaFa5j9dwDixiymZ80ntOov64y6VfCVLgnJO/ZKY2Y57ZVmLhKjQWJ
         /KiPBhfmc7+I7hQnJ5dkX1W+4t2UZg3u6kMkRFqCqCVPhQ6RAQKAFjgRGHqMLB2uj0J1
         bAKOtVu2J7GY58NXTNyhxAYfj6hhJe2dRqp72oCdamCZpoQ8mDte3MIkEJY+8gATJy1v
         gtJBcT/a+PdVy6KIgnUbTPGh402e++/1EUXLTSuiE81atZEQGIJeIuaDtouqgj4tt2Pu
         FUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XpihMQW3ITEGr80CFfEgsPwVbFmNePy8AVTnWzohyno=;
        b=B5i9b4Xzb5Qo+k7oMA/qjvt7OtRP5fGg/BNZG/oifQgknmATenEn/11cetQTttoocO
         kM/oJt9cWvs4nY+Vo9OOwjogT4rddmBh5RD5otm53BdYWqiySq8CaFbUMtV15zc2gb53
         LRUvLAPVeF30MByXBnGxmIe0LNbnzhCTFMqhLzruyLYXTwR2SWkU+UAt3JbEErrORHXY
         hvseVdLAczzQOKeL7z9V6eN3Iz+XIjU1WiLZWPhER6OIsYEQwpbVylLkOD/JBe+PwFfq
         DfcHjqQYPwYgX/YBGL/ZfFACb4drBoOZk2cf+lW6ADdlAKkb/M65BTAn8P+xMJkWO47M
         Clxw==
X-Gm-Message-State: AOAM532u2vAgB26D5YyKqb9dX6y/OkhvYLBm2cLYquy8GgLgIW4itrJe
	dFZ/4bchTZHTzgFfS0/se4+j1JuqJczm1KOv5AE=
X-Google-Smtp-Source: ABdhPJxpdmWGnFCQvTKGOD9NOQ2vNgNaejcUttwdkmLsXR8JqVRfOJExLnuVhfUYDvEwh561/7+o05VS6CAtac5wV6c=
X-Received: by 2002:a05:6402:d7:b0:413:673:ba2f with SMTP id
 i23-20020a05640200d700b004130673ba2fmr18962285edu.29.1648501154526; Mon, 28
 Mar 2022 13:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220207125933.81634-1-paul@crapouillou.net> <20220207125933.81634-8-paul@crapouillou.net>
 <20220328185425.56b51f4a@jic23-huawei> <1VYG9R.1JAKRTCN4I411@crapouillou.net>
In-Reply-To: <1VYG9R.1JAKRTCN4I411@crapouillou.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 28 Mar 2022 23:58:38 +0300
Message-ID: <CAHp75VcWisAaHJUKedT7BWGNA8_5xye8-dyCv5Fq_kQWu7m7ew@mail.gmail.com>
To: Paul Cercueil <paul@crapouillou.net>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AJS234UJX44GJGEWPDK3JU2IKTO3P5HE
X-Message-ID-Hash: AJS234UJX44GJGEWPDK3JU2IKTO3P5HE
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:57 +0000
CC: Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Documentation List <linux-doc@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-iio <linux-iio@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 07/12] iio: buffer-dma: Use DMABUFs instead of custom solution
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AJS234UJX44GJGEWPDK3JU2IKTO3P5HE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXIgMjgsIDIwMjIgYXQgMTE6MzAgUE0gUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFw
b3VpbGxvdS5uZXQ+IHdyb3RlOg0KPiBMZSBsdW4uLCBtYXJzIDI4IDIwMjIgYXQgMTg6NTQ6MjUg
KzAxMDAsIEpvbmF0aGFuIENhbWVyb24NCj4gPGppYzIzQGtlcm5lbC5vcmc+IGEgw6ljcml0IDoN
Cj4gPiBPbiBNb24sICA3IEZlYiAyMDIyIDEyOjU5OjI4ICswMDAwDQo+ID4gUGF1bCBDZXJjdWVp
bCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+IHdyb3RlOg0KPiA+DQo+ID4+ICBFbmhhbmNlIHRoZSBj
dXJyZW50IGZpbGVpbyBjb2RlIGJ5IHVzaW5nIERNQUJVRiBvYmplY3RzIGluc3RlYWQgb2YNCj4g
Pj4gIGN1c3RvbSBidWZmZXJzLg0KPiA+Pg0KPiA+PiAgVGhpcyBhZGRzIG1vcmUgY29kZSB0aGFu
IGl0IHJlbW92ZXMsIGJ1dDoNCj4gPj4gIC0gYSBsb3Qgb2YgdGhlIGNvbXBsZXhpdHkgY2FuIGJl
IGRyb3BwZWQsIGUuZy4gY3VzdG9tIGtyZWYgYW5kDQo+ID4+ICAgIGlpb19idWZmZXJfYmxvY2tf
cHV0X2F0b21pYygpIGFyZSBub3QgbmVlZGVkIGFueW1vcmU7DQo+ID4+ICAtIGl0IHdpbGwgYmUg
bXVjaCBlYXNpZXIgdG8gaW50cm9kdWNlIGFuIEFQSSB0byBleHBvcnQgdGhlc2UgRE1BQlVGDQo+
ID4+ICAgIG9iamVjdHMgdG8gdXNlcnNwYWNlIGluIGEgZm9sbG93aW5nIHBhdGNoLg0KDQo+ID4g
SSdtIGEgYml0IHJ1c3R5IG9uIGRtYSBtYXBwaW5ncywgYnV0IHlvdSBzZWVtIHRvIGhhdmUNCj4g
PiBhIG1peHR1cmUgb2Ygc3RyZWFtaW5nIGFuZCBjb2hlcmVudCBtYXBwaW5ncyBnb2luZyBvbiBp
biBoZXJlLg0KPg0KPiBUaGF0J3MgT0ssIHNvIGFtIEkuIFdoYXQgZG8geW91IGNhbGwgInN0cmVh
bWluZyBtYXBwaW5ncyI/DQoNCmRtYV8qX2NvaGVyZW50KCkgYXJlIGZvciBjb2hlcmVudCBtYXBw
aW5ncyAodXN1YWxseSB5b3UgZG8gaXQgb25jZSBhbmQNCmNhY2hlIGNvaGVyZW5jeSBpcyBndWFy
YW50ZWVkIGJ5IGFjY2Vzc2luZyB0aGlzIG1lbW9yeSBieSBkZXZpY2Ugb3INCkNQVSkuDQpkbWFf
bWFwXyooKSBhcmUgZm9yIHN0cmVhbWluZywgd2hpY2ggbWVhbnMgdGhhdCB5b3Ugb2Z0ZW4gd2Fu
dCB0byBtYXANCmFyYml0cmFyeSBwYWdlcyBkdXJpbmcgdGhlIHRyYW5zZmVyICh1c3VhbGx5IHVz
ZWQgZm9yIHRoZSBjYXNlcyB3aGVuDQp5b3Ugd2FudCB0byBrZWVwIHByZXZpb3VzIGRhdGEgYW5k
IGRvIHNvbWV0aGluZyB3aXRoIGEgbmV3IGNvbWluZywgb3INCndoZW4gYSBuZXcgY29taW5nIGRh
dGEgaXMgc3VwcGxpZWQgYnkgZGlmZmVyZW50IHZpcnR1YWwgYWRkcmVzcywgYW5kDQpoZW5jZSBo
YXMgdG8gYmUgbWFwcGVkIGZvciBETUEpLg0KDQo+ID4gSXMgaXQgdGhlIGNhc2UgdGhhdCB0aGUg
Y3VycmVudCBjb2RlIGlzIHVzaW5nIHRoZSBjb2hlcmVudCBtYXBwaW5ncw0KPiA+IGFuZCBhIHBv
dGVudGlhbCAnb3RoZXIgdXNlcicgb2YgdGhlIGRtYSBidWZmZXIgbWlnaHQgbmVlZA0KPiA+IHN0
cmVhbWluZyBtYXBwaW5ncz8NCj4NCj4gU29tZXRoaW5nIGxpa2UgdGhhdC4gVGhlcmUgYXJlIHR3
byBkaWZmZXJlbnQgdGhpbmdzOyBvbiBib3RoIGNhc2VzLA0KPiB1c2Vyc3BhY2UgbmVlZHMgdG8g
Y3JlYXRlIGEgRE1BQlVGIHdpdGggSUlPX0JVRkZFUl9ETUFCVUZfQUxMT0NfSU9DVEwsDQo+IGFu
ZCB0aGUgYmFja2luZyBtZW1vcnkgaXMgYWxsb2NhdGVkIHdpdGggZG1hX2FsbG9jX2NvaGVyZW50
KCkuDQo+DQo+IC0gRm9yIHRoZSB1c2Vyc3BhY2UgaW50ZXJmYWNlLCB5b3UgdGhlbiBoYXZlIGEg
ImNwdSBhY2Nlc3MiIElPQ1RMDQo+IChETUFfQlVGX0lPQ1RMX1NZTkMpLCB0aGF0IGFsbG93cyB1
c2Vyc3BhY2UgdG8gaW5mb3JtIHdoZW4gaXQgd2lsbA0KPiBzdGFydC9maW5pc2ggdG8gcHJvY2Vz
cyB0aGUgYnVmZmVyIGluIHVzZXItc3BhY2UgKHdoaWNoIHdpbGwNCj4gc3luYy9pbnZhbGlkYXRl
IHRoZSBkYXRhIGNhY2hlIGlmIG5lZWRlZCkuIEEgYnVmZmVyIGNhbiB0aGVuIGJlDQo+IGVucXVl
dWVkIGZvciBETUEgcHJvY2Vzc2luZyAoVFggb3IgUlgpIHdpdGggdGhlIG5ldw0KPiBJSU9fQlVG
RkVSX0RNQUJVRl9FTlFVRVVFX0lPQ1RMLg0KPg0KPiAtIFdoZW4gdGhlIERNQUJVRiBjcmVhdGVk
IHZpYSB0aGUgSUlPIGNvcmUgaXMgc2VudCB0byBhbm90aGVyIGRyaXZlcg0KPiB0aHJvdWdoIHRo
ZSBkcml2ZXIncyBjdXN0b20gRE1BQlVGIGltcG9ydCBmdW5jdGlvbiwgdGhpcyBkcml2ZXIgd2ls
bA0KPiBjYWxsIGRtYV9idWZfYXR0YWNoKCksIHdoaWNoIHdpbGwgY2FsbCBpaW9fYnVmZmVyX2Rt
YV9idWZfbWFwKCkuIFNpbmNlDQo+IGl0IGhhcyB0byByZXR1cm4gYSAic3RydWN0IHNnX3RhYmxl
ICoiLCB0aGlzIGZ1bmN0aW9uIHRoZW4gc2ltcGx5DQo+IGNyZWF0ZXMgYSBzZ3RhYmxlIHdpdGgg
b25lIGVudHJ5IHRoYXQgcG9pbnRzIHRvIHRoZSBiYWNraW5nIG1lbW9yeS4NCg0KLi4uDQoNCj4g
Pj4gICsgICByZXQgPSBkbWFfbWFwX3NndGFibGUoYXQtPmRldiwgJmRiYS0+c2dfdGFibGUsIGRt
YV9kaXIsIDApOw0KPiA+PiAgKyAgIGlmIChyZXQpIHsNCj4gPj4gICsgICAgICAgICAgIGtmcmVl
KGRiYSk7DQo+ID4+ICArICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOw0KPiA+PiAgKyAg
IH0NCg0KTWlzc2VkIERNQSBtYXBwaW5nIGVycm9yIGNoZWNrLg0KDQo+ID4+ICArDQo+ID4+ICAr
ICAgcmV0dXJuICZkYmEtPnNnX3RhYmxlOw0KPiA+PiAgK30NCg0KLi4uDQoNCj4gPj4gIC0gICAv
KiBNdXN0IG5vdCBiZSBhY2Nlc3NlZCBvdXRzaWRlIHRoZSBjb3JlLiAqLw0KPiA+PiAgLSAgIHN0
cnVjdCBrcmVmIGtyZWY7DQoNCg0KPiA+PiAgKyAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQoN
CklzIGl0IG9rYXkgdG8gYWNjZXNzIG91dHNpZGUgdGhlIGNvcmU/IElmIG5vLCB3aHkgZGlkIHlv
dSByZW1vdmUNCihhY3R1YWxseSBub3QgbW9kaWZ5KSB0aGUgY29tbWVudD8NCg0KLS0gDQpXaXRo
IEJlc3QgUmVnYXJkcywNCkFuZHkgU2hldmNoZW5rbw0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
