Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 157E34E788E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 17:00:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4447A3F06A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 16:00:47 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	by lists.linaro.org (Postfix) with ESMTPS id 2CCE83ED42
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 16:00:43 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 123-20020a1c1981000000b0038b3616a71aso4653725wmz.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 09:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=v6fJIBMuRHJLw7vnAFtPrCYUZF3vox8itAjfYEsnRAg=;
        b=Dq+HfmYTglhLMTn++FbIE3CQlCK9rxGF4+fv29oLd2RJxj37HtpoidlLDgnxhWjOW7
         WnzmLRFHP4AS1Xolq6c25Dpmb9U/u1JO4GkuznlpO/NNfABiYjIQE0UuFR1cmmecRvZa
         3CiKh9oTFa9a6JczE7JO8jJTas3TLRUwHidt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=v6fJIBMuRHJLw7vnAFtPrCYUZF3vox8itAjfYEsnRAg=;
        b=it390gDrqlsYaYsEmxynKR9xm3E/Aco45XTccfBSjpHb5CHLBKmq8/kRZNbE6IPpLS
         PmhqdQGgxJyhruO1FDtTUjp0y+8dP0mvx5OJJ2gzMnscDfHp13BSLKbd7CO4JWMpweWk
         +pVXAGD/ou4dVm0ehvU1gN/ORi1Un30m8ZEfcmxCYjUDbeHMWmDo+lOJ/LW1UupD925N
         0iBIYYtJfjjhtN96v2gKweFdgStNYf+QD68PTvbJoRvNiXSYvGFigOE2oen/raCju5yu
         WYjc/Y4fS0k2PUcuC4fatu2PDZnuA5yqZtP3ibNFLL2AL0cgavKIjaoTMoHYPg5NDKpQ
         5/HQ==
X-Gm-Message-State: AOAM532WcsymTFk0CIOvh2+swiYMIs/USTwWIMVPry3jsTE0ahJveBkY
	gKCCr0cHNcyc/jn7oOfxFdA2DQ==
X-Google-Smtp-Source: ABdhPJw7RzGqWYc05kkA108f/5YBlekmrcAbgWFEUUwTTEN3GxqTv5bnl4d+DY1p+gfREYs7M7JpoQ==
X-Received: by 2002:a05:600c:1552:b0:38c:de92:6a2f with SMTP id f18-20020a05600c155200b0038cde926a2fmr6045690wmg.152.1648224042010;
        Fri, 25 Mar 2022 09:00:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id c24-20020a7bc018000000b0038a18068cf5sm8520967wmb.15.2022.03.25.09.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 09:00:41 -0700 (PDT)
Date: Fri, 25 Mar 2022 17:00:39 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yj3nJ78qhePjpyVo@phenom.ffwll.local>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <Yj2TiqwRMTNEEB3D@phenom.ffwll.local>
 <Yj2UXwOh7/bAm8+J@phenom.ffwll.local>
 <83c2935d-e5e9-7c4d-f350-9372cce26c8d@amd.com>
 <Yj2W06Fri9jQbOrQ@phenom.ffwll.local>
 <0f0cf8e1-bab5-79a7-81e2-1e04a07ac6ce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f0cf8e1-bab5-79a7-81e2-1e04a07ac6ce@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: DJWMQPQVEMV3FV7M7CT5MIDXPV4OJVAW
X-Message-ID-Hash: DJWMQPQVEMV3FV7M7CT5MIDXPV4OJVAW
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: add dma_fence_unwrap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DJWMQPQVEMV3FV7M7CT5MIDXPV4OJVAW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 25, 2022 at 01:56:23PM +0100, Christian K=F6nig wrote:
> Am 25.03.22 um 11:17 schrieb Daniel Vetter:
> > On Fri, Mar 25, 2022 at 11:10:15AM +0100, Christian K=F6nig wrote:
> > > Am 25.03.22 um 11:07 schrieb Daniel Vetter:
> > > > On Fri, Mar 25, 2022 at 11:03:54AM +0100, Daniel Vetter wrote:
> > > > > On Fri, Mar 11, 2022 at 12:02:43PM +0100, Christian K=F6nig wrote:
> > > > > > Add a general purpose helper to deep dive into dma_fence_chain/=
dma_fence_array
> > > > > > structures and iterate over all the fences in them.
> > > > > >=20
> > > > > > This is useful when we need to flatten out all fences in those =
structures.
> > > > > >=20
> > > > > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > > > > ---
> > > > > >    Documentation/driver-api/dma-buf.rst  |   6 +
> > > > > >    drivers/dma-buf/Makefile              |   1 +
> > > > > >    drivers/dma-buf/selftests.h           |   1 +
> > > > > >    drivers/dma-buf/st-dma-fence-unwrap.c | 279 ++++++++++++++++=
++++++++++
> > > > > >    include/linux/dma-fence-unwrap.h      |  99 +++++++++
> > > > > >    5 files changed, 386 insertions(+)
> > > > > >    create mode 100644 drivers/dma-buf/st-dma-fence-unwrap.c
> > > > > >    create mode 100644 include/linux/dma-fence-unwrap.h
> > > > > >=20
> > > > > > diff --git a/Documentation/driver-api/dma-buf.rst b/Documentati=
on/driver-api/dma-buf.rst
> > > > > > index 2cd7db82d9fe..7209500f08c8 100644
> > > > > > --- a/Documentation/driver-api/dma-buf.rst
> > > > > > +++ b/Documentation/driver-api/dma-buf.rst
> > > > > > @@ -194,6 +194,12 @@ DMA Fence Chain
> > > > > >    .. kernel-doc:: include/linux/dma-fence-chain.h
> > > > > >       :internal:
> > > > > > +DMA Fence unwrap
> > > > > > +~~~~~~~~~~~~~~~~
> > > > > > +
> > > > > > +.. kernel-doc:: include/linux/dma-fence-unwrap.h
> > > > > > +   :internal:
> > > > Ok I forgot one bikeshed: I'd just include this in dma-fence-chain.=
h and
> > > > maybe go with the dma_fence_chain_unwrap_ prefix for everything. Th=
at
> > > > makes it even more clearer that the two are meant to go together. P=
lus ofc
> > > > the link from struct dma_fence_chain to this iterator in the docs t=
oo.
> > > >=20
> > > > Or I'm just not understanding why you made this a separate thing?
> > > Well it should be used to unwrap dma_fence_array containers as well a=
nd I
> > > don't really want to add a dependency between dma_fence_chain and
> > > dma_fence_array.
> > >=20
> > > I've spend quite some work to keep the two containers separated and a=
lso
> > > describe the separate use cases for each.
> > >=20
> > > I can of course add some kerneldoc to let the chain and array documen=
tation
> > > point to this one here.
> > Yeah I think as a general iterator they should be fine as a separate
> > thing. Also just realized that we'd need links from both array and chain
> > to this since it's for both.
>=20
> Done.
>=20
> >=20
> > The other thing I noticed is that we have dma_fence_chain_for_each()
> > already. Should we replace all users of that outside of dma-fence-chain=
.c
> > with this new thing, and move the chain specific iterator into
> > dma-fence-chain.c so that it's hidden and people don't make funny
> > accidents? Just for more safety in this maze, also ofc that's all
> > follow-up.
>=20
> Uff, good question. There are some valid use cases for it I think.
>=20
> Especially the timeline syncobj handling only want to work with chain
> structures and not with the eventually contained array.
>=20
> It could just be that we might want to wrap those use cases into
> dma_fence_chain helpers.

Yeah one of the drm_syncobj ones looked somewhat legit, the other is just
a dma_fence_chain_do_gc() in a trechcoat and should be wrapped in a proper
interface I guess. The driver ones looked more like they really want to
just walk fences (some iirc even hand-roll the array unwrapping further
down on their own).

> Anyway, not stuff for drm-misc-next-fixes, but going to keep that in mind.

Agreed.
-Daniel

>=20
> Christian.
>=20
> > -Daniel
> >=20
> >=20
> >=20
> > > Thanks,
> > > Christian.
> > >=20
> > > > -Daniel
> > > >=20
> > > > > > +
> > > > > >    DMA Fence uABI/Sync File
> > > > > >    ~~~~~~~~~~~~~~~~~~~~~~~~
> > > > > > diff --git a/drivers/dma-buf/Makefile b/drivers/dma-buf/Makefile
> > > > > > index 511805dbeb75..4c9eb53ba3f8 100644
> > > > > > --- a/drivers/dma-buf/Makefile
> > > > > > +++ b/drivers/dma-buf/Makefile
> > > > > > @@ -12,6 +12,7 @@ dmabuf_selftests-y :=3D \
> > > > > >    	selftest.o \
> > > > > >    	st-dma-fence.o \
> > > > > >    	st-dma-fence-chain.o \
> > > > > > +	st-dma-fence-unwrap.o \
> > > > > >    	st-dma-resv.o
> > > > > >    obj-$(CONFIG_DMABUF_SELFTESTS)	+=3D dmabuf_selftests.o
> > > > > > diff --git a/drivers/dma-buf/selftests.h b/drivers/dma-buf/self=
tests.h
> > > > > > index 97d73aaa31da..851965867d9c 100644
> > > > > > --- a/drivers/dma-buf/selftests.h
> > > > > > +++ b/drivers/dma-buf/selftests.h
> > > > > > @@ -12,4 +12,5 @@
> > > > > >    selftest(sanitycheck, __sanitycheck__) /* keep first (igt se=
lfcheck) */
> > > > > >    selftest(dma_fence, dma_fence)
> > > > > >    selftest(dma_fence_chain, dma_fence_chain)
> > > > > > +selftest(dma_fence_unwrap, dma_fence_unwrap)
> > > > > >    selftest(dma_resv, dma_resv)
> > > > > > diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dm=
a-buf/st-dma-fence-unwrap.c
> > > > > > new file mode 100644
> > > > > > index 000000000000..d821faaebe93
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/dma-buf/st-dma-fence-unwrap.c
> > > > > > @@ -0,0 +1,279 @@
> > > > > > +// SPDX-License-Identifier: MIT
> > > > > > +
> > > > > > +/*
> > > > > > + * Copyright (C) 2022 Advanced Micro Devices, Inc.
> > > > > > + */
> > > > > > +
> > > > > > +#include <linux/dma-fence-unwrap.h>
> > > > > > +#if 0
> > > > > > +#include <linux/kernel.h>
> > > > > > +#include <linux/kthread.h>
> > > > > > +#include <linux/mm.h>
> > > > > > +#include <linux/sched/signal.h>
> > > > > > +#include <linux/slab.h>
> > > > > > +#include <linux/spinlock.h>
> > > > > > +#include <linux/random.h>
> > > > > > +#endif
> > > > > > +
> > > > > > +#include "selftest.h"
> > > > > > +
> > > > > > +#define CHAIN_SZ (4 << 10)
> > > > > > +
> > > > > > +static struct kmem_cache *slab_fences;
> > > > > Your own slab feels a bit like overkill. kmalloc/kfree not good e=
nough?
> > > > >=20
> > > > > > +
> > > > > > +static inline struct mock_fence {
> > > > > > +	struct dma_fence base;
> > > > > > +	spinlock_t lock;
> > > > > > +} *to_mock_fence(struct dma_fence *f) {
> > > > > > +	return container_of(f, struct mock_fence, base);
> > > > > > +}
> > > > > > +
> > > > > > +static const char *mock_name(struct dma_fence *f)
> > > > > > +{
> > > > > > +	return "mock";
> > > > > > +}
> > > > > > +
> > > > > > +static void mock_fence_release(struct dma_fence *f)
> > > > > > +{
> > > > > > +	kmem_cache_free(slab_fences, to_mock_fence(f));
> > > > > > +}
> > > > > > +
> > > > > > +static const struct dma_fence_ops mock_ops =3D {
> > > > > > +	.get_driver_name =3D mock_name,
> > > > > > +	.get_timeline_name =3D mock_name,
> > > > > > +	.release =3D mock_fence_release,
> > > > > > +};
> > > > > > +
> > > > > > +static struct dma_fence *mock_fence(void)
> > > > > > +{
> > > > > > +	struct mock_fence *f;
> > > > > > +
> > > > > > +	f =3D kmem_cache_alloc(slab_fences, GFP_KERNEL);
> > > > > > +	if (!f)
> > > > > > +		return NULL;
> > > > > > +
> > > > > > +	spin_lock_init(&f->lock);
> > > > > > +	dma_fence_init(&f->base, &mock_ops, &f->lock, 0, 0);
> > > > > > +
> > > > > > +	return &f->base;
> > > > > > +}
> > > > > > +
> > > > > > +static struct dma_fence *mock_array(unsigned int num_fences, .=
..)
> > > > > > +{
> > > > > > +	struct dma_fence_array *array;
> > > > > > +	struct dma_fence **fences;
> > > > > > +	va_list valist;
> > > > > > +	int i;
> > > > > > +
> > > > > > +	fences =3D kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
> > > > > > +	if (!fences)
> > > > > > +		return NULL;
> > > > > > +
> > > > > > +	va_start(valist, num_fences);
> > > > > > +	for (i =3D 0; i < num_fences; ++i)
> > > > > > +		fences[i] =3D va_arg(valist, typeof(*fences));
> > > > > > +	va_end(valist);
> > > > > > +
> > > > > > +	array =3D dma_fence_array_create(num_fences, fences,
> > > > > > +				       dma_fence_context_alloc(1),
> > > > > > +				       1, false);
> > > > > > +	if (!array)
> > > > > > +		goto cleanup;
> > > > > > +	return &array->base;
> > > > > > +
> > > > > > +cleanup:
> > > > > > +	for (i =3D 0; i < num_fences; ++i)
> > > > > > +		dma_fence_put(fences[i]);
> > > > > > +	kfree(fences);
> > > > > > +	return NULL;
> > > > > > +}
> > > > > > +
> > > > > > +static struct dma_fence *mock_chain(struct dma_fence *prev,
> > > > > > +				    struct dma_fence *fence)
> > > > > > +{
> > > > > > +	struct dma_fence_chain *f;
> > > > > > +
> > > > > > +	f =3D dma_fence_chain_alloc();
> > > > > > +	if (!f) {
> > > > > > +		dma_fence_put(prev);
> > > > > > +		dma_fence_put(fence);
> > > > > > +		return NULL;
> > > > > > +	}
> > > > > > +
> > > > > > +	dma_fence_chain_init(f, prev, fence, 1);
> > > > > > +	return &f->base;
> > > > > > +}
> > > > > > +
> > > > > > +static int sanitycheck(void *arg)
> > > > > > +{
> > > > > > +	struct dma_fence *f, *chain, *array;
> > > > > > +	int err =3D 0;
> > > > > > +
> > > > > > +	f =3D mock_fence();
> > > > > > +	if (!f)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	array =3D mock_array(1, f);
> > > > > > +	if (!array)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	chain =3D mock_chain(NULL, array);
> > > > > > +	if (!chain)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	dma_fence_signal(f);
> > > > > > +	dma_fence_put(chain);
> > > > > > +	return err;
> > > > > > +}
> > > > > > +
> > > > > > +static int unwrap_array(void *arg)
> > > > > > +{
> > > > > > +	struct dma_fence *fence, *f1, *f2, *array;
> > > > > > +	struct dma_fence_unwrap iter;
> > > > > > +	int err =3D 0;
> > > > > > +
> > > > > > +	f1 =3D mock_fence();
> > > > > > +	if (!f1)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	f2 =3D mock_fence();
> > > > > > +	if (!f2) {
> > > > > > +		dma_fence_put(f1);
> > > > > > +		return -ENOMEM;
> > > > > > +	}
> > > > > > +
> > > > > > +	array =3D mock_array(2, f1, f2);
> > > > > > +	if (!array)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	dma_fence_unwrap_for_each(fence, &iter, array) {
> > > > > > +		if (fence =3D=3D f1) {
> > > > > > +			f1 =3D NULL;
> > > > > > +		} else if (fence =3D=3D f2) {
> > > > > > +			f2 =3D NULL;
> > > > > > +		} else {
> > > > > > +			pr_err("Unexpected fence!\n");
> > > > > > +			err =3D -EINVAL;
> > > > > > +		}
> > > > > > +	}
> > > > > > +
> > > > > > +	if (f1 || f2) {
> > > > > > +		pr_err("Not all fences seen!\n");
> > > > > > +		err =3D -EINVAL;
> > > > > > +	}
> > > > > > +
> > > > > > +	dma_fence_signal(f1);
> > > > > > +	dma_fence_signal(f2);
> > > > > > +	dma_fence_put(array);
> > > > > > +	return 0;
> > > > > > +}
> > > > > > +
> > > > > > +static int unwrap_chain(void *arg)
> > > > > > +{
> > > > > > +	struct dma_fence *fence, *f1, *f2, *chain;
> > > > > > +	struct dma_fence_unwrap iter;
> > > > > > +	int err =3D 0;
> > > > > > +
> > > > > > +	f1 =3D mock_fence();
> > > > > > +	if (!f1)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	f2 =3D mock_fence();
> > > > > > +	if (!f2) {
> > > > > > +		dma_fence_put(f1);
> > > > > > +		return -ENOMEM;
> > > > > > +	}
> > > > > > +
> > > > > > +	chain =3D mock_chain(f1, f2);
> > > > > > +	if (!chain)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	dma_fence_unwrap_for_each(fence, &iter, chain) {
> > > > > > +		if (fence =3D=3D f1) {
> > > > > > +			f1 =3D NULL;
> > > > > > +		} else if (fence =3D=3D f2) {
> > > > > > +			f2 =3D NULL;
> > > > > > +		} else {
> > > > > > +			pr_err("Unexpected fence!\n");
> > > > > > +			err =3D -EINVAL;
> > > > > > +		}
> > > > > > +	}
> > > > > > +
> > > > > > +	if (f1 || f2) {
> > > > > > +		pr_err("Not all fences seen!\n");
> > > > > > +		err =3D -EINVAL;
> > > > > > +	}
> > > > > > +
> > > > > > +	dma_fence_signal(f1);
> > > > > > +	dma_fence_signal(f2);
> > > > > > +	dma_fence_put(chain);
> > > > > > +	return 0;
> > > > > > +}
> > > > > > +
> > > > > > +static int unwrap_chain_array(void *arg)
> > > > > > +{
> > > > > > +	struct dma_fence *fence, *f1, *f2, *array, *chain;
> > > > > > +	struct dma_fence_unwrap iter;
> > > > > > +	int err =3D 0;
> > > > > > +
> > > > > > +	f1 =3D mock_fence();
> > > > > > +	if (!f1)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	f2 =3D mock_fence();
> > > > > > +	if (!f2) {
> > > > > > +		dma_fence_put(f1);
> > > > > > +		return -ENOMEM;
> > > > > > +	}
> > > > > > +
> > > > > > +	array =3D mock_array(2, f1, f2);
> > > > > > +	if (!array)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	chain =3D mock_chain(NULL, array);
> > > > > > +	if (!chain)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	dma_fence_unwrap_for_each(fence, &iter, chain) {
> > > > > > +		if (fence =3D=3D f1) {
> > > > > > +			f1 =3D NULL;
> > > > > > +		} else if (fence =3D=3D f2) {
> > > > > > +			f2 =3D NULL;
> > > > > > +		} else {
> > > > > > +			pr_err("Unexpected fence!\n");
> > > > > > +			err =3D -EINVAL;
> > > > > > +		}
> > > > > > +	}
> > > > > > +
> > > > > > +	if (f1 || f2) {
> > > > > > +		pr_err("Not all fences seen!\n");
> > > > > > +		err =3D -EINVAL;
> > > > > > +	}
> > > > > > +
> > > > > > +	dma_fence_signal(f1);
> > > > > > +	dma_fence_signal(f2);
> > > > > > +	dma_fence_put(chain);
> > > > > > +	return 0;
> > > > > > +}
> > > > > > +
> > > > > > +int dma_fence_unwrap(void)
> > > > > > +{
> > > > > > +	static const struct subtest tests[] =3D {
> > > > > > +		SUBTEST(sanitycheck),
> > > > > > +		SUBTEST(unwrap_array),
> > > > > > +		SUBTEST(unwrap_chain),
> > > > > > +		SUBTEST(unwrap_chain_array),
> > > > > > +	};
> > > > > > +	int ret;
> > > > > > +
> > > > > > +	slab_fences =3D KMEM_CACHE(mock_fence,
> > > > > > +				 SLAB_TYPESAFE_BY_RCU |
> > > > > > +				 SLAB_HWCACHE_ALIGN);
> > > > > > +	if (!slab_fences)
> > > > > > +		return -ENOMEM;
> > > > > > +
> > > > > > +	ret =3D subtests(tests, NULL);
> > > > > > +
> > > > > > +	kmem_cache_destroy(slab_fences);
> > > > > > +	return ret;
> > > > > > +}
> > > > > > diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/d=
ma-fence-unwrap.h
> > > > > > new file mode 100644
> > > > > > index 000000000000..54963df00c98
> > > > > > --- /dev/null
> > > > > > +++ b/include/linux/dma-fence-unwrap.h
> > > > > > @@ -0,0 +1,99 @@
> > > > > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > > > > +/*
> > > > > > + * fence-chain: chain fences together in a timeline
> > > > > > + *
> > > > > > + * Copyright (C) 2022 Advanced Micro Devices, Inc.
> > > > > > + * Authors:
> > > > > > + *	Christian K=F6nig <christian.koenig@amd.com>
> > > > > > + */
> > > > > > +
> > > > > > +#ifndef __LINUX_DMA_FENCE_UNWRAP_H
> > > > > > +#define __LINUX_DMA_FENCE_UNWRAP_H
> > > > > > +
> > > > > > +#include <linux/dma-fence-chain.h>
> > > > > > +#include <linux/dma-fence-array.h>
> > > > > > +
> > > > > > +/**
> > > > > > + * struct dma_fence_unwrap - cursor into the container structu=
re
> > > > > I think adding "This should be used together with
> > > > > dma_fence_unwrap_for_each() iterator macro." would be nice here. =
I just
> > > > > like links :-)
> > > > >=20
> > > > > > + */
> > > > > > +struct dma_fence_unwrap {
> > > > > > +	/**
> > > > > > +	 * @chain: potential dma_fence_chain, but can be other fence =
as well
> > > > > > +	 */
> > > > > > +	struct dma_fence *chain;
> > > > > > +	/**
> > > > > > +	 * @array: potential dma_fence_array, but can be other fence =
as well
> > > > > > +	 */
> > > > > > +	struct dma_fence *array;
> > > > > > +	/**
> > > > > > +	 * @index: last returned index if @array is really a dma_fenc=
e_array
> > > > > > +	 */
> > > > > > +	unsigned int index;
> > > > > > +};
> > > > > > +
> > > > > > +/**
> > > > > > + * dma_fence_unwrap_array - helper to unwrap dma_fence_arrays
> > > > > > + * @cursor: cursor to initialize
> > > > > > + *
> > > > > > + * Helper function to unwrap dma_fence_array containers, don't=
 touch directly.
> > > > > > + * Use dma_fence_unwrap_first/next instead.
> > > > > > + */
> > > > > > +static inline struct dma_fence *
> > > > > > +dma_fence_unwrap_array(struct dma_fence_unwrap * cursor)
> > > > > Since this is a helper that no one should call I'd give it a __ p=
refix and
> > > > > drop the kerneldoc. Documenting stuff that people shouldn't use is
> > > > > confusing :-)
> > > > >=20
> > > > > > +{
> > > > > > +	cursor->array =3D dma_fence_chain_contained(cursor->chain);
> > > > > > +	cursor->index =3D 0;
> > > > > > +	return dma_fence_array_first(cursor->array);
> > > > > > +}
> > > > > > +
> > > > > > +/**
> > > > > > + * dma_fence_unwrap_first - return the first fence from fence =
containers
> > > > > > + * @head: the entrypoint into the containers
> > > > > > + * @cursor: current position inside the containers
> > > > > > + *
> > > > > > + * Unwraps potential dma_fence_chain/dma_fence_array container=
s and return the
> > > > > > + * first fence.
> > > > > > + */
> > > > > > +static inline struct dma_fence *
> > > > > > +dma_fence_unwrap_first(struct dma_fence *head, struct dma_fenc=
e_unwrap *cursor)
> > > > > > +{
> > > > > > +	cursor->chain =3D dma_fence_get(head);
> > > > > > +	return dma_fence_unwrap_array(cursor);
> > > > > > +}
> > > > > > +
> > > > > > +/**
> > > > > > + * dma_fence_unwrap_next - return the next fence from a fence =
containers
> > > > > > + * @cursor: current position inside the containers
> > > > > > + *
> > > > > > + * Continue unwrapping the dma_fence_chain/dma_fence_array con=
tainers and return
> > > > > > + * the next fence from them.
> > > > > > + */
> > > > > > +static inline struct dma_fence *
> > > > > > +dma_fence_unwrap_next(struct dma_fence_unwrap *cursor)
> > > > > > +{
> > > > > > +	struct dma_fence *tmp;
> > > > > > +
> > > > > > +	++cursor->index;
> > > > > > +	tmp =3D dma_fence_array_next(cursor->array, cursor->index);
> > > > > > +	if (tmp)
> > > > > > +		return tmp;
> > > > > > +
> > > > > > +	cursor->chain =3D dma_fence_chain_walk(cursor->chain);
> > > > > > +	return dma_fence_unwrap_array(cursor);
> > > > > > +}
> > > > > > +
> > > > > > +/**
> > > > > > + * dma_fence_unwrap_for_each - iterate over all fences in cont=
ainers
> > > > > > + * @fence: current fence
> > > > > > + * @cursor: current position inside the containers
> > > > > > + * @head: starting point for the iterator
> > > > > > + *
> > > > > > + * Unwrap dma_fence_chain and dma_fence_array containers and d=
eep dive into all
> > > > > > + * potential fences in them. If @head is just a normal fence o=
nly that one is
> > > > > > + * returned.
> > > > > > + */
> > > > > > +#define dma_fence_unwrap_for_each(fence, cursor, head)			\
> > > > > > +	for (fence =3D dma_fence_unwrap_first(head, cursor); fence;	\
> > > > > > +	     fence =3D dma_fence_unwrap_next(cursor))
> > > > > > +
> > > > > > +#endif
> > > > > I think it'd be really good to add a small paragraph to struct
> > > > > dma_fence_chain that this macro and iterator should be used for w=
alking
> > > > > over all fences in a chain, including any fence arrays or anythin=
g like
> > > > > that.
> > > > >=20
> > > > > With the bikesheds addressed:
> > > > >=20
> > > > > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > > >=20
> > > > > > --=20
> > > > > > 2.25.1
> > > > > >=20
> > > > > --=20
> > > > > Daniel Vetter
> > > > > Software Engineer, Intel Corporation
> > > > > https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%=
2Fblog.ffwll.ch%2F&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7Caa7470=
83900b451d359308da0e4745e3%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637=
837996532802687%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzI=
iLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DJts5%2BObWJHeUG4oy2biwj5=
Bf3PKkMrYU%2F0EihvQRNuY%3D&amp;reserved=3D0
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
