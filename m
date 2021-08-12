Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA493EAAF5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 21:28:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D38EF61A3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 19:28:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5995561A47; Thu, 12 Aug 2021 19:28:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35FF461234;
	Thu, 12 Aug 2021 19:28:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6BF3360B19
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 19:28:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5F33361234; Thu, 12 Aug 2021 19:28:16 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 556F760E41
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 19:28:14 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id q11so9807163wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 12:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zQc5Xq0ndIRpgKH8ghD8CcpcMwMivDHL9fVBcQMh8YI=;
 b=Txj5PMLCQzEaiL5VP9XFbfZEfGFW8a92aEJuMiuEBU16ocYEhp1opugyO9eDpFciIE
 ZlL/jggYQqHWMqdaHm2q06oI1LJmx56SytQogrQlnD1sdIh+OEwstRRmRWV4O4gjPQLA
 Hk65sdIdfJPtAqTBVj7k2YpFIoJ0TCkwkquqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zQc5Xq0ndIRpgKH8ghD8CcpcMwMivDHL9fVBcQMh8YI=;
 b=uFlcb3+nbdY7PCopB4orxdFAPkxbYWXWkO4NW1JQNxCpoq+Jw1OyPwVZ2RKnAa3uri
 pMLPFqHnPyl4FvD9CHfM++I6tiyTUsQiXTLRGmrWzgr4R06Au/zIhLmYKF6KXJH+pAUV
 7/ybZPwPDg/ZvYKb/d8XaiZ9K8xyYrrBZjG8YgrIS3Q8MLgcssRs3nd01aI09Pk8/jAT
 XBGwCmlDb7+5qBHGXfywmDhnUe/Lq38N1ppXQNegz5XrllSQN1XtUqaY6yQ4sr+6Yr2F
 EQaDCGBF914XlQzOFVTEJhf3qfhokrCf4DKCVl13nr4gBUWb26YwkuvH3/BFi0k0aebw
 OtyA==
X-Gm-Message-State: AOAM533efQ3ZZycMCRVHbGhZ6nGeklKrbVewfJ3MYgKxCzxUvuK1LkQe
 v4mIK80xLGZVf8J3emFSgpsUSGf4w0pOzg==
X-Google-Smtp-Source: ABdhPJxbk6lUfPYBtitJTGKWp+uNV4BEkm19ABgyYmwl3SPKqhTtE8vs0geO51IqJ6EU7krY5z5aXQ==
X-Received: by 2002:adf:ef85:: with SMTP id d5mr5725537wro.372.1628796493353; 
 Thu, 12 Aug 2021 12:28:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y3sm3822669wma.32.2021.08.12.12.28.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 12:28:12 -0700 (PDT)
Date: Thu, 12 Aug 2021 21:28:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YRV2ShnIbOyaHG8X@phenom.ffwll.local>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-9-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805104705.862416-9-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v5 08/20] drm/lima: use scheduler
 dependency tracking
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
Cc: lima@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Aug 05, 2021 at 12:46:53PM +0200, Daniel Vetter wrote:
> Nothing special going on here.
> =

> Aside reviewing the code, it seems like drm_sched_job_arm() should be
> moved into lima_sched_context_queue_task and put under some mutex
> together with drm_sched_push_job(). See the kerneldoc for
> drm_sched_push_job().
> =

> v2: Rebase over renamed functions to add dependencies.
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Qiang Yu <yuq825@gmail.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: lima@lists.freedesktop.org
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org

Ping for an ack here please. Testing would be even better ofc.
-Daniel

> ---
>  drivers/gpu/drm/lima/lima_gem.c   |  6 ++++--
>  drivers/gpu/drm/lima/lima_sched.c | 21 ---------------------
>  drivers/gpu/drm/lima/lima_sched.h |  3 ---
>  3 files changed, 4 insertions(+), 26 deletions(-)
> =

> diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_=
gem.c
> index c528f40981bb..640acc060467 100644
> --- a/drivers/gpu/drm/lima/lima_gem.c
> +++ b/drivers/gpu/drm/lima/lima_gem.c
> @@ -267,7 +267,9 @@ static int lima_gem_sync_bo(struct lima_sched_task *t=
ask, struct lima_bo *bo,
>  	if (explicit)
>  		return 0;
>  =

> -	return drm_gem_fence_array_add_implicit(&task->deps, &bo->base.base, wr=
ite);
> +	return drm_sched_job_add_implicit_dependencies(&task->base,
> +						       &bo->base.base,
> +						       write);
>  }
>  =

>  static int lima_gem_add_deps(struct drm_file *file, struct lima_submit *=
submit)
> @@ -285,7 +287,7 @@ static int lima_gem_add_deps(struct drm_file *file, s=
truct lima_submit *submit)
>  		if (err)
>  			return err;
>  =

> -		err =3D drm_gem_fence_array_add(&submit->task->deps, fence);
> +		err =3D drm_sched_job_add_dependency(&submit->task->base, fence);
>  		if (err) {
>  			dma_fence_put(fence);
>  			return err;
> diff --git a/drivers/gpu/drm/lima/lima_sched.c b/drivers/gpu/drm/lima/lim=
a_sched.c
> index e968b5a8f0b0..99d5f6f1a882 100644
> --- a/drivers/gpu/drm/lima/lima_sched.c
> +++ b/drivers/gpu/drm/lima/lima_sched.c
> @@ -134,24 +134,15 @@ int lima_sched_task_init(struct lima_sched_task *ta=
sk,
>  	task->num_bos =3D num_bos;
>  	task->vm =3D lima_vm_get(vm);
>  =

> -	xa_init_flags(&task->deps, XA_FLAGS_ALLOC);
> -
>  	return 0;
>  }
>  =

>  void lima_sched_task_fini(struct lima_sched_task *task)
>  {
> -	struct dma_fence *fence;
> -	unsigned long index;
>  	int i;
>  =

>  	drm_sched_job_cleanup(&task->base);
>  =

> -	xa_for_each(&task->deps, index, fence) {
> -		dma_fence_put(fence);
> -	}
> -	xa_destroy(&task->deps);
> -
>  	if (task->bos) {
>  		for (i =3D 0; i < task->num_bos; i++)
>  			drm_gem_object_put(&task->bos[i]->base.base);
> @@ -186,17 +177,6 @@ struct dma_fence *lima_sched_context_queue_task(stru=
ct lima_sched_task *task)
>  	return fence;
>  }
>  =

> -static struct dma_fence *lima_sched_dependency(struct drm_sched_job *job,
> -					       struct drm_sched_entity *entity)
> -{
> -	struct lima_sched_task *task =3D to_lima_task(job);
> -
> -	if (!xa_empty(&task->deps))
> -		return xa_erase(&task->deps, task->last_dep++);
> -
> -	return NULL;
> -}
> -
>  static int lima_pm_busy(struct lima_device *ldev)
>  {
>  	int ret;
> @@ -472,7 +452,6 @@ static void lima_sched_free_job(struct drm_sched_job =
*job)
>  }
>  =

>  static const struct drm_sched_backend_ops lima_sched_ops =3D {
> -	.dependency =3D lima_sched_dependency,
>  	.run_job =3D lima_sched_run_job,
>  	.timedout_job =3D lima_sched_timedout_job,
>  	.free_job =3D lima_sched_free_job,
> diff --git a/drivers/gpu/drm/lima/lima_sched.h b/drivers/gpu/drm/lima/lim=
a_sched.h
> index ac70006b0e26..6a11764d87b3 100644
> --- a/drivers/gpu/drm/lima/lima_sched.h
> +++ b/drivers/gpu/drm/lima/lima_sched.h
> @@ -23,9 +23,6 @@ struct lima_sched_task {
>  	struct lima_vm *vm;
>  	void *frame;
>  =

> -	struct xarray deps;
> -	unsigned long last_dep;
> -
>  	struct lima_bo **bos;
>  	int num_bos;
>  =

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
