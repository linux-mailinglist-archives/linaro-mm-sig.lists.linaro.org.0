Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0253BDA20
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 17:25:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33B1866940
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 15:25:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 203C566941; Tue,  6 Jul 2021 15:25:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E05460CA7;
	Tue,  6 Jul 2021 15:25:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E9856062F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 15:25:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6302C60CA7; Tue,  6 Jul 2021 15:25:48 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by lists.linaro.org (Postfix) with ESMTPS id 56EA56062F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 15:25:46 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id x3so3733983pll.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 08:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kBvoTSBcOt78f+hoOE9oCqUZer2JVIUIWKm+LE7tBB8=;
 b=X163Xk+G02T/FYeziNGDwCPOc6BLNJpmRANJZemVrSobPquSFvpYvLg7I+/xXol03F
 kgToG/GWqTW22vdfS86rrDbHG+VIoJpV7F3ia6ZGlrrWTBFKBlA1qJfDU2QYjFMxw9bn
 18zM+SC3OK5PBTSWnVn9GnFtpVk1NhRB4WRRd6zVs3M5rR6QpNocNXBiV7EL2h8le3Ow
 jvZU/A0iyEbkwxC5Yua5tblx9J0ejeZ7v4lloFM8eg/sgExGmReJOD+eEQ6g9p7ckBea
 AQnNsdBTVeckFCBTYdf84UR54cEJl3YU8s6gAghdvxWN3OAHAx/OxyzWsnveJxZQA+4F
 K0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kBvoTSBcOt78f+hoOE9oCqUZer2JVIUIWKm+LE7tBB8=;
 b=uael0PtKeE0jelUV4oyYOGUELnYTn/QcqK6KzHNcD8FHMr5TztFrp2wLXUIKcxSgYo
 giomaruiTK9jwSQZkm+racbxJ3RknJdQTQ5uF3EYb+zWGC+YqphxejJWFCLKO2ZkIq9A
 gaLikER8y9y5/e+ZMKrDq4xMiceJ22CJdWuhsBOC/Lq6KbWzMFsuU/KhEGpcZbBwGDpG
 bQTkc3+KXNX0eQ3fDO1PYgpji/fhAgf2wCdVUDcmGJ0ymLnpbQH7j4DuYJreo37LyoXj
 ZP2N/28JBh2kuBIF8M4nMvDDWp3mFK3UNpSWfcu27DehQchLtgfpxa28rXyw+R4ZkVCV
 QzyQ==
X-Gm-Message-State: AOAM5338vDz/qLIKPUxa5zfe540umGapBL6WoFTeXyghLhJh9t3xzzX0
 YUnDJQKRd/SxqCmein6H2ZO7UA==
X-Google-Smtp-Source: ABdhPJxrcXwOAFPmP3ClDrDAEt0u9Z/9YZvGne/AXypBqtfhopbFKVCe78sZDR5N+5fl5a1I4tI3yA==
X-Received: by 2002:a17:90a:8417:: with SMTP id
 j23mr1072739pjn.210.1625585145462; 
 Tue, 06 Jul 2021 08:25:45 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id m18sm17872288pff.88.2021.07.06.08.25.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 08:25:44 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1m0mxC-004SbX-Ps; Tue, 06 Jul 2021 12:25:42 -0300
Date: Tue, 6 Jul 2021 12:25:42 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210706152542.GP4604@ziepe.ca>
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <CAFCwf10_rTYL2Fy6tCRVAUCf4-6_TtcWCv5gEEkGnQ0KxqMUBg@mail.gmail.com>
 <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
 <20210706142357.GN4604@ziepe.ca>
 <CAKMK7uELNzwUe+hhVWRg=Pk5Wt_vOOX922H48Kd6dTyO2PeBbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uELNzwUe+hhVWRg=Pk5Wt_vOOX922H48Kd6dTyO2PeBbg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 0/2] Add p2p via dmabuf to habanalabs
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
Cc: Gal Pressman <galpress@amazon.com>, sleybo@amazon.com,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oded Gabbay <ogabbay@kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 06, 2021 at 04:39:19PM +0200, Daniel Vetter wrote:
> On Tue, Jul 6, 2021 at 4:23 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Tue, Jul 06, 2021 at 12:36:51PM +0200, Daniel Vetter wrote:
> >
> > > If that means AI companies don't want to open our their hw specs
> > > enough to allow that, so be it - all you get in that case is
> > > offloading the kernel side  of the stack for convenience, with zero
> > > long term prospects to ever make this into a cross vendor subsystem
> > > stack that does something useful.
> >
> > I don't think this is true at all - nouveau is probably the best
> > example.
> >
> > nouveau reverse engineered a userspace stack for one of these devices.
> >
> > How much further ahead would they have been by now if they had a
> > vendor supported, fully featured, open kernel driver to build the
> > userspace upon?
> 
> There is actually tons of example here, most of the arm socs have
> fully open kernel drivers, supported by the vendor (out of tree).

I choose nouveau because of this:

$ git ls-files drivers/gpu/drm/arm/ | xargs wc -l
 15039 total
$ git ls-files drivers/gpu/drm/nouveau/ | xargs wc -l
 204198 total

At 13x the size of mali this is not just some easy to wire up memory
manager and command submission. And after all that typing it still
isn't very good. The fully supported AMD vendor driver is over 3
million lines, so nouveau probably needs to grow several times.

My argument is that an in-tree open kernel driver is a big help to
reverse engineering an open userspace. Having the vendors
collaboration to build that monstrous thing can only help the end goal
of an end to end open stack.

For instance a vendor with an in-tree driver has a strong incentive to
sort out their FW licensing issues so it can be redistributed.

I'm not sure about this all or nothing approach. AFAIK DRM has the
worst problems with out of tree drivers right now.

> Where it would have helped is if this open driver would come with
> redistributable firmware, because that is right now the thing making
> nouveau reverse-engineering painful enough to be non-feasible. Well
> not the reverse-engineering, but the "shipping the result as a working
> driver stack".

I don't think much of the out of tree but open drivers. The goal must
be to get vendors in tree.

I would applaud Habana for getting an intree driver at least, even if
the userspace is not what we'd all want to see.

> I don't think the facts on the ground support your claim here, aside
> from the practical problem that nvidia is unwilling to even create an
> open driver to begin with. So there isn't anything to merge.

The internet tells me there is nvgpu, it doesn't seem to have helped.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
