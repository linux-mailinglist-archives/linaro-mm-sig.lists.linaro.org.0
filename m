Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A430F9FB9DD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Dec 2024 07:35:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80EAA46046
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Dec 2024 06:35:38 +0000 (UTC)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by lists.linaro.org (Postfix) with ESMTPS id A12354114B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Dec 2024 06:35:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=HP73xWuj;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.217.43 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-4afdf8520c2so1307382137.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Dec 2024 22:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735022130; x=1735626930; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3Zq9pXWdMCIiKRm78Fz0nKGiQDNXa8eZUXqOAkcmGfs=;
        b=HP73xWujvEVP4aGb9C0omtEaysT9eVFzmwYXM+5KjsPlBBIbjTC1aYnO/Jy2l1DvB4
         6BckJFh7ZdRnBdlDgYt/xAmOzyzKQcKYQZ9qxu2q4QEktwVvOJy2KUA1Ol7B0W1BwTwN
         EV9dK2atan1Bz8JwbS8w8Kwqxtld0H34Cb4nic9iYf1DfHH8L7qniuyhTJhapNOf1vgI
         EVUOAg7BRBaEZgQ8wA3de/o7lhAW1RTsiF8Iqq1QDH0fHl3atQj3QICYFk2yZim33QBx
         1u+x/0OROB2kXORizf+kGdcOSKtuMfdmgAy0ogNFDu7SFlPGYIRGmdCwfEcalbaoxHOB
         zoFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735022130; x=1735626930;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Zq9pXWdMCIiKRm78Fz0nKGiQDNXa8eZUXqOAkcmGfs=;
        b=BXq5Set/Dk5YOqKijvP1lnS9oz1F++q1+/2CCZhDp4i6p6gFhEQlS190rPFyFEx+6W
         u4LAP3AS9s8mtDCqeaGAMvtjDn/dcR+MlGMXWHzGvddMdGtS2WdqFhliLJD+EPl+CX8x
         D58nRcLXU9ZY47s1XoAUykPMqhdZYkcVDsE3pAZB1MFvLWnpU6A0G+NHnq+6L2T881Kr
         W/ojYIij2zn8KMBlRz5BOALYUXS9NGqSBTZi73zOqKQbaqb58yamoYO8DLOhBSEuTxMA
         Ok4TrBwosjlCvHhRu75hISJnZHeYHJ2KDwFF8uFcTx8ZJMHgrMf4v+1nSVbYlvtXdLK7
         8yjA==
X-Forwarded-Encrypted: i=1; AJvYcCXrDjaRFHmBQaUX/pHM3hjDwqYjlM7aquo9CFsV3yZaCwmwwWh2iHl5Nuy1rWMUw8LywbyHvcyHiAA3kyUC@lists.linaro.org
X-Gm-Message-State: AOJu0YxuBOevcB7itqF7iuYdJnofryKKd83EaXTfaL5aWMn0/ln9HxRF
	o3OaSDuHMqEjwyenkdCoO90RDGBKSSIynOV4L53IlmCWgcXYumqIQP+ZpH5YJgbuIHuymT26yWW
	VUIEks4dmtMYoQNounrrSfmUiIAkJvQ8zAvYXv/C5
X-Gm-Gg: ASbGnctNxraEcVn3qqs6XqadIIgivK9tz7VjfALn7OVO3YeXugvaksfk83bURarIaE6
	R8DHeBfsMCVhlTXXVGlBguW6JOQoYqHguJ/c0rE4=
X-Google-Smtp-Source: AGHT+IHBGEiDjz6Xi6bSRilLnhrvDUnZnjwDfKo+IRnWMREtwJZQeqlx3d2SsFhIQvcJWIOsMS/OGGYp9Fswz+6EXrA=
X-Received: by 2002:a05:6102:1629:b0:4b2:5d16:f75 with SMTP id
 ada2fe7eead31-4b2cc31c5e0mr12719925137.4.1735022130097; Mon, 23 Dec 2024
 22:35:30 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org> <Z2KsuAs-Dd4ZDaXR@phenom.ffwll.local>
In-Reply-To: <Z2KsuAs-Dd4ZDaXR@phenom.ffwll.local>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 24 Dec 2024 12:05:19 +0530
Message-ID: <CAFA6WYNVHu7_-bNAuTYBRBdoJwfk2VrW5M4aFVkb_UWQ=uxTvQ@mail.gmail.com>
To: simona.vetter@ffwll.ch
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A12354114B
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.217.43:from];
	DNSWL_BLOCKED(0.00)[209.85.217.43:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.43:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 7WYQWFCI4XX6IL4EXXWPYFM6O3KJ6Q34
X-Message-ID-Hash: 7WYQWFCI4XX6IL4EXXWPYFM6O3KJ6Q34
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7WYQWFCI4XX6IL4EXXWPYFM6O3KJ6Q34/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Simona,

On Wed, 18 Dec 2024 at 16:36, Simona Vetter <simona.vetter@ffwll.ch> wrote:
>
> On Tue, Dec 17, 2024 at 11:07:36AM +0100, Jens Wiklander wrote:
> > Hi,
> >
> > This patch set allocates the restricted DMA-bufs via the TEE subsystem.
> >
> > The TEE subsystem handles the DMA-buf allocations since it is the TEE
> > (OP-TEE, AMD-TEE, TS-TEE, or perhaps a future QCOMTEE) which sets up the
> > restrictions for the memory used for the DMA-bufs.
> >
> > I've added a new IOCTL, TEE_IOC_RSTMEM_ALLOC, to allocate the restricted
> > DMA-bufs. This IOCTL reaches the backend TEE driver, allowing it to choose
> > how to allocate the restricted physical memory.
> >
> > TEE_IOC_RSTMEM_ALLOC takes in addition to a size and flags parameters also
> > a use-case parameter. This is used by the backend TEE driver to decide on
> > allocation policy and which devices should be able to access the memory.
> >
> > Three use-cases (Secure Video Playback, Trusted UI, and Secure Video
> > Recording) has been identified so far to serve as examples of what can be
> > expected. More use-cases can be added in userspace ABI, but it's up to the
> > backend TEE drivers to provide the implementation.
> >
> > Each use-case has it's own restricted memory pool since different use-cases
> > requires isolation from different parts of the system. A restricted memory
> > pool can be based on a static carveout instantiated while probing the TEE
> > backend driver, or dynamically allocated from CMA and made restricted as
> > needed by the TEE.
> >
> > This can be tested on QEMU with the following steps:
> > repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
> >         -b prototype/sdp-v4
> > repo sync -j8
> > cd build
> > make toolchains -j$(nproc)
> > make SPMC_AT_EL=1 all -j$(nproc)
> > make SPMC_AT_EL=1 run-only
> > # login and at the prompt:
> > xtest --sdp-basic
> >
> > The SPMC_AT_EL=1 parameter configures the build with FF-A and an SPMC at
> > S-EL1 inside OP-TEE. The parameter can be changed into SPMC_AT_EL=n to test
> > without FF-A using the original SMC ABI instead. Please remember to do
> > %rm -rf ../trusted-firmware-a/build/qemu
> > for TF-A to be rebuilt properly using the new configuration.
> >
> > https://optee.readthedocs.io/en/latest/building/prerequisites.html
> > list dependencies needed to build the above.
> >
> > The tests are pretty basic, mostly checking that a Trusted Application in
> > the secure world can access and manipulate the memory. There are also some
> > negative tests for out of bounds buffers etc.
>
> I think I've dropped this on earlier encrypted dma-buf discussions for
> TEE, but can't find one right now ...

Thanks for raising this query.

>
> Do we have some open source userspace for this? To my knowledge we have
> two implementations of encrypted/content protected dma-buf in upstream
> right now in the amd and intel gpu drivers, and unless I'm mistaken they
> both have some minimal userspace supporting EXT_protected_textures:

First of all to clarify the support Jens is adding here for allocating
restricted shared memory allocation in TEE subsystem is meant to be
generic and not specific to only secure media pipeline use-case. Then
here we not only have open source test applications but rather open
source firmware too (OP-TEE as a Trusted OS) [1] supporting this as a
core feature where we maintain a stable and extensible ABI among the
kernel and the OP-TEE core.

Restricted memory is a feature enforced by hardware specific firewalls
where a particular TEE implementation governs which particular block
of memory is accessible to a particular peripheral or a CPU running in
a higher privileged mode than the Linux kernel. There can be numeric
use-cases surrounding that as follows:

- Secure media pipeline where the contents gets decrypted and stored
in a restricted buffer which are then accessible only to media display
pipeline peripherals.
- Trusted user interface where a peripheral takes input from the user
and stores it in a restricted buffer which then is accessible to TEE
implementation only.
- Another possible use-case can be for the TEE implementation to store
key material in a restricted buffer which is only accessible to the
hardware crypto accelerator.

I am sure there will be more use-cases related to this feature but
those will only be possible once we provide a stable and extensible
restricted memory interface among the Linux user-space and the secure
world user-space (normally referred to as Trusted Applications).

[1] https://github.com/OP-TEE/optee_os/pull/7159

>
> https://github.com/KhronosGroup/OpenGL-Registry/blob/main/extensions/EXT/EXT_protected_textures.txt
>
> It's not great, but it does just barely clear the bar in my opinion. I
> guess something in gstreamer or similar video pipeline framework would
> also do the job.
>
> Especially with the context of the uapi discussion in the v1/RFC thread I
> think we need more than a bare-bones testcase to make sure this works in
> actual use.

Currently the TEE subsystem already supports a stable ABI for shared
memory allocator among Linux user-space and secure world user-space
here [2]. And the stable ABI for restricted memory is also along the
same lines meant to be a vendor neutral abstraction for the user-space
access. The current test cases not only test the interface but also
perform regression tests too.

I am also in favour of end to end open source use-cases. But I fear
without progressing in a step wise manner as with this proposal we
would rather force developers to upstream all the software pieces in
one go which will be kind of a chicken and egg situation. I am sure
once this feature lands Mediatek folks will be interested to port
their secure video playback patchset [3] on top of it. Similarly other
silicon vendors like NXP, Qcom etc. will be motivated to do the same.

[2] https://docs.kernel.org/userspace-api/tee.html
[3] https://lore.kernel.org/linux-arm-kernel/20240515112308.10171-1-yong.wu@mediatek.com/

-Sumit

>
> Cheers, Sima
>
> >
> > Thanks,
> > Jens
> >
> > Changes since V3:
> > * Make the use_case and flags field in struct tee_shm u32's instead of
> >   u16's
> > * Add more description for TEE_IOC_RSTMEM_ALLOC in the header file
> > * Import namespace DMA_BUF in module tee, reported by lkp@intel.com
> > * Added a note in the commit message for "optee: account for direction
> >   while converting parameters" why it's needed
> > * Factor out dynamic restricted memory allocation from
> >   "optee: support restricted memory allocation" into two new commits
> >   "optee: FF-A: dynamic restricted memory allocation" and
> >   "optee: smc abi: dynamic restricted memory allocation"
> > * Guard CMA usage with #ifdef CONFIG_CMA, effectively disabling dynamic
> >   restricted memory allocate if CMA isn't configured
> >
> > Changes since the V2 RFC:
> > * Based on v6.12
> > * Replaced the flags for SVP and Trusted UID memory with a u32 field with
> >   unique id for each use case
> > * Added dynamic allocation of restricted memory pools
> > * Added OP-TEE ABI both with and without FF-A for dynamic restricted memory
> > * Added support for FF-A with FFA_LEND
> >
> > Changes since the V1 RFC:
> > * Based on v6.11
> > * Complete rewrite, replacing the restricted heap with TEE_IOC_RSTMEM_ALLOC
> >
> > Changes since Olivier's post [2]:
> > * Based on Yong Wu's post [1] where much of dma-buf handling is done in
> >   the generic restricted heap
> > * Simplifications and cleanup
> > * New commit message for "dma-buf: heaps: add Linaro restricted dmabuf heap
> >   support"
> > * Replaced the word "secure" with "restricted" where applicable
> >
> > Jens Wiklander (6):
> >   tee: add restricted memory allocation
> >   optee: account for direction while converting parameters
> >   optee: sync secure world ABI headers
> >   optee: support restricted memory allocation
> >   optee: FF-A: dynamic restricted memory allocation
> >   optee: smc abi: dynamic restricted memory allocation
> >
> >  drivers/tee/Makefile              |   1 +
> >  drivers/tee/optee/Makefile        |   1 +
> >  drivers/tee/optee/call.c          |  10 +-
> >  drivers/tee/optee/core.c          |   1 +
> >  drivers/tee/optee/ffa_abi.c       | 178 +++++++++++++-
> >  drivers/tee/optee/optee_ffa.h     |  27 ++-
> >  drivers/tee/optee/optee_msg.h     |  65 ++++-
> >  drivers/tee/optee/optee_private.h |  75 ++++--
> >  drivers/tee/optee/optee_smc.h     |  71 +++++-
> >  drivers/tee/optee/rpc.c           |  31 ++-
> >  drivers/tee/optee/rstmem.c        | 388 ++++++++++++++++++++++++++++++
> >  drivers/tee/optee/smc_abi.c       | 213 ++++++++++++++--
> >  drivers/tee/tee_core.c            |  38 ++-
> >  drivers/tee/tee_private.h         |   2 +
> >  drivers/tee/tee_rstmem.c          | 201 ++++++++++++++++
> >  drivers/tee/tee_shm.c             |   2 +
> >  drivers/tee/tee_shm_pool.c        |  69 +++++-
> >  include/linux/tee_core.h          |  15 ++
> >  include/linux/tee_drv.h           |   2 +
> >  include/uapi/linux/tee.h          |  44 +++-
> >  20 files changed, 1358 insertions(+), 76 deletions(-)
> >  create mode 100644 drivers/tee/optee/rstmem.c
> >  create mode 100644 drivers/tee/tee_rstmem.c
> >
> >
> > base-commit: fac04efc5c793dccbd07e2d59af9f90b7fc0dca4
> > --
> > 2.43.0
> >
>
> --
> Simona Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
