Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9109F9A0CD2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Oct 2024 16:36:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7754E44261
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Oct 2024 14:36:15 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 4634C3F33B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Oct 2024 14:35:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="doT98/NT";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=andersson@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0C91EA43E0C;
	Wed, 16 Oct 2024 14:35:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50854C4CEC5;
	Wed, 16 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729089354;
	bh=NXK/fPhGl4mqtfjEA+PZpwSNsIwN2iaBtslPz058mG4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=doT98/NT4FM40wYqR+SAm4CK3i00eE0ELNQ2AAFfLrDWK15sN8WmePaZVqR1S8G+j
	 f/wMm2JKvoAX1cNiI0SVJyVRDEw9N7C4ZyZR3sXHYxmFbcZZoZZ4ggESnvaMDP3m+n
	 aZs3c/6MfoMmv7cY/AhJ6GBa9B7VFynlW2FBe5HdJU2Y509EyQ7TFYzSX1BBiyVDMd
	 yIPUARKazo11AoVwVfGg5nfeOtRqbU/UM+3t9IoqUcg9J1ywBE7XTXz+/bA5f61Koj
	 psv6t/QnwXD4pMnPISVPDLyxbHEIaAVEYqLekUPdyyTejmdHulsiUBlHGGI5tskbEs
	 ddma1Se1F5KQg==
Date: Wed, 16 Oct 2024 09:35:59 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <7e7ksit5ptjrcnct66v75mbxuabnzzloungockdal2dl2y6nn5@ge4mrsjmd746>
References: <20241015120750.21217-1-quic_jseerapu@quicinc.com>
 <20241015120750.21217-3-quic_jseerapu@quicinc.com>
 <78a1c5c8-53c8-4144-b311-c34b155ca27c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78a1c5c8-53c8-4144-b311-c34b155ca27c@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4634C3F33B
X-Spamd-Bar: -
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: KNI2LLF2PLLVVR5V5P5VCJHBT2J6SYXF
X-Message-ID-Hash: KNI2LLF2PLLVVR5V5P5VCJHBT2J6SYXF
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 2/5] arm64: dts: qcom: Add support for configuring channel TRE size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNI2LLF2PLLVVR5V5P5VCJHBT2J6SYXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Oct 15, 2024 at 03:33:00PM GMT, Krzysztof Kozlowski wrote:
> On 15/10/2024 14:07, Jyothi Kumar Seerapu wrote:
> > When high performance with multiple i2c messages in a single transfer
> > is required, employ Block Event Interrupt (BEI) to trigger interrupts
> > after specific messages transfer and the last message transfer,
> > thereby reducing interrupts.
> > For each i2c message transfer, a series of Transfer Request Elements(TREs)
> > must be programmed, including config tre for frequency configuration,
> > go tre for holding i2c address and dma tre for holding dma buffer address,
> > length as per the hardware programming guide. For transfer using BEI,
> > multiple I2C messages may necessitate the preparation of config, go,
> > and tx DMA TREs. However, a channel TRE size of 64 is often insufficient,
> > potentially leading to failures due to inadequate memory space.
> > 
> > Adjust the channel TRE size through the device tree.
> > The default size is 64, but clients can modify this value based on
> > their heigher channel TRE size requirements.
> > 
> > Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 132 +++++++++++++--------------
> >  1 file changed, 66 insertions(+), 66 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index 3d8410683402..c7c0e15ff9d3 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -1064,7 +1064,7 @@
> >  		};
> >  
> >  		gpi_dma0: dma-controller@900000 {
> > -			#dma-cells = <3>;
> > +			#dma-cells = <4>;
> >  			compatible = "qcom,sc7280-gpi-dma", "qcom,sm6350-gpi-dma";
> >  			reg = <0 0x00900000 0 0x60000>;
> >  			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
> > @@ -1114,8 +1114,8 @@
> >  							"qup-memory";
> >  				power-domains = <&rpmhpd SC7280_CX>;
> >  				required-opps = <&rpmhpd_opp_low_svs>;
> > -				dmas = <&gpi_dma0 0 0 QCOM_GPI_I2C>,
> > -				       <&gpi_dma0 1 0 QCOM_GPI_I2C>;
> > +				dmas = <&gpi_dma0 0 0 QCOM_GPI_I2C 64>,
> > +				       <&gpi_dma0 1 0 QCOM_GPI_I2C 64>;
> 
> So everywhere is 64, thus this is fixed. Deduce it from the compatible
> 

If I understand correctly, it's a software tunable property, used to
balance how many TRE elements that should be preallocated.

If so, it would not be a property of the hardware/compatible, but rather
a result of profiling and a balance between memory "waste" and
performance.

Regards,
Bjorn

> Best regards,
> Krzysztof
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
