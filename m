Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A01F403EB9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 19:56:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5133A64AD8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 17:56:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3BD1963525; Wed,  8 Sep 2021 17:56:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C89160B53;
	Wed,  8 Sep 2021 17:56:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 043EB600A0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:56:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F340260B53; Wed,  8 Sep 2021 17:56:04 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by lists.linaro.org (Postfix) with ESMTPS id EB37D606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:56:02 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id s25so4123555edw.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 10:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=nTI6uK5ZnZFKdkZzGsIFw1dg5sgvvgRR4gACSjk5hCg=;
 b=cemRhJ2zuSZZ3HxEtjInYPYJfG1GLROgLf0r9GtH7A7FK/Vh2l1Dc24o8OZw9emjXr
 SXtEaW5ocCG1RzaFmV94775zVSaEEZt8lydGwWr5x8XO6ti4K3njTeWBZ23CurSzeoYj
 ZMqW7jGZBPmb9iWSjZ/OG2+hxlmu8C1HH9Jk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=nTI6uK5ZnZFKdkZzGsIFw1dg5sgvvgRR4gACSjk5hCg=;
 b=jhP36ICBJF2KZ22Umr5Tmf63Uw6DaUU2ssXz18r1xU+cFFWfkcCEmcCDgXEN2xTKKq
 fCBL1+BF/Vm7DKApQaROg0UssSqC77GgVUIjq7GHe1/GS57cK6v6YMjujuWWtzOM9i1p
 Ttky6VVjQmHbnSFlnItLehI04tSz7CM0Y53neQk6pxrRGC9/+Jy8wdXofDdmKkJBIvST
 95gti2ks/EAXTZ1H+BYg1O4tHou2Vr5WwDKOQYMArzvQhgDJS8SjCE1T34QQlxdTtuXG
 J7HG9qi/pZo2sIn6rjtz43Bdpe+ojvqUFiaNR/4ODY++HnF1wK5AG1QbzufUvhKcCfoS
 lL0g==
X-Gm-Message-State: AOAM531PJ1n6Rp0vYR3hWkTM7S8Z9RQ5n7VGcxetlXhLfRr59HxGV+aY
 ZuKMNVNJcuO0nmG+PWdhMrw4+w==
X-Google-Smtp-Source: ABdhPJxhIq7UANzQZ2ADFeFtoKV7zIh9j1x7mEufNI0IxeaJGvGSzLeD/6EQflC2FwO8pjqQK18/iw==
X-Received: by 2002:a50:fd98:: with SMTP id o24mr4955151edt.129.1631123762032; 
 Wed, 08 Sep 2021 10:56:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id jx21sm1370002ejb.41.2021.09.08.10.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 10:56:01 -0700 (PDT)
Date: Wed, 8 Sep 2021 19:55:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YTj5LzD19u5Rgz+J@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-2-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903184806.1680887-2-robdclark@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/9] dma-fence: Add deadline awareness
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
 linaro-mm-sig@lists.linaro.org, Pekka Paalanen <ppaalanen@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 03, 2021 at 11:47:52AM -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> =

> Add a way to hint to the fence signaler of an upcoming deadline, such as
> vblank, which the fence waiter would prefer not to miss.  This is to aid
> the fence signaler in making power management decisions, like boosting
> frequency as the deadline approaches and awareness of missing deadlines
> so that can be factored in to the frequency scaling.
> =

> v2: Drop dma_fence::deadline and related logic to filter duplicate
>     deadlines, to avoid increasing dma_fence size.  The fence-context
>     implementation will need similar logic to track deadlines of all
>     the fences on the same timeline.  [ckoenig]
> =

> Signed-off-by: Rob Clark <robdclark@chromium.org>
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/dma-buf/dma-fence.c | 20 ++++++++++++++++++++
>  include/linux/dma-fence.h   | 16 ++++++++++++++++
>  2 files changed, 36 insertions(+)
> =

> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index ce0f5eff575d..1f444863b94d 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -910,6 +910,26 @@ dma_fence_wait_any_timeout(struct dma_fence **fences=
, uint32_t count,
>  }
>  EXPORT_SYMBOL(dma_fence_wait_any_timeout);
>  =

> +
> +/**
> + * dma_fence_set_deadline - set desired fence-wait deadline
> + * @fence:    the fence that is to be waited on
> + * @deadline: the time by which the waiter hopes for the fence to be
> + *            signaled
> + *
> + * Inform the fence signaler of an upcoming deadline, such as vblank, by
> + * which point the waiter would prefer the fence to be signaled by.  This
> + * is intended to give feedback to the fence signaler to aid in power
> + * management decisions, such as boosting GPU frequency if a periodic
> + * vblank deadline is approaching.
> + */
> +void dma_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
> +{
> +	if (fence->ops->set_deadline && !dma_fence_is_signaled(fence))
> +		fence->ops->set_deadline(fence, deadline);
> +}
> +EXPORT_SYMBOL(dma_fence_set_deadline);
> +
>  /**
>   * dma_fence_init - Initialize a custom fence.
>   * @fence: the fence to initialize
> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index 6ffb4b2c6371..9c809f0d5d0a 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -99,6 +99,7 @@ enum dma_fence_flag_bits {
>  	DMA_FENCE_FLAG_SIGNALED_BIT,
>  	DMA_FENCE_FLAG_TIMESTAMP_BIT,
>  	DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> +	DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
>  	DMA_FENCE_FLAG_USER_BITS, /* must always be last member */
>  };
>  =

> @@ -261,6 +262,19 @@ struct dma_fence_ops {
>  	 */
>  	void (*timeline_value_str)(struct dma_fence *fence,
>  				   char *str, int size);
> +
> +	/**
> +	 * @set_deadline:
> +	 *
> +	 * Callback to allow a fence waiter to inform the fence signaler of an
> +	 * upcoming deadline, such as vblank, by which point the waiter would
> +	 * prefer the fence to be signaled by.  This is intended to give feedba=
ck
> +	 * to the fence signaler to aid in power management decisions, such as
> +	 * boosting GPU frequency.

Please add here that this callback is called without &dma_fence.lock held,
and that locking is up to callers if they have some state to manage.

I realized that while scratching some heads over your later patches.
-Daniel

> +	 *
> +	 * This callback is optional.
> +	 */
> +	void (*set_deadline)(struct dma_fence *fence, ktime_t deadline);
>  };
>  =

>  void dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops =
*ops,
> @@ -586,6 +600,8 @@ static inline signed long dma_fence_wait(struct dma_f=
ence *fence, bool intr)
>  	return ret < 0 ? ret : 0;
>  }
>  =

> +void dma_fence_set_deadline(struct dma_fence *fence, ktime_t deadline);
> +
>  struct dma_fence *dma_fence_get_stub(void);
>  struct dma_fence *dma_fence_allocate_private_stub(void);
>  u64 dma_fence_context_alloc(unsigned num);
> -- =

> 2.31.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
