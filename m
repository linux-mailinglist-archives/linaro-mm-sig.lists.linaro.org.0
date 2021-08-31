Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 238643FC747
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Aug 2021 14:31:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE4E560520
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Aug 2021 12:31:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 020A4623DC; Tue, 31 Aug 2021 12:31:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4504608C3;
	Tue, 31 Aug 2021 12:31:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 12926603EF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Aug 2021 12:31:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 102FD608C3; Tue, 31 Aug 2021 12:31:05 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 04B0660520
 for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Aug 2021 12:31:03 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id g18so19914385wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Aug 2021 05:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dPwVBmG2R68kYDTd5e1DRAQ5mYgkRgUgo/flpsQBqBA=;
 b=EjJ4fYuZiKjFmDYK2CU/cTC6uLVhZ45TGNl2Er7x9+OcW1v6Mz3g1l9KWbKKdqE/c2
 Ic3nvWiGGSCihpL/g+6Hs7LtrDLSn45G+nDiBnd3k/FetQSSkc0W1KKXD09I6Hv+6a18
 xPqMYcJmziEYmh+4wHQ3u5BB7JoHXJMllzyL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dPwVBmG2R68kYDTd5e1DRAQ5mYgkRgUgo/flpsQBqBA=;
 b=XE6HzAwmloW19EX1fjhsg2cma2fgvCuoQ0brCldhhDilQExFvYKbUruElj3Q2jUzRZ
 Bk7kB3GGvfWaEt6ojNU0JUbjk8zP/I33XxK5x1+US2miKeR1Zdq5L74u+E6w2PZ/YTq1
 28xo3T+IGvi5Nng7bSaeHrqJO+OtFCvR4yxN5CUvLYkmQhLzrO4sxczGOVuhPtNMdUnz
 RxY/cfqDMGxbZdYLbJRLTDO7VXWQT/tvV4uRQO4Osbz5DeleFHl6ZdkuQkxV+qVQbyD3
 CDSZ63TkFVD4fhQdM3wtiXp4Ki3AJrBZZnOKbd3InwQx7xAg2gu6FdfOZryhNocQGVAL
 LGXw==
X-Gm-Message-State: AOAM5316mmxvLOcHQeoHU9fRl3ptX3hDhfgh/1sxtdN59e/g8MBz0iXE
 i/zGagAAt8XKB4ejBGi3yNr0IA==
X-Google-Smtp-Source: ABdhPJxPSiHNW7YrPxrI+TKBRL1m2i726z6KB5RhokOwT56lUrRbv2OjxbIw3/vuoRigSASfnIv65w==
X-Received: by 2002:a5d:440d:: with SMTP id z13mr30931640wrq.216.1630413061982; 
 Tue, 31 Aug 2021 05:31:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m4sm2387901wml.28.2021.08.31.05.30.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 05:31:00 -0700 (PDT)
Date: Tue, 31 Aug 2021 14:30:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YS4hAhVPlyAWdX/n@phenom.ffwll.local>
References: <20210818105443.1578-1-christian.koenig@amd.com>
 <015fd5ed-9255-9c28-44f3-3c8dde90ebad@gmail.com>
 <YSdXEaBDpijEBx/6@phenom.ffwll.local>
 <0c150724-032f-b566-4f61-b4771bafe7a8@gmail.com>
 <YSlJwX0lNBSdj880@phenom.ffwll.local>
 <d41b682d-f4ec-b050-8f45-78b9a9ce944d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d41b682d-f4ec-b050-8f45-78b9a9ce944d@gmail.com>
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
 john.stultz@linaro.org, Daniel Vetter <daniel@ffwll.ch>, hridya@google.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Aug 30, 2021 at 08:28:49AM +0200, Christian K=F6nig wrote:
> Am 27.08.21 um 22:23 schrieb Daniel Vetter:
> > On Fri, Aug 27, 2021 at 11:07:58AM +0200, Christian K=F6nig wrote:
> > > Am 26.08.21 um 10:55 schrieb Daniel Vetter:
> > > > On Tue, Aug 24, 2021 at 10:12:24AM +0200, Christian K=F6nig wrote:
> > > > > Just a gentle ping. Daniel any more comments on this?
> > > > Still haven't seen a patch set to nuke the sw_sync igt tests. Other=
wise
> > > > this is just going to cause fails and reboots in our ci (we reboot =
on
> > > > taints).
> > > *sigh* can I at least print a warning without breaking the igt tests?
> > CI watches dmesg too ... it just doesn't force a reboot (which hurts run
> > rate really badly).
> > =

> > > > > I'm not sure if the second patch will cause trouble with any unit=
 test, but
> > > > > I'm willing to try it. We can always trivial revert it.
> > > > See above, remove the igts and we should be fine I think. I don't t=
hink
> > > > there's any selftests or kselftests, but checking that should be a =
quick
> > > > grep at most.
> > > Yeah, we don't have any selftests as far as I can see but this stuff =
is so
> > > interweaved with igt that it will be hard to remove I think.
> > > =

> > > A good bunch of the igt code seems to have been moved to using VGEM i=
nstead,
> > > but as far as I can see there is still plenty left relying on this.
> > > =

> > > Alternatively could we make the config option depend on CONFIG_DEBUG?
> > Hm I thought it was just down to sw_sync igt testcase, and everything e=
lse
> > is moved to vgem. Do we have more, or has more landed since I looked a
> > while ago?
> =

> The code under lib/sw_sync.c uses this and based on that lib/igt_dummyloa=
d.c
> defines an IGT_CORK_FENCE which is then used by at least:
> =

> tests/i915/gem_exec_fence.c
> tests/i915/gem_eio.c
> tests/i915/gem_exec_schedule.c
> tests/i915/gem_exec_balancer.c
> tests/i915/gem_ctx_shared.c
> tests/kms_busy.c
> =

> After that I've stoped looking deeper into it.

Uh crap, I totally missed this. This is a rather messy area of igt with a
pile of questionable tests and stuff ... No idea when we'll get around to
cleaning that up with all the other fires going on :-(
-Daniel

> =

> Christian.
> =

> > -Daniel
> > =

> > > Christian.
> > > =

> > > > -Daniel
> > > > =

> > > > > Thanks,
> > > > > Christian.
> > > > > =

> > > > > Am 18.08.21 um 12:54 schrieb Christian K=F6nig:
> > > > > > Only the DRM GPU scheduler, radeon and amdgpu where using them =
and they depend
> > > > > > on a non existing config option to actually emit some code.
> > > > > > =

> > > > > > v2: keep the signal path as is for now
> > > > > > =

> > > > > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > > > > ---
> > > > > >     drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c | 10 +---------
> > > > > >     drivers/gpu/drm/radeon/radeon_fence.c     | 24 ++++--------=
-----------
> > > > > >     drivers/gpu/drm/scheduler/sched_fence.c   | 18 ++----------=
-----
> > > > > >     include/linux/dma-fence.h                 | 22 ------------=
---------
> > > > > >     4 files changed, 7 insertions(+), 67 deletions(-)
> > > > > > =

> > > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c b/driver=
s/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > > > index 0b1c48590c43..c65994e382bd 100644
> > > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > > > @@ -246,7 +246,6 @@ bool amdgpu_fence_process(struct amdgpu_rin=
g *ring)
> > > > > >     	struct amdgpu_fence_driver *drv =3D &ring->fence_drv;
> > > > > >     	struct amdgpu_device *adev =3D ring->adev;
> > > > > >     	uint32_t seq, last_seq;
> > > > > > -	int r;
> > > > > >     	do {
> > > > > >     		last_seq =3D atomic_read(&ring->fence_drv.last_seq);
> > > > > > @@ -278,12 +277,7 @@ bool amdgpu_fence_process(struct amdgpu_ri=
ng *ring)
> > > > > >     		if (!fence)
> > > > > >     			continue;
> > > > > > -		r =3D dma_fence_signal(fence);
> > > > > > -		if (!r)
> > > > > > -			DMA_FENCE_TRACE(fence, "signaled from irq context\n");
> > > > > > -		else
> > > > > > -			BUG();
> > > > > > -
> > > > > > +		dma_fence_signal(fence);
> > > > > >     		dma_fence_put(fence);
> > > > > >     		pm_runtime_mark_last_busy(adev_to_drm(adev)->dev);
> > > > > >     		pm_runtime_put_autosuspend(adev_to_drm(adev)->dev);
> > > > > > @@ -639,8 +633,6 @@ static bool amdgpu_fence_enable_signaling(s=
truct dma_fence *f)
> > > > > >     	if (!timer_pending(&ring->fence_drv.fallback_timer))
> > > > > >     		amdgpu_fence_schedule_fallback(ring);
> > > > > > -	DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", ring->id=
x);
> > > > > > -
> > > > > >     	return true;
> > > > > >     }
> > > > > > diff --git a/drivers/gpu/drm/radeon/radeon_fence.c b/drivers/gp=
u/drm/radeon/radeon_fence.c
> > > > > > index 18f2c2e0dfb3..3f351d222cbb 100644
> > > > > > --- a/drivers/gpu/drm/radeon/radeon_fence.c
> > > > > > +++ b/drivers/gpu/drm/radeon/radeon_fence.c
> > > > > > @@ -176,18 +176,11 @@ static int radeon_fence_check_signaled(wa=
it_queue_entry_t *wait, unsigned mode,
> > > > > >     	 */
> > > > > >     	seq =3D atomic64_read(&fence->rdev->fence_drv[fence->ring]=
.last_seq);
> > > > > >     	if (seq >=3D fence->seq) {
> > > > > > -		int ret =3D dma_fence_signal_locked(&fence->base);
> > > > > > -
> > > > > > -		if (!ret)
> > > > > > -			DMA_FENCE_TRACE(&fence->base, "signaled from irq context\n"=
);
> > > > > > -		else
> > > > > > -			DMA_FENCE_TRACE(&fence->base, "was already signaled\n");
> > > > > > -
> > > > > > +		dma_fence_signal_locked(&fence->base);
> > > > > >     		radeon_irq_kms_sw_irq_put(fence->rdev, fence->ring);
> > > > > >     		__remove_wait_queue(&fence->rdev->fence_queue, &fence->fe=
nce_wake);
> > > > > >     		dma_fence_put(&fence->base);
> > > > > > -	} else
> > > > > > -		DMA_FENCE_TRACE(&fence->base, "pending\n");
> > > > > > +	}
> > > > > >     	return 0;
> > > > > >     }
> > > > > > @@ -422,8 +415,6 @@ static bool radeon_fence_enable_signaling(s=
truct dma_fence *f)
> > > > > >     	fence->fence_wake.func =3D radeon_fence_check_signaled;
> > > > > >     	__add_wait_queue(&rdev->fence_queue, &fence->fence_wake);
> > > > > >     	dma_fence_get(f);
> > > > > > -
> > > > > > -	DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", fence->r=
ing);
> > > > > >     	return true;
> > > > > >     }
> > > > > > @@ -441,11 +432,7 @@ bool radeon_fence_signaled(struct radeon_f=
ence *fence)
> > > > > >     		return true;
> > > > > >     	if (radeon_fence_seq_signaled(fence->rdev, fence->seq, fen=
ce->ring)) {
> > > > > > -		int ret;
> > > > > > -
> > > > > > -		ret =3D dma_fence_signal(&fence->base);
> > > > > > -		if (!ret)
> > > > > > -			DMA_FENCE_TRACE(&fence->base, "signaled from radeon_fence_s=
ignaled\n");
> > > > > > +		dma_fence_signal(&fence->base);
> > > > > >     		return true;
> > > > > >     	}
> > > > > >     	return false;
> > > > > > @@ -550,7 +537,6 @@ long radeon_fence_wait_timeout(struct radeo=
n_fence *fence, bool intr, long timeo
> > > > > >     {
> > > > > >     	uint64_t seq[RADEON_NUM_RINGS] =3D {};
> > > > > >     	long r;
> > > > > > -	int r_sig;
> > > > > >     	/*
> > > > > >     	 * This function should not be called on !radeon fences.
> > > > > > @@ -567,9 +553,7 @@ long radeon_fence_wait_timeout(struct radeo=
n_fence *fence, bool intr, long timeo
> > > > > >     		return r;
> > > > > >     	}
> > > > > > -	r_sig =3D dma_fence_signal(&fence->base);
> > > > > > -	if (!r_sig)
> > > > > > -		DMA_FENCE_TRACE(&fence->base, "signaled from fence_wait\n");
> > > > > > +	dma_fence_signal(&fence->base);
> > > > > >     	return r;
> > > > > >     }
> > > > > > diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/=
gpu/drm/scheduler/sched_fence.c
> > > > > > index 69de2c76731f..3736746c47bd 100644
> > > > > > --- a/drivers/gpu/drm/scheduler/sched_fence.c
> > > > > > +++ b/drivers/gpu/drm/scheduler/sched_fence.c
> > > > > > @@ -50,26 +50,12 @@ static void __exit drm_sched_fence_slab_fin=
i(void)
> > > > > >     void drm_sched_fence_scheduled(struct drm_sched_fence *fenc=
e)
> > > > > >     {
> > > > > > -	int ret =3D dma_fence_signal(&fence->scheduled);
> > > > > > -
> > > > > > -	if (!ret)
> > > > > > -		DMA_FENCE_TRACE(&fence->scheduled,
> > > > > > -				"signaled from irq context\n");
> > > > > > -	else
> > > > > > -		DMA_FENCE_TRACE(&fence->scheduled,
> > > > > > -				"was already signaled\n");
> > > > > > +	dma_fence_signal(&fence->scheduled);
> > > > > >     }
> > > > > >     void drm_sched_fence_finished(struct drm_sched_fence *fence)
> > > > > >     {
> > > > > > -	int ret =3D dma_fence_signal(&fence->finished);
> > > > > > -
> > > > > > -	if (!ret)
> > > > > > -		DMA_FENCE_TRACE(&fence->finished,
> > > > > > -				"signaled from irq context\n");
> > > > > > -	else
> > > > > > -		DMA_FENCE_TRACE(&fence->finished,
> > > > > > -				"was already signaled\n");
> > > > > > +	dma_fence_signal(&fence->finished);
> > > > > >     }
> > > > > >     static const char *drm_sched_fence_get_driver_name(struct d=
ma_fence *fence)
> > > > > > diff --git a/include/linux/dma-fence.h b/include/linux/dma-fenc=
e.h
> > > > > > index 6ffb4b2c6371..4cc119ab272f 100644
> > > > > > --- a/include/linux/dma-fence.h
> > > > > > +++ b/include/linux/dma-fence.h
> > > > > > @@ -590,26 +590,4 @@ struct dma_fence *dma_fence_get_stub(void);
> > > > > >     struct dma_fence *dma_fence_allocate_private_stub(void);
> > > > > >     u64 dma_fence_context_alloc(unsigned num);
> > > > > > -#define DMA_FENCE_TRACE(f, fmt, args...) \
> > > > > > -	do {								\
> > > > > > -		struct dma_fence *__ff =3D (f);				\
> > > > > > -		if (IS_ENABLED(CONFIG_DMA_FENCE_TRACE))			\
> > > > > > -			pr_info("f %llu#%llu: " fmt,			\
> > > > > > -				__ff->context, __ff->seqno, ##args);	\
> > > > > > -	} while (0)
> > > > > > -
> > > > > > -#define DMA_FENCE_WARN(f, fmt, args...) \
> > > > > > -	do {								\
> > > > > > -		struct dma_fence *__ff =3D (f);				\
> > > > > > -		pr_warn("f %llu#%llu: " fmt, __ff->context, __ff->seqno,\
> > > > > > -			 ##args);					\
> > > > > > -	} while (0)
> > > > > > -
> > > > > > -#define DMA_FENCE_ERR(f, fmt, args...) \
> > > > > > -	do {								\
> > > > > > -		struct dma_fence *__ff =3D (f);				\
> > > > > > -		pr_err("f %llu#%llu: " fmt, __ff->context, __ff->seqno,	\
> > > > > > -			##args);					\
> > > > > > -	} while (0)
> > > > > > -
> > > > > >     #endif /* __LINUX_DMA_FENCE_H */
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
