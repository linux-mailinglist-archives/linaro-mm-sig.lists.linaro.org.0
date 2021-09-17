Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D0440F780
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:30:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E159264AD6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:30:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C613E63423; Fri, 17 Sep 2021 12:30:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49DC86341D;
	Fri, 17 Sep 2021 12:30:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 158A56328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:30:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0425E6341D; Fri, 17 Sep 2021 12:30:06 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id E148C6328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:30:03 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id x6so14856997wrv.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=ohehD+AgX2cOYuT0Vdlc+XEexxlJP7h+rPjbbPGV0JI=;
 b=R10SS4VV0BCpiZybmOMrjaWEfv3d2ZD+2k6TYKYqIZCusUIZXiqYs5rTuV6bruYLls
 zYGmlZhSOPyZgErxGr8GftAAzypBiEQnXw94kdl46vb10zeP8O7zkrXWklJipXggLivr
 Ihoa4mj+eAbhnzb6QO020N9VvyKryVDicfnPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=ohehD+AgX2cOYuT0Vdlc+XEexxlJP7h+rPjbbPGV0JI=;
 b=vClT7id4K7Yge1hBvNGlT5b+YazqZqwNb4QZkRu/xJP3i22w+EVksINBPitodaDlhr
 DRf5YTnJq1SVJtiq56GG03AkZvtO+R6yTWzSXEs3CiFLLlNgXTP9FNtM7rLYUp4FeXhl
 jwRzUj0S/GrRcz5GJIKbZilJrPu3H4Dhi3pmcdDmsdxXCYQJ4FEUn13eZEKtZHgZPx9H
 4S7aqk4BiGZTbQ/3C0pPu7PvZ3vKdBoqoAu5dPp9jlNshVOqMYx0Lz2JcmEtpuPCwx90
 bKDwvWRWhHLFC+f/hfHrY5JqQEqHzYHwylO5gyojemOhMEKXXZ78X2LA7szGKcJ5oh8p
 Kssg==
X-Gm-Message-State: AOAM532DGyFpx8wl0Enu2HyEPepk8G/FqpEScxGGDpYhfdyuLeIbkAOe
 iaWJ/GnidZwZwzkhWgGIjgUDBQ==
X-Google-Smtp-Source: ABdhPJxbi7SvIHU6eF4mLO2NNjFKYkKbUTWnBTtOPShG0ZBGp4wQE5JGTFm/UZzjlZerlKL7ilx7Kg==
X-Received: by 2002:a05:6000:124b:: with SMTP id
 j11mr11906176wrx.147.1631881802837; 
 Fri, 17 Sep 2021 05:30:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm6483202wmp.1.2021.09.17.05.30.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:30:02 -0700 (PDT)
Date: Fri, 17 Sep 2021 14:30:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <YUSKSHBC9uI49wZZ@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 Oded Gabbay <ogabbay@kernel.org>,
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
 <YUM5JoMMK7gceuKZ@phenom.ffwll.local>
 <20210916131014.GK3544071@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916131014.GK3544071@ziepe.ca>
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
Cc: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yossi Leybovich <sleybo@amazon.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Gal Pressman <galpress@amazon.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>, Oded Gabbay <ogabbay@kernel.org>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Sep 16, 2021 at 10:10:14AM -0300, Jason Gunthorpe wrote:
> On Thu, Sep 16, 2021 at 02:31:34PM +0200, Daniel Vetter wrote:
> > On Wed, Sep 15, 2021 at 10:45:36AM +0300, Oded Gabbay wrote:
> > > On Tue, Sep 14, 2021 at 7:12 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > >
> > > > On Tue, Sep 14, 2021 at 04:18:31PM +0200, Daniel Vetter wrote:
> > > > > On Sun, Sep 12, 2021 at 07:53:07PM +0300, Oded Gabbay wrote:
> > > > > > Hi,
> > > > > > Re-sending this patch-set following the release of our user-space TPC
> > > > > > compiler and runtime library.
> > > > > >
> > > > > > I would appreciate a review on this.
> > > > >
> > > > > I think the big open we have is the entire revoke discussions. Having the
> > > > > option to let dma-buf hang around which map to random local memory ranges,
> > > > > without clear ownership link and a way to kill it sounds bad to me.
> > > > >
> > > > > I think there's a few options:
> > > > > - We require revoke support. But I've heard rdma really doesn't like that,
> > > > >   I guess because taking out an MR while holding the dma_resv_lock would
> > > > >   be an inversion, so can't be done. Jason, can you recap what exactly the
> > > > >   hold-up was again that makes this a no-go?
> > > >
> > > > RDMA HW can't do revoke.
> > 
> > Like why? I'm assuming when the final open handle or whatever for that MR
> > is closed, you do clean up everything? Or does that MR still stick around
> > forever too?
> 
> It is a combination of uAPI and HW specification.
> 
> revoke here means you take a MR object and tell it to stop doing DMA
> without causing the MR object to be destructed.
> 
> All the drivers can of course destruct the MR, but doing such a
> destruction without explicit synchronization with user space opens
> things up to a serious use-after potential that could be a security
> issue.
> 
> When the open handle closes the userspace is synchronized with the
> kernel and we can destruct the HW objects safely.
> 
> So, the special HW feature required is 'stop doing DMA but keep the
> object in an error state' which isn't really implemented, and doesn't
> extend very well to other object types beyond simple MRs.

Yeah revoke without destroying the MR doesn't work, and it sounds like
revoke by destroying the MR just moves the can of worms around to another
place.

> > 1. User A opens gaudi device, sets up dma-buf export
> > 
> > 2. User A registers that with RDMA, or anything else that doesn't support
> > revoke.
> > 
> > 3. User A closes gaudi device
> > 
> > 4. User B opens gaudi device, assumes that it has full control over the
> > device and uploads some secrets, which happen to end up in the dma-buf
> > region user A set up
> 
> I would expect this is blocked so long as the DMABUF exists - eg the
> DMABUF will hold a fget on the FD of #1 until the DMABUF is closed, so
> that #3 can't actually happen.
> 
> > It's not mlocked memory, it's mlocked memory and I can exfiltrate
> > it.
> 
> That's just bug, don't make buggy drivers :)

Well yeah, but given that habanalabs hand rolled this I can't just check
for the usual things we have to enforce this in drm. And generally you can
just open chardevs arbitrarily, and multiple users fighting over each
another. The troubles only start when you have private state or memory
allocations of some kind attached to the struct file (instead of the
underlying device), or something else that requires device exclusivity.
There's no standard way to do that.

Plus in many cases you really want revoke on top (can't get that here
unfortunately it seems), and the attempts to get towards a generic
revoke() just never went anywhere. So again it's all hand-rolled
per-subsystem. *insert lament about us not having done this through a
proper subsystem*

Anyway it sounds like the code takes care of that.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
