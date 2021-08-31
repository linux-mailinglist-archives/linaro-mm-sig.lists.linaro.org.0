Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C99B03FC782
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Aug 2021 14:44:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDA9F61179
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Aug 2021 12:44:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B8A8062630; Tue, 31 Aug 2021 12:44:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86EEB608C3;
	Tue, 31 Aug 2021 12:44:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B8C28603EF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Aug 2021 12:44:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AD65A608C3; Tue, 31 Aug 2021 12:44:46 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id A6275603EF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Aug 2021 12:44:44 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 k20-20020a05600c0b5400b002e87ad6956eso2443488wmr.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Aug 2021 05:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3lF/YGkjHdfMWZFM4uJQXZ5WbkLfubp1yE6urxdbpwE=;
 b=C0YsUWMFy2LtGNz22J5d4dyYTj5DyRsxTUd6XcJEfS8POPS7XFk8BnB+JAowDtutw/
 TEcuRc1Vvk9uuA1gFk2VnFP4vTvZ4hy9jA5/7kX7BjZswgCyXfTR1HkQKL74SbFO11dy
 YeWldnXoUHALIj7ULOHZI7l8b6n3m0wlQVjTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3lF/YGkjHdfMWZFM4uJQXZ5WbkLfubp1yE6urxdbpwE=;
 b=LpGfe7sN5EmOtfrktIJZu3mRkSZBRXR/wUofiMsnGRSkbB4mIfbaoy9LINBzF0lICf
 z51IXdVZqRl+kSYFu8aMgZ5uOuoCYXHeaNM5ISbWSNMSA7ILl9Oj8e/yk9/YyOmq1Tgu
 jWO5d7YlgomraJ8nY4H//8Sw+vFv5CfzeAvJRu7Cln/L7bDlhln/7jWzaBBTrQi8GTUS
 0JcgzKlaJMTKa5g5nt7zZ8FRlDZzaKlUo8+YU9VvIUsC16TI0WHSuxmEvIE2K5pPwQtz
 w97ZiFmC0zOw9lSjSbzYk+4bsWq9arOei5yGCZCB7ofg6FUICEukCB1IYNYQC8MJ/Fjr
 rWsA==
X-Gm-Message-State: AOAM530gowUKWHuJgESl6d/F0Lql6a+h/SW1iuuB4Ars0wWpAerE1NuN
 eNT887s6cHiwOlFGrGkxjjrY+A==
X-Google-Smtp-Source: ABdhPJyCKyTE84UnS3cDbx+VhpSKBWWjMCSkG6G2cPi4OR6gmNCJZonYLRByEOG+0fXDamC8nNBjoA==
X-Received: by 2002:a1c:9d8f:: with SMTP id g137mr4088050wme.187.1630413883714; 
 Tue, 31 Aug 2021 05:44:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q13sm18136066wrv.79.2021.08.31.05.44.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 05:44:43 -0700 (PDT)
Date: Tue, 31 Aug 2021 14:44:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YS4kOY85qk3IhRZ7@phenom.ffwll.local>
References: <20210818105443.1578-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818105443.1578-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: nuke DMA_FENCE_TRACE
 macros v2
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
Cc: adelva@google.com, sspatil@google.com, gustavo@padovan.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 john.stultz@linaro.org, daniel@ffwll.ch, hridya@google.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Aug 18, 2021 at 12:54:42PM +0200, Christian K=F6nig wrote:
> Only the DRM GPU scheduler, radeon and amdgpu where using them and they d=
epend
> on a non existing config option to actually emit some code.
> =

> v2: keep the signal path as is for now
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c | 10 +---------
>  drivers/gpu/drm/radeon/radeon_fence.c     | 24 ++++-------------------
>  drivers/gpu/drm/scheduler/sched_fence.c   | 18 ++---------------
>  include/linux/dma-fence.h                 | 22 ---------------------
>  4 files changed, 7 insertions(+), 67 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c b/drivers/gpu/drm/=
amd/amdgpu/amdgpu_fence.c
> index 0b1c48590c43..c65994e382bd 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> @@ -246,7 +246,6 @@ bool amdgpu_fence_process(struct amdgpu_ring *ring)
>  	struct amdgpu_fence_driver *drv =3D &ring->fence_drv;
>  	struct amdgpu_device *adev =3D ring->adev;
>  	uint32_t seq, last_seq;
> -	int r;
>  =

>  	do {
>  		last_seq =3D atomic_read(&ring->fence_drv.last_seq);
> @@ -278,12 +277,7 @@ bool amdgpu_fence_process(struct amdgpu_ring *ring)
>  		if (!fence)
>  			continue;
>  =

> -		r =3D dma_fence_signal(fence);
> -		if (!r)
> -			DMA_FENCE_TRACE(fence, "signaled from irq context\n");
> -		else
> -			BUG();
> -
> +		dma_fence_signal(fence);
>  		dma_fence_put(fence);
>  		pm_runtime_mark_last_busy(adev_to_drm(adev)->dev);
>  		pm_runtime_put_autosuspend(adev_to_drm(adev)->dev);
> @@ -639,8 +633,6 @@ static bool amdgpu_fence_enable_signaling(struct dma_=
fence *f)
>  	if (!timer_pending(&ring->fence_drv.fallback_timer))
>  		amdgpu_fence_schedule_fallback(ring);
>  =

> -	DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", ring->idx);
> -
>  	return true;
>  }
>  =

> diff --git a/drivers/gpu/drm/radeon/radeon_fence.c b/drivers/gpu/drm/rade=
on/radeon_fence.c
> index 18f2c2e0dfb3..3f351d222cbb 100644
> --- a/drivers/gpu/drm/radeon/radeon_fence.c
> +++ b/drivers/gpu/drm/radeon/radeon_fence.c
> @@ -176,18 +176,11 @@ static int radeon_fence_check_signaled(wait_queue_e=
ntry_t *wait, unsigned mode,
>  	 */
>  	seq =3D atomic64_read(&fence->rdev->fence_drv[fence->ring].last_seq);
>  	if (seq >=3D fence->seq) {
> -		int ret =3D dma_fence_signal_locked(&fence->base);
> -
> -		if (!ret)
> -			DMA_FENCE_TRACE(&fence->base, "signaled from irq context\n");
> -		else
> -			DMA_FENCE_TRACE(&fence->base, "was already signaled\n");
> -
> +		dma_fence_signal_locked(&fence->base);
>  		radeon_irq_kms_sw_irq_put(fence->rdev, fence->ring);
>  		__remove_wait_queue(&fence->rdev->fence_queue, &fence->fence_wake);
>  		dma_fence_put(&fence->base);
> -	} else
> -		DMA_FENCE_TRACE(&fence->base, "pending\n");
> +	}
>  	return 0;
>  }
>  =

> @@ -422,8 +415,6 @@ static bool radeon_fence_enable_signaling(struct dma_=
fence *f)
>  	fence->fence_wake.func =3D radeon_fence_check_signaled;
>  	__add_wait_queue(&rdev->fence_queue, &fence->fence_wake);
>  	dma_fence_get(f);
> -
> -	DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", fence->ring);
>  	return true;
>  }
>  =

> @@ -441,11 +432,7 @@ bool radeon_fence_signaled(struct radeon_fence *fenc=
e)
>  		return true;
>  =

>  	if (radeon_fence_seq_signaled(fence->rdev, fence->seq, fence->ring)) {
> -		int ret;
> -
> -		ret =3D dma_fence_signal(&fence->base);
> -		if (!ret)
> -			DMA_FENCE_TRACE(&fence->base, "signaled from radeon_fence_signaled\n"=
);
> +		dma_fence_signal(&fence->base);
>  		return true;
>  	}
>  	return false;
> @@ -550,7 +537,6 @@ long radeon_fence_wait_timeout(struct radeon_fence *f=
ence, bool intr, long timeo
>  {
>  	uint64_t seq[RADEON_NUM_RINGS] =3D {};
>  	long r;
> -	int r_sig;
>  =

>  	/*
>  	 * This function should not be called on !radeon fences.
> @@ -567,9 +553,7 @@ long radeon_fence_wait_timeout(struct radeon_fence *f=
ence, bool intr, long timeo
>  		return r;
>  	}
>  =

> -	r_sig =3D dma_fence_signal(&fence->base);
> -	if (!r_sig)
> -		DMA_FENCE_TRACE(&fence->base, "signaled from fence_wait\n");
> +	dma_fence_signal(&fence->base);
>  	return r;
>  }
>  =

> diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/gpu/drm/sc=
heduler/sched_fence.c
> index 69de2c76731f..3736746c47bd 100644
> --- a/drivers/gpu/drm/scheduler/sched_fence.c
> +++ b/drivers/gpu/drm/scheduler/sched_fence.c
> @@ -50,26 +50,12 @@ static void __exit drm_sched_fence_slab_fini(void)
>  =

>  void drm_sched_fence_scheduled(struct drm_sched_fence *fence)
>  {
> -	int ret =3D dma_fence_signal(&fence->scheduled);
> -
> -	if (!ret)
> -		DMA_FENCE_TRACE(&fence->scheduled,
> -				"signaled from irq context\n");
> -	else
> -		DMA_FENCE_TRACE(&fence->scheduled,
> -				"was already signaled\n");
> +	dma_fence_signal(&fence->scheduled);
>  }
>  =

>  void drm_sched_fence_finished(struct drm_sched_fence *fence)
>  {
> -	int ret =3D dma_fence_signal(&fence->finished);
> -
> -	if (!ret)
> -		DMA_FENCE_TRACE(&fence->finished,
> -				"signaled from irq context\n");
> -	else
> -		DMA_FENCE_TRACE(&fence->finished,
> -				"was already signaled\n");
> +	dma_fence_signal(&fence->finished);
>  }
>  =

>  static const char *drm_sched_fence_get_driver_name(struct dma_fence *fen=
ce)
> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index 6ffb4b2c6371..4cc119ab272f 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -590,26 +590,4 @@ struct dma_fence *dma_fence_get_stub(void);
>  struct dma_fence *dma_fence_allocate_private_stub(void);
>  u64 dma_fence_context_alloc(unsigned num);
>  =

> -#define DMA_FENCE_TRACE(f, fmt, args...) \
> -	do {								\
> -		struct dma_fence *__ff =3D (f);				\
> -		if (IS_ENABLED(CONFIG_DMA_FENCE_TRACE))			\
> -			pr_info("f %llu#%llu: " fmt,			\
> -				__ff->context, __ff->seqno, ##args);	\
> -	} while (0)
> -
> -#define DMA_FENCE_WARN(f, fmt, args...) \
> -	do {								\
> -		struct dma_fence *__ff =3D (f);				\
> -		pr_warn("f %llu#%llu: " fmt, __ff->context, __ff->seqno,\
> -			 ##args);					\
> -	} while (0)
> -
> -#define DMA_FENCE_ERR(f, fmt, args...) \
> -	do {								\
> -		struct dma_fence *__ff =3D (f);				\
> -		pr_err("f %llu#%llu: " fmt, __ff->context, __ff->seqno,	\
> -			##args);					\
> -	} while (0)
> -
>  #endif /* __LINUX_DMA_FENCE_H */
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
