Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B34973FEF8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Sep 2021 16:37:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 865B461017
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Sep 2021 14:37:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 99C7261A44; Thu,  2 Sep 2021 14:37:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BE1E60B8D;
	Thu,  2 Sep 2021 14:37:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 568FA60A8C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Sep 2021 14:37:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 54A5560B2E; Thu,  2 Sep 2021 14:37:17 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 49FED60B57
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Sep 2021 14:37:15 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id i6so3317890wrv.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Sep 2021 07:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CT4LAspdSBwDkfapAAwxnh3D14vFcnZ3QM8rnn3hC1E=;
 b=hccyw/Ba5hg0YsYFQ1hC6F4QOU6QYLFs/YLEPT/bx5DPd9gLmKg7nBFjrR74RwDtdb
 xCoyWUJGIRQ5y5KsnR6a19WJV6B1JqA3VXG55x3t1SiI6rqGUB1DZOgJy9XCYj9E4vx3
 htOiY2t7CjVWRQ2JzzOz2Y8bSfc8qkd5XU2SA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CT4LAspdSBwDkfapAAwxnh3D14vFcnZ3QM8rnn3hC1E=;
 b=C9ZNGP+khB+ZHNYFy8JI0//Gzarex6F25EhoOZTwBLnFrrgAB0o4e7QFghXXkLoAwN
 +eLv7VcOnqINnj30kwQLOQZN3gsL6U8ssyDFAQ0+mx0Ebpdl0mHkYzAPQwsu/MpQWJFv
 i7thSGJPaG3UzMy7RfRW7qo288On70q8rjdb8gkoxhNFOwnwf+ek8Klw8itiml6xiYDQ
 +Hto83RnEf2XSSzBxNcVRIBFiJbvUh3RfDAlvxNuEmG+aGcoiqWvumgAdF0eL5t11UnB
 XMf8+qiGxGCL0SZq8RUpjeja4wFBGt/iZ4r3rrLDEh8cwP9fJCkYmtIP87PAtHr+K0Y0
 5u5g==
X-Gm-Message-State: AOAM530J5nX04Zc9hINwAOYQNt9gd9VmHJmnCKlQaY4aSsZDMKRr10Y3
 hfqxtuSQiFd4MKgfXNdsjRA4ng==
X-Google-Smtp-Source: ABdhPJw3CeDkQUgOa1ZqnOlCigj/LcT6+bjut2s4XIt/vXZTFskefL6mrH1JT9ZeSEabF6naeFODww==
X-Received: by 2002:adf:c508:: with SMTP id q8mr4287862wrf.260.1630593434296; 
 Thu, 02 Sep 2021 07:37:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t14sm2035337wrw.59.2021.09.02.07.37.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 07:37:13 -0700 (PDT)
Date: Thu, 2 Sep 2021 16:37:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YTDhmM6jWp/k8UEa@phenom.ffwll.local>
References: <20210901120240.7339-1-christian.koenig@amd.com>
 <20210901120240.7339-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210901120240.7339-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: clarify
 dma_fence_ops->wait documentation
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
Cc: linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Sep 01, 2021 at 02:02:39PM +0200, Christian K=F6nig wrote:
> This callback is pretty much deprecated and should not be used by new imp=
lementations.
> =

> Clarify that in the documentation as well.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


> ---
>  include/linux/dma-fence.h | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> =

> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index 6ffb4b2c6371..a44e42b86c2a 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -214,19 +214,15 @@ struct dma_fence_ops {
>  	 * Custom wait implementation, defaults to dma_fence_default_wait() if
>  	 * not set.
>  	 *
> -	 * The dma_fence_default_wait implementation should work for any fence,=
 as long
> -	 * as @enable_signaling works correctly. This hook allows drivers to
> -	 * have an optimized version for the case where a process context is
> -	 * already available, e.g. if @enable_signaling for the general case
> -	 * needs to set up a worker thread.
> +	 * Deprecated and should not be used by new implementations. Only used
> +	 * by existing implementations which need special handling for their
> +	 * hardware reset procedure.
>  	 *
>  	 * Must return -ERESTARTSYS if the wait is intr =3D true and the wait w=
as
>  	 * interrupted, and remaining jiffies if fence has signaled, or 0 if wa=
it
>  	 * timed out. Can also return other error values on custom implementati=
ons,
>  	 * which should be treated as if the fence is signaled. For example a h=
ardware
>  	 * lockup could be reported like that.
> -	 *
> -	 * This callback is optional.
>  	 */
>  	signed long (*wait)(struct dma_fence *fence,
>  			    bool intr, signed long timeout);
> -- =

> 2.25.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
