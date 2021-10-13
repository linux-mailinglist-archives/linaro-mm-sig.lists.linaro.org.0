Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 876E642C2A9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:15:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B23961977
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:15:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 37C7C61840; Wed, 13 Oct 2021 14:15:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 640906141E;
	Wed, 13 Oct 2021 14:15:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D3056607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:15:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D0A206141E; Wed, 13 Oct 2021 14:15:25 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id C620C607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:15:23 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id e3so8786833wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=WfZtUnTgQXcuUIGw85OC0CUsD42sr1oPRAFFNuvZ6vU=;
 b=ExMubW21+4a97m5mSEFLHC9XE9MQ2rqhKXnFfUtb02KNCJ6frbMJapifImudEV85yE
 ZoSRmocQMD0h+MlCb+wna6t9fVtMP10RYA858x3kZZoI//0nLM9SWPKgo5N+WhoyqGqH
 HoAyDoNdNZagrHVtOf8MKVvQLwookmfLTFgtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=WfZtUnTgQXcuUIGw85OC0CUsD42sr1oPRAFFNuvZ6vU=;
 b=VinpuM0h3/AET4/45umEYby/SET9G+vBV9Z0EHHfg5m9NQJnM90QipGxahUgiHsrFi
 8xxg7i+iPZr2CoL492v7gVXs/5HIk04RJ3VM4rokSmSU5dAvLJ/5jKwnM7XOgSdIzeYY
 02hSB4EBmw2mtcT89THT/tirFHa/fNt5Xp2h4b79lxsqw3wtA9MivAufz5+mmh7ENNFg
 J2ZOfS0yLWvmAxIgbAtDWZGI+I3jZdXxSnKXz+OO5kinRWUz25j+U67Xfiu+TDaPNx8c
 gb3zYZaeY+DQYAAUDK1SE1mJh7hO2DoC1J1x8ajxXuqu6zWNOOC3zmnmUV4K1OfuIxtl
 GxnQ==
X-Gm-Message-State: AOAM533vhFe9PuCMGm9JlouKKTWyQOfU+L8HXizocZ39MACehtCQwBNn
 6N/bvtOnbkAVShejU0kzL3wE8w==
X-Google-Smtp-Source: ABdhPJxEdOAPir5NiPEsWYJ0b0z5FbQiLYs1r5nFHyg+GaXVx1ytCUeEH/1VyYHA7NvIhI+FT3AUsg==
X-Received: by 2002:adf:a78a:: with SMTP id j10mr40605280wrc.231.1634134519349; 
 Wed, 13 Oct 2021 07:15:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b190sm5491879wmd.25.2021.10.13.07.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:15:18 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:15:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbp9ewEovFMgsR+@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-16-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-16-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 15/28] drm/radeon: use new iterator in
 radeon_sync_resv
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

On Tue, Oct 05, 2021 at 01:37:29PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/radeon/radeon_sync.c | 22 +++-------------------
>  1 file changed, 3 insertions(+), 19 deletions(-)
> =

> diff --git a/drivers/gpu/drm/radeon/radeon_sync.c b/drivers/gpu/drm/radeo=
n/radeon_sync.c
> index 9257b60144c4..b991ba1bcd51 100644
> --- a/drivers/gpu/drm/radeon/radeon_sync.c
> +++ b/drivers/gpu/drm/radeon/radeon_sync.c
> @@ -91,33 +91,17 @@ int radeon_sync_resv(struct radeon_device *rdev,
>  		     struct dma_resv *resv,
>  		     bool shared)
>  {
> -	struct dma_resv_list *flist;
> -	struct dma_fence *f;
> +	struct dma_resv_iter cursor;
>  	struct radeon_fence *fence;
> -	unsigned i;
> +	struct dma_fence *f;
>  	int r =3D 0;
>  =

> -	/* always sync to the exclusive fence */
> -	f =3D dma_resv_excl_fence(resv);
> -	fence =3D f ? to_radeon_fence(f) : NULL;
> -	if (fence && fence->rdev =3D=3D rdev)
> -		radeon_sync_fence(sync, fence);
> -	else if (f)
> -		r =3D dma_fence_wait(f, true);
> -
> -	flist =3D dma_resv_shared_list(resv);
> -	if (shared || !flist || r)
> -		return r;
> -
> -	for (i =3D 0; i < flist->shared_count; ++i) {
> -		f =3D rcu_dereference_protected(flist->shared[i],
> -					      dma_resv_held(resv));
> +	dma_resv_for_each_fence(&cursor, resv, shared, f) {
>  		fence =3D to_radeon_fence(f);
>  		if (fence && fence->rdev =3D=3D rdev)
>  			radeon_sync_fence(sync, fence);
>  		else
>  			r =3D dma_fence_wait(f, true);
> -
>  		if (r)
>  			break;
>  	}
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
