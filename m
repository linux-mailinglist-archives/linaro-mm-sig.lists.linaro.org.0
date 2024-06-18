Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C8290D5BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 16:43:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3121444851
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 14:43:40 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 63CEE3F4AF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 14:43:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=jmCoO3SI;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718721816;
	bh=AZX3jLOJVEnToDsGXuWNi9vG2dyKEdoxx4/ojvn22zA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jmCoO3SIi6oHxg0EKZjZGZyaCG7LiZU6f1I3SGvaglMFAtJQ7Mwcjjve669cWFx/C
	 bhMWSEfjyebzfgV7SXQ/bklAWdZneVHuDoJci07mY9ZUdgakx25wPRZ/ofUntv/j9W
	 +KatqSgywWZGJwHqZuA5A8Gq/DeDC7JRzIgJvaNwdjHIuohBgyVQYPF2nVRx/yhOLz
	 4x+8CXrg5xhaQkMpoyPOzuMapk2yQJjH24+i93HjAFIexsHpY8ABnw/k7y4njovqdy
	 vuHn983rA/cEnzda4SrkmT3P0Hz9812PJdx6RTU3zPSFUTTCHIoF0MroWxwjXOPoPk
	 YoD1wvA/DtKTg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A25873780629;
	Tue, 18 Jun 2024 14:43:34 +0000 (UTC)
Message-ID: <03662a3e-6a66-4541-9435-98f809f1c617@collabora.com>
Date: Tue, 18 Jun 2024 16:43:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexandre Mergnat <amergnat@baylibre.com>, Mark Brown <broonie@kernel.org>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
 <ZmwODkYov79VHznK@finisterre.sirena.org.uk>
 <85e9451d-2cd0-457f-a246-017433757fff@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <85e9451d-2cd0-457f-a246-017433757fff@baylibre.com>
X-Rspamd-Queue-Id: 63CEE3F4AF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5N7P5IZE5FK52EZFGCWMQCQVTDQRQ36W
X-Message-ID-Hash: 5N7P5IZE5FK52EZFGCWMQCQVTDQRQ36W
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND v5 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5N7P5IZE5FK52EZFGCWMQCQVTDQRQ36W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SWwgMTcvMDYvMjQgMTA6MDUsIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86DQo+IA0KPiAN
Cj4gT24gMTQvMDYvMjAyNCAxMTozMSwgTWFyayBCcm93biB3cm90ZToNCj4+IE9uIEZyaSwgSnVu
IDE0LCAyMDI0IGF0IDA5OjI3OjQzQU0gKzAyMDAsIEFsZXhhbmRyZSBNZXJnbmF0IHdyb3RlOg0K
Pj4+IFRoaXMgc2VyaWUgYWltIHRvIGFkZCB0aGUgZm9sbG93aW5nIGF1ZGlvIHN1cHBvcnQgZm9y
IHRoZSBHZW5pbyAzNTAtZXZrOg0KPj4+IC0gUGxheWJhY2sNCj4+PiDCoMKgIC0gMmNoIEhlYWRz
ZXQgSmFjayAoRWFycGhvbmUpDQo+Pj4gwqDCoCAtIDFjaCBMaW5lLW91dCBKYWNrIChTcGVha2Vy
KQ0KPj4+IMKgwqAgLSA4Y2ggSERNSSBUeA0KPj4NCj4+IEkgc2VlbSB0byByZW1lbWJlciB5b3Ug
aGFkIHJldmlldyBjb21tZW50cyB0aGF0IG5lZWRlZCBhZGRyZXNzaW5nIGZyb20NCj4+IEFuZ2Vs
b0dpb2FjY2hpbm8sIHdoeSByZXNlbmQgd2l0aG91dCBhZGRyZXNzaW5nIHRob3NlPw0KPiANCj4g
SSBkb24ndCBzZWUgYW55IGNvbW1lbnQ6DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
MjAyNDAyMjYtYXVkaW8taTM1MC12NS0wLWU3ZTI1NjlkZjQ4MUBiYXlsaWJyZS5jb20vDQo+IA0K
DQpNYXJrLCB0aGUgcmV2aWV3IGNvbW1lbnRzIHdlcmUgb24gdGhlIHY0IG9mIHRoaXMgc2VyaWVz
IDotKQ0KDQpJJ2xsIHJldmlldyB0aGlzIHZlcnNpb24gcHJvYmFibHkgdG9tb3Jyb3csIG9yIGFu
eXdheSB0aGlzIHdlZWsuDQoNCkNoZWVycywNCkFuZ2Vsbw0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
