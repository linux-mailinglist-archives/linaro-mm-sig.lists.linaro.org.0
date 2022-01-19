Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C8A493EE0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 18:16:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CEFB3EEA1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 17:16:21 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 748703ED41
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 17:16:19 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id o1-20020a1c4d01000000b0034d95625e1fso1229798wmh.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 09:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=zzvIrnbRrAe96RAs7QQrQ5fa7VjZfzf+FUBVq9CK8zs=;
        b=eJ7OCeRWjAcHO/MucFGi1b1DZSFqrCuvpzN3+abTm6PVbbL5927sh4qL2qoEAVmSqZ
         0kX1DDWc3wM0c9LG8LQypgc2GA1YrqVtfFY3l3/APx8vBEjQfsibgGJaQtSMx1YV/um8
         ogW8v+RJVBZ368wydisAinreXnx4zJswcWkyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=zzvIrnbRrAe96RAs7QQrQ5fa7VjZfzf+FUBVq9CK8zs=;
        b=KC8FqaDq9wDpbgEg5X5orrSjcF6WwGBY5mfzU8bF48mWveI6p2xqr20KLLB8jA656j
         yOFPdoS58jIIg6n+NEDzk8rzOkPhR26kjiJPeDRYQilDLG8Yrs8xxqfSo/4dWVK1Ipha
         DpLv8zWZJ7pWkT6rFNmvp34nQEuzkn23OwrxjDjENv6YlVOi7W2B7RY9Pq1eD4eCjx4x
         ZpcXtotDlSTkVqoq6rwHWw3SU/Yzg5oil4kq+ev+POvaIyZGYSvqULnR7bPHNOMM7/nO
         w9m2CbpxZkUj//KPRvzSvGyyeyJWLXGmjcpuvJNt5kG7V1BQCPAxB2FgOtBEb6RmDtNo
         vs2A==
X-Gm-Message-State: AOAM533U0VowB//h329L7SvfyW/Ga6jx6uyT8T825hRLUr8uRtccSZ9v
	qdxeOlr222Wt/ndSTzF64FLSnA==
X-Google-Smtp-Source: ABdhPJxCd+stQGSYmFEA3t2+AiPWuPFMridVImogbcjFwJc6gJg/jpxVfs7pmmJuuvEEF3mQuwM8+Q==
X-Received: by 2002:a05:600c:1c9f:: with SMTP id k31mr4553450wms.40.1642612578456;
        Wed, 19 Jan 2022 09:16:18 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 10sm5587913wmc.44.2022.01.19.09.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 09:16:17 -0800 (PST)
Date: Wed, 19 Jan 2022 18:16:15 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YehHX7ID/of9kxmE@phenom.ffwll.local>
References: <20220119134339.3102-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119134339.3102-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: 26MJ5PVZ2UVXCPP3IOGLN2YQQMEDJUPU
X-Message-ID-Hash: 26MJ5PVZ2UVXCPP3IOGLN2YQQMEDJUPU
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf: consolidate dma_fence subclass checking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/26MJ5PVZ2UVXCPP3IOGLN2YQQMEDJUPU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 19, 2022 at 02:43:36PM +0100, Christian K=F6nig wrote:
> Consolidate the wrapper functions to check for dma_fence
> subclasses in the dma_fence header.
>=20
> This makes it easier to document and also check the different
> requirements for fence containers in the subclasses.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  include/linux/dma-fence-array.h | 15 +------------
>  include/linux/dma-fence-chain.h |  3 +--
>  include/linux/dma-fence.h       | 38 +++++++++++++++++++++++++++++++++
>  3 files changed, 40 insertions(+), 16 deletions(-)
>=20
> diff --git a/include/linux/dma-fence-array.h b/include/linux/dma-fence-ar=
ray.h
> index 303dd712220f..fec374f69e12 100644
> --- a/include/linux/dma-fence-array.h
> +++ b/include/linux/dma-fence-array.h
> @@ -45,19 +45,6 @@ struct dma_fence_array {
>  	struct irq_work work;
>  };
> =20
> -extern const struct dma_fence_ops dma_fence_array_ops;
> -
> -/**
> - * dma_fence_is_array - check if a fence is from the array subsclass
> - * @fence: fence to test
> - *
> - * Return true if it is a dma_fence_array and false otherwise.
> - */
> -static inline bool dma_fence_is_array(struct dma_fence *fence)
> -{
> -	return fence->ops =3D=3D &dma_fence_array_ops;
> -}
> -
>  /**
>   * to_dma_fence_array - cast a fence to a dma_fence_array
>   * @fence: fence to cast to a dma_fence_array
> @@ -68,7 +55,7 @@ static inline bool dma_fence_is_array(struct dma_fence =
*fence)
>  static inline struct dma_fence_array *
>  to_dma_fence_array(struct dma_fence *fence)
>  {
> -	if (fence->ops !=3D &dma_fence_array_ops)
> +	if (!fence || !dma_fence_is_array(fence))
>  		return NULL;
> =20
>  	return container_of(fence, struct dma_fence_array, base);
> diff --git a/include/linux/dma-fence-chain.h b/include/linux/dma-fence-ch=
ain.h
> index 54fe3443fd2c..ee906b659694 100644
> --- a/include/linux/dma-fence-chain.h
> +++ b/include/linux/dma-fence-chain.h
> @@ -49,7 +49,6 @@ struct dma_fence_chain {
>  	spinlock_t lock;
>  };
> =20
> -extern const struct dma_fence_ops dma_fence_chain_ops;
> =20
>  /**
>   * to_dma_fence_chain - cast a fence to a dma_fence_chain
> @@ -61,7 +60,7 @@ extern const struct dma_fence_ops dma_fence_chain_ops;
>  static inline struct dma_fence_chain *
>  to_dma_fence_chain(struct dma_fence *fence)
>  {
> -	if (!fence || fence->ops !=3D &dma_fence_chain_ops)
> +	if (!fence || !dma_fence_is_chain(fence))
>  		return NULL;
> =20
>  	return container_of(fence, struct dma_fence_chain, base);
> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index 1ea691753bd3..775cdc0b4f24 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -587,4 +587,42 @@ struct dma_fence *dma_fence_get_stub(void);
>  struct dma_fence *dma_fence_allocate_private_stub(void);
>  u64 dma_fence_context_alloc(unsigned num);
> =20
> +extern const struct dma_fence_ops dma_fence_array_ops;
> +extern const struct dma_fence_ops dma_fence_chain_ops;
> +
> +/**
> + * dma_fence_is_array - check if a fence is from the array subclass
> + * @fence: the fence to test
> + *
> + * Return true if it is a dma_fence_array and false otherwise.
> + */
> +static inline bool dma_fence_is_array(struct dma_fence *fence)
> +{
> +	return fence->ops =3D=3D &dma_fence_array_ops;
> +}
> +
> +/**
> + * dma_fence_is_chain - check if a fence is from the chain subclass
> + * @fence: the fence to test
> + *
> + * Return true if it is a dma_fence_chain and false otherwise.
> + */
> +static inline bool dma_fence_is_chain(struct dma_fence *fence)
> +{
> +	return fence->ops =3D=3D &dma_fence_chain_ops;
> +}
> +
> +/**
> + * dma_fence_is_container - check if a fence is a container for other fe=
nces
> + * @fence: the fence to test
> + *
> + * Return true if this fence is a container for other fences, false othe=
rwise.
> + * This is important since we can't build up large fence structure or ot=
herwise
> + * we run into recursion during operation on those fences.
> + */
> +static inline bool dma_fence_is_container(struct dma_fence *fence)

Code looks all good, but I'm not super enthusiastic about exporting the
ops to drivers and letting them do random nonsense. At least i915 does
pretty enormous amounts of stuff with that instead of having pushed
priority boosting into dma-fence as a proper concept. And maybe a few
other things.

Now i915-gem team having gone off the rails of good upstream conduct is
another thing maybe, but I'd like to not encourage that.

So could we perhaps do this all in header which is entirely private to
drivers/dma-buf, like dma-fence-internal or so? And maybe whack a big
fixme onto the current abuse in drivers (of which __dma_fence_is_chain()
gets a special price for "not how upstream should be done" *sigh*).

Cheers, Daniel

> +{
> +	return dma_fence_is_array(fence) || dma_fence_is_chain(fence);
> +}
> +
>  #endif /* __LINUX_DMA_FENCE_H */
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
