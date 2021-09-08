Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 119C9403EF1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 20:15:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 270A260B53
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 18:15:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 37FF163549; Wed,  8 Sep 2021 18:15:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB0C060B53;
	Wed,  8 Sep 2021 18:15:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0B468603E2
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 18:15:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F16E460B53; Wed,  8 Sep 2021 18:14:59 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id E8FEB603E2
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 18:14:57 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id i28so4637707wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 11:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YRUmRUUCYmjE8wlXNGRCZTbNeHfZjNb6hJUKTvoLMJE=;
 b=NRxAAd7y72m0T3aSIbndy+HJVgXcePIEbPw7RzYDKSkGDr7OylwuEsyXxLXxC8Wp3Q
 a2GeUbAOblhD4Kd/GXztAUU3QND2ihaT0zBBFqWoVemp5eU4KoEC6ZLs3i5TPFQRrhP+
 zyvLA5xf++zEAKTIqnJ+KxtRDJx8aRRN51jsLJG0x0daYyKFFiCxRoVYBj8euPIGg3jf
 TR4H1ANvax/D2ToiabFBoYc4vkcD0otvfSmW/Ak3Aw3amFvoAR3T1RpnwmYpHIab1GOg
 cNHMS/aScEaYwuP8E9p6G1sX74a54i59OEjALlYeL7d7LCTTaaip5SpKqk6EHdfIc27q
 sN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YRUmRUUCYmjE8wlXNGRCZTbNeHfZjNb6hJUKTvoLMJE=;
 b=CIVOkgaMn0sWB4QmEt5XzPjhmsNE1ynW27ByKXTQajtF/4MDhnxy4hGW92uyY/EOTs
 HyZjJyeqZIL/BvZEUyW7VCZdEZFK5OMXDElcOnu7kzULKP7TomWCA/0BKkaQyvEJVF65
 XaIUY8D49FYfJKTQtOcaeSvMbnS7qkmOlyWcTpLW8luJ7fci3Gt9FtlNcukTa9qtmLZs
 KykYbyCpvDOLy4GHVn2aG8/f/X727bZp87xt4UthVJuF0UUNmizzyv35brsa+OUb2gEZ
 Qx8sUoV0tlV9XLEvMXUp/wqpYSRsYr1uQU7hMKMeMLwDnQMYVY8FsLzRIqlUnauXb7Md
 CR8w==
X-Gm-Message-State: AOAM531ew00yV52tnltRaTExYleBuLgrA7PiVi17J2rAX1Oj6mgbJFiN
 txo/mJA9JoD/Dl6wpOUDkxsYNJKkTra+bGnvLEE=
X-Google-Smtp-Source: ABdhPJymRYwAKCqCyQNDewZqZfzSmR+wV89gVCvB1gmqaqDId8Vj6kyBJgUfihNgx2+kZsKBr3HzdEa02e+Y80EVfrE=
X-Received: by 2002:a5d:4488:: with SMTP id j8mr5580376wrq.260.1631124896977; 
 Wed, 08 Sep 2021 11:14:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-8-robdclark@gmail.com>
 <YTj4yPk1YuFk3oeL@phenom.ffwll.local>
In-Reply-To: <YTj4yPk1YuFk3oeL@phenom.ffwll.local>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 8 Sep 2021 11:19:15 -0700
Message-ID: <CAF6AEGs3DhSKhDkft58VqkM6GwMMSq87GZkQAaPf_LLavDdacA@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, 
 Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@chromium.org>, 
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 7/9] dma-buf/fence-chain: Add fence
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Sep 8, 2021 at 10:54 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, Sep 03, 2021 at 11:47:58AM -0700, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> >  drivers/dma-buf/dma-fence-chain.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
> > index 1b4cb3e5cec9..736a9ad3ea6d 100644
> > --- a/drivers/dma-buf/dma-fence-chain.c
> > +++ b/drivers/dma-buf/dma-fence-chain.c
> > @@ -208,6 +208,18 @@ static void dma_fence_chain_release(struct dma_fence *fence)
> >       dma_fence_free(fence);
> >  }
> >
> > +
> > +static void dma_fence_chain_set_deadline(struct dma_fence *fence,
> > +                                      ktime_t deadline)
> > +{
> > +     dma_fence_chain_for_each(fence, fence) {
> > +             struct dma_fence_chain *chain = to_dma_fence_chain(fence);
> > +             struct dma_fence *f = chain ? chain->fence : fence;
>
> Doesn't this just end up calling set_deadline on a chain, potenetially
> resulting in recursion? Also I don't think this should ever happen, why
> did you add that?

Tbh the fence-chain was the part I was a bit fuzzy about, and the main
reason I added igt tests.  The iteration is similar to how, for ex,
dma_fence_chain_signaled() work, and according to the igt test it does
what was intended

BR,
-R

> -Daniel
>
> > +
> > +             dma_fence_set_deadline(f, deadline);
> > +     }
> > +}
> > +
> >  const struct dma_fence_ops dma_fence_chain_ops = {
> >       .use_64bit_seqno = true,
> >       .get_driver_name = dma_fence_chain_get_driver_name,
> > @@ -215,6 +227,7 @@ const struct dma_fence_ops dma_fence_chain_ops = {
> >       .enable_signaling = dma_fence_chain_enable_signaling,
> >       .signaled = dma_fence_chain_signaled,
> >       .release = dma_fence_chain_release,
> > +     .set_deadline = dma_fence_chain_set_deadline,
> >  };
> >  EXPORT_SYMBOL(dma_fence_chain_ops);
> >
> > --
> > 2.31.1
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
