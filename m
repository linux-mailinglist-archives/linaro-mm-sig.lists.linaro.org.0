Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7A089D8E5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 14:10:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 151FE3F466
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 12:10:50 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id E49CE3F466
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 12:10:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=eF1TAvKh;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 676C5616D4;
	Tue,  9 Apr 2024 12:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BED3EC433C7;
	Tue,  9 Apr 2024 12:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712664646;
	bh=Kqt0iwwTPC3AOYTlEZgew0NErAZ3Ys/2OHVWI4y3Xd4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=eF1TAvKhRb0ECUTHSgTfdE50JOT/NZ1JcNC1PvF4Q/IQymUhXQ0OKu7tcU6E2gt1Y
	 JBfBEJEiL7kboOpY9vf5D5sQyRNv7jVstOpNjWGTKb74Fso+biJHlXXyQxcD8DniMX
	 3sMQRksrPADdIEwwz1rRpULXWQCBv4tdIQQZYvmGTFVchOQRU4lvxn6U99BgjSBtbr
	 //vjZWzhQcwOwONnIzsnnTm2lZnwb/OlSXc4z9NsZCQAr2wMelgrNtbuN6S5van+GB
	 MZg7hF5JXU7tJreJXYtnvzCOeAympCSPPG7cBsJSor/mL82KsJPKkvTCCqUsVhkWtC
	 IlagK8/TsStug==
Date: Tue, 09 Apr 2024 07:10:44 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240226-audio-i350-v2-3-3043d483de0d@baylibre.com>
References: <20240226-audio-i350-v2-0-3043d483de0d@baylibre.com>
 <20240226-audio-i350-v2-3-3043d483de0d@baylibre.com>
Message-Id: <171266464251.692374.12025555863069807976.robh@kernel.org>
X-Rspamd-Queue-Id: E49CE3F466
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
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
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kernel.org,arm.com,linaro.org,amd.com,mediatek.com,suse.com,lists.infradead.org,gmail.com,collabora.com,perex.cz];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: A3S52WEHOLWMPQWD2WSFUY6S6L5O7GMO
X-Message-ID-Hash: A3S52WEHOLWMPQWD2WSFUY6S6L5O7GMO
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-sound@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-media@vger.kernel.org, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Flora Fu <flora.fu@mediatek.com>, Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>, Takashi Iwai <tiwai@suse.com>, Will Deacon <will@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-mediatek@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, Jaroslav Kysela <perex@perex.cz>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/18] dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A3S52WEHOLWMPQWD2WSFUY6S6L5O7GMO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Tue, 09 Apr 2024 12:13:24 +0200, Alexandre Mergnat wrote:
> Add the audio codec sub-device. This sub-device is used to set required
> and optional voltage properties between the codec and the board.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml:
Error in referenced schema matching $id: http://devicetree.org/schemas/sound/mt6357.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240226-audio-i350-v2-3-3043d483de0d@baylibre.com

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
