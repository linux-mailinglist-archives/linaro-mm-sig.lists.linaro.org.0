Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 28061403E7B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 19:45:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D9EF6362B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 17:45:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8E4AB63538; Wed,  8 Sep 2021 17:45:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 167C560B53;
	Wed,  8 Sep 2021 17:45:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 495DA606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:45:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 46CBB60B53; Wed,  8 Sep 2021 17:45:27 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by lists.linaro.org (Postfix) with ESMTPS id 3CCAE606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:45:25 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id g21so4037759edw.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 10:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=+xEb27PMFQUN6a8DcLn87Q6DnS83FJhxmti0I/5v+c8=;
 b=NApzBmW3UHVNrriG9leoqpe0UPqlSwGG+HHEvMS6VrsAJ8Zk61JcNe2wN49FhKPnoj
 xp7yb2mjOQAw38ZaLHutQYGOZjV0CSU9Qo0X5R7hEJ23bnK8V9iPe1bEWcndMu/3PFf1
 W9pHkI/23al4QTNYhOthpUxC7jqfJ3l2jmHWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=+xEb27PMFQUN6a8DcLn87Q6DnS83FJhxmti0I/5v+c8=;
 b=pUdFhkxBnKHUYnF44xePp9ZPLnG8vxDuyMlaC/c76xnfLf3MNdedTW6wVUU4WXCXEb
 2pcFFfZK3kixyt2wJxuaEhDCYbUYu9+AZKQ/IhM7pxS5N1okQUP6FKUWj7Q/Isd0SLN7
 hh8Xv09bKfy7KPsjn1LtKkpjTdnKJCrpD5ticu9qiUIJv3nfJaQHzUO1kBFKmsOfbuvD
 0O6KaoHiwi1lBHBBelLUyhQMU4egF/BRl8O12WJii9qhtyRR3TF/ocOml2u5m4uxEfaf
 PSL9Ja6/4QomysrcJ3FJZvG0MnpEzmDYc1n12WdsdjQ/4eYQMqIgzU3Dj56VhNhnfgcE
 I7ug==
X-Gm-Message-State: AOAM533wK8ASTb2u08YKaZ0zhk5IiI/0lbyqu/68H2J7exb0bgEzL5a8
 HegMlf35UgSz15UVNlfl3oqucA==
X-Google-Smtp-Source: ABdhPJxNTQqMjSZn5VxSobt+K12XzbD5osKL3cKE0pBWdtZGzMzii+9hy1LRcgB0zMHvtfaOFvXhoQ==
X-Received: by 2002:a50:d0d1:: with SMTP id g17mr2357446edf.96.1631123124210; 
 Wed, 08 Sep 2021 10:45:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r6sm1352603ejb.119.2021.09.08.10.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 10:45:23 -0700 (PDT)
Date: Wed, 8 Sep 2021 19:45:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YTj2scNdCHAdF+cl@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>,
 Steven Price <steven.price@arm.com>, Melissa Wen <mwen@igalia.com>,
 Luben Tuikov <luben.tuikov@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-5-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903184806.1680887-5-robdclark@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 4/9] drm/scheduler: Add fence
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
Cc: Rob Clark <robdclark@chromium.org>, Melissa Wen <mwen@igalia.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>, David Airlie <airlied@linux.ie>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Pekka Paalanen <ppaalanen@gmail.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tian Tao <tiantao6@hisilicon.com>, Steven Price <steven.price@arm.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 03, 2021 at 11:47:55AM -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> As the finished fence is the one that is exposed to userspace, and
> therefore the one that other operations, like atomic update, would
> block on, we need to propagate the deadline from from the finished
> fence to the actual hw fence.
> 
> v2: Split into drm_sched_fence_set_parent() (ckoenig)
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/gpu/drm/scheduler/sched_fence.c | 34 +++++++++++++++++++++++++
>  drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
>  include/drm/gpu_scheduler.h             |  8 ++++++
>  3 files changed, 43 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/gpu/drm/scheduler/sched_fence.c
> index bcea035cf4c6..4fc41a71d1c7 100644
> --- a/drivers/gpu/drm/scheduler/sched_fence.c
> +++ b/drivers/gpu/drm/scheduler/sched_fence.c
> @@ -128,6 +128,30 @@ static void drm_sched_fence_release_finished(struct dma_fence *f)
>  	dma_fence_put(&fence->scheduled);
>  }
>  
> +static void drm_sched_fence_set_deadline_finished(struct dma_fence *f,
> +						  ktime_t deadline)
> +{
> +	struct drm_sched_fence *fence = to_drm_sched_fence(f);
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&fence->lock, flags);
> +
> +	/* If we already have an earlier deadline, keep it: */
> +	if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &f->flags) &&
> +	    ktime_before(fence->deadline, deadline)) {
> +		spin_unlock_irqrestore(&fence->lock, flags);
> +		return;
> +	}
> +
> +	fence->deadline = deadline;
> +	set_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &f->flags);
> +
> +	spin_unlock_irqrestore(&fence->lock, flags);
> +
> +	if (fence->parent)
> +		dma_fence_set_deadline(fence->parent, deadline);
> +}
> +
>  static const struct dma_fence_ops drm_sched_fence_ops_scheduled = {
>  	.get_driver_name = drm_sched_fence_get_driver_name,
>  	.get_timeline_name = drm_sched_fence_get_timeline_name,
> @@ -138,6 +162,7 @@ static const struct dma_fence_ops drm_sched_fence_ops_finished = {
>  	.get_driver_name = drm_sched_fence_get_driver_name,
>  	.get_timeline_name = drm_sched_fence_get_timeline_name,
>  	.release = drm_sched_fence_release_finished,
> +	.set_deadline = drm_sched_fence_set_deadline_finished,
>  };
>  
>  struct drm_sched_fence *to_drm_sched_fence(struct dma_fence *f)
> @@ -152,6 +177,15 @@ struct drm_sched_fence *to_drm_sched_fence(struct dma_fence *f)
>  }
>  EXPORT_SYMBOL(to_drm_sched_fence);
>  
> +void drm_sched_fence_set_parent(struct drm_sched_fence *s_fence,
> +				struct dma_fence *fence)
> +{
> +	s_fence->parent = dma_fence_get(fence);
> +	if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
> +		     &s_fence->finished.flags))

Don't you need the spinlock here too to avoid races? test_bit is very
unordered, so guarantees nothing. Spinlock would need to be both around
->parent = and the test_bit.

Entirely aside, but there's discussions going on to preallocate the hw
fence somehow. If we do that we could make the deadline forwarding
lockless here. Having a spinlock just to set the parent is a bit annoying
...

Alternative is that you do this locklessly with barriers and a _lot_ of
comments. Would be good to benchmark whether the overhead matters though
first.
-Daniel

> +		dma_fence_set_deadline(fence, s_fence->deadline);
> +}
> +
>  struct drm_sched_fence *drm_sched_fence_alloc(struct drm_sched_entity *entity,
>  					      void *owner)
>  {
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index 595e47ff7d06..27bf0ac0625f 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -978,7 +978,7 @@ static int drm_sched_main(void *param)
>  		drm_sched_fence_scheduled(s_fence);
>  
>  		if (!IS_ERR_OR_NULL(fence)) {
> -			s_fence->parent = dma_fence_get(fence);
> +			drm_sched_fence_set_parent(s_fence, fence);
>  			r = dma_fence_add_callback(fence, &sched_job->cb,
>  						   drm_sched_job_done_cb);
>  			if (r == -ENOENT)
> diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> index 7f77a455722c..158ddd662469 100644
> --- a/include/drm/gpu_scheduler.h
> +++ b/include/drm/gpu_scheduler.h
> @@ -238,6 +238,12 @@ struct drm_sched_fence {
>           */
>  	struct dma_fence		finished;
>  
> +	/**
> +	 * @deadline: deadline set on &drm_sched_fence.finished which
> +	 * potentially needs to be propagated to &drm_sched_fence.parent
> +	 */
> +	ktime_t				deadline;
> +
>          /**
>           * @parent: the fence returned by &drm_sched_backend_ops.run_job
>           * when scheduling the job on hardware. We signal the
> @@ -505,6 +511,8 @@ void drm_sched_entity_set_priority(struct drm_sched_entity *entity,
>  				   enum drm_sched_priority priority);
>  bool drm_sched_entity_is_ready(struct drm_sched_entity *entity);
>  
> +void drm_sched_fence_set_parent(struct drm_sched_fence *s_fence,
> +				struct dma_fence *fence);
>  struct drm_sched_fence *drm_sched_fence_alloc(
>  	struct drm_sched_entity *s_entity, void *owner);
>  void drm_sched_fence_init(struct drm_sched_fence *fence,
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
