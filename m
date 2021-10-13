Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF6D42C32F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:29:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF82D619B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:29:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5685461456; Wed, 13 Oct 2021 14:29:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D72336141E;
	Wed, 13 Oct 2021 14:29:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1C035607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:29:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F29D6141E; Wed, 13 Oct 2021 14:29:49 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 08D52607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:29:47 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id y3so9161166wrl.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=57KdpWjM6FQj1/ZWMB9uRAMFCr8+sc1UKZVxLCrKqQA=;
 b=fuUKOCG6VKrPu+jFf/OspZpPDw9h7as1LUinC2Id+eX3+6EfH1KxoH8pGPh/zChA4b
 Nz4LNmIua30JsScEBiilD8mppPkM0Lc4IrZvN4bniJaijXGMcQNP5WkabQW2YagFugWI
 Qfln8O6zRTkNHiT6wsElGKTzoV/rv+ML9PSVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=57KdpWjM6FQj1/ZWMB9uRAMFCr8+sc1UKZVxLCrKqQA=;
 b=nrfC5KWzTGNwR4TPQsbjjkOPagnuCTM4vWUSwmQN89MoPKX1Mly4YoTPjsJ6Qf2lE8
 /ulFZ238QdndqQW6h2RUTjrFzb+NLHPffgjLw6zmLJuvGtTWqNFDmpjH8fS7QnR6P+GZ
 Yywf1cRbmBNfWSmkXOJaag4wuXrCi5BhN7PwLGGI7Qn8rWhLhQq03piQf+xYht332K+m
 9vMh1Z1tPt0d5H47AsIXQ3Jz3kp0J37DB2SrRG6Qj/yAxp2b/bJd1lUACj+qDsxqHMBn
 mRo+svXEqh5iaJmxgAHrt6AWzVTgdqFq+NHECBE7VB4tKSaTUPzfHcbXf9MVGOfKEQ2Q
 d02Q==
X-Gm-Message-State: AOAM532+3qMrr5sA16k/ssKcl7O0pCYwERlu5YBpe5t3KxD0hY29K220
 HdljD3dcfwSgO7YmemfYx7il1Q==
X-Google-Smtp-Source: ABdhPJwZvEFu8uN46XH+qqDJB9CUkoPNMzMIIZQcakbI7uBahduwwJFhFv/Vfy0iH9bKYacrjDePVg==
X-Received: by 2002:adf:b1c7:: with SMTP id r7mr40626710wra.392.1634135386079; 
 Wed, 13 Oct 2021 07:29:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p25sm5369066wma.2.2021.10.13.07.29.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:29:45 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:29:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbtV2ZVHg7n1xpm@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-27-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-27-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 26/28] drm/nouveau: use the new
 interator in nv50_wndw_prepare_fb
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

On Tue, Oct 05, 2021 at 01:37:40PM +0200, Christian K=F6nig wrote:
> Makes the handling a bit more complex, but avoids the use of
> dma_resv_get_excl_unlocked().
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/nouveau/dispnv50/wndw.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/drm/no=
uveau/dispnv50/wndw.c
> index 8d048bacd6f0..30712a681e2a 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> @@ -539,6 +539,8 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct =
drm_plane_state *state)
>  	struct nouveau_bo *nvbo;
>  	struct nv50_head_atom *asyh;
>  	struct nv50_wndw_ctxdma *ctxdma;
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
>  	int ret;
>  =

>  	NV_ATOMIC(drm, "%s prepare: %p\n", plane->name, fb);
> @@ -561,7 +563,13 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct=
 drm_plane_state *state)
>  			asyw->image.handle[0] =3D ctxdma->object.handle;
>  	}
>  =

> -	asyw->state.fence =3D dma_resv_get_excl_unlocked(nvbo->bo.base.resv);
> +	dma_resv_iter_begin(&cursor, nvbo->bo.base.resv, false);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		/* TODO: We only use the first writer here */

Same thing as with the atomic core helper. This is actually broken,
because for atomic we really do _not_ want to wait for any shared fences.
Which this will do, if there's no exclusive fence attached.

So upgrading my general concern on this and the atomic helper patch to a
reject, since I think it's broken.
-Daniel

> +		asyw->state.fence =3D dma_fence_get(fence);
> +		break;
> +	}
> +	dma_resv_iter_end(&cursor);
>  	asyw->image.offset[0] =3D nvbo->offset;
>  =

>  	if (wndw->func->prepare) {
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
