Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD97586D10D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 18:45:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D41F540CDC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 17:45:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 95DD03F380
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Feb 2024 17:45:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=j2i8Xfzk;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3ECB0612ED;
	Thu, 29 Feb 2024 17:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8812CC433F1;
	Thu, 29 Feb 2024 17:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709228705;
	bh=r46YDK3Axw+cBVddXAlXM7gpz+1Uk3YSMg9uwZliBas=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=j2i8Xfzkwu24kv9T/itHx2J8zwt0IqaZDa5JJoKmmrrPJ1VSWZUP9nFIujBp7qi7A
	 Ucy1S6O+YGoWkH5sNSzLkEIWkPoDbT1gUsg9G7nvqy0b+i0gyHI4FN8/sMcNMiaibU
	 mHFEmGVSE6DHMCyUObCBJW8pr1q8qyDF4ta8ZSRINsjehq1ZpRrSnhtexezeVakKM1
	 gyIrxxfmxG3YzQW+HOrb9Ulqg2avUOW/Dox2h+N2T6XY/zTU+enoCL1AG39BLYpDH5
	 uVMDf8f2CWmOt/bpFOWOF20TNqRm3/0CI3mYcZpoTA0Qb6HTR4vWXAg+TVdSBoGLYo
	 Yxa83LMlOImsg==
From: Lee Jones <lee@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 amergnat@baylibre.com
In-Reply-To: <20240226-audio-i350-v1-13-4fa1cea1667f@baylibre.com>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-13-4fa1cea1667f@baylibre.com>
Message-Id: <170922870128.1628445.8442233644486002127.b4-ty@kernel.org>
Date: Thu, 29 Feb 2024 17:45:01 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 95DD03F380
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-2.30)[96.75%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
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
Message-ID-Hash: DLNVY5ABRPSZLB27LMUNPXNOA7AGI6TP
X-Message-ID-Hash: DLNVY5ABRPSZLB27LMUNPXNOA7AGI6TP
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Fabien Parent <fparent@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 13/18] mfd: mt6397-core: register mt6357 sound codec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DLNVY5ABRPSZLB27LMUNPXNOA7AGI6TP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64

T24gTW9uLCAyNiBGZWIgMjAyNCAxNTowMTo1MSArMDEwMCwgYW1lcmduYXRAYmF5bGlicmUuY29t
IHdyb3RlOg0KPiBBZGQgTVQ2MzU3IGNvZGVjIGVudHJ5IGluIHRoZSBNRkQgZHJpdmVyLg0KPiAN
Cj4gDQoNCkFwcGxpZWQsIHRoYW5rcyENCg0KWzEzLzE4XSBtZmQ6IG10NjM5Ny1jb3JlOiByZWdp
c3RlciBtdDYzNTcgc291bmQgY29kZWMNCiAgICAgICAgY29tbWl0OiA3OWQ5ODEwMmEzMWFiNzc3
YjRhNjYzMmQ3OTlhYjJiYzYzNjU0Y2Y4DQoNCi0tDQpMZWUgSm9uZXMgW+adjueQvOaWr10NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
