Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF0CB078D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jul 2025 16:59:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8BAA45D39
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jul 2025 14:59:24 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id 55DA5456FE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jul 2025 14:59:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=mHv5BEaQ;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vU3zIFgy3U7gHHh/kUTJxPxNHd0D81vJde+B7Dlosp4=; b=mHv5BEaQ1qNRqFW3ov30nAEfsD
	Yp0QdrdwqyYz6IDNOKfF8ChyVx8o13MT8Bko12XUwdEdyBVxGcxeFrH/rU4Aqe+JRHDnJcpW4Kzjz
	/ExkCohirnTAW1cB0Picxvlz3xNfIRiiV1EsGSLVOsJyp0LBX+poDwX0TEyfzzi8luXE3b8Rp5t2n
	0sqUnl0A480vSoFgI6Skze2qGvxni/Y5BqVikQgVFAiCLTZtg/CrcRQibBYeFxjEqleyQduCEMFM2
	o3rs3miSHlKuG/GchQMR5/xBUwfpos9B2Tru/VaPCr8hS+crZwM9RijobVAp9ALGRVpaTGdQTNCr/
	sS+cVQSQ==;
Received: from i53875a74.versanet.de ([83.135.90.116] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uc3ae-0002tO-SX; Wed, 16 Jul 2025 16:58:36 +0200
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
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 16 Jul 2025 16:58:38 +0200
Message-ID: <4525998.iIbC2pHGDl@diego>
In-Reply-To: <20250713-6-10-rocket-v8-8-64fa3115e910@tomeuvizoso.net>
References: 
 <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
 <20250713-6-10-rocket-v8-8-64fa3115e910@tomeuvizoso.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 55DA5456FE
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[fdab9000:email,rk3588_pd_sdmmc:email,sntech.de:dkim,sntech.de:email,gloria.sntech.de:rdns,gloria.sntech.de:helo];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,arm.com,fooishbar.org,libre.computer,pengutronix.de,oss.qualcomm.com,tomeuvizoso.net];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[185.11.138.130:from];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	DWL_DNSWL_BLOCKED(0.00)[sntech.de:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: IYYKSOAWCDRFHLWCWR2Q3Q4DU64ERK7I
X-Message-ID-Hash: IYYKSOAWCDRFHLWCWR2Q3Q4DU64ERK7I
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 08/10] arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588-base
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IYYKSOAWCDRFHLWCWR2Q3Q4DU64ERK7I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

QW0gU29ubnRhZywgMTMuIEp1bGkgMjAyNSwgMTA6Mzg6NTggTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286DQo+IFNlZSBDaGFwdGVyIDM2ICJSS05OIiBm
cm9tIHRoZSBSSzM1ODggVFJNIChQYXJ0IDEpLg0KPiANCj4gVGhlIElQIGlzIGRpdmlkZWQgaW4g
dGhyZWUgY29yZXMsIHByb2dyYW1tZWQgaW5kZXBlbmRlbnRseS4gVGhlIGZpcnN0DQo+IGNvcmUg
dGhvdWdoIGlzIHNwZWNpYWwsIGJlaW5nIGFibGUgdG8gZGVsZWdhdGUgd29yayB0byB0aGUgb3Ro
ZXIgY29yZXMuDQo+IA0KPiBUaGUgSU9NTVUgb2YgdGhlIGZpcnN0IGNvcmUgaXMgYWxzbyBzcGVj
aWFsIGluIHRoYXQgaXQgaGFzIHR3byBzdWJ1bml0cw0KPiAocmVhZC93cml0ZT8pIHRoYXQgbmVl
ZCB0byBiZSBwcm9ncmFtbWVkIGluIHN5bmMuDQo+IA0KPiB2MjoNCj4gLSBIYXZlIG9uZSBkZXZp
Y2UgZm9yIGVhY2ggTlBVIGNvcmUgKFNlYmFzdGlhbiBSZWljaGVsKQ0KPiAtIEhhdmUgb25lIGRl
dmljZSBmb3IgZWFjaCBJT01NVSAoU2ViYXN0aWFuIFJlaWNoZWwpDQo+IC0gQ29ycmVjdGx5IHNv
cnQgbm9kZXMgKERpZWRlcmlrIGRlIEhhYXMpDQo+IC0gQWRkIHJvY2tjaGlwLGlvbW11IGNvbXBh
dGlibGUgdG8gSU9NTVUgbm9kZXMgKFNlYmFzdGlhbiBSZWljaGVsKQ0KPiANCj4gdjM6DQo+IC0g
QWRhcHQgdG8gYSBzcGxpdCBvZiB0aGUgcmVnaXN0ZXIgYmxvY2sgaW4gdGhlIERUIGJpbmRpbmdz
IChOaWNvbGFzDQo+ICAgRnJhdHRhcm9saSkNCj4gDQo+IHY0Og0KPiAtIEFkYXB0IHRvIGNoYW5n
ZXMgaW4gYmluZGluZ3MNCj4gDQo+IHY2Og0KPiAtIHBjbGsgYW5kIG5wdSBjbG9ja3MgYXJlIG5l
ZWRlZCBieSBhbGwgY2xvY2tzIChSb2IgSGVycmluZykNCj4gDQo+IHY4Og0KPiAtIFJlbW92ZSBu
b3Rpb24gb2YgdG9wIGNvcmUgKFJvYmluIE11cnBoeSkNCj4gDQo+IFRlc3RlZC1ieTogSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4NCj4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3Nv
IDx0b21ldUB0b21ldXZpem9zby5uZXQ+DQo+IC0tLQ0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgOTEgKysrKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ICAxIGZpbGUgY2hhbmdlZCwgOTEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQ0KPiBpbmRleCAxZWRkYzY5ZmQ5
YzllZDk1Y2RjODEwYmE0OGQ5NjgzZTNmODI0ODlhLi5kYmQ0NzJmZWFhOGIzZjhjMTQ1OTdhNDhh
NGY1YWZiZTNjYjQ1YjZhIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1iYXNlLmR0c2kNCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtYmFzZS5kdHNpDQo+IEBAIC0xMTQwLDYgKzExNDAsOTcgQEAgcG93ZXItZG9tYWlu
QFJLMzU4OF9QRF9TRE1NQyB7DQo+ICAJCX07DQo+ICAJfTsNCj4gIA0KPiArCXJrbm5fY29yZV8w
OiBucHVAZmRhYjAwMDAgew0KPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1ya25u
LWNvcmUiOw0KPiArCQlyZWcgPSA8MHgwIDB4ZmRhYjAwMDAgMHgwIDB4MTAwMD4sDQo+ICsJCSAg
ICAgIDwweDAgMHhmZGFiMTAwMCAweDAgMHgxMDAwPiwNCj4gKwkJICAgICAgPDB4MCAweGZkYWIz
MDAwIDB4MCAweDEwMDA+Ow0KPiArCQlyZWctbmFtZXMgPSAicGMiLCAiY25hIiwgImNvcmUiOw0K
PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTEwIElSUV9UWVBFX0xFVkVMX0hJR0ggMD47DQo+
ICsJCWNsb2NrcyA9IDwmY3J1IEFDTEtfTlBVMD4sIDwmY3J1IEhDTEtfTlBVMD4sDQo+ICsJCQkg
PCZzY21pX2NsayBTQ01JX0NMS19OUFU+LCA8JmNydSBQQ0xLX05QVV9ST09UPjsNCj4gKwkJY2xv
Y2stbmFtZXMgPSAiYWNsayIsICJoY2xrIiwgIm5wdSIsICJwY2xrIjsNCj4gKwkJYXNzaWduZWQt
Y2xvY2tzID0gPCZzY21pX2NsayBTQ01JX0NMS19OUFU+Ow0KPiArCQlhc3NpZ25lZC1jbG9jay1y
YXRlcyA9IDwyMDAwMDAwMDA+Ow0KPiArCQlyZXNldHMgPSA8JmNydSBTUlNUX0FfUktOTjA+LCA8
JmNydSBTUlNUX0hfUktOTjA+Ow0KPiArCQlyZXNldC1uYW1lcyA9ICJzcnN0X2EiLCAic3JzdF9o
IjsNCj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX05QVVRPUD47DQo+ICsJ
CWlvbW11cyA9IDwmcmtubl9tbXVfdG9wPjsNCj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4g
Kwl9Ow0KPiArDQo+ICsJcmtubl9tbXVfdG9wOiBpb21tdUBmZGFiOTAwMCB7DQoNCm5pdDogcGhh
bmRsZSBmb3IgdGhlIG1tdSBzaG91bGQgcHJvYmFibHkgYWxzbyBmb2xsb3cgdGhlIG5hbWluZyBj
aGFuZ2U/DQpJLmUuIGJlY29tZSBya25uX21tdV8wID8NCg0KPiArCQljb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzU4OC1pb21tdSIsICJyb2NrY2hpcCxyazM1NjgtaW9tbXUiOw0KPiArCQlyZWcg
PSA8MHgwIDB4ZmRhYjkwMDAgMHgwIDB4MTAwPiwNCj4gKwkJICAgICAgPDB4MCAweGZkYWJhMDAw
IDB4MCAweDEwMD47DQo+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTAgSVJRX1RZUEVfTEVW
RUxfSElHSCAwPjsNCj4gKwkJY2xvY2tzID0gPCZjcnUgQUNMS19OUFUwPiwgPCZjcnUgSENMS19O
UFUwPjsNCj4gKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7DQo+ICsJCSNpb21tdS1j
ZWxscyA9IDwwPjsNCj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX05QVVRP
UD47DQo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsJfTsNCg0KDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
