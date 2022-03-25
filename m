Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B09B14E708D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 11:07:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9AC03F06F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 10:07:33 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by lists.linaro.org (Postfix) with ESMTPS id 319CE3F040
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 10:07:30 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p12-20020a05600c430c00b0038cbdf52227so4083655wme.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 03:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=CUKYWykmpxuKjwDo2HooaVbZ43+SnO9M0Gqbbc6aZnk=;
        b=e9DrUiTWMvbd4+O7q3RylVb8D8OOisNSCALYrjsrtCHnxA489FBiFmiKFAhOYS6CVV
         ENLapyrFpctCN54UszRriDZ0QnQARA7I2KesZadQZjUFqaB99bfmRykwQgB3+p7xWNZM
         TTd97UxmfrpzUq94Xa3S+XPcTLYDd1oFYAZXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=CUKYWykmpxuKjwDo2HooaVbZ43+SnO9M0Gqbbc6aZnk=;
        b=vad96187gSfjQI0Tk4ffTatSOdYqxSAxup8cPdsByh7dTA1Ex6KYg/Fy89wMXOzsNv
         t7BtGrREgL8aFbapHfvmQmpAAkvhgl/GX36HmFqmEBQ4JlA09bRtmzxSNYGiAAJzuVkk
         OT/x7Q4h0PEOUys3Cj0tHqejpmDVoB2r0RQ7CGLNRdTK6q0BHDhlSJIQ4ZVM+I4hJt6V
         fR160Rs2X28cbmnVWIS6f2sv7grf6n3KIVdTaCIU2z4DIZG/4UWTSjWyo2tPWUF7otD5
         b8DaRezQzXdxpbW7/Dk00gqTswD8x2d3FmJ78VccwiWfbpimIHDZKB4sLk+dormNoEkk
         z8rw==
X-Gm-Message-State: AOAM532kW4sRsWfM82NMhvW/F4PltskUSaGPFHG0tY4PjCqkT5oQtLvT
	QcxkUygSyXVfI3dQgEHNlUZZI+/xsI5YNNoVfrE=
X-Google-Smtp-Source: ABdhPJx9FRJ5vwUmQy4rGYKw7NKsVrxoCckLHB8vdPHYOqeyBzlrcdlYuTW56IAtiRNv0beLjzG3VQ==
X-Received: by 2002:a05:600c:35c6:b0:38c:e9d9:b8a1 with SMTP id r6-20020a05600c35c600b0038ce9d9b8a1mr1845825wmq.112.1648202849192;
        Fri, 25 Mar 2022 03:07:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id n14-20020a7bcbce000000b0038c7776a300sm8101862wmi.0.2022.03.25.03.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 03:07:28 -0700 (PDT)
Date: Fri, 25 Mar 2022 11:07:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yj2UXwOh7/bAm8+J@phenom.ffwll.local>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <Yj2TiqwRMTNEEB3D@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yj2TiqwRMTNEEB3D@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: IHRVKDLGMLRPIYAO57ZGC3OJXNJ242WA
X-Message-ID-Hash: IHRVKDLGMLRPIYAO57ZGC3OJXNJ242WA
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: add dma_fence_unwrap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IHRVKDLGMLRPIYAO57ZGC3OJXNJ242WA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 25, 2022 at 11:03:54AM +0100, Daniel Vetter wrote:
> On Fri, Mar 11, 2022 at 12:02:43PM +0100, Christian K=F6nig wrote:
> > Add a general purpose helper to deep dive into dma_fence_chain/dma_fenc=
e_array
> > structures and iterate over all the fences in them.
> >=20
> > This is useful when we need to flatten out all fences in those structur=
es.
> >=20
> > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > ---
> >  Documentation/driver-api/dma-buf.rst  |   6 +
> >  drivers/dma-buf/Makefile              |   1 +
> >  drivers/dma-buf/selftests.h           |   1 +
> >  drivers/dma-buf/st-dma-fence-unwrap.c | 279 ++++++++++++++++++++++++++
> >  include/linux/dma-fence-unwrap.h      |  99 +++++++++
> >  5 files changed, 386 insertions(+)
> >  create mode 100644 drivers/dma-buf/st-dma-fence-unwrap.c
> >  create mode 100644 include/linux/dma-fence-unwrap.h
> >=20
> > diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/drive=
r-api/dma-buf.rst
> > index 2cd7db82d9fe..7209500f08c8 100644
> > --- a/Documentation/driver-api/dma-buf.rst
> > +++ b/Documentation/driver-api/dma-buf.rst
> > @@ -194,6 +194,12 @@ DMA Fence Chain
> >  .. kernel-doc:: include/linux/dma-fence-chain.h
> >     :internal:
> > =20
> > +DMA Fence unwrap
> > +~~~~~~~~~~~~~~~~
> > +
> > +.. kernel-doc:: include/linux/dma-fence-unwrap.h
> > +   :internal:

Ok I forgot one bikeshed: I'd just include this in dma-fence-chain.h and
maybe go with the dma_fence_chain_unwrap_ prefix for everything. That
makes it even more clearer that the two are meant to go together. Plus ofc
the link from struct dma_fence_chain to this iterator in the docs too.

Or I'm just not understanding why you made this a separate thing?
-Daniel

> > +
> >  DMA Fence uABI/Sync File
> >  ~~~~~~~~~~~~~~~~~~~~~~~~
> > =20
> > diff --git a/drivers/dma-buf/Makefile b/drivers/dma-buf/Makefile
> > index 511805dbeb75..4c9eb53ba3f8 100644
> > --- a/drivers/dma-buf/Makefile
> > +++ b/drivers/dma-buf/Makefile
> > @@ -12,6 +12,7 @@ dmabuf_selftests-y :=3D \
> >  	selftest.o \
> >  	st-dma-fence.o \
> >  	st-dma-fence-chain.o \
> > +	st-dma-fence-unwrap.o \
> >  	st-dma-resv.o
> > =20
> >  obj-$(CONFIG_DMABUF_SELFTESTS)	+=3D dmabuf_selftests.o
> > diff --git a/drivers/dma-buf/selftests.h b/drivers/dma-buf/selftests.h
> > index 97d73aaa31da..851965867d9c 100644
> > --- a/drivers/dma-buf/selftests.h
> > +++ b/drivers/dma-buf/selftests.h
> > @@ -12,4 +12,5 @@
> >  selftest(sanitycheck, __sanitycheck__) /* keep first (igt selfcheck) */
> >  selftest(dma_fence, dma_fence)
> >  selftest(dma_fence_chain, dma_fence_chain)
> > +selftest(dma_fence_unwrap, dma_fence_unwrap)
> >  selftest(dma_resv, dma_resv)
> > diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dma-buf/st=
-dma-fence-unwrap.c
> > new file mode 100644
> > index 000000000000..d821faaebe93
> > --- /dev/null
> > +++ b/drivers/dma-buf/st-dma-fence-unwrap.c
> > @@ -0,0 +1,279 @@
> > +// SPDX-License-Identifier: MIT
> > +
> > +/*
> > + * Copyright (C) 2022 Advanced Micro Devices, Inc.
> > + */
> > +
> > +#include <linux/dma-fence-unwrap.h>
> > +#if 0
> > +#include <linux/kernel.h>
> > +#include <linux/kthread.h>
> > +#include <linux/mm.h>
> > +#include <linux/sched/signal.h>
> > +#include <linux/slab.h>
> > +#include <linux/spinlock.h>
> > +#include <linux/random.h>
> > +#endif
> > +
> > +#include "selftest.h"
> > +
> > +#define CHAIN_SZ (4 << 10)
> > +
> > +static struct kmem_cache *slab_fences;
>=20
> Your own slab feels a bit like overkill. kmalloc/kfree not good enough?
>=20
> > +
> > +static inline struct mock_fence {
> > +	struct dma_fence base;
> > +	spinlock_t lock;
> > +} *to_mock_fence(struct dma_fence *f) {
> > +	return container_of(f, struct mock_fence, base);
> > +}
> > +
> > +static const char *mock_name(struct dma_fence *f)
> > +{
> > +	return "mock";
> > +}
> > +
> > +static void mock_fence_release(struct dma_fence *f)
> > +{
> > +	kmem_cache_free(slab_fences, to_mock_fence(f));
> > +}
> > +
> > +static const struct dma_fence_ops mock_ops =3D {
> > +	.get_driver_name =3D mock_name,
> > +	.get_timeline_name =3D mock_name,
> > +	.release =3D mock_fence_release,
> > +};
> > +
> > +static struct dma_fence *mock_fence(void)
> > +{
> > +	struct mock_fence *f;
> > +
> > +	f =3D kmem_cache_alloc(slab_fences, GFP_KERNEL);
> > +	if (!f)
> > +		return NULL;
> > +
> > +	spin_lock_init(&f->lock);
> > +	dma_fence_init(&f->base, &mock_ops, &f->lock, 0, 0);
> > +
> > +	return &f->base;
> > +}
> > +
> > +static struct dma_fence *mock_array(unsigned int num_fences, ...)
> > +{
> > +	struct dma_fence_array *array;
> > +	struct dma_fence **fences;
> > +	va_list valist;
> > +	int i;
> > +
> > +	fences =3D kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
> > +	if (!fences)
> > +		return NULL;
> > +
> > +	va_start(valist, num_fences);
> > +	for (i =3D 0; i < num_fences; ++i)
> > +		fences[i] =3D va_arg(valist, typeof(*fences));
> > +	va_end(valist);
> > +
> > +	array =3D dma_fence_array_create(num_fences, fences,
> > +				       dma_fence_context_alloc(1),
> > +				       1, false);
> > +	if (!array)
> > +		goto cleanup;
> > +	return &array->base;
> > +
> > +cleanup:
> > +	for (i =3D 0; i < num_fences; ++i)
> > +		dma_fence_put(fences[i]);
> > +	kfree(fences);
> > +	return NULL;
> > +}
> > +
> > +static struct dma_fence *mock_chain(struct dma_fence *prev,
> > +				    struct dma_fence *fence)
> > +{
> > +	struct dma_fence_chain *f;
> > +
> > +	f =3D dma_fence_chain_alloc();
> > +	if (!f) {
> > +		dma_fence_put(prev);
> > +		dma_fence_put(fence);
> > +		return NULL;
> > +	}
> > +
> > +	dma_fence_chain_init(f, prev, fence, 1);
> > +	return &f->base;
> > +}
> > +
> > +static int sanitycheck(void *arg)
> > +{
> > +	struct dma_fence *f, *chain, *array;
> > +	int err =3D 0;
> > +
> > +	f =3D mock_fence();
> > +	if (!f)
> > +		return -ENOMEM;
> > +
> > +	array =3D mock_array(1, f);
> > +	if (!array)
> > +		return -ENOMEM;
> > +
> > +	chain =3D mock_chain(NULL, array);
> > +	if (!chain)
> > +		return -ENOMEM;
> > +
> > +	dma_fence_signal(f);
> > +	dma_fence_put(chain);
> > +	return err;
> > +}
> > +
> > +static int unwrap_array(void *arg)
> > +{
> > +	struct dma_fence *fence, *f1, *f2, *array;
> > +	struct dma_fence_unwrap iter;
> > +	int err =3D 0;
> > +
> > +	f1 =3D mock_fence();
> > +	if (!f1)
> > +		return -ENOMEM;
> > +
> > +	f2 =3D mock_fence();
> > +	if (!f2) {
> > +		dma_fence_put(f1);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	array =3D mock_array(2, f1, f2);
> > +	if (!array)
> > +		return -ENOMEM;
> > +
> > +	dma_fence_unwrap_for_each(fence, &iter, array) {
> > +		if (fence =3D=3D f1) {
> > +			f1 =3D NULL;
> > +		} else if (fence =3D=3D f2) {
> > +			f2 =3D NULL;
> > +		} else {
> > +			pr_err("Unexpected fence!\n");
> > +			err =3D -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (f1 || f2) {
> > +		pr_err("Not all fences seen!\n");
> > +		err =3D -EINVAL;
> > +	}
> > +
> > +	dma_fence_signal(f1);
> > +	dma_fence_signal(f2);
> > +	dma_fence_put(array);
> > +	return 0;
> > +}
> > +
> > +static int unwrap_chain(void *arg)
> > +{
> > +	struct dma_fence *fence, *f1, *f2, *chain;
> > +	struct dma_fence_unwrap iter;
> > +	int err =3D 0;
> > +
> > +	f1 =3D mock_fence();
> > +	if (!f1)
> > +		return -ENOMEM;
> > +
> > +	f2 =3D mock_fence();
> > +	if (!f2) {
> > +		dma_fence_put(f1);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	chain =3D mock_chain(f1, f2);
> > +	if (!chain)
> > +		return -ENOMEM;
> > +
> > +	dma_fence_unwrap_for_each(fence, &iter, chain) {
> > +		if (fence =3D=3D f1) {
> > +			f1 =3D NULL;
> > +		} else if (fence =3D=3D f2) {
> > +			f2 =3D NULL;
> > +		} else {
> > +			pr_err("Unexpected fence!\n");
> > +			err =3D -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (f1 || f2) {
> > +		pr_err("Not all fences seen!\n");
> > +		err =3D -EINVAL;
> > +	}
> > +
> > +	dma_fence_signal(f1);
> > +	dma_fence_signal(f2);
> > +	dma_fence_put(chain);
> > +	return 0;
> > +}
> > +
> > +static int unwrap_chain_array(void *arg)
> > +{
> > +	struct dma_fence *fence, *f1, *f2, *array, *chain;
> > +	struct dma_fence_unwrap iter;
> > +	int err =3D 0;
> > +
> > +	f1 =3D mock_fence();
> > +	if (!f1)
> > +		return -ENOMEM;
> > +
> > +	f2 =3D mock_fence();
> > +	if (!f2) {
> > +		dma_fence_put(f1);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	array =3D mock_array(2, f1, f2);
> > +	if (!array)
> > +		return -ENOMEM;
> > +
> > +	chain =3D mock_chain(NULL, array);
> > +	if (!chain)
> > +		return -ENOMEM;
> > +
> > +	dma_fence_unwrap_for_each(fence, &iter, chain) {
> > +		if (fence =3D=3D f1) {
> > +			f1 =3D NULL;
> > +		} else if (fence =3D=3D f2) {
> > +			f2 =3D NULL;
> > +		} else {
> > +			pr_err("Unexpected fence!\n");
> > +			err =3D -EINVAL;
> > +		}
> > +	}
> > +
> > +	if (f1 || f2) {
> > +		pr_err("Not all fences seen!\n");
> > +		err =3D -EINVAL;
> > +	}
> > +
> > +	dma_fence_signal(f1);
> > +	dma_fence_signal(f2);
> > +	dma_fence_put(chain);
> > +	return 0;
> > +}
> > +
> > +int dma_fence_unwrap(void)
> > +{
> > +	static const struct subtest tests[] =3D {
> > +		SUBTEST(sanitycheck),
> > +		SUBTEST(unwrap_array),
> > +		SUBTEST(unwrap_chain),
> > +		SUBTEST(unwrap_chain_array),
> > +	};
> > +	int ret;
> > +
> > +	slab_fences =3D KMEM_CACHE(mock_fence,
> > +				 SLAB_TYPESAFE_BY_RCU |
> > +				 SLAB_HWCACHE_ALIGN);
> > +	if (!slab_fences)
> > +		return -ENOMEM;
> > +
> > +	ret =3D subtests(tests, NULL);
> > +
> > +	kmem_cache_destroy(slab_fences);
> > +	return ret;
> > +}
> > diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/dma-fence=
-unwrap.h
> > new file mode 100644
> > index 000000000000..54963df00c98
> > --- /dev/null
> > +++ b/include/linux/dma-fence-unwrap.h
> > @@ -0,0 +1,99 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * fence-chain: chain fences together in a timeline
> > + *
> > + * Copyright (C) 2022 Advanced Micro Devices, Inc.
> > + * Authors:
> > + *	Christian K=F6nig <christian.koenig@amd.com>
> > + */
> > +
> > +#ifndef __LINUX_DMA_FENCE_UNWRAP_H
> > +#define __LINUX_DMA_FENCE_UNWRAP_H
> > +
> > +#include <linux/dma-fence-chain.h>
> > +#include <linux/dma-fence-array.h>
> > +
> > +/**
> > + * struct dma_fence_unwrap - cursor into the container structure
>=20
> I think adding "This should be used together with
> dma_fence_unwrap_for_each() iterator macro." would be nice here. I just
> like links :-)
>=20
> > + */
> > +struct dma_fence_unwrap {
> > +	/**
> > +	 * @chain: potential dma_fence_chain, but can be other fence as well
> > +	 */
> > +	struct dma_fence *chain;
> > +	/**
> > +	 * @array: potential dma_fence_array, but can be other fence as well
> > +	 */
> > +	struct dma_fence *array;
> > +	/**
> > +	 * @index: last returned index if @array is really a dma_fence_array
> > +	 */
> > +	unsigned int index;
> > +};
> > +
> > +/**
> > + * dma_fence_unwrap_array - helper to unwrap dma_fence_arrays
> > + * @cursor: cursor to initialize
> > + *
> > + * Helper function to unwrap dma_fence_array containers, don't touch d=
irectly.
> > + * Use dma_fence_unwrap_first/next instead.
> > + */
> > +static inline struct dma_fence *
> > +dma_fence_unwrap_array(struct dma_fence_unwrap * cursor)
>=20
> Since this is a helper that no one should call I'd give it a __ prefix and
> drop the kerneldoc. Documenting stuff that people shouldn't use is
> confusing :-)
>=20
> > +{
> > +	cursor->array =3D dma_fence_chain_contained(cursor->chain);
> > +	cursor->index =3D 0;
> > +	return dma_fence_array_first(cursor->array);
> > +}
> > +
> > +/**
> > + * dma_fence_unwrap_first - return the first fence from fence containe=
rs
> > + * @head: the entrypoint into the containers
> > + * @cursor: current position inside the containers
> > + *
> > + * Unwraps potential dma_fence_chain/dma_fence_array containers and re=
turn the
> > + * first fence.
> > + */
> > +static inline struct dma_fence *
> > +dma_fence_unwrap_first(struct dma_fence *head, struct dma_fence_unwrap=
 *cursor)
> > +{
> > +	cursor->chain =3D dma_fence_get(head);
> > +	return dma_fence_unwrap_array(cursor);
> > +}
> > +
> > +/**
> > + * dma_fence_unwrap_next - return the next fence from a fence containe=
rs
> > + * @cursor: current position inside the containers
> > + *
> > + * Continue unwrapping the dma_fence_chain/dma_fence_array containers =
and return
> > + * the next fence from them.
> > + */
> > +static inline struct dma_fence *
> > +dma_fence_unwrap_next(struct dma_fence_unwrap *cursor)
> > +{
> > +	struct dma_fence *tmp;
> > +
> > +	++cursor->index;
> > +	tmp =3D dma_fence_array_next(cursor->array, cursor->index);
> > +	if (tmp)
> > +		return tmp;
> > +
> > +	cursor->chain =3D dma_fence_chain_walk(cursor->chain);
> > +	return dma_fence_unwrap_array(cursor);
> > +}
> > +
> > +/**
> > + * dma_fence_unwrap_for_each - iterate over all fences in containers
> > + * @fence: current fence
> > + * @cursor: current position inside the containers
> > + * @head: starting point for the iterator
> > + *
> > + * Unwrap dma_fence_chain and dma_fence_array containers and deep dive=
 into all
> > + * potential fences in them. If @head is just a normal fence only that=
 one is
> > + * returned.
> > + */
> > +#define dma_fence_unwrap_for_each(fence, cursor, head)			\
> > +	for (fence =3D dma_fence_unwrap_first(head, cursor); fence;	\
> > +	     fence =3D dma_fence_unwrap_next(cursor))
> > +
> > +#endif
>=20
> I think it'd be really good to add a small paragraph to struct
> dma_fence_chain that this macro and iterator should be used for walking
> over all fences in a chain, including any fence arrays or anything like
> that.
>=20
> With the bikesheds addressed:
>=20
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>=20
> > --=20
> > 2.25.1
> >=20
>=20
> --=20
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
