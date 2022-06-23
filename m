Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C709A5578AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 13:28:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECB923F43F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 11:27:59 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by lists.linaro.org (Postfix) with ESMTPS id F2EBA3EF6E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 11:27:54 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id 23so35282679ybe.8
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 04:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HQf7Xetq2qw6O5KGu3AbqobLNDGED8NEFyUud0J6jJM=;
        b=VEN3Qne6XvMDufDpYDjue8IlCIvivVl8JFu/jLxgngalD1/GMI3oF0ptB6V7/xOt3K
         56nk6EdjeK21hW+EgnPmUcQjhTOZu2L+nCHZ/dz7r5YcIt6BualYKr1jTrtCN6NK2GnI
         5eO64xmF1te0Lg3+balozAi+GTh2Xnjc0UewkUU8P25Xf7ad2UW656SYSbbGFnqga39u
         jccbLKVhWMro6OEjZj8SgFJXOS163jz+dK1yqRaOvVc5XCM+QHihtGx0Cz5Uq/K30XU5
         4qSphkxZC9JI9PIYLmimuvhocycPMlHijZggDOE863PMPKGvpYdJ0RsYDD21fTqWOgSH
         OkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HQf7Xetq2qw6O5KGu3AbqobLNDGED8NEFyUud0J6jJM=;
        b=kg+5sr6p9hGBEy3zdWaUv0gKBUfBLa7oANGB3+U+oIqRNP2sDlG3xYpSesJ2hr+Ppx
         43ld0MPVmnF6oSI7WuHV7j6x5FABOD8Mw9IFYC9iWC8iG6YO0VLG85IGDiqU2/ghhxfD
         Rvzofxh3v/59pzzaX30xyirEwmrEOhDxMFD4PewUfjOfFtCmb0hTTSpImn1xrSPJYXlH
         ITzG9LeDgiWfsztJEwwEG3MVGsM6Nr5Hc612wLGJ4pWcouBmWsjOmbyMlGUfi7t7oU8l
         vGVRAhsIZjxOYx0hR3/d+qZb3Pyl72TQmSk4aSLhPr3AUuTxlW7L2c0Ch7yUM3p6HPD/
         eN1A==
X-Gm-Message-State: AJIora+cPweov5vxTb3lYKFWeyaTWmt5d8gb1iMI8exKW4yFF81tn8QC
	7OIqDw3JLP8fXUrgll0zJv4Hef2GZanFNnJ5VeX6Tg==
X-Google-Smtp-Source: AGRyM1tqH9BZAOHPTjQSl2yFEhXyjX3QtI5AG18dKht12xn42EllI+c4QF+m43lD/JpEaOKNqaydDkuDMX/OPwRgqBs=
X-Received: by 2002:a05:6902:c5:b0:669:1646:b07 with SMTP id
 i5-20020a05690200c500b0066916460b07mr1220654ybs.553.1655983674521; Thu, 23
 Jun 2022 04:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com> <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com> <20220623101326.18beeab3@eldfell>
 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com> <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com> <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
 <e691bccc-171d-f674-2817-13a945970f4a@amd.com> <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
 <05814ddb-4f3e-99d8-025a-c31db7b2c46b@amd.com> <708e27755317a7650ca08ba2e4c14691ac0d6ba2.camel@pengutronix.de>
 <6287f5f8-d9af-e03d-a2c8-ea8ddcbdc0d8@amd.com>
In-Reply-To: <6287f5f8-d9af-e03d-a2c8-ea8ddcbdc0d8@amd.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 23 Jun 2022 12:27:26 +0100
Message-ID: <CAPj87rOykZv7bjNhHPT4StrsPz8Y_DWqab4Ryq=Qqh77LS2e=Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: OC6GODU2DI6FYQED5O7E6GXIGGFVFDBY
X-Message-ID-Hash: OC6GODU2DI6FYQED5O7E6GXIGGFVFDBY
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pekka Paalanen <ppaalanen@gmail.com>, "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OC6GODU2DI6FYQED5O7E6GXIGGFVFDBY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiBUaHUsIDIzIEp1biAyMDIyIGF0IDEyOjExLCBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+IEluIGZhY3QgRE1B
LWJ1ZiBzaGFyaW5nIHdvcmtzIGZpbmUgb24gbW9zdCBvZiB0aG9zZSBTb0NzIGJlY2F1c2UNCj4g
PiBldmVyeW9uZSBqdXN0IGFzc3VtZXMgdGhhdCBhbGwgdGhlIGFjY2VsZXJhdG9ycyBkb24ndCBz
bm9vcCwgc28gdGhlDQo+ID4gbWVtb3J5IHNoYXJlZCB2aWEgRE1BLWJ1ZiBpcyBtb3N0bHkgQ1BV
IHVuY2FjaGVkLiBJdCBvbmx5IGZhbGxzIGFwYXJ0DQo+ID4gZm9yIHVzZXMgbGlrZSB0aGUgVVZD
IGNhbWVyYXMsIHdoZXJlIHRoZSBzaGFyZWQgYnVmZmVyIGVuZHMgdXAgYmVpbmcNCj4gPiBDUFUg
Y2FjaGVkLg0KPg0KPiBXZWxsIHRoZW4gdGhlIGV4aXN0aW5nIERNQS1idWYgZnJhbWV3b3JrIGlz
IG5vdCB3aGF0IHlvdSB3YW50IHRvIHVzZSBmb3INCj4gdGhpcy4NCj4NCj4gPiBOb24tY29oZXJl
bnQgd2l0aG91dCBleHBsaWNpdCBkb21haW4gdHJhbnNmZXIgcG9pbnRzIGlzIGp1c3Qgbm90IGdv
aW5nDQo+ID4gdG8gd29yay4gU28gd2h5IGNhbid0IHdlIHNvbHZlIHRoZSBpc3N1ZSBmb3IgRE1B
LWJ1ZiBpbiB0aGUgc2FtZSB3YXkgYXMNCj4gPiB0aGUgRE1BIEFQSSBhbHJlYWR5IHNvbHZlZCBp
dCB5ZWFycyBhZ286IGJ5IGFkZGluZyB0aGUgZXF1aXZhbGVudCBvZg0KPiA+IHRoZSBkbWFfc3lu
YyBjYWxscyB0aGF0IGRvIGNhY2hlIG1haW50ZW5hbmNlIHdoZW4gbmVjZXNzYXJ5PyBPbiB4ODYg
KG9yDQo+ID4gYW55IHN5c3RlbSB3aGVyZSB0aGluZ3MgYXJlIG1vc3RseSBjb2hlcmVudCkgeW91
IGNvdWxkIHN0aWxsIG5vLW9wIHRoZW0NCj4gPiBmb3IgdGhlIGNvbW1vbiBjYXNlIGFuZCBvbmx5
IHRyaWdnZXIgY2FjaGUgY2xlYW5pbmcgaWYgdGhlIGltcG9ydGVyDQo+ID4gZXhwbGljaXRseSBz
YXlzIHRoYXQgaXMgZ29pbmcgdG8gZG8gYSBub24tc25vb3BpbmcgYWNjZXNzLg0KPg0KPiBCZWNh
dXNlIERNQS1idWYgaXMgYSBmcmFtZXdvcmsgZm9yIGJ1ZmZlciBzaGFyaW5nIGJldHdlZW4gY2Fj
aGUgY29oZXJlbnQNCj4gZGV2aWNlcyB3aGljaCBkb24ndCBzaWduYWwgdHJhbnNpdGlvbnMuDQo+
DQo+IFdlIGludGVudGlvbmFsbHkgZGlkbid0IGltcGxlbWVudGVkIGFueSBvZiB0aGUgZG1hX3N5
bmNfKiBmdW5jdGlvbnMNCj4gYmVjYXVzZSB0aGF0IHdvdWxkIGJyZWFrIHRoZSBpbnRlbmRlZCB1
c2UgY2FzZS4NCj4NCj4gWW91IGNhbiBvZiBjb3Vyc2UgdXNlIERNQS1idWYgaW4gYW4gaW5jb2hl
cmVudCBlbnZpcm9ubWVudCwgYnV0IHRoZW4geW91DQo+IGNhbid0IGV4cGVjdCB0aGF0IHRoaXMg
d29ya3MgYWxsIHRoZSB0aW1lLg0KPg0KPiBUaGlzIGlzIGRvY3VtZW50ZWQgYmVoYXZpb3IgYW5k
IHNvIGZhciB3ZSBoYXZlIGJsdW50bHkgcmVqZWN0ZWQgYW55IG9mDQo+IHRoZSBjb21wbGFpbnMg
dGhhdCBpdCBkb2Vzbid0IHdvcmsgb24gbW9zdCBBUk0gU29DcyBhbmQgSSBkb24ndCByZWFsbHkN
Cj4gc2VlIGEgd2F5IHRvIGRvIHRoaXMgZGlmZmVyZW50bHkuDQoNCkZvciBzb21lIHN0cmFuZ2Ug
cmVhc29uLCAnbGV0J3MgZG8gYnVmZmVyIHNoYXJpbmcgYnV0IG1ha2Ugc3VyZSBpdA0KZG9lc24n
dCB3b3JrIG9uIEFybScgd2Fzbid0IGV4YWN0bHkgdGhlIGludGVudGlvbiBvZiB0aGUgZ3JvdXBz
IHdobw0KY2FtZSB0b2dldGhlciB1bmRlciB0aGUgTGluYXJvIHVtYnJlbGxhIHRvIGNyZWF0ZSBk
bWFidWYuDQoNCklmIGl0J3MgcmVhbGx5IHlvdXIgYmVsaWVmIHRoYXQgZG1hYnVmIHJlcXVpcmVz
IHVuaXZlcnNhbCBzbm9vcGluZywgSQ0KcmVjb21tZW5kIHlvdSBzZW5kIHRoZSBwYXRjaCB0byB1
cGRhdGUgdGhlIGRvY3VtZW50YXRpb24sIGFzIHdlbGwgYXMNCnRvIHJlbW92ZSBEUklWRVJfUFJJ
TUUgZnJvbSwgcmVhbGlzdGljYWxseSwgbW9zdCBub24tUENJRSBkcml2ZXJzLg0KDQpDaGVlcnMs
DQpEYW5pZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
