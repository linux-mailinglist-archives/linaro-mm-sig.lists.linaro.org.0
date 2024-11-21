Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 380639D5536
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Nov 2024 23:10:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E63B144262
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Nov 2024 22:10:47 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by lists.linaro.org (Postfix) with ESMTPS id 379A940F7F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Nov 2024 22:10:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=xJOhCFZA;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.172 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2f7657f9f62so15520361fa.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Nov 2024 14:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732227040; x=1732831840; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gFDuP7IjDwDMv6NR+DnprUqGpxBiP59fQ/sq6qPsJrg=;
        b=xJOhCFZA5HP0ogoXZwwd5huKThberZ6v7o1YeIwhfu5UU8rFowSZb3/UfjAVjt+y0H
         0m009syIGNEuuO0/hH8uKwNeecoK3jcZJYfh1hd6c54RYH9boEY0QxtCzNy56fMfjFMO
         XDHgW+oRGG4EAzJK6ofc9ciXDNOOJtQDefoCF+Lt5mzBgVTD9rdAzZVDdvdYioG362hI
         AeVt3SDOi3KIv+Jpok5Qu8O5xqKQfGBvGaqpkVMC3TDaujEBU2SwbJyQBzlpiB/RRIxe
         a0ufsjsWtxWmeNBTPMWhAXGPmiXiMqeVObC1tMeTVUUCeeRXhNBziuZ9CVLz9fqL5YjD
         kHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732227040; x=1732831840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gFDuP7IjDwDMv6NR+DnprUqGpxBiP59fQ/sq6qPsJrg=;
        b=R/wETDNMR4QJVEauWTN86CKBp4kV51DYcxbHKYGSBPtcQ+isssoR7emFeGVYom6q/I
         S5MIONaDXUIeAdEUylY8JwY+Z6gf82ukFh/MQKFVns9pNjk3g6qU8GFU+ihv6gIAKi37
         6xQ+3WicvKEGvgWn2U/3TE5z5gYWFBPHysQXAvsgI6Sk1bl8fPgpXuXzIgDBKAQdXj8M
         R6Gulme8tkrgF3H7Zp0vfcBnq19cOLzKfd51to9UU2hO5fDi4zOIrU+7GI2DJb6V2bBp
         9PqeN313nJqlUs8ionkHVLXEc85BmhUktqbhGuT9AtsT23w8RYaBpKMtq8KSFFSMcc1C
         gz2w==
X-Forwarded-Encrypted: i=1; AJvYcCXeV7dUDqbQlJ/QSDI5/7CGhi8xtgqC1Ol5kYC+CoEHs+OAZ/RghtCuM+cTIWAJasMDLIbWQas91XSmJMXd@lists.linaro.org
X-Gm-Message-State: AOJu0YzWdBlv3bb+Hl0OR8i9vmbN0l37jp0ZIafxY9iDUO3mBbNRYAC8
	cuWYltv5kAWYX9vMtb50Eh6k6tVi8Dt0xXz+DpyIlmpEWH/DCPPKacCzUIBtpHIaJA==
X-Gm-Gg: ASbGncufDPFvQuJiDWQaUzuQsilPGKX62rguEnDwr/KL1ANBd2m02pwx4CaWNCxjde2
	gxlnBx8BCOcQLkJe2MCZVBPH43zhq3uL1zFkE9tWsXbD6sJQ+997HYV8TtPqT5sFbGilDwV8H5I
	9AIOPuPXcOaDSzl3MoLQO0AWd2mC1zTWob5eGAwRB62ep1Dfj9/uQ46/Kmy/2pYGIYwcpV/2m+f
	xk5W4exHtJMzuNCe767e5iLiczzpyad7tOxJ8E1qXTiAxAexMwMi3jzpkBKOjBWXlkJuVinfU9V
	D22k6h3NqQSGkV2yTvCNnTu86WwaHA==
X-Google-Smtp-Source: AGHT+IF5UEvVH8EwlVFvDbA8yqDXP2EnIvz85XTHp+jyVxMS03tfkpla0bwll8dc1ETCUfCWi+KKfg==
X-Received: by 2002:a05:651c:2208:b0:2f4:3de7:ac4c with SMTP id 38308e7fff4ca-2ffa70f0968mr1996351fa.8.1732227039935;
        Thu, 21 Nov 2024 14:10:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa538f100sm593151fa.103.2024.11.21.14.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 14:10:38 -0800 (PST)
Date: Fri, 22 Nov 2024 00:10:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
Message-ID: <zfkhbjm6wrmcocqcvluov3nbrpb2ozbo52c6nlwxro44gublcw@5645ksz4cfm2>
References: <20241121130134.29408-1-quic_jseerapu@quicinc.com>
 <20241121130134.29408-4-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241121130134.29408-4-quic_jseerapu@quicinc.com>
X-Rspamd-Queue-Id: 379A940F7F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.208.172:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.172:from];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[quicinc.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VUG4QH7T33X2PT2FEUXCEOUNLQ4SLMYF
X-Message-ID-Hash: VUG4QH7T33X2PT2FEUXCEOUNLQ4SLMYF
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/3] i2c: i2c-qcom-geni: Update compile dependenices for I2C GENI driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VUG4QH7T33X2PT2FEUXCEOUNLQ4SLMYF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 21, 2024 at 06:31:34PM +0530, Jyothi Kumar Seerapu wrote:
> I2C functionality has dependencies on the GPI driver.
> Ensure that the GPI driver is enabled when using the I2C
> driver functionality.
> Therefore, update the I2C GENI driver to depend on the GPI driver.
> 
> Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> ---
> v2 -> v3:
>    - Moved this change to patch3.
>    - Updated commit description.
> 
> v1 -> v2:
>    -  This patch is added in v2 to address the kernel test robot
>       reported compilation error.
>       ERROR: modpost: "gpi_multi_desc_process" [drivers/i2c/busses/i2c-qcom-geni.ko] undefined!
> 
>  drivers/i2c/busses/Kconfig | 1 +
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

So... without this change the previous patch is broken, which is a
no-go. And anyway, adding dependency onto a particular DMA driver is a
bad idea. Please make use of the DMA API instead.

>  	help
>  	  This driver supports GENI serial engine based I2C controller in
>  	  master mode on the Qualcomm Technologies Inc.'s SoCs. If you say
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
