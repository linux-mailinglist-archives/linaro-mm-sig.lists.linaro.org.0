Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE42ACDA07
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Jun 2025 10:39:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AFCD447F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Jun 2025 08:39:48 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id 9F76A3F6C9
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Jun 2025 08:39:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=nO88kd9j;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ncKFJ2m/Ggn0OpW0FtMpeotUrPRiDPOb7CG/Tgptuh8=; b=nO88kd9jGBbtA/VXI9JU4IzVTa
	w74PJFH/OIZhNdpijwszwaIH+HuTCH+056zaeZOh03cSkp8IjBG+e1S59fJTQiB6KX0WkRGxwW/HX
	B/N5R/kIX/EQdVP4YYRG9+tjyEZAlrEwtn5AUAXfo6jS+ZsZhTitNjGMoNIgpsUmf4GCHvp+9F9eU
	KuOtvw1YCtB6dWNlpNRkyHMWTzH1DLtKxbVevZRCtxl04fOuHX2y02U6QE8m1YUA9d3mlDoimPpQI
	3+LPvnLu3gnU96/LoNhfzu/BQyjR+pb9cjy6we2/aR+NJLSdWlfuxnD5YcJIlP8Kp8Y29bjjM2U2F
	HwnUT9vA==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uMjeO-0006eE-8a; Wed, 04 Jun 2025 10:39:08 +0200
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
 Kever Yang <kever.yang@rock-chips.com>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 04 Jun 2025 10:39:07 +0200
Message-ID: <4605519.Wku2Vz74k6@diego>
In-Reply-To: <20250604-6-10-rocket-v6-3-237ac75ddb5e@tomeuvizoso.net>
References: 
 <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-3-237ac75ddb5e@tomeuvizoso.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130:c];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,oss.qualcomm.com,tomeuvizoso.net];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[26];
	DNSWL_BLOCKED(0.00)[185.11.138.130:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	DWL_DNSWL_BLOCKED(0.00)[sntech.de:dkim];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9F76A3F6C9
X-Spamd-Bar: -
Message-ID-Hash: BDMSX46OURBJZCVJMY6UUKVEROVA7U6M
X-Message-ID-Hash: BDMSX46OURBJZCVJMY6UUKVEROVA7U6M
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 03/10] arm64: dts: rockchip: Enable the NPU on quartzpro64
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BDMSX46OURBJZCVJMY6UUKVEROVA7U6M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

QW0gTWl0dHdvY2gsIDQuIEp1bmkgMjAyNSwgMDk6NTc6MTYgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286DQo+IEVuYWJsZSB0aGUgbm9kZXMgYWRkZWQg
aW4gYSBwcmV2aW91cyBjb21taXQgdG8gdGhlIHJrMzU4OHMgZGV2aWNlIHRyZWUuDQoNCnNob3Vs
ZG4ndCB0aGUgcXVhcnR6cHJvNjQgYWxzbyBuZWVkIGEgdmRkX25wdSByZWd1bGF0b3IsIGxpa2Ug
dGhlIHJvY2stNWINCnN1cHBvcnQgYXQgdGhlIGVuZCBvZiB0aGUgc2VyaWVzPyBJZiBub3QsIHBs
ZWFzZSBtZW50aW9uIHRoYXQgaW4gdGhlIGNvbW1pdA0KbWVzc2FnZS4NCg0KQWxzbywgaXQnZCBt
YWtlIHNlbnNlIHRvIGNvbGxlY3QgYWxsIGR0cyBwYXRjaGVzIGluIG9uZSBsb2NhdGlvbiAocHJv
YmFibHkNCmF0IHRoZSBib3R0b20gb2YgdGhlIHNlcmllcz0NCg0KDQpIZWlrbw0KDQoNCj4gdjI6
DQo+IC0gU3BsaXQgbm9kZXMgKFNlYmFzdGlhbiBSZWljaGVsKQ0KPiAtIFNvcnQgbm9kZXMgKFNl
YmFzdGlhbiBSZWljaGVsKQ0KPiAtIEFkZCBib2FyZCByZWd1bGF0b3JzIChTZWJhc3RpYW4gUmVp
Y2hlbCkNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpv
c28ubmV0Pg0KPiAtLS0NCj4gIC4uLi9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcXVh
cnR6cHJvNjQuZHRzIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDMwIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1xdWFydHpwcm82NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1xdWFydHpwcm82NC5kdHMNCj4gaW5kZXggNzhhYWE2NjM1YjVkMjBh
NjUwYWJhOGQ4YzJkMGQ0ZjQ5OGZmMGQzMy4uMmU0NWIyMTNjMjViOTk1NzFkZDcxY2U5MGJjNzk3
MDQxOGY2MDI3NiAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtcXVhcnR6cHJvNjQuZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LXF1YXJ0enBybzY0LmR0cw0KPiBAQCAtNDE1LDYgKzQxNSwzNiBAQCAmcGNpZTN4
NCB7DQo+ICAJc3RhdHVzID0gIm9rYXkiOw0KPiAgfTsNCj4gIA0KPiArJnJrbm5fY29yZV90b3Ag
ew0KPiArCW5wdS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Ow0KPiArCXNyYW0tc3VwcGx5ID0gPCZ2
ZGRfbnB1X21lbV9zMD47DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArfTsNCj4gKw0KPiArJnJr
bm5fY29yZV8xIHsNCj4gKwlucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsNCj4gKwlzcmFtLXN1
cHBseSA9IDwmdmRkX25wdV9tZW1fczA+Ow0KPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gK307DQo+
ICsNCj4gKyZya25uX2NvcmVfMiB7DQo+ICsJbnB1LXN1cHBseSA9IDwmdmRkX25wdV9zMD47DQo+
ICsJc3JhbS1zdXBwbHkgPSA8JnZkZF9ucHVfbWVtX3MwPjsNCj4gKwlzdGF0dXMgPSAib2theSI7
DQo+ICt9Ow0KPiArDQo+ICsmcmtubl9tbXVfdG9wIHsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+
ICt9Ow0KPiArDQo+ICsmcmtubl9tbXVfMSB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArfTsN
Cj4gKw0KPiArJnJrbm5fbW11XzIgew0KPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gK307DQo+ICsN
Cj4gICZzYXJhZGMgew0KPiAgCXZyZWYtc3VwcGx5ID0gPCZ2Y2NfMXY4X3MwPjsNCj4gIAlzdGF0
dXMgPSAib2theSI7DQo+IA0KPiANCg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
