Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9EE42C279
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:12:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28CB661840
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:12:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EB071619D7; Wed, 13 Oct 2021 14:12:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CEEBE6141E;
	Wed, 13 Oct 2021 14:12:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 677D0607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:12:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A3F16141E; Wed, 13 Oct 2021 14:12:16 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 53BA6607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:12:14 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id u18so8955395wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Eov6NzsPqJ03u6U/yFYdN6gMAiBoLKDNd4UpBJCGcZE=;
 b=CtLBJZfPhzgpKc7M/1wCGrEiESAs/IvWwg9YoHlZ81kt9abVn2f30KYiwdE5YearvT
 o0lWWUEdfOd0BlVyp0Hc8Y7pCE6sFdn2i83InhkGfmyUW1L88nsiRShHgNae22yr0USj
 DtC2d5TKsliJjLKgLL8lBCN3/k2khQ6FhMte4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Eov6NzsPqJ03u6U/yFYdN6gMAiBoLKDNd4UpBJCGcZE=;
 b=WZNKMdWiGyrFHtzLLei9r9ihX2cnMlZIdqd2baukV3kKKaI8BCOMak2APX9PV9r0VD
 xw96ps17fGwFeIVmh5/91jP3Z8MgQh0xsiATUBtqBMH8MPIz0jXxvlGM7A9EqNnTUqlV
 q5UPGM6tF+VC4m3BQULGHxFx6SEIWXB5pBnm5SgmzyQ3lMZHkwgYsNdMZA9bBE4Un10z
 EnQOFqdwdnA2q+tFeXLiCz/BY98ffTBk1y9mQoLjJWNRK1exsN5tE0DZb3468jPvk7x3
 1Gf/p9H6oH1jUPU5NeLLxCjyQi4tduujHD/iSEwrXzmYbZ6sB6kYin2IGoL4/XyGslHi
 TpAw==
X-Gm-Message-State: AOAM532x19lxIlMiEro4AKK8vL7ueSlM4LgMzUt0b+5gmFnGzBueDeVt
 rJ5F7/s2/4PZS2cc9jPYJY7oBw==
X-Google-Smtp-Source: ABdhPJyNN96SfRwIumBryA5fyxUQOvccr9DUg4zBuTBjaDmt4p0CZKGSFN1ZUdMbdKv1Wu07nHEXmw==
X-Received: by 2002:adf:aadc:: with SMTP id i28mr39788310wrc.320.1634134332273; 
 Wed, 13 Oct 2021 07:12:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o6sm5742231wms.3.2021.10.13.07.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:12:11 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:12:09 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbpOcTGitW7O9KK@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-14-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-14-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 13/28] drm/amdgpu: use new iterator in
 amdgpu_vm_prt_fini
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

On Tue, Oct 05, 2021 at 01:37:27PM +0200, Christian K=F6nig wrote:
> No need to actually allocate an array of fences here.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c | 26 +++++---------------------
>  1 file changed, 5 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_vm.c
> index 6b15cad78de9..e42dd79ed6f4 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
> @@ -2090,30 +2090,14 @@ static void amdgpu_vm_free_mapping(struct amdgpu_=
device *adev,
>  static void amdgpu_vm_prt_fini(struct amdgpu_device *adev, struct amdgpu=
_vm *vm)
>  {
>  	struct dma_resv *resv =3D vm->root.bo->tbo.base.resv;
> -	struct dma_fence *excl, **shared;
> -	unsigned i, shared_count;
> -	int r;
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
>  =

> -	r =3D dma_resv_get_fences(resv, &excl, &shared_count, &shared);
> -	if (r) {
> -		/* Not enough memory to grab the fence list, as last resort
> -		 * block for all the fences to complete.
> -		 */
> -		dma_resv_wait_timeout(resv, true, false,
> -						    MAX_SCHEDULE_TIMEOUT);
> -		return;
> -	}
> -
> -	/* Add a callback for each fence in the reservation object */
> -	amdgpu_vm_prt_get(adev);

I was confused for a bit why the old code wouldn't leak a refcount for
!excl case, but it's all handled.

Not sure amdgpu_vm_add_prt_cb still needs to handle the !fence case, it's
a bit a gotcha but I guess can happen?

Either way, looks correct.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> -	amdgpu_vm_add_prt_cb(adev, excl);
> -
> -	for (i =3D 0; i < shared_count; ++i) {
> +	dma_resv_for_each_fence(&cursor, resv, true, fence) {
> +		/* Add a callback for each fence in the reservation object */
>  		amdgpu_vm_prt_get(adev);
> -		amdgpu_vm_add_prt_cb(adev, shared[i]);
> +		amdgpu_vm_add_prt_cb(adev, fence);
>  	}
> -
> -	kfree(shared);
>  }
>  =

>  /**
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
