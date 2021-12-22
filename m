Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 63ED147D881
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:05:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44E5861050
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:05:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1A621610D0; Wed, 22 Dec 2021 21:05:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2797460DA3;
	Wed, 22 Dec 2021 21:05:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AFB4B608E6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:05:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A465760DA3; Wed, 22 Dec 2021 21:05:50 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by lists.linaro.org (Postfix) with ESMTPS id 97DFA608E6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:05:48 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id y13so13331576edd.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IQ8ss5cLkN0OPC63IPdBeU3liG7P/Ww64z/LebsIY2w=;
 b=jOAFEbuBAhj/reb9IQTIUNL+eVriPEapr96s9Pcjc8dBjFsapOITkfRryqtSr8GJqg
 qW8h7sFiaY16oLLhjNKiIQKkSM/bI1XMZJ04Cie4CYLGobuvnju/nMu6cr7NI0Zmz7rk
 4ZK3+roGl3rxTOtfUcZcrgQ5ZAxykXjXUr4dE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IQ8ss5cLkN0OPC63IPdBeU3liG7P/Ww64z/LebsIY2w=;
 b=NuLPGAX/L3h+T0k2wuVRBbQMalQ/5ufUovPDRsFQ4gKJkvbcbifR4XIRbf3WSpAiUI
 XTirvTnPut/6NP0D2uKrpUznN31K7kLH4gYTy01R0mQNtj/txArFZgPEkps6b4feNulO
 W1fB83H2e+FFbQ3WI8jnVedN/bij/w9OVh/KcoqpXlQe7lo6iihNkJZoZE2l/x1pfffm
 ko832ZmMiNQJw7npvk4PninplvuJAd9GDUlL/42oFpSU62THpasV/DwnA+e2Yz4+SO82
 rtbV07p0yWvw75jLS8pDOoLyuq4+WLTkHas7p5LF/2nGCMrQQRQWVQ6gCHKbjADFP68p
 9c1Q==
X-Gm-Message-State: AOAM533W7690BZDpcHxBHkrHcK6G52QtqQLD3a0AqE1uknvOslU41+mo
 KXSS325qFsv9jOogkeKqpd9207M3by4y/w==
X-Google-Smtp-Source: ABdhPJy16fia4p0Y93NWGi3JF1DLRQj6DXz7tKsGUA5K+83EAZceIlpmfFearrRDhArZk+srL2QzXg==
X-Received: by 2002:a05:6402:518c:: with SMTP id
 q12mr4542433edd.312.1640207147443; 
 Wed, 22 Dec 2021 13:05:47 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o1sm1274867edv.2.2021.12.22.13.05.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:05:47 -0800 (PST)
Date: Wed, 22 Dec 2021 22:05:45 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOTKYkEcu7MG2sY@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/24] dma-buf: add
 dma_resv_replace_fences
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

On Tue, Dec 07, 2021 at 01:33:48PM +0100, Christian K=F6nig wrote:
> This function allows to replace fences from the shared fence list when
> we can gurantee that the operation represented by the original fence has
> finished or no accesses to the resources protected by the dma_resv
> object any more when the new fence finishes.
> =

> Then use this function in the amdkfd code when BOs are unmapped from the
> process.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c                    | 43 ++++++++++++++++
>  .../gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c  | 49 +++----------------
>  include/linux/dma-resv.h                      |  2 +
>  3 files changed, 52 insertions(+), 42 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 4deea75c0b9c..a688dbded3d3 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -284,6 +284,49 @@ void dma_resv_add_shared_fence(struct dma_resv *obj,=
 struct dma_fence *fence)
>  }
>  EXPORT_SYMBOL(dma_resv_add_shared_fence);
>  =

> +/**
> + * dma_resv_replace_fences - replace fences in the dma_resv obj
> + * @obj: the reservation object
> + * @context: the context of the fences to replace
> + * @replacement: the new fence to use instead
> + *
> + * Replace fences with a specified context with a new fence. Only valid =
if the
> + * operation represented by the original fences is completed or has no l=
onger
> + * access to the resources protected by the dma_resv object when the new=
 fence
> + * completes.
> + */
> +void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
> +			     struct dma_fence *replacement)
> +{
> +	struct dma_resv_list *list;
> +	struct dma_fence *old;
> +	unsigned int i;
> +
> +	dma_resv_assert_held(obj);
> +
> +	write_seqcount_begin(&obj->seq);
> +
> +	old =3D dma_resv_excl_fence(obj);
> +	if (old->context =3D=3D context) {
> +		RCU_INIT_POINTER(obj->fence_excl, dma_fence_get(replacement));
> +		dma_fence_put(old);
> +	}
> +
> +	list =3D dma_resv_shared_list(obj);
> +	for (i =3D 0; list && i < list->shared_count; ++i) {
> +		old =3D rcu_dereference_protected(list->shared[i],
> +						dma_resv_held(obj));
> +		if (old->context !=3D context)
> +			continue;
> +
> +		rcu_assign_pointer(list->shared[i], dma_fence_get(replacement));
> +		dma_fence_put(old);

Since the fences are all guaranteed to be from the same context, maybe we
should have a WARN_ON(__dma_fence_is_later()); here just to be safe?

With that added:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +	}
> +
> +	write_seqcount_end(&obj->seq);
> +}
> +EXPORT_SYMBOL(dma_resv_replace_fences);
> +
>  /**
>   * dma_resv_add_excl_fence - Add an exclusive fence.
>   * @obj: the reservation object
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/g=
pu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> index 71acd577803e..b558ef0f8c4a 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> @@ -236,53 +236,18 @@ void amdgpu_amdkfd_release_notify(struct amdgpu_bo =
*bo)
>  static int amdgpu_amdkfd_remove_eviction_fence(struct amdgpu_bo *bo,
>  					struct amdgpu_amdkfd_fence *ef)
>  {
> -	struct dma_resv *resv =3D bo->tbo.base.resv;
> -	struct dma_resv_list *old, *new;
> -	unsigned int i, j, k;
> +	struct dma_fence *replacement;
>  =

>  	if (!ef)
>  		return -EINVAL;
>  =

> -	old =3D dma_resv_shared_list(resv);
> -	if (!old)
> -		return 0;
> -
> -	new =3D kmalloc(struct_size(new, shared, old->shared_max), GFP_KERNEL);
> -	if (!new)
> -		return -ENOMEM;
> -
> -	/* Go through all the shared fences in the resevation object and sort
> -	 * the interesting ones to the end of the list.
> +	/* TODO: Instead of block before we should use the fence of the page
> +	 * table update and TLB flush here directly.
>  	 */
> -	for (i =3D 0, j =3D old->shared_count, k =3D 0; i < old->shared_count; =
++i) {
> -		struct dma_fence *f;
> -
> -		f =3D rcu_dereference_protected(old->shared[i],
> -					      dma_resv_held(resv));
> -
> -		if (f->context =3D=3D ef->base.context)
> -			RCU_INIT_POINTER(new->shared[--j], f);
> -		else
> -			RCU_INIT_POINTER(new->shared[k++], f);
> -	}
> -	new->shared_max =3D old->shared_max;
> -	new->shared_count =3D k;
> -
> -	/* Install the new fence list, seqcount provides the barriers */
> -	write_seqcount_begin(&resv->seq);
> -	RCU_INIT_POINTER(resv->fence, new);
> -	write_seqcount_end(&resv->seq);
> -
> -	/* Drop the references to the removed fences or move them to ef_list */
> -	for (i =3D j; i < old->shared_count; ++i) {
> -		struct dma_fence *f;
> -
> -		f =3D rcu_dereference_protected(new->shared[i],
> -					      dma_resv_held(resv));
> -		dma_fence_put(f);
> -	}
> -	kfree_rcu(old, rcu);
> -
> +	replacement =3D dma_fence_get_stub();
> +	dma_resv_replace_fences(bo->tbo.base.resv, ef->base.context,
> +				replacement);
> +	dma_fence_put(replacement);
>  	return 0;
>  }
>  =

> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index eebf04325b34..e0be34265eae 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -457,6 +457,8 @@ void dma_resv_init(struct dma_resv *obj);
>  void dma_resv_fini(struct dma_resv *obj);
>  int dma_resv_reserve_shared(struct dma_resv *obj, unsigned int num_fence=
s);
>  void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *f=
ence);
> +void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
> +			     struct dma_fence *fence);
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce);
>  int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **pfence_=
excl,
>  			unsigned *pshared_count, struct dma_fence ***pshared);
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
