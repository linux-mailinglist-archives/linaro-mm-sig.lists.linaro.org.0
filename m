Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC189D8EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 14:11:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB7953F466
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 12:11:06 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 4EB7A43C39
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 12:10:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Lr6otbaZ;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CEBDE616E0;
	Tue,  9 Apr 2024 12:10:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ACE4C43399;
	Tue,  9 Apr 2024 12:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712664648;
	bh=qPcpjQQA+x/Lp3zoDAguMcAnH3yp4AUeYMdHe1M4OcE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=Lr6otbaZHkCwc8rTE3hO5aEBmzcZW1GmC9RB07B4BUlkpRRo/Dj2uW7ymS7cIqQtf
	 TI2U0yDOEl9WMMGHLaetqQHVpaud3bzGlHx/8A3G2rWc1KZvLSMiSxIrR2NQODkaNx
	 S3F/X6kQBtaW8yaX0qCwVBdU791lVnJAxFWyXEvnjr8FcFPkrdf6HjM6YoWDjtL1sA
	 /JSfcsu/7hCuCFyx4sBOlIDjyxfSf8VJqnSUS3MRT6HWxVpvdE9IcXtO1vs0ACEucf
	 io9RlHyjH0Z/JkbCJmtALKfb5HFty6qkFWsqmjkNQmx0Vd9rkRpc5aK3MNjNdTsR3u
	 Q7nZ6uDer/jzA==
Date: Tue, 09 Apr 2024 07:10:47 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240226-audio-i350-v2-4-3043d483de0d@baylibre.com>
References: <20240226-audio-i350-v2-0-3043d483de0d@baylibre.com>
 <20240226-audio-i350-v2-4-3043d483de0d@baylibre.com>
Message-Id: <171266464354.692403.15935267584546388532.robh@kernel.org>
X-Rspamd-Queue-Id: 4EB7A43C39
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,mediatek.com,collabora.com,lists.freedesktop.org,vger.kernel.org,arm.com,perex.cz,amd.com,suse.com,lists.infradead.org,lists.linaro.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZBNGOW3ETUZQGCYLBRZR7KIQZZCNCR4N
X-Message-ID-Hash: ZBNGOW3ETUZQGCYLBRZR7KIQZZCNCR4N
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Flora Fu <flora.fu@mediatek.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, linux-media@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Takashi Iwai <tiwai@suse.com>, Conor Dooley <conor+dt@kernel.org>, linux-mediatek@lists.infradead.org, Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>, linaro-mm-sig@lists.linaro.org, Matthias Brugger <matthias.bgg@gmail.com>, linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/18] ASoC: dt-bindings: mt6357: Add audio codec document
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBNGOW3ETUZQGCYLBRZR7KIQZZCNCR4N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Tue, 09 Apr 2024 12:13:25 +0200, Alexandre Mergnat wrote:
> Add MT8365 audio codec bindings to set required
> and optional voltage properties between the codec and the board.
> The properties are:
> - phandle of the requiered power supply.
> - Setup of microphone bias voltage.
> - Setup of the speaker pin pull-down.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  .../devicetree/bindings/sound/mt6357.yaml          | 54 ++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/mt6357.yaml: properties:vaud28-supply: '$ref' is not one of ['description', 'deprecated']
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240226-audio-i350-v2-4-3043d483de0d@baylibre.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
