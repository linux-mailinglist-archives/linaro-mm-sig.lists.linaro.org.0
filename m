Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DD270403EC4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 20:00:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02E3860E15
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 18:00:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EA9036102D; Wed,  8 Sep 2021 18:00:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA11F60E15;
	Wed,  8 Sep 2021 18:00:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 46A4D60AEC
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 18:00:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3E3A360B53; Wed,  8 Sep 2021 18:00:49 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by lists.linaro.org (Postfix) with ESMTPS id 1275D63542
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 18:00:46 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id i21so5912710ejd.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 11:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=FjMddd6JdOMGv2zR5AkGsbruNkJ2WJnwA4ML9l26Ntg=;
 b=h/thbqp2AXqJm3KuoLxS0MSVyghbMdZNZ/SPfJhS9SJxQyIJ5pOzbsxhd9UaZRnI+p
 CFEgz3jRmxulMN0CaBwFdvDuG5mUqyVt6fkEYzZu0uQdWzeVmGOHUWiKormP/Y7dzgE9
 IcdgIY4Sk8Ft31k9qe+0u+W8UuXN4aP8Upn1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=FjMddd6JdOMGv2zR5AkGsbruNkJ2WJnwA4ML9l26Ntg=;
 b=FuG7szDc78qAETvZLzlQG7hewdQ5/B3FKa+lwe2LWu69cIrFa14OUdEYfD6jc6UYss
 OTT1Uxv3AJswfnpdQq7JgSuyK6HewM+O2ZNemRm0N7YCuiKttv/3wBSOTnGhEPFJ+ohs
 eDkxgQTFOVTkBSQEqOveIK8SZo8RdaQFpTW4bIDgdlIvkGKA/yFjPo4BOPOSOVs1SIte
 /7Ngq9peqnNI29EsFYZ3qFg5DNQpVUSM/I/0Uq6acOWPcGR00kGNdTdAAsxqvFzwMRa3
 tWf2vSJMflcoMZJeq+t4UQHICrJTQPc07pEyArKdfTRg+gmUOWONelr6FGO7yIlw9J+v
 RwDg==
X-Gm-Message-State: AOAM530P5faBBnlZHHmIGnkruKjwfiJDFG/lQXl8lANPi/2kmvcxV8uS
 N34x1HrzvDqMRDS7E1gR40N6dQ==
X-Google-Smtp-Source: ABdhPJxP00rpn4vKC4uI/DzFIyL0W94TxWGPF415ddLUFQDIRK8wcdXlFBHgzxiBag6dfD3mpal/Dw==
X-Received: by 2002:a17:907:9617:: with SMTP id
 gb23mr1126172ejc.175.1631124045783; 
 Wed, 08 Sep 2021 11:00:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z8sm1411638ejd.94.2021.09.08.11.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 11:00:45 -0700 (PDT)
Date: Wed, 8 Sep 2021 20:00:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YTj6S1yVvBPAZ9RJ@phenom.ffwll.local>
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
 <20210903184806.1680887-7-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903184806.1680887-7-robdclark@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 6/9] dma-buf/fence-array: Add fence
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

On Fri, Sep 03, 2021 at 11:47:57AM -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/dma-buf/dma-fence-array.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
> index d3fbd950be94..8d194b09ee3d 100644
> --- a/drivers/dma-buf/dma-fence-array.c
> +++ b/drivers/dma-buf/dma-fence-array.c
> @@ -119,12 +119,23 @@ static void dma_fence_array_release(struct dma_fence *fence)
>  	dma_fence_free(fence);
>  }
>  
> +static void dma_fence_array_set_deadline(struct dma_fence *fence,
> +					 ktime_t deadline)
> +{
> +	struct dma_fence_array *array = to_dma_fence_array(fence);
> +	unsigned i;
> +
> +	for (i = 0; i < array->num_fences; ++i)
> +		dma_fence_set_deadline(array->fences[i], deadline);

Hm I wonder whether this can go wrong, and whether we need Christian's
massive fence iterator that I've seen flying around. If you nest these
things too much it could all go wrong I think. I looked at other users
which inspect dma_fence_array and none of them have a risk for unbounded
recursion.

Maybe check with Christian.
-Daniel


> +}
> +
>  const struct dma_fence_ops dma_fence_array_ops = {
>  	.get_driver_name = dma_fence_array_get_driver_name,
>  	.get_timeline_name = dma_fence_array_get_timeline_name,
>  	.enable_signaling = dma_fence_array_enable_signaling,
>  	.signaled = dma_fence_array_signaled,
>  	.release = dma_fence_array_release,
> +	.set_deadline = dma_fence_array_set_deadline,
>  };
>  EXPORT_SYMBOL(dma_fence_array_ops);
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
