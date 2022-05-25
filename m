Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 92350534035
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 17:18:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C16DC3EE7C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 15:18:49 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id C66213ED8A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 15:18:45 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id k30so30568485wrd.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 08:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=hz1L99EHsA+Mjk0mhKuLuqrS0ycdn4FgXsH4+Dwo498=;
        b=KjdIWBfJIDfoz7ZSaRk2qCOBHQx90U6e/2lcoqkFLsd3uM6esCJx1+8EVMrQOez8+K
         Egfe+DToEuvaUesG0nVk/Mhy6rNdHOh0bm02vV6lEy0vGSc6N+ojE3P9EbUU8c6nPdFV
         xEaJdHufy7oeuMurfHIHQoTKDTm8jUOOZRz1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=hz1L99EHsA+Mjk0mhKuLuqrS0ycdn4FgXsH4+Dwo498=;
        b=LwoQyOCCgdB/OePMr7LJ9uIvgU6oUZhEXrx51b7XfzaAnW2Cx+n5CJszfC/AJgnYXz
         SwoWsBBtRFOZy6BI4o9gIeSXdfGUrqFEYqZwmTxtoFyokl5Ype3YM6LK4WTzoffF7Uzt
         qQT1FVZ+5FD+tnxT3l60b3Ixfof3NwAmOwqbP2cJ0s1Cj/KWwvqxVqs7vGiRrkjWyOXG
         yXmBK2hldo/LuU4KiP/afkyhWpIkBmjiZzrKeKI7UcjMQ2hwsyZPD2CAv+2aNI0DMIg7
         Bq2rVdDFVwTHjDFVJP02y+0Rfqog+/g1oESUnJJt9g7NjpmeMS31WkrbXFoddbzG+d4g
         eTDA==
X-Gm-Message-State: AOAM533bV2GL1MTJRiOpdYMOCzX+/i7vXGfDcaKw8gfP94URK2a66FL6
	caPslg9htbFUKy8VBkFzesJpZw==
X-Google-Smtp-Source: ABdhPJzjSWNrzsOHnr2Xjku9V7Y9WQIaS2JAbhRpeSWCiKwCFNlOxPCyG8KdFfvrl8YT5NviT08POQ==
X-Received: by 2002:a05:6000:178d:b0:20f:e7da:6a21 with SMTP id e13-20020a056000178d00b0020fe7da6a21mr10518051wrg.689.1653491924879;
        Wed, 25 May 2022 08:18:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id f2-20020a1c3802000000b003974027722csm1891727wma.47.2022.05.25.08.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 08:18:44 -0700 (PDT)
Date: Wed, 25 May 2022 17:18:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yo5I0otoyJsHY0dk@phenom.ffwll.local>
References: <20220518085446.31338-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220518085446.31338-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: LIHULFQBGFPABYHMPMTTNMJCQLS5JNWV
X-Message-ID-Hash: LIHULFQBGFPABYHMPMTTNMJCQLS5JNWV
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cleanup dma_fence_chain_walk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LIHULFQBGFPABYHMPMTTNMJCQLS5JNWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 18, 2022 at 10:54:46AM +0200, Christian K=F6nig wrote:
> Use unrcu_pointer() instead of the manual cast.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

TIL about unrcu_pointer, and also that entire code here freaks me out. But
at least this seems more with what other users of similar xchg and cmpxchg
tricks are doing, so that's nice.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/dma-fence-chain.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fenc=
e-chain.c
> index 06f8ef97c6e8..a0d920576ba6 100644
> --- a/drivers/dma-buf/dma-fence-chain.c
> +++ b/drivers/dma-buf/dma-fence-chain.c
> @@ -62,8 +62,8 @@ struct dma_fence *dma_fence_chain_walk(struct dma_fence=
 *fence)
>  			replacement =3D NULL;
>  		}
> =20
> -		tmp =3D cmpxchg((struct dma_fence __force **)&chain->prev,
> -			      prev, replacement);
> +		tmp =3D unrcu_pointer(cmpxchg(&chain->prev, RCU_INITIALIZER(prev),
> +					     RCU_INITIALIZER(replacement)));
>  		if (tmp =3D=3D prev)
>  			dma_fence_put(tmp);
>  		else
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
