Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 517A79854C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 09:58:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FFD544A04
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 07:58:51 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by lists.linaro.org (Postfix) with ESMTPS id 5F0E33F3C2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 07:58:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=YynB6LjR;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.214.178 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2054feabfc3so57877075ad.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 00:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727251114; x=1727855914; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w3005EJcuEMyy2pLBvy7gjdyTGC+071SxJGUSCLD2e8=;
        b=YynB6LjRw15Tl/RjL1qdSTN+Zg4qS/IsjPbMaMzWoiIEZd4y1CLnWFc3I+mndpgFDU
         qctqhsaJQfzrIvcWmyuWZepOBm3fWoRL9NhHXdxSSesbCR22DC82y35ekXJK1pW1X4go
         JYeBFy6vCGf6p0va7jIc9Aqf4DicpU9CJEz46lZgmxNQgJALS2zMg+4b2p0NBWyNNGbS
         xRbKl1X34s5YqTLuYgLFHP7fcvMEaN6XVP0BpSfRHaGDbjvFkOrVqPTG1OrVCK8YswFG
         5TPyXwN/p5bCLOcR+Et+Xhlk7Vr/pcBpKyFZ6xEQ0Ab27nMHI3yUT0irme2JoNoBMyY0
         mPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727251114; x=1727855914;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3005EJcuEMyy2pLBvy7gjdyTGC+071SxJGUSCLD2e8=;
        b=kNiaCoQb3rjgRhiQ/vNPak9i99FL7H+bGXdR9hKmz06oiWrODFJWYXyvhb1j64ny9d
         IF3DcoRcAMTmDzh8Jtxm9jmIloHK6ND4X8nfcDKUYPmaPCY7p0v+h6l0nKaNPzP4LVsF
         ORj5G7WWJkPesDnsJFdb6VaY1PkR1sbS7NTL1Ko0Q7+cXnfoBQ6ytfvi94cbncaWkLMw
         fAF3GMA4vft5TlMkteW63f07tw2XFPZcrztPXhwgGEgqrwSCF3iCRIZQhi90yGtZRkLt
         Q8IimJ03MH96UdeLUGPuSIjjXmXg2YJe3G/GkMhS67FZ+IQC+RwSp0dbP20cwq60e2sW
         uPPg==
X-Forwarded-Encrypted: i=1; AJvYcCWQfHTGglBXvQfXI+ocMU/p00okWwy6oWLAQmskGuvBlJyRhdBLASPOLBN8voGg0ptRlKXsnWd/pxHnW9sE@lists.linaro.org
X-Gm-Message-State: AOJu0Yyhix7YIulsrxAgcwxUtrQYtfAd3vqtJaM9GPUPyQYCmLbG/R9Q
	TjmSIyzuj8CwiBXJbth4HrscQ3Hg1eb0mGAFmThWaYlmFBIK1ZfbSDg54X6LpK4SQA==
X-Google-Smtp-Source: AGHT+IGhTQDOf5we86hU+CNxE3kXgJHwrrMO+v6dx5bUnVpNTQVXtu4MODwnFs2d5aVPIf4yHzsI+A==
X-Received: by 2002:a17:903:2b07:b0:205:80e7:dcc5 with SMTP id d9443c01a7336-20afc5e112bmr19118195ad.44.1727251114400;
        Wed, 25 Sep 2024 00:58:34 -0700 (PDT)
Received: from rayden (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20af182d693sm19978135ad.221.2024.09.25.00.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 00:58:33 -0700 (PDT)
Date: Wed, 25 Sep 2024 09:58:17 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: Andrew Davis <afd@ti.com>
Message-ID: <20240925075817.GB3519798@rayden>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5F0E33F3C2
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.178:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,kernel.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DNSWL_BLOCKED(0.00)[209.85.214.178:from,217.31.164.171:received];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: B7LOLNYDUN6PVZQT6VCPFCDC6RIZMCTJ
X-Message-ID-Hash: B7LOLNYDUN6PVZQT6VCPFCDC6RIZMCTJ
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B7LOLNYDUN6PVZQT6VCPFCDC6RIZMCTJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, Sep 24, 2024 at 01:13:18PM -0500, Andrew Davis wrote:
> On 9/23/24 1:33 AM, Dmitry Baryshkov wrote:
> > Hi,
> > 
> > On Fri, Aug 30, 2024 at 09:03:47AM GMT, Jens Wiklander wrote:
> > > Hi,
> > > 
> > > This patch set is based on top of Yong Wu's restricted heap patch set [1].
> > > It's also a continuation on Olivier's Add dma-buf secure-heap patch set [2].
> > > 
> > > The Linaro restricted heap uses genalloc in the kernel to manage the heap
> > > carvout. This is a difference from the Mediatek restricted heap which
> > > relies on the secure world to manage the carveout.
> > > 
> > > I've tried to adress the comments on [2], but [1] introduces changes so I'm
> > > afraid I've had to skip some comments.
> > 
> > I know I have raised the same question during LPC (in connection to
> > Qualcomm's dma-heap implementation). Is there any reason why we are
> > using generic heaps instead of allocating the dma-bufs on the device
> > side?
> > 
> > In your case you already have TEE device, you can use it to allocate and
> > export dma-bufs, which then get imported by the V4L and DRM drivers.
> > 
> 
> This goes to the heart of why we have dma-heaps in the first place.
> We don't want to burden userspace with having to figure out the right
> place to get a dma-buf for a given use-case on a given hardware.
> That would be very non-portable, and fail at the core purpose of
> a kernel: to abstract hardware specifics away.
> 
> Worse, the actual interface for dma-buf exporting changes from
> framework to framework (getting a dma-buf from DRM is different
> than V4L, and there would be yet another API for TEE, etc..)
> 
> Most subsystem don't need an allocator, they work just fine
> simply being only dma-bufs importers. Recent example being the
> IIO subsystem[0], for which some early posting included an
> allocator, but in the end, all that was needed was to consume
> buffers.
> 
> For devices that don't actually contain memory there is no
> reason to be an exporter. What most want is just to consume
> normal system memory. Or system memory with some constraints
> (e.g. contiguous, coherent, restricted, etc..).
> 
> > I have a feeling (I might be completely wrong here) that by using
> > generic dma-buf heaps we can easily end up in a situation when the
> > userspace depends heavily on the actual platform being used (to map the
> > platform to heap names). I think we should instead depend on the
> > existing devices (e.g. if there is a TEE device, use an IOCTL to
> > allocate secured DMA BUF from it, otherwise check for QTEE device,
> > otherwise check for some other vendor device).
> > 
> > The mental experiment to check if the API is correct is really simple:
> > Can you use exactly the same rootfs on several devices without
> > any additional tuning (e.g. your QEMU, HiKey, a Mediatek board, Qualcomm
> > laptop, etc)?
> > 
> 
> This is a great north star to follow. And exactly the reason we should
> *not* be exposing device specific constraints to userspace. The constrains
> change based on the platform. So a userspace would have to also pick
> a different set of constraints based on each platform.
> 
> Userspace knows which subsystems it will attach a buffer, and the
> kernel knows what constraints those devices have on a given platform.
> Ideal case is then allocate from the one exporter, attach to various
> devices, and have the constraints solved at map time by the exporter
> based on the set of attached devices.
> 
> For example, on one platform the display needs contiguous buffers,
> but on a different platform the display can scatter-gather. So
> what heap should our generic application allocate from when it
> wants a buffer consumable by the display, CMA or System?
> Answer *should* be always use the generic exporter, and that
> exporter then picks the right backing type based on the platform.
> 
> Userspace shouldn't be dealing with any of these constraints
> (looking back, adding the CMA heap was probably incorrect,
> and the System heap should have been the only one. Idea back
> then was a userspace helper would show up to do the constraint
> solving and pick the right heap. That has yet to materialize and
> folks are still just hardcoding which heap to use..).
> 
> Same for this restricted heap, I'd like to explore if we can
> enhance the System heap such that when attached to the TEE framework,
> the backing memory is either made restricted by fire-walling,
> or allocating from a TEE carveout (based on platform).

So the exporter (you mentioned System heap) will somehow know how to
interact with the TEE subsystem to allocate suitable memory?

I suppose the memory could be from a static carveout, dynamic restricted
memory allocation, or how to turn normal memory into restricted memory
(fire-walling), depending on the platform.

> 
> This will mean more inter-subsystem coordination, but we can
> iterate on these in kernel interfaces. We cannot iterate on
> userspace interfaces, those have to be correct the first time.

Good point, this approach should make it easier for userspace.

Thanks,
Jens

> 
> Andrew
> 
> [0] https://www.kernel.org/doc/html/next/iio/iio_dmabuf_api.html
> 
> > > 
> > > This can be tested on QEMU with the following steps:
> > > repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
> > >          -b prototype/sdp-v1
> > > repo sync -j8
> > > cd build
> > > make toolchains -j4
> > > make all -j$(nproc)
> > > make run-only
> > > # login and at the prompt:
> > > xtest --sdp-basic
> > > 
> > > https://optee.readthedocs.io/en/latest/building/prerequisites.html
> > > list dependencies needed to build the above.
> > > 
> > > The tests are pretty basic, mostly checking that a Trusted Application in
> > > the secure world can access and manipulate the memory.
> > 
> > - Can we test that the system doesn't crash badly if user provides
> >    non-secured memory to the users which expect a secure buffer?
> > 
> > - At the same time corresponding entities shouldn't decode data to the
> >    buffers accessible to the rest of the sytem.
> > 
> > > 
> > > Cheers,
> > > Jens
> > > 
> > > [1] https://lore.kernel.org/dri-devel/20240515112308.10171-1-yong.wu@mediatek.com/
> > > [2] https://lore.kernel.org/lkml/20220805135330.970-1-olivier.masse@nxp.com/
> > > 
> > > Changes since Olivier's post [2]:
> > > * Based on Yong Wu's post [1] where much of dma-buf handling is done in
> > >    the generic restricted heap
> > > * Simplifications and cleanup
> > > * New commit message for "dma-buf: heaps: add Linaro restricted dmabuf heap
> > >    support"
> > > * Replaced the word "secure" with "restricted" where applicable
> > > 
> > > Etienne Carriere (1):
> > >    tee: new ioctl to a register tee_shm from a dmabuf file descriptor
> > > 
> > > Jens Wiklander (2):
> > >    dma-buf: heaps: restricted_heap: add no_map attribute
> > >    dma-buf: heaps: add Linaro restricted dmabuf heap support
> > > 
> > > Olivier Masse (1):
> > >    dt-bindings: reserved-memory: add linaro,restricted-heap
> > > 
> > >   .../linaro,restricted-heap.yaml               |  56 ++++++
> > >   drivers/dma-buf/heaps/Kconfig                 |  10 ++
> > >   drivers/dma-buf/heaps/Makefile                |   1 +
> > >   drivers/dma-buf/heaps/restricted_heap.c       |  17 +-
> > >   drivers/dma-buf/heaps/restricted_heap.h       |   2 +
> > >   .../dma-buf/heaps/restricted_heap_linaro.c    | 165 ++++++++++++++++++
> > >   drivers/tee/tee_core.c                        |  38 ++++
> > >   drivers/tee/tee_shm.c                         | 104 ++++++++++-
> > >   include/linux/tee_drv.h                       |  11 ++
> > >   include/uapi/linux/tee.h                      |  29 +++
> > >   10 files changed, 426 insertions(+), 7 deletions(-)
> > >   create mode 100644 Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml
> > >   create mode 100644 drivers/dma-buf/heaps/restricted_heap_linaro.c
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
