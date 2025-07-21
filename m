Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DDAB0C781
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 17:25:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3AAE4579B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 15:25:02 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id 434BE3F6B8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jul 2025 15:24:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=N7F21LPI;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=N1dy7xoxRKl1sQ1tb4Ipkebpw3UhPsQ6Fu34IdYEgOA=; b=N7F21LPIdchD8+2O9CRvE6O6lI
	gX1sGnojJnysvzXKgRZSVl3qksY/yK/9djn9/YWNxOIWo7kFQbymnEjUusxPGd1xxRZxoe4sKglj0
	h5Dh1ridpadW6MvtjkAbPCgYeYBiRCxw1Sg96MnfuX+/9+opxxxztm6oYj0PzZmb1sgUJ4KI2NSYg
	3BVv4bX1JAQbphTSLHK+Me/8AOwc2onF5MjEXKI8VCbzpWtbhsMOvO5HiV0lI01ilo91r6z1ubpOv
	+Zu5Ulx51fV7sPn3ctWr48CQG/p3JV46sJ2rUHDQ9QNCIY9gs1FwB6HfVy+QTbCfCw1igvlrNNkf5
	K4zSFjWA==;
Received: from i53875b2e.versanet.de ([83.135.91.46] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1udsND-00047Z-91; Mon, 21 Jul 2025 17:24:15 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
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
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 17:24:13 +0200
Message-ID: <4109088.mvXUDI8C0e@diego>
In-Reply-To: <b48c6694-2bd1-44d0-9dd1-1b7a67e22d87@oss.qualcomm.com>
References: 
 <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
 <b48c6694-2bd1-44d0-9dd1-1b7a67e22d87@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	BAYES_HAM(-2.66)[98.52%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,arm.com,fooishbar.org,libre.computer,pengutronix.de,oss.qualcomm.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[185.11.138.130:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 434BE3F6B8
X-Spamd-Bar: -
Message-ID-Hash: 6L3I5ZLSRIRI54POSTRDXE4BTCTBWLDV
X-Message-ID-Hash: 6L3I5ZLSRIRI54POSTRDXE4BTCTBWLDV
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Robert Foss <rfoss@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 00/10] New DRM accel driver for Rockchip's RKNN NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6L3I5ZLSRIRI54POSTRDXE4BTCTBWLDV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

SGkgSmVmZiwNCg0KQW0gTW9udGFnLCAyMS4gSnVsaSAyMDI1LCAxNjo1NTowMSBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEplZmYgSHVnbzoNCj4gT24gNy8yMS8yMDI1IDM6
MTcgQU0sIFRvbWV1IFZpem9zbyB3cm90ZToNCj4gPiBUaGlzIHNlcmllcyBhZGRzIGEgbmV3IGRy
aXZlciBmb3IgdGhlIE5QVSB0aGF0IFJvY2tjaGlwIGluY2x1ZGVzIGluIGl0cw0KPiA+IG5ld2Vy
IFNvQ3MsIGRldmVsb3BlZCBieSB0aGVtIG9uIHRoZSBOVkRMQSBiYXNlLg0KPiA+IA0KPiA+IElu
IGl0cyBjdXJyZW50IGZvcm0sIGl0IHN1cHBvcnRzIHRoZSBzcGVjaWZpYyBOUFUgaW4gdGhlIFJL
MzU4OCBTb0MuDQo+ID4gDQo+ID4gVGhlIHVzZXJzcGFjZSBkcml2ZXIgaXMgcGFydCBvZiBNZXNh
IGFuZCBhbiBpbml0aWFsIGRyYWZ0IGNhbiBiZSBmb3VuZCBhdDoNCj4gPiANCj4gPiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMjk2OTgN
Cj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3Nv
Lm5ldD4NCj4gDQo+IFRoaXMgKGFuZCB0aGUgdXNlcnNwYWNlIGNvbXBvbmVudCkgYXBwZWFyIHJl
YWR5IGZvciBtZXJnZSBmcm9tIHdoYXQgSSANCj4gY2FuIHRlbGwuIFRvbWV1IGlzIHN0aWxsIHdv
cmtpbmcgb24gaGlzIGRybS1taXNjIGFjY2VzcyBzbyBJJ3ZlIG9mZmVyZWQgDQo+IHRvIG1lcmdl
IG9uIGhpcyBiZWhhbGYuIFBsYW5uaW5nIG9uIHdhaXRpbmcgdW50aWwgRnJpZGF5IGZvciBhbnkg
ZmluYWwgDQo+IGZlZWRiYWNrIHRvIGNvbWUgaW4gYmVmb3JlIGRvaW5nIHNvLg0KDQpzb3VuZHMg
Z3JlYXQuDQoNCkp1c3QgdG8gbWFrZSBzdXJlLCB5b3UncmUgcGxhbm5pbmcgdG8gbWVyZ2UgcGF0
Y2hlcyAxLTYgKGRyaXZlciArIGJpbmRpbmcpDQppbnRvIGRybS1taXNjIGFuZCBJJ2xsIHBpY2sg
dXAgdGhlICJhcm02NDogZHRzOiAiIHBhdGNoZXMgNy0xMCBhZnRlcndhcmRzPw0KDQpIZWlrbw0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
