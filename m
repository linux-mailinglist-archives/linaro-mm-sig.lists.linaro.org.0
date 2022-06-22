Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A234556F2F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 01:35:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 72F8F3EA3E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jun 2022 23:35:30 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by lists.linaro.org (Postfix) with ESMTPS id C063C3F1AD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jun 2022 23:35:23 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id v81so32922360ybe.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jun 2022 16:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=o7RsO830fD0jUOzHDwoBp7BpixyxsVDMcbzJc/dPZr8=;
        b=t72DVOYNRLlNIK0QWaS0yiZCgLQzJ+mww8RuMAa6SEu21pN2KF8In8tDLoWRqBsrNr
         KNnBknGFobmW8lD5cwyGXZhMOKni4k712dl8T6Nb1Y74xZMaHi0Kq2qd81vV4LMVdjCT
         9lXscB4gWNNBeBTqN53A7/SqtDjl+hdd0crwWDarrUqcrVVL1BKgKrobVA6tolIbU7CW
         7qtcKBAh+hyL8KFEk0j6kpHlcnQQCy4LuyU4suQyqWqX68juFOOsbqaTH6uXvAorFBYR
         T5EyqV/l5CVH064TgCz+CYYxgBqY/E+gzS5VZQ1S06ALNzSu8KP9nwKNPVFQO6FD4QXB
         X3Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=o7RsO830fD0jUOzHDwoBp7BpixyxsVDMcbzJc/dPZr8=;
        b=2xeNXOvqzVtd2ShvH0UfwGF0fJdM7TtCWvaym2igygua5BgN6bL5a8POGzZrPvM0ei
         a7yU92wYhOXKZxdrSSXzMX788cp0L7rvkKv3aaQYm8m50Wg/Log3uiDSbdf/9sr9UGhn
         CtulA9KFQECg0fOvhrHvzHf5STeaZDAQ1YxInvZUbL+WYaq+G+MzSx2Yy/hwVK22n85f
         7T5KfNctQ/h+Rb/gVrmmgv2QhAP08vMyFNL9BbeUq2vIYh4Gm9eyOsHlL5P5EawQl3UF
         WLvjcu9aGpMitQ3FDu1ejgx7zx3ih/4gkNP4J9orf8Abubm/32b92d/TjexnJqEybAPV
         afbQ==
X-Gm-Message-State: AJIora+ge4jQoq+zjCvvxYao/rOq2oZLuTKgq6CI67fTxoAOYYNB4xb2
	aVvdPF1YPjII4FhlzgJ3ZavZrzvvGe5yAqhfoQIceg==
X-Google-Smtp-Source: AGRyM1thlCmdsv9jRIXB0vx8z3s/GQ8/szb8lQCu3tvGCC9TxyNx0da3lTQTVZ/C/rnveNMpCk5dzQW1Wpv0FI0fIaQ=
X-Received: by 2002:a25:b29e:0:b0:669:160e:7f38 with SMTP id
 k30-20020a25b29e000000b00669160e7f38mr6608657ybj.280.1655940923198; Wed, 22
 Jun 2022 16:35:23 -0700 (PDT)
MIME-Version: 1.0
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com> <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
In-Reply-To: <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 23 Jun 2022 00:34:58 +0100
Message-ID: <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Message-ID-Hash: X56URZGYNH7DRFITCXJSO5F52BQJNR7Z
X-Message-ID-Hash: X56URZGYNH7DRFITCXJSO5F52BQJNR7Z
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X56URZGYNH7DRFITCXJSO5F52BQJNR7Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTmljb2xhcywNCg0KT24gV2VkLCAyMiBKdW4gMjAyMiBhdCAyMDozOSwgTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOg0KPiBMZSBtYXJkaSAxNiBmw6l2cmll
ciAyMDIxIMOgIDEwOjI1ICswMTAwLCBEYW5pZWwgVmV0dGVyIGEgw6ljcml0IDoNCj4gPiBTbyBJ
IHRoaW5rIGlmIEFNRCBhbHNvIGd1YXJhbnRlZXMgdG8gZHJvcCBjbGVhbiBjYWNoZWxpbmVzIGp1
c3QgZG8gdGhlDQo+ID4gc2FtZSB0aGluZyB3ZSBkbyByaWdodCBub3cgZm9yIGludGVsIGludGVn
cmF0ZWQgKyBkaXNjcmV0ZSBhbWQsIGJ1dCBpbg0KPiA+IHJlc2VydmUuIEl0J3MgZnJhZ2lsZSwg
YnV0IGl0IGRvZXMgd29yay4NCj4NCj4gU29ycnkgdG8gZGlzcnVwdCwgYnV0IGlmIHlvdSBwYXNz
IFY0TDIgdm1hbGxvYyBkYXRhIHRvIEludGVsIGRpc3BsYXkgZHJpdmVyLCB5b3UNCj4gYWxzbyBn
ZXQgbmljZSBkaXJ0IG9uIHRoZSBzY3JlZW4uIElmIHlvdSBoYXZlIGEgVVZDIHdlYmNhbSB0aGF0
IHByb2R1Y2VzIGEgcGl4ZWwNCj4gZm9ybWF0IGNvbXBhdGlibGUgd2l0aCB5b3VyIGRpc3BsYXks
IHlvdSBjYW4gcmVwcm9kdWNlIHRoZSBpc3N1ZSBxdWl0ZSBlYXNpbHkNCj4gd2l0aDoNCj4NCj4g
ICBnc3QtbGF1bmNoLTEuMCB2NGwyc3JjIGRldmljZT0vZGV2L3ZpZGVvMCAhIGttc3NpbmsNCj4N
Cj4gcC5zLiBzb21lIGZyYW1lLXJhdGUgYXJlIGxlc3MgbGlrZWx5IHRvIGV4aGliaXQgdGhlIGlz
c3VlLCBtYWtlIHN1cmUgeW91IGNyZWF0ZQ0KPiBtb3ZlbWVudCB0byBzZWUgaXQuDQoNClJpZ2h0
LCB0aGlzIGlzIGJlY2F1c2UgdGhlIFVWQyBkYXRhIGluIGEgdm1hbGxvYygpIGFyZWEgaXMgbm90
DQpuZWNlc3NhcmlseSBmbHVzaGVkIGZyb20gdGhlIENQVSBjYWNoZSwgYW5kIHRoZSBpbXBvcnRl
ciBleHBlY3RzIGl0DQp3aWxsIGJlLg0KDQo+IFRoZSBvbmx5IHNvbHV0aW9uIEkgY291bGQgdGhp
bmsgb2YgKG5vdCBpbXBsZW1lbnRlZCkgd2FzIHRvIGRldGVjdCBpbiB0aGUNCj4gYXR0YWNoKCkg
Y2FsbCB3aGF0IHRoZSBpbXBvcnRlcnMgY2FuIGRvICh3aXRoIGRldi0+Y29oZXJlbnRfZG1hX21h
c2sgaWYgSQ0KPiByZWNhbGwpLCBhbmQgb3RoZXJ3aXNlIGZsdXNoIHRoZSBjYWNoZSBpbW1lZGlh
dGVseSBhbmQgc3RhcnQgZmx1c2hpbmcgdGhlIGNhY2hlDQo+IGZyb20gbm93IG9uIHNpZ25hbGxp
bmcgaXQgZm9yIERRQlVGIChpbiB2YjIgd29ya3F1ZXVlIG9yIGRxYnVmIGlvY3RsLCBJIGRvbid0
DQo+IGhhdmUgYW4gaWRlYSB5ZXQpLiBJIGJldCB0aGlzIGlkZWEgaXMgaW5hcHBsaWNhYmxlIHRv
IHdlcmUgeW91IGhhdmUgZmVuY2VzLCB3ZQ0KPiBkb24ndCBoYXZlIHRoYXQgaW4gdjRsMi4NCj4N
Cj4gVGhpcyBpZGVhIHdhcyBoaW50ZWQgYnkgUm9iZXJ0IEJlY2tldCAobm93IGluIENDKSwgYnV0
IHBlcmhhcHMgSSBwaWNrZWQgaXQgdXANCj4gd3JvbmcsIGV4cGxhaW5pbmcgaXQgd3JvbmcsIGV0
Yy4gSSdtIG5vIGV4cGVydCwganVzdCBub3RpY2VkIHRoZXJlIHdhc24ndCByZWFsbHkNCj4gYSBn
b29kIHBsYW4gZm9yIHRoYXQsIHNvIG9uZSBuZWVkcyB0byBtYWtlIG9uZSB1cC4gSSdtIG5vdCBh
d2FyZSBvaCBhbiBpbXBvcnRlcg0KPiBjb3VsZCBrbm93IGhvdyB0aGUgbWVtb3J5IHdhcyBhbGxv
Y2F0ZWQgYnkgdGhlIGV4cG9ydGVyLCBhbmQgd29yc3QsIGhvdyBhbg0KPiBpbXBvcnRlciBjb3Vs
ZCBmaWd1cmUtb3V0IHRoYXQgdGhlIGV4cG9ydCBpcyBnb2luZyB0byBwcm9kdWNlIGJ1ZmZlciB3
aXRoIGhvdA0KPiBDUFUgY2FjaGUgKFVWQyBkcml2ZXIgZG9lcyBtZW1jcHkgZnJvbSBVU0IgY2h1
bmtzIG9mIHZhcmlhYmxlIHNpemUgdG8gcHJvZHVjZSBhDQo+IGZpeGVkIHNpemUgaW1hZ2UpLg0K
DQpUaGlzIGlzIGV4YWN0bHkgd2hhdCBDaHJpc3RpYW4gd2FzIHNheWluZyBhYm92ZS4NCg0KQ2hl
ZXJzLA0KRGFuaWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
