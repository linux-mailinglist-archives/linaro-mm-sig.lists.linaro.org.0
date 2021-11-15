Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DDE450A23
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Nov 2021 17:52:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C684760C34
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Nov 2021 16:52:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 52F7060C36; Mon, 15 Nov 2021 16:52:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BF7860585;
	Mon, 15 Nov 2021 16:52:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D1F7D6033B
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Nov 2021 16:51:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C3BF760585; Mon, 15 Nov 2021 16:51:59 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id B91376033B
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Nov 2021 16:51:57 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id u18so32018004wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Nov 2021 08:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RKd2pRB8fSdS047hoIb6ruh0PAY2wH+MuMJyJi0qh8Y=;
 b=oHmJJ/phplareYArYdfR2MDVmPvVGLarFW1FgCVP7BZZYXOm6wmvd52dFjnPSnZ7gr
 Vs+ne3GEJkHzzG0pReaw5qJlypCNJNmHbFnQrsgbz6xJGN4CAGovVdUKnMXYhuG5JNmU
 oT9EBuJ5cADTofuOxPyEL55PbO0uX4VaGmHME7zgG8bimXG1tbOv6J9J4JZ0RMGiCrwl
 hYYkiVgXIvZglTO89g32AvEfLfKqmRm+72iU+EDEjlfAwaOogwh30DN75/IxYfT5va4u
 Zla9jZ/97gwRADiUxpX4zewL56IjbkYNn8Y+rzzPc72uf/xP0jbUvsCyn12vtaWuoxcJ
 vsTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RKd2pRB8fSdS047hoIb6ruh0PAY2wH+MuMJyJi0qh8Y=;
 b=Cvbtt5w5GuyRWjkWVR+Rznhiebvy85YinEKiRbgC3SDo1aJL6bWDXeVBGhfJRR3c0F
 1+5TUZfW49pr5lLvTtvHbpaLLNYweAC5cxXNt64a7CVeGZlfuMrPgG0s5qAgrBXgmxaM
 PQ5EARUov6Qf+jmqiBnI8v7wWyUBCKgkGjyLKJNbuqyoxfue/4cifMlQIEXLW6QLgNlN
 s8FEPqxBgL0O8BFkFcJR48Ilo0CeatTnueAW5KswK8O13uFRHbMKFAkAp1IIu6YNZ/ip
 Bh8OlLiNaGS1O48cqA6T9UzRN6SHHOZI5jyBcAMZF7rsBUEpQDXLr6wUQ7InS3L4N6lf
 JQ3g==
X-Gm-Message-State: AOAM533XMo/20nNF7IurspNgHBhk55J03XCiOUX2TSMiFtfPxG3GCmWh
 8rj0DwNRj/ILI2L3DGto90LX5P5XtcM2ENf70jc=
X-Google-Smtp-Source: ABdhPJyuuyKG6QtOr+H3m8Rh2OSkyJs8SnWk23FSkytQp1mR6UI6MYvj43VD4bI4gg0pLlhlOp1UzMpXB6EJw2mF7tk=
X-Received: by 2002:a05:6000:1862:: with SMTP id
 d2mr474289wri.251.1636995116702; 
 Mon, 15 Nov 2021 08:51:56 -0800 (PST)
MIME-Version: 1.0
References: <20211111192457.747899-1-robdclark@gmail.com>
 <20211111192457.747899-3-robdclark@gmail.com>
 <36c9f669-c2d2-8a63-db96-31165caeeffb@codeaurora.org>
In-Reply-To: <36c9f669-c2d2-8a63-db96-31165caeeffb@codeaurora.org>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 15 Nov 2021 08:56:59 -0800
Message-ID: <CAF6AEGvMf2pQO9LmUanOGzWgU34=gO3ZPPH=6dea=AvfavWTVg@mail.gmail.com>
To: Akhil P Oommen <akhilpo@codeaurora.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] drm/msm: Restore error return on
 invalid fence
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
 freedreno <freedreno@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sean Paul <sean@poorly.run>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Nov 15, 2021 at 6:43 AM Akhil P Oommen <akhilpo@codeaurora.org> wrote:
>
> On 11/12/2021 12:54 AM, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > When converting to use an idr to map userspace fence seqno values back
> > to a dma_fence, we lost the error return when userspace passes seqno
> > that is larger than the last submitted fence.  Restore this check.
> >
> > Reported-by: Akhil P Oommen <akhilpo@codeaurora.org>
> > Fixes: a61acbbe9cf8 ("drm/msm: Track "seqno" fences by idr")
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> > Note: I will rebase "drm/msm: Handle fence rollover" on top of this,
> > to simplify backporting this patch to stable kernels
> >
> >   drivers/gpu/drm/msm/msm_drv.c        | 6 ++++++
> >   drivers/gpu/drm/msm/msm_gem_submit.c | 1 +
> >   drivers/gpu/drm/msm/msm_gpu.h        | 3 +++
> >   3 files changed, 10 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
> > index cb14d997c174..56500eb5219e 100644
> > --- a/drivers/gpu/drm/msm/msm_drv.c
> > +++ b/drivers/gpu/drm/msm/msm_drv.c
> > @@ -967,6 +967,12 @@ static int wait_fence(struct msm_gpu_submitqueue *queue, uint32_t fence_id,
> >       struct dma_fence *fence;
> >       int ret;
> >
> > +     if (fence_id > queue->last_fence) {
>
> But fence_id can wrap around and then this check won't be valid.

that is correct, but see my note about rebasing "drm/msm: Handle fence
rollover" on top of this patch, so this patch could be more easily
cherry-picked to stable/lts branches

BR,
-R

> -Akhil.
>
> > +             DRM_ERROR_RATELIMITED("waiting on invalid fence: %u (of %u)\n",
> > +                                   fence_id, queue->last_fence);
> > +             return -EINVAL;
> > +     }
> > +
> >       /*
> >        * Map submitqueue scoped "seqno" (which is actually an idr key)
> >        * back to underlying dma-fence
> > diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
> > index 151d19e4453c..a38f23be497d 100644
> > --- a/drivers/gpu/drm/msm/msm_gem_submit.c
> > +++ b/drivers/gpu/drm/msm/msm_gem_submit.c
> > @@ -911,6 +911,7 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
> >       drm_sched_entity_push_job(&submit->base, queue->entity);
> >
> >       args->fence = submit->fence_id;
> > +     queue->last_fence = submit->fence_id;
> >
> >       msm_reset_syncobjs(syncobjs_to_reset, args->nr_in_syncobjs);
> >       msm_process_post_deps(post_deps, args->nr_out_syncobjs,
> > diff --git a/drivers/gpu/drm/msm/msm_gpu.h b/drivers/gpu/drm/msm/msm_gpu.h
> > index bd4e0024033e..e73a5bb03544 100644
> > --- a/drivers/gpu/drm/msm/msm_gpu.h
> > +++ b/drivers/gpu/drm/msm/msm_gpu.h
> > @@ -376,6 +376,8 @@ static inline int msm_gpu_convert_priority(struct msm_gpu *gpu, int prio,
> >    * @ring_nr:   the ringbuffer used by this submitqueue, which is determined
> >    *             by the submitqueue's priority
> >    * @faults:    the number of GPU hangs associated with this submitqueue
> > + * @last_fence: the sequence number of the last allocated fence (for error
> > + *             checking)
> >    * @ctx:       the per-drm_file context associated with the submitqueue (ie.
> >    *             which set of pgtables do submits jobs associated with the
> >    *             submitqueue use)
> > @@ -391,6 +393,7 @@ struct msm_gpu_submitqueue {
> >       u32 flags;
> >       u32 ring_nr;
> >       int faults;
> > +     uint32_t last_fence;
> >       struct msm_file_private *ctx;
> >       struct list_head node;
> >       struct idr fence_idr;
> >
>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
