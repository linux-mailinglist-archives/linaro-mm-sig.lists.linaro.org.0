Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A69341400A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 05:28:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC70C618D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 03:28:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2ACDA617B3; Wed, 22 Sep 2021 03:28:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5CDF61754;
	Wed, 22 Sep 2021 03:28:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6CD6A60B35
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 03:28:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6094761754; Wed, 22 Sep 2021 03:28:13 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 55B1C60B35
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 03:28:11 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id i23so2635626wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 20:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bNzxzcGkzoMof7C2440I1dX8wC7/bp4LkDYjA0YjJhE=;
 b=MPdSqETRs1lV1JsUQ/VMZeO8Pdo4BP5IXiD2QMo4yK6HIdqgqh8qEzzNrAv+4yUeLU
 hz/pALicHy0SBrhkH8a/nfirnWfi29sArw7Z8/60fp5ZRWOHtZbcR6LtVwRnTm2nul6e
 l3zt/aNp95FQmf3uw9yD7WDb0IBe52T9rBFqrs9bEsP6nvl1jidyYEl+tMuTHL+7r8Na
 WcdZnsLfMA95yhqOIoNGCVpkJ7x3QsyAtDfZMHvnAUA8hL2vm9ITuHcbx0u29WOBVtBg
 pz74FUd7t5gFMfdoLDjckM3edaDe5E+joDM0CCiAKGQZwYpLFF2iFAnK6vlPwldd8CfU
 2Aaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bNzxzcGkzoMof7C2440I1dX8wC7/bp4LkDYjA0YjJhE=;
 b=SRSjJHFoh2gwqAybJXXUU16nIuoXYHLDt1d/dj7yoYHNDKxbgdGYqFpyNbkmo/sNDd
 SMbddts7e3aXuvZ0KXeKbSriQDYGpNlRsm87jmAUxoOB2+pjb8UHQ34osuklOQTCohDQ
 KNOwKNoa8zYTeG+wD1SQe60qDGgmtDy74V646iZgnciA99heME5q5KFUqni0i6MKhFcF
 7spwQsQo13aFh8izzhV0EYG6+UenIf3HDTaRPB5pY21RefhoEcuoCW59mKooMP9GKa4/
 WdpF5/kxMxvaSHqp217BOBK/trXzt244DXb7LZ5cw+Z2GObx84RJY7N6mT9VZMiLP3tE
 qMDg==
X-Gm-Message-State: AOAM531z2fC36cjvNZw7EPSFYMrWY/cHaC1EP0RmNJV+zktFFhNkOSu5
 bV/KcfK4vVtme7Love8fwVECyfB7/B9xpzjsZog=
X-Google-Smtp-Source: ABdhPJyR/i+6gXoXMoh5C9/CRaIMS84O3Q6Yqr7pNoShdKJywyxY7EGVnx3hsDr6Dm7WkY69wmbnWggL4nzncaJgGwA=
X-Received: by 2002:a05:600c:1d16:: with SMTP id
 l22mr6332278wms.101.1632281290205; 
 Tue, 21 Sep 2021 20:28:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-5-robdclark@gmail.com>
 <101628ea-23c9-4bc0-5abc-a5b71b0fccc1@amd.com>
 <CAF6AEGt+jiJLaTDVnnVrZm-766OhPfj9wESJxP-FrX3S_c67gQ@mail.gmail.com>
 <d8f43401-c673-b9ce-d5ca-090fec2cb4c3@amd.com>
In-Reply-To: <d8f43401-c673-b9ce-d5ca-090fec2cb4c3@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 21 Sep 2021 20:32:41 -0700
Message-ID: <CAF6AEGsnN8sEeXuefB--pDApXeWYR2RVss=jUnz0ORh68SBP1A@mail.gmail.com>
To: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
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
 Jack Zhang <Jack.Zhang1@amd.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Pekka Paalanen <ppaalanen@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tian Tao <tiantao6@hisilicon.com>, Steven Price <steven.price@arm.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Sep 21, 2021 at 7:18 PM Andrey Grodzovsky
<andrey.grodzovsky@amd.com> wrote:
>
>
> On 2021-09-21 4:47 p.m., Rob Clark wrote:
> > On Tue, Sep 21, 2021 at 1:09 PM Andrey Grodzovsky
> > <andrey.grodzovsky@amd.com> wrote:
> >> On 2021-09-03 2:47 p.m., Rob Clark wrote:
> >>
> >>> From: Rob Clark <robdclark@chromium.org>
> >>>
> >>> As the finished fence is the one that is exposed to userspace, and
> >>> therefore the one that other operations, like atomic update, would
> >>> block on, we need to propagate the deadline from from the finished
> >>> fence to the actual hw fence.
> >>>
> >>> v2: Split into drm_sched_fence_set_parent() (ckoenig)
> >>>
> >>> Signed-off-by: Rob Clark <robdclark@chromium.org>
> >>> ---
> >>>    drivers/gpu/drm/scheduler/sched_fence.c | 34 +++++++++++++++++++++++++
> >>>    drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
> >>>    include/drm/gpu_scheduler.h             |  8 ++++++
> >>>    3 files changed, 43 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/gpu/drm/scheduler/sched_fence.c
> >>> index bcea035cf4c6..4fc41a71d1c7 100644
> >>> --- a/drivers/gpu/drm/scheduler/sched_fence.c
> >>> +++ b/drivers/gpu/drm/scheduler/sched_fence.c
> >>> @@ -128,6 +128,30 @@ static void drm_sched_fence_release_finished(struct dma_fence *f)
> >>>        dma_fence_put(&fence->scheduled);
> >>>    }
> >>>
> >>> +static void drm_sched_fence_set_deadline_finished(struct dma_fence *f,
> >>> +                                               ktime_t deadline)
> >>> +{
> >>> +     struct drm_sched_fence *fence = to_drm_sched_fence(f);
> >>> +     unsigned long flags;
> >>> +
> >>> +     spin_lock_irqsave(&fence->lock, flags);
> >>> +
> >>> +     /* If we already have an earlier deadline, keep it: */
> >>> +     if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &f->flags) &&
> >>> +         ktime_before(fence->deadline, deadline)) {
> >>> +             spin_unlock_irqrestore(&fence->lock, flags);
> >>> +             return;
> >>> +     }
> >>> +
> >>> +     fence->deadline = deadline;
> >>> +     set_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &f->flags);
> >>> +
> >>> +     spin_unlock_irqrestore(&fence->lock, flags);
> >>> +
> >>> +     if (fence->parent)
> >>> +             dma_fence_set_deadline(fence->parent, deadline);
> >>> +}
> >>> +
> >>>    static const struct dma_fence_ops drm_sched_fence_ops_scheduled = {
> >>>        .get_driver_name = drm_sched_fence_get_driver_name,
> >>>        .get_timeline_name = drm_sched_fence_get_timeline_name,
> >>> @@ -138,6 +162,7 @@ static const struct dma_fence_ops drm_sched_fence_ops_finished = {
> >>>        .get_driver_name = drm_sched_fence_get_driver_name,
> >>>        .get_timeline_name = drm_sched_fence_get_timeline_name,
> >>>        .release = drm_sched_fence_release_finished,
> >>> +     .set_deadline = drm_sched_fence_set_deadline_finished,
> >>>    };
> >>>
> >>>    struct drm_sched_fence *to_drm_sched_fence(struct dma_fence *f)
> >>> @@ -152,6 +177,15 @@ struct drm_sched_fence *to_drm_sched_fence(struct dma_fence *f)
> >>>    }
> >>>    EXPORT_SYMBOL(to_drm_sched_fence);
> >>>
> >>> +void drm_sched_fence_set_parent(struct drm_sched_fence *s_fence,
> >>> +                             struct dma_fence *fence)
> >>> +{
> >>> +     s_fence->parent = dma_fence_get(fence);
> >>> +     if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
> >>> +                  &s_fence->finished.flags))
> >>> +             dma_fence_set_deadline(fence, s_fence->deadline);
> >>
> >> I believe above you should pass be s_fence->finished to
> >> dma_fence_set_deadline
> >> instead it fence which is the HW fence itself.
> > Hmm, unless this has changed recently with some patches I don't have,
> > s_fence->parent is the one signalled by hw, so it is the one we want
> > to set the deadline on
> >
> > BR,
> > -R
>
>
> No it didn't change. But then when exactly will
> drm_sched_fence_set_deadline_finished
> execute such that fence->parent != NULL ? In other words, I am not clear
> how propagation
> happens otherwise - if dma_fence_set_deadline is called with the HW
> fence then the assumption
> here is that driver provided driver specific
> dma_fence_ops.dma_fence_set_deadline callback executes
> but I was under impression that drm_sched_fence_set_deadline_finished is
> the one that propagates
> the deadline to the HW fence's callback and for it to execute
> dma_fence_set_deadline needs to be called
> with s_fence->finished.

Assuming I didn't screw up drm/msm conversion to scheduler,
&s_fence->finished is the one that will be returned to userspace.. and
later passed back to kernel for atomic commit (or to the compositor).
So it is the one that fence->set_deadline() will be called on.  But
s_fence->parent is the actual hw fence that needs to know about the
deadline.  Depending on whether or not the job has been written into
hw ringbuffer or not, there are two cases:

1) not scheduled yet, s_fence will store the deadline and propagate it
later once s_fence->parent is known
2) already scheduled, in which case s_fence->finished.set_deadline
will propagate it directly to the real fence

BR,
-R

> Andrey
>
>
>
> >
> >> Andrey
> >>
> >>
> >>> +}
> >>> +
> >>>    struct drm_sched_fence *drm_sched_fence_alloc(struct drm_sched_entity *entity,
> >>>                                              void *owner)
> >>>    {
> >>> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> >>> index 595e47ff7d06..27bf0ac0625f 100644
> >>> --- a/drivers/gpu/drm/scheduler/sched_main.c
> >>> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> >>> @@ -978,7 +978,7 @@ static int drm_sched_main(void *param)
> >>>                drm_sched_fence_scheduled(s_fence);
> >>>
> >>>                if (!IS_ERR_OR_NULL(fence)) {
> >>> -                     s_fence->parent = dma_fence_get(fence);
> >>> +                     drm_sched_fence_set_parent(s_fence, fence);
> >>>                        r = dma_fence_add_callback(fence, &sched_job->cb,
> >>>                                                   drm_sched_job_done_cb);
> >>>                        if (r == -ENOENT)
> >>> diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> >>> index 7f77a455722c..158ddd662469 100644
> >>> --- a/include/drm/gpu_scheduler.h
> >>> +++ b/include/drm/gpu_scheduler.h
> >>> @@ -238,6 +238,12 @@ struct drm_sched_fence {
> >>>             */
> >>>        struct dma_fence                finished;
> >>>
> >>> +     /**
> >>> +      * @deadline: deadline set on &drm_sched_fence.finished which
> >>> +      * potentially needs to be propagated to &drm_sched_fence.parent
> >>> +      */
> >>> +     ktime_t                         deadline;
> >>> +
> >>>            /**
> >>>             * @parent: the fence returned by &drm_sched_backend_ops.run_job
> >>>             * when scheduling the job on hardware. We signal the
> >>> @@ -505,6 +511,8 @@ void drm_sched_entity_set_priority(struct drm_sched_entity *entity,
> >>>                                   enum drm_sched_priority priority);
> >>>    bool drm_sched_entity_is_ready(struct drm_sched_entity *entity);
> >>>
> >>> +void drm_sched_fence_set_parent(struct drm_sched_fence *s_fence,
> >>> +                             struct dma_fence *fence);
> >>>    struct drm_sched_fence *drm_sched_fence_alloc(
> >>>        struct drm_sched_entity *s_entity, void *owner);
> >>>    void drm_sched_fence_init(struct drm_sched_fence *fence,
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
