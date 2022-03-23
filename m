Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 140934E52F6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Mar 2022 14:22:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D367B3F05C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Mar 2022 13:22:08 +0000 (UTC)
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	by lists.linaro.org (Postfix) with ESMTPS id DEBDA3EE14
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 13:22:04 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id o10so2837676ejd.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 06:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=l+1fp5Or9NGgTzSThmUALq6yPKXxdpqHP2QdwrJdAo0=;
        b=Yf2JS59+NhbHCjLE9Y4tEhd3k92P7PrN6SHNz0/g/qZNuMDTDmEgo2W9lrUvAKE+bl
         VlrQ1vduYx28iWr1CW9he97IrIh5lCOwHYU4QdgNiaBMr/ClyEfWFrGuj1/tv+IUsdH2
         hoXxM7xBcTRVNS+TphaGoNyz8G6t2mvdlVGHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=l+1fp5Or9NGgTzSThmUALq6yPKXxdpqHP2QdwrJdAo0=;
        b=6LTcmlsTUjohNqqnVwlvQL9h8qT4eqCSkNtQV1zJwVEFoOzKmm8Gt3N//vSAVOaXE+
         GG7SmujjJk96l4pn9MG8a7cNf8H/WWrAgY6CpdwuXapaD+lGZbslXEMdLdF+tDHtGfY5
         vPqRchuaGCd9TdcA36iiOKBNO02LHsrvQyexl0051TFRYwuCEUhHP/72GMB9TzfYFQEe
         +xGWEt/jrM4oJf85MG42hxKtVxLD3htFhDKmerpLNV9kZr+WQxs5/XwUTqgb333wjkfG
         A2M8HAz+iD+l4Bbt3JhXd6lC+fhvOvYrMqizY3f2afWCPlqm3PyvA/Uuxl9qUC+xiLRD
         7D9g==
X-Gm-Message-State: AOAM531E2KlTReWZa48rOc3A1alML2fP8C/VZjjQKJSdNYAJKr5UbycW
	t+pgdeDieHHLxYAiVxsYC1bF/w==
X-Google-Smtp-Source: ABdhPJzrt4ulR2R6Mr81vt0b860rgmEcRf+dE4TvtYYJrPltu2t2sG4EBomF9g8Mx89gBVF/fzI0zw==
X-Received: by 2002:a17:906:c18c:b0:6d5:8518:e567 with SMTP id g12-20020a170906c18c00b006d58518e567mr31199507ejz.37.1648041723649;
        Wed, 23 Mar 2022 06:22:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id s20-20020a056402015400b00418f9574a36sm9630743edu.73.2022.03.23.06.22.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 06:22:03 -0700 (PDT)
Date: Wed, 23 Mar 2022 14:22:01 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yjse+S0bf4P6QTfu@phenom.ffwll.local>
References: <20220321135856.1331-1-christian.koenig@amd.com>
 <20220321135856.1331-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321135856.1331-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: Z3NWP6SB7ZMCVPGAKHCWGRZC7UUWOPAK
X-Message-ID-Hash: Z3NWP6SB7ZMCVPGAKHCWGRZC7UUWOPAK
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Maor Gottlieb <maorg@nvidia.com>, Gal Pressman <galpress@amazon.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/23] RDMA: use dma_resv_wait() instead of extracting the fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z3NWP6SB7ZMCVPGAKHCWGRZC7UUWOPAK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 21, 2022 at 02:58:37PM +0100, Christian K=F6nig wrote:
> Use dma_resv_wait() instead of extracting the exclusive fence and
> waiting on it manually.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>

Jason, can you ack this for merging through drm trees please?

Thanks, Daniel

> Cc: Leon Romanovsky <leon@kernel.org>
> Cc: Maor Gottlieb <maorg@nvidia.com>
> Cc: Gal Pressman <galpress@amazon.com>
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org
> ---
>  drivers/infiniband/core/umem_dmabuf.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/infiniband/core/umem_dmabuf.c b/drivers/infiniband/c=
ore/umem_dmabuf.c
> index f0760741f281..d32cd7538835 100644
> --- a/drivers/infiniband/core/umem_dmabuf.c
> +++ b/drivers/infiniband/core/umem_dmabuf.c
> @@ -16,7 +16,6 @@ int ib_umem_dmabuf_map_pages(struct ib_umem_dmabuf *ume=
m_dmabuf)
>  {
>  	struct sg_table *sgt;
>  	struct scatterlist *sg;
> -	struct dma_fence *fence;
>  	unsigned long start, end, cur =3D 0;
>  	unsigned int nmap =3D 0;
>  	int i;
> @@ -68,11 +67,8 @@ int ib_umem_dmabuf_map_pages(struct ib_umem_dmabuf *um=
em_dmabuf)
>  	 * may be not up-to-date. Wait for the exporter to finish
>  	 * the migration.
>  	 */
> -	fence =3D dma_resv_excl_fence(umem_dmabuf->attach->dmabuf->resv);
> -	if (fence)
> -		return dma_fence_wait(fence, false);
> -
> -	return 0;
> +	return dma_resv_wait_timeout(umem_dmabuf->attach->dmabuf->resv, false,
> +				     false, MAX_SCHEDULE_TIMEOUT);
>  }
>  EXPORT_SYMBOL(ib_umem_dmabuf_map_pages);
> =20
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
