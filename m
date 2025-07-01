Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9111FAF03D3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Jul 2025 21:32:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3962C4449E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Jul 2025 19:32:50 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id 3EDD544129
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Jul 2025 19:32:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b="COv/WEvL";
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Dj2RXbZ/Tv5yAxHz/6WWadAXm0f+rEasqd5wSxNrNfk=; b=COv/WEvLADeJ6fd21KY0S80AoD
	XAN2jdqZDbmJLuHjkwzeQOPC/J+uLnEp4cOPZMr64nMBTTT7O9tyv1Eo5P3D9VzrPR9ii5R68h9u8
	x0wMgRHL8MjOUXKpx0bTeMlN96lBxW0hVtxOE/OolJEMZsQgACj71Dk+raYFqFUv+5Gt3KAdnqG5O
	zQjvfJUL9d9YX9i6ONayuZX4GPHZyO0Ot9qQXBgoQ4iOfk84Nb3DKg+BwfGpR8mQuFu0N7a1Z0iag
	J4Vn9kQA332jEckCkT25MeMr0VHE/7KDpvPcC6ylfJlD/Vwf3GgBc+asJkJag5aiUgs2e71ApfHnG
	sFw0nDZw==;
Received: from i53875bc7.versanet.de ([83.135.91.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWgi0-0007Fd-TC; Tue, 01 Jul 2025 21:32:00 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 01 Jul 2025 21:31:59 +0200
Message-ID: <8888010.K2JlShyGXD@diego>
In-Reply-To: <20250606-6-10-rocket-v7-3-dc16cfe6fe4e@tomeuvizoso.net>
References: 
 <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-3-dc16cfe6fe4e@tomeuvizoso.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3EDD544129
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,arm.com,fooishbar.org,libre.computer,oss.qualcomm.com,tomeuvizoso.net];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+]
X-Rspamd-Action: no action
Message-ID-Hash: MOCZIKCNZCJ7KV5SYA2Y3I5BAJKDEKXV
X-Message-ID-Hash: MOCZIKCNZCJ7KV5SYA2Y3I5BAJKDEKXV
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 03/10] accel/rocket: Add IOCTL for BO creation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MOCZIKCNZCJ7KV5SYA2Y3I5BAJKDEKXV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

QW0gRnJlaXRhZywgNi4gSnVuaSAyMDI1LCAwODoyODoyMyBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFRvbWV1IFZpem9zbzoNCj4gVGhpcyB1c2VzIHRoZSBTSE1FTSBEUk0g
aGVscGVycyBhbmQgd2UgbWFwIHJpZ2h0IGF3YXkgdG8gdGhlIENQVSBhbmQgTlBVDQo+IHNpZGVz
LCBhcyBhbGwgYnVmZmVycyBhcmUgZXhwZWN0ZWQgdG8gYmUgYWNjZXNzZWQgZnJvbSBib3RoLg0K
PiANCj4gdjI6DQo+IC0gU3luYyB0aGUgSU9NTVVzIGZvciB0aGUgb3RoZXIgY29yZXMgd2hlbiBt
YXBwaW5nIGFuZCB1bm1hcHBpbmcuDQo+IA0KPiB2MzoNCj4gLSBNYWtlIHVzZSBvZiBHUEwtMi4w
LW9ubHkgZm9yIHRoZSBjb3B5cmlnaHQgbm90aWNlIChKZWZmIEh1Z28pDQo+IA0KPiB2NjoNCj4g
LSBVc2UgbXV0ZXhlcyBndWFyZCAoTWFya3VzIEVsZnJpbmcpDQo+IA0KPiB2NzoNCj4gLSBBc3Np
Z24gaXRzIG93biBJT01NVSBkb21haW4gdG8gZWFjaCBjbGllbnQsIGZvciBpc29sYXRpb24gKERh
bmllbA0KPiAgIFN0b25lIGFuZCBSb2JpbiBNdXJwaHkpDQo+IA0KPiBSZXZpZXdlZC1ieTogSmVm
ZnJleSBIdWdvIDxxdWljX2podWdvQHF1aWNpbmMuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBUb21l
dSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4NCj4gLS0tDQoNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9nZW0uYyBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0
L3JvY2tldF9nZW0uYw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi42MWI3Zjk3MGE2ODg1YWExMzc4NGRhYTEy
MjI2MTFhMDJhYTEwZGVlDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvZHJpdmVycy9hY2NlbC9y
b2NrZXQvcm9ja2V0X2dlbS5jDQo+IEBAIC0wLDAgKzEsMTE1IEBADQo+ICsvLyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5DQo+ICsvKiBDb3B5cmlnaHQgMjAyNC0yMDI1IFRv
bWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0PiAqLw0KPiArDQo+ICsjaW5jbHVkZSA8
ZHJtL2RybV9kZXZpY2UuaD4NCj4gKyNpbmNsdWRlIDxkcm0vZHJtX3V0aWxzLmg+DQo+ICsjaW5j
bHVkZSA8ZHJtL3JvY2tldF9hY2NlbC5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXBwaW5n
Lmg+DQo+ICsjaW5jbHVkZSA8bGludXgvaW9tbXUuaD4NCj4gKw0KPiArI2luY2x1ZGUgInJvY2tl
dF9kZXZpY2UuaCINCj4gKyNpbmNsdWRlICJyb2NrZXRfZHJ2LmgiDQo+ICsjaW5jbHVkZSAicm9j
a2V0X2dlbS5oIg0KPiArDQo+ICtzdGF0aWMgdm9pZCByb2NrZXRfZ2VtX2JvX2ZyZWUoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmopDQo+ICt7DQo+ICsJc3RydWN0IHJvY2tldF9kZXZpY2UgKnJk
ZXYgPSB0b19yb2NrZXRfZGV2aWNlKG9iai0+ZGV2KTsNCj4gKwlzdHJ1Y3Qgcm9ja2V0X2dlbV9v
YmplY3QgKmJvID0gdG9fcm9ja2V0X2JvKG9iaik7DQo+ICsJc2l6ZV90IHVubWFwcGVkOw0KPiAr
DQo+ICsJZHJtX1dBUk5fT04ob2JqLT5kZXYsIGJvLT5iYXNlLnBhZ2VzX3VzZV9jb3VudCA+IDEp
Ow0KDQpUaGlzIHNob3VsZCBwcm9iYWJseSBiZQ0KICAgIGRybV9XQVJOX09OKG9iai0+ZGV2LCBy
ZWZjb3VudF9yZWFkKCZiby0+YmFzZS5wYWdlc191c2VfY291bnQpID4gMSk7DQoNCmFzIHBhZ2Vz
X3VzZV9jb3VudCBpcyBvZiB0eXBlIHJlZmNvdW50X3Qgc2luY2UNCmNvbW1pdCAwNTFiNjY0NmQz
NmQgKCJkcm0vc2htZW0taGVscGVyOiBVc2UgcmVmY291bnRfdCBmb3IgcGFnZXNfdXNlX2NvdW50
IikNCg0KSGVpa28NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
