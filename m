Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5832E3D9E48
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 09:22:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DB1D63E52
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 07:22:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6B17B63567; Thu, 29 Jul 2021 07:22:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E13B861179;
	Thu, 29 Jul 2021 07:22:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 53F5B60A09
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 07:22:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 47F7E61179; Thu, 29 Jul 2021 07:22:13 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 3D70F60A09
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 07:22:11 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id r2so5626152wrl.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 00:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=gRIRuv9zEsaaPfQ/LJYLpLre/AYa2IJKH+HaI95Nmhw=;
 b=EOPTvGjaUmfyh/nyCKP+VCyYz9ON9Aj3unL+aj8r90Vyqxleupq5pzombTkaGV1LoQ
 Qtxjimwn88GYD975AGzKXPKGDfNUgDQvdJEwE0fn6jlcYM55t8ejOOqFMod43VK1e+DA
 adiaspsQZugo8+lK6z1HBKcZFl2BtTW9vVoBI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gRIRuv9zEsaaPfQ/LJYLpLre/AYa2IJKH+HaI95Nmhw=;
 b=uYGW7CbuurCxuxlzn9aDXYqcTXgI2FMZlG2QuHVOVtgL0P0UQnJ5lN0bjjEw/ymQaE
 935zqXFm5Oew29S3MO+C9XsR8J8FU/M9R15RTAAco+DK+uRZra1L74+S2bMOIP4PS8BP
 B4Myg0v1aDoW7IBkUsq+/tKUPBhB+iSeEWbN3E06rN2plL+TjqVOqECiPPidDWmxfFg2
 0V/mWVmbK4J550sGuIkmE3ss53JLiG2aUoRQ5FlELjjwXLPRJ79ekddZ8x0qOybMLBUZ
 1Omn3AlC1yurdHBpwpTYWLO3qhrcv1ZfulRjOk41TghjOZUPszisDKbW0yiW5J33INbv
 P3VQ==
X-Gm-Message-State: AOAM5303dkB4Jf36bfu+RSSSmYdHt/RnmTvnk9fHrNSV3zpNmHl1tslr
 2tLPZvwZ0w7+50GxKzgN4laamw==
X-Google-Smtp-Source: ABdhPJxRoNhj34Ys3eERkCjhQ8n+Aks2KlkxH/DH64l4dTrUTroh6PKqlGrazi+B/9aJAyrImACxMg==
X-Received: by 2002:a5d:44c8:: with SMTP id z8mr3235437wrr.291.1627543330187; 
 Thu, 29 Jul 2021 00:22:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z20sm2111030wmi.36.2021.07.29.00.22.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 00:22:09 -0700 (PDT)
Date: Thu, 29 Jul 2021 09:22:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YQJXHzWtCxFHXFAV@phenom.ffwll.local>
References: <20210729070330.41443-1-christian.koenig@amd.com>
 <20210729070330.41443-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729070330.41443-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/3] dma-buf: nuke DMA_FENCE_TRACE macros
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
Cc: gustavo@padovan.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Jul 29, 2021 at 09:03:29AM +0200, Christian K=F6nig wrote:
> Only the DRM GPU scheduler, radeon and amdgpu where using them and they d=
epend
> on a non existing config option to actually emit some code.
> =

> Nuke them and clean up the dma_fence_signal* return value.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

So i915 is very much become a horror show of wheel reinventing (and we're
trying to fix that), but there's some legit hand-rolled use-cases for
having the return value of dma_fence_signal. We're not using that right
now because hand-rollled nonsense, but can you perhaps keep that part?

Other pieces lgtm.
-Daniel

> ---
>  drivers/dma-buf/dma-fence.c               | 44 +++++------------------
>  drivers/dma-buf/st-dma-fence.c            | 12 ++-----
>  drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c | 10 +-----
>  drivers/gpu/drm/radeon/radeon_fence.c     | 24 +++----------
>  drivers/gpu/drm/scheduler/sched_fence.c   | 18 ++--------
>  include/linux/dma-fence.h                 | 32 +++--------------
>  6 files changed, 23 insertions(+), 117 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index ce0f5eff575d..21cba0f74e69 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -350,12 +350,9 @@ void __dma_fence_might_wait(void)
>   *
>   * Unlike dma_fence_signal_timestamp(), this function must be called with
>   * &dma_fence.lock held.
> - *
> - * Returns 0 on success and a negative error value when @fence has been
> - * signalled already.
>   */
> -int dma_fence_signal_timestamp_locked(struct dma_fence *fence,
> -				      ktime_t timestamp)
> +void dma_fence_signal_timestamp_locked(struct dma_fence *fence,
> +				       ktime_t timestamp)
>  {
>  	struct dma_fence_cb *cur, *tmp;
>  	struct list_head cb_list;
> @@ -364,7 +361,7 @@ int dma_fence_signal_timestamp_locked(struct dma_fenc=
e *fence,
>  =

>  	if (unlikely(test_and_set_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
>  				      &fence->flags)))
> -		return -EINVAL;
> +		return;
>  =

>  	/* Stash the cb_list before replacing it with the timestamp */
>  	list_replace(&fence->cb_list, &cb_list);
> @@ -377,8 +374,6 @@ int dma_fence_signal_timestamp_locked(struct dma_fenc=
e *fence,
>  		INIT_LIST_HEAD(&cur->node);
>  		cur->func(fence, cur);
>  	}
> -
> -	return 0;
>  }
>  EXPORT_SYMBOL(dma_fence_signal_timestamp_locked);
>  =

> @@ -393,23 +388,14 @@ EXPORT_SYMBOL(dma_fence_signal_timestamp_locked);
>   * can only go from the unsignaled to the signaled state and not back, i=
t will
>   * only be effective the first time. Set the timestamp provided as the f=
ence
>   * signal timestamp.
> - *
> - * Returns 0 on success and a negative error value when @fence has been
> - * signalled already.
>   */
> -int dma_fence_signal_timestamp(struct dma_fence *fence, ktime_t timestam=
p)
> +void dma_fence_signal_timestamp(struct dma_fence *fence, ktime_t timesta=
mp)
>  {
>  	unsigned long flags;
> -	int ret;
> -
> -	if (!fence)
> -		return -EINVAL;
>  =

>  	spin_lock_irqsave(fence->lock, flags);
> -	ret =3D dma_fence_signal_timestamp_locked(fence, timestamp);
> +	dma_fence_signal_timestamp_locked(fence, timestamp);
>  	spin_unlock_irqrestore(fence->lock, flags);
> -
> -	return ret;
>  }
>  EXPORT_SYMBOL(dma_fence_signal_timestamp);
>  =

> @@ -425,13 +411,10 @@ EXPORT_SYMBOL(dma_fence_signal_timestamp);
>   *
>   * Unlike dma_fence_signal(), this function must be called with &dma_fen=
ce.lock
>   * held.
> - *
> - * Returns 0 on success and a negative error value when @fence has been
> - * signalled already.
>   */
> -int dma_fence_signal_locked(struct dma_fence *fence)
> +void dma_fence_signal_locked(struct dma_fence *fence)
>  {
> -	return dma_fence_signal_timestamp_locked(fence, ktime_get());
> +	dma_fence_signal_timestamp_locked(fence, ktime_get());
>  }
>  EXPORT_SYMBOL(dma_fence_signal_locked);
>  =

> @@ -444,28 +427,19 @@ EXPORT_SYMBOL(dma_fence_signal_locked);
>   * dma_fence_add_callback(). Can be called multiple times, but since a f=
ence
>   * can only go from the unsignaled to the signaled state and not back, i=
t will
>   * only be effective the first time.
> - *
> - * Returns 0 on success and a negative error value when @fence has been
> - * signalled already.
>   */
> -int dma_fence_signal(struct dma_fence *fence)
> +void dma_fence_signal(struct dma_fence *fence)
>  {
>  	unsigned long flags;
> -	int ret;
>  	bool tmp;
>  =

> -	if (!fence)
> -		return -EINVAL;
> -
>  	tmp =3D dma_fence_begin_signalling();
>  =

>  	spin_lock_irqsave(fence->lock, flags);
> -	ret =3D dma_fence_signal_timestamp_locked(fence, ktime_get());
> +	dma_fence_signal_timestamp_locked(fence, ktime_get());
>  	spin_unlock_irqrestore(fence->lock, flags);
>  =

>  	dma_fence_end_signalling(tmp);
> -
> -	return ret;
>  }
>  EXPORT_SYMBOL(dma_fence_signal);
>  =

> diff --git a/drivers/dma-buf/st-dma-fence.c b/drivers/dma-buf/st-dma-fenc=
e.c
> index c8a12d7ad71a..e89001d8873f 100644
> --- a/drivers/dma-buf/st-dma-fence.c
> +++ b/drivers/dma-buf/st-dma-fence.c
> @@ -122,21 +122,13 @@ static int test_signaling(void *arg)
>  		goto err_free;
>  	}
>  =

> -	if (dma_fence_signal(f)) {
> -		pr_err("Fence reported being already signaled\n");
> -		goto err_free;
> -	}
> -
> +	dma_fence_signal(f);
>  	if (!dma_fence_is_signaled(f)) {
>  		pr_err("Fence not reporting signaled\n");
>  		goto err_free;
>  	}
>  =

> -	if (!dma_fence_signal(f)) {
> -		pr_err("Fence reported not being already signaled\n");
> -		goto err_free;
> -	}
> -
> +	dma_fence_signal(f);
>  	err =3D 0;
>  err_free:
>  	dma_fence_put(f);
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c b/drivers/gpu/drm/=
amd/amdgpu/amdgpu_fence.c
> index d4547d195173..397872779c31 100644
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
> @@ -673,8 +667,6 @@ static bool amdgpu_fence_enable_signaling(struct dma_=
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
> index 6ffb4b2c6371..027db23fd4e3 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -370,11 +370,11 @@ static inline void dma_fence_end_signalling(bool co=
okie) {}
>  static inline void __dma_fence_might_wait(void) {}
>  #endif
>  =

> -int dma_fence_signal(struct dma_fence *fence);
> -int dma_fence_signal_locked(struct dma_fence *fence);
> -int dma_fence_signal_timestamp(struct dma_fence *fence, ktime_t timestam=
p);
> -int dma_fence_signal_timestamp_locked(struct dma_fence *fence,
> -				      ktime_t timestamp);
> +void dma_fence_signal(struct dma_fence *fence);
> +void dma_fence_signal_locked(struct dma_fence *fence);
> +void dma_fence_signal_timestamp(struct dma_fence *fence, ktime_t timesta=
mp);
> +void dma_fence_signal_timestamp_locked(struct dma_fence *fence,
> +				       ktime_t timestamp);
>  signed long dma_fence_default_wait(struct dma_fence *fence,
>  				   bool intr, signed long timeout);
>  int dma_fence_add_callback(struct dma_fence *fence,
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
