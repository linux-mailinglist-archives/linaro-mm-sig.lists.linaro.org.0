Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD7E997C66
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Oct 2024 07:27:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AFA143C1E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Oct 2024 05:27:00 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id 723553F33D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Oct 2024 05:26:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=JvJghz9i;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of pintu.ping@gmail.com designates 209.85.167.50 as permitted sender) smtp.mailfrom=pintu.ping@gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53995380bb3so554907e87.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Oct 2024 22:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728538002; x=1729142802; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I2OggcA+gxqqTXGi/3T5tDMn09O+q9SzuiOHvmMgRpY=;
        b=JvJghz9ix6sqSZ+FeXnO3oaHQdOm8eXrloMLTlHqhsiOrzTraJzYGs51DGnHMaxayA
         NHYDyqy9IJrcpEnC4TflxFvEBGyMUB6pxT5hAiyYdvPH4ldjhMzKvoj9RUGaMhCKv78i
         KJ9b37QR/hL1Rf8/RJOSHBAdqyzo4aE0EitG3RJwQ9VWHGA922f1mD3dBm678jTOilts
         eh9eqSOOFPbNumiCJQ47betn1rFq9+sRwMLZYHzXmTOfQecgHuLbm2G6r3UF4pdC9fZG
         uqW9boGnEMLDPZxWb2mhh9WL3CEOzqaAUs65XgeETLmWzXAvp9Ss68tdj/y2BNPzaXYz
         JF4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728538002; x=1729142802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I2OggcA+gxqqTXGi/3T5tDMn09O+q9SzuiOHvmMgRpY=;
        b=RjpmDStKYuKMQDmqDefH2GcZcd9EdRO8cqoJemMrFGFAkmQgm77YtCMleBKpH3jH0s
         vH+Io0Ssg1VEobB9qRen7kC+Lldpl3hrMCpdu8Jl3GZGevMO0rADG52SLGCajO9JKlx1
         TO58nKve1SGmLccirwNcnWX/tYc/+AfTy9XYMAnQcx3BTKN5h6GDDmyLLIhggI8mlho3
         S0I7LYCq7rQMIIhvU7mbwH7JRTDBuxnYithyo27PBbk2szZ240LwES02kyXixvNTrP3i
         Ei2Ajh3N///P1LC3gBWduPgXnoF1DWnYkkZ7ahzUuXsCIdiQdUMp/i5uzeCW985sX53i
         GdIg==
X-Forwarded-Encrypted: i=1; AJvYcCU6Ef0ZC6/76EbgxpJDbCYiRa1xzsOo9rca9atRnCb9DonUyFZ6HNZ2iYtqdwGDI8jM7sNLFjD3uGZ/Ln82@lists.linaro.org
X-Gm-Message-State: AOJu0YwsoRV/wT0CjNH/i1ORUwbkQcm+OLgwwg2wfokj3NC85iPcDm4N
	8fcckhk35wevJob7BJOu//ljQ34qRlK2TRGUuCXsCVx8h8b3goJcCVaBVGKUQIxmCpbVzk3Ea+v
	1crh80yxpg7cgIxBpAYT1Z1iD6n4=
X-Google-Smtp-Source: AGHT+IEbIWNphp9CaxyIBmS6fFoevv90QzHYFfcACGBeoawWKdzJgDWeGYAJzuVQ4Yqa5/qKqf5ITwHfksRZcGmb+ws=
X-Received: by 2002:a05:6512:4003:b0:539:88f7:d3c0 with SMTP id
 2adb3069b0e04-539c496ce04mr3124182e87.51.1728538001854; Wed, 09 Oct 2024
 22:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <20241001175057.27172-1-quic_pintu@quicinc.com> <CABdmKX2xEn8QjObqR3VNb=RqMZVNBiNtkfYWm8h_3Xc8KMkdag@mail.gmail.com>
In-Reply-To: <CABdmKX2xEn8QjObqR3VNb=RqMZVNBiNtkfYWm8h_3Xc8KMkdag@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Thu, 10 Oct 2024 10:56:29 +0530
Message-ID: <CAOuPNLihBBQ0zviFsQ7Vqsde+yy3CGP5OJUkaZFA=1aZbj_NZg@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 723553F33D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.50:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: JDUKVUVGQWE2CKSUY5I2N3EHWUTM6GY7
X-Message-ID-Hash: JDUKVUVGQWE2CKSUY5I2N3EHWUTM6GY7
X-MailFrom: pintu.ping@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pintu Kumar <quic_pintu@quicinc.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, joe@perches.com, skhan@linuxfoundation.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-buf/heaps: replace kmap_atomic with kmap_local_page
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JDUKVUVGQWE2CKSUY5I2N3EHWUTM6GY7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyIE9jdCAyMDI0IGF0IDAyOjU0LCBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29n
bGUuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBPY3QgMSwgMjAyNCBhdCA3OjUx4oCvUE0gUGlu
dHUgS3VtYXIgPHF1aWNfcGludHVAcXVpY2luYy5jb20+IHdyb3RlOg0KPiA+DQo+ID4gVXNlIG9m
IGttYXBfYXRvbWljL2t1bm1hcF9hdG9taWMgaXMgZGVwcmVjYXRlZCwgdXNlDQo+ID4ga21hcF9s
b2NhbF9wYWdlL2t1bm1hcF9sb2NhbCBpbnN0ZWFkLg0KPiA+DQo+ID4gVGhpcyBpcyByZXBvcnRl
ZCBieSBjaGVja3BhdGNoLg0KPiA+IEFsc28gZml4IHJlcGVhdGVkIHdvcmQgaXNzdWUuDQo+ID4N
Cj4gPiBXQVJOSU5HOiBEZXByZWNhdGVkIHVzZSBvZiAna21hcF9hdG9taWMnLCBwcmVmZXIgJ2tt
YXBfbG9jYWxfcGFnZScgaW5zdGVhZA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHZvaWQg
KnZhZGRyID0ga21hcF9hdG9taWMocGFnZSk7DQo+ID4NCj4gPiBXQVJOSU5HOiBEZXByZWNhdGVk
IHVzZSBvZiAna3VubWFwX2F0b21pYycsIHByZWZlciAna3VubWFwX2xvY2FsJyBpbnN0ZWFkDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAga3VubWFwX2F0b21pYyh2YWRkcik7DQo+ID4NCj4g
PiBXQVJOSU5HOiBQb3NzaWJsZSByZXBlYXRlZCB3b3JkOiAnYnknDQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICogaGFzIGJlZW4ga2lsbGVkIGJ5IGJ5IFNJR0tJTEwNCj4gPg0KPiA+IHRv
dGFsOiAwIGVycm9ycywgMyB3YXJuaW5ncywgNDA1IGxpbmVzIGNoZWNrZWQNCj4gPg0KPiA+IFNp
Z25lZC1vZmYtYnk6IFBpbnR1IEt1bWFyIDxxdWljX3BpbnR1QHF1aWNpbmMuY29tPg0KPg0KPiBS
ZXZpZXdlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4NCj4gVGhl
IEFuZHJvaWQga2VybmVscyBoYXZlIGJlZW4gZG9pbmcgdGhpcyBmb3Igb3ZlciBhIHllYXIsIHNv
IHNob3VsZCBiZQ0KPiBwcmV0dHkgd2VsbCB0ZXN0ZWQgYXQgdGhpcyBwb2ludDoNCj4gaHR0cHM6
Ly9yLmFuZHJvaWQuY29tL2Mva2VybmVsL2NvbW1vbi8rLzI1MDA4NDANCj4NClRoYW5rIHlvdSBU
SiBmb3IgdGhlIHJldmlldy4NCkhvcGUgdGhpcyB3aWxsIGJlIHBpY2tlZCBzb29uLg0KDQo+ID4g
LS0tDQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIHwgNiArKystLS0NCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+ID4gaW5kZXggOTNiZTg4YjgwNWZlLi44YzU1
NDMxY2MxNmMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFw
LmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiA+IEBAIC0z
MDksMTMgKzMwOSwxMyBAQCBzdGF0aWMgc3RydWN0IGRtYV9idWYgKmNtYV9oZWFwX2FsbG9jYXRl
KHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwNCj4gPiAgICAgICAgICAgICAgICAgc3RydWN0IHBhZ2Ug
KnBhZ2UgPSBjbWFfcGFnZXM7DQo+ID4NCj4gPiAgICAgICAgICAgICAgICAgd2hpbGUgKG5yX2Ns
ZWFyX3BhZ2VzID4gMCkgew0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKnZhZGRy
ID0ga21hcF9hdG9taWMocGFnZSk7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAq
dmFkZHIgPSBrbWFwX2xvY2FsX3BhZ2UocGFnZSk7DQo+ID4NCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICBtZW1zZXQodmFkZHIsIDAsIFBBR0VfU0laRSk7DQo+ID4gLSAgICAgICAgICAgICAg
ICAgICAgICAga3VubWFwX2F0b21pYyh2YWRkcik7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAga3VubWFwX2xvY2FsKHZhZGRyKTsNCg0KSG93ZXZlciwgSSByZWFsaXplZCBvbmUgbW9yZSB0
aGluZy4NClRoaXMgY2FuIGJlIGVhc2lseSByZXBsYWNlZCBieToNCm1lbXNldF9wYWdlKHBhZ2Us
IDAsIDAsIFBBR0VfU0laRSk7DQoNCkkgd2lsbCBwdXNoIHRoaXMgaW4gbmV3IHBhdGNoc2V0IG9u
Y2UgdGhpcyBpcyBhdmFpbGFibGUgaW4gbGludXgtbmV4dC4NCg0KVGhhbmtzLA0KUGludHUNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
