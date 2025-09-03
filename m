Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 740F8B428FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 20:49:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5348A45DE3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 18:49:00 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by lists.linaro.org (Postfix) with ESMTPS id 3C13144761
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Sep 2025 18:48:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=nLZVkmzE;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.43 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f6bb0a364so174609e87.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Sep 2025 11:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756925331; x=1757530131; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpKd2275sVbG0K2FZVdjWp6/Z18/FkDT3HL6WWRqaEg=;
        b=nLZVkmzExdeyO4oiNvJDRoronWfA2CmitcUWG1OceGNNrp95S6hV3rOKWrz0WDiDo8
         l3+I8sKH+IFxGKB9vJ3VqHChsNDE8RHEghOdwa/xPGs9fLijWsl6js+Uj2UeWv+/b9Eo
         bPicI3iYJxAYQ2ENbiF8XY35EN/bCScGtnXKlRzVu54DpiR+HuT7lUrWO2mzRF/5yYm7
         9fycFNRhLztO3EC09ctedI13Oj3B3Lj0yQ8UIloE0dUPsyIamC7xw5qf3W2JBOVdQpKU
         PTEAEGvH7bES4jGmiZMlWF4qR47gTxKdnKLdmzlPKdCDdsX/RxFPe1PvzswuQYt+uAqk
         6EkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756925331; x=1757530131;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpKd2275sVbG0K2FZVdjWp6/Z18/FkDT3HL6WWRqaEg=;
        b=eDT0qQaVCkXM3nphtQoiOQofrSBjlFlXsHDMX4TkHGYYlmiipU8FSDXedZipOgRJYj
         r4OthiIURJGa59yY6vcEiVC3AD+NT6IZfgsdXFjh/8YahASYR3OedLC2ITBXuciZREP2
         RJwEeUc7yfut9Qcwjz5BjIuCH0XR3+92T0zkaFOThLf2C37kwrSRhxow93dibgLU28Kv
         xO8+svP/RxNBG6JclznS/VHun+kxg2wWNQSTlflY3tMqrLcioIZA0583ybaCOCqxaUF6
         pFFLC0VVbh4bOXR+CYAD0u07qjGiS0C8yiVtlmr6GH+9rx6Ybs55UYdwPhc+oZfOgI8v
         1B9w==
X-Forwarded-Encrypted: i=1; AJvYcCW3/vgLJ2QvW4jtpiK9R7Zrrkctf1QY8EXyFp+6kDH/aTE0CvzQ9cyUq2pH2r/YB/1PsaK5/hd8gRq14g8d@lists.linaro.org
X-Gm-Message-State: AOJu0YwNNCMlgVTC80t2gE195QkiDrpIoueRgiU3TzoGDrBn6fmkkY5W
	LByt8pKIeL0H29bo5lCQn2++N+bf7CDVR9NBImHJmWclXmGrM1VtphB5WVJgDCGYvi4/xuN505I
	H58h2xR6R1ApYZ575woQAtyHx4lBDZExbFZAX1J4=
X-Gm-Gg: ASbGnctjEjIXbqFoXGpvLplobQMT2DyG6olPTHoOwkBoO122+vBgAipHeDSnGtcqZgc
	tIxtp6vtnQcJOeXa9a7RlxhGHTpQ3MrzOxkvXXYXPmmSgcsEqj/vIRbqTX9PL4j5zzIfbCmX1it
	IabA/nO0EvMoizttUNZmd2Yq3EovQasHBXvvd5bRunIKWEV9A91Q96TF3M5f+FTI9B7E+JeJP7Y
	a37bp7gz1u7s1D7Sv3DoUxtTQIm3ElxeI5zX53t6xg=
X-Google-Smtp-Source: AGHT+IF5G/J215zB6F+3YqHgBGUMzaMxIb8FdX2l9xOBS14z2EjkTnAnD4URRw2r/tfzfVxdowvkPYNpzRoqDhW7JLg=
X-Received: by 2002:a05:6512:660a:b0:55f:595f:9a31 with SMTP id
 2adb3069b0e04-55f709747b3mr4044420e87.51.1756925330683; Wed, 03 Sep 2025
 11:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-5-thierry.reding@gmail.com> <CANDhNCoM4RFX-QccF7xT=+-tduGj9OZ_8SgrTVyRucMwyVc73Q@mail.gmail.com>
 <e6twhwxi55eesb7xirei7wezzb77qjiji2mccgqlziisjzl3q5@3ny5e6lbgebz>
In-Reply-To: <e6twhwxi55eesb7xirei7wezzb77qjiji2mccgqlziisjzl3q5@3ny5e6lbgebz>
From: John Stultz <jstultz@google.com>
Date: Wed, 3 Sep 2025 11:48:38 -0700
X-Gm-Features: Ac12FXyfpojM7sYEH_SV5iPkXzxCBmlghsM38HwpGdBEBMQS7yemN51cEMcgCs0
Message-ID: <CANDhNCrO21O_URa1iHuroOoG-g61DL7uvECTwVxiuitCTi=i4g@mail.gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3C13144761
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.43:from];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: PD6GUAQXGTWUZOVPQAVD2MSVJTY64P4L
X-Message-ID-Hash: PD6GUAQXGTWUZOVPQAVD2MSVJTY64P4L
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Add debugfs support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PD6GUAQXGTWUZOVPQAVD2MSVJTY64P4L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMywgMjAyNSBhdCA4OjM44oCvQU0gVGhpZXJyeSBSZWRpbmcgPHRoaWVycnku
cmVkaW5nQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgU2VwIDAyLCAyMDI1IGF0IDAz
OjM3OjQ1UE0gLTA3MDAsIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiA+IE9uIFR1ZSwgU2VwIDIsIDIw
MjUgYXQgODo0NuKAr0FNIFRoaWVycnkgUmVkaW5nIDx0aGllcnJ5LnJlZGluZ0BnbWFpbC5jb20+
IHdyb3RlOg0KPiA+ID4NCj4gPiA+IEZyb206IFRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRp
YS5jb20+DQo+ID4gPg0KPiA+ID4gQWRkIGEgY2FsbGJhY2sgdG8gc3RydWN0IGRtYV9oZWFwX29w
cyB0aGF0IGhlYXAgcHJvdmlkZXJzIGNhbiBpbXBsZW1lbnQNCj4gPiA+IHRvIHNob3cgaW5mb3Jt
YXRpb24gYWJvdXQgdGhlIHN0YXRlIG9mIHRoZSBoZWFwIGluIGRlYnVnZnMuIEEgdG9wLWxldmVs
DQo+ID4gPiBkaXJlY3RvcnkgbmFtZWQgImRtYV9oZWFwIiBpcyBjcmVhdGVkIGluIGRlYnVnZnMg
YW5kIGluZGl2aWR1YWwgZmlsZXMNCj4gPiA+IHdpbGwgYmUgbmFtZWQgYWZ0ZXIgdGhlIGhlYXBz
Lg0KPiA+ID4NCj4gPg0KPiA+IEkga25vdyBpdHMgZGVidWdmcywgYnV0IHRoaXMgZmVlbHMgYSBs
aXR0bGUgbG9vc2V5LWdvb3NleSBhcyBhbiB1QVBJLg0KPg0KPiBXZWxsLCB0aGUgd2hvbGUgcG9p
bnQgb2YgZGVidWdmcyBpcyB0aGF0IGl0J3Mgbm90IHJlYWxseSBhbiBBQkkuIE5vdGhpbmcNCj4g
c2hvdWxkIGV2ZXIgcmVseSBvbiB0aGUgcHJlc2VuY2Ugb2YgdGhlc2UgZmlsZXMuDQo+DQo+ID4g
SXMgdGhlcmUgYW55IGV4cGVjdGVkIGZvcm1hdCBmb3IgdGhlIHNob3cgZnVuY3Rpb24/DQo+ID4N
Cj4gPiBXaGF0IHdvdWxkIG90aGVyIGRtYWJ1ZiBoZWFwcyBpZGVhbGx5IGV4cG9ydCB2aWEgdGhp
cyBpbnRlcmZhY2U/DQo+DQo+IEkndmUgdGhvdWdodCBhYm91dCB0aGlzIGEgYml0IGFuZCBJJ20g
bm90IHN1cmUgaXQgbWFrZXMgc2Vuc2UgdG8NCj4gc3RhbmRhcmRpemUgb24gdGhpcy4gSSB0aGlu
ayBvbiBvbmUgaGFuZCBoYXZpbmcgYSBsaXN0IG9mIGJ1ZmZlcnMNCj4gZXhwb3J0ZWQgYnkgdGhl
IGRtYS1idWYgaGVhcCBpcyBwcm9iYWJseSB0aGUgbG93ZXN0IGNvbW1vbiBkZW5vbWluYXRvciwN
Cj4gYnV0IHRoZW4gdGhlcmUgbWlnaHQgYmUgYSBidW5jaCBvZiBvdGhlciB0aGluZ3MgdGhhdCBh
cmUgdmVyeSBoZWFwLQ0KPiBzcGVjaWZpYyB0aGF0IHNvbWUgaGVhcCBtaWdodCB3YW50IHRvIGV4
cG9ydC4NCj4NCj4gPiBJcyB0aGVyZSBzb21lIGNvbnNpc3RlbnQgZG1hX2hlYXAtaXNoIGNvbmNl
cHQgZm9yIGl0IHRvIGp1c3RpZnkgaXQNCj4gPiBiZWluZyB1bmRlciBhIGRtYV9oZWFwIGRpcmVj
dG9yeSwgYW5kIG5vdCBqdXN0IGFuIGluZGVwZW5kZW50IGRlYnVnZnMNCj4gPiBmaWxlIGZvciB0
aGUgZHJpdmVyIGltcGxlbWVudGluZyB0aGUgZG1hYnVmIGhlYXA/DQo+DQo+IFdlbGwsIEkgdGhp
bmsganVzdCB0aGUgZmFjdCB0aGF0IGl0J3MgYSBkbWEtaGVhcCB3b3VsZCBxdWFsaWZ5IGl0cw0K
PiBjb3JyZXNwb25kaW5nIGRlYnVnZnMgdG8gYmUgaW4gYSB3ZWxsLWtub3duIGxvY2F0aW9uLiBX
ZSBjb3VsZCBvZiBjb3Vyc2UNCj4gcGljayBzb21lIGFyYml0cmFyeSBsb2NhdGlvbiwgYnV0IHRo
YXQncyBqdXN0IGEgcmVjaXBlIGZvciBjaGFvcyBiZWNhdXNlDQo+IHRoZW4gZXZlcnlib2R5IHB1
dHMgdGhlc2Ugd2hlcmVldmVyIHRoZXkgd2FudC4gVGhlcmUncyByZWFsbHkgbm8NCj4gc3RhbmRh
cmQgcGxhY2UgZm9yIGRyaXZlci1zcGVjaWZpYyBkZWJ1Z2ZzIGZpbGVzIHRvIGdvLCBzbyBwdXR0
aW5nIGl0DQo+IGludG8gc29tZSAic3Vic3lzdGVtIi1zcGVjaWZpYyBkaXJlY3Rvcnkgc2VlbXMg
bGlrZSB0aGUgYmV0dGVyIG9wdGlvbi4NCg0KT2ssIEkgZ3Vlc3MgSSB3YXMgdGhpbmtpbmcgaWYg
dGhlIGZpbGVzIGFyZSBvcmdhbml6YXRpb25hbGx5IGNvaGVzaXZlDQp0byBiZSB1bmRlciB0aGUg
ZG1hLWhlYXAgZGlyZWN0b3J5LCB0aGV5IG91Z2h0IHRvIGhhdmUgc29tZQ0KY29uc2lzdGVuY3kg
YmV0d2VlbiB0aGVtLg0KDQpCdXQgSSBjYW4gc2VlIHlvdXIgcGVyc3BlY3RpdmUgaGVyZSB0aGF0
IG9yZ2FuaXppbmcgdGhlIGRyaXZlcg0Kc3BlY2lmaWMgZGVidWcgZmlsZXMgaW4gYSBkaXJlY3Rv
cnkgaGVscHMgd2l0aCBmb2xrcyBmaW5kaW5nIGFuZA0KaWRlbnRpZnlpbmcgaXQuDQoNClRoYW5r
cyBmb3IgY2xhcmlmeWluZyENCi1qb2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
