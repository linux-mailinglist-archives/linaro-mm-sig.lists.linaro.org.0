Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDC893C72D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 18:29:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F10993F4E3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jul 2024 16:29:32 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 4A22D447FC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jul 2024 16:29:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=T8eboKwt;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F1B84CE13CE;
	Thu, 25 Jul 2024 16:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52E65C4AF07;
	Thu, 25 Jul 2024 16:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721924946;
	bh=6M9VEwQ0bCBbEukoo/UWmk3UpgsSaKDRg0kAVMformg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=T8eboKwt63bDwOUKiZpVQxR38fh1QOLlVI2F7pPUT9mbxxqyWa4EvKAxGnXp3/CbV
	 n/Scg7QCtvteXcE5w/IHr87pLi4oVXk/ngNMgo0Rn4fYa8bj81/xOVUcM0IT+DRUIM
	 0nNQ/NJZ628zHQdrwnbQ8mbRYdMwG+EirQiVeVKitq/yRyPjpXoYPeDQhJ89JxLpUD
	 Kl6l+btIgr5OZZ6WKKpslw1c9LKaB/IC+xrnw5IQM8cgW1zGqsf56I+FEqfVhhRls5
	 QhGGBlKzaxr2E2O/wRrA45cbF6fCq+rT2KQhAjP80z/YOMguStbJz3vP7RbvfbBEsQ
	 g9db7e7JW4xew==
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
In-Reply-To: <20240226-audio-i350-v7-3-6518d953a141@baylibre.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <20240226-audio-i350-v7-3-6518d953a141@baylibre.com>
Message-Id: <172192494107.1054722.15668367028139729556.b4-ty@kernel.org>
Date: Thu, 25 Jul 2024 17:29:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.13.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4A22D447FC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.04 / 15.00];
	BAYES_HAM(-2.54)[97.94%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[sin.source.kernel.org:helo,sin.source.kernel.org:rdns];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: D2PZQIVFWD5RDHZAYEZVE7W2TB4L6O2J
X-Message-ID-Hash: D2PZQIVFWD5RDHZAYEZVE7W2TB4L6O2J
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 03/16] dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D2PZQIVFWD5RDHZAYEZVE7W2TB4L6O2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMiBKdWwgMjAyNCAwODo1MzozMiArMDIwMCwgQWxleGFuZHJlIE1lcmduYXQgd3Jv
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
