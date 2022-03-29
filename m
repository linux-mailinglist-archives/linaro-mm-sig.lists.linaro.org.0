Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3729B4EC4B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:42:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 676E53ED3E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:42:50 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by lists.linaro.org (Postfix) with ESMTPS id D68963EA58
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 07:11:12 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id d65so9894732qke.5
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 00:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2Jpv9X1mRqJBbBsT23UY5br7jZqVXCd74N7s1FPvLr4=;
        b=aalhu3Sn2nCA2dfMtZ5bg8U92vZKzbYYf8SrKTbvgcuwConxVqtEYxu+UbeK/CJKxp
         J2XW8EhweBztEFHH7svb39CtM57BYUnEa7U+pYtiJYBB5XUHBvrnsp+cPrefNgiMcLrZ
         62Llq4Z4FsR8ZRjtmDyiamTrk9hpftq7UQzCsIhIrvZfUdHmBtdZGK89rhJOfeP85PpH
         eVGG2mAClPGGFETMVpQWYnprmSsUIpJW+u6MwF45N/uNc6ZpXKMiZ3fb5Ov5AVu7FhxV
         Gv1tT+uDa8zgT/Sr4alxIm2XyNmsemas9yiRD5o83DGQuSVhR5K1LYSgo7DCLFccDPw9
         0LAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2Jpv9X1mRqJBbBsT23UY5br7jZqVXCd74N7s1FPvLr4=;
        b=DzpQk6T9k3aWeXG9RaGCL3m/59hOEEXrdNgiSDBFv8slbAqdqI75Ssfxy3ABXxHOHD
         M9bAVi3BzaCHGZi35QihKiSBPtsexLL4qAVacvA/BXy4hNJm/1XX3khQ5ROosi0eW4kL
         tUwvs8k37elTF2zR2aM9WQUvMzG/BP9fRPxkaKN85pxohagkML4hJcEm3Czl/xazdWp9
         EQO1Pcv2yKQKwDeybozaqXB1KwE19dwMZa644wfqKgAVJ7aSnN0x8G1gjcxHcrpT6PHg
         1Cun3b3XU6brBbUF5KkXFoxcJkJ1jAA9zZLRf9X12gCactRM1MzjXTm6MwP/B2XRYM30
         61GQ==
X-Gm-Message-State: AOAM533EaAL/YAXZK/YHTD9/ckAk7Wv9D5kpZXLKerKqCwiadQqag3+C
	2fSEIQ9oF5EzKfADYcllPAo=
X-Google-Smtp-Source: ABdhPJy+jP697xainM6j70Eo1PTqkiP/ca6UtAdVU/oGW4GfmOgL8tApjwuNxpCwyJzVAWUtTBOa6g==
X-Received: by 2002:a37:9a47:0:b0:680:aeaa:d89c with SMTP id c68-20020a379a47000000b00680aeaad89cmr15826074qke.591.1648537872342;
        Tue, 29 Mar 2022 00:11:12 -0700 (PDT)
Received: from ?IPv6:2003:f6:ef00:8400:3d36:58a:667a:1da9? (p200300f6ef0084003d36058a667a1da9.dip0.t-ipconnect.de. [2003:f6:ef00:8400:3d36:58a:667a:1da9])
        by smtp.gmail.com with ESMTPSA id j1-20020a05620a288100b0067b1be3201bsm8843300qkp.112.2022.03.29.00.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 00:11:11 -0700 (PDT)
Message-ID: <deb2cd86196addbc47908455880000c618b984be.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron <jic23@kernel.org>
Date: Tue, 29 Mar 2022 09:11:48 +0200
In-Reply-To: <96XG9R.3NOIIEN7IS001@crapouillou.net>
References: <20220207125933.81634-1-paul@crapouillou.net>
	 <20220207125933.81634-3-paul@crapouillou.net>
	 <20220328182409.1e959386@jic23-huawei>
	 <96XG9R.3NOIIEN7IS001@crapouillou.net>
User-Agent: Evolution 3.42.4 
MIME-Version: 1.0
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: R54PFMNYP7X2I7XMKXUIBHCDMN67J4BE
X-Message-ID-Hash: R54PFMNYP7X2I7XMKXUIBHCDMN67J4BE
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:41:08 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 02/12] iio: buffer-dma: Enable buffer write support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R54PFMNYP7X2I7XMKXUIBHCDMN67J4BE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDIyLTAzLTI4IGF0IDE5OjM5ICswMTAwLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0K
PiBIaSBKb25hdGhhbiwNCj4gDQo+IExlIGx1bi4sIG1hcnMgMjggMjAyMiBhdCAxODoyNDowOSAr
MDEwMCwgSm9uYXRoYW4gQ2FtZXJvbiANCj4gPGppYzIzQGtlcm5lbC5vcmc+IGEgw6ljcml0IDoN
Cj4gPiBPbiBNb24swqAgNyBGZWIgMjAyMiAxMjo1OToyMyArMDAwMA0KPiA+IFBhdWwgQ2VyY3Vl
aWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZToNCj4gPiANCj4gPiA+IMKgQWRkaW5nIHdy
aXRlIHN1cHBvcnQgdG8gdGhlIGJ1ZmZlci1kbWEgY29kZSBpcyBlYXN5IC0gdGhlDQo+ID4gPiB3
cml0ZSgpDQo+ID4gPiDCoGZ1bmN0aW9uIGJhc2ljYWxseSBuZWVkcyB0byBkbyB0aGUgZXhhY3Qg
c2FtZSB0aGluZyBhcyB0aGUNCj4gPiA+IHJlYWQoKQ0KPiA+ID4gwqBmdW5jdGlvbjogZGVxdWV1
ZSBhIGJsb2NrLCByZWFkIG9yIHdyaXRlIHRoZSBkYXRhLCBlbnF1ZXVlIHRoZQ0KPiA+ID4gYmxv
Y2sNCj4gPiA+IMKgd2hlbiBlbnRpcmVseSBwcm9jZXNzZWQuDQo+ID4gPiANCj4gPiA+IMKgVGhl
cmVmb3JlLCB0aGUgaWlvX2J1ZmZlcl9kbWFfcmVhZCgpIGFuZCB0aGUgbmV3IA0KPiA+ID4gaWlv
X2J1ZmZlcl9kbWFfd3JpdGUoKQ0KPiA+ID4gwqBub3cgYm90aCBjYWxsIGEgZnVuY3Rpb24gaWlv
X2J1ZmZlcl9kbWFfaW8oKSwgd2hpY2ggd2lsbCBwZXJmb3JtDQo+ID4gPiB0aGlzDQo+ID4gPiDC
oHRhc2suDQo+ID4gPiANCj4gPiA+IMKgVGhlIC5zcGFjZV9hdmFpbGFibGUoKSBjYWxsYmFjayBj
YW4gcmV0dXJuIHRoZSBleGFjdCBzYW1lIHZhbHVlDQo+ID4gPiBhcyANCj4gPiA+IHRoZQ0KPiA+
ID4gwqAuZGF0YV9hdmFpbGFibGUoKSBjYWxsYmFjayBmb3IgaW5wdXQgYnVmZmVycywgc2luY2Ug
aW4gYm90aA0KPiA+ID4gY2FzZXMgd2UNCj4gPiA+IMKgY291bnQgdGhlIGV4YWN0IHNhbWUgdGhp
bmcgKHRoZSBudW1iZXIgb2YgYnl0ZXMgaW4gZWFjaA0KPiA+ID4gYXZhaWxhYmxlDQo+ID4gPiDC
oGJsb2NrKS4NCj4gPiA+IA0KPiA+ID4gwqBOb3RlIHRoYXQgd2UgcHJlZW1wdGl2ZWx5IHJlc2V0
IGJsb2NrLT5ieXRlc191c2VkIHRvIHRoZQ0KPiA+ID4gYnVmZmVyJ3MgDQo+ID4gPiBzaXplDQo+
ID4gPiDCoGluIGlpb19kbWFfYnVmZmVyX3JlcXVlc3RfdXBkYXRlKCksIGFzIGluIHRoZSBmdXR1
cmUgdGhlDQo+ID4gPiDCoGlpb19kbWFfYnVmZmVyX2VucXVldWUoKSBmdW5jdGlvbiB3b24ndCBy
ZXNldCBpdC4NCj4gPiA+IA0KPiA+ID4gwqB2MjogLSBGaXggYmxvY2stPnN0YXRlIG5vdCBiZWlu
ZyByZXNldCBpbg0KPiA+ID4gwqDCoMKgwqDCoMKgIGlpb19kbWFfYnVmZmVyX3JlcXVlc3RfdXBk
YXRlKCkgZm9yIG91dHB1dCBidWZmZXJzLg0KPiA+ID4gwqDCoMKgwqAgLSBPbmx5IHVwZGF0ZSBi
bG9jay0+Ynl0ZXNfdXNlZCBvbmNlIGFuZCBhZGQgYSBjb21tZW50IGFib3V0DQo+ID4gPiB3aHkg
d2UNCj4gPiA+IMKgwqDCoMKgwqDCoCB1cGRhdGUgaXQuDQo+ID4gPiDCoMKgwqDCoCAtIEFkZCBh
IGNvbW1lbnQgYWJvdXQgd2h5IHdlJ3JlIHNldHRpbmcgYSBkaWZmZXJlbnQgc3RhdGUNCj4gPiA+
IGZvciANCj4gPiA+IG91dHB1dA0KPiA+ID4gwqDCoMKgwqDCoMKgIGJ1ZmZlcnMgaW4gaWlvX2Rt
YV9idWZmZXJfcmVxdWVzdF91cGRhdGUoKQ0KPiA+ID4gwqDCoMKgwqAgLSBSZW1vdmUgdXNlbGVz
cyBjYXN0IHRvIGJvb2wgKCEhKSBpbiBpaW9fZG1hX2J1ZmZlcl9pbygpDQo+ID4gPiANCj4gPiA+
IMKgU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+DQo+
ID4gPiDCoFJldmlld2VkLWJ5OiBBbGV4YW5kcnUgQXJkZWxlYW4gPGFyZGVsZWFuYWxleEBnbWFp
bC5jb20+DQo+ID4gT25lIGNvbW1lbnQgaW5saW5lLg0KPiA+IA0KPiA+IEknZCBiZSB0ZW1wdGVk
IHRvIHF1ZXVlIHRoaXMgdXAgd2l0aCB0aGF0IGZpeGVkLCBidXQgZG8gd2UgaGF2ZQ0KPiA+IGFu
eSB1c2Vycz/CoCBFdmVuIHRob3VnaCBpdCdzIHRyaXZpYWwgSSdtIG5vdCB0aGF0IGtlZW4gb24g
Y29kZQ0KPiA+IHVwc3RyZWFtIHdlbGwgaW4gYWR2YW5jZSBvZiBpdCBiZWluZyB1c2VkLg0KPiAN
Cj4gVGhlcmUncyBhIHVzZXJzcGFjZSB1c2VyIGluIGxpYmlpby4gT24gdGhlIGtlcm5lbCBzaWRl
IHdlIGRvIGhhdmUgDQo+IGRyaXZlcnMgdGhhdCB1c2UgaXQgaW4gQURJJ3MgZG93bnN0cmVhbSBr
ZXJuZWwsIHRoYXQgd2UgcGxhbiB0byANCj4gdXBzdHJlYW0gaW4gdGhlIGxvbmcgdGVybSAoYnV0
IGl0IGNhbiB0YWtlIHNvbWUgdGltZSwgYXMgd2UgbmVlZCB0byANCj4gdXBzdHJlYW0gb3RoZXIg
dGhpbmdzIGZpcnN0LCBsaWtlIEpFU0QyMDRCIHN1cHBvcnQpLg0KPiANCj4gDQoNCllvdSBtZWFu
LCB1c2VycyBmb3IgRE1BIG91dHB1dCBidWZmZXJzPyBJZiBzbywgSSBoYXZlIG9uIG15IHF1ZXVl
IHRvDQphZGQgdGhlIGRhYyBjb3VudGVycGFydCBvZiB0aGlzIG9uZToNCg0KaHR0cHM6Ly9lbGl4
aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2lpby9hZGMvYWRpLWF4
aS1hZGMuYw0KDQpXaGljaCBpcyBhIHVzZXIgb2YgRE1BIGJ1ZmZlcnMuIFRob3VnaCB0aGlzIG9u
ZSBkb2VzIG5vdCBkZXBlbmQgb24NCkpFU0QyMDQsIEkgc3VzcGVjdCBpdCB3aWxsIGFsc28gYmUg
YSB0cmlja3kgcHJvY2VzcyBtYWlubHkgYmVjYXVzZSBJDQp0aGluayB0aGVyZSBhcmUgbWFqb3Ig
aXNzdWVzIG9uIGhvdyB0aGluZ3MgYXJlIGRvbmUgcmlnaHQgbm93IChvbiB0aGUNCkFEQyBkcml2
ZXIpLg0KDQpCdXQgeWVhaCwgbm90IGEgdG9waWMgaGVyZSBhbmQgSSBkbyBwbGFuIHRvIGZpcnN0
IHN0YXJ0IHRoZSBkaXNjdXNzaW9uDQpvbiB0aGUgbWFpbGluZyBsaXN0IGJlZm9yZSBzdGFydGlu
ZyBkZXZlbG9waW5nIChob3BlZnVsbHkgaW4gdGhlIGNvbWluZw0Kd2Vla3MpLi4uDQoNCi0gTnVu
byBTw6ENCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
