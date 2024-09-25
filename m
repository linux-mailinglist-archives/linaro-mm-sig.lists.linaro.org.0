Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3982985850
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 13:41:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F80D3F638
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Sep 2024 11:41:27 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id D94543EF1C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 11:41:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ryyHCSF3;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.167.51 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53567b4c3f4so1033429e87.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Sep 2024 04:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727264471; x=1727869271; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eq5kqVdxIPnr1qj+gRKTOVccfM5+TlCgxfIme/nC8tk=;
        b=ryyHCSF3xITurlZg44eclB15DNpAthXxDGO4NoyYhz7TR8r/ZQffHtU9nFRL7uRLpD
         ZxfgIev0B6YP6mZVmUZeepTWPxFDU0RF7VRe+jMi2nODoBNA3A3G/C2bmkXmZ3XrtCBK
         BAQWWm//BOL5Wq1BJ4chKuQHMwiDwNAb6jXw1lWR3nYMEsD6YJth1mF/UrNukALUucqy
         8Ny4dgAQwjMKa2B6LkpTEGGf27DuFvWLudnbdE4iZZiy12VagA4bx4BD2wpU31igpndW
         mOLuswjViYrugZlEqQA1HjTySd7Sgz/NxHohlA4K9rnF1ZYI1eNOITYmxzQZkBcRLQqe
         SffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727264471; x=1727869271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eq5kqVdxIPnr1qj+gRKTOVccfM5+TlCgxfIme/nC8tk=;
        b=MxrXtd6jfjCdHkzfUxulD5iVhsPceoJhSm3xVjdc9MMhZs5WExRAVKK+PTaTy0YwJf
         WlDg5BWxV2qzkn+nNEaPVLhbYzfG7MdrRblDYIJYuTjB+uiW0zJi9VaPju0sQG7yxDhC
         jKVI/QWxV4qj58nPnjgclP9PdyFgXkrSgDgE8PDKVCYPHnVDuxnvBIrFA4Le8XMeef2c
         QrAtRy48OJrtWNgRcqcJW1W3GRPDpMK3eYdcBaTdpY8yoTdgkrBIKH3zcbgDav3R6MAq
         oljBnZfPaUgWo1LceiYDfHmGoLk4fKZdF2INMPrSS1+KwfHQpJPTniuw7AIOVhNnz/n4
         gyOQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3ZAMYpV5Y5S53YEFQVws6H03aJg5aWHgWxT9pR7I3kuVykGNIin0t+08j0s8GscBzDEyBl7MwSfLZuLFg@lists.linaro.org
X-Gm-Message-State: AOJu0Yyia1ExgcLH+DvE4t8HNqztjeMchPZ/2jntZmzDyK4uT2Ew7cCK
	GfunNwo1WxcKvImlLZtov7tMb2BfOx5f9TlXz3kwAlKoBnHMq64T5yAo/BFh/tLXXA==
X-Google-Smtp-Source: AGHT+IHqv2IMWN3oXR6umOJo26p2rI5FNSuQAxfP5Ks/Hkq3jsOKqQQKyJ6wBA/PwN9+yj2xFK6XGw==
X-Received: by 2002:a05:6512:3d0a:b0:52e:74d5:89ae with SMTP id 2adb3069b0e04-5387c7799d8mr1295841e87.39.1727264470164;
        Wed, 25 Sep 2024 04:41:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a85e5bf3sm500872e87.75.2024.09.25.04.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 04:41:09 -0700 (PDT)
Date: Wed, 25 Sep 2024 14:41:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jens Wiklander <jens.wiklander@linaro.org>
Message-ID: <bktt4yanmfn4gjljy2wxmigj6mncpga237oxyf4g4h2vxu2a3q@asnsn7smi4u2>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <20240925071504.GA3519798@rayden>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240925071504.GA3519798@rayden>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D94543EF1C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.51:from];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 25JAIM3NNKNEE4IQNCFFL2CV26RNDPKJ
X-Message-ID-Hash: 25JAIM3NNKNEE4IQNCFFL2CV26RNDPKJ
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/25JAIM3NNKNEE4IQNCFFL2CV26RNDPKJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 25, 2024 at 09:15:04AM GMT, Jens Wiklander wrote:
> On Mon, Sep 23, 2024 at 09:33:29AM +0300, Dmitry Baryshkov wrote:
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
> > I have a feeling (I might be completely wrong here) that by using
> > generic dma-buf heaps we can easily end up in a situation when the
> > userspace depends heavily on the actual platform being used (to map the
> > platform to heap names). I think we should instead depend on the
> > existing devices (e.g. if there is a TEE device, use an IOCTL to
> > allocate secured DMA BUF from it, otherwise check for QTEE device,
> > otherwise check for some other vendor device).
> 
> That makes sense, it's similar to what we do with TEE_IOC_SHM_ALLOC
> where we allocate from a carveout reserverd for shared memory with the
> secure world. It was even based on dma-buf until commit dfd0743f1d9e
> ("tee: handle lookup of shm with reference count 0").
> 
> We should use a new TEE_IOC_*_ALLOC for these new dma-bufs to avoid
> confusion and to have more freedom when designing the interface.
> 
> > 
> > The mental experiment to check if the API is correct is really simple:
> > Can you use exactly the same rootfs on several devices without
> > any additional tuning (e.g. your QEMU, HiKey, a Mediatek board, Qualcomm
> > laptop, etc)?
> 
> No, I don't think so.

Then the API needs to be modified.

Or the userspace needs to be modified in the way similar to Vulkan /
OpenCL / glvnd / VA / VDPU: platform-specific backends, coexisting on a
single rootfs.

It is more or less fine to have platform-specific rootfs when we are
talking about the embedded, resource-limited devices. But for the
end-user devices we must be able to install a generic distro with no
device-specific packages being selected.

> 
> > 
> > > 
> > > This can be tested on QEMU with the following steps:
> > > repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
> > >         -b prototype/sdp-v1
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
> >   non-secured memory to the users which expect a secure buffer?
> > 
> > - At the same time corresponding entities shouldn't decode data to the
> >   buffers accessible to the rest of the sytem.
> 
> I'll a few tests along that.
> 
> Thanks,
> Jens
> 
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
> > >   the generic restricted heap
> > > * Simplifications and cleanup
> > > * New commit message for "dma-buf: heaps: add Linaro restricted dmabuf heap
> > >   support"
> > > * Replaced the word "secure" with "restricted" where applicable
> > > 
> > > Etienne Carriere (1):
> > >   tee: new ioctl to a register tee_shm from a dmabuf file descriptor
> > > 
> > > Jens Wiklander (2):
> > >   dma-buf: heaps: restricted_heap: add no_map attribute
> > >   dma-buf: heaps: add Linaro restricted dmabuf heap support
> > > 
> > > Olivier Masse (1):
> > >   dt-bindings: reserved-memory: add linaro,restricted-heap
> > > 
> > >  .../linaro,restricted-heap.yaml               |  56 ++++++
> > >  drivers/dma-buf/heaps/Kconfig                 |  10 ++
> > >  drivers/dma-buf/heaps/Makefile                |   1 +
> > >  drivers/dma-buf/heaps/restricted_heap.c       |  17 +-
> > >  drivers/dma-buf/heaps/restricted_heap.h       |   2 +
> > >  .../dma-buf/heaps/restricted_heap_linaro.c    | 165 ++++++++++++++++++
> > >  drivers/tee/tee_core.c                        |  38 ++++
> > >  drivers/tee/tee_shm.c                         | 104 ++++++++++-
> > >  include/linux/tee_drv.h                       |  11 ++
> > >  include/uapi/linux/tee.h                      |  29 +++
> > >  10 files changed, 426 insertions(+), 7 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml
> > >  create mode 100644 drivers/dma-buf/heaps/restricted_heap_linaro.c
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
