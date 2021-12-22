Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C99A347D8B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:26:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12DAD60F21
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:26:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BA6DE6105D; Wed, 22 Dec 2021 21:26:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A031D60DA3;
	Wed, 22 Dec 2021 21:26:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 71F39606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:26:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 58CB960DA3; Wed, 22 Dec 2021 21:26:15 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by lists.linaro.org (Postfix) with ESMTPS id 42313606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:26:13 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id bm14so13583501edb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6cVibGdO5hAUXCTCOcNwOdP47+qzwpAZ5IqmBGy0IdA=;
 b=jvi7yUGvvAdGFvf4Bl8V27vfWhNPGIszgKEXl+wjVce+XuhEwE+ah1muFRxuNGwvil
 vUhkCqoHzCCg+urmGcgO+kxnUuYYFAGOMgzuHGZY3tqRjWUaHt70frbuMquh1OpShNkn
 ak2Mo/yd1Nd9BVZir5M+H7eSbb93wbJs8PVAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6cVibGdO5hAUXCTCOcNwOdP47+qzwpAZ5IqmBGy0IdA=;
 b=fcbZHv9jcXe713MLzoz5QMY+7Jt+1y9iHHgFOy14V498ugJpg+gOxpEs1cJvTM4BrG
 sTQaCPa/c7YTCe60gCg0Fp7rDrH78cTQX9qVtOQjD4uS0LWhp5M+2wJptAjeSqeqPP20
 K5nSEjOX8lHkqohdkP2MUGKedF0zxS8tln+xpqwSH9/1WlbRRmFRhRkVBf5/fXvDkX5z
 D+i2s6FvT0HaM0aRk2F9WkhFCzQ0SdbmVz+jfyHD2fHmKAWPQvmYBCxqa8W95wXr9/zP
 lAs2Dyff4Cw1N9FbQNQLW0k/cS5EKl2QNzqgw0UuiE8BQ3/q44z+XjZjyWTZx/GFaKCv
 9TQg==
X-Gm-Message-State: AOAM533iLS3SvVNS2xZGjNyZxOvwfANW3zGMuLcefRn5ztTa+DRMtYdy
 x0gYiHURij8AjVbi20hhadPu5VDiGZ+zeQ==
X-Google-Smtp-Source: ABdhPJzimkUU7nhWNHF88UJ9LpVSHepK6xdcZRE7dyzOm7BKRhSMxLEKLpUABOmFA0mrLiC0wpacsw==
X-Received: by 2002:a17:906:4f8c:: with SMTP id
 o12mr3930986eju.16.1640208372262; 
 Wed, 22 Dec 2021 13:26:12 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id gn15sm1050425ejc.184.2021.12.22.13.26.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:26:11 -0800 (PST)
Date: Wed, 22 Dec 2021 22:26:10 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOX8r8tMj4HD8o6@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-7-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-7-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 06/24] drm/etnaviv: stop using
 dma_resv_excl_fence
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

On Tue, Dec 07, 2021 at 01:33:53PM +0100, Christian K=F6nig wrote:
> We can get the excl fence together with the shared ones as well.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Pls cc driver maintainers.

dim add-missing-cc

is your friend if you're lazy can even combine that with git rebase -x.
Same for all the other driver patches, some acks/testing would be good to
avoid fallout (we had a bit much of that with all these I think).

> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gem.h        |  1 -
>  drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 14 +++++---------
>  drivers/gpu/drm/etnaviv/etnaviv_sched.c      | 10 ----------
>  3 files changed, 5 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.h b/drivers/gpu/drm/etna=
viv/etnaviv_gem.h
> index 98e60df882b6..f596d743baa3 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem.h
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.h
> @@ -80,7 +80,6 @@ struct etnaviv_gem_submit_bo {
>  	u64 va;
>  	struct etnaviv_gem_object *obj;
>  	struct etnaviv_vram_mapping *mapping;
> -	struct dma_fence *excl;
>  	unsigned int nr_shared;
>  	struct dma_fence **shared;
>  };
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/d=
rm/etnaviv/etnaviv_gem_submit.c
> index 64c90ff348f2..4286dc93fdaa 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> @@ -188,15 +188,11 @@ static int submit_fence_sync(struct etnaviv_gem_sub=
mit *submit)
>  		if (submit->flags & ETNA_SUBMIT_NO_IMPLICIT)
>  			continue;
>  =

> -		if (bo->flags & ETNA_SUBMIT_BO_WRITE) {
> -			ret =3D dma_resv_get_fences(robj, true, &bo->nr_shared,
> -						  &bo->shared);
> -			if (ret)
> -				return ret;
> -		} else {
> -			bo->excl =3D dma_fence_get(dma_resv_excl_fence(robj));
> -		}
> -
> +		ret =3D dma_resv_get_fences(robj,
> +					  !!(bo->flags & ETNA_SUBMIT_BO_WRITE),

Afaik the cast to bool !! here is overkill, compiler will do that for you
or something like that. With that dropped:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


> +					  &bo->nr_shared, &bo->shared);
> +		if (ret)
> +			return ret;
>  	}
>  =

>  	return ret;
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_sched.c b/drivers/gpu/drm/et=
naviv/etnaviv_sched.c
> index 180bb633d5c5..8c038a363d15 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_sched.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_sched.c
> @@ -39,16 +39,6 @@ etnaviv_sched_dependency(struct drm_sched_job *sched_j=
ob,
>  		struct etnaviv_gem_submit_bo *bo =3D &submit->bos[i];
>  		int j;
>  =

> -		if (bo->excl) {
> -			fence =3D bo->excl;
> -			bo->excl =3D NULL;
> -
> -			if (!dma_fence_is_signaled(fence))
> -				return fence;
> -
> -			dma_fence_put(fence);
> -		}
> -
>  		for (j =3D 0; j < bo->nr_shared; j++) {
>  			if (!bo->shared[j])
>  				continue;
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
