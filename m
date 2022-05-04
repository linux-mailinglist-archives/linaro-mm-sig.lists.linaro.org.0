Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1157D519A01
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 10:38:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27E4F48079
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 08:38:04 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 6B1333ED11
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 May 2022 08:37:58 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id k27so892034edk.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 May 2022 01:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=BNL7KIW6kxM9k9cdZBj1imgEmU92+ByIR2+zSIfh3W4=;
        b=XyoCgz7izeRHcOlXJtGaUGLoVwJ3DZignFWDMyoeyOGD8GqeO5CGjR7XUPqzDIpBpc
         txECebQCI6i++1RIhzX9GWHHaf7PilCsO6dj7LorEHwERfZsMUgve7gnAg8RD/sBf+5I
         xde6p/ewPWmU/vO8mtKrbeaCjKuWAet2quBx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=BNL7KIW6kxM9k9cdZBj1imgEmU92+ByIR2+zSIfh3W4=;
        b=5ewKUN6pw1eJu84l/t4B61J/FpDt5EH6W3u95vm9YbyJeKoH2qLRKyjjmEMN0o7EfT
         J/COInRnuBVWMhunf8yoqVMbNvtIRhMMk3MqT9qxvj5m5jBX5sbz2nHZPzTN8JLjRS8o
         s/Z4Ak71Q0z/rbcTaBL3/8CoSa+S90vtBNb/5bvwOTClVQ9Yqb5wdXZzUQePp4q80dCd
         pJvzc0vNeh1HoAJCoOGSmi/Efd1XQ23Ksq3mST8zmLQnGTTX5ALd+UUTwbJx/BpA1bD6
         GvlJCtIr8ycHYTFfGKV47HwMTANSMnpLRU/9jgMB2LpOXkN9iIxrdASZn7mU0C8RUnqo
         +MQA==
X-Gm-Message-State: AOAM531yHgpBLsOG0aI4ZN7Rd99meF5bl5gvQfLD1QZgvZ0XRUqhJcXv
	bD3vksRtJgWZ0nIAQfzRaQUscg==
X-Google-Smtp-Source: ABdhPJwjIC0uXOv50791ypiDyMq23LCfSaFjItQaS8cd7IEBVAaSbl4zf2R19aljGFnH2PmfR2L4oA==
X-Received: by 2002:aa7:d510:0:b0:427:b7fe:50c7 with SMTP id y16-20020aa7d510000000b00427b7fe50c7mr17116707edq.221.1651653477455;
        Wed, 04 May 2022 01:37:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id p14-20020a056402154e00b0042617ba63a8sm8775516edx.50.2022.05.04.01.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 01:37:56 -0700 (PDT)
Date: Wed, 4 May 2022 10:37:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YnI7Y2betlUEZ1lx@phenom.ffwll.local>
References: <20220426124637.329764-1-christian.koenig@amd.com>
 <20220426124637.329764-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426124637.329764-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: QLZ276L4EJBPVI4QJZZX7XSWXM22ZYK5
X-Message-ID-Hash: QLZ276L4EJBPVI4QJZZX7XSWXM22ZYK5
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-buf: cleanup dma_fence_unwrap implementation and selftest
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QLZ276L4EJBPVI4QJZZX7XSWXM22ZYK5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 26, 2022 at 02:46:36PM +0200, Christian K=F6nig wrote:
> Move the code from the inline functions into exported functions.
>=20
> While at it also cleanup the the selftests, fix the error handling,
> remove unused functions and stop leaking memory in failed tests.

Can you split this out? At least I'm not seeing why this has to be all
smashed into one patch.
-Daniel

>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/Makefile              |  2 +-
>  drivers/dma-buf/dma-fence-unwrap.c    | 59 +++++++++++++++++++++++++++
>  drivers/dma-buf/st-dma-fence-unwrap.c | 40 ++++++++----------
>  include/linux/dma-fence-unwrap.h      | 52 ++---------------------
>  4 files changed, 80 insertions(+), 73 deletions(-)
>  create mode 100644 drivers/dma-buf/dma-fence-unwrap.c
>=20
> diff --git a/drivers/dma-buf/Makefile b/drivers/dma-buf/Makefile
> index 4c9eb53ba3f8..70ec901edf2c 100644
> --- a/drivers/dma-buf/Makefile
> +++ b/drivers/dma-buf/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-y :=3D dma-buf.o dma-fence.o dma-fence-array.o dma-fence-chain.o \
> -	 dma-resv.o
> +	 dma-fence-unwrap.o dma-resv.o
>  obj-$(CONFIG_DMABUF_HEAPS)	+=3D dma-heap.o
>  obj-$(CONFIG_DMABUF_HEAPS)	+=3D heaps/
>  obj-$(CONFIG_SYNC_FILE)		+=3D sync_file.o
> diff --git a/drivers/dma-buf/dma-fence-unwrap.c b/drivers/dma-buf/dma-fen=
ce-unwrap.c
> new file mode 100644
> index 000000000000..711be125428c
> --- /dev/null
> +++ b/drivers/dma-buf/dma-fence-unwrap.c
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * dma-fence-util: misc functions for dma_fence objects
> + *
> + * Copyright (C) 2022 Advanced Micro Devices, Inc.
> + * Authors:
> + *	Christian K=F6nig <christian.koenig@amd.com>
> + */
> +
> +#include <linux/dma-fence.h>
> +#include <linux/dma-fence-array.h>
> +#include <linux/dma-fence-chain.h>
> +#include <linux/dma-fence-unwrap.h>
> +
> +/* Internal helper to start new array iteration, don't use directly */
> +static struct dma_fence *
> +__dma_fence_unwrap_array(struct dma_fence_unwrap *cursor)
> +{
> +	cursor->array =3D dma_fence_chain_contained(cursor->chain);
> +	cursor->index =3D 0;
> +	return dma_fence_array_first(cursor->array);
> +}
> +
> +/**
> + * dma_fence_unwrap_first - return the first fence from fence containers
> + * @head: the entrypoint into the containers
> + * @cursor: current position inside the containers
> + *
> + * Unwraps potential dma_fence_chain/dma_fence_array containers and retu=
rn the
> + * first fence.
> + */
> +struct dma_fence *dma_fence_unwrap_first(struct dma_fence *head,
> +					 struct dma_fence_unwrap *cursor)
> +{
> +	cursor->chain =3D dma_fence_get(head);
> +	return __dma_fence_unwrap_array(cursor);
> +}
> +EXPORT_SYMBOL_GPL(dma_fence_unwrap_first);
> +
> +/**
> + * dma_fence_unwrap_next - return the next fence from a fence containers
> + * @cursor: current position inside the containers
> + *
> + * Continue unwrapping the dma_fence_chain/dma_fence_array containers an=
d return
> + * the next fence from them.
> + */
> +struct dma_fence *dma_fence_unwrap_next(struct dma_fence_unwrap *cursor)
> +{
> +	struct dma_fence *tmp;
> +
> +	++cursor->index;
> +	tmp =3D dma_fence_array_next(cursor->array, cursor->index);
> +	if (tmp)
> +		return tmp;
> +
> +	cursor->chain =3D dma_fence_chain_walk(cursor->chain);
> +	return __dma_fence_unwrap_array(cursor);
> +}
> +EXPORT_SYMBOL_GPL(dma_fence_unwrap_next);
> diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dma-buf/st-d=
ma-fence-unwrap.c
> index 039f016b57be..59628add93f5 100644
> --- a/drivers/dma-buf/st-dma-fence-unwrap.c
> +++ b/drivers/dma-buf/st-dma-fence-unwrap.c
> @@ -4,27 +4,19 @@
>   * Copyright (C) 2022 Advanced Micro Devices, Inc.
>   */
> =20
> +#include <linux/dma-fence.h>
> +#include <linux/dma-fence-array.h>
> +#include <linux/dma-fence-chain.h>
>  #include <linux/dma-fence-unwrap.h>
> -#if 0
> -#include <linux/kernel.h>
> -#include <linux/kthread.h>
> -#include <linux/mm.h>
> -#include <linux/sched/signal.h>
> -#include <linux/slab.h>
> -#include <linux/spinlock.h>
> -#include <linux/random.h>
> -#endif
> =20
>  #include "selftest.h"
> =20
>  #define CHAIN_SZ (4 << 10)
> =20
> -static inline struct mock_fence {
> +struct mock_fence {
>  	struct dma_fence base;
>  	spinlock_t lock;
> -} *to_mock_fence(struct dma_fence *f) {
> -	return container_of(f, struct mock_fence, base);
> -}
> +};
> =20
>  static const char *mock_name(struct dma_fence *f)
>  {
> @@ -45,7 +37,8 @@ static struct dma_fence *mock_fence(void)
>  		return NULL;
> =20
>  	spin_lock_init(&f->lock);
> -	dma_fence_init(&f->base, &mock_ops, &f->lock, 0, 0);
> +	dma_fence_init(&f->base, &mock_ops, &f->lock,
> +		       dma_fence_context_alloc(1), 1);
> =20
>  	return &f->base;
>  }
> @@ -113,7 +106,6 @@ static int sanitycheck(void *arg)
>  	if (!chain)
>  		return -ENOMEM;
> =20
> -	dma_fence_signal(f);
>  	dma_fence_put(chain);
>  	return err;
>  }
> @@ -154,10 +146,10 @@ static int unwrap_array(void *arg)
>  		err =3D -EINVAL;
>  	}
> =20
> -	dma_fence_signal(f1);
> -	dma_fence_signal(f2);
> +	dma_fence_put(f1);
> +	dma_fence_put(f2);
>  	dma_fence_put(array);
> -	return 0;
> +	return err;
>  }
> =20
>  static int unwrap_chain(void *arg)
> @@ -196,10 +188,10 @@ static int unwrap_chain(void *arg)
>  		err =3D -EINVAL;
>  	}
> =20
> -	dma_fence_signal(f1);
> -	dma_fence_signal(f2);
> +	dma_fence_put(f1);
> +	dma_fence_put(f2);
>  	dma_fence_put(chain);
> -	return 0;
> +	return err;
>  }
> =20
>  static int unwrap_chain_array(void *arg)
> @@ -242,10 +234,10 @@ static int unwrap_chain_array(void *arg)
>  		err =3D -EINVAL;
>  	}
> =20
> -	dma_fence_signal(f1);
> -	dma_fence_signal(f2);
> +	dma_fence_put(f1);
> +	dma_fence_put(f2);
>  	dma_fence_put(chain);
> -	return 0;
> +	return err;
>  }
> =20
>  int dma_fence_unwrap(void)
> diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/dma-fence-u=
nwrap.h
> index 77e335a1bcac..e7c219da4ed7 100644
> --- a/include/linux/dma-fence-unwrap.h
> +++ b/include/linux/dma-fence-unwrap.h
> @@ -1,7 +1,5 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  /*
> - * fence-chain: chain fences together in a timeline
> - *
>   * Copyright (C) 2022 Advanced Micro Devices, Inc.
>   * Authors:
>   *	Christian K=F6nig <christian.koenig@amd.com>
> @@ -10,8 +8,7 @@
>  #ifndef __LINUX_DMA_FENCE_UNWRAP_H
>  #define __LINUX_DMA_FENCE_UNWRAP_H
> =20
> -#include <linux/dma-fence-chain.h>
> -#include <linux/dma-fence-array.h>
> +struct dma_fence;
> =20
>  /**
>   * struct dma_fence_unwrap - cursor into the container structure
> @@ -33,50 +30,9 @@ struct dma_fence_unwrap {
>  	unsigned int index;
>  };
> =20
> -/* Internal helper to start new array iteration, don't use directly */
> -static inline struct dma_fence *
> -__dma_fence_unwrap_array(struct dma_fence_unwrap * cursor)
> -{
> -	cursor->array =3D dma_fence_chain_contained(cursor->chain);
> -	cursor->index =3D 0;
> -	return dma_fence_array_first(cursor->array);
> -}
> -
> -/**
> - * dma_fence_unwrap_first - return the first fence from fence containers
> - * @head: the entrypoint into the containers
> - * @cursor: current position inside the containers
> - *
> - * Unwraps potential dma_fence_chain/dma_fence_array containers and retu=
rn the
> - * first fence.
> - */
> -static inline struct dma_fence *
> -dma_fence_unwrap_first(struct dma_fence *head, struct dma_fence_unwrap *=
cursor)
> -{
> -	cursor->chain =3D dma_fence_get(head);
> -	return __dma_fence_unwrap_array(cursor);
> -}
> -
> -/**
> - * dma_fence_unwrap_next - return the next fence from a fence containers
> - * @cursor: current position inside the containers
> - *
> - * Continue unwrapping the dma_fence_chain/dma_fence_array containers an=
d return
> - * the next fence from them.
> - */
> -static inline struct dma_fence *
> -dma_fence_unwrap_next(struct dma_fence_unwrap *cursor)
> -{
> -	struct dma_fence *tmp;
> -
> -	++cursor->index;
> -	tmp =3D dma_fence_array_next(cursor->array, cursor->index);
> -	if (tmp)
> -		return tmp;
> -
> -	cursor->chain =3D dma_fence_chain_walk(cursor->chain);
> -	return __dma_fence_unwrap_array(cursor);
> -}
> +struct dma_fence *dma_fence_unwrap_first(struct dma_fence *head,
> +					 struct dma_fence_unwrap *cursor);
> +struct dma_fence *dma_fence_unwrap_next(struct dma_fence_unwrap *cursor);
> =20
>  /**
>   * dma_fence_unwrap_for_each - iterate over all fences in containers
> --=20
> 2.25.1
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
