Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D913EAD0D68
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Jun 2025 14:25:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96EEE44ADD
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Jun 2025 12:25:07 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id 8FADA443E4
	for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Jun 2025 12:24:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=vt3qx6Qr;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=oLS1KFEltUOFGxNGj6XeO70K6kHeWgsxYD83o7TwBko=; b=vt3qx6Qr4XYNUfbW89rhyMhIHK
	RUsbuFW40hCFrw9qF7mmgY0m7xNo9YwcgAKicthWaEpFY9uhrdV1nQl5UckilstXJ9RkXaaqKVl0c
	dtsshpIjfiRZ8USENmNvKtqjOsR9M1CbJG/wGi1R+21+bnzuPx789C7DhxRN7nIrXe/ArMbEpysTd
	IZISLJXQsJwlhumSW8zTdRLDYqGP9PepWKUWFPnz3gbQu1asOKBKZvJPQJKUWq8/VOeQujsGMzfYl
	zLmm2V1p2WbbZwcTIWHSG5osyYRCJmRl9c8voR2hD1sEg7cN3sIEOnmKotN7APZKxIaFN+Gkt9CEa
	iOE4OwZQ==;
Received: from i53875b1f.versanet.de ([83.135.91.31] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uNsas-0001Lo-C8; Sat, 07 Jun 2025 14:24:14 +0200
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
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sat, 07 Jun 2025 14:24:12 +0200
Message-ID: <10540765.0AQdONaE2F@diego>
In-Reply-To: <6946302.MhkbZ0Pkbq@workhorse>
References: 
 <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-10-dc16cfe6fe4e@tomeuvizoso.net>
 <6946302.MhkbZ0Pkbq@workhorse>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
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
X-Rspamd-Queue-Id: 8FADA443E4
X-Spamd-Bar: -
Message-ID-Hash: IIKQN6MDE536K6ECS3LJP7CZG6U4UA2M
X-Message-ID-Hash: IIKQN6MDE536K6ECS3LJP7CZG6U4UA2M
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 10/10] arm64: dts: rockchip: enable NPU on ROCK 5B
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IIKQN6MDE536K6ECS3LJP7CZG6U4UA2M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

QW0gRnJlaXRhZywgNi4gSnVuaSAyMDI1LCAxMToyMDozMiBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIE5pY29sYXMgRnJhdHRhcm9saToNCj4gSGkgVG9tZXUsDQo+IA0KPiBP
biBGcmlkYXksIDYgSnVuZSAyMDI1IDA4OjI4OjMwIENlbnRyYWwgRXVyb3BlYW4gU3VtbWVyIFRp
bWUgVG9tZXUgVml6b3NvIHdyb3RlOg0KPiA+IEZyb206IE5pY29sYXMgRnJhdHRhcm9saSA8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+DQo+ID4gDQo+ID4gVGhlIE5QVSBvbiB0aGUg
Uk9DSzVCIHVzZXMgdGhlIHNhbWUgcmVndWxhdG9yIGZvciBib3RoIHRoZSBzcmFtLXN1cHBseQ0K
PiA+IGFuZCB0aGUgbnB1J3Mgc3VwcGx5LiBBZGQgdGhpcyByZWd1bGF0b3IsIGFuZCBlbmFibGUg
YWxsIHRoZSBOUFUgYml0cy4NCj4gPiBBbHNvIGFkZCB0aGUgcmVndWxhdG9yIGFzIGEgZG9tYWlu
LXN1cHBseSB0byB0aGUgcGRfbnB1IHBvd2VyIGRvbWFpbi4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29t
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0
Pg0KPiA+IC0tLQ0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2Nr
LTViLmR0cyB8IDU2ICsrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDU2IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cw0KPiA+IGluZGV4IGQyMjA2ODQ3NWM1ZGM2Y2I4
ODVmODc4ZjNmNTI3YTY2ZWRmMWJhNzAuLjQ5NTAwZjdjYmNiMTRhZjQ5MTlhNmMxOTk3ZTllNTNh
MDFkODQ5NzMgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtcm9jay01Yi5kdHMNCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1yb2NrLTViLmR0cw0KPiA+IEBAIC0zMTYsNiArMzE2LDI4IEBAIHJlZ3VsYXRvci1z
dGF0ZS1tZW0gew0KPiA+ICAJfTsNCj4gPiAgfTsNCj4gPiAgDQo+ID4gKyZpMmMxIHsNCj4gPiAr
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7DQo+ID4gKwlwaW5jdHJsLTAgPSA8JmkyYzFtMl94
ZmVyPjsNCj4gPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gPiArDQo+ID4gKwl2ZGRfbnB1X3MwOiBy
ZWd1bGF0b3JANDIgew0KPiA+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscms4NjAyIjsNCj4g
PiArCQlyZWcgPSA8MHg0Mj47DQo+ID4gKwkJZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciA9
IDwxPjsNCj4gPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfbnB1X3MwIjsNCj4gPiArCQlyZWd1
bGF0b3ItYm9vdC1vbjsNCj4gPiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1NTAwMDA+
Ow0KPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDk1MDAwMD47DQo+ID4gKwkJcmVn
dWxhdG9yLXJhbXAtZGVsYXkgPSA8MjMwMD47DQo+ID4gKwkJdmluLXN1cHBseSA9IDwmdmNjNXYw
X3N5cz47DQo+ID4gKw0KPiA+ICsJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gew0KPiA+ICsJCQlyZWd1
bGF0b3Itb2ZmLWluLXN1c3BlbmQ7DQo+ID4gKwkJfTsNCj4gPiArCX07DQo+ID4gK307DQo+ID4g
Kw0KPiA+ICAmaTJjNiB7DQo+ID4gIAlzdGF0dXMgPSAib2theSI7DQo+ID4gIA0KPiA+IEBAIC00
NDAsNiArNDYyLDEwIEBAICZwZF9ncHUgew0KPiA+ICAJZG9tYWluLXN1cHBseSA9IDwmdmRkX2dw
dV9zMD47DQo+ID4gIH07DQo+ID4gIA0KPiA+ICsmcGRfbnB1IHsNCj4gPiArCWRvbWFpbi1zdXBw
bHkgPSA8JnZkZF9ucHVfczA+Ow0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgJnBpbmN0cmwgew0KPiA+
ICAJaGRtaXJ4IHsNCj4gPiAgCQloZG1pcnhfaHBkOiBoZG1pcngtNXYtZGV0ZWN0aW9uIHsNCj4g
PiBAQCAtNTAwLDYgKzUyNiwzNiBAQCAmcHdtMSB7DQo+ID4gIAlzdGF0dXMgPSAib2theSI7DQo+
ID4gIH07DQo+ID4gIA0KPiA+ICsmcmtubl9jb3JlX3RvcCB7DQo+ID4gKwlucHUtc3VwcGx5ID0g
PCZ2ZGRfbnB1X3MwPjsNCj4gPiArCXNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsNCj4gPiAr
CXN0YXR1cyA9ICJva2F5IjsNCj4gPiArfTsNCj4gPiArDQo+ID4gKyZya25uX2NvcmVfMSB7DQo+
ID4gKwlucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsNCj4gPiArCXNyYW0tc3VwcGx5ID0gPCZ2
ZGRfbnB1X3MwPjsNCj4gPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gPiArfTsNCj4gPiArDQo+ID4g
KyZya25uX2NvcmVfMiB7DQo+ID4gKwlucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsNCj4gPiAr
CXNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsNCj4gPiArCXN0YXR1cyA9ICJva2F5IjsNCj4g
PiArfTsNCj4gPiArDQo+ID4gKyZya25uX21tdV90b3Agew0KPiA+ICsJc3RhdHVzID0gIm9rYXki
Ow0KPiA+ICt9Ow0KPiA+ICsNCj4gPiArJnJrbm5fbW11XzEgew0KPiA+ICsJc3RhdHVzID0gIm9r
YXkiOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiArJnJrbm5fbW11XzIgew0KPiA+ICsJc3RhdHVzID0g
Im9rYXkiOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgJnNhcmFkYyB7DQo+ID4gIAl2cmVmLXN1cHBs
eSA9IDwmYXZjY18xdjhfczA+Ow0KPiA+ICAJc3RhdHVzID0gIm9rYXkiOw0KPiA+IA0KPiA+IA0K
PiANCj4gRmVlbCBmcmVlIHRvIHJlcGxhY2UgdGhpcyBwYXRjaCB3aXRoIHRoZSBmb2xsb3dpbmcs
IGlmIHlvdXIgc2VyaWVzIGlzDQo+IGJhc2VkIG9uIGxpbnV4LW5leHQgb3IgdjYuMTYuIEl0IG1v
dmVzIHRoZSBlbmFibGVtZW50IGludG8gdGhlIG5ldw0KPiBzaGFyZWQgUk9DSyA1Qi81QisgZHRz
aSwgYW5kIEkndmUgYWRkZWQgYSByZWd1bGF0b3ItZW5hYmxlLXJhbXAtZGVsYXkNCj4gd2hpbGUg
SSB3YXMgYXQgaXQgYmVjYXVzZSBJJ3ZlIHJ1biBpbnRvIGhhcmQtdG8tcmVwcm9kdWNlIHByb2Js
ZW1zDQo+IHJlbGF0aW5nIHRvIGl0IGJlZm9yZSB0aGF0IEhlaWtvIHF1aWNrbHkgaWRlbnRpZmll
ZCBhbmQgZml4ZWQgaW4gaGlzDQo+IHJlY2VudCBzZXJpZXNbMV0gZm9yIGJhc2ljYWxseSBhbGwg
YWxyZWFkeSBwcmVzZW50IHJlZ3VsYXRvcnMuIFJlbWFpbnMNCj4gdG8gYmUgc2VlbiBpZiB0aGUg
ZmluYWwgcGF0Y2ggbGFuZHMgaW4gdGhhdCBmb3JtIGJ1dCB0aGlzIHNob3VsZCBtYWtlDQo+IGl0
IGVhc2llciBmb3IgcGVvcGxlIHRvIHRyeSBvdXQgYXMgaXQgbWVhbnMgYSBiYWQgbHVjayByb2xs
IGZvciB0aGUNCj4gZGF5IHdvbid0IG1ha2UgdGhlbSBydW4gaW50byBhcyBtYW55IHdlaXJkIGlz
c3Vlcy4NCj4gDQo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNjA1MTg1
MDAxLjM3NzA1NS0xLWhlaWtvQHNudGVjaC5kZS8NCg0KUmVhZGluZyB0aGF0IGp1c3Qgbm93IHJl
bWluZHMgbWUgdG8gcG9pbnQgdG8gDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjUw
NjA2MTkwNDE4LjQ3ODYzMy0xLWhlaWtvQHNudGVjaC5kZS8NCg0KQXMgQ2hlbiBZdSBwb2ludGVk
IG91dCBpbiB0aGUgcmVwbHkgdG8gdjIsIHRoaXMgaXMgbW9yZSBhIHByb3BlcnR5IG9mIHRoZQ0K
cmVndWxhdG9yIElDIGl0c2VsZiwgc28gbGlrZWx5IHNob3VsZCBnbyBpbnRvIHRoZSBkcml2ZXIu
DQoNClNvIHdpdGggYSBiaXQgb2YgbHVjayBhZnRlciA2LjE2LXJjMSBhbGwgdGhlIGZhbjUzNTU1
IGNsb25lcyBzaG91bGQgdXNlDQpzb21ld2hhdCBoYXJkd2FyZS1hY2N1cmF0ZSBlbmFibGUtdGlt
ZXMuDQoNCg0KPiBGcm9tIGZmMWMzNzBhMTU4ZjQzNDBhYTVkZmE0ZWQ1MDM0ZTgxNWU1MzcxYmUg
TW9uIFNlcCAxNyAwMDowMDowMCAyMDAxDQo+IEZyb206IE5pY29sYXMgRnJhdHRhcm9saSA8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+DQo+IERhdGU6IFR1ZSwgMyBKdW4gMjAyNSAx
NzowMzoxMCArMDIwMA0KPiBTdWJqZWN0OiBbUEFUQ0hdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBl
bmFibGUgTlBVIG9uIFJPQ0sgNUIvKw0KPiANCj4gVGhlIE5QVSBvbiB0aGUgUk9DSzVCIHVzZXMg
dGhlIHNhbWUgcmVndWxhdG9yIGZvciBib3RoIHRoZSBzcmFtLXN1cHBseQ0KPiBhbmQgdGhlIG5w
dSdzIHN1cHBseS4gQWRkIHRoaXMgcmVndWxhdG9yLCBhbmQgZW5hYmxlIGFsbCB0aGUgTlBVIGJp
dHMuDQo+IEFsc28gYWRkIHRoZSByZWd1bGF0b3IgYXMgYSBkb21haW4tc3VwcGx5IHRvIHRoZSBw
ZF9ucHUgcG93ZXIgZG9tYWluLg0KPiANCj4gVGhlIDVCKydzIHJlZ3VsYXRvciBzZXR1cCBpcyBp
ZGVudGljYWwgdG8gdGhlIDVCIGluIHRoaXMgcmVnYXJkLCBzbyBpdA0KPiBnb2VzIGluIHRoZSBz
aGFyZWQgLmR0c2kuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5p
Y29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIC4uLi9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHNpICAgICB8IDU3ICsrKysrKysrKysrKysrKysrKysN
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHNpDQo+IGluZGV4IDUxZTgz
ZjBlZDgwOS4uNWEyMGNjMjU1NWZiIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0c2kNCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHNpDQo+IEBAIC0zMzIsNiArMzMyLDI5IEBAIHJl
Z3VsYXRvci1zdGF0ZS1tZW0gew0KPiAgCX07DQo+ICB9Ow0KPiAgDQo+ICsmaTJjMSB7DQo+ICsJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsNCj4gKwlwaW5jdHJsLTAgPSA8JmkyYzFtMl94ZmVy
PjsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+ICsNCj4gKwl2ZGRfbnB1X3MwOiByZWd1bGF0b3JA
NDIgew0KPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrODYwMiI7DQo+ICsJCXJlZyA9IDww
eDQyPjsNCj4gKwkJZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciA9IDwxPjsNCj4gKwkJcmVn
dWxhdG9yLW5hbWUgPSAidmRkX25wdV9zMCI7DQo+ICsJCXJlZ3VsYXRvci1ib290LW9uOw0KPiAr
CQlyZWd1bGF0b3ItZW5hYmxlLXJhbXAtZGVsYXkgPSA8NTAwPjsNCj4gKwkJcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8NTUwMDAwPjsNCj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
OTUwMDAwPjsNCj4gKwkJcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjMwMD47DQo+ICsJCXZpbi1z
dXBwbHkgPSA8JnZjYzV2MF9zeXM+Ow0KPiArDQo+ICsJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gew0K
PiArCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOw0KPiArCQl9Ow0KPiArCX07DQo+ICt9Ow0K
PiArDQo+ICAmaTJjMyB7DQoNCkkgdGhpbmsgeW91ciBwYXRjaCBoZXJlIGhhcyBzb21lIG90aGVy
IGRlcGVuZGVuY3kgc3RpbGw/DQpCZWNhdXNlIGluIHRoZSByazM1ODgtcm9jay01Yi5kdHNpIHRo
ZXJlIGlzIG5vIGkyYzMgeWV0DQpJbiB0b3J2YWxkcycgYnJhbmNoIGZyb20gX2p1c3Qgbm93XyA7
LSkgLg0KDQoNCkhlaWtvDQoNCj4gIAlzdGF0dXMgPSAib2theSI7DQo+ICB9Ow0KPiBAQCAtNTIx
LDYgKzU0NCwxMCBAQCAmcGRfZ3B1IHsNCj4gIAlkb21haW4tc3VwcGx5ID0gPCZ2ZGRfZ3B1X3Mw
PjsNCj4gIH07DQo+ICANCj4gKyZwZF9ucHUgew0KPiArCWRvbWFpbi1zdXBwbHkgPSA8JnZkZF9u
cHVfczA+Ow0KPiArfTsNCj4gKw0KPiAgJnBpbmN0cmwgew0KPiAgCWhkbWlyeCB7DQo+ICAJCWhk
bWlyeF9ocGQ6IGhkbWlyeC01di1kZXRlY3Rpb24gew0KPiBAQCAtNTg1LDYgKzYxMiwzNiBAQCAm
cHdtMSB7DQo+ICAJc3RhdHVzID0gIm9rYXkiOw0KPiAgfTsNCj4gIA0KPiArJnJrbm5fY29yZV90
b3Agew0KPiArCW5wdS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Ow0KPiArCXNyYW0tc3VwcGx5ID0g
PCZ2ZGRfbnB1X3MwPjsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+ICt9Ow0KPiArDQo+ICsmcmtu
bl9jb3JlXzEgew0KPiArCW5wdS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Ow0KPiArCXNyYW0tc3Vw
cGx5ID0gPCZ2ZGRfbnB1X3MwPjsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+ICt9Ow0KPiArDQo+
ICsmcmtubl9jb3JlXzIgew0KPiArCW5wdS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Ow0KPiArCXNy
YW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+ICt9Ow0K
PiArDQo+ICsmcmtubl9tbXVfdG9wIHsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+ICt9Ow0KPiAr
DQo+ICsmcmtubl9tbXVfMSB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArfTsNCj4gKw0KPiAr
JnJrbm5fbW11XzIgew0KPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gK307DQo+ICsNCj4gICZzYXJh
ZGMgew0KPiAgCXZyZWYtc3VwcGx5ID0gPCZhdmNjXzF2OF9zMD47DQo+ICAJc3RhdHVzID0gIm9r
YXkiOw0KPiANCg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
