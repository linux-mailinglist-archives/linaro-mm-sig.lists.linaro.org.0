Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FFAAAEA5B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 20:54:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B87544AC7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 18:54:22 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 681F541014
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 18:54:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=a5YfppQs;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (static-176-133-119-130.ftth.abo.bbox.fr [176.133.119.130])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BDACE6D5;
	Wed,  7 May 2025 20:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1746644035;
	bh=4HKpOBJtT9Knd8yHFCVLaU8ixVr4lTJ1SeumRrcVqw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a5YfppQsqevzz/DMRtGjjdbEW9ziRNKHDPWqIm3PIuPGPyf+Pd0EukV43zV25uwpE
	 FvxM4Ef0dESs1lmsMsGGjU/f4IPbYwTk2C/wvi62o6wzPKBh+JzzmxnRsBLJzQsOnD
	 gg5DkNh7IEPpZ/QZ9m9LaudG6hj0z8rmgmJhbWtc=
Date: Wed, 7 May 2025 20:53:58 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20250507185358.GB28125@pendragon.ideasonboard.com>
References: <20250507160913.2084079-1-m.szyprowski@samsung.com>
 <CGME20250507160923eucas1p1a344e74759410b49143e2be42ef43ded@eucas1p1.samsung.com>
 <20250507160913.2084079-4-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507160913.2084079-4-m.szyprowski@samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 681F541014
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	DMARC_NA(0.00)[ideasonboard.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,lists.linux.dev,linux.intel.com,kernel.org,xs4all.nl,arm.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[samsung.com:email,ideasonboard.com:email,ideasonboard.com:dkim,perceval.ideasonboard.com:helo,perceval.ideasonboard.com:rdns,pendragon.ideasonboard.com:mid];
	DNSWL_BLOCKED(0.00)[176.133.119.130:received,213.167.242.64:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BWV2J4Q55EDINU3ALNRPYXXT4UJXW2JB
X-Message-ID-Hash: BWV2J4Q55EDINU3ALNRPYXXT4UJXW2JB
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Sakari Ailus <sakari.ailus@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/3] media: omap3isp: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWV2J4Q55EDINU3ALNRPYXXT4UJXW2JB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Marek,

Thank you for the patch.

On Wed, May 07, 2025 at 06:09:13PM +0200, Marek Szyprowski wrote:
> Use common wrappers operating directly on the struct sg_table objects to
> fix incorrect use of scatterlists sync calls. dma_sync_sg_for_*()
> functions have to be called with the number of elements originally passed
> to dma_map_sg_*() function, not the one returned in sgtable's nents.
> 
> Fixes: d33186d0be18 ("[media] omap3isp: ccdc: Use the DMA API for LSC")
> Fixes: 0e24e90f2ca7 ("[media] omap3isp: stat: Use the DMA API")
> CC: stable@vger.kernel.org
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/ti/omap3isp/ispccdc.c | 8 ++++----
>  drivers/media/platform/ti/omap3isp/ispstat.c | 6 ++----
>  2 files changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/ti/omap3isp/ispccdc.c b/drivers/media/platform/ti/omap3isp/ispccdc.c
> index dd375c4e180d..7d0c723dcd11 100644
> --- a/drivers/media/platform/ti/omap3isp/ispccdc.c
> +++ b/drivers/media/platform/ti/omap3isp/ispccdc.c
> @@ -446,8 +446,8 @@ static int ccdc_lsc_config(struct isp_ccdc_device *ccdc,
>  		if (ret < 0)
>  			goto done;
>  
> -		dma_sync_sg_for_cpu(isp->dev, req->table.sgt.sgl,
> -				    req->table.sgt.nents, DMA_TO_DEVICE);
> +		dma_sync_sgtable_for_cpu(isp->dev, &req->table.sgt,
> +					 DMA_TO_DEVICE);
>  
>  		if (copy_from_user(req->table.addr, config->lsc,
>  				   req->config.size)) {
> @@ -455,8 +455,8 @@ static int ccdc_lsc_config(struct isp_ccdc_device *ccdc,
>  			goto done;
>  		}
>  
> -		dma_sync_sg_for_device(isp->dev, req->table.sgt.sgl,
> -				       req->table.sgt.nents, DMA_TO_DEVICE);
> +		dma_sync_sgtable_for_device(isp->dev, &req->table.sgt,
> +					    DMA_TO_DEVICE);
>  	}
>  
>  	spin_lock_irqsave(&ccdc->lsc.req_lock, flags);
> diff --git a/drivers/media/platform/ti/omap3isp/ispstat.c b/drivers/media/platform/ti/omap3isp/ispstat.c
> index 359a846205b0..d3da68408ecb 100644
> --- a/drivers/media/platform/ti/omap3isp/ispstat.c
> +++ b/drivers/media/platform/ti/omap3isp/ispstat.c
> @@ -161,8 +161,7 @@ static void isp_stat_buf_sync_for_device(struct ispstat *stat,
>  	if (ISP_STAT_USES_DMAENGINE(stat))
>  		return;
>  
> -	dma_sync_sg_for_device(stat->isp->dev, buf->sgt.sgl,
> -			       buf->sgt.nents, DMA_FROM_DEVICE);
> +	dma_sync_sgtable_for_device(stat->isp->dev, &buf->sgt, DMA_FROM_DEVICE);
>  }
>  
>  static void isp_stat_buf_sync_for_cpu(struct ispstat *stat,
> @@ -171,8 +170,7 @@ static void isp_stat_buf_sync_for_cpu(struct ispstat *stat,
>  	if (ISP_STAT_USES_DMAENGINE(stat))
>  		return;
>  
> -	dma_sync_sg_for_cpu(stat->isp->dev, buf->sgt.sgl,
> -			    buf->sgt.nents, DMA_FROM_DEVICE);
> +	dma_sync_sgtable_for_cpu(stat->isp->dev, &buf->sgt, DMA_FROM_DEVICE);
>  }
>  
>  static void isp_stat_buf_clear(struct ispstat *stat)

-- 
Regards,

Laurent Pinchart
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
