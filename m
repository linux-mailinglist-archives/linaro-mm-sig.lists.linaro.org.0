Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E713FA086
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Aug 2021 22:23:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B77E6323D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Aug 2021 20:23:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 815136314A; Fri, 27 Aug 2021 20:23:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF0FD61A49;
	Fri, 27 Aug 2021 20:23:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F3AAC610D0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Aug 2021 20:23:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D9E0661A49; Fri, 27 Aug 2021 20:23:34 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id CAD3F610D0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Aug 2021 20:23:32 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id b6so12140925wrh.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Aug 2021 13:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SH4smeHuT0xsWwZuM3q5Wjxs+0gdoVgjvGEw6S+uOoo=;
 b=WLBhfHVkDrF3VFCwexlhpWcwuv/mrfu+/ekY9lmus2oitDKeSoxbqBB9w/MecXp2Zt
 p/ixUDwyfgKEtgom7LaAhv6fPinlm1+awxG88V3jTfQORo/D6gvlDtrbW9lpf81x3DPa
 poup178NdlUdrpODAeRUsqbjhD51sVbVcvYDw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SH4smeHuT0xsWwZuM3q5Wjxs+0gdoVgjvGEw6S+uOoo=;
 b=NwtEWY4HFSxmOdbs4DoL9JZfB9z5iYK5D5XaFUUFcQu2P7CioirbayizhEpoNoEkx3
 bGfuCjAI2Fm62rr7Hu6g84il+27EEQrIC4I9xJy8ReXvRDh+8o9jI54UjXqlgcvp8dOY
 /ehhGB9CqxDcTuU+Ok+BbsZyUFnQbscsDAoyJ7csged8f5aDA0s3c6fPMFElNPlEup5A
 +pAZKpxJmF8hrj2LUyCvOYHMBfyE4/1HRJS2J82wOdEbdA2FBoR3IPECa2QK9HALC41g
 Ii3RwRtzxBKVbq9emMoSxY34LjyzY+8JcnhXj+tUhQ+E5/XhTkHSDpQE/KqUFFgxtu5E
 h0uQ==
X-Gm-Message-State: AOAM531lycsIGEaA4W7r2Gg0W3hRyv3JneVTv/fqYsZnIXHHwUC8iZBR
 T7Yyvsd7rUKyM4pGLuo3OHQvkQ==
X-Google-Smtp-Source: ABdhPJyXAVHKOTbeXJZ2GxqnjCZWlcj6hPfzvGK6QNK07JKxU+X8EPp3T/6Sq9RXo9QaoPCgmp0C0w==
X-Received: by 2002:adf:9f0c:: with SMTP id l12mr12861983wrf.146.1630095811632; 
 Fri, 27 Aug 2021 13:23:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a133sm12097302wme.5.2021.08.27.13.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Aug 2021 13:23:31 -0700 (PDT)
Date: Fri, 27 Aug 2021 22:23:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YSlJwX0lNBSdj880@phenom.ffwll.local>
References: <20210818105443.1578-1-christian.koenig@amd.com>
 <015fd5ed-9255-9c28-44f3-3c8dde90ebad@gmail.com>
 <YSdXEaBDpijEBx/6@phenom.ffwll.local>
 <0c150724-032f-b566-4f61-b4771bafe7a8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c150724-032f-b566-4f61-b4771bafe7a8@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
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

On Fri, Aug 27, 2021 at 11:07:58AM +0200, Christian K=F6nig wrote:
> Am 26.08.21 um 10:55 schrieb Daniel Vetter:
> > On Tue, Aug 24, 2021 at 10:12:24AM +0200, Christian K=F6nig wrote:
> > > Just a gentle ping. Daniel any more comments on this?
> > Still haven't seen a patch set to nuke the sw_sync igt tests. Otherwise
> > this is just going to cause fails and reboots in our ci (we reboot on
> > taints).
> =

> *sigh* can I at least print a warning without breaking the igt tests?

CI watches dmesg too ... it just doesn't force a reboot (which hurts run
rate really badly).

> > > I'm not sure if the second patch will cause trouble with any unit tes=
t, but
> > > I'm willing to try it. We can always trivial revert it.
> > See above, remove the igts and we should be fine I think. I don't think
> > there's any selftests or kselftests, but checking that should be a quick
> > grep at most.
> =

> Yeah, we don't have any selftests as far as I can see but this stuff is so
> interweaved with igt that it will be hard to remove I think.
> =

> A good bunch of the igt code seems to have been moved to using VGEM inste=
ad,
> but as far as I can see there is still plenty left relying on this.
> =

> Alternatively could we make the config option depend on CONFIG_DEBUG?

Hm I thought it was just down to sw_sync igt testcase, and everything else
is moved to vgem. Do we have more, or has more landed since I looked a
while ago?
-Daniel

> =

> Christian.
> =

> > -Daniel
> > =

> > > Thanks,
> > > Christian.
> > > =

> > > Am 18.08.21 um 12:54 schrieb Christian K=F6nig:
> > > > Only the DRM GPU scheduler, radeon and amdgpu where using them and =
they depend
> > > > on a non existing config option to actually emit some code.
> > > > =

> > > > v2: keep the signal path as is for now
> > > > =

> > > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > > ---
> > > >    drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c | 10 +---------
> > > >    drivers/gpu/drm/radeon/radeon_fence.c     | 24 ++++-------------=
------
> > > >    drivers/gpu/drm/scheduler/sched_fence.c   | 18 ++---------------
> > > >    include/linux/dma-fence.h                 | 22 -----------------=
----
> > > >    4 files changed, 7 insertions(+), 67 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c b/drivers/gp=
u/drm/amd/amdgpu/amdgpu_fence.c
> > > > index 0b1c48590c43..c65994e382bd 100644
> > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > @@ -246,7 +246,6 @@ bool amdgpu_fence_process(struct amdgpu_ring *r=
ing)
> > > >    	struct amdgpu_fence_driver *drv =3D &ring->fence_drv;
> > > >    	struct amdgpu_device *adev =3D ring->adev;
> > > >    	uint32_t seq, last_seq;
> > > > -	int r;
> > > >    	do {
> > > >    		last_seq =3D atomic_read(&ring->fence_drv.last_seq);
> > > > @@ -278,12 +277,7 @@ bool amdgpu_fence_process(struct amdgpu_ring *=
ring)
> > > >    		if (!fence)
> > > >    			continue;
> > > > -		r =3D dma_fence_signal(fence);
> > > > -		if (!r)
> > > > -			DMA_FENCE_TRACE(fence, "signaled from irq context\n");
> > > > -		else
> > > > -			BUG();
> > > > -
> > > > +		dma_fence_signal(fence);
> > > >    		dma_fence_put(fence);
> > > >    		pm_runtime_mark_last_busy(adev_to_drm(adev)->dev);
> > > >    		pm_runtime_put_autosuspend(adev_to_drm(adev)->dev);
> > > > @@ -639,8 +633,6 @@ static bool amdgpu_fence_enable_signaling(struc=
t dma_fence *f)
> > > >    	if (!timer_pending(&ring->fence_drv.fallback_timer))
> > > >    		amdgpu_fence_schedule_fallback(ring);
> > > > -	DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", ring->idx);
> > > > -
> > > >    	return true;
> > > >    }
> > > > diff --git a/drivers/gpu/drm/radeon/radeon_fence.c b/drivers/gpu/dr=
m/radeon/radeon_fence.c
> > > > index 18f2c2e0dfb3..3f351d222cbb 100644
> > > > --- a/drivers/gpu/drm/radeon/radeon_fence.c
> > > > +++ b/drivers/gpu/drm/radeon/radeon_fence.c
> > > > @@ -176,18 +176,11 @@ static int radeon_fence_check_signaled(wait_q=
ueue_entry_t *wait, unsigned mode,
> > > >    	 */
> > > >    	seq =3D atomic64_read(&fence->rdev->fence_drv[fence->ring].last=
_seq);
> > > >    	if (seq >=3D fence->seq) {
> > > > -		int ret =3D dma_fence_signal_locked(&fence->base);
> > > > -
> > > > -		if (!ret)
> > > > -			DMA_FENCE_TRACE(&fence->base, "signaled from irq context\n");
> > > > -		else
> > > > -			DMA_FENCE_TRACE(&fence->base, "was already signaled\n");
> > > > -
> > > > +		dma_fence_signal_locked(&fence->base);
> > > >    		radeon_irq_kms_sw_irq_put(fence->rdev, fence->ring);
> > > >    		__remove_wait_queue(&fence->rdev->fence_queue, &fence->fence_w=
ake);
> > > >    		dma_fence_put(&fence->base);
> > > > -	} else
> > > > -		DMA_FENCE_TRACE(&fence->base, "pending\n");
> > > > +	}
> > > >    	return 0;
> > > >    }
> > > > @@ -422,8 +415,6 @@ static bool radeon_fence_enable_signaling(struc=
t dma_fence *f)
> > > >    	fence->fence_wake.func =3D radeon_fence_check_signaled;
> > > >    	__add_wait_queue(&rdev->fence_queue, &fence->fence_wake);
> > > >    	dma_fence_get(f);
> > > > -
> > > > -	DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", fence->ring);
> > > >    	return true;
> > > >    }
> > > > @@ -441,11 +432,7 @@ bool radeon_fence_signaled(struct radeon_fence=
 *fence)
> > > >    		return true;
> > > >    	if (radeon_fence_seq_signaled(fence->rdev, fence->seq, fence->r=
ing)) {
> > > > -		int ret;
> > > > -
> > > > -		ret =3D dma_fence_signal(&fence->base);
> > > > -		if (!ret)
> > > > -			DMA_FENCE_TRACE(&fence->base, "signaled from radeon_fence_signa=
led\n");
> > > > +		dma_fence_signal(&fence->base);
> > > >    		return true;
> > > >    	}
> > > >    	return false;
> > > > @@ -550,7 +537,6 @@ long radeon_fence_wait_timeout(struct radeon_fe=
nce *fence, bool intr, long timeo
> > > >    {
> > > >    	uint64_t seq[RADEON_NUM_RINGS] =3D {};
> > > >    	long r;
> > > > -	int r_sig;
> > > >    	/*
> > > >    	 * This function should not be called on !radeon fences.
> > > > @@ -567,9 +553,7 @@ long radeon_fence_wait_timeout(struct radeon_fe=
nce *fence, bool intr, long timeo
> > > >    		return r;
> > > >    	}
> > > > -	r_sig =3D dma_fence_signal(&fence->base);
> > > > -	if (!r_sig)
> > > > -		DMA_FENCE_TRACE(&fence->base, "signaled from fence_wait\n");
> > > > +	dma_fence_signal(&fence->base);
> > > >    	return r;
> > > >    }
> > > > diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/gpu/=
drm/scheduler/sched_fence.c
> > > > index 69de2c76731f..3736746c47bd 100644
> > > > --- a/drivers/gpu/drm/scheduler/sched_fence.c
> > > > +++ b/drivers/gpu/drm/scheduler/sched_fence.c
> > > > @@ -50,26 +50,12 @@ static void __exit drm_sched_fence_slab_fini(vo=
id)
> > > >    void drm_sched_fence_scheduled(struct drm_sched_fence *fence)
> > > >    {
> > > > -	int ret =3D dma_fence_signal(&fence->scheduled);
> > > > -
> > > > -	if (!ret)
> > > > -		DMA_FENCE_TRACE(&fence->scheduled,
> > > > -				"signaled from irq context\n");
> > > > -	else
> > > > -		DMA_FENCE_TRACE(&fence->scheduled,
> > > > -				"was already signaled\n");
> > > > +	dma_fence_signal(&fence->scheduled);
> > > >    }
> > > >    void drm_sched_fence_finished(struct drm_sched_fence *fence)
> > > >    {
> > > > -	int ret =3D dma_fence_signal(&fence->finished);
> > > > -
> > > > -	if (!ret)
> > > > -		DMA_FENCE_TRACE(&fence->finished,
> > > > -				"signaled from irq context\n");
> > > > -	else
> > > > -		DMA_FENCE_TRACE(&fence->finished,
> > > > -				"was already signaled\n");
> > > > +	dma_fence_signal(&fence->finished);
> > > >    }
> > > >    static const char *drm_sched_fence_get_driver_name(struct dma_fe=
nce *fence)
> > > > diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> > > > index 6ffb4b2c6371..4cc119ab272f 100644
> > > > --- a/include/linux/dma-fence.h
> > > > +++ b/include/linux/dma-fence.h
> > > > @@ -590,26 +590,4 @@ struct dma_fence *dma_fence_get_stub(void);
> > > >    struct dma_fence *dma_fence_allocate_private_stub(void);
> > > >    u64 dma_fence_context_alloc(unsigned num);
> > > > -#define DMA_FENCE_TRACE(f, fmt, args...) \
> > > > -	do {								\
> > > > -		struct dma_fence *__ff =3D (f);				\
> > > > -		if (IS_ENABLED(CONFIG_DMA_FENCE_TRACE))			\
> > > > -			pr_info("f %llu#%llu: " fmt,			\
> > > > -				__ff->context, __ff->seqno, ##args);	\
> > > > -	} while (0)
> > > > -
> > > > -#define DMA_FENCE_WARN(f, fmt, args...) \
> > > > -	do {								\
> > > > -		struct dma_fence *__ff =3D (f);				\
> > > > -		pr_warn("f %llu#%llu: " fmt, __ff->context, __ff->seqno,\
> > > > -			 ##args);					\
> > > > -	} while (0)
> > > > -
> > > > -#define DMA_FENCE_ERR(f, fmt, args...) \
> > > > -	do {								\
> > > > -		struct dma_fence *__ff =3D (f);				\
> > > > -		pr_err("f %llu#%llu: " fmt, __ff->context, __ff->seqno,	\
> > > > -			##args);					\
> > > > -	} while (0)
> > > > -
> > > >    #endif /* __LINUX_DMA_FENCE_H */
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
