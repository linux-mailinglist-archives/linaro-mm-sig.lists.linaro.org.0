Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C86403F33
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 20:45:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16C9760E15
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 18:45:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4F16C60F21; Wed,  8 Sep 2021 18:45:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D14B60F21;
	Wed,  8 Sep 2021 18:45:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2311160B53
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 18:45:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 16CB460F21; Wed,  8 Sep 2021 18:45:33 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id 0C96E60B53
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 18:45:31 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 v20-20020a1cf714000000b002e71f4d2026so1759244wmh.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 11:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=78b/o4FTri/T8m3ByDrpuRiUFjFJpaUAFqCBQ5K0Pjk=;
 b=UVeeR/Y3ITAN9om9eB3OxTSyvuFCFCCuxlvXCP4h4QeWb2ADncJOxHdH6S0mbs0j+w
 t8IsraP+rwZF6KHDPsHBO8WzHf/xPqm8paFKOxlwdjbHWvnJmKGtKeNZXkwlCNWq+enb
 bm3w7WpDgpKfS4r9cuQ30bRglqnsF7e0ynIxw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=78b/o4FTri/T8m3ByDrpuRiUFjFJpaUAFqCBQ5K0Pjk=;
 b=xD/+piQEXIB0ubVDquqKWc7yeyEVn23iCorIBVlS2nKUFTrgTCBksIUFopObbhEEm6
 bQbE2wW9EkFGNXEacMUknI+iW7ytFjr0VDa8kaCp+eLnLFDDX8tiWiY+t06d63nV51y4
 HbiNQw4jhBl9bYfFjzz17MhmzTba4qLjS2OZ04+uRYIGOh3pUwv3VXiktetKBzcQVws7
 aBOnjr4uxT41+jXFVBC9SSD+Bp7edLmljy5lmxHQcjOpcGnQZUqiiIMBXOsFPe8d+uXZ
 0i78xZ7IzvfcYMWFWnqpJKcwcw4DkdIC1t8M3tIPX6RWgP6bR8DLzRwc1kzvsr0c4Obk
 5nxg==
X-Gm-Message-State: AOAM532WFsEio5B3ubmejSFFB7DtKlP4aZM+1N87zpgP05ZaC5glej/7
 5r104PeMI/+TsaQQfNq3Fp7iVQ==
X-Google-Smtp-Source: ABdhPJwIEz0ip15hEKr6eUCycgYpJg6anoTgQJjUALCzYl2FdIeNCN0HtocfjTwKahuI2GWk6V0Zlw==
X-Received: by 2002:a1c:2905:: with SMTP id p5mr4928583wmp.93.1631126730071;
 Wed, 08 Sep 2021 11:45:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m5sm2789859wmi.1.2021.09.08.11.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 11:45:29 -0700 (PDT)
Date: Wed, 8 Sep 2021 20:45:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YTkExzW4QWBC6hMa@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-8-robdclark@gmail.com>
 <YTj4yPk1YuFk3oeL@phenom.ffwll.local>
 <CAF6AEGs3DhSKhDkft58VqkM6GwMMSq87GZkQAaPf_LLavDdacA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGs3DhSKhDkft58VqkM6GwMMSq87GZkQAaPf_LLavDdacA@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
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
Cc: Rob Clark <robdclark@chromium.org>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Sep 08, 2021 at 11:19:15AM -0700, Rob Clark wrote:
> On Wed, Sep 8, 2021 at 10:54 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Fri, Sep 03, 2021 at 11:47:58AM -0700, Rob Clark wrote:
> > > From: Rob Clark <robdclark@chromium.org>
> > >
> > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > ---
> > >  drivers/dma-buf/dma-fence-chain.c | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > >
> > > diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
> > > index 1b4cb3e5cec9..736a9ad3ea6d 100644
> > > --- a/drivers/dma-buf/dma-fence-chain.c
> > > +++ b/drivers/dma-buf/dma-fence-chain.c
> > > @@ -208,6 +208,18 @@ static void dma_fence_chain_release(struct dma_fence *fence)
> > >       dma_fence_free(fence);
> > >  }
> > >
> > > +
> > > +static void dma_fence_chain_set_deadline(struct dma_fence *fence,
> > > +                                      ktime_t deadline)
> > > +{
> > > +     dma_fence_chain_for_each(fence, fence) {
> > > +             struct dma_fence_chain *chain = to_dma_fence_chain(fence);
> > > +             struct dma_fence *f = chain ? chain->fence : fence;
> >
> > Doesn't this just end up calling set_deadline on a chain, potenetially
> > resulting in recursion? Also I don't think this should ever happen, why
> > did you add that?
> 
> Tbh the fence-chain was the part I was a bit fuzzy about, and the main
> reason I added igt tests.  The iteration is similar to how, for ex,
> dma_fence_chain_signaled() work, and according to the igt test it does
> what was intended

Huh indeed. Maybe something we should fix, like why does the
dma_fence_chain_for_each not give you the upcast chain pointer ... I guess
this also needs more Christian and less me.
-Daniel

> 
> BR,
> -R
> 
> > -Daniel
> >
> > > +
> > > +             dma_fence_set_deadline(f, deadline);
> > > +     }
> > > +}
> > > +
> > >  const struct dma_fence_ops dma_fence_chain_ops = {
> > >       .use_64bit_seqno = true,
> > >       .get_driver_name = dma_fence_chain_get_driver_name,
> > > @@ -215,6 +227,7 @@ const struct dma_fence_ops dma_fence_chain_ops = {
> > >       .enable_signaling = dma_fence_chain_enable_signaling,
> > >       .signaled = dma_fence_chain_signaled,
> > >       .release = dma_fence_chain_release,
> > > +     .set_deadline = dma_fence_chain_set_deadline,
> > >  };
> > >  EXPORT_SYMBOL(dma_fence_chain_ops);
> > >
> > > --
> > > 2.31.1
> > >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
