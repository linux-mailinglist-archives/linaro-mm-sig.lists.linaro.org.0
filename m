Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D87BA40D9F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 14:31:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F21860833
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 12:31:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 378EA62CF6; Thu, 16 Sep 2021 12:31:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EEF36242B;
	Thu, 16 Sep 2021 12:31:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E64B6073E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 12:31:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6BBDE6242B; Thu, 16 Sep 2021 12:31:40 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 5B2CE6073E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 12:31:38 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id g16so9226824wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 05:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=yVn4bOUftTP0XsVCYOhP2MVjOD5RXLBjZ2je0UhYRc0=;
 b=UllxjW1pQN4AmYZEbLg7VrErGUqD+1ja2ihP7bNIWt/uTZGlmL71/XP9jjO6KhmKY0
 fiRtXpVcCH1hQKOY2jdfchmwYGS0XP4lfMRLycLsW6+OfxpIvDESU51aAUOmrcst/rON
 qWFSoQtqfz711rHCKql1DqY94oNcjEZ2J6WVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=yVn4bOUftTP0XsVCYOhP2MVjOD5RXLBjZ2je0UhYRc0=;
 b=rfD8anj7EVIfzw9j0UBczeop6D8gP1uqJolodIWVpkDdOFoVEO+HZYO+jAtTPPlPHV
 XBM3eS4AWam4XNwHGqmJ/FEVSIOFNAjt7WrMWpJCgdx//7fcev5uQ7gVieN4nhJlboto
 wPW2tndm8ALWdvay/zDcGT0AfmzcAIuiQuOWl0Yb1IOf+PRbJDHCUlRrA2Ncf8YHXM6O
 oYzaCmkYb4xn76mXs9M+ObaLDsavIqKMMv83RHnBPNb0lf5/bH2Sf0/8nPB35DJyNig6
 Z7Q6RqEyrcHrUFnQka27SRVDMPeMcbixwphRGXCr29mcOG1ee48/cdy4jZdHtUMykaqQ
 gVIA==
X-Gm-Message-State: AOAM531dmDyQ2uOJ0rjygDK5TkfmJ7k7f6DPvnWrJ13LOdSvtrkXvHbn
 2WR1OZ+6AdSmhD0bd8YczA4gow==
X-Google-Smtp-Source: ABdhPJyNeVVi6f4gVXn8CFkrZVMl66WAIJsG4jZYF2OG8FsFOYQQOCNHITS4sqBQA+1lZuWg++BXfA==
X-Received: by 2002:a5d:6da9:: with SMTP id u9mr5766027wrs.155.1631795497459; 
 Thu, 16 Sep 2021 05:31:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g5sm3285526wrq.80.2021.09.16.05.31.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 05:31:36 -0700 (PDT)
Date: Thu, 16 Sep 2021 14:31:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <YUM5JoMMK7gceuKZ@phenom.ffwll.local>
Mail-Followup-To: Oded Gabbay <ogabbay@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gal Pressman <galpress@amazon.com>,
 Yossi Leybovich <sleybo@amazon.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Doug Ledford <dledford@redhat.com>, Dave Airlie <airlied@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
References: <20210912165309.98695-1-ogabbay@kernel.org>
 <YUCvNzpyC091KeaJ@phenom.ffwll.local>
 <20210914161218.GF3544071@ziepe.ca>
 <CAFCwf13322953Txr3Afa_MomuD148vnfpEog0xzW7FPWH9=6fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf13322953Txr3Afa_MomuD148vnfpEog0xzW7FPWH9=6fg@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v6 0/2] Add p2p via dmabuf to habanalabs
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yossi Leybovich <sleybo@amazon.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Gal Pressman <galpress@amazon.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>,
 Christoph Hellwig <hch@lst.de>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Sep 15, 2021 at 10:45:36AM +0300, Oded Gabbay wrote:
> On Tue, Sep 14, 2021 at 7:12 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Tue, Sep 14, 2021 at 04:18:31PM +0200, Daniel Vetter wrote:
> > > On Sun, Sep 12, 2021 at 07:53:07PM +0300, Oded Gabbay wrote:
> > > > Hi,
> > > > Re-sending this patch-set following the release of our user-space TPC
> > > > compiler and runtime library.
> > > >
> > > > I would appreciate a review on this.
> > >
> > > I think the big open we have is the entire revoke discussions. Having the
> > > option to let dma-buf hang around which map to random local memory ranges,
> > > without clear ownership link and a way to kill it sounds bad to me.
> > >
> > > I think there's a few options:
> > > - We require revoke support. But I've heard rdma really doesn't like that,
> > >   I guess because taking out an MR while holding the dma_resv_lock would
> > >   be an inversion, so can't be done. Jason, can you recap what exactly the
> > >   hold-up was again that makes this a no-go?
> >
> > RDMA HW can't do revoke.

Like why? I'm assuming when the final open handle or whatever for that MR
is closed, you do clean up everything? Or does that MR still stick around
forever too?

> > So we have to exclude almost all the HW and several interesting use
> > cases to enable a revoke operation.
> >
> > >   - For non-revokable things like these dma-buf we'd keep a drm_master
> > >     reference around. This would prevent the next open to acquire
> > >     ownership rights, which at least prevents all the nasty potential
> > >     problems.
> >
> > This is what I generally would expect, the DMABUF FD and its DMA
> > memory just floats about until the unrevokable user releases it, which
> > happens when the FD that is driving the import eventually gets closed.
> This is exactly what we are doing in the driver. We make sure
> everything is valid until the unrevokable user releases it and that
> happens only when the dmabuf fd gets closed.
> And the user can't close it's fd of the device until he performs the
> above, so there is no leakage between users.

Maybe I got the device security model all wrong, but I thought Guadi is
single user, and the only thing it protects is the system against the
Gaudi device trhough iommu/device gart. So roughly the following can
happen:

1. User A opens gaudi device, sets up dma-buf export

2. User A registers that with RDMA, or anything else that doesn't support
revoke.

3. User A closes gaudi device

4. User B opens gaudi device, assumes that it has full control over the
device and uploads some secrets, which happen to end up in the dma-buf
region user A set up

5. User B extracts secrets.

> > I still don't think any of the complexity is needed, pinnable memory
> > is a thing in Linux, just account for it in mlocked and that is
> > enough.

It's not mlocked memory, it's mlocked memory and I can exfiltrate it.
Mlock is fine, exfiltration not so much. It's mlock, but a global pool and
if you didn't munlock then the next mlock from a completely different user
will alias with your stuff.

Or is there something that prevents that? Oded at least explain that gaudi
works like a gpu from 20 years ago, single user, no security at all within
the device.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
