Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89368976F2C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Sep 2024 18:54:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6CFED43B8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Sep 2024 16:54:15 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id A756E3F4BE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Sep 2024 16:54:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=RSkpgXj+;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6A97CA45756;
	Thu, 12 Sep 2024 16:54:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B42B2C4CEC3;
	Thu, 12 Sep 2024 16:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726160052;
	bh=EvuQRTOvCygv4JttyYOrIYG2JZuDMwbgBuOgkBJTeAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RSkpgXj+jtRgdtCiTXLvwsUHUdoe4J25kmlMfVfb1/cYDHZ39VIPLu0B+EVQYrWEg
	 eXasDGChp/IqEDddBOUc/14D0P3rUbJEy8ojr8kmWAWhcEzxIidEsLruIsiveCeT/7
	 BlQTgenMOoQZz0A1+zCRv5EXrG4ipcfqagMuMEj9+sGrXYxlBljX5jv/saUVLWc63C
	 tcH1VSgSzk7SiVByhan7p8/+K8io2ALVDTPqrE6CHWBJxDwKKo++qPawPEqMRdrpOn
	 qYlXGo0kJqpyKlp5jnHne3PZ/qwgUGIbicMDDSaRVjD5Tv0fhuY5O5667XleL8Nm6P
	 g8cY44G2Vnw+A==
Date: Thu, 12 Sep 2024 17:54:04 +0100
From: Lee Jones <lee@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20240912165404.GG24460@google.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
 <20240912145100.GE24460@google.com>
 <10c1217b-d8a3-489c-93fc-6de45dcbe47c@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10c1217b-d8a3-489c-93fc-6de45dcbe47c@sirena.org.uk>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A756E3F4BE
X-Spamd-Result: default: False [-6.19 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.69)[98.65%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,baylibre.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: GLIRIVP6VIRCRKUQ76VUYF6XPA6LFNLD
X-Message-ID-Hash: GLIRIVP6VIRCRKUQ76VUYF6XPA6LFNLD
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Mergnat <amergnat@baylibre.com>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <n
 belin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLIRIVP6VIRCRKUQ76VUYF6XPA6LFNLD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAxMiBTZXAgMjAyNCwgTWFyayBCcm93biB3cm90ZToNCg0KPiBPbiBUaHUsIFNlcCAx
MiwgMjAyNCBhdCAwMzo1MTowMFBNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6DQo+ID4gT24gV2Vk
LCAwNCBTZXAgMjAyNCwgTWFyayBCcm93biB3cm90ZToNCj4gDQo+ID4gPiBbMDMvMTZdIGR0LWJp
bmRpbmdzOiBtZmQ6IG1lZGlhdGVrOiBBZGQgY29kZWMgcHJvcGVydHkgZm9yIE1UNjM1NyBQTUlD
DQo+ID4gPiAgICAgICAgIGNvbW1pdDogNzYxY2FiNjY3ODk4ZDg2YzA0ODY3OTQ4ZjFiN2FlYzEw
OTBiZTc5Ng0KPiANCj4gPiBEaWQgeW91IG1lYW4gdG8gaG9vdmVyIHRoaXMgdXA/DQo+IA0KPiBJ
dCBzZWVtZWQgdG8gZ28gYWxvbmcgd2l0aCB0aGUgc2VyaWVzIGFuZCBoYWQgYSBEVCByZXZpZXcg
c28gaXQgbG9va2VkDQo+IGxpa2UgeW91J2QganVzdCBsZWZ0IGl0IHRvIHRoZSBEVCBwZW9wbGUg
dG8gcmV2aWV3LCB0aGVyZSB3YXNuJ3QgYW55DQo+IG90aGVyIE1GRCBjb250ZW50IGluIHRoZSBz
ZXJpZXMuDQoNCkkgYXBwbGllZCBpdCBmcm9tIHRoaXMgc2V0IDYgd2Vla3MgYWdvISA6KQ0KDQoN
Ci0tIA0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
