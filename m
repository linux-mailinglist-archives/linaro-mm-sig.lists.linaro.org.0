Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1402A06E03
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 07:09:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 785BC3F622
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 06:09:09 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by lists.linaro.org (Postfix) with ESMTPS id 9A5E93F5C9
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jan 2025 06:09:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=w9sGRcdn;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.217.41 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-4afdfd3124dso180162137.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jan 2025 22:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736402942; x=1737007742; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vC9nJtt9rRq/geCAGZDFx6gLFWekfxOk8FhgpKUHqfQ=;
        b=w9sGRcdnuol7jToQdiUvM7IklpiOVwvQMeHLTdLqh8IjrWsgaOzL01TdX2FTA7f4jU
         DrgjodDUhrIY9pcfdzz6R0leMFKtQLH5tA+d9t1pp/oJQf0njb1yWarupcFEU55K+SdD
         Eo8NoisBuRsBpL9mnjo6qUxmDswUw6olc3+0OaE0Lk/M9NC/kMQ+tQzQo3XB3UHuqud1
         lkiY3pOOrN2fCCGOJOcfA4MWzvEPNT1mdDcKD5fwoCbD+4hNQwndo1uzpbVIXhW8qzxf
         eO49v9xvS39Otj0YKgbSDjJG+5BThfuqSF/NIOxQEdlkHacZKa40DDN8xIFpLcV+gGJL
         Ghwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736402942; x=1737007742;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vC9nJtt9rRq/geCAGZDFx6gLFWekfxOk8FhgpKUHqfQ=;
        b=elQVc5UY7ZxMXVA+hcLS8X9FSVG8K7ZNYeLSiAQFEOjiMtKD2ohrSkPaETxVDLfEi1
         IT4Xl+/Q//TpqYgEu/VfXWF3Rb/+7YNbTH2Es3CF6NOH3RzTBXxwMadbq3fe7wmW0JXI
         fB+QXuHCtqYi8NDs/NrVHeKT+M32yFumnsviSODJx7AGyZ1XPbf0kg/9AcGM5nfwK7xM
         vgBMuscmnhu71v1Vo5Oy+cyV1NHIma5JVQfDOe0H/NEKeJ8XhsfTZcTKqa7SS3fNxOR0
         W/HyHoCSQ0edJL0meInv2ZxNwGplxxZVP97RHh72XFWlF4tYIjxzPqTPtoCypQv5gOZz
         +nrg==
X-Forwarded-Encrypted: i=1; AJvYcCWzZy3ju9sXzn7z2fe7igzRVvrHrZMBnRpxwQndHJYmeH6KGpI6F2pmOqNfN69anLrN4N5kjA4numzM0nzw@lists.linaro.org
X-Gm-Message-State: AOJu0Yy16SNKHbftUg1AbEDlK71is7NOfb1ED1xaJys6U0/joQ1sV0cx
	7Hg8g+3NdauENdUyG4JtfucVv45gwdZ39hQNqVQ/Sv3+5BGbSW1OtevdBOma1PCV2QB/2JscM+A
	V7rv7BSeS9aFWDCfdmdPy03xYSpcnFfwlB22nyHS6
X-Gm-Gg: ASbGncv2VVLUvfCpD5VxfqxJeh3HpJDpapNF34v2PaC2LoZtTkDe+mHSNNoROiqTM/9
	gheSb275tKOFGaHL1pgL9HGPPVXjdH2czj0eIDyoC
X-Google-Smtp-Source: AGHT+IFkDZGBtCpO5FflLFvbdwmJ3sWoUbJtvuojzOG7I1CBRhorYbwloT2u1hpJHzN4tOBjlfcQFIZrLZuRC0Ec89I=
X-Received: by 2002:a05:6102:c8b:b0:4b2:adfb:4f91 with SMTP id
 ada2fe7eead31-4b3d0fb1764mr3879731137.21.1736402941990; Wed, 08 Jan 2025
 22:09:01 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <Z2KsuAs-Dd4ZDaXR@phenom.ffwll.local> <CAFA6WYNVHu7_-bNAuTYBRBdoJwfk2VrW5M4aFVkb_UWQ=uxTvQ@mail.gmail.com>
 <Z36ujiS8yyG1mfbA@phenom.ffwll.local>
In-Reply-To: <Z36ujiS8yyG1mfbA@phenom.ffwll.local>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 9 Jan 2025 11:38:50 +0530
X-Gm-Features: AbW1kvZpkNiFcSMyeI-DgMLrpBLgsFpc30qEZPbPGQ78luMHwy5kGq6PCahL58k
Message-ID: <CAFA6WYPXxUQYe9TF3PB9C0NwCz1eceCdYNa1yoKpv320M20qDw@mail.gmail.com>
To: simona.vetter@ffwll.ch
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9A5E93F5C9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.217.41:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.41:from];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: C533LF3VJLVSO3FMWPIJLITJCDWL426F
X-Message-ID-Hash: C533LF3VJLVSO3FMWPIJLITJCDWL426F
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C533LF3VJLVSO3FMWPIJLITJCDWL426F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 8 Jan 2025 at 22:27, Simona Vetter <simona.vetter@ffwll.ch> wrote:
>
> On Tue, Dec 24, 2024 at 12:05:19PM +0530, Sumit Garg wrote:
> > Hi Simona,
> >
> > On Wed, 18 Dec 2024 at 16:36, Simona Vetter <simona.vetter@ffwll.ch> wrote:
> > >
> > > On Tue, Dec 17, 2024 at 11:07:36AM +0100, Jens Wiklander wrote:
> > > > Hi,
> > > >
> > > > This patch set allocates the restricted DMA-bufs via the TEE subsystem.
> > > >
> > > > The TEE subsystem handles the DMA-buf allocations since it is the TEE
> > > > (OP-TEE, AMD-TEE, TS-TEE, or perhaps a future QCOMTEE) which sets up the
> > > > restrictions for the memory used for the DMA-bufs.
> > > >
> > > > I've added a new IOCTL, TEE_IOC_RSTMEM_ALLOC, to allocate the restricted
> > > > DMA-bufs. This IOCTL reaches the backend TEE driver, allowing it to choose
> > > > how to allocate the restricted physical memory.
> > > >
> > > > TEE_IOC_RSTMEM_ALLOC takes in addition to a size and flags parameters also
> > > > a use-case parameter. This is used by the backend TEE driver to decide on
> > > > allocation policy and which devices should be able to access the memory.
> > > >
> > > > Three use-cases (Secure Video Playback, Trusted UI, and Secure Video
> > > > Recording) has been identified so far to serve as examples of what can be
> > > > expected. More use-cases can be added in userspace ABI, but it's up to the
> > > > backend TEE drivers to provide the implementation.
> > > >
> > > > Each use-case has it's own restricted memory pool since different use-cases
> > > > requires isolation from different parts of the system. A restricted memory
> > > > pool can be based on a static carveout instantiated while probing the TEE
> > > > backend driver, or dynamically allocated from CMA and made restricted as
> > > > needed by the TEE.
> > > >
> > > > This can be tested on QEMU with the following steps:
> > > > repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
> > > >         -b prototype/sdp-v4
> > > > repo sync -j8
> > > > cd build
> > > > make toolchains -j$(nproc)
> > > > make SPMC_AT_EL=1 all -j$(nproc)
> > > > make SPMC_AT_EL=1 run-only
> > > > # login and at the prompt:
> > > > xtest --sdp-basic
> > > >
> > > > The SPMC_AT_EL=1 parameter configures the build with FF-A and an SPMC at
> > > > S-EL1 inside OP-TEE. The parameter can be changed into SPMC_AT_EL=n to test
> > > > without FF-A using the original SMC ABI instead. Please remember to do
> > > > %rm -rf ../trusted-firmware-a/build/qemu
> > > > for TF-A to be rebuilt properly using the new configuration.
> > > >
> > > > https://optee.readthedocs.io/en/latest/building/prerequisites.html
> > > > list dependencies needed to build the above.
> > > >
> > > > The tests are pretty basic, mostly checking that a Trusted Application in
> > > > the secure world can access and manipulate the memory. There are also some
> > > > negative tests for out of bounds buffers etc.
> > >
> > > I think I've dropped this on earlier encrypted dma-buf discussions for
> > > TEE, but can't find one right now ...
> >
> > Thanks for raising this query.
> >
> > >
> > > Do we have some open source userspace for this? To my knowledge we have
> > > two implementations of encrypted/content protected dma-buf in upstream
> > > right now in the amd and intel gpu drivers, and unless I'm mistaken they
> > > both have some minimal userspace supporting EXT_protected_textures:
> >
> > First of all to clarify the support Jens is adding here for allocating
> > restricted shared memory allocation in TEE subsystem is meant to be
> > generic and not specific to only secure media pipeline use-case. Then
> > here we not only have open source test applications but rather open
> > source firmware too (OP-TEE as a Trusted OS) [1] supporting this as a
> > core feature where we maintain a stable and extensible ABI among the
> > kernel and the OP-TEE core.
> >
> > Restricted memory is a feature enforced by hardware specific firewalls
> > where a particular TEE implementation governs which particular block
> > of memory is accessible to a particular peripheral or a CPU running in
> > a higher privileged mode than the Linux kernel. There can be numeric
> > use-cases surrounding that as follows:
> >
> > - Secure media pipeline where the contents gets decrypted and stored
> > in a restricted buffer which are then accessible only to media display
> > pipeline peripherals.
> > - Trusted user interface where a peripheral takes input from the user
> > and stores it in a restricted buffer which then is accessible to TEE
> > implementation only.
> > - Another possible use-case can be for the TEE implementation to store
> > key material in a restricted buffer which is only accessible to the
> > hardware crypto accelerator.
> >
> > I am sure there will be more use-cases related to this feature but
> > those will only be possible once we provide a stable and extensible
> > restricted memory interface among the Linux user-space and the secure
> > world user-space (normally referred to as Trusted Applications).
> >
> > [1] https://github.com/OP-TEE/optee_os/pull/7159
> >
> > >
> > > https://github.com/KhronosGroup/OpenGL-Registry/blob/main/extensions/EXT/EXT_protected_textures.txt
> > >
> > > It's not great, but it does just barely clear the bar in my opinion. I
> > > guess something in gstreamer or similar video pipeline framework would
> > > also do the job.
> > >
> > > Especially with the context of the uapi discussion in the v1/RFC thread I
> > > think we need more than a bare-bones testcase to make sure this works in
> > > actual use.
> >
> > Currently the TEE subsystem already supports a stable ABI for shared
> > memory allocator among Linux user-space and secure world user-space
> > here [2]. And the stable ABI for restricted memory is also along the
> > same lines meant to be a vendor neutral abstraction for the user-space
> > access. The current test cases not only test the interface but also
> > perform regression tests too.
> >
> > I am also in favour of end to end open source use-cases. But I fear
> > without progressing in a step wise manner as with this proposal we
> > would rather force developers to upstream all the software pieces in
> > one go which will be kind of a chicken and egg situation. I am sure
> > once this feature lands Mediatek folks will be interested to port
> > their secure video playback patchset [3] on top of it. Similarly other
> > silicon vendors like NXP, Qcom etc. will be motivated to do the same.
> >
> > [2] https://docs.kernel.org/userspace-api/tee.html
> > [3] https://lore.kernel.org/linux-arm-kernel/20240515112308.10171-1-yong.wu@mediatek.com/
>
> We get entire opengl/vulkan driver stacks ready before we merge new drm
> drivers, I really don't think this is too hard from a technical pov. And I
> think the mediatek patches had the same issue of lacking userspace for it,
> so that's not moving things forward.
> -Sima
>

Okay fair enough, I think I get your point. Currently we are missing
at least one peripheral support being the consumer for these
restricted DMA-bufs. So I discussed with Jens offline that we can try
with a crypto peripheral use-case first which can simply be
demonstrated using the current OP-TEE client user-space.

Also, in crypto peripheral use-case we can target the symmetric crypto
use-case first which already has a concept of hardware backed
symmetric key [1]. IOW, we should be able to come up with a generic
symmetric crypto algorithm which can be supported by different crypto
accelerators using a TEE backed restricted key DMA buffer.

[1] https://www.youtube.com/watch?v=GbcpwUBFGDw

-Sumit
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
