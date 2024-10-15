Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC4F99ED4E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 15:26:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B7C844B26
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 13:26:40 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id CB56E3F1AA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 13:26:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BEe1tpbR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E08A85C5D08;
	Tue, 15 Oct 2024 13:26:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BBC9C4CECF;
	Tue, 15 Oct 2024 13:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728998778;
	bh=UpHokupAtjlDauqa70fE2fQJZrcfyQZ3EvXkwOwsheY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=BEe1tpbRQRTtSRuN4OXaCHRF+kwB/JEnlK1e/0lPAhiN0YN4QMigvsa2wPcYIuu0y
	 5Z4fF/34tOfOcT+q8jRDPt8zcbw+sZmcoSmA3bn+SpVELbN1S/HbIJ4BRENhzmJUQE
	 ZRUjsqs8i0l3XL1Pr9TJG0ib8x8fQOJpzC9Nj9UX+slS1Yjq6MYT+sUBmac5f2A37t
	 CZy4AMcw1F2wea9wIJNRv9tFdITShoS5V+0AodawCMRFnfiT5MuDecr2D+r2SwJ39L
	 kAUce5JOBmW7mvu80X7v3iUmv1kXciem1B3RyORsAjONhurY1RBBtDKBzQ62oUSSmB
	 3DuPKnnx8D0gw==
Date: Tue, 15 Oct 2024 08:26:14 -0500
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
In-Reply-To: <20241015120750.21217-2-quic_jseerapu@quicinc.com>
References: <20241015120750.21217-1-quic_jseerapu@quicinc.com>
 <20241015120750.21217-2-quic_jseerapu@quicinc.com>
Message-Id: <172899877472.523926.14548368912530185631.robh@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CB56E3F1AA
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[quicinc.com:email,devicetree.org:url,ozlabs.org:url];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: YCBD2GE5RHGUUZQJR7PHXPCKBA6UBFXM
X-Message-ID-Hash: YCBD2GE5RHGUUZQJR7PHXPCKBA6UBFXM
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, linux-i2c@vger.kernel.org, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, quic_vtanuku@quicinc.com, Bjorn Andersson <andersson@kernel.org>, dmaengine@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, quic_msavaliy@quicinc.com, devicetree@vger.kernel.org, cros-qcom-dts-watchers@chromium.org, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 1/5] dt-bindings: dmaengine: qcom: gpi: Add additional arg to dma-cell property
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YCBD2GE5RHGUUZQJR7PHXPCKBA6UBFXM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit


On Tue, 15 Oct 2024 17:37:46 +0530, Jyothi Kumar Seerapu wrote:
> When high performance with multiple i2c messages in a single transfer
> is required, employ Block Event Interrupt (BEI) to trigger interrupts
> after specific messages transfer and the last message transfer,
> thereby reducing interrupts.
> 
> For each i2c message transfer, a series of Transfer Request Elements(TREs)
> must be programmed, including config tre for frequency configuration,
> go tre for holding i2c address and dma tre for holding dma buffer address,
> length as per the hardware programming guide. For transfer using BEI,
> multiple I2C messages may necessitate the preparation of config, go,
> and tx DMA TREs. However, a channel TRE size of 64 is often insufficient,
> potentially leading to failures due to inadequate memory space.
> 
> Add additional argument to dma-cell property for channel TRE size.
> With this, adjust the channel TRE size via the device tree.
> The default size is 64, but clients can modify this value based on
> their specific requirements.
> 
> Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> ---
>  Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/dma/qcom,gpi.yaml: properties:#dma-cells: 'minItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/dma/qcom,gpi.yaml: properties:#dma-cells: 'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241015120750.21217-2-quic_jseerapu@quicinc.com

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
