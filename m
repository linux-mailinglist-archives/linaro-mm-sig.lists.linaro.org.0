Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B9838B452
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 18:34:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE94D612A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 16:34:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B230A61394; Thu, 20 May 2021 16:34:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EC6361269;
	Thu, 20 May 2021 16:34:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AA0106124A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 16:34:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A550761269; Thu, 20 May 2021 16:34:12 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id 984F86124A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 16:34:10 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 z137-20020a1c7e8f0000b02901774f2a7dc4so5415143wmc.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 09:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=D/fC8cTjvNjAco9GQ5lMElWjnvmZVnjTOXVPAX+OC80=;
 b=lRzdwUQiyIC72DgMTpYMkcuSlY2LeVVmwy5VuSyIpEFfSZQBnUFZ/DKzZfZ6wMKKCG
 NJMBGuj3d1KUSHYEZiOzTA7Tvy5FDEyCQuscm8+sx+9IyWekNZtWU7ZFv4O5r0pwXUtH
 6fkJVOTCkOfp8POTQB+R9D5UTTjRbP+gB7sZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=D/fC8cTjvNjAco9GQ5lMElWjnvmZVnjTOXVPAX+OC80=;
 b=i4u6w2uWnYMk1itxh6IAv2CnfLl9HN4TGPnyVo+Rxcy19BRBdQ8f/ewtxT10gbiEd9
 jmDe2uiNNfYbs8WHlaEbZ0g0IdQlIa68tvaXiXPLHYGA4do/dnt//9EAH2R/F4GOb1lR
 8cMe2k06cM5aYOZ7xQv2tDyYTLvOOUVqFk7qIleTXpS4jgdEqcl+Is9jmT4pTtnFQtxr
 0GIErBJHYCZg70BcTZinFoUmRIbPIfNDNjgI52Za6uNboBOHJ88mM1YR+enluhCnYThd
 vWhtHMeAUiq1ySy54DhhBdDPWmSxfzoGJgLh45UUd9GVb8G1GCrgrMy60EAj8pMAdhmh
 m1Sw==
X-Gm-Message-State: AOAM531B6ChCoomKfofuKBzfL/f0dGLoMj8dpUSFcLDzUX/EdaeH+LW9
 zGy4kpjSVmQP3rlrArNgah+kpg==
X-Google-Smtp-Source: ABdhPJyhdMR3oFuRjaw5S9reOQX95e2IfiwqzbyiREbxH7yL0pX59nNF5rh34EwG77dVF6QQ6945+A==
X-Received: by 2002:a1c:5449:: with SMTP id p9mr5017481wmi.61.1621528449691;
 Thu, 20 May 2021 09:34:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g206sm9800386wme.16.2021.05.20.09.34.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 09:34:09 -0700 (PDT)
Date: Thu, 20 May 2021 18:34:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YKaPf3VLfjoZJRw7@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <ckoenig.leichtzumerken@gmail.com>, 
 Rob Clark <robdclark@gmail.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Rob Clark <robdclark@chromium.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <20210519183855.1523927-1-robdclark@gmail.com>
 <20210519183855.1523927-2-robdclark@gmail.com>
 <8dcdc8d5-176c-f0ad-0d54-6466e9e68a0a@amd.com>
 <CAF6AEGtg_VnxYrj94AfbAfViK1v8U0ZJyfJjS4taVLMF=YVy+w@mail.gmail.com>
 <d65acf46-4c3b-4903-6222-0b81915d355d@amd.com>
 <CAF6AEGvm1tFwpfyJrX1bTGoHg_wzKKLQvSk2qLHf3XeqvEzDPA@mail.gmail.com>
 <e8f3d71c-7025-deab-4dd7-14f3fa6a8810@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8f3d71c-7025-deab-4dd7-14f3fa6a8810@gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 1/3] dma-fence: Add boost fence op
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
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Clark <robdclark@gmail.com>, freedreno <freedreno@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, May 20, 2021 at 06:01:39PM +0200, Christian K=F6nig wrote:
> Am 20.05.21 um 16:54 schrieb Rob Clark:
> > On Thu, May 20, 2021 at 7:11 AM Christian K=F6nig
> > <christian.koenig@amd.com> wrote:
> > > =

> > > =

> > > Am 20.05.21 um 16:07 schrieb Rob Clark:
> > > > On Wed, May 19, 2021 at 11:47 PM Christian K=F6nig
> > > > <christian.koenig@amd.com> wrote:
> > > > > Uff, that looks very hardware specific to me.
> > > > Howso?  I'm not sure I agree.. and even if it was not useful for so=
me
> > > > hw, it should be useful for enough drivers (and harm no drivers), s=
o I
> > > > still think it is a good idea
> > > > =

> > > > The fallback plan is to go the i915 route and stop using atomic
> > > > helpers and do the same thing inside the driver, but that doesn't h=
elp
> > > > any of the cases where you have a separate kms and gpu driver.
> > > Yeah, that's certainly not something we want.
> > > =

> > > > > As far as I can see you can also implement completely inside the =
backend
> > > > > by starting a timer on enable_signaling, don't you?
> > > > Not really.. I mean, the fact that something waited on a fence could
> > > > be a useful input signal to gpu freq governor, but it is entirely
> > > > insufficient..
> > > > =

> > > > If the cpu is spending a lot of time waiting on a fence, cpufreq wi=
ll
> > > > clock down so you spend less time waiting.  And no problem has been
> > > > solved.  You absolutely need the concept of a missed deadline, and a
> > > > timer doesn't give you that.
> > > Ok then I probably don't understand the use case here.
> > > =

> > > What exactly do you try to solve?
> > Basically situations where you are ping-ponging between GPU and CPU..
> > for example if you are double buffering instead of triple buffering,
> > and doing vblank sync'd pageflips.  The GPU, without any extra signal,
> > could get stuck at 30fps and a low gpu freq, because it ends up idle
> > while waiting for an extra vblank cycle for the next back-buffer to
> > become available.  Whereas if it boosted up to a higher freq and
> > stopped missing a vblank deadline, it would be less idle due to
> > getting the next back-buffer sooner (due to not missing a vblank
> > deadline).
> =

> Ok the is the why, but what about the how?
> =

> How does it help to have this boost callback and not just start a time on
> enable signaling and stop it when the signal arrives?

Because the render side (or drm/scheduler, if msm would use that) has no
idea for which vblank a rendering actually is for.

So boosting right when you've missed your frame (not what Rob implements
currently, but fixable) is the right semantics.

The other issue is that for cpu waits, we want to differentiate from fence
waits that userspace does intentially (e.g. wait ioctl) and waits that
random other things are doing within the kernel to keep track of progress.

For the former we know that userspace is stuck waiting for the gpu, and we
probably want to boost. For the latter we most definitely do _not_ want to
boost.

Otoh I do agree with you that the current api is a bit awkward, so perhaps
we do need a dma_fence_userspace_wait wrapper which boosts automatically
after a bit. And similarly perhaps a drm_vblank_dma_fence_wait, where you
give it a vblank target, and if the fence isn't signalled by then, we kick
it real hard.

But otherwise yes this is absolutely a thing that matters a ton. If you
look at Matt Brost's scheduler rfc, there's also a line item in there
about adding this kind of boosting to drm/scheduler.
-Daniel


> =

> Regards,
> Christian.
> =

> > =

> > BR,
> > -R
> > =

> > > Thanks,
> > > Christian.
> > > =

> > > > BR,
> > > > -R
> > > > =

> > > > > Christian.
> > > > > =

> > > > > Am 19.05.21 um 20:38 schrieb Rob Clark:
> > > > > > From: Rob Clark <robdclark@chromium.org>
> > > > > > =

> > > > > > Add a way to hint to the fence signaler that a fence waiter has=
 missed a
> > > > > > deadline waiting on the fence.
> > > > > > =

> > > > > > In some cases, missing a vblank can result in lower gpu utiliza=
tion,
> > > > > > when really we want to go in the opposite direction and boost g=
pu freq.
> > > > > > The boost callback gives some feedback to the fence signaler th=
at we
> > > > > > are missing deadlines, so it can take this into account in it's=
 freq/
> > > > > > utilization calculations.
> > > > > > =

> > > > > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > > > > ---
> > > > > >     include/linux/dma-fence.h | 26 ++++++++++++++++++++++++++
> > > > > >     1 file changed, 26 insertions(+)
> > > > > > =

> > > > > > diff --git a/include/linux/dma-fence.h b/include/linux/dma-fenc=
e.h
> > > > > > index 9f12efaaa93a..172702521acc 100644
> > > > > > --- a/include/linux/dma-fence.h
> > > > > > +++ b/include/linux/dma-fence.h
> > > > > > @@ -231,6 +231,17 @@ struct dma_fence_ops {
> > > > > >         signed long (*wait)(struct dma_fence *fence,
> > > > > >                             bool intr, signed long timeout);
> > > > > > =

> > > > > > +     /**
> > > > > > +      * @boost:
> > > > > > +      *
> > > > > > +      * Optional callback, to indicate that a fence waiter mis=
sed a deadline.
> > > > > > +      * This can serve as a signal that (if possible) whatever=
 signals the
> > > > > > +      * fence should boost it's clocks.
> > > > > > +      *
> > > > > > +      * This can be called in any context that can call dma_fe=
nce_wait().
> > > > > > +      */
> > > > > > +     void (*boost)(struct dma_fence *fence);
> > > > > > +
> > > > > >         /**
> > > > > >          * @release:
> > > > > >          *
> > > > > > @@ -586,6 +597,21 @@ static inline signed long dma_fence_wait(s=
truct dma_fence *fence, bool intr)
> > > > > >         return ret < 0 ? ret : 0;
> > > > > >     }
> > > > > > =

> > > > > > +/**
> > > > > > + * dma_fence_boost - hint from waiter that it missed a deadline
> > > > > > + *
> > > > > > + * @fence: the fence that caused the missed deadline
> > > > > > + *
> > > > > > + * This function gives a hint from a fence waiter that a deadl=
ine was
> > > > > > + * missed, so that the fence signaler can factor this in to de=
vice
> > > > > > + * power state decisions
> > > > > > + */
> > > > > > +static inline void dma_fence_boost(struct dma_fence *fence)
> > > > > > +{
> > > > > > +     if (fence->ops->boost)
> > > > > > +             fence->ops->boost(fence);
> > > > > > +}
> > > > > > +
> > > > > >     struct dma_fence *dma_fence_get_stub(void);
> > > > > >     u64 dma_fence_context_alloc(unsigned num);
> > > > > > =

> > _______________________________________________
> > Linaro-mm-sig mailing list
> > Linaro-mm-sig@lists.linaro.org
> > https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
