Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F163D2065
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 11:08:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F413D60B4F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 09:08:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CAC5160A94; Thu, 22 Jul 2021 09:08:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC5C960B4F;
	Thu, 22 Jul 2021 09:08:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 16B7860A94
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 09:08:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0AB9E60B4F; Thu, 22 Jul 2021 09:08:33 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id EBB2660A94
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 09:08:30 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 q18-20020a1ce9120000b02901f259f3a250so2519352wmc.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 02:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=UB0wnLb1c1u3rZTJdPSDCH3l/+H3ml4Em3ZitbFw9QE=;
 b=i3EosJ+DFtXpnOFEHZDpRM51yXTvBBXgFJ4WAtey1BUZtBZdWU2GH4eQ2VsVbvuaEf
 fO7wbEZ8Voyf5KR6bCCTzV+NkvFJCMoT5CunobC5R1MBuzV32u29KSx5CbcahiB0JC81
 QgJZ2Nl60vMrjBWKgEkyLhdB5dZeYl7AVOYLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=UB0wnLb1c1u3rZTJdPSDCH3l/+H3ml4Em3ZitbFw9QE=;
 b=aYKARJHLJVb33Ls3HHdD8i2ayjNn8EiXFvw2qo3sjmxIhJoHLN+RqkmV1kOjHCp81I
 uB90X+2V5SczsgBJH14JsePKljIsvlJlAk3l1rUo5/E0zxgWpWJ2OzOf+cC870iXuC4C
 7iHft0thioFFQg50VZRwTXeoejUX/xw+07IdTlU7TKOXU5tbvFAlV22MnW290PuvNh6g
 klgjadF5zc5J1V84D2/GmqPGcT59RNuRCmN0XSXujRhSu6bdwEJxA5gBV4JzggUldN8s
 73Dvf6TbE4afAy2OKLyAFMwjBHgg7s80euqbKs3WJCXWN5UBItQ6t1KaGv0QnWDzOs7J
 g0Fw==
X-Gm-Message-State: AOAM5315fzvzVj9q6v4uifXIANT7YmQyZh3PkHCLXVY2m+qazB2+4O1Q
 uhBuZERFzITRPNFZlBrJ/egpnw==
X-Google-Smtp-Source: ABdhPJzpcmVsFP8n6h90tCKGkFWNhQIYYt2FS89jOONLHEH0e+rPqojhTedWj7Ma0ZaCXQdEUKlzeA==
X-Received: by 2002:a1c:9886:: with SMTP id
 a128mr42089950wme.150.1626944909765; 
 Thu, 22 Jul 2021 02:08:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p4sm29948823wrt.23.2021.07.22.02.08.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 02:08:29 -0700 (PDT)
Date: Thu, 22 Jul 2021 11:08:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YPk1izQFR+tRV8js@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <ckoenig.leichtzumerken@gmail.com>, 
 Rob Clark <robdclark@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Rob Clark <robdclark@chromium.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sean Paul <sean@poorly.run>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <20210720150716.1213775-1-robdclark@gmail.com>
 <60ffb6f3-e932-d9af-3b90-81adf0c15250@gmail.com>
 <CAF6AEGtOW3EjZWo36ij8U1om=gAqvg8CSkJJq2GkyHFGWUH4kQ@mail.gmail.com>
 <CAKMK7uF1=Y6_9znGoWG8GrteXBBRmyW8C3bFE+eJQqOj0A1buA@mail.gmail.com>
 <CAF6AEGsOVPdMkXwU9C+nDfQpPThveJ2A0jbXi43RRkkJKtnz3w@mail.gmail.com>
 <CAKMK7uHMXFqic=9APJrSf6totB8nGZTDe4x8+sv-drmV4Q+4Bg@mail.gmail.com>
 <CAF6AEGsKoucxt4a2pcdQM9+L0+YU-6TcAt8eF=3ur169646Jhw@mail.gmail.com>
 <YPhvein5e8do2AR+@phenom.ffwll.local>
 <113b5858-9020-d1c1-292b-96b7f9cc717a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <113b5858-9020-d1c1-292b-96b7f9cc717a@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/msm: Add fence->wait() op
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
Cc: Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sean Paul <sean@poorly.run>, Rob Clark <robdclark@gmail.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Jul 22, 2021 at 10:42:26AM +0200, Christian K=F6nig wrote:
> Am 21.07.21 um 21:03 schrieb Daniel Vetter:
> > On Wed, Jul 21, 2021 at 09:34:43AM -0700, Rob Clark wrote:
> > > On Wed, Jul 21, 2021 at 12:59 AM Daniel Vetter <daniel@ffwll.ch> wrot=
e:
> > > > On Wed, Jul 21, 2021 at 12:32 AM Rob Clark <robdclark@gmail.com> wr=
ote:
> > > > > On Tue, Jul 20, 2021 at 1:55 PM Daniel Vetter <daniel@ffwll.ch> w=
rote:
> > > > > > On Tue, Jul 20, 2021 at 8:26 PM Rob Clark <robdclark@gmail.com>=
 wrote:
> > > > > > > On Tue, Jul 20, 2021 at 11:03 AM Christian K=F6nig
> > > > > > > <ckoenig.leichtzumerken@gmail.com> wrote:
> > > > > > > > Hi Rob,
> > > > > > > > =

> > > > > > > > Am 20.07.21 um 17:07 schrieb Rob Clark:
> > > > > > > > > From: Rob Clark <robdclark@chromium.org>
> > > > > > > > > =

> > > > > > > > > Somehow we had neither ->wait() nor dma_fence_signal() ca=
lls, and no
> > > > > > > > > one noticed.  Oops.
> > > > > > > > =

> > > > > > > > I'm not sure if that is a good idea.
> > > > > > > > =

> > > > > > > > The dma_fence->wait() callback is pretty much deprecated an=
d should not
> > > > > > > > be used any more.
> > > > > > > > =

> > > > > > > > What exactly do you need that for?
> > > > > > > Well, the alternative is to track the set of fences which have
> > > > > > > signalling enabled, and then figure out which ones to signal,=
 which
> > > > > > > seems like a lot more work, vs just re-purposing the wait
> > > > > > > implementation we already have for non-dma_fence cases ;-)
> > > > > > > =

> > > > > > > Why is the ->wait() callback (pretty much) deprecated?
> > > > > > Because if you need it that means for your driver dma_fence_add=
_cb is
> > > > > > broken, which means a _lot_ of things don't work. Like dma_buf =
poll
> > > > > > (compositors have patches to start using that), and I think
> > > > > > drm/scheduler also becomes rather unhappy.
> > > > > I'm starting to page back in how this works.. fence cb's aren't b=
roken
> > > > > (which is also why dma_fence_wait() was not completely broken),
> > > > > because in retire_submits() we call
> > > > > dma_fence_is_signaled(submit->hw_fence).
> > > > > =

> > > > > But the reason that the custom wait function cleans up a tiny bit=
 of
> > > > > jank is that the wait_queue_head_t gets signaled earlier, before =
we
> > > > > start iterating the submits and doing all that retire_submit() st=
uff
> > > > > (unpin/unref bo's, etc).  I suppose I could just split things up =
to
> > > > > call dma_fence_signal() earlier, and *then* do the retire_submits=
()
> > > > > stuff.
> > > > Yeah reducing the latency there sounds like a good idea.
> > > > -Daniel
> > > > =

> > > Hmm, no, turns out that isn't the problem.. or, well, it is probably a
> > > good idea to call drm_fence_signal() earlier.  But it seems like
> > > waking up from wait_event_* is faster than wake_up_state(wait->task,
> > > TASK_NORMAL).  I suppose the wake_up_state() approach still needs for
> > > the scheduler to get around to schedule the runnable task.
> =

> As far as I know wake_up_state() tries to run the thread on the CPU it was
> scheduled last, while wait_event_* makes the thread run on the CPU who
> issues the wake by default.
> =

> And yes I've also noticed this already and it was one of the reason why I
> suggested to use a wait_queue instead of the hand wired dma_fence_wait
> implementation.

The first versions had used wait_queue, but iirc we had some issues with
the callbacks and stuff and that was the reasons for hand-rolling. Or
maybe it was the integration of the lockless fastpath for
dma_fence_is_signalled().

> > > So for now, I'm going back to my own wait function (plus earlier
> > > drm_fence_signal())
> > > =

> > > Before removing dma_fence_opps::wait(), I guess we want to re-think
> > > dma_fence_default_wait().. but I think that would require a
> > > dma_fence_context base class (rather than just a raw integer).
> > Uh that's not great ... can't we fix this instead of papering over it in
> > drivers? Aside from maybe different wakeup flags it all is supposed to
> > work exactly the same underneath, and whether using a wait queue or not
> > really shouldn't matter.
> =

> Well it would have been nicer if we used the existing infrastructure inst=
ead
> of re-inventing stuff for dma_fence, but that chance is long gone.
> =

> And you don't need a dma_fence_context base class, but rather just a flag=
 in
> the dma_fence_ops if you want to change the behavior.

If there's something broken we should just fix it, not force everyone to
set a random flag. dma_fence work like special wait_queues, so if we
differ then we should go back to that.
-Daniel

> =

> Regards,
> Christian.
> =

> > -Daniel
> > =

> > > BR,
> > > -R
> > > =

> > > > > BR,
> > > > > -R
> > > > > =

> > > > > > It essentially exists only for old drivers where ->enable_signa=
lling
> > > > > > is unreliable and we paper over that with a retry loop in ->wai=
t and
> > > > > > pray no one notices that it's too butchered. The proper fix is =
to have
> > > > > > a driver thread to guarantee that ->enable_signalling works rel=
iable,
> > > > > > so you don't need a ->wait.
> > > > > > =

> > > > > > Can you type up a kerneldoc patch for dma_fence_ops->wait to ha=
mmer
> > > > > > this in please?
> > > > > > -Daniel
> > > > > > =

> > > > > > > BR,
> > > > > > > -R
> > > > > > > =

> > > > > > > > Regards,
> > > > > > > > Christian.
> > > > > > > > =

> > > > > > > > > Note that this removes the !timeout case, which has not b=
een used in
> > > > > > > > > a long time.
> > > > > > > > =

> > > > > > > > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > > > > > > > ---
> > > > > > > > >    drivers/gpu/drm/msm/msm_fence.c | 59 +++++++++++++++++=
++--------------
> > > > > > > > >    1 file changed, 34 insertions(+), 25 deletions(-)
> > > > > > > > > =

> > > > > > > > > diff --git a/drivers/gpu/drm/msm/msm_fence.c b/drivers/gp=
u/drm/msm/msm_fence.c
> > > > > > > > > index cd59a5918038..8ee96b90ded6 100644
> > > > > > > > > --- a/drivers/gpu/drm/msm/msm_fence.c
> > > > > > > > > +++ b/drivers/gpu/drm/msm/msm_fence.c
> > > > > > > > > @@ -38,11 +38,10 @@ static inline bool fence_completed(st=
ruct msm_fence_context *fctx, uint32_t fenc
> > > > > > > > >        return (int32_t)(fctx->completed_fence - fence) >=
=3D 0;
> > > > > > > > >    }
> > > > > > > > > =

> > > > > > > > > -/* legacy path for WAIT_FENCE ioctl: */
> > > > > > > > > -int msm_wait_fence(struct msm_fence_context *fctx, uint3=
2_t fence,
> > > > > > > > > -             ktime_t *timeout, bool interruptible)
> > > > > > > > > +static signed long wait_fence(struct msm_fence_context *=
fctx, uint32_t fence,
> > > > > > > > > +             signed long remaining_jiffies, bool interru=
ptible)
> > > > > > > > >    {
> > > > > > > > > -     int ret;
> > > > > > > > > +     signed long ret;
> > > > > > > > > =

> > > > > > > > >        if (fence > fctx->last_fence) {
> > > > > > > > >                DRM_ERROR_RATELIMITED("%s: waiting on inva=
lid fence: %u (of %u)\n",
> > > > > > > > > @@ -50,33 +49,34 @@ int msm_wait_fence(struct msm_fence_c=
ontext *fctx, uint32_t fence,
> > > > > > > > >                return -EINVAL;
> > > > > > > > >        }
> > > > > > > > > =

> > > > > > > > > -     if (!timeout) {
> > > > > > > > > -             /* no-wait: */
> > > > > > > > > -             ret =3D fence_completed(fctx, fence) ? 0 : =
-EBUSY;
> > > > > > > > > +     if (interruptible) {
> > > > > > > > > +             ret =3D wait_event_interruptible_timeout(fc=
tx->event,
> > > > > > > > > +                     fence_completed(fctx, fence),
> > > > > > > > > +                     remaining_jiffies);
> > > > > > > > >        } else {
> > > > > > > > > -             unsigned long remaining_jiffies =3D timeout=
_to_jiffies(timeout);
> > > > > > > > > -
> > > > > > > > > -             if (interruptible)
> > > > > > > > > -                     ret =3D wait_event_interruptible_ti=
meout(fctx->event,
> > > > > > > > > -                             fence_completed(fctx, fence=
),
> > > > > > > > > -                             remaining_jiffies);
> > > > > > > > > -             else
> > > > > > > > > -                     ret =3D wait_event_timeout(fctx->ev=
ent,
> > > > > > > > > -                             fence_completed(fctx, fence=
),
> > > > > > > > > -                             remaining_jiffies);
> > > > > > > > > -
> > > > > > > > > -             if (ret =3D=3D 0) {
> > > > > > > > > -                     DBG("timeout waiting for fence: %u =
(completed: %u)",
> > > > > > > > > -                                     fence, fctx->comple=
ted_fence);
> > > > > > > > > -                     ret =3D -ETIMEDOUT;
> > > > > > > > > -             } else if (ret !=3D -ERESTARTSYS) {
> > > > > > > > > -                     ret =3D 0;
> > > > > > > > > -             }
> > > > > > > > > +             ret =3D wait_event_timeout(fctx->event,
> > > > > > > > > +                     fence_completed(fctx, fence),
> > > > > > > > > +                     remaining_jiffies);
> > > > > > > > > +     }
> > > > > > > > > +
> > > > > > > > > +     if (ret =3D=3D 0) {
> > > > > > > > > +             DBG("timeout waiting for fence: %u (complet=
ed: %u)",
> > > > > > > > > +                             fence, fctx->completed_fenc=
e);
> > > > > > > > > +             ret =3D -ETIMEDOUT;
> > > > > > > > > +     } else if (ret !=3D -ERESTARTSYS) {
> > > > > > > > > +             ret =3D 0;
> > > > > > > > >        }
> > > > > > > > > =

> > > > > > > > >        return ret;
> > > > > > > > >    }
> > > > > > > > > =

> > > > > > > > > +/* legacy path for WAIT_FENCE ioctl: */
> > > > > > > > > +int msm_wait_fence(struct msm_fence_context *fctx, uint3=
2_t fence,
> > > > > > > > > +             ktime_t *timeout, bool interruptible)
> > > > > > > > > +{
> > > > > > > > > +     return wait_fence(fctx, fence, timeout_to_jiffies(t=
imeout), interruptible);
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > >    /* called from workqueue */
> > > > > > > > >    void msm_update_fence(struct msm_fence_context *fctx, =
uint32_t fence)
> > > > > > > > >    {
> > > > > > > > > @@ -114,10 +114,19 @@ static bool msm_fence_signaled(stru=
ct dma_fence *fence)
> > > > > > > > >        return fence_completed(f->fctx, f->base.seqno);
> > > > > > > > >    }
> > > > > > > > > =

> > > > > > > > > +static signed long msm_fence_wait(struct dma_fence *fenc=
e, bool intr,
> > > > > > > > > +             signed long timeout)
> > > > > > > > > +{
> > > > > > > > > +     struct msm_fence *f =3D to_msm_fence(fence);
> > > > > > > > > +
> > > > > > > > > +     return wait_fence(f->fctx, fence->seqno, timeout, i=
ntr);
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > >    static const struct dma_fence_ops msm_fence_ops =3D {
> > > > > > > > >        .get_driver_name =3D msm_fence_get_driver_name,
> > > > > > > > >        .get_timeline_name =3D msm_fence_get_timeline_name,
> > > > > > > > >        .signaled =3D msm_fence_signaled,
> > > > > > > > > +     .wait =3D msm_fence_wait,
> > > > > > > > >    };
> > > > > > > > > =

> > > > > > > > >    struct dma_fence *
> > > > > > =

> > > > > > =

> > > > > > --
> > > > > > Daniel Vetter
> > > > > > Software Engineer, Intel Corporation
> > > > > > http://blog.ffwll.ch
> > > > =

> > > > =

> > > > --
> > > > Daniel Vetter
> > > > Software Engineer, Intel Corporation
> > > > http://blog.ffwll.ch
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
