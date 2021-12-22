Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D7847D940
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 23:16:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5913061035
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:16:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F2B4A61091; Wed, 22 Dec 2021 22:16:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63D9A60DC1;
	Wed, 22 Dec 2021 22:16:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 81A1660B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:16:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 74B5060DC1; Wed, 22 Dec 2021 22:16:30 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by lists.linaro.org (Postfix) with ESMTPS id 66D2660B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:16:28 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id o6so13995522edc.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 14:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Qn3Kr7lwo/HmIS7CT1SZpGORblvbCZjF3DCsOFJIw0k=;
 b=amKcvCF94UWnfTHSP4DC6weXfDeKQ2QhYVovHBg/7kgUIwS/XowllL6BO5jIu1uQop
 Fsml8H/b3l7JdoFbQ0ttVuWRPl8uB92SLGAIfnEZLjQcRJgt0IlK1hxVjz+0cF1/XWYU
 zweVC2NF64fygCnd31BQ925DOg3B2fC6I+Dvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Qn3Kr7lwo/HmIS7CT1SZpGORblvbCZjF3DCsOFJIw0k=;
 b=hNo0b4NK5Le1gpn0SODdA1rc+onhmjGqdDXPfpbQZhDM0DfBytnr5XHGh0JxMdo4Cj
 ThEr1D+k7Z+bv6FPxlTfLTOmT+ikL83QZR8aYahYy5c7Ixve8d+Ei2exLcdZuX/fLxUu
 LJWIv8R7qY7K7yQPNgw7DKdKNtHadP6quMckSpxsGD843qCUFAoG6LQN2NFPyHsJBLg1
 qhqwikOl4oAI9XewC3YWOUR3Z0CvqV46x62j2LrNDSzYBt2UCfKVJVu4LTTZTReHrhZd
 VkYBUmWmFa6iLrss6PMdulIOzc2c2Sy69Tct2xzI444xV8F8AlP9Bll/J5Nt+sG5JCwp
 6FIQ==
X-Gm-Message-State: AOAM533EfSy346L/g9N3Zcae0GDfyhORn/9kHoJU5Kqhgma1cA8AHWJD
 B6nuSDo0HqvhWw7WUaS5RKlnAg==
X-Google-Smtp-Source: ABdhPJysfWQvc+5y7RJmM97CZu2nix48A7rrE9PR2yJ25iK1G4dgfGKhqC0BOmxh0bBQuh3OaD2vsw==
X-Received: by 2002:aa7:ce0c:: with SMTP id d12mr4667871edv.88.1640211387379; 
 Wed, 22 Dec 2021 14:16:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id sb13sm1141150ejc.26.2021.12.22.14.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 14:16:26 -0800 (PST)
Date: Wed, 22 Dec 2021 23:16:25 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOjuWx+yPl7Jx5s@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-23-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-23-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 22/24] dma-buf: wait for map to complete
 for static attachments
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Dec 07, 2021 at 01:34:09PM +0100, Christian K=F6nig wrote:
> We have previously done that in the individual drivers but it is
> more defensive to move that into the common code.
> =

> Dynamic attachments should wait for map operations to complete by themsel=
ves.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

i915 should probably stop reinveinting so much stuff here and align more
...

I do wonder whether we want the same for dma_buf_pin(), or at least
document that for dynamic attachments, you still need to sync even if it's
pinned. Especially since your kerneldoc for the usage flags suggests that
waiting isn't needed, but after this patch waiting _is_ needed even for
dynamic importers.

So there is a gap here I think, and I deleted my r-b tag that I already
typed again. Or do I miss something?

Minimally needs accurate docs, but I'm leaning towards an unconditional
dma_resv_wait() in dma_buf_pin() for safety's sake.


> ---
>  drivers/dma-buf/dma-buf.c                   | 18 +++++++++++++++---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c | 14 +-------------
>  drivers/gpu/drm/nouveau/nouveau_prime.c     | 17 +----------------
>  drivers/gpu/drm/radeon/radeon_prime.c       | 16 +++-------------
>  4 files changed, 20 insertions(+), 45 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 528983d3ba64..d3dd602c4753 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -660,12 +660,24 @@ static struct sg_table * __map_dma_buf(struct dma_b=
uf_attachment *attach,
>  				       enum dma_data_direction direction)
>  {
>  	struct sg_table *sg_table;
> +	signed long ret;
>  =

>  	sg_table =3D attach->dmabuf->ops->map_dma_buf(attach, direction);
> +	if (IS_ERR_OR_NULL(sg_table))
> +		return sg_table;
> +
> +	if (!dma_buf_attachment_is_dynamic(attach)) {
> +		ret =3D dma_resv_wait_timeout(attach->dmabuf->resv,

Another place where this dma_resv_wait() wrapper would be good. I think we
should have it :-)

Cheers, Daniel

> +					    DMA_RESV_USAGE_KERNEL, true,
> +					    MAX_SCHEDULE_TIMEOUT);
> +		if (ret < 0) {
> +			attach->dmabuf->ops->unmap_dma_buf(attach, sg_table,
> +							   direction);
> +			return ERR_PTR(ret);
> +		}
> +	}
>  =

> -	if (!IS_ERR_OR_NULL(sg_table))
> -		mangle_sg_table(sg_table);
> -
> +	mangle_sg_table(sg_table);
>  	return sg_table;
>  }
>  =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c b/drivers/gpu/dr=
m/amd/amdgpu/amdgpu_dma_buf.c
> index 4896c876ffec..33127bd56c64 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
> @@ -102,21 +102,9 @@ static int amdgpu_dma_buf_pin(struct dma_buf_attachm=
ent *attach)
>  {
>  	struct drm_gem_object *obj =3D attach->dmabuf->priv;
>  	struct amdgpu_bo *bo =3D gem_to_amdgpu_bo(obj);
> -	int r;
>  =

>  	/* pin buffer into GTT */
> -	r =3D amdgpu_bo_pin(bo, AMDGPU_GEM_DOMAIN_GTT);
> -	if (r)
> -		return r;
> -
> -	if (bo->tbo.moving) {
> -		r =3D dma_fence_wait(bo->tbo.moving, true);
> -		if (r) {
> -			amdgpu_bo_unpin(bo);
> -			return r;
> -		}
> -	}
> -	return 0;
> +	return amdgpu_bo_pin(bo, AMDGPU_GEM_DOMAIN_GTT);
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/nouveau/nouveau_prime.c b/drivers/gpu/drm/no=
uveau/nouveau_prime.c
> index 60019d0532fc..347488685f74 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_prime.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_prime.c
> @@ -93,22 +93,7 @@ int nouveau_gem_prime_pin(struct drm_gem_object *obj)
>  	if (ret)
>  		return -EINVAL;
>  =

> -	ret =3D ttm_bo_reserve(&nvbo->bo, false, false, NULL);
> -	if (ret)
> -		goto error;
> -
> -	if (nvbo->bo.moving)
> -		ret =3D dma_fence_wait(nvbo->bo.moving, true);
> -
> -	ttm_bo_unreserve(&nvbo->bo);
> -	if (ret)
> -		goto error;
> -
> -	return ret;
> -
> -error:
> -	nouveau_bo_unpin(nvbo);
> -	return ret;
> +	return 0;
>  }
>  =

>  void nouveau_gem_prime_unpin(struct drm_gem_object *obj)
> diff --git a/drivers/gpu/drm/radeon/radeon_prime.c b/drivers/gpu/drm/rade=
on/radeon_prime.c
> index 4a90807351e7..42a87948e28c 100644
> --- a/drivers/gpu/drm/radeon/radeon_prime.c
> +++ b/drivers/gpu/drm/radeon/radeon_prime.c
> @@ -77,19 +77,9 @@ int radeon_gem_prime_pin(struct drm_gem_object *obj)
>  =

>  	/* pin buffer into GTT */
>  	ret =3D radeon_bo_pin(bo, RADEON_GEM_DOMAIN_GTT, NULL);
> -	if (unlikely(ret))
> -		goto error;
> -
> -	if (bo->tbo.moving) {
> -		ret =3D dma_fence_wait(bo->tbo.moving, false);
> -		if (unlikely(ret)) {
> -			radeon_bo_unpin(bo);
> -			goto error;
> -		}
> -	}
> -
> -	bo->prime_shared_count++;
> -error:
> +	if (likely(ret =3D=3D 0))
> +		bo->prime_shared_count++;
> +
>  	radeon_bo_unreserve(bo);
>  	return ret;
>  }
> -- =

> 2.25.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
