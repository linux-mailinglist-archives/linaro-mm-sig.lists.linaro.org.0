Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD447ACD9B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Jun 2025 10:26:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A42C644716
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Jun 2025 08:26:15 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id D4F603F69E
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Jun 2025 08:26:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=Ddwg44kF;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=LCPFAPADt8JOCJBFFfu1MyhQ+vPj22OqdN/un1YStz0=; b=Ddwg44kFMwOOqBVKp98e9Ri5nF
	0t4YLM+TCicL6BAy/Ym89l27K60UgOgN0Vc/s9tMQSF5YXSjzwA0lYQnPqesHG8z3j3p6K0Saax9K
	osb/9XUSHQMziUs9ZDdy7pCSb1HYjIcGaMA5832WtLeYsY/GluJ34pCVBJN/GHpl3quL+lVkUx/QG
	jb6DFa5Arf5ERK2jYAZ60ww2w0ZibTjhmdj1k4BtYUmDXIyAH0b3t83H/xceFMDoK8SHCIvt34Ahj
	ttPwCiE0naYusuB3fDhuEvn/D/yK497t98YVX/dPo98FdywF8tf7tODLvR6uYsqvlKJ/rjC1hXiwB
	VOOuZPgQ==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uMjR3-0006Av-Ec; Wed, 04 Jun 2025 10:25:21 +0200
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
Date: Wed, 04 Jun 2025 10:25:20 +0200
Message-ID: <2024813.jZfb76A358@diego>
In-Reply-To: <20250604-6-10-rocket-v6-1-237ac75ddb5e@tomeuvizoso.net>
References: 
 <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-1-237ac75ddb5e@tomeuvizoso.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	RCPT_COUNT_TWELVE(0.00)[27];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,oss.qualcomm.com,tomeuvizoso.net];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+]
X-Rspamd-Queue-Id: D4F603F69E
X-Spamd-Bar: -
Message-ID-Hash: 2ATSKJDEVHEWO4CN7PVGWI2JTWRQWG6X
X-Message-ID-Hash: 2ATSKJDEVHEWO4CN7PVGWI2JTWRQWG6X
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ATSKJDEVHEWO4CN7PVGWI2JTWRQWG6X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

QW0gTWl0dHdvY2gsIDQuIEp1bmkgMjAyNSwgMDk6NTc6MTQgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286DQo+IEFkZCB0aGUgYmluZGluZ3MgZm9yIHRo
ZSBOZXVyYWwgUHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9ja2NoaXAuDQo+IA0KPiB2MjoNCj4g
LSBBZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBlciBjb3JlLCBlYWNoIHdp
dGggaXRzIG93bg0KPiAgIElPTU1VKQ0KPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJvbSBTZWJh
c3RpYW4gUmVpY2hlbA0KPiANCj4gdjM6DQo+IC0gU3BsaXQgcmVnaXN0ZXIgYmxvY2sgaW4gaXRz
IGNvbnN0aXR1ZW50IHN1YmJsb2NrcywgYW5kIG9ubHkgcmVxdWlyZQ0KPiAgIHRoZSBvbmVzIHRo
YXQgdGhlIGtlcm5lbCB3b3VsZCBldmVyIHVzZSAoTmljb2xhcyBGcmF0dGFyb2xpKQ0KPiAtIEdy
b3VwIHN1cHBsaWVzIChSb2IgSGVycmluZykNCj4gLSBFeHBsYWluIHRoZSB3YXkgaW4gd2hpY2gg
dGhlIHRvcCBjb3JlIGlzIHNwZWNpYWwgKFJvYiBIZXJyaW5nKQ0KPiANCj4gdjQ6DQo+IC0gQ2hh
bmdlIHJlcXVpcmVkIG5vZGUgbmFtZSB0byBucHVAIChSb2IgSGVycmluZyBhbmQgS3J6eXN6dG9m
IEtvemxvd3NraSkNCj4gLSBSZW1vdmUgdW5uZWVkZWQgaXRlbXM6IChLcnp5c3p0b2YgS296bG93
c2tpKQ0KPiAtIEZpeCB1c2Ugb2YgbWluSXRlbXMvbWF4SXRlbXMgKEtyenlzenRvZiBLb3psb3dz
a2kpDQo+IC0gQWRkIHJlZy1uYW1lcyB0byBsaXN0IG9mIHJlcXVpcmVkIHByb3BlcnRpZXMgKEty
enlzenRvZiBLb3psb3dza2kpDQo+IC0gRml4IGV4YW1wbGUgKEtyenlzenRvZiBLb3psb3dza2kp
DQo+IA0KPiB2NToNCj4gLSBSZW5hbWUgZmlsZSB0byByb2NrY2hpcCxyazM1ODgtcmtubi1jb3Jl
LnlhbWwgKEtyenlzenRvZiBLb3psb3dza2kpDQo+IC0gU3RyZWFtbGluZSBjb21wYXRpYmxlIHBy
b3BlcnR5IChLcnp5c3p0b2YgS296bG93c2tpKQ0KPiANCj4gdjY6DQo+IC0gUmVtb3ZlIG1lbnRp
b24gdG8gTlZETEEsIGFzIHRoZSBoYXJkd2FyZSBpcyBvbmx5IGluY2lkZW50YWxseSByZWxhdGVk
DQo+ICAgKEtldmVyIFlhbmcpDQo+IC0gTWFyayBwY2xrIGFuZCBucHUgY2xvY2tzIGFzIHJlcXVp
cmVkIGJ5IGFsbCBjbG9ja3MgKFJvYiBIZXJyaW5nKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogU2Vi
YXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pg0KPiBSZXZpZXdl
ZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3Jn
Pg0KPiAtLS0NCj4gIC4uLi9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55
YW1sICAgIHwgMTQ0ICsrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0
NCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUu
eWFtbA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwLi45YTVlOWUyMTM5MTJkMDk5N2RhMmY2YWUyNjE4OWFkZjA0
NGRjYzdiDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwNCj4gQEAgLTAsMCAr
MSwxNDQgQEANCj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlKQ0KPiArJVlBTUwgMS4yDQo+ICstLS0NCj4gKyRpZDogaHR0cDovL2Rldmlj
ZXRyZWUub3JnL3NjaGVtYXMvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCMNCj4g
KyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0K
PiArDQo+ICt0aXRsZTogTmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJvY2tjaGlwDQo+
ICsNCj4gK21haW50YWluZXJzOg0KPiArICAtIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpv
c28ubmV0Pg0KPiArDQo+ICtkZXNjcmlwdGlvbjoNCj4gKyAgUm9ja2NoaXAgSVAgZm9yIGFjY2Vs
ZXJhdGluZyBpbmZlcmVuY2Ugb2YgbmV1cmFsIG5ldHdvcmtzLg0KPiArDQo+ICsgIFRoZXJlIGlz
IHRvIGJlIGEgbm9kZSBwZXIgZWFjaCBjb3JlIGluIHRoZSBOUFUuIEluIFJvY2tjaGlwJ3MgZGVz
aWduIHRoZXJlDQo+ICsgIHdpbGwgYmUgb25lIGNvcmUgdGhhdCBpcyBzcGVjaWFsIGFuZCBuZWVk
cyB0byBiZSBwb3dlcmVkIG9uIGJlZm9yZSBhbnkgb2YgdGhlDQo+ICsgIG90aGVyIGNvcmVzIGNh
biBiZSB1c2VkLiBUaGlzIHNwZWNpYWwgY29yZSBpcyBjYWxsZWQgdGhlIHRvcCBjb3JlIGFuZCBz
aG91bGQNCj4gKyAgaGF2ZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcgdGhhdCBjb3JyZXNwb25kcyB0
byB0b3AgY29yZXMuDQo+ICsNCj4gK3Byb3BlcnRpZXM6DQo+ICsgICRub2RlbmFtZToNCj4gKyAg
ICBwYXR0ZXJuOiAnXm5wdUBbYS1mMC05XSskJw0KPiArDQo+ICsgIGNvbXBhdGlibGU6DQo+ICsg
ICAgZW51bToNCj4gKyAgICAgIC0gcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS10b3ANCj4gKyAg
ICAgIC0gcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZQ0KPiArDQo+ICsgIHJlZzoNCj4gKyAgICBt
YXhJdGVtczogMw0KPiArDQo+ICsgIHJlZy1uYW1lczoNCj4gKyAgICBpdGVtczoNCj4gKyAgICAg
IC0gY29uc3Q6IHBjDQo+ICsgICAgICAtIGNvbnN0OiBjbmENCj4gKyAgICAgIC0gY29uc3Q6IGNv
cmUNCj4gKw0KPiArICBjbG9ja3M6DQo+ICsgICAgbWF4SXRlbXM6IDQNCj4gKw0KPiArICBjbG9j
ay1uYW1lczoNCj4gKyAgICBpdGVtczoNCj4gKyAgICAgIC0gY29uc3Q6IGFjbGsNCj4gKyAgICAg
IC0gY29uc3Q6IGhjbGsNCj4gKyAgICAgIC0gY29uc3Q6IG5wdQ0KPiArICAgICAgLSBjb25zdDog
cGNsaw0KPiArDQo+ICsgIGludGVycnVwdHM6DQo+ICsgICAgbWF4SXRlbXM6IDENCj4gKw0KPiAr
ICBpb21tdXM6DQo+ICsgICAgbWF4SXRlbXM6IDENCj4gKw0KPiArICBucHUtc3VwcGx5OiB0cnVl
DQo+ICsNCj4gKyAgcG93ZXItZG9tYWluczoNCj4gKyAgICBtYXhJdGVtczogMQ0KPiArDQo+ICsg
IHJlc2V0czoNCj4gKyAgICBtYXhJdGVtczogMg0KPiArDQo+ICsgIHJlc2V0LW5hbWVzOg0KPiAr
ICAgIGl0ZW1zOg0KPiArICAgICAgLSBjb25zdDogc3JzdF9hDQo+ICsgICAgICAtIGNvbnN0OiBz
cnN0X2gNCj4gKw0KPiArICBzcmFtLXN1cHBseTogdHJ1ZQ0KPiArDQo+ICtyZXF1aXJlZDoNCj4g
KyAgLSBjb21wYXRpYmxlDQo+ICsgIC0gcmVnDQo+ICsgIC0gcmVnLW5hbWVzDQo+ICsgIC0gY2xv
Y2tzDQo+ICsgIC0gY2xvY2stbmFtZXMNCj4gKyAgLSBpbnRlcnJ1cHRzDQo+ICsgIC0gaW9tbXVz
DQo+ICsgIC0gcG93ZXItZG9tYWlucw0KPiArICAtIHJlc2V0cw0KPiArICAtIHJlc2V0LW5hbWVz
DQo+ICsgIC0gbnB1LXN1cHBseQ0KPiArICAtIHNyYW0tc3VwcGx5DQo+ICsNCj4gK2FsbE9mOg0K
PiArICAtIGlmOg0KPiArICAgICAgcHJvcGVydGllczoNCj4gKyAgICAgICAgY29tcGF0aWJsZToN
Cj4gKyAgICAgICAgICBjb250YWluczoNCj4gKyAgICAgICAgICAgIGVudW06DQo+ICsgICAgICAg
ICAgICAgIC0gcm9ja2NoaXAscmtubi1jb3JlLXRvcA0KDQpzaG91bGQgYmUgcm9ja2NoaXAscmsz
NTg4LXJrbm4tY29yZS10b3AgSSB0aGluaw0KDQo+ICsgICAgdGhlbjoNCj4gKyAgICAgIHByb3Bl
cnRpZXM6DQo+ICsgICAgICAgIGNsb2NrczoNCj4gKyAgICAgICAgICBtaW5JdGVtczogNA0KPiAr
DQo+ICsgICAgICAgIGNsb2NrLW5hbWVzOg0KPiArICAgICAgICAgIG1pbkl0ZW1zOiA0DQo+ICsg
IC0gaWY6DQo+ICsgICAgICBwcm9wZXJ0aWVzOg0KPiArICAgICAgICBjb21wYXRpYmxlOg0KPiAr
ICAgICAgICAgIGNvbnRhaW5zOg0KPiArICAgICAgICAgICAgZW51bToNCj4gKyAgICAgICAgICAg
ICAgLSByb2NrY2hpcCxya25uLWNvcmUNCg0Kc2hvdWxkIGJlIHJvY2tjaGlwLHJrMzU4OC1ya25u
LWNvcmUNCg0KPiArICAgIHRoZW46DQo+ICsgICAgICBwcm9wZXJ0aWVzOg0KPiArICAgICAgICBj
bG9ja3M6DQo+ICsgICAgICAgICAgbWF4SXRlbXM6IDINCj4gKyAgICAgICAgY2xvY2stbmFtZXM6
DQo+ICsgICAgICAgICAgbWF4SXRlbXM6IDINCg0KDQpIZWlrbw0KDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
