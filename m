Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F0E403EB0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 19:54:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2764663413
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 17:54:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0F38763524; Wed,  8 Sep 2021 17:54:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E580460B53;
	Wed,  8 Sep 2021 17:54:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 09784606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:54:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0493B60B53; Wed,  8 Sep 2021 17:54:22 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by lists.linaro.org (Postfix) with ESMTPS id E8E44606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:54:19 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id g8so4041134edt.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 10:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=w24hLsRl7XZ5LbDSKhuzZ/Cfz4LFXM+tWc1TnSEUUss=;
 b=gewWGShr7Xr2Qy09YNJ3ZB3EE97D9zs6XnByfQ/9byau67LOFQ7/Pl37j7Ld6KiYMV
 CZuNmSoK1BnjvwIvkJxM2tTz+SYOqSAeW1Vx55yJcJ8tscSAuulR2d/2GtTTQlIVt9aq
 Fk4sBJSYv1cp2LvywuuLKQa5IOJdXteV+Sv3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=w24hLsRl7XZ5LbDSKhuzZ/Cfz4LFXM+tWc1TnSEUUss=;
 b=zaQnH1MmMlyzvslsFZvnKeBWM1Jxlzpf2IzloU0XtOrpgwnvfMv1qt56AdGEtl1LtT
 AdXC62mo5vD4np4mGHRGI8kHC5LQGcjdx07CK6AMZjhInEatkmOB37nrRTo01c3CrV+e
 z3OzZLNE0fOsyxpgqf/o7kUKfft70nhud7K5MTmsyxN4KElxGT/9iH94uaKvTt+YnRjJ
 EWesAbO3KDi169fJnJeP28LRTk1yaPZ9Bq1pTO6i3VDWxnPsJO+83DmMeuI5mWL5DZ0K
 neQLbADMB94PjFHBy/K3zWUVwUWUNtpFeAI5gYi288xRkTzmvDXY34vSHYKy+i4V19ZD
 P7/w==
X-Gm-Message-State: AOAM533zdf+XYdZ/Jznz9wpeONGZp0wM7lQqaMwG8di8lstoJNjoTkEB
 2O0KQU05Xju774quIMxxQzM8Bw==
X-Google-Smtp-Source: ABdhPJxBIQkBjPF3Gt5WEu386lz3cQM0dwlAunhiFpiwa6VJYwYAF1IbUqPzkfujW1BiIhDKl7lybg==
X-Received: by 2002:a05:6402:1248:: with SMTP id
 l8mr4993687edw.94.1631123658998; 
 Wed, 08 Sep 2021 10:54:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p8sm1365586ejo.2.2021.09.08.10.54.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 10:54:18 -0700 (PDT)
Date: Wed, 8 Sep 2021 19:54:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YTj4yPk1YuFk3oeL@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-8-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903184806.1680887-8-robdclark@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 7/9] dma-buf/fence-chain: Add fence
 deadline support
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Pekka Paalanen <ppaalanen@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 03, 2021 at 11:47:58AM -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/dma-buf/dma-fence-chain.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
> index 1b4cb3e5cec9..736a9ad3ea6d 100644
> --- a/drivers/dma-buf/dma-fence-chain.c
> +++ b/drivers/dma-buf/dma-fence-chain.c
> @@ -208,6 +208,18 @@ static void dma_fence_chain_release(struct dma_fence *fence)
>  	dma_fence_free(fence);
>  }
>  
> +
> +static void dma_fence_chain_set_deadline(struct dma_fence *fence,
> +					 ktime_t deadline)
> +{
> +	dma_fence_chain_for_each(fence, fence) {
> +		struct dma_fence_chain *chain = to_dma_fence_chain(fence);
> +		struct dma_fence *f = chain ? chain->fence : fence;

Doesn't this just end up calling set_deadline on a chain, potenetially
resulting in recursion? Also I don't think this should ever happen, why
did you add that?
-Daniel

> +
> +		dma_fence_set_deadline(f, deadline);
> +	}
> +}
> +
>  const struct dma_fence_ops dma_fence_chain_ops = {
>  	.use_64bit_seqno = true,
>  	.get_driver_name = dma_fence_chain_get_driver_name,
> @@ -215,6 +227,7 @@ const struct dma_fence_ops dma_fence_chain_ops = {
>  	.enable_signaling = dma_fence_chain_enable_signaling,
>  	.signaled = dma_fence_chain_signaled,
>  	.release = dma_fence_chain_release,
> +	.set_deadline = dma_fence_chain_set_deadline,
>  };
>  EXPORT_SYMBOL(dma_fence_chain_ops);
>  
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
