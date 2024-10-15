Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A7E99EE90
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 16:01:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8796F440FC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 14:01:37 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id F02C5440FC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 14:01:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=V9Tie2A9;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 964ABA43177;
	Tue, 15 Oct 2024 14:01:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58FACC4CEC6;
	Tue, 15 Oct 2024 14:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729000872;
	bh=Hpil3qyQcxL9gsLtmpPaNlPIYSn4ilHSo8PamVfpP08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V9Tie2A9vA28PhwfDTXNKAcPnNGLrT3HXxaEyaWy2os+EaFKTTanPL5kiJ4APiYGR
	 tWaHsYJdBf8ACz5Vk+gnHz161+dD+aTlYk6EZeUslnvgUk5CZHWZIMn9memCtOKOPL
	 DksBb6zZw00dbCJMqFIEOVbY18wxPYUn/oCxY6DCar20yBEVGqx2MXIV7J8LyIkQdY
	 sIGxramwOtYWD195TWOJsrQ/80wkInxupx3sBvWTm1g7y1PwUT+Tq8NZ9ocUQ2HL+e
	 qCywX612tyM1dK2+7Q+UFVaQXDLWI/F2oa1PPJUX6ql+9v+uEODDOAYA4V82Hlwmou
	 IBBdcDHmtv2GA==
Date: Tue, 15 Oct 2024 09:01:08 -0500
From: Rob Herring <robh@kernel.org>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
Message-ID: <20241015140108.GA620512-robh@kernel.org>
References: <20241015120750.21217-1-quic_jseerapu@quicinc.com>
 <20241015120750.21217-2-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241015120750.21217-2-quic_jseerapu@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F02C5440FC
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[nyc.source.kernel.org:helo,nyc.source.kernel.org:rdns,quicinc.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: LONXCES2O2LNV6PI6IRGY6FWGF7RTYAV
X-Message-ID-Hash: LONXCES2O2LNV6PI6IRGY6FWGF7RTYAV
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 1/5] dt-bindings: dmaengine: qcom: gpi: Add additional arg to dma-cell property
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LONXCES2O2LNV6PI6IRGY6FWGF7RTYAV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Oct 15, 2024 at 05:37:46PM +0530, Jyothi Kumar Seerapu wrote:
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

No such property 'dma-cell'

> With this, adjust the channel TRE size via the device tree.
> The default size is 64, but clients can modify this value based on
> their specific requirements.
> 
> Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> ---
>  Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> index 4df4e61895d2..002495921643 100644
> --- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> +++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> @@ -54,14 +54,16 @@ properties:
>      maxItems: 13
>  
>    "#dma-cells":
> -    const: 3
> +    minItems: 3
> +    maxItems: 4
>      description: >
>        DMA clients must use the format described in dma.txt, giving a phandle
> -      to the DMA controller plus the following 3 integer cells:
> +      to the DMA controller plus the following 4 integer cells:
>        - channel: if set to 0xffffffff, any available channel will be allocated
>          for the client. Otherwise, the exact channel specified will be used.
>        - seid: serial id of the client as defined in the SoC documentation.
>        - client: type of the client as defined in dt-bindings/dma/qcom-gpi.h
> +      - channel-tre-size: size of the channel TRE (transfer ring element)
>  
>    iommus:
>      maxItems: 1
> -- 
> 2.17.1
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
