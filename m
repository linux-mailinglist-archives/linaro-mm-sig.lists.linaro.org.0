Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E5F3D2241
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 12:47:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0A0A62EA2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jul 2021 10:47:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19F8A623DB; Thu, 22 Jul 2021 10:47:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 534BF61A44;
	Thu, 22 Jul 2021 10:47:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4117D61A3C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 10:47:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 33FB161A44; Thu, 22 Jul 2021 10:47:08 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by lists.linaro.org (Postfix) with ESMTPS id 2BB5061A3C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 10:47:06 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id ga14so7715535ejc.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jul 2021 03:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=UIjEw7LvBGrlUjquppZsCZAJs4MMNYvbssuJ9Tn9rvA=;
 b=BSbiykPnrXMqDFLWYOlZ+Xx9F86RQC4xFFGNJKrQva9H34djT58I60UA0c2ryP0wMY
 dQTMlwL7TZ+8OCgN8ZRAd5SpAQtoDzl5jb/O46f8bz9SLjuig5V0ZVlRUNdt8/szq8Jq
 4kgNG3kxl2U06Reo0PMNqg4flHxCgalyEb3wE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=UIjEw7LvBGrlUjquppZsCZAJs4MMNYvbssuJ9Tn9rvA=;
 b=OPbEFnSlGlPPwl1g+JUpBKx0/x3vYt2rTWAu/sdw17cyPkowGzeLRDWGqMb46bdo0Y
 /Jq/0aFoATAdAvVrG1DRLgwwH6jxkJ3lw2O44ftDpmd4sCLJLwmo/64lnMHrJwkSlTPZ
 4Y78AJ5UUBaTntZ4IRycV1OOc1RSQceYpCofUHpRJAHUAovOH8cT6OxuU2KsfURKj3WM
 nNvqCuUGJUzp8e0gsHOmaZoMnT/4RUNbc22iPvVJQX+/YIYnzU8Fkzn/LZ/sZquhickf
 L+DGXlqwCL0agXCkwy1Cw98ETU0gPqO1Z0qBdaBfO085YLwsXE6wIWzz62Hk+8LnZxbR
 qYvg==
X-Gm-Message-State: AOAM533MO890CrJ2HnSl1lG1D3lUYxW1QkJ5oSpRpoKUArQepRM7iUw4
 BuFvWX1eg9xjYA1RtZIBnd+VIA==
X-Google-Smtp-Source: ABdhPJyWUvquD40hkzO6znrNFD5xu/fiLgEjV2e4u4CI8X3eyK2lLuG4uvvQqbM15R7qGLm57hx5bQ==
X-Received: by 2002:a17:906:538e:: with SMTP id
 g14mr23577022ejo.136.1626950824915; 
 Thu, 22 Jul 2021 03:47:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id gw8sm9336666ejb.44.2021.07.22.03.47.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 03:47:04 -0700 (PDT)
Date: Thu, 22 Jul 2021 12:47:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YPlMpoGbXYKUFwCq@phenom.ffwll.local>
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
References: <60ffb6f3-e932-d9af-3b90-81adf0c15250@gmail.com>
 <CAF6AEGtOW3EjZWo36ij8U1om=gAqvg8CSkJJq2GkyHFGWUH4kQ@mail.gmail.com>
 <CAKMK7uF1=Y6_9znGoWG8GrteXBBRmyW8C3bFE+eJQqOj0A1buA@mail.gmail.com>
 <CAF6AEGsOVPdMkXwU9C+nDfQpPThveJ2A0jbXi43RRkkJKtnz3w@mail.gmail.com>
 <CAKMK7uHMXFqic=9APJrSf6totB8nGZTDe4x8+sv-drmV4Q+4Bg@mail.gmail.com>
 <CAF6AEGsKoucxt4a2pcdQM9+L0+YU-6TcAt8eF=3ur169646Jhw@mail.gmail.com>
 <YPhvein5e8do2AR+@phenom.ffwll.local>
 <113b5858-9020-d1c1-292b-96b7f9cc717a@gmail.com>
 <YPk1izQFR+tRV8js@phenom.ffwll.local>
 <9c1e797b-8860-d1f5-e6f2-e06380ec9012@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c1e797b-8860-d1f5-e6f2-e06380ec9012@gmail.com>
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

On Thu, Jul 22, 2021 at 11:28:01AM +0200, Christian K=F6nig wrote:
> Am 22.07.21 um 11:08 schrieb Daniel Vetter:
> > [SNIP]
> > > As far as I know wake_up_state() tries to run the thread on the CPU i=
t was
> > > scheduled last, while wait_event_* makes the thread run on the CPU who
> > > issues the wake by default.
> > > =

> > > And yes I've also noticed this already and it was one of the reason w=
hy I
> > > suggested to use a wait_queue instead of the hand wired dma_fence_wait
> > > implementation.
> > The first versions had used wait_queue, but iirc we had some issues with
> > the callbacks and stuff and that was the reasons for hand-rolling. Or
> > maybe it was the integration of the lockless fastpath for
> > dma_fence_is_signalled().
> > =

> > > [SNIP]
> > > Well it would have been nicer if we used the existing infrastructure =
instead
> > > of re-inventing stuff for dma_fence, but that chance is long gone.
> > > =

> > > And you don't need a dma_fence_context base class, but rather just a =
flag in
> > > the dma_fence_ops if you want to change the behavior.
> > If there's something broken we should just fix it, not force everyone to
> > set a random flag. dma_fence work like special wait_queues, so if we
> > differ then we should go back to that.
> =

> Wait a second with that, this is not broken. It's just different behavior
> and there are good arguments for both sides.

Oh I know, but since dma_fence is meant to be a wait_queue with hw
support, they really should work the same and have the same tuning.

> If a wait is short you can have situations where you want to start the
> thread on the original CPU.
> =A0=A0=A0 This is because you can assume that the caches on that CPU are =
still hot
> and heating up the caches on the local CPU would take longer than an inter
> CPU interrupt.
> =

> But if the wait is long it makes more sense to run the thread on the CPU
> where you noticed the wake up event.
> =A0=A0=A0 This is because you can assume that the caches are cold anyway =
and
> starting the thread on the current CPU (most likely from an interrupt
> handler) gives you the absolutely best latency.
> =A0=A0=A0 In other words you usually return from the interrupt handler an=
d just
> directly switch to the now running thread.
> =

> I'm not sure if all drivers want the same behavior. Rob here seems to pre=
fer
> number 2, but we have used 1 for dma_fence for a rather long time now and=
 it
> could be that some people start to complain when we switch unconditionall=
y.

I think the defaults are different because usually if you wake up a wait
queue, there's a 1:1 relationship between waker and waiter.

Otoh if you just wake a thread it's probably some kinda of service thread,
so N:1 relationship between waker and waiter. And in that case moving the
waiter is a really bad idea.

I think dma_fence is generally much closer to 1:1 (with the most common
one irq handler -> scheduler thread for that engine), so having the "same
cpu" wake behaviour really sounds like the right thing to do. And not
anything that is specifically an issue with how qualcom gpus work, and
hence should be msm specific.

If it turns out to be the wrong thing, well I guess we'll learn
something. And then maybe we have a different version of dma_fence_wait.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
