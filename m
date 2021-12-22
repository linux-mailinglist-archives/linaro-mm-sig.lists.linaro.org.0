Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 333D047D8D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:34:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BF6760E09
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:34:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A8F86101A; Wed, 22 Dec 2021 21:34:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D27B60DA3;
	Wed, 22 Dec 2021 21:34:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AAA59606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:34:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9E83C60DA3; Wed, 22 Dec 2021 21:34:42 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by lists.linaro.org (Postfix) with ESMTPS id 93E88606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:34:40 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id m21so14923263edc.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=wfOEB+bzuAfsFTR0SufiF9ccHoaUKxsmrvvFuKGhyLs=;
 b=ISO/Ks55rc/20DDwd+rlhF+J04Jrq+B/XIlPpGSXwO2R8fEnrUuGYlXJIv8TcfvtDD
 hKr3QtBTojQJgqfM9o8koThnL+Y1X3au5fDPAd96/wIKfuLG4FrOSiaGtmfibpAz3ADv
 eEWVAS+QN38BbFse2hSzuLAuD0QBbycq/6src=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wfOEB+bzuAfsFTR0SufiF9ccHoaUKxsmrvvFuKGhyLs=;
 b=F+6zAZy97RGZXpl2oZli1X5RfaWDpnvknzs/ptL2h4/tVO7AraeaYu1m8hjbM8fghs
 DB5oljm7a3g3miaojGi01K18sd6kx9Lee55ajMkrITBrD1o8U8MrxlcRp2Tlj/Aje3dO
 vGixx7X5VtNSC7XNkfoigBFTg1yoXz4eMIwk+AfNj0vpD7jP2LGH2koRfY+M6xqaoFTu
 hkCOHjf6/eWwpGUfOJ1JW8fdgGEUMHq6gzI41skgVH/L49a6BQkggtrxl8fvRGur+lJp
 c1obXmi1SNFCD2QhI7aw+8s1zdD+NLjMxiL8gZP6clBmwY832biahnCZAQrl4+iiXwd5
 HaYw==
X-Gm-Message-State: AOAM530hRx6pVoW0g9tK8QgaMMg7CuzRI8zWdd4xDF63V6PZvSpq0UUU
 3KuBN/vc8oziCA6UcFRXA0QDlThPSxypvQ==
X-Google-Smtp-Source: ABdhPJw1YV4/gu6BG9RWLSHUVwAoW2Cy0gsRK2wW2t0xKfyxMzxCmc1yh/wqrf2O6Zr9h4R9stlZ0A==
X-Received: by 2002:a17:906:b24a:: with SMTP id
 ce10mr3782971ejb.20.1640208879615; 
 Wed, 22 Dec 2021 13:34:39 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id ck14sm1296560edb.5.2021.12.22.13.34.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:34:39 -0800 (PST)
Date: Wed, 22 Dec 2021 22:34:37 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOZ7XdwGp8c7fh+@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-11-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-11-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 10/24] drm/amdgpu: remove excl as shared
 workarounds
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

On Tue, Dec 07, 2021 at 01:33:57PM +0100, Christian K=F6nig wrote:
> This was added because of the now dropped shared on excl dependency.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

I didn't do a full re-audit of whether you got them all, I think latest
with the semantic change to allow more kinds of fence types with dma-resv
we should catch them all.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c  | 5 +----
>  drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c | 6 ------
>  2 files changed, 1 insertion(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_cs.c
> index 0311d799a010..53e407ea4c89 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> @@ -1275,14 +1275,11 @@ static int amdgpu_cs_submit(struct amdgpu_cs_pars=
er *p,
>  		/*
>  		 * Work around dma_resv shortcommings by wrapping up the
>  		 * submission in a dma_fence_chain and add it as exclusive
> -		 * fence, but first add the submission as shared fence to make
> -		 * sure that shared fences never signal before the exclusive
> -		 * one.
> +		 * fence.
>  		 */
>  		dma_fence_chain_init(chain, dma_resv_excl_fence(resv),
>  				     dma_fence_get(p->fence), 1);
>  =

> -		dma_resv_add_shared_fence(resv, p->fence);
>  		rcu_assign_pointer(resv->fence_excl, &chain->base);
>  		e->chain =3D NULL;
>  	}
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_gem.c
> index a1e63ba4c54a..85d31d85c384 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> @@ -226,12 +226,6 @@ static void amdgpu_gem_object_close(struct drm_gem_o=
bject *obj,
>  	if (!amdgpu_vm_ready(vm))
>  		goto out_unlock;
>  =

> -	fence =3D dma_resv_excl_fence(bo->tbo.base.resv);
> -	if (fence) {
> -		amdgpu_bo_fence(bo, fence, true);
> -		fence =3D NULL;
> -	}
> -
>  	r =3D amdgpu_vm_clear_freed(adev, vm, &fence);
>  	if (r || !fence)
>  		goto out_unlock;
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
