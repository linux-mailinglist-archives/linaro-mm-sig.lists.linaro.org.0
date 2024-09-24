Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3429A984EBF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 01:15:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9593A4497B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Sep 2024 23:15:05 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by lists.linaro.org (Postfix) with ESMTPS id 0053F3F532
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Sep 2024 23:14:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=a5xhLqQD;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.179 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f75f116d11so61695311fa.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Sep 2024 16:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727219689; x=1727824489; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9NzgyJCmofpDvlL2LY7vWR+4GwIElX0CvHm/QEXv8qs=;
        b=a5xhLqQDAfGMcUGr5SFcPGairIexBfFmltfYwvQTvwfT4WWrJhUtn96b4EVR5mNBCS
         MNsHBe5191zRY8GspcytJEeNHyeDZ5nrw2YlieTZNCW5H+/CKxK8e0A709890AwTqAHk
         j/aA+TcjB+ba4PBIBdL9mYz/8+y2T3nlXwso7dVE09Q2s1azbo29hJrjmSKtrkJ3HHTq
         5qZsMoRrzFhb3MtDBrcC6pY60kxyKaYCsnZKHqt3gYW3anqhencTs9XYp5TnS63RZTs6
         iAntgEiCpI99nvPZRbzZlQF9VgiVkUhQ7zkKF47Sngal8QM7ekyx2IPBQYH3RtDe7ekU
         /dyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727219689; x=1727824489;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NzgyJCmofpDvlL2LY7vWR+4GwIElX0CvHm/QEXv8qs=;
        b=IeZJL8JmFUwcfx0wCmOuW4CFQZ2eJeK3hEaVh/7AIOZHbdvU0aKGZwImvrLua1EFeM
         uYtoDXmtsVJpZUJ/wxq5Y81r8KUVz5n8ug4otrt5v/RGk21QoBwA1wrJgMlW1pfrYCUT
         gyX0Q5c0F2QlwGWz9YTDrGiYhJo9Froj9RfMoqElplHW+yB0IPoGf2ofbMbiZ6JbRdiU
         xmynhxblux7T1Eu8oYY2bbrHYPVrS4l5K1Gf/1EJUCzzPRur4PGUyZKP9g6u4b4Akfeq
         odeslM6+ixo9y+QKoldaE6RA6rH7tcoHxfg5fvWbRWCp9JoJaJDhaDNmJ45H6gPCHCz5
         OCUA==
X-Forwarded-Encrypted: i=1; AJvYcCWM4vRUZGcoKGYrR5pcTnRsMivaGM1UU87eQQao3JLJtSJiN/te1o/pnuOTvu/QkDltpes8t+/vqi3O+KkH@lists.linaro.org
X-Gm-Message-State: AOJu0YwutZ0L/fNI1N/acpC6zh6JlPo1bjRgXcPNrzd2IDXyeG016FSA
	uBe5wPqPvuPMcExwIKFgcWwzTy9eo229E12kYrcBI6ObbeRIzV2dbmZ6NMXCKxCaVyQu3iNi0CJ
	tOgTaSRcA
X-Google-Smtp-Source: AGHT+IE5l1Rs+vPP0d46dRQ8kpFdT22PznwS2FzcBc27LRW1aZnDwn4h9lV6Lj8kxoQctlNMzBsynA==
X-Received: by 2002:a05:651c:210c:b0:2f7:5cd3:7235 with SMTP id 38308e7fff4ca-2f904a6fc6bmr5492391fa.0.1727219146549;
        Tue, 24 Sep 2024 16:05:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d282fe23sm3485591fa.20.2024.09.24.16.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 16:05:45 -0700 (PDT)
Date: Wed, 25 Sep 2024 02:05:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andrew Davis <afd@ti.com>
Message-ID: <mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0053F3F532
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DNSWL_BLOCKED(0.00)[209.85.208.179:from,2001:14ba:a0c3:3a00::b8c:received];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.179:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: HFXV7ALNVKD2JYSLC6IVODGUFU4RY7BG
X-Message-ID-Hash: HFXV7ALNVKD2JYSLC6IVODGUFU4RY7BG
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HFXV7ALNVKD2JYSLC6IVODGUFU4RY7BG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Sep 24, 2024 at 01:13:18PM GMT, Andrew Davis wrote:
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

Unfortunately all proposals to use dma-buf heaps were moving in the
described direction: let app select (somehow) from a platform- and
vendor- specific list of dma-buf heaps. In the kernel we at least know
the platform on which the system is running. Userspace generally doesn't
(and shouldn't). As such, it seems better to me to keep the knowledge in
the kernel and allow userspace do its job by calling into existing
device drivers.

> 
> Worse, the actual interface for dma-buf exporting changes from
> framework to framework (getting a dma-buf from DRM is different
> than V4L, and there would be yet another API for TEE, etc..)

But if the app is working with the particular subsystem, then it already
talks its language. Allocating a dma-buf is just another part of the
interface, which the app already has to support.

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

... secure, accessible only to the camera and video encoder, ... or
accessible only to the video decoder and the display unit. Who specifies
those restrictions? Can we express them in a platform-neutral way?

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

Great, I totally agree here.

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

The display can support scather-gather, the GPU needs bigger stride for
this particular format and the video encoder decoder can not support SG.
Which set of constraints and which buffer size should generic exporter
select?

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

Firewalling from which devices? Or rather allowing access from which
devices? Is it possible to specify that somehow?

> This will mean more inter-subsystem coordination, but we can
> iterate on these in kernel interfaces. We cannot iterate on
> userspace interfaces, those have to be correct the first time.
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

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
