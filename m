Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8B63EAAFF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 21:29:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2309862166
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 19:29:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F2D5861A27; Thu, 12 Aug 2021 19:29:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3F7F61234;
	Thu, 12 Aug 2021 19:29:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EBF1960B19
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 19:29:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E958B61234; Thu, 12 Aug 2021 19:29:11 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id D63DA60B19
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 19:29:09 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id q11so9810606wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 12:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vK3N1x/8SbosoS3uBizGVb1PhP4NVJPTrGmAX9XbKo0=;
 b=HHCdJzDBUSSv4gJIkst4UkP003ypJI9ih1Q2cy6gken6e776ZhrJj+MaiecCYquivY
 oV5b8yMgCwSMpQ54XpCjKAiLfuou0JiTOy00ftVAthVt8/xAY5W1xB1VqYAr2EfDMKnu
 oH8/QgoaMPRMj4wLy60MntfWEzzryxVreT1B8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vK3N1x/8SbosoS3uBizGVb1PhP4NVJPTrGmAX9XbKo0=;
 b=gXIe1ohmyeQ5XyRHaXdNpflR5YrFYK4dUuHWeFn8nLBI6hYKt9r7CoVSXOntCCQJZy
 qpDQy28Azt6o+In48HWVUvbZRePPHc28BQ6sP6W44NlRzu5QHzryCHKSaV7Go6YdnGuO
 gN1KBfaLczCwvD5Hpfc/M7t40nkDTgE7vc7OBZ81O5ogEeaOjxyqyeX9bt1w32AnwJhA
 XHhoLWJGnx6USIcddqjeukaYzqW1EtavK1BsBGFe9yT4v66scOoBHkAABoMnxR5Udb11
 EyVSY3WN/t7klExXPW94dff+5che4l83onahI3iba9C+c4u+v8HJo2pzxbeU113gG8Vm
 t4ow==
X-Gm-Message-State: AOAM530BbzNZGaSOM0wjmg7BZyM6jx/d19c9QL2x1Gy0JQh+nHUWL4sm
 mgStaq/ScQl6MSwWCqHt2FQPaQ==
X-Google-Smtp-Source: ABdhPJxtaf2b2aXWftudMkaUX0scxPW67FZyX2NlvkEhxSM3RIrnq+OhL1847l8YFlS55Urw3cH0pQ==
X-Received: by 2002:a05:6000:1b02:: with SMTP id
 f2mr5719224wrz.274.1628796549010; 
 Thu, 12 Aug 2021 12:29:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a11sm4182999wrq.6.2021.08.12.12.29.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 12:29:08 -0700 (PDT)
Date: Thu, 12 Aug 2021 21:29:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YRV2goAobvG+6dmn@phenom.ffwll.local>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-13-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805104705.862416-13-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v5 12/20] drm/msm: Use scheduler
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
Cc: freedreno@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Sean Paul <sean@poorly.run>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Aug 05, 2021 at 12:46:57PM +0200, Daniel Vetter wrote:
> drm_sched_job_init is already at the right place, so this boils down
> to deleting code.
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: freedreno@lists.freedesktop.org
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org

Ping for ack&testing please.
-Daniel

> ---
>  drivers/gpu/drm/msm/msm_gem.h        |  5 -----
>  drivers/gpu/drm/msm/msm_gem_submit.c | 19 +++++--------------
>  drivers/gpu/drm/msm/msm_ringbuffer.c | 12 ------------
>  3 files changed, 5 insertions(+), 31 deletions(-)
> =

> diff --git a/drivers/gpu/drm/msm/msm_gem.h b/drivers/gpu/drm/msm/msm_gem.h
> index f9e3ffb2309a..8bf0ac707fd7 100644
> --- a/drivers/gpu/drm/msm/msm_gem.h
> +++ b/drivers/gpu/drm/msm/msm_gem.h
> @@ -312,11 +312,6 @@ struct msm_gem_submit {
>  	struct ww_acquire_ctx ticket;
>  	uint32_t seqno;		/* Sequence number of the submit on the ring */
>  =

> -	/* Array of struct dma_fence * to block on before submitting this job.
> -	 */
> -	struct xarray deps;
> -	unsigned long last_dep;
> -
>  	/* Hw fence, which is created when the scheduler executes the job, and
>  	 * is signaled when the hw finishes (via seqno write from cmdstream)
>  	 */
> diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/m=
sm_gem_submit.c
> index 96cea0ba4cfd..fb5a2eab27a2 100644
> --- a/drivers/gpu/drm/msm/msm_gem_submit.c
> +++ b/drivers/gpu/drm/msm/msm_gem_submit.c
> @@ -52,8 +52,6 @@ static struct msm_gem_submit *submit_create(struct drm_=
device *dev,
>  		return ERR_PTR(ret);
>  	}
>  =

> -	xa_init_flags(&submit->deps, XA_FLAGS_ALLOC);
> -
>  	kref_init(&submit->ref);
>  	submit->dev =3D dev;
>  	submit->aspace =3D queue->ctx->aspace;
> @@ -72,8 +70,6 @@ void __msm_gem_submit_destroy(struct kref *kref)
>  {
>  	struct msm_gem_submit *submit =3D
>  			container_of(kref, struct msm_gem_submit, ref);
> -	unsigned long index;
> -	struct dma_fence *fence;
>  	unsigned i;
>  =

>  	if (submit->fence_id) {
> @@ -82,12 +78,6 @@ void __msm_gem_submit_destroy(struct kref *kref)
>  		mutex_unlock(&submit->queue->lock);
>  	}
>  =

> -	xa_for_each (&submit->deps, index, fence) {
> -		dma_fence_put(fence);
> -	}
> -
> -	xa_destroy(&submit->deps);
> -
>  	dma_fence_put(submit->user_fence);
>  	dma_fence_put(submit->hw_fence);
>  =

> @@ -343,8 +333,9 @@ static int submit_fence_sync(struct msm_gem_submit *s=
ubmit, bool no_implicit)
>  		if (no_implicit)
>  			continue;
>  =

> -		ret =3D drm_gem_fence_array_add_implicit(&submit->deps, obj,
> -			write);
> +		ret =3D drm_sched_job_add_implicit_dependencies(&submit->base,
> +							      obj,
> +							      write);
>  		if (ret)
>  			break;
>  	}
> @@ -588,7 +579,7 @@ static struct drm_syncobj **msm_parse_deps(struct msm=
_gem_submit *submit,
>  		if (ret)
>  			break;
>  =

> -		ret =3D drm_gem_fence_array_add(&submit->deps, fence);
> +		ret =3D drm_sched_job_add_dependency(&submit->base, fence);
>  		if (ret)
>  			break;
>  =

> @@ -798,7 +789,7 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void=
 *data,
>  			goto out_unlock;
>  		}
>  =

> -		ret =3D drm_gem_fence_array_add(&submit->deps, in_fence);
> +		ret =3D drm_sched_job_add_dependency(&submit->base, in_fence);
>  		if (ret)
>  			goto out_unlock;
>  	}
> diff --git a/drivers/gpu/drm/msm/msm_ringbuffer.c b/drivers/gpu/drm/msm/m=
sm_ringbuffer.c
> index bd54c1412649..652b1dedd7c1 100644
> --- a/drivers/gpu/drm/msm/msm_ringbuffer.c
> +++ b/drivers/gpu/drm/msm/msm_ringbuffer.c
> @@ -11,17 +11,6 @@ static uint num_hw_submissions =3D 8;
>  MODULE_PARM_DESC(num_hw_submissions, "The max # of jobs to write into ri=
ngbuffer (default 8)");
>  module_param(num_hw_submissions, uint, 0600);
>  =

> -static struct dma_fence *msm_job_dependency(struct drm_sched_job *job,
> -		struct drm_sched_entity *s_entity)
> -{
> -	struct msm_gem_submit *submit =3D to_msm_submit(job);
> -
> -	if (!xa_empty(&submit->deps))
> -		return xa_erase(&submit->deps, submit->last_dep++);
> -
> -	return NULL;
> -}
> -
>  static struct dma_fence *msm_job_run(struct drm_sched_job *job)
>  {
>  	struct msm_gem_submit *submit =3D to_msm_submit(job);
> @@ -52,7 +41,6 @@ static void msm_job_free(struct drm_sched_job *job)
>  }
>  =

>  const struct drm_sched_backend_ops msm_sched_ops =3D {
> -	.dependency =3D msm_job_dependency,
>  	.run_job =3D msm_job_run,
>  	.free_job =3D msm_job_free
>  };
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
