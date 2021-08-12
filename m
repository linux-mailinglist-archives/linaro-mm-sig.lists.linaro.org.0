Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 731733EAAFB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 21:28:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62FA762EA6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 19:28:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40BDB62175; Thu, 12 Aug 2021 19:28:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85E6D61234;
	Thu, 12 Aug 2021 19:28:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4CAD060B19
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 19:28:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A6F061234; Thu, 12 Aug 2021 19:28:42 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id 32DB660B19
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 19:28:40 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 o1-20020a05600c5101b02902e676fe1f04so6398212wms.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 12:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=lnDjGVrTJig6oMk/Uu8cElo+iuZYLzFE03srUAys6aw=;
 b=UKDJAffVGWXXsMEAFlk47uXz3LRy4Dxiv+pk+Ng4Ys7LoHAUsrjK6LxCLmsQl9oLre
 aQx2m/AkDziG5GtPPG9N9N2Pd2F9bktI+FqwcCo1RvYX0ZvVdo4mcCxgNGvP+B/t3o9y
 iD8PpxqsqHmE4DM/Ck1LKL8Akhhdh/u3dX4f0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=lnDjGVrTJig6oMk/Uu8cElo+iuZYLzFE03srUAys6aw=;
 b=KvSoXhehwhzPfUmOtrC5YA1ZrD56nXV4EbyRQP3B5CYU14ETLkc3CBBjnDwbr7W+qS
 g3tQLO+hCbowBInqFYOw1IeXBHeGIi+pTsZ0gvN9GXnEyUZ/8WucoAxyC5Mv2Ior4TeV
 iqOIeSlH6hb9gShq/73+wcVduX/mRx1h0W3hBO3SiV30hwicnarup4/9UPaFUdlBLo0Q
 BuoZ6GrrdK/20OaFd57FoHP+qgHwfJtj7zr+4pCBfHWFDlFs+VZ1nSgtYmUG6pskErCo
 U4auCCTD1PA42whG6QbQEsBRNuaoK9Y0gE3g2P3JeISz4ckCSDvV7ScMXu5Y5o8Oigvd
 xjBQ==
X-Gm-Message-State: AOAM530mqdf640e8CAodnsANK5q7OiCRgpvM/aU31QdL+s0EFyMLsdE3
 zQrHs774ARfIAuuBaapOVftfzg==
X-Google-Smtp-Source: ABdhPJxvzmf9exzkACVRR5FiHfZ2LA+GfRl4q4/tMc16tesaNdS9nvLLH4cbG4juaeG1F4BPxdoarA==
X-Received: by 2002:a1c:6a07:: with SMTP id f7mr96980wmc.15.1628796519096;
 Thu, 12 Aug 2021 12:28:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e2sm1652034wrq.56.2021.08.12.12.28.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 12:28:38 -0700 (PDT)
Date: Thu, 12 Aug 2021 21:28:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YRV2ZOT546+HYpJP@phenom.ffwll.local>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-12-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805104705.862416-12-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v5 11/20] drm/etnaviv: Use scheduler
 dependency handling
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 etnaviv@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Aug 05, 2021 at 12:46:56PM +0200, Daniel Vetter wrote:
> We need to pull the drm_sched_job_init much earlier, but that's very
> minor surgery.
> =

> v2: Actually fix up cleanup paths by calling drm_sched_job_init, which
> I wanted to to in the previous round (and did, for all other drivers).
> Spotted by Lucas.
> =

> v3: Rebase over renamed functions to add dependencies.
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Russell King <linux+etnaviv@armlinux.org.uk>
> Cc: Christian Gmeiner <christian.gmeiner@gmail.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: etnaviv@lists.freedesktop.org
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org

Ping for an ack&testing please.
-Daniel

> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gem.h        |  5 +-
>  drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 60 ++++++++++---------
>  drivers/gpu/drm/etnaviv/etnaviv_sched.c      | 63 +-------------------
>  drivers/gpu/drm/etnaviv/etnaviv_sched.h      |  3 +-
>  4 files changed, 37 insertions(+), 94 deletions(-)
> =

> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.h b/drivers/gpu/drm/etna=
viv/etnaviv_gem.h
> index 98e60df882b6..63688e6e4580 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem.h
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.h
> @@ -80,9 +80,6 @@ struct etnaviv_gem_submit_bo {
>  	u64 va;
>  	struct etnaviv_gem_object *obj;
>  	struct etnaviv_vram_mapping *mapping;
> -	struct dma_fence *excl;
> -	unsigned int nr_shared;
> -	struct dma_fence **shared;
>  };
>  =

>  /* Created per submit-ioctl, to track bo's and cmdstream bufs, etc,
> @@ -95,7 +92,7 @@ struct etnaviv_gem_submit {
>  	struct etnaviv_file_private *ctx;
>  	struct etnaviv_gpu *gpu;
>  	struct etnaviv_iommu_context *mmu_context, *prev_mmu_context;
> -	struct dma_fence *out_fence, *in_fence;
> +	struct dma_fence *out_fence;
>  	int out_fence_id;
>  	struct list_head node; /* GPU active submit list */
>  	struct etnaviv_cmdbuf cmdbuf;
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/d=
rm/etnaviv/etnaviv_gem_submit.c
> index 4dd7d9d541c0..e3d43678eb09 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> @@ -188,16 +188,11 @@ static int submit_fence_sync(struct etnaviv_gem_sub=
mit *submit)
>  		if (submit->flags & ETNA_SUBMIT_NO_IMPLICIT)
>  			continue;
>  =

> -		if (bo->flags & ETNA_SUBMIT_BO_WRITE) {
> -			ret =3D dma_resv_get_fences(robj, &bo->excl,
> -						  &bo->nr_shared,
> -						  &bo->shared);
> -			if (ret)
> -				return ret;
> -		} else {
> -			bo->excl =3D dma_resv_get_excl_unlocked(robj);
> -		}
> -
> +		ret =3D drm_sched_job_add_implicit_dependencies(&submit->sched_job,
> +							      &bo->obj->base,
> +							      bo->flags & ETNA_SUBMIT_BO_WRITE);
> +		if (ret)
> +			return ret;
>  	}
>  =

>  	return ret;
> @@ -403,8 +398,6 @@ static void submit_cleanup(struct kref *kref)
>  =

>  	wake_up_all(&submit->gpu->fence_event);
>  =

> -	if (submit->in_fence)
> -		dma_fence_put(submit->in_fence);
>  	if (submit->out_fence) {
>  		/* first remove from IDR, so fence can not be found anymore */
>  		mutex_lock(&submit->gpu->fence_lock);
> @@ -529,7 +522,7 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev, =
void *data,
>  	ret =3D etnaviv_cmdbuf_init(priv->cmdbuf_suballoc, &submit->cmdbuf,
>  				  ALIGN(args->stream_size, 8) + 8);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_put;
>  =

>  	submit->ctx =3D file->driver_priv;
>  	etnaviv_iommu_context_get(submit->ctx->mmu);
> @@ -537,51 +530,62 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev=
, void *data,
>  	submit->exec_state =3D args->exec_state;
>  	submit->flags =3D args->flags;
>  =

> +	ret =3D drm_sched_job_init(&submit->sched_job,
> +				 &ctx->sched_entity[args->pipe],
> +				 submit->ctx);
> +	if (ret)
> +		goto err_submit_put;
> +
>  	ret =3D submit_lookup_objects(submit, file, bos, args->nr_bos);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  =

>  	if ((priv->mmu_global->version !=3D ETNAVIV_IOMMU_V2) &&
>  	    !etnaviv_cmd_validate_one(gpu, stream, args->stream_size / 4,
>  				      relocs, args->nr_relocs)) {
>  		ret =3D -EINVAL;
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  	}
>  =

>  	if (args->flags & ETNA_SUBMIT_FENCE_FD_IN) {
> -		submit->in_fence =3D sync_file_get_fence(args->fence_fd);
> -		if (!submit->in_fence) {
> +		struct dma_fence *in_fence =3D sync_file_get_fence(args->fence_fd);
> +		if (!in_fence) {
>  			ret =3D -EINVAL;
> -			goto err_submit_objects;
> +			goto err_submit_job;
>  		}
> +
> +		ret =3D drm_sched_job_add_dependency(&submit->sched_job,
> +						   in_fence);
> +		if (ret)
> +			goto err_submit_job;
>  	}
>  =

>  	ret =3D submit_pin_objects(submit);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  =

>  	ret =3D submit_reloc(submit, stream, args->stream_size / 4,
>  			   relocs, args->nr_relocs);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  =

>  	ret =3D submit_perfmon_validate(submit, args->exec_state, pmrs);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  =

>  	memcpy(submit->cmdbuf.vaddr, stream, args->stream_size);
>  =

>  	ret =3D submit_lock_objects(submit, &ticket);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  =

>  	ret =3D submit_fence_sync(submit);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  =

> -	ret =3D etnaviv_sched_push_job(&ctx->sched_entity[args->pipe], submit);
> +	ret =3D etnaviv_sched_push_job(submit);
>  	if (ret)
> -		goto err_submit_objects;
> +		goto err_submit_job;
>  =

>  	submit_attach_object_fences(submit);
>  =

> @@ -595,7 +599,7 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev, =
void *data,
>  		sync_file =3D sync_file_create(submit->out_fence);
>  		if (!sync_file) {
>  			ret =3D -ENOMEM;
> -			goto err_submit_objects;
> +			goto err_submit_job;
>  		}
>  		fd_install(out_fence_fd, sync_file->file);
>  	}
> @@ -603,7 +607,9 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev, =
void *data,
>  	args->fence_fd =3D out_fence_fd;
>  	args->fence =3D submit->out_fence_id;
>  =

> -err_submit_objects:
> +err_submit_job:
> +	drm_sched_job_cleanup(&submit->sched_job);
> +err_submit_put:
>  	etnaviv_submit_put(submit);
>  =

>  err_submit_ww_acquire:
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_sched.c b/drivers/gpu/drm/et=
naviv/etnaviv_sched.c
> index 180bb633d5c5..2bbbd6ccc95e 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_sched.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_sched.c
> @@ -17,58 +17,6 @@ module_param_named(job_hang_limit, etnaviv_job_hang_li=
mit, int , 0444);
>  static int etnaviv_hw_jobs_limit =3D 4;
>  module_param_named(hw_job_limit, etnaviv_hw_jobs_limit, int , 0444);
>  =

> -static struct dma_fence *
> -etnaviv_sched_dependency(struct drm_sched_job *sched_job,
> -			 struct drm_sched_entity *entity)
> -{
> -	struct etnaviv_gem_submit *submit =3D to_etnaviv_submit(sched_job);
> -	struct dma_fence *fence;
> -	int i;
> -
> -	if (unlikely(submit->in_fence)) {
> -		fence =3D submit->in_fence;
> -		submit->in_fence =3D NULL;
> -
> -		if (!dma_fence_is_signaled(fence))
> -			return fence;
> -
> -		dma_fence_put(fence);
> -	}
> -
> -	for (i =3D 0; i < submit->nr_bos; i++) {
> -		struct etnaviv_gem_submit_bo *bo =3D &submit->bos[i];
> -		int j;
> -
> -		if (bo->excl) {
> -			fence =3D bo->excl;
> -			bo->excl =3D NULL;
> -
> -			if (!dma_fence_is_signaled(fence))
> -				return fence;
> -
> -			dma_fence_put(fence);
> -		}
> -
> -		for (j =3D 0; j < bo->nr_shared; j++) {
> -			if (!bo->shared[j])
> -				continue;
> -
> -			fence =3D bo->shared[j];
> -			bo->shared[j] =3D NULL;
> -
> -			if (!dma_fence_is_signaled(fence))
> -				return fence;
> -
> -			dma_fence_put(fence);
> -		}
> -		kfree(bo->shared);
> -		bo->nr_shared =3D 0;
> -		bo->shared =3D NULL;
> -	}
> -
> -	return NULL;
> -}
> -
>  static struct dma_fence *etnaviv_sched_run_job(struct drm_sched_job *sch=
ed_job)
>  {
>  	struct etnaviv_gem_submit *submit =3D to_etnaviv_submit(sched_job);
> @@ -140,29 +88,22 @@ static void etnaviv_sched_free_job(struct drm_sched_=
job *sched_job)
>  }
>  =

>  static const struct drm_sched_backend_ops etnaviv_sched_ops =3D {
> -	.dependency =3D etnaviv_sched_dependency,
>  	.run_job =3D etnaviv_sched_run_job,
>  	.timedout_job =3D etnaviv_sched_timedout_job,
>  	.free_job =3D etnaviv_sched_free_job,
>  };
>  =

> -int etnaviv_sched_push_job(struct drm_sched_entity *sched_entity,
> -			   struct etnaviv_gem_submit *submit)
> +int etnaviv_sched_push_job(struct etnaviv_gem_submit *submit)
>  {
>  	int ret =3D 0;
>  =

>  	/*
>  	 * Hold the fence lock across the whole operation to avoid jobs being
>  	 * pushed out of order with regard to their sched fence seqnos as
> -	 * allocated in drm_sched_job_init.
> +	 * allocated in drm_sched_job_arm.
>  	 */
>  	mutex_lock(&submit->gpu->fence_lock);
>  =

> -	ret =3D drm_sched_job_init(&submit->sched_job, sched_entity,
> -				 submit->ctx);
> -	if (ret)
> -		goto out_unlock;
> -
>  	drm_sched_job_arm(&submit->sched_job);
>  =

>  	submit->out_fence =3D dma_fence_get(&submit->sched_job.s_fence->finishe=
d);
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_sched.h b/drivers/gpu/drm/et=
naviv/etnaviv_sched.h
> index c0a6796e22c9..baebfa069afc 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_sched.h
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_sched.h
> @@ -18,7 +18,6 @@ struct etnaviv_gem_submit *to_etnaviv_submit(struct drm=
_sched_job *sched_job)
>  =

>  int etnaviv_sched_init(struct etnaviv_gpu *gpu);
>  void etnaviv_sched_fini(struct etnaviv_gpu *gpu);
> -int etnaviv_sched_push_job(struct drm_sched_entity *sched_entity,
> -			   struct etnaviv_gem_submit *submit);
> +int etnaviv_sched_push_job(struct etnaviv_gem_submit *submit);
>  =

>  #endif /* __ETNAVIV_SCHED_H__ */
> -- =

> 2.32.0
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
