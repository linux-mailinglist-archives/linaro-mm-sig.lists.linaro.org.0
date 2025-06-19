Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1E4AE00F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Jun 2025 11:02:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 810AF45783
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Jun 2025 09:02:49 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id 2E38E446C9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Jun 2025 09:02:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=Lz+dxvYl;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=YHxb3G7EW8RzN+dJgsKeTL9lqcEi84ddNrYeIybSCPk=; b=Lz+dxvYl7ugAV5gMsPRzO/Zn6T
	Mxdaho/YZVeiUWxOl3h4OrtvnZ6048BbBDlX5dPKQ1XqhZujSpQjlCFGyTGDJm7if6VNINPaxvQ7o
	/8kFNcpB0Rj4uYwQn53p69/iF6U2l0VZMcGB4ZK08SUUkSee1C2Bd+uoY3lEBnaDa99ka8xdolaYd
	SkyMcwGzxVNOJqlu0QcVtDNjVOvnvaWwLcfmxjA1+76juFgGKqfFU9c6d/YlIZdO9oBjq1meeEYDr
	PAGkuq1Dd0gbw/v6G9F9GSdHqYL3yb71Yy3TIRlUw3GNSjlg/GLMdhqeQKNJ7KWRkbwdsBY/RvAPs
	pKCLP7BA==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSB9C-0007Ey-OE; Thu, 19 Jun 2025 11:01:26 +0200
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
Date: Thu, 19 Jun 2025 11:01:25 +0200
Message-ID: <2217684.TLkxdtWsSY@phil>
In-Reply-To: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.76 / 15.00];
	BAYES_HAM(-2.96)[99.81%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[gitlab.freedesktop.org:query timed out,sntech.de:query timed out];
	ASN_FAIL(0.00)[130.138.11.185.asn.rspamd.com:query timed out];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,arm.com,fooishbar.org,libre.computer,oss.qualcomm.com,tomeuvizoso.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[85.207.219.154:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2E38E446C9
X-Spamd-Bar: -
Message-ID-Hash: J5MRNX26LEFBEF654XX2XEI7B2NMO7KU
X-Message-ID-Hash: J5MRNX26LEFBEF654XX2XEI7B2NMO7KU
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/10] New DRM accel driver for Rockchip's RKNN NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J5MRNX26LEFBEF654XX2XEI7B2NMO7KU/>
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
LW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+DQo+IC0tLQ0KPiBD
aGFuZ2VzIGluIHY3Og0KPiAtIEFjdHVhbGx5IGVuYWJsZSBwcm9jZXNzIGlzb2xhdGlvbiBieSBh
bGxvY2F0aW5nIGl0cyBvd24gSU9NTVUgZG9tYWluDQo+ICAgdG8gZWFjaCBEUk0gY2xpZW50Lg0K
PiAtIExpbmsgdG8gdjY6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA2MDQtNi0xMC1y
b2NrZXQtdjYtMC0yMzdhYzc1ZGRiNWVAdG9tZXV2aXpvc28ubmV0DQoNCkkgd2FzIGFibGUgdG8g
c3VjY2Vzc2Z1bGx5IHJ1biB0aGUgU1NETGl0ZSBNb2JpbGVEZXQgbW9kZWwsIGRldGVjdGluZw0K
ZWxlbWVudHMgY29ycmVjdGx5IG9uIHRoYXQgIlNvdW5kcyBvZiBOZXcgWW9yayIgeW91dHViZSB2
aWRlbyBhbGwgdGhlDQpkZW1vcyBzZWVtIHRvIGJlIHVzaW5nIDstKSAtIG9uIGEgcmszNTg4LXRp
Z2VyIGJvYXJkLg0KDQpOUFUgbmVlZGVkIGxpa2UgMzBtcyBwZXIgZnJhbWUgb3Igc28gYW5kIGFs
c28gZGV0ZWN0ZWQgdGhlIGV4cGVjdGVkDQp0aGluZ3MsIHNvDQoNClRlc3RlZC1ieTogSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
