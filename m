Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF9D96B9FE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 13:17:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F4FE4008F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 11:17:03 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 76DB142526
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Sep 2024 11:16:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KRVtWdg9;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A975C5C54AF;
	Wed,  4 Sep 2024 11:16:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D711FC4CEC9;
	Wed,  4 Sep 2024 11:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725448613;
	bh=SFWQxwybbR05p/JSlu2vfeQxyFVILJVtOStppUEw+xw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KRVtWdg9D4xhd/xX3u5CgZSN5Sm0NZWjAaFc8R5UIZOvKvw7KgThuvHywHeB3MdGE
	 kgA2xop/P1gXyrNDSdt9rkNvIKmYiSEpIzrKdCqUSl1RczLm9zXv5zRl4J+FummyAt
	 Xi8bvs1g+F47UlxXsHpphN5OeHmq6pxpp0RWjA95epvKzdjasyrp2JgHw8t8e3Nosp
	 VBomlo31XSnwYb0Cem8rEVFMAlnnrfrfSCfiFncF8c/X9VoNBp67c3eqHtvOrCoNxj
	 q2KL+vVp0YtBLxLoISr+raawo46JGCCLhCqUxMAaeLNlbLagNf7BrjjDV86zzRJKmH
	 Fw24bheSYB6OQ==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
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
In-Reply-To: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
Message-Id: <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
Date: Wed, 04 Sep 2024 12:16:48 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-99b12
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 76DB142526
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
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
Message-ID-Hash: ZOM6FOS6HVJU76XGKJLEQYJUE4KSFJF2
X-Message-ID-Hash: ZOM6FOS6HVJU76XGKJLEQYJUE4KSFJF2
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZOM6FOS6HVJU76XGKJLEQYJUE4KSFJF2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 22 Jul 2024 08:53:29 +0200, Alexandre Mergnat wrote:
> This serie aim to add the following audio support for the Genio 350-evk:
> - Playback
>   - 2ch Headset Jack (Earphone)
>   - 1ch Line-out Jack (Speaker)
>   - 8ch HDMI Tx
> - Capture
>   - 1ch DMIC (On-board Digital Microphone)
>   - 1ch AMIC (On-board Analogic Microphone)
>   - 1ch Headset Jack (External Analogic Microphone)
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[01/16] ASoC: dt-bindings: mediatek,mt8365-afe: Add audio afe document
        commit: ceb3ca2876243e3ea02f78b3d488b1f2d734de49
[02/16] ASoC: dt-bindings: mediatek,mt8365-mt6357: Add audio sound card document
        commit: 76d80dcdd55f70b28930edb97b96ee375e1cce5a
[03/16] dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
        commit: 761cab667898d86c04867948f1b7aec1090be796
[04/16] ASoC: mediatek: mt8365: Add common header
        commit: 38c7c9ddc74033406461d64e541bbc8268e77f73
[05/16] ASoC: mediatek: mt8365: Add audio clock control support
        commit: ef307b40b7f0042d54f020bccb3e728ced292282
[06/16] ASoC: mediatek: mt8365: Add I2S DAI support
        commit: 402bbb13a195caa83b3279ebecdabfb11ddee084
[07/16] ASoC: mediatek: mt8365: Add ADDA DAI support
        commit: 7c58c88e524180e8439acdfc44872325e7f6d33d
[08/16] ASoC: mediatek: mt8365: Add DMIC DAI support
        commit: 1c50ec75ce6c0c6b5736499393e522f73e19d0cf
[09/16] ASoC: mediatek: mt8365: Add PCM DAI support
        commit: 5097c0c8634d703e3c59cfb89831b7db9dc46339
[10/16] ASoc: mediatek: mt8365: Add a specific soundcard for EVK
        commit: 1bf6dbd75f7603dd026660bebf324f812200dc1b
[11/16] ASoC: mediatek: mt8365: Add the AFE driver support
        commit: e1991d102bc2abb32331c462f8f3e77059c69578
[12/16] ASoC: codecs: add MT6357 support
        (no commit info)
[13/16] ASoC: mediatek: Add MT8365 support
        (no commit info)

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
