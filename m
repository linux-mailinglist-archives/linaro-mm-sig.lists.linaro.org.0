Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E6FAE1781
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Jun 2025 11:29:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A69E945605
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Jun 2025 09:29:15 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id 5D1BB44924
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Jun 2025 09:29:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=E0xVwfeP;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=O0Z76gXzXASZvB45zMW7OBOfjiQs1Vtulp5U1K5X9+M=; b=E0xVwfePovI7zW07TkUrEmyv3u
	R6+iMMc2szMneU5Th+XbYLGrJMTI6wOnXneDpAa+NUznRovozXXGjIsRNZ3jM5XtXpaSvZ+1O50KY
	/YiANnD7+B6m3xmrAmSMjP/ADzGH+C6YP3KUnsrlFQtdCCWYW1TKw6kg35jrkVA8/N1yz/0KxnISa
	VrP5B9U/Y2f2kkmCCaa5m0sT8obSTTtEQZQ29fJbf2qyDFec7LH9Tvi5mpfWM2Npr8PKr7SZ2DGtm
	gE+NS9aCpNSgCLmcAC0mjhuBV8cJR6kxgEocCpeaFl2Hkr/s+H0fNHscRzNLwFSQ8wO+n2cjCxUnY
	61fY+D8A==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSY2z-0008Po-Kz; Fri, 20 Jun 2025 11:28:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
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
Date: Fri, 20 Jun 2025 11:28:32 +0200
Message-ID: <2241399.8hzESeGDPO@phil>
In-Reply-To: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,arm.com,fooishbar.org,libre.computer,oss.qualcomm.com,tomeuvizoso.net];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[85.207.219.154:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	DWL_DNSWL_BLOCKED(0.00)[sntech.de:dkim];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5D1BB44924
X-Spamd-Bar: -
Message-ID-Hash: HK7UGFLVD7UUOZFHK2FFMOU55LQQMVB3
X-Message-ID-Hash: HK7UGFLVD7UUOZFHK2FFMOU55LQQMVB3
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/10] New DRM accel driver for Rockchip's RKNN NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HK7UGFLVD7UUOZFHK2FFMOU55LQQMVB3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

QW0gRnJlaXRhZywgNi4gSnVuaSAyMDI1LCAwODoyODoyMCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFRvbWV1IFZpem9zbzoNCj4gVGhpcyBzZXJpZXMgYWRkcyBhIG5ldyBk
cml2ZXIgZm9yIHRoZSBOUFUgdGhhdCBSb2NrY2hpcCBpbmNsdWRlcyBpbiBpdHMNCj4gbmV3ZXIg
U29DcywgZGV2ZWxvcGVkIGJ5IHRoZW0gb24gdGhlIE5WRExBIGJhc2UuDQo+IA0KPiBJbiBpdHMg
Y3VycmVudCBmb3JtLCBpdCBzdXBwb3J0cyB0aGUgc3BlY2lmaWMgTlBVIGluIHRoZSBSSzM1ODgg
U29DLg0KPiANCj4gVGhlIHVzZXJzcGFjZSBkcml2ZXIgaXMgcGFydCBvZiBNZXNhIGFuZCBhbiBp
bml0aWFsIGRyYWZ0IGNhbiBiZSBmb3VuZCBhdDoNCj4gDQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9tZXNhL21lc2EvLS9tZXJnZV9yZXF1ZXN0cy8yOTY5OA0KPiANCj4gU2lnbmVk
LW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+DQoNCj4gLS0tDQo+
IE5pY29sYXMgRnJhdHRhcm9saSAoMik6DQo+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBh
ZGQgcGRfbnB1IGxhYmVsIGZvciBSSzM1ODggcG93ZXIgZG9tYWlucw0KPiAgICAgICBhcm02NDog
ZHRzOiByb2NrY2hpcDogZW5hYmxlIE5QVSBvbiBST0NLIDVCDQo+IA0KPiBUb21ldSBWaXpvc28g
KDgpOg0KPiAgICAgICBhY2NlbC9yb2NrZXQ6IEFkZCByZWdpc3RlcnMgaGVhZGVyDQo+ICAgICAg
IGFjY2VsL3JvY2tldDogQWRkIGEgbmV3IGRyaXZlciBmb3IgUm9ja2NoaXAncyBOUFUNCj4gICAg
ICAgYWNjZWwvcm9ja2V0OiBBZGQgSU9DVEwgZm9yIEJPIGNyZWF0aW9uDQo+ICAgICAgIGFjY2Vs
L3JvY2tldDogQWRkIGpvYiBzdWJtaXNzaW9uIElPQ1RMDQo+ICAgICAgIGFjY2VsL3JvY2tldDog
QWRkIElPQ1RMcyBmb3Igc3luY2hyb25pemluZyBtZW1vcnkgYWNjZXNzZXMNCj4gICAgICAgZHQt
YmluZGluZ3M6IG5wdTogcm9ja2NoaXAscmtubjogQWRkIGJpbmRpbmdzDQo+ICAgICAgIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiBBZGQgbm9kZXMgZm9yIE5QVSBhbmQgaXRzIE1NVSB0byByazM1ODgt
YmFzZQ0KPiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIHRoZSBOUFUgb24gcXVh
cnR6cHJvNjQNCg0KZnJvbSBhIGhhbmRsaW5nIHBvaW50IG9mIHZpZXcsIEkgd291bGQgZXhwZWN0
IHBhdGNoIDEgLSA2DQooZHJpdmVyIGNvZGUgKyBkdC1iaW5kaW5nIHBhdGNoKSB0byBnbyB0aHJv
dWdoIHNvbWUgZHJpdmVyIHRyZWUNCmJ1dCBoYXZlIG5vdCBjbHVlIHdoaWNoIG9uZSB0aGF0IGlz
Lg0KDQpBbmQgYWZ0ZXJ3YXJkcywgSSB3b3VsZCBwaWNrIHVwIHRoZSBhcm02NCBkZXZpY2V0cmVl
IGFkZGl0aW9ucw0KcGF0Y2hlcyA3IC0gMTAgLg0KDQoNCkhlaWtvDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
