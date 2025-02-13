Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D169A33AD6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 10:16:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 476454494F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 09:16:26 +0000 (UTC)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by lists.linaro.org (Postfix) with ESMTPS id 1332E42513
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 09:16:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="kOjRree/";
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.217.53 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-4bbd703245aso140817137.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 01:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739438172; x=1740042972; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BAacpC/hwDG/mtj28XuI3plzqqG6lLKWx9Gqjj8DVbw=;
        b=kOjRree/aiu5V/8htkIbxuSfxdgls7W9imNZeW7qTdBjnHnZFYUqe5yFr1I36SLS6G
         iSALxC9BB5Y3/3WKtB+PqA+4LjKM9EE5zuRAKXapgniFPUPf8xPJ1rvqgYfAJLDDfYe7
         fRfvnY0SetX+u54oKTl/1qHYGSBZ494dNna5JVpGvM7efNCgGQ3fMpqy8QaeC18aaPEF
         Vwa678spgDwJ5u2afOFsVuZT1P6ftuxF3GQ8SKpMxM5IogoRTmx/NbQEkaTX2Ol5X1g9
         kXVMtHcR4aJXvyHRMBXvZz+3lW9kYUG8dIqPqnzNC4rm24NSdcUri9HV/icZnRaXL/o0
         xm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739438172; x=1740042972;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BAacpC/hwDG/mtj28XuI3plzqqG6lLKWx9Gqjj8DVbw=;
        b=JFGnpPA1AmZFh6i8KXiMnbmXtbn5CpYH7vx5heulvZhXJ075U67Yok+/BOTOElTl62
         vUwwZo1UlenbgvrBs82+6qJ5hosSTfCA8ohf/ee6Bu/obCn2+wP/Dn6+FyaT3dq8FTa3
         5EHq/fIFJ+okEpHqhpOsHomcBIX9XvPv3x9aG7Uok3Jif/ukI5/q/ON981KNhORLFqAJ
         OJQ6nvUKcVablc7cgzkRxrYrDM9FGaNHH1Y/bBn0X7qtlwlfAvIp9dVEqhZPH3Guwr8M
         eSS4CrcZy7fDmdpAe1ozbjZP4D48AH0B2PAwkgme0AZeIeNrxuOwQMXSabXTaA+ViSyS
         Y+oA==
X-Forwarded-Encrypted: i=1; AJvYcCVuSsrKBbVBqMRoITDYcYTSZJcFmQO3QnMP9NwOc9lcGMJOvcxTm1Qj1A0EiMfXjZ5x+defyE7v6iyDocPT@lists.linaro.org
X-Gm-Message-State: AOJu0Yy5+zHAM0Mmu95STMPJADFjuqbKSNn1M4YK3xosvcuog0qkGkLm
	XGjNOW/Cb7S3yFS2qWAnXgFZKChkKb9CSoYS5SiiLkom60afxrMrxwyOClQdKyP9I1mB8OhX8a/
	BHX6pE9ugBwykDrHM6+5FUoixPP3w8pkt05ezgror
X-Gm-Gg: ASbGncsUIJdsRjC2EUSxoM+S4sL+PhVBNTqONR/uyxpnq34X3gBb0BShMyHF8Se7uby
	Ee++6ACKayiMu4/i7RzAHi7TtxWEh56qh6qBQF18Ql3KBM4G+jGCeNRMWFoTtNi/I4NThKI4Zfi
	w=
X-Google-Smtp-Source: AGHT+IHuPpL4xteSdbWgrL0r9v96spUDd3pY29fru20lM3gKm1cy1XWf5xoLNbeh3qhFcvaDPibH3i24OVPTFa+BmLk=
X-Received: by 2002:a05:6102:2912:b0:4b9:bc52:e050 with SMTP id
 ada2fe7eead31-4bc0351978amr3199364137.2.1739438172547; Thu, 13 Feb 2025
 01:16:12 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com>
In-Reply-To: <20250213093557.278f5d19@collabora.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 13 Feb 2025 14:46:01 +0530
X-Gm-Features: AWEUYZm0Wp1I6dLShCTCErZfuQ5_X523x-MqvIqYj1fsBxxxtOs8WA89SI1vekc
Message-ID: <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1332E42513
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_ONE(0.00)[1];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.217.53:from];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.53:from];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: VPDGKTCWE54IR65YXP4WBEQ77UUU6BBK
X-Message-ID-Hash: VPDGKTCWE54IR65YXP4WBEQ77UUU6BBK
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VPDGKTCWE54IR65YXP4WBEQ77UUU6BBK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 13 Feb 2025 at 14:06, Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Thu, 13 Feb 2025 12:11:52 +0530
> Sumit Garg <sumit.garg@linaro.org> wrote:
>
> > Hi Boris,
> >
> > On Thu, 13 Feb 2025 at 01:26, Boris Brezillon
> > <boris.brezillon@collabora.com> wrote:
> > >
> > > +Florent, who's working on protected-mode support in Panthor.
> > >
> > > Hi Jens,
> > >
> > > On Tue, 17 Dec 2024 11:07:36 +0100
> > > Jens Wiklander <jens.wiklander@linaro.org> wrote:
> > >
> > > > Hi,
> > > >
> > > > This patch set allocates the restricted DMA-bufs via the TEE subsystem.
> > >
> > > We're currently working on protected-mode support for Panthor [1] and it
> > > looks like your series (and the OP-TEE implementation that goes with
> > > it) would allow us to have a fully upstream/open solution for the
> > > protected content use case we're trying to support. I need a bit more
> > > time to play with the implementation but this looks very promising
> > > (especially the lend rstmem feature, which might help us allocate our
> > > FW sections that are supposed to execute code accessing protected
> > > content).
> >
> > Glad to hear that, if you can demonstrate an open source use case
> > based on this series then it will help to land it. We really would
> > love to see support for restricted DMA-buf consumers be it GPU, crypto
> > accelerator, media pipeline etc.
> >
> > >
> > > >
> > > > The TEE subsystem handles the DMA-buf allocations since it is the TEE
> > > > (OP-TEE, AMD-TEE, TS-TEE, or perhaps a future QCOMTEE) which sets up the
> > > > restrictions for the memory used for the DMA-bufs.
> > > >
> > > > I've added a new IOCTL, TEE_IOC_RSTMEM_ALLOC, to allocate the restricted
> > > > DMA-bufs. This IOCTL reaches the backend TEE driver, allowing it to choose
> > > > how to allocate the restricted physical memory.
> > >
> > > I'll probably have more questions soon, but here's one to start: any
> > > particular reason you didn't go for a dma-heap to expose restricted
> > > buffer allocation to userspace? I see you already have a cdev you can
> > > take ioctl()s from, but my understanding was that dma-heap was the
> > > standard solution for these device-agnostic/central allocators.
> >
> > This series started with the DMA heap approach only here [1] but later
> > discussions [2] lead us here. To point out specifically:
> >
> > - DMA heaps require reliance on DT to discover static restricted
> > regions carve-outs whereas via the TEE implementation driver (eg.
> > OP-TEE) those can be discovered dynamically.
>
> Hm, the system heap [1] doesn't rely on any DT information AFAICT.

Yeah but all the prior vendor specific secure/restricted DMA heaps
relied on DT information.

> The dynamic allocation scheme, where the TEE implementation allocates a
> chunk of protected memory for us would have a similar behavior, I guess.

In a dynamic scheme, the allocation will still be from CMA or system
heap depending on TEE implementation capabilities but the restriction
will be enforced via interaction with TEE.

>
> > - Dynamic allocation of buffers and making them restricted requires
> > vendor specific driver hooks with DMA heaps whereas the TEE subsystem
> > abstracts that out with underlying TEE implementation (eg. OP-TEE)
> > managing the dynamic buffer restriction.
>
> Yeah, the lend rstmem feature is clearly something tee specific, and I
> think that's okay to assume the user knows the protection request
> should go through the tee subsystem in that case.

Yeah but how will the user discover that? Rather than that it's better
for the user to directly ask the TEE device to allocate restricted
memory without worrying about how the memory restriction gets
enforced.

>
> > - TEE subsystem already has a well defined user-space interface for
> > managing shared memory buffers with TEE and restricted DMA buffers
> > will be yet another interface managed along similar lines.
>
> Okay, so the very reason I'm asking about the dma-buf heap interface is
> because there might be cases where the protected/restricted allocation
> doesn't go through the TEE (Mediatek has a TEE-free implementation
> for instance, but I realize vendor implementations are probably not the
> best selling point :-/).

You can always have a system with memory and peripheral access
permissions setup during boot (or even have a pre-configured hardware
as a special case) prior to booting up the kernel too. But that even
gets somehow configured by a TEE implementation during boot, so
calling it a TEE-free implementation seems over-simplified and not a
scalable solution. However, this patchset [1] from Mediatek requires
runtime TEE interaction too.

[1] https://lore.kernel.org/linux-arm-kernel/20240515112308.10171-1-yong.wu@mediatek.com/

> If we expose things as a dma-heap, we have
> a solution where integrators can pick the dma-heap they think is
> relevant for protected buffer allocations without the various drivers
> (GPU, video codec, ...) having to implement a dispatch function for all
> possible implementations. The same goes for userspace allocations,
> where passing a dma-heap name, is simpler than supporting different
> ioctl()s based on the allocation backend.

There have been several attempts with DMA heaps in the past which all
resulted in a very vendor specific vertically integrated solution. But
the solution with TEE subsystem aims to make it generic and vendor
agnostic.

>
> [1]https://elixir.bootlin.com/linux/v6.13.2/source/drivers/dma-buf/heaps/system_heap.c#L424

-Sumit
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
