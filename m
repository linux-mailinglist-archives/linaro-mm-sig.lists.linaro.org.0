Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 60246405BB7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 19:04:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB5176055B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 17:04:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E2C44619AA; Thu,  9 Sep 2021 17:04:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AACD610CB;
	Thu,  9 Sep 2021 17:04:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B7D176055B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 17:03:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AD40B610CB; Thu,  9 Sep 2021 17:03:58 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id A20816055B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 17:03:56 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id t18so3591135wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Sep 2021 10:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IbPPNqobPmWZ9MF50JtcVBJ+K5zUi+K+HgQrnexV6is=;
 b=BE/y2bL/mHyRfUxGmarxT/nWkFdJyoDiJQtSLvbtElf2UESCirtPhVWa0xURMyE5tF
 rYTmwmayvMNAV77nMn8OnSbsQBXKaho0Mf7sx1UJRiNp/0zyvd2vEvD1ZcsOP6Idyh8I
 nJMdkiJveWXI8MXP3/S+LHsYohhkLiI5HAvtYoDeM1SJxY7AIldHjSqxxEhtIkYmYB84
 5QNzYwGK3ubwMbqUocdIOoNCwQeHafOucLmkD0NJibGsl58DOIzZPkxc1wHSjsdtDsMX
 7FbfsGNMPGgQl1HAh6ggsseaIz9cj2Sa7YnMJe1vCa6t0dT04seBaMEuTQ7jh5W87Jol
 XAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IbPPNqobPmWZ9MF50JtcVBJ+K5zUi+K+HgQrnexV6is=;
 b=0S5O6Pmtfy2B8HEpKTrNjeCbudmYdqNllWukPj0A1KbzcAHp3qyVduGEm7UtvoWnue
 UC5Dw9FoPE325D107waXu9Et8CIJ3ZGcjIV7FBFc8J2W84qgGs1PLzQ6riWjzFKZQAW2
 PxR3oWh3y+l8qOACfzuslg4pHgsKOvFO3gRUqBOdm/zYwxvRH2Q4Rx4wlGMJzs1se6n7
 0W/ZPRJYGkYWYLO4NG3kpqH6767LMtBMJ+0LP87fDCa2swd9Ylc1JVr+wgaCvx9oLmgO
 OyXzMlj9wldhQTtPsXB3T2Yzk+k6jrFD3WqNWlBtfVZOMrCCSL1MHVrdrSvOMXxBUc/n
 fvYA==
X-Gm-Message-State: AOAM532JmDk44ZUu1FjPXmjyXK0X8gA5X3EBItZAJVAe64Q0mlwCHBvY
 3BLUzlCB9IWbp7CL4ahs7zUpy2ugxH4wItd7YaU=
X-Google-Smtp-Source: ABdhPJxhkpYn5lOEWS5HH3Rm8m0d/wuvw1EtxFJjV07j/rVitgQQ8dAircwjT8ySc+dDGJd0RC694oWjtFnG4vZItxk=
X-Received: by 2002:a05:6000:178b:: with SMTP id
 e11mr4750688wrg.151.1631207035454; 
 Thu, 09 Sep 2021 10:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <i-XmBd_5J3_d8cdm-IT6Ery2kHN0FPZCX968aU5idvxQxNlvDJguLLThtF2NF15LF8gGsH4uI2w0s0CL_39KGpzoGpuCgcz2_-4Wjf3AYEM=@emersion.fr>
 <CAF6AEGuD2bnFpmSWtGxU5+AFj1HVKtnOZmLKRr-pDVbLn0nPVw@mail.gmail.com>
 <CZ2qg4SOe8RnrJpAfZtag_GZTFRt6wAdspKbP4RqpFQCE9Wiuf4xyHTUyKIkaXGu6LfKpSALrmOC3jxgfPdMRjgIAkrkvTnNd9stjXqnPNI=@emersion.fr>
In-Reply-To: <CZ2qg4SOe8RnrJpAfZtag_GZTFRt6wAdspKbP4RqpFQCE9Wiuf4xyHTUyKIkaXGu6LfKpSALrmOC3jxgfPdMRjgIAkrkvTnNd9stjXqnPNI=@emersion.fr>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 9 Sep 2021 10:08:22 -0700
Message-ID: <CAF6AEGseoCzbYXUjsJNo7q-_g3FBmn0+BPMKf=QX5gunhOeKKA@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 0/9] dma-fence: Deadline awareness
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
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>, Luben Tuikov <luben.tuikov@amd.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Melissa Wen <mwen@igalia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>, freedreno <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Sep 9, 2021 at 9:42 AM Simon Ser <contact@emersion.fr> wrote:
>
> On Thursday, September 9th, 2021 at 18:31, Rob Clark <robdclark@gmail.com> wrote:
>
> > Yes, I think it would.. and "dma-buf/sync_file: Add SET_DEADLINE
> > ioctl" adds such an ioctl.. just for the benefit of igt tests at this
> > point, but the thought was it would be also used by compositors that
> > are doing such frame scheduling. Ofc danvet is a bit grumpy that
> > there isn't a more real (than igt) userspace for the ioctl yet ;-)
>
> Ah, very nice, I somehow missed it.
>
> I guess one issue is that explicit sync isn't quite plumbed through
> compositors yet, so without Jason's DMA-BUF to sync_file IOCTL it'd be
> a bit difficult to use.
>
> Can anybody set the deadline? I wonder if clients should be allowed to.

In its current form, anyone who has the fd can.. I'm not sure how (or
even if) we could limit it beyond that.  I suppose hypothetically you
could use this for completely non-compositor related things, like
compute jobs where you want the result by some deadline.  (OTOH, it
could be the driver using this internally when the app is stalling on
a result)

> What happens if the deadline is exceeded? I'd assume nothing in
> particular, the deadline being just a hint?

Nothing in particular, it is just a hint.  The main intention is to
provide a feedback hint to the drivers in scenarios like vblank
deadlines, where being 1ms late is just as bad as being
$frame_duration-1ms late.  From my experiments and profiling it is
useful in a couple scenarios:

1) input latency, ie. go from idle to fullscreen animation, where GPU
has been idle for a while and not busy enough *yet* for devfreq to
kick in and start ramping up the freq before we miss the first vblank
2) double buffering, for ex. if you are 1ms late you end up stalling
15ms before the gpu can start rendering the next frame.. in the
absence of feedback, devfreq would ramp down in this scenario instead
of up

BR,
-R
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
