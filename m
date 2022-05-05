Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6049351C0B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 15:29:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3353248099
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 13:29:28 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id ADC4747FAE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 May 2022 13:29:22 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id i19so8725429eja.11
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 May 2022 06:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Ui21piTZ0ApfGLe6rSNYF+vmLdIPcNpHB647yaNJAEA=;
        b=GUYSMOZfibAtHewRxv7NXvJfooeNyLie4/C/2WhzfE1nZb66wcOaxp+lICUXVBORYe
         topja/IRIvJeuJTYG3rs0ab7/us7cJ5gwWYgW2ms4wIGyHjiP1g79yloC/utlJWo6cW/
         kBpNUgOtkT4bJPg5gjRorgiC9a2Opu0cDeSQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Ui21piTZ0ApfGLe6rSNYF+vmLdIPcNpHB647yaNJAEA=;
        b=hcy+9ElkWkYipJvl1QrhosuYVhQJZVEsHjVBnTXT4OpGcFtcSrfC77OM13aBaz4W+a
         ZPqcYMp//+y1hCXx/cr7u1Nnr//GvgSzwk3nu9vSy/EQi5uyBdJUKPLmGSj7hAe618Kq
         ShmExdGuVVcrZIa6O5GcTeNu/BcpViIEqWQ4BufOkqQNCP7iwgQDNGF809abcdCt3lwl
         qhsHPjfFtnM423McB9phR6Y6fZjEh+6gGwzMPqfUBPKm66nkGFS654cYeODbVrFSVq27
         ffP7xW8YoPOK3CMe/ghQwELks1QrE2sy5a4N6ownjMOekCH4ceTJJs3IEVOgIvbtJQtp
         33mg==
X-Gm-Message-State: AOAM532ydEuimpXT+xL2jXXu6QLJeiVPe+ylKKlMx+LDQXNQKFA44fUg
	p2oEyg4wp7S9QXjuRCnKF9OhvA==
X-Google-Smtp-Source: ABdhPJwRHjykKqfmXvKBcfez+gqf/TcR5Uph1IH55dlRwflfrsGd9ZGWVMc2tb/Xq5lMPmwUta9buA==
X-Received: by 2002:a17:907:7282:b0:6ef:f412:f7c4 with SMTP id dt2-20020a170907728200b006eff412f7c4mr25973036ejc.258.1651757361694;
        Thu, 05 May 2022 06:29:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id l10-20020a170906938a00b006f3ef214e68sm770067ejx.206.2022.05.05.06.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 06:29:21 -0700 (PDT)
Date: Thu, 5 May 2022 15:29:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YnPRL7ndeh9z01mW@phenom.ffwll.local>
References: <20220504122256.1654-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504122256.1654-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: Q7ZRWIMCMSOCZJO5QU6P6RDRGYNOSEIP
X-Message-ID-Hash: Q7ZRWIMCMSOCZJO5QU6P6RDRGYNOSEIP
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-buf: cleanup dma_fence_unwrap selftest
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q7ZRWIMCMSOCZJO5QU6P6RDRGYNOSEIP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 04, 2022 at 02:22:52PM +0200, Christian K=F6nig wrote:
> The selftests, fix the error handling, remove unused functions and stop
> leaking memory in failed tests.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/st-dma-fence-unwrap.c | 40 +++++++++++----------------
>  1 file changed, 16 insertions(+), 24 deletions(-)
>=20
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

I'm completely lost on why you add these _put() calls? The reference we
create all get transferred over to the container object, and that takes
care of releasing them.

The other bits with error handling and code cleanup all look good, and
dropping dma_fence_signal calls also makes sense. But this one I don't
get.
-Daniel

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
