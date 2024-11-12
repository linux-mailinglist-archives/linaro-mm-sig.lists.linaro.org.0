Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D551F9C4D97
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Nov 2024 05:09:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BD3544157
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Nov 2024 04:09:39 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id DDCEE43F4A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Nov 2024 04:09:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nG+2Mm1O;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=andersson@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5C767A408AA;
	Tue, 12 Nov 2024 04:07:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40975C4CECD;
	Tue, 12 Nov 2024 04:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731384572;
	bh=MhV+41Cp3i9m4j99lu/WCXY/MLivraTlLiNGgddAmok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nG+2Mm1Ok7247hKiGkUlNBLIvm7L0Y8WWZKof6UD2P7ncgXCeLiNU0B5X91JqD1oN
	 ZMybVpVEZ8Ep13s9W0AMvilXCWh+EoImzoqvdETjREQcsXBWusjwzW7RmTgx8tcLhz
	 PrLncDjHZCPRvRkWDa4QE4W2l9IjyNdsRL8o/uCpruMYQks7xMATRckKFntbuYiB4D
	 H95WCHX0X9FQax1l/9v+jPZNaVmDxRWXR9pBgZKS64KIptKMEwO6djWCTfGzNxd4Dq
	 yyexiS175fDpNRmOwDIT+lQ3VCcaGEBOPgcXuz/a3/UzAbc64oNwwxTs8yI9Mhsedx
	 yrRvan3rXLyQw==
Date: Mon, 11 Nov 2024 22:09:29 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
Message-ID: <3fkfjeif3e4z3utcim5dou2obwjoagtr3z2bnwkywa2xlm4jrb@jon6mwtp4ahv>
References: <20241111140244.13474-1-quic_jseerapu@quicinc.com>
 <20241111140244.13474-3-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241111140244.13474-3-quic_jseerapu@quicinc.com>
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DDCEE43F4A
X-Spamd-Bar: ----
Message-ID-Hash: SBDHAX7IFMC5LWOHH4NHTUWOYHDZEHP2
X-Message-ID-Hash: SBDHAX7IFMC5LWOHH4NHTUWOYHDZEHP2
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 RESEND 2/3] i2c: qcom_geni: Update compile dependenices for qcom geni
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SBDHAX7IFMC5LWOHH4NHTUWOYHDZEHP2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Nov 11, 2024 at 07:32:43PM +0530, Jyothi Kumar Seerapu wrote:
> I2C_QCOM_GENI is having compile dependencies on QCOM_GPI_DMA and
> so update I2C_QCOM_GENI to depends on QCOM_GPI_DMA.
> 

Given that this is a separate patch, your wording can only be
interpreted as this being an existing problem.

> Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> ---
> 
> v1 -> v2: 
> 	This patch is added in v2 to address the kernel test robot
> 	reported compilation error.
> 	ERROR: modpost: "gpi_multi_desc_process" [drivers/i2c/busses/i2c-qcom-geni.ko] undefined! 

But as far as I can tell you introduce this problem in patch 3. If so
this addition should be part of patch 3.



Also, you have different subject prefix for patch 2 and 3, yet they
relate to the same driver. Not pretty.

Regards,
Bjorn

> 
> drivers/i2c/busses/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index 0aa948014008..87634a682855 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -1049,6 +1049,7 @@ config I2C_QCOM_GENI
>  	tristate "Qualcomm Technologies Inc.'s GENI based I2C controller"
>  	depends on ARCH_QCOM || COMPILE_TEST
>  	depends on QCOM_GENI_SE
> +	depends on QCOM_GPI_DMA
>  	help
>  	  This driver supports GENI serial engine based I2C controller in
>  	  master mode on the Qualcomm Technologies Inc.'s SoCs. If you say
> -- 
> 2.17.1
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
