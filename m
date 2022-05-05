Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8687951C124
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 15:44:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99B8048077
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 13:44:44 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id AEB5C3EEEE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 May 2022 13:44:39 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id a1so5271470edt.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 May 2022 06:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=v+VSD0WXo/Ce0B1o6X0LvfKWoHTwZAqIOF5ploz5VzI=;
        b=hcDBBRRg5QPUwNBDCVYWy3H3fwcNY2LRCyqjB9RiCyGRIGk41LYlaL4EIPxM15kXG9
         Ht+YCERZhkJZk05AujCIFm2HPIO73F+Qvp7oTr7sAtF8NImxhWwCMzcgQ3uvro4IUxUt
         FhORcgexsj4z8+VB8HRfdAUiwMukLeMt+NWvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=v+VSD0WXo/Ce0B1o6X0LvfKWoHTwZAqIOF5ploz5VzI=;
        b=utwSYX6dZVlPSLnS+ZIGKI/PhCdG1ODuQ/1PfBT1DUH4vV8q3wbGRqPgC7M0PJ8Pyc
         hkKvp7zvIfuRuCJOBFIkVs2X7s+4QXDunKRD8RYW9Ah3vJ/lnRtXwnQOBNmYBjVfpGPi
         Z38PEjbVdxACrmOXIazVqgS1pD8EDthQlYggLUMv79dm5bTULPl2CVAXLjRt1M1lmBqm
         oq08j+9j3wNtf0mN5AY0FN0797OcW32gdguuaqPjLb5ZoEXZ7BfSO9I0EhIvpUDD/ZND
         CWYDmHFQPxjI+kWpnFDxMrYC894N+UTt5OJAGMXfkL0oB65x5O8yudWLVgb1vjFtXsUp
         FSVQ==
X-Gm-Message-State: AOAM532xclZ6zBLHXaTL9ZjVlAeOEsLlsZWWZwM6IEFPWcAXVmqXyTQz
	QAiga73FjfwSX4oTm8yPt1T8VQ==
X-Google-Smtp-Source: ABdhPJyP8cx9126bFIpJibfyv7g6n69rpQabIp4uwZs2KOxqVhMhAZvxNhO7n/FoNKidpmAN7rtpbA==
X-Received: by 2002:a05:6402:cb6:b0:425:f2e0:3644 with SMTP id cn22-20020a0564020cb600b00425f2e03644mr29618286edb.301.1651758278650;
        Thu, 05 May 2022 06:44:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id q22-20020a1709066ad600b006f3ef214dcbsm780909ejs.49.2022.05.05.06.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 06:44:38 -0700 (PDT)
Date: Thu, 5 May 2022 15:44:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YnPUxGO3HfeDAf1B@phenom.ffwll.local>
References: <20220504122256.1654-1-christian.koenig@amd.com>
 <20220504122256.1654-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504122256.1654-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: FCZACDZ7IZ45BLHAEEPX4ABDCHA2M2UM
X-Message-ID-Hash: FCZACDZ7IZ45BLHAEEPX4ABDCHA2M2UM
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/5] dma-buf: cleanup dma_fence_unwrap implementation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FCZACDZ7IZ45BLHAEEPX4ABDCHA2M2UM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 04, 2022 at 02:22:53PM +0200, Christian K=F6nig wrote:
> Move the code from the inline functions into exported functions.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Didn't check you didn't slip in a typo or so :-)

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/Makefile           |  2 +-
>  drivers/dma-buf/dma-fence-unwrap.c | 59 ++++++++++++++++++++++++++++++
>  include/linux/dma-fence-unwrap.h   | 52 ++------------------------
>  3 files changed, 64 insertions(+), 49 deletions(-)
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
