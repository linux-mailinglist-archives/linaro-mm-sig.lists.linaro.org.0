Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF3F47D89B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:13:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD9CE610BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:13:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BD0156107D; Wed, 22 Dec 2021 21:13:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6982B60DA3;
	Wed, 22 Dec 2021 21:13:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BFE04608E6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:13:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B160860DA3; Wed, 22 Dec 2021 21:13:25 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by lists.linaro.org (Postfix) with ESMTPS id A86F1608E6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:13:23 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id j21so13451994edt.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=4N9dl2DiDWMzSA/M/e16oaDz3lPQeFUTxmhThb+1lJs=;
 b=RfflxoalWQ5fQmXA7oAU1a/53HgvzRvOCnSWhJuPyvQ4joNsvhoeYpFzFBM4WA/ADT
 0SX7FHWiNb34AHZg87Gbpn6ZPZLBqex/72DOvI3VpfSKJYv5o+lBgtlSpGtdt2NXEvf4
 /ovKhmURM3dfSdVKRun1B6aRKgbvRCuwOETHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4N9dl2DiDWMzSA/M/e16oaDz3lPQeFUTxmhThb+1lJs=;
 b=Y815ddHnCdk9y8W8Jo6vSVsmCymfJbV5KqixhAE4CjVVM7aCyJwVGQL/jW0iBiCeU8
 jq597CwgFgHEh/U+q/vh5Tb2e9xPFFBr8bnPMgDc9AaDq/ynchBvwV19CVJkY6h64x+l
 +owDGEfzHz+BcRBepzCrr55j8VISBL9robtAAF0Bu7wPruD1Uu8ga9MommMo+Q7+ePEI
 ionX+ryKB3QQbCBuqbPSiHPewh8zlvuDX7m78vh0Tf5JItS8RLZa0sO96ivGuqjUypCk
 xGaBSfQlFbGrO+O9LBeox4hDwAlhYPtz/7RS5K3wF/t4QTc4NiGRaSrhrW+hqEElwK0i
 yOJg==
X-Gm-Message-State: AOAM532ZMsg7zZumeWgHeKnkZ37iqKBvtOY1vU2/7pVTnCrjOnskbglv
 lPu27HeisyC8knMwsBZrF7Xwgg==
X-Google-Smtp-Source: ABdhPJwuZUIVeo1LKXQnEDdj5Oi/LBPTPxhNyyiNXANmjCVEhiQX8zHmyLKD3pkyqrV5t4EQJKvkUQ==
X-Received: by 2002:a17:906:1c0e:: with SMTP id
 k14mr3779926ejg.670.1640207602630; 
 Wed, 22 Dec 2021 13:13:22 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r8sm294325edd.74.2021.12.22.13.13.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:13:22 -0800 (PST)
Date: Wed, 22 Dec 2021 22:13:20 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOU8CJq83TzaD1+@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 03/24] dma-buf: drop excl_fence
 parameter from dma_resv_get_fences
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

On Tue, Dec 07, 2021 at 01:33:50PM +0100, Christian K=F6nig wrote:
> Returning the exclusive fence separately is no longer used.
> =

> Instead add a write parameter to indicate the use case.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c                   | 48 ++++++++------------
>  drivers/dma-buf/st-dma-resv.c                | 26 ++---------
>  drivers/gpu/drm/amd/amdgpu/amdgpu_display.c  |  6 ++-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c      |  2 +-
>  drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c |  3 +-
>  include/linux/dma-resv.h                     |  4 +-
>  6 files changed, 31 insertions(+), 58 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index a12a3a39f280..480c305554a1 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -611,57 +611,45 @@ EXPORT_SYMBOL(dma_resv_copy_fences);
>   * dma_resv_get_fences - Get an object's shared and exclusive
>   * fences without update side lock held
>   * @obj: the reservation object
> - * @fence_excl: the returned exclusive fence (or NULL)
> - * @shared_count: the number of shared fences returned
> - * @shared: the array of shared fence ptrs returned (array is krealloc'd=
 to
> - * the required size, and must be freed by caller)
> - *
> - * Retrieve all fences from the reservation object. If the pointer for t=
he
> - * exclusive fence is not specified the fence is put into the array of t=
he
> - * shared fences as well. Returns either zero or -ENOMEM.
> + * @write: true if we should return all fences

I'm assuming that this will be properly documented later on in the series
...

> + * @num_fences: the number of fences returned
> + * @fences: the array of fence ptrs returned (array is krealloc'd to the
> + * required size, and must be freed by caller)
> + *
> + * Retrieve all fences from the reservation object.
> + * Returns either zero or -ENOMEM.
>   */
> -int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **fence_e=
xcl,
> -			unsigned int *shared_count, struct dma_fence ***shared)
> +int dma_resv_get_fences(struct dma_resv *obj, bool write,
> +			unsigned int *num_fences, struct dma_fence ***fences)
>  {
>  	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
>  =

> -	*shared_count =3D 0;
> -	*shared =3D NULL;
> -
> -	if (fence_excl)
> -		*fence_excl =3D NULL;
> +	*num_fences =3D 0;
> +	*fences =3D NULL;
>  =

> -	dma_resv_iter_begin(&cursor, obj, true);
> +	dma_resv_iter_begin(&cursor, obj, write);
>  	dma_resv_for_each_fence_unlocked(&cursor, fence) {
>  =

>  		if (dma_resv_iter_is_restarted(&cursor)) {
>  			unsigned int count;
>  =

> -			while (*shared_count)
> -				dma_fence_put((*shared)[--(*shared_count)]);
> +			while (*num_fences)
> +				dma_fence_put((*fences)[--(*num_fences)]);
>  =

> -			if (fence_excl)
> -				dma_fence_put(*fence_excl);
> -
> -			count =3D cursor.shared_count;
> -			count +=3D fence_excl ? 0 : 1;
> +			count =3D cursor.shared_count + 1;
>  =

>  			/* Eventually re-allocate the array */
> -			*shared =3D krealloc_array(*shared, count,
> +			*fences =3D krealloc_array(*fences, count,
>  						 sizeof(void *),
>  						 GFP_KERNEL);
> -			if (count && !*shared) {
> +			if (count && !*fences) {
>  				dma_resv_iter_end(&cursor);
>  				return -ENOMEM;
>  			}
>  		}
>  =

> -		dma_fence_get(fence);
> -		if (dma_resv_iter_is_exclusive(&cursor) && fence_excl)
> -			*fence_excl =3D fence;
> -		else
> -			(*shared)[(*shared_count)++] =3D fence;
> +		(*fences)[(*num_fences)++] =3D dma_fence_get(fence);
>  	}
>  	dma_resv_iter_end(&cursor);
>  =

> diff --git a/drivers/dma-buf/st-dma-resv.c b/drivers/dma-buf/st-dma-resv.c
> index bc32b3eedcb6..cbe999c6e7a6 100644
> --- a/drivers/dma-buf/st-dma-resv.c
> +++ b/drivers/dma-buf/st-dma-resv.c
> @@ -275,7 +275,7 @@ static int test_shared_for_each_unlocked(void *arg)
>  =

>  static int test_get_fences(void *arg, bool shared)
>  {
> -	struct dma_fence *f, *excl =3D NULL, **fences =3D NULL;
> +	struct dma_fence *f, **fences =3D NULL;
>  	struct dma_resv resv;
>  	int r, i;
>  =

> @@ -304,35 +304,19 @@ static int test_get_fences(void *arg, bool shared)
>  	}
>  	dma_resv_unlock(&resv);
>  =

> -	r =3D dma_resv_get_fences(&resv, &excl, &i, &fences);
> +	r =3D dma_resv_get_fences(&resv, shared, &i, &fences);
>  	if (r) {
>  		pr_err("get_fences failed\n");
>  		goto err_free;
>  	}
>  =

> -	if (shared) {
> -		if (excl !=3D NULL) {
> -			pr_err("get_fences returned unexpected excl fence\n");
> -			goto err_free;
> -		}
> -		if (i !=3D 1 || fences[0] !=3D f) {
> -			pr_err("get_fences returned unexpected shared fence\n");
> -			goto err_free;
> -		}
> -	} else {
> -		if (excl !=3D f) {
> -			pr_err("get_fences returned unexpected excl fence\n");
> -			goto err_free;
> -		}
> -		if (i !=3D 0) {
> -			pr_err("get_fences returned unexpected shared fence\n");
> -			goto err_free;
> -		}
> +	if (i !=3D 1 || fences[0] !=3D f) {
> +		pr_err("get_fences returned unexpected fence\n");
> +		goto err_free;
>  	}
>  =

>  	dma_fence_signal(f);
>  err_free:
> -	dma_fence_put(excl);
>  	while (i--)
>  		dma_fence_put(fences[i]);
>  	kfree(fences);
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c b/drivers/gpu/dr=
m/amd/amdgpu/amdgpu_display.c
> index 68108f151dad..d17e1c911689 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
> @@ -200,8 +200,10 @@ int amdgpu_display_crtc_page_flip_target(struct drm_=
crtc *crtc,
>  		goto unpin;
>  	}
>  =

> -	r =3D dma_resv_get_fences(new_abo->tbo.base.resv, NULL,
> -				&work->shared_count, &work->shared);
> +	/* TODO: Unify this with other drivers */
> +	r =3D dma_resv_get_fences(new_abo->tbo.base.resv, true,
> +				&work->shared_count,
> +				&work->shared);
>  	if (unlikely(r !=3D 0)) {
>  		DRM_ERROR("failed to get fences for buffer\n");
>  		goto unpin;
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_ids.c
> index b7fb72bff2c1..be48487e2ca7 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c
> @@ -112,7 +112,7 @@ void amdgpu_pasid_free_delayed(struct dma_resv *resv,
>  	unsigned count;
>  	int r;
>  =

> -	r =3D dma_resv_get_fences(resv, NULL, &count, &fences);
> +	r =3D dma_resv_get_fences(resv, true, &count, &fences);
>  	if (r)
>  		goto fallback;
>  =

> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/d=
rm/etnaviv/etnaviv_gem_submit.c
> index b5e8ce86dbe7..64c90ff348f2 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> @@ -189,8 +189,7 @@ static int submit_fence_sync(struct etnaviv_gem_submi=
t *submit)
>  			continue;
>  =

>  		if (bo->flags & ETNA_SUBMIT_BO_WRITE) {
> -			ret =3D dma_resv_get_fences(robj, NULL,
> -						  &bo->nr_shared,
> +			ret =3D dma_resv_get_fences(robj, true, &bo->nr_shared,
>  						  &bo->shared);
>  			if (ret)
>  				return ret;
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 3baf2a4a9a0d..fa2002939b19 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -436,8 +436,8 @@ void dma_resv_add_shared_fence(struct dma_resv *obj, =
struct dma_fence *fence);
>  void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
>  			     struct dma_fence *fence);
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce);
> -int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **pfence_=
excl,
> -			unsigned *pshared_count, struct dma_fence ***pshared);
> +int dma_resv_get_fences(struct dma_resv *obj, bool write,
> +			unsigned int *num_fences, struct dma_fence ***fences);
>  int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src);
>  long dma_resv_wait_timeout(struct dma_resv *obj, bool wait_all, bool int=
r,
>  			   unsigned long timeout);
> -- =

> 2.25.1
> =



Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
