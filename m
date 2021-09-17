Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D62D40FA67
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:39:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 839AB6328C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:39:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 537B6666F6; Fri, 17 Sep 2021 14:39:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFB7E6341D;
	Fri, 17 Sep 2021 14:39:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C772D6328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:39:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BD27F6341D; Fri, 17 Sep 2021 14:39:36 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id B633B6328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:39:34 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id w29so15559781wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=rONnp94F7a6Lw/Ny2EjsCmoV0di2gM6/LbUVHOGlfd0=;
 b=dUD1I07v914rFkrFMs+i+NhM+PtyoilHyl1bXVlNPKlJlZE1YCIxEAexHS9ldrzcDL
 tDJJKkLod8QwkTfCiRQwoaZVNBOS3CA7WkvI4INkGYPkfEIcqoYEaOEx8ljrI3EMWx+c
 Jb2l9UHXbXp4ROUXna5KCWojZDZiW+APlIETI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rONnp94F7a6Lw/Ny2EjsCmoV0di2gM6/LbUVHOGlfd0=;
 b=InsGV4Eld4wwE1rPpAMMWOVNFebwFmdSZoaJIRMh6zTBoggU0LxB0C5oJTFgrdhWj+
 mUPkmSiKFfhz2DHwPXV0dFkWBR5Rw7vSGzSnCipVgjBwjudLUCFICNmgfcKF4T7C7/vs
 2hv9xfXERi+985LSZvHeWSb+IwI9s7bxUQLcuTdaDhiqbvdA1KbNaIn7GV0lD+hYwlJO
 KYC4WnfG1VjzUPDlvu8MOI86XEC3egDC8MoaN7zN1eo71bdH7JhHlf3W9XvdkNCKS7ml
 9HugZNbJkGAIS/03CfgS6bypdHH1tPG3KJkv62LErTnXgjW7zUI1SC2OeO5TXED5s0yq
 NZTQ==
X-Gm-Message-State: AOAM533pdvxJojDuSdFMfLTM0PJtGh+Y/2Zq2as8omVuMbFgA/OUEDVI
 2tf9845EJpQVmaM7XvFrPnOtTA==
X-Google-Smtp-Source: ABdhPJyF4RuufOYUUPIfCz/Wk2FC3WxYXmSstOWulS9PiJ/VeoLBGIGhCGokxOI6E13WRoA7PQ+u1Q==
X-Received: by 2002:adf:fe0e:: with SMTP id n14mr12680874wrr.236.1631889573748; 
 Fri, 17 Sep 2021 07:39:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r27sm6948211wrr.70.2021.09.17.07.39.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:39:33 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:39:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSoo3Vrl9BrEEhV@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-5-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 04/26] dma-buf: use new iterator in
 dma_resv_get_fences v2
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 17, 2021 at 02:34:51PM +0200, Christian K=F6nig wrote:
> This makes the function much simpler since the complex
> retry logic is now handled elsewhere.
> =

> v2: use sizeof(void*) instead
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 112 +++++++++++++------------------------
>  1 file changed, 40 insertions(+), 72 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 406150dea5e4..9b90bd9ac018 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -487,99 +487,67 @@ EXPORT_SYMBOL(dma_resv_copy_fences);
>   * dma_resv_get_fences - Get an object's shared and exclusive
>   * fences without update side lock held
>   * @obj: the reservation object
> - * @pfence_excl: the returned exclusive fence (or NULL)
> - * @pshared_count: the number of shared fences returned
> - * @pshared: the array of shared fence ptrs returned (array is krealloc'=
d to
> + * @fence_excl: the returned exclusive fence (or NULL)
> + * @shared_count: the number of shared fences returned
> + * @shared: the array of shared fence ptrs returned (array is krealloc'd=
 to
>   * the required size, and must be freed by caller)
>   *
>   * Retrieve all fences from the reservation object. If the pointer for t=
he
>   * exclusive fence is not specified the fence is put into the array of t=
he
>   * shared fences as well. Returns either zero or -ENOMEM.
>   */
> -int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **pfence_=
excl,
> -			unsigned int *pshared_count,
> -			struct dma_fence ***pshared)
> +int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **fence_e=
xcl,
> +			unsigned int *shared_count, struct dma_fence ***shared)
>  {
> -	struct dma_fence **shared =3D NULL;
> -	struct dma_fence *fence_excl;
> -	unsigned int shared_count;
> -	int ret =3D 1;
> -
> -	do {
> -		struct dma_resv_list *fobj;
> -		unsigned int i, seq;
> -		size_t sz =3D 0;
> -
> -		shared_count =3D i =3D 0;
> -
> -		rcu_read_lock();
> -		seq =3D read_seqcount_begin(&obj->seq);
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
>  =

> -		fence_excl =3D dma_resv_excl_fence(obj);
> -		if (fence_excl && !dma_fence_get_rcu(fence_excl))
> -			goto unlock;
> +	*shared_count =3D 0;
> +	*shared =3D NULL;
>  =

> -		fobj =3D dma_resv_shared_list(obj);
> -		if (fobj)
> -			sz +=3D sizeof(*shared) * fobj->shared_max;
> +	if (fence_excl)
> +		*fence_excl =3D NULL;
>  =

> -		if (!pfence_excl && fence_excl)
> -			sz +=3D sizeof(*shared);
> +	rcu_read_lock();
> +	dma_resv_iter_begin(&cursor, obj, true);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
>  =

> -		if (sz) {
> -			struct dma_fence **nshared;
> +		if (cursor.is_first) {

Yeah with the second one here I definitely think we need a
dma_resv_iter_is_restart() helper. I'm not sure whether that should have
is_first or restart_only semantics, but I guess gcc wont see through the
maze anyway, and hence initializing everything to NULL/0 is required.

Also is_first is a bit confusing naming imo. You mean "is this the first
fence" but readers could equally read this as "is this the first time
we're in the loop", which is rather confusing. Hence why I think an
iter_is_restart() or maybe iter_restarted() naming is a notch clearer.


> +			unsigned int count;
>  =

> -			nshared =3D krealloc(shared, sz,
> -					   GFP_NOWAIT | __GFP_NOWARN);
> -			if (!nshared) {
> -				rcu_read_unlock();
> +			while (*shared_count)
> +				dma_fence_put((*shared)[--(*shared_count)]);
>  =

> -				dma_fence_put(fence_excl);
> -				fence_excl =3D NULL;
> +			if (fence_excl)
> +				dma_fence_put(*fence_excl);
>  =

> -				nshared =3D krealloc(shared, sz, GFP_KERNEL);
> -				if (nshared) {
> -					shared =3D nshared;
> -					continue;
> -				}
> +			count =3D cursor.fences ? cursor.fences->shared_count : 0;
> +			count +=3D fence_excl ? 0 : 1;
> +			rcu_read_unlock();
>  =

> -				ret =3D -ENOMEM;
> -				break;
> -			}
> -			shared =3D nshared;
> -			shared_count =3D fobj ? fobj->shared_count : 0;
> -			for (i =3D 0; i < shared_count; ++i) {
> -				shared[i] =3D rcu_dereference(fobj->shared[i]);
> -				if (!dma_fence_get_rcu(shared[i]))
> -					break;
> +			/* Eventually re-allocate the array */
> +			*shared =3D krealloc_array(*shared, count,
> +						 sizeof(void *),
> +						 GFP_KERNEL);
> +			if (count && !*shared) {
> +				dma_resv_iter_end(&cursor);
> +				return -ENOMEM;
>  			}
> +			rcu_read_lock();
>  		}
>  =

> -		if (i !=3D shared_count || read_seqcount_retry(&obj->seq, seq)) {
> -			while (i--)
> -				dma_fence_put(shared[i]);
> -			dma_fence_put(fence_excl);
> -			goto unlock;
> -		}
> -
> -		ret =3D 0;
> -unlock:
> -		rcu_read_unlock();
> -	} while (ret);
> -
> -	if (pfence_excl)
> -		*pfence_excl =3D fence_excl;
> -	else if (fence_excl)
> -		shared[shared_count++] =3D fence_excl;
> +		if (dma_resv_iter_is_exclusive(&cursor) && fence_excl)
> +			*fence_excl =3D fence;
> +		else
> +			(*shared)[(*shared_count)++] =3D fence;
>  =

> -	if (!shared_count) {
> -		kfree(shared);
> -		shared =3D NULL;
> +		/* Don't drop the reference */
> +		fence =3D NULL;
>  	}
> +	dma_resv_iter_end(&cursor);
> +	rcu_read_unlock();
>  =

> -	*pshared_count =3D shared_count;
> -	*pshared =3D shared;
> -	return ret;
> +	return 0;
>  }
>  EXPORT_SYMBOL_GPL(dma_resv_get_fences);

With the wrapper I'd like to have:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  =

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
