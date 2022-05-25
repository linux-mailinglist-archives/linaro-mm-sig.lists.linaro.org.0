Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A308533D7D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 15:16:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FDBD3EE21
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 13:16:22 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id 4AAD43EBFA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 13:16:17 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id k30so30083352wrd.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 06:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=r0OhdpMnZPonUb1erRhjQmUml1f0IxBmxKrI17luis4=;
        b=h7YbprmnpeIZZ26SVzv/b1EwBpJGobMO7U8PhiUGOcx+QbAx4fWLQF9p7DF2vVKKT5
         UaGN5CSTqqDehflhyxz3PcEPfSWX0X9uraBTDpd881XVMclONRBeDKrSkeKSAN79rmWs
         NzTz+9TFd8bNlJeG4F5/iw7WsPIFCQkVwa7+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=r0OhdpMnZPonUb1erRhjQmUml1f0IxBmxKrI17luis4=;
        b=q9kt689xSHqYsuYS2r2K2JAFOday8CArYZ4QxH6pvQHO3BYonObhYNGB3XxRhwDc1h
         3wazGc4ogN7IuQg87By1z9Vs4zel3w15gY+IW9t0H1awt+yhno8LIXazbXj+O79rlgXb
         +paWXJ7B+EkxIllQb/9RYBq8MFTnYh3Aai7+zAmznJOaSKey1PArZvt1O+OSDPuVL1Nq
         QO4ecCEyIK/Z5sGjRxhAymHAWZGHGS3c+39nXLDYnBkoheAy0Jd/hy1b7PHraYlxU41w
         0DwQeFyL1rO7w5QRTch2v6o09dW415v/mUOSrslzIGM9ihJW04FT1kWHD1pyKI2xJugh
         4WlA==
X-Gm-Message-State: AOAM530pCNlcxpxyPYmpoiEsCeWLSx9BNfngRHGn8dYZdZj8fe1esA2Q
	FeROjJ0gRsr+L2kJ5oWo0SJAiw==
X-Google-Smtp-Source: ABdhPJyxy62K0wlO3BgFoV8DWXZZ6jfNIKST1lMDM3VZf3IjnzBY9rODYX2n46PUIakz4u+QXJc+7A==
X-Received: by 2002:a5d:64c5:0:b0:20f:f372:13fd with SMTP id f5-20020a5d64c5000000b0020ff37213fdmr6001937wri.302.1653484576365;
        Wed, 25 May 2022 06:16:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id y4-20020a056000168400b0020d02cbbb87sm2213026wrd.16.2022.05.25.06.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 06:16:15 -0700 (PDT)
Date: Wed, 25 May 2022 15:16:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yo4sHQUP8IHdt4Kq@phenom.ffwll.local>
References: <20220506141009.18047-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506141009.18047-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: 4NUGFDKEQSR5J2I3CLND55VRCMSPW7GF
X-Message-ID-Hash: 4NUGFDKEQSR5J2I3CLND55VRCMSPW7GF
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-buf: cleanup dma_fence_unwrap selftest v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4NUGFDKEQSR5J2I3CLND55VRCMSPW7GF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, May 06, 2022 at 04:10:05PM +0200, Christian K=F6nig wrote:
> The selftests, fix the error handling, remove unused functions and stop
> leaking memory in failed tests.
>=20
> v2: fix the memory leak correctly.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

I'm still a bit lost on all this (maybe add an explainer why you want to
drop dma_fence_signal() - it's just not necessary for test functionality).

But I think it's at least correct now.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I've seen you've resent it to get intel-gfx-ci to look at it, so assuming
that's all fine I think it's now all reviewed and ready for merging.
-Daniel
> ---
>  drivers/dma-buf/st-dma-fence-unwrap.c | 48 +++++++++++----------------
>  1 file changed, 19 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dma-buf/st-d=
ma-fence-unwrap.c
> index 039f016b57be..e20c5a7dcfe4 100644
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
> @@ -59,7 +52,7 @@ static struct dma_fence *mock_array(unsigned int num_fe=
nces, ...)
> =20
>  	fences =3D kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
>  	if (!fences)
> -		return NULL;
> +		goto error_put;
> =20
>  	va_start(valist, num_fences);
>  	for (i =3D 0; i < num_fences; ++i)
> @@ -70,13 +63,17 @@ static struct dma_fence *mock_array(unsigned int num_=
fences, ...)
>  				       dma_fence_context_alloc(1),
>  				       1, false);
>  	if (!array)
> -		goto cleanup;
> +		goto error_free;
>  	return &array->base;
> =20
> -cleanup:
> -	for (i =3D 0; i < num_fences; ++i)
> -		dma_fence_put(fences[i]);
> +error_free:
>  	kfree(fences);
> +
> +error_put:
> +	va_start(valist, num_fences);
> +	for (i =3D 0; i < num_fences; ++i)
> +		dma_fence_put(va_arg(valist, typeof(*fences)));
> +	va_end(valist);
>  	return NULL;
>  }
> =20
> @@ -113,7 +110,6 @@ static int sanitycheck(void *arg)
>  	if (!chain)
>  		return -ENOMEM;
> =20
> -	dma_fence_signal(f);
>  	dma_fence_put(chain);
>  	return err;
>  }
> @@ -154,10 +150,8 @@ static int unwrap_array(void *arg)
>  		err =3D -EINVAL;
>  	}
> =20
> -	dma_fence_signal(f1);
> -	dma_fence_signal(f2);
>  	dma_fence_put(array);
> -	return 0;
> +	return err;
>  }
> =20
>  static int unwrap_chain(void *arg)
> @@ -196,10 +190,8 @@ static int unwrap_chain(void *arg)
>  		err =3D -EINVAL;
>  	}
> =20
> -	dma_fence_signal(f1);
> -	dma_fence_signal(f2);
>  	dma_fence_put(chain);
> -	return 0;
> +	return err;
>  }
> =20
>  static int unwrap_chain_array(void *arg)
> @@ -242,10 +234,8 @@ static int unwrap_chain_array(void *arg)
>  		err =3D -EINVAL;
>  	}
> =20
> -	dma_fence_signal(f1);
> -	dma_fence_signal(f2);
>  	dma_fence_put(chain);
> -	return 0;
> +	return err;
>  }
> =20
>  int dma_fence_unwrap(void)
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
