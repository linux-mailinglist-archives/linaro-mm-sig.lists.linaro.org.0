Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3201F8BFCAD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 13:52:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD02A43D5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 11:52:23 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
	by lists.linaro.org (Postfix) with ESMTPS id B18BB40C4C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 11:52:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
	dmarc=pass (policy=none) header.from=aculab.com
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-28-ejStQR8JMFGrAgvUcnec0Q-1; Wed, 08 May 2024 12:52:11 +0100
X-MC-Unique: ejStQR8JMFGrAgvUcnec0Q-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Wed, 8 May
 2024 12:51:40 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Wed, 8 May 2024 12:51:40 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: =?utf-8?B?J0NocmlzdGlhbiBLw7ZuaWcn?= <christian.koenig@amd.com>, "T.J.
 Mercier" <tjmercier@google.com>, Charan Teja Kalla
	<quic_charante@quicinc.com>, zhiguojiang <justinjiang@vivo.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org"
	<linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "opensource.kernel@vivo.com"
	<opensource.kernel@vivo.com>
Thread-Topic: [PATCH] dmabuf: fix dmabuf file poll uaf issue
Thread-Index: AQHaoId+JYKtMQTt+U6dUCQNubR7xbGNNzKw
Date: Wed, 8 May 2024 11:51:40 +0000
Message-ID: <c0fe95949d4f41449f17add8300270b9@AcuMS.aculab.com>
References: <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
 <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
 <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com>
 <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
 <CABdmKX2MWU9-9YN46PXx-Jy-O9CHMv8hCkvArd7BbWUBs=GPnw@mail.gmail.com>
 <8915fcc1-d8f1-48c2-9e51-65159aaa5a3b@amd.com>
 <ZjovD5WaWjknd-qv@phenom.ffwll.local>
 <44b08793-cf44-4cbd-a3bb-583af351ab9e@amd.com>
In-Reply-To: <44b08793-cf44-4cbd-a3bb-583af351ab9e@amd.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B18BB40C4C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[aculab.com,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.58.85.151:from];
	R_SPF_ALLOW(-0.20)[+ip4:185.58.85.0/24];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:42427, ipnet:185.58.85.0/24, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.806];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: JLLAHLFUAKKL75CN56QEWICJDMRZSEKT
X-Message-ID-Hash: JLLAHLFUAKKL75CN56QEWICJDMRZSEKT
X-MailFrom: david.laight@aculab.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLLAHLFUAKKL75CN56QEWICJDMRZSEKT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZw0KPiBTZW50OiAwNyBNYXkgMjAyNCAxNTowNQ0KLi4uDQo+
IEkgYWN0dWFsbHkgaGF2ZSBiZWVuIHRlbGxpbmcgcGVvcGxlIHRvIChhYil1c2UgdGhlIGVwb2xs
IGJlaGF2aW9yIHRvDQo+IGNoZWNrIGlmIHR3byBmaWxlIGRlc2NyaXB0b3JzIHBvaW50IHRvIHRo
ZSBzYW1lIHVuZGVybHlpbmcgZmlsZSB3aGVuDQo+IEtDTVAgaXNuJ3QgYXZhaWxhYmxlLg0KDQpJ
biB3aGF0IHdheT8NCllvdSBjYW4gYWRkIGJvdGggZmQgdG8gdGhlIHNhbWUgZXBvbGwgZmQuDQpS
ZWx5aW5nIG9uIHRoZSBpbXBsaWNpdCBFUE9MTF9DVExfREVMIG5vdCBoYXBwZW5pbmcgdW50aWwg
Ym90aCBmZCBhcmUNCmNsb3NlZCBpcyBhIHJlY2lwZSBmb3IgZGlzYXN0ZXIuDQooQW5kIEkgY2Fu
J3Qgc2VlIGFuIG9idmlvdXMgd2F5IG9mIHRlc3RpbmcgaXQuKQ0KDQpRNi9BNiBvbiBlcG9sbCg3
KSBzaG91bGQgYWx3YXlzIGhhdmUgaGFkIGEgY2F2ZWF0IHRoYXQgaXQgaXMgYW4NCidpbXBsZW1l
bnRhdGlvbiBkZXRhaWwnIGFuZCBzaG91bGRuJ3QgYmUgcmVsaWVkIG9uLg0KKGl0IGlzIHdyaXR0
ZW4gYXMgYSAnYmV3YXJlIG9mJyAuLi4pDQoNClRoZSBvdGhlciBwb2ludCBpcyB0aGF0IHRoZXJl
IGFyZSB0d28gd2F5cyB0byBnZXQgbXVsdGlwbGUgZmQgdGhhdA0KcmVmZXJlbmNlIHRoZSBzYW1l
IHVuZGVybHlpbmcgZmlsZS4NCmR1cCgpIGZvcmsoKSBldGMgc2hhcmUgdGhlIGZpbGUgb2Zmc2V0
LCBidXQgb3BlbigiL2Rldi9mZC9uIikgYWRkcw0KYSByZWZlcmVuY2UgY291bnQgbGF0ZXIgYW5k
IGhhcyBhIHNlcGFyYXRlIGZpbGUgb2Zmc2V0Lg0KDQpJIGRvbid0IGtub3cgd2hpY2ggc3RydWN0
dXJlIGVwb2xsIGlzIHVzaW5nLCBidXQgSSBzdXNwZWN0IGl0IGlzDQp0aGUgZm9ybWVyLg0KU28g
aXQgbWF5IG5vdCB0ZWxsIHlvdSB3aGF0IHlvdSB3YW50IHRvIGtub3cuDQoNCglEYXZpZA0KDQot
DQpSZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9hZCwgTW91bnQgRmFybSwg
TWlsdG9uIEtleW5lcywgTUsxIDFQVCwgVUsNClJlZ2lzdHJhdGlvbiBObzogMTM5NzM4NiAoV2Fs
ZXMpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
