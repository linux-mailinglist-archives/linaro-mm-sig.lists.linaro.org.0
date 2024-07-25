Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C681693C729
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 18:29:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5AFA43C15
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 16:29:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 85D893F4DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jul 2024 16:29:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CyMfYCjV;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 32B55611C6;
	Thu, 25 Jul 2024 16:29:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2470FC116B1;
	Thu, 25 Jul 2024 16:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721924940;
	bh=rA8r5GE2DmreSp4mzMERlx21Ozsy7idcGW/81EsYAjo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CyMfYCjVimpSdrI/6NFuvB4RwQK2i2ehRHRAwXgwmifhEwwaPtfPhy/RarehoVDih
	 m6tAo/0CyllD9poiPv69XdsODkaF1PDmZDmf/OnerivmewQKHipRxc6zKsk3Td9B5w
	 8ehAkthL7Q9qtEmDTqC9LbMPsjfvbgQP1QEa8O9yw70+ESjjLkkJH8Fvcu5CWQSi17
	 7bRAJ0GvSEFQWNFLyTFn4g18zKZH6A2Cvnca6l7Z74b7MfyuOZLQ54E0u9Xf3Slh3C
	 2Rj+NwGKR7pZxhKZIU1vYDxaKMPkz7FTP1hVdIuvfwpkgR1R88GVfsQQw/Y1UuUGs8
	 OlC1KbzaQB5mA==
From: Lee Jones <lee@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240226-audio-i350-v5-3-54827318b453@baylibre.com>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
 <20240226-audio-i350-v5-3-54827318b453@baylibre.com>
Message-Id: <172192493586.1054722.4853871002402475676.b4-ty@kernel.org>
Date: Thu, 25 Jul 2024 17:28:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.13.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 85D893F4DE
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.27 / 15.00];
	BAYES_HAM(-2.77)[99.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,baylibre.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: X3PTAX6VXQF3AGUHJFO67X6KPWFGS2XL
X-Message-ID-Hash: X3PTAX6VXQF3AGUHJFO67X6KPWFGS2XL
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH RESEND v5 03/16] dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X3PTAX6VXQF3AGUHJFO67X6KPWFGS2XL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

T24gRnJpLCAxNCBKdW4gMjAyNCAwOToyNzo0NiArMDIwMCwgQWxleGFuZHJlIE1lcmduYXQgd3Jv
dGU6DQo+IEFkZCB0aGUgYXVkaW8gY29kZWMgc3ViLWRldmljZS4gVGhpcyBzdWItZGV2aWNlIGlz
IHVzZWQgdG8gc2V0IHRoZQ0KPiBvcHRpb25hbCB2b2x0YWdlIHZhbHVlcyBhY2NvcmRpbmcgdG8g
dGhlIGhhcmR3YXJlLg0KPiBUaGUgcHJvcGVydGllcyBhcmU6DQo+ICAgLSBTZXR1cCBvZiBtaWNy
b3Bob25lIGJpYXMgdm9sdGFnZS4NCj4gICAtIFNldHVwIG9mIHRoZSBzcGVha2VyIHBpbiBwdWxs
LWRvd24uDQo+IA0KPiBBbHNvLCBhZGQgdGhlIGF1ZGlvIHBvd2VyIHN1cHBseSBwcm9wZXJ0eSB3
aGljaCBpcyBkZWRpY2F0ZWQgZm9yDQo+IHRoZSBhdWRpbyBjb2RlYyBzdWItZGV2aWNlLg0KPiAN
Cj4gWy4uLl0NCg0KQXBwbGllZCwgdGhhbmtzIQ0KDQpbMDMvMTZdIGR0LWJpbmRpbmdzOiBtZmQ6
IG1lZGlhdGVrOiBBZGQgY29kZWMgcHJvcGVydHkgZm9yIE1UNjM1NyBQTUlDDQogICAgICAgIGNv
bW1pdDogMzgyMTE0OWViMTAxZmUyZDQ1YTQ2OTc2NTllNjA5MzA4Mjg0MDBkOA0KDQotLQ0KTGVl
IEpvbmVzIFvmnY7nkLzmlq9dDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
