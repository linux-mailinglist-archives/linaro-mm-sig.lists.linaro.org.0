Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F07A242C216
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:06:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC15D619D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:06:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C4BF661751; Wed, 13 Oct 2021 14:06:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDC6E6141E;
	Wed, 13 Oct 2021 14:06:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EEF7B607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:06:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EC7696141E; Wed, 13 Oct 2021 14:06:15 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id E248B607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:06:13 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id v17so8773284wrv.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cIG68W/tQJNgWN+jsVPFh0cg8v247trbObwIJoHes/8=;
 b=HEbyI7lPjO/SeLtFv2N47Myw4+qpe2RXDpO6C1fJpiGMP64+S8rRjTdQr/nN9d9NXo
 xiNpscMX/s53q1YD3kWt5GT/kePPKjZRRrSh5fJYmpjvk/kGhEF0ekf5a2uG+AhQNEhy
 vr6CeyNj14gersIusRRdOLU0D9Vw18z/uenPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cIG68W/tQJNgWN+jsVPFh0cg8v247trbObwIJoHes/8=;
 b=CRWbFDiJ3NMGg1X2H14L4VqR9qY3l/zlmDoN5v7x6j6vNv9r3oOtUcCL79V67OUYHj
 iEYr68eokRLG7eIteTJ2JyrUXQGY8eYGQCGe0vXem4F/XFKBGIAw6EIrGsxNjipAJPFE
 Fwvn8saJMMUmDmZePKSkJXGd+OQC231/6g5bkS6M5m6JX8abxVn07Snzww3RC6UxLWci
 tOG03LhD7V/vStG2YvSEPuq7n1stXVG0nqmUTQRNuUCZ/CQGsqI8pUnpdLZWzBT61x4L
 7h/nhPyKd4Yub91jkSMdQyv9AVfXAhXD+XeKwlrRbR1oLRE2tk1nOKnxcvZYGOoWpz1B
 JLzg==
X-Gm-Message-State: AOAM532nzKrIo6Js4h5QUKT25gu+V567dOTvzY1Jg4YOXmThDX3G5TFy
 5Yc0g0UQBGhi6AK72RqHI/lPvA==
X-Google-Smtp-Source: ABdhPJwjgQ0DiXTrs41jVl5BYH6DQcXR5MUd9Sxq+V+NNJmQjSNclYZi7GSa7EEkZ0U+lattZFKFBQ==
X-Received: by 2002:adf:a183:: with SMTP id u3mr40196310wru.330.1634133972353; 
 Wed, 13 Oct 2021 07:06:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e16sm11711795wrw.17.2021.10.13.07.06.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:06:11 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:06:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbn0hZQgYAohsrz@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-12-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-12-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 11/28] drm/amdgpu: use the new iterator
 in amdgpu_sync_resv
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
Cc: tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 05, 2021 at 01:37:25PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Yeah these iterators rock :-)
-Daniel

> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c | 44 ++++++++----------------
>  1 file changed, 14 insertions(+), 30 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_sync.c
> index 862eb3c1c4c5..f7d8487799b2 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c
> @@ -252,41 +252,25 @@ int amdgpu_sync_resv(struct amdgpu_device *adev, st=
ruct amdgpu_sync *sync,
>  		     struct dma_resv *resv, enum amdgpu_sync_mode mode,
>  		     void *owner)
>  {
> -	struct dma_resv_list *flist;
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *f;
> -	unsigned i;
> -	int r =3D 0;
> +	int r;
>  =

>  	if (resv =3D=3D NULL)
>  		return -EINVAL;
>  =

> -	/* always sync to the exclusive fence */
> -	f =3D dma_resv_excl_fence(resv);
> -	dma_fence_chain_for_each(f, f) {
> -		struct dma_fence_chain *chain =3D to_dma_fence_chain(f);
> -
> -		if (amdgpu_sync_test_fence(adev, mode, owner, chain ?
> -					   chain->fence : f)) {
> -			r =3D amdgpu_sync_fence(sync, f);
> -			dma_fence_put(f);
> -			if (r)
> -				return r;
> -			break;
> -		}
> -	}
> -
> -	flist =3D dma_resv_shared_list(resv);
> -	if (!flist)
> -		return 0;
> -
> -	for (i =3D 0; i < flist->shared_count; ++i) {
> -		f =3D rcu_dereference_protected(flist->shared[i],
> -					      dma_resv_held(resv));
> -
> -		if (amdgpu_sync_test_fence(adev, mode, owner, f)) {
> -			r =3D amdgpu_sync_fence(sync, f);
> -			if (r)
> -				return r;
> +	dma_resv_for_each_fence(&cursor, resv, true, f) {
> +		dma_fence_chain_for_each(f, f) {
> +			struct dma_fence_chain *chain =3D to_dma_fence_chain(f);
> +
> +			if (amdgpu_sync_test_fence(adev, mode, owner, chain ?
> +						   chain->fence : f)) {
> +				r =3D amdgpu_sync_fence(sync, f);
> +				dma_fence_put(f);
> +				if (r)
> +					return r;
> +				break;
> +			}
>  		}
>  	}
>  	return 0;
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
