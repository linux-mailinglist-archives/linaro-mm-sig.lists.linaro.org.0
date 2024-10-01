Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D3598C735
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Oct 2024 23:04:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2481344520
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Oct 2024 21:04:13 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by lists.linaro.org (Postfix) with ESMTPS id 8249940D4E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Oct 2024 21:03:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=vzP6JQKJ;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.177 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4582fa01090so80851cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Oct 2024 14:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727816635; x=1728421435; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0yL5+DFCKVXpdvIU7o9JTei5eaaMJNukFkXpSxhCohs=;
        b=vzP6JQKJpwC2Z917Ji+T5PuSN7y50InWEzjZVwax4xyPk8Zm3IGBK996L10bv7Ut8t
         FNaJfqK86/4WAHfb+1mf7F8p+f98r36ZuHB/doHWb8p2F95/cEaq2SEUPUwItzJ81DWw
         XQSJpNoZf5QGSPy0PKfnC7Ww+0dwiK15RdLllEnuK4GVss2R+0b+tQZh0XIkCqOGSmVL
         t1ecjLX7hD5ssh53tLwBdjgH/REKs5cNG6KHsJsyBjxCurQ1c2a61wYugHzECmnCs/ZM
         rhbm/17sRDhB0jVb5P5KyVnib6ZlVJYpYGDGkFJ3M+PltvHTQBli/4CzYf367ePkhYh8
         Kfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727816635; x=1728421435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0yL5+DFCKVXpdvIU7o9JTei5eaaMJNukFkXpSxhCohs=;
        b=KDuXHPH7no3B+/sq6VoOIXYhQXJxnFcpdeWtUyzmo5ixtmzzeQTFBXC+h3DkbiViiu
         bLL3UPiyb4V0pfld+UZELHtTYbldbVD1/cDxvqNtvjwDyyziDOECgNUCggUrs6DujVjV
         mlzljn6vrPmCAQvEd1eToPfxiYphosZ10jIF84HkUNnmv2Vo8ZLbmeQIrQvREpwUcwGj
         cuYPtPVmK+gBE3WCKT+WZaak9set+Uj9I9kZOPwG8jy1uuzgD29/pebkFxgF9ewt/uDh
         4ktOMxZm9lPxQGdgNLX7eB4HbpymYnWYxO/KFinNtAtAllp5FJ0Vvh6oMlsOUHBRQrP4
         vI0A==
X-Forwarded-Encrypted: i=1; AJvYcCVcgbHbs9DI0BUt+5ynrTUOwSUsWcfbjsNqrKIYQADozDyMWl7CTezfL/71QvRHKbcTuqNzNhTPUznFScO9@lists.linaro.org
X-Gm-Message-State: AOJu0YzsvqfDnxutvv67fsAE1K1QtmoUTTPF7bmFVKXPLniQLxr2o1gD
	nsfeYxvZLPQugDGxGVGrdOKRVS/QfDbwZBeAbHFHp5A6F0njguMWUadlL/weoioURJ3Zt9Im9jf
	BqCRWS+h0Sw5C17skRcAQ2qcbYerf0ORZsqJm
X-Google-Smtp-Source: AGHT+IGSw23X0VtbGJrp3RuM+W4ZEUK3ccsVBPcc338djiZUFHRx6Ws10QSWrDK7baFgiaNhONZcnQB5Uj1bMNXMTXU=
X-Received: by 2002:ac8:628f:0:b0:458:142b:ee66 with SMTP id
 d75a77b69052e-45d8170a18cmr1046281cf.2.1727816634742; Tue, 01 Oct 2024
 14:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240930144057.453751-1-mripard@kernel.org>
In-Reply-To: <20240930144057.453751-1-mripard@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 1 Oct 2024 23:03:41 +0200
Message-ID: <CABdmKX3=h57Jcphiq2Ekseg=j_ay8frmFgyHKWb04b4J5f2T5w@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8249940D4E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.177:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: FHK3A5WHDZWQIIXLD2WUUSG75SE4DADQ
X-Message-ID-Hash: FHK3A5WHDZWQIIXLD2WUUSG75SE4DADQ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] Documentation: dma-buf: heaps: Add heap name definitions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FHK3A5WHDZWQIIXLD2WUUSG75SE4DADQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMzAsIDIwMjQgYXQgNDo0MeKAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IEZvbGxvd2luZyBhIHJlY2VudCBkaXNjdXNzaW9uIGF0
IGxhc3QgUGx1bWJlcnMsIEpvaG4gU3R1bHR6LCBTdW1pdA0KPiBTZXdhbCwgVEogTWVyY2llciBh
bmQgSSBjYW1lIHRvIGFuIGFncmVlbWVudCB0aGF0IHdlIHNob3VsZCBkb2N1bWVudA0KPiB3aGF0
IHRoZSBkbWEtYnVmIGhlYXBzIG5hbWVzIGFyZSBleHBlY3RlZCB0byBiZSwgYW5kIHdoYXQgdGhl
IGJ1ZmZlcnMNCj4gYXR0cmlidXRlcyB5b3UnbGwgZ2V0IHNob3VsZCBiZSBkb2N1bWVudGVkLg0K
Pg0KPiBMZXQncyBjcmVhdGUgdGhhdCBkb2MgdG8gbWFrZSBzdXJlIHRob3NlIGF0dHJpYnV0ZXMg
YW5kIG5hbWVzIGFyZQ0KPiBndWFyYW50ZWVkIGdvaW5nIGZvcndhcmQuDQoNCkhleSwgdGhhbmtz
IGZvciBzZW5kaW5nIHRoaXMhDQoNCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJp
cGFyZEBrZXJuZWwub3JnPg0KPg0KPiAtLS0NCj4NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29y
YmV0QGx3bi5uZXQ+DQo+IFRvOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
Pg0KPiBDYzogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5j
b20+DQo+IENjOiBCcmlhbiBTdGFya2V5IDxCcmlhbi5TdGFya2V5QGFybS5jb20+DQo+IENjOiBK
b2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPg0KPiBDYzogIlQuSi4gTWVyY2llciIgPHRq
bWVyY2llckBnb29nbGUuY29tPg0KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+DQo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogbGludXgtZG9jQHZnZXIua2VybmVsLm9yZw0KPiAtLS0NCj4g
IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJzdCB8IDcxICsrKysr
KysrKysrKysrKysrKysNCj4gIERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9pbmRleC5yc3Qg
ICAgICAgICB8ICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQ0KPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhl
YXBzLnJzdA0KPg0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2Rt
YS1idWYtaGVhcHMucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVh
cHMucnN0DQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMDA0
MzYyMjdiNTQyDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL2RtYS1idWYtaGVhcHMucnN0DQo+IEBAIC0wLDAgKzEsNzEgQEANCj4gKy4uIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ICsNCj4gKz09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQ0KPiArQWxsb2NhdGluZyBkbWEtYnVmIHVzaW5nIGhlYXBzDQo+ICs9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0NCj4gKw0KPiArRG1hLWJ1ZiBIZWFwcyBhcmUgYSB3YXkg
Zm9yIHVzZXJzcGFjZSB0byBhbGxvY2F0ZSBkbWEtYnVmIG9iamVjdHMuIFRoZXkgYXJlDQo+ICt0
eXBpY2FsbHkgdXNlZCB0byBhbGxvY2F0ZSBidWZmZXJzIGZyb20gYSBzcGVjaWZpYyBhbGxvY2F0
aW9uIHBvb2wsIG9yIHRvIHNoYXJlDQo+ICtidWZmZXJzIGFjcm9zcyBmcmFtZXdvcmtzLg0KPiAr
DQo+ICtIZWFwcw0KPiArPT09PT0NCj4gKw0KPiArQSBoZWFwIHJlcHJlc2VudCBhIHNwZWNpZmlj
IGFsbG9jYXRvci4gVGhlIExpbnV4IGtlcm5lbCBjdXJyZW50bHkgc3VwcG9ydHMgdGhlDQoNCiJy
ZXByZXNlbnRzIg0KDQo+ICtmb2xsb3dpbmcgaGVhcHM6DQo+ICsNCj4gKyAtIFRoZSBgYHN5c3Rl
bWBgIGhlYXAgYWxsb2NhdGVzIHZpcnR1YWxseSBjb250aWd1b3VzLCBjYWNoZWFibGUsIGJ1ZmZl
cnMNCg0KVmlydHVhbGx5IGNvbnRpZ3VvdXMgc291bmRzIGEgbGl0dGxlIHdlaXJkIHRvIG1lIGhl
cmUuIFN1cmUsIHRoYXQncw0Kd2hhdCB1c2Vyc3BhY2Ugd2lsbCBnZXQgd2hlbiBpdCBtYXBzIHRo
ZSBidWZmZXIgKGFuZCBJIGd1ZXNzIHRoaXMgKmlzKg0KVUFQSSBkb2N1bWVudGF0aW9uIGFmdGVy
IGFsbCksIGJ1dCBJJ20gbm90IHN1cmUgaXQncyBjb3JyZWN0IHRvIHNheQ0KdGhhdCdzIGEgcHJv
cGVydHkgb2YgdGhlIGJ1ZmZlciBpdHNlbGY/IFdoYXQgaWYgd2UgaW52ZXJ0IHRoaXMgYW5kDQpp
bnN0ZWFkIHNheSB0aGF0IHRoZXJlIGlzIE5PIGd1YXJhbnRlZSB0aGF0IHRoZSBtZW1vcnkgZm9y
IHRoZSBidWZmZXI6DQogLSBpcyBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMNCiAtIGhhcyBhbnkgcGFy
dGljdWxhciBhbGlnbm1lbnQgKGdyZWF0ZXIgdGhhbiBwYWdlIGFsaWduZWQpDQogLSBoYXMgYW55
IHBhcnRpY3VsYXIgcGFnZSBzaXplIChsYXJnZSBvcmRlciBhbGxvY2F0aW9ucyBhcmUgYXR0ZW1w
dGVkDQpmaXJzdCwgYnV0IG5vdCBndWFyYW50ZWVkIG9yIGV2ZW4gbGlrZWx5IG9uIHNvbWUgc3lz
dGVtcykNCiAtIGhhcyBib3VuZHMgb24gcGh5c2ljYWwgYWRkcmVzc2VzDQoNCk1heWJlIHRoYXQg
aXMgdG9vIG11Y2ggZGV0YWlsIGhlcmUuLi4NCg0KPiArDQo+ICsgLSBUaGUgYGByZXNlcnZlZGBg
IGhlYXAgYWxsb2NhdGVzIHBoeXNpY2FsbHkgY29udGlndW91cywgY2FjaGVhYmxlLCBidWZmZXJz
Lg0KPiArICAgRGVwZW5kaW5nIG9uIHRoZSBwbGF0Zm9ybSwgaXQgbWlnaHQgYmUgY2FsbGVkIGRp
ZmZlcmVudGx5Og0KPiArDQo+ICsgICAgLSBBY2VyIEljb25pYSBUYWIgQTUwMDogYGBsaW51eCxj
bWFgYA0KPiArICAgIC0gQWxsd2lubmVyIHN1bjRpLCBzdW41aSBhbmQgc3VuN2kgZmFtaWxpZXM6
IGBgZGVmYXVsdC1wb29sYGANCj4gKyAgICAtIEFtbG9naWMgQTE6IGBgbGludXgsY21hYGANCj4g
KyAgICAtIEFtbG9naWMgRzEyQS9HMTJCL1NNMTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gQW1s
b2dpYyBHWEJCL0dYTDogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gQVNVUyBFZWVQYWQgVHJhbnNm
b3JtZXIgVEYxMDE6IGBgbGludXgsY21hYGANCj4gKyAgICAtIEFTVVMgR29vZ2xlIE5leHVzIDcg
KFByb2plY3QgQmFjaCAvIE1FMzcwVEcpIEUxNTY1OiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBB
U1VTIEdvb2dsZSBOZXh1cyA3IChQcm9qZWN0IE5ha2FzaSAvIE1FMzcwVCkgRTE1NjU6IGBgbGlu
dXgsY21hYGANCj4gKyAgICAtIEFTVVMgR29vZ2xlIE5leHVzIDcgKFByb2plY3QgTmFrYXNpIC8g
TUUzNzBUKSBQTTI2OTogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBJ
bmZpbml0eSBURjcwMFQ6IGBgbGludXgsY21hYGANCj4gKyAgICAtIEFzdXMgVHJhbnNmb3JtZXIg
UGFkIDNHIFRGMzAwVEc6IGBgbGludXgsY21hYGANCj4gKyAgICAtIEFzdXMgVHJhbnNmb3JtZXIg
UGFkIFRGMzAwVDogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gQXN1cyBUcmFuc2Zvcm1lciBQYWQg
VEY3MDFUOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBBc3VzIFRyYW5zZm9ybWVyIFByaW1lIFRG
MjAxOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBBU1VTIFZpdm9ib29rIFMgMTU6IGBgbGludXgs
Y21hYGANCj4gKyAgICAtIENhZGVuY2UgS0M3MDU6IGBgbGludXgsY21hYGANCj4gKyAgICAtIERp
Z2kgSW50ZXJuYXRpb25hbCBDb25uZWN0Q29yZSA2VUw6IGBgbGludXgsY21hYGANCj4gKyAgICAt
IEZyZWVzY2FsZSBpLk1YOERYTCBFVks6IGBgbGludXgsY21hYGANCj4gKyAgICAtIEZyZWVzY2Fs
ZSBUUU1hOFh4OiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBIaXNpbGljb24gSGlrZXk6IGBgbGlu
dXgsY21hYGANCj4gKyAgICAtIExlbm92byBUaGlua1BhZCBUMTRzIEdlbiA2OiBgYGxpbnV4LGNt
YWBgDQo+ICsgICAgLSBMZW5vdm8gVGhpbmtQYWQgWDEzczogYGBsaW51eCxjbWFgYA0KPiArICAg
IC0gTGVub3ZvIFlvZ2EgU2xpbSA3eDogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gTEcgT3B0aW11
cyA0WCBIRCBQODgwOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBMRyBPcHRpbXVzIFZ1IFA4OTU6
IGBgbGludXgsY21hYGANCj4gKyAgICAtIExvb25nc29uIDJrMDUwMCwgMmsxMDAwIGFuZCAyazIw
MDA6IGBgbGludXgsY21hYGANCj4gKyAgICAtIE1pY3Jvc29mdCBSb211bHVzOiBgYGxpbnV4LGNt
YWBgDQo+ICsgICAgLSBOWFAgaS5NWDhVTFAgRVZLOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBO
WFAgaS5NWDkzIDl4OSBRU0I6IGBgbGludXgsY21hYGANCj4gKyAgICAtIE5YUCBpLk1YOTMgMTFY
MTEgRVZLOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBOWFAgaS5NWDkzIDE0WDE0IEVWSzogYGBs
aW51eCxjbWFgYA0KPiArICAgIC0gTlhQIGkuTVg5NSAxOVgxOSBFVks6IGBgbGludXgsY21hYGAN
Cj4gKyAgICAtIE91eWEgR2FtZSBDb25zb2xlOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBQZWdh
dHJvbiBDaGFnYWxsOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBQSFlURUMgcGh5Q09SRS1BTTYy
QSBTT006IGBgbGludXgsY21hYGANCj4gKyAgICAtIFBIWVRFQyBwaHlDT1JFLWkuTVg5MyBTT006
IGBgbGludXgsY21hYGANCj4gKyAgICAtIFF1YWxjb21tIFNDODI4MFhQIENSRDogYGBsaW51eCxj
bWFgYA0KPiArICAgIC0gUXVhbGNvbW0gWDFFODAxMDAgQ1JEOiBgYGxpbnV4LGNtYWBgDQo+ICsg
ICAgLSBRdWFsY29tbSBYMUU4MDEwMCBRQ1A6IGBgbGludXgsY21hYGANCj4gKyAgICAtIFJhc3Bi
ZXJyeVBpOiBgYGxpbnV4LGNtYWBgDQo+ICsgICAgLSBUZXhhcyBJbnN0cnVtZW50cyBBTTYyeCBT
SyBib2FyZCBmYW1pbHk6IGBgbGludXgsY21hYGANCj4gKyAgICAtIFRleGFzIEluc3RydW1lbnRz
IEFNNjJBNyBTSzogYGBsaW51eCxjbWFgYA0KPiArICAgIC0gVG9yYWRleCBBcGFsaXMgaU1YODog
YGBsaW51eCxjbWFgYA0KPiArICAgIC0gVFEtU3lzdGVtcyBpLk1YOE1NIFRRTWE4TXhNTDogYGBs
aW51eCxjbWFgYA0KPiArICAgIC0gVFEtU3lzdGVtcyBpLk1YOE1OIFRRTWE4TXhOTDogYGBsaW51
eCxjbWFgYA0KPiArICAgIC0gVFEtU3lzdGVtcyBpLk1YOE1QbHVzIFRRTWE4TVB4TDogYGBsaW51
eCxjbWFgYA0KPiArICAgIC0gVFEtU3lzdGVtcyBpLk1YOE1RIFRRTWE4TVE6IGBgbGludXgsY21h
YGANCj4gKyAgICAtIFRRLVN5c3RlbXMgaS5NWDkzIFRRTWE5M3h4TEEvVFFNYTkzeHhDQSBTT006
IGBgbGludXgsY21hYGANCj4gKyAgICAtIFRRLVN5c3RlbXMgTUJBNlVMeCBCYXNlYm9hcmQ6IGBg
bGludXgsY21hYGANCj4gKw0KDQpUaGlzIHBhcnQgTEdUTS4gTWlnaHQgYmUgd29ydGggaXQgdG8g
ZG9jdW1lbnQgdGhhdCBhIENNQSByZWdpb24gbXVzdA0KYmUgc3BlY2lmaWVkIG9uIHRoZSBrZXJu
ZWwgY29tbWFuZCBsaW5lLiBPdGhlcndpc2UgdGhpcyBoZWFwIHdvbid0DQpzaG93IHVwIGF0IHJ1
bnRpbWUgYnkgb25seSBlbmFibGluZyB0aGUga2VybmVsIGNvbmZpZ3MgbmVjZXNzYXJ5IHRvDQpi
dWlsZCBpdC4NCg0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2lu
ZGV4LnJzdCBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9pbmRleC5yc3QNCj4gaW5kZXgg
Mjc0Y2M3NTQ2ZWZjLi40OTAxY2U3YzZjYjcgMTAwNjQ0DQo+IC0tLSBhL0RvY3VtZW50YXRpb24v
dXNlcnNwYWNlLWFwaS9pbmRleC5yc3QNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2Ut
YXBpL2luZGV4LnJzdA0KPiBAQCAtNDEsMTAgKzQxLDExIEBAIERldmljZXMgYW5kIEkvTw0KPg0K
PiAgLi4gdG9jdHJlZTo6DQo+ICAgICA6bWF4ZGVwdGg6IDENCj4NCj4gICAgIGFjY2VsZXJhdG9y
cy9vY3hsDQo+ICsgICBkbWEtYnVmLWhlYXBzDQo+ICAgICBkbWEtYnVmLWFsbG9jLWV4Y2hhbmdl
DQo+ICAgICBncGlvL2luZGV4DQo+ICAgICBpb21tdWZkDQo+ICAgICBtZWRpYS9pbmRleA0KPiAg
ICAgZGNkYmFzDQo+IC0tDQo+IDIuNDYuMQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
