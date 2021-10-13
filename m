Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C68242C321
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:27:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0D0A6197F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:27:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E69FA617DA; Wed, 13 Oct 2021 14:27:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C6B461451;
	Wed, 13 Oct 2021 14:27:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 85426607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:27:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8147761451; Wed, 13 Oct 2021 14:27:51 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 7ABEF607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:27:49 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id e3so8913147wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=PqWjk4ivgfgdmUTbUdhe8qKxTDFjMlzX5VtUne0kt9E=;
 b=MJO5DikINvlvxLDHZftSGsOfXYEtFQp5DFnLpJnWfwcehW3HSp/831g0ISMfNXuD7y
 EMdnTZHalFFzCw7XSg0hyLGN47MaVS0sM/Ke4a3SZ0ujhM5I/cpTvz90dOpmNp9PG0x6
 vz7VP07sh1yuIocTbqoAIxY52bOObOxD+1Yuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=PqWjk4ivgfgdmUTbUdhe8qKxTDFjMlzX5VtUne0kt9E=;
 b=RwMIqdtofmL4aLZ8GaAsOpnJUFT4PGTWEls2ovb3aDsVH0X5fhKb4X3HpGt5H8R4no
 Y0inH6VBGRBTEPn4XFAWqSEz1J4RPwZJiUSpizIbHj+fUfjt50/bFCjdmomHkpBYiioZ
 +ZU2OXmOajCnQGR072dygAMRhGpWQrEiBeQSGf0ydQOmf39l+XHfTVA3htlL3+h1oY2U
 DSw/ItdT3jWPLMA0BCa2lHdKksy/C2iwfLomwjjK1HuUf+/9c+YUyvjfZwSNLB2UDbse
 CqFrv+2zhmQwnU5+BNwXMYxUKzzMjUZD7wQg84aOzajxt0pQTyZ3BIyxMTTK/yBzDw2S
 C30Q==
X-Gm-Message-State: AOAM5321FijDqOTdX+gqLnvm6R8Q43Y1vcWc2+VoI1blOAaykHmhWA+1
 og9XrDBEiemdbgiErJYIjycvZw==
X-Google-Smtp-Source: ABdhPJx8QN6s6cVcK+URTSep+/bLRlSC2lp2+Mkp8t5DSQIxj3ntebiDoxR19oO22ez7dxmZpk0p0w==
X-Received: by 2002:a05:6000:1541:: with SMTP id
 1mr38961887wry.273.1634135268480; 
 Wed, 13 Oct 2021 07:27:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u5sm5291752wmm.39.2021.10.13.07.27.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:27:48 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:27:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbs4iA1oWq9xN5n@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-26-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-26-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 25/28] drm/nouveau: use the new iterator
 in nouveau_fence_sync
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

On Tue, Oct 05, 2021 at 01:37:39PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

A bit a trick conversion since the previous code was clever with the ret
handling in the loop, but looks correct.

Please mention in the commit message that this code now also waits for all
shared fences in all cases. Previously if we found an exclusive fence, we
bailed out. That needs to be recorded in the commit message, together with
an explainer that defacto too many other drivers have broken this rule
already, and so you have to always iterate all fences.

With that added:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


> ---
>  drivers/gpu/drm/nouveau/nouveau_fence.c | 48 +++++++------------------
>  1 file changed, 12 insertions(+), 36 deletions(-)
> =

> diff --git a/drivers/gpu/drm/nouveau/nouveau_fence.c b/drivers/gpu/drm/no=
uveau/nouveau_fence.c
> index 05d0b3eb3690..26f9299df881 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_fence.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_fence.c
> @@ -339,14 +339,15 @@ nouveau_fence_wait(struct nouveau_fence *fence, boo=
l lazy, bool intr)
>  }
>  =

>  int
> -nouveau_fence_sync(struct nouveau_bo *nvbo, struct nouveau_channel *chan=
, bool exclusive, bool intr)
> +nouveau_fence_sync(struct nouveau_bo *nvbo, struct nouveau_channel *chan,
> +		   bool exclusive, bool intr)
>  {
>  	struct nouveau_fence_chan *fctx =3D chan->fence;
> -	struct dma_fence *fence;
>  	struct dma_resv *resv =3D nvbo->bo.base.resv;
> -	struct dma_resv_list *fobj;
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
>  	struct nouveau_fence *f;
> -	int ret =3D 0, i;
> +	int ret;
>  =

>  	if (!exclusive) {
>  		ret =3D dma_resv_reserve_shared(resv, 1);
> @@ -355,10 +356,7 @@ nouveau_fence_sync(struct nouveau_bo *nvbo, struct n=
ouveau_channel *chan, bool e
>  			return ret;
>  	}
>  =

> -	fobj =3D dma_resv_shared_list(resv);
> -	fence =3D dma_resv_excl_fence(resv);
> -
> -	if (fence) {
> +	dma_resv_for_each_fence(&cursor, resv, exclusive, fence) {
>  		struct nouveau_channel *prev =3D NULL;
>  		bool must_wait =3D true;
>  =

> @@ -366,41 +364,19 @@ nouveau_fence_sync(struct nouveau_bo *nvbo, struct =
nouveau_channel *chan, bool e
>  		if (f) {
>  			rcu_read_lock();
>  			prev =3D rcu_dereference(f->channel);
> -			if (prev && (prev =3D=3D chan || fctx->sync(f, prev, chan) =3D=3D 0))
> +			if (prev && (prev =3D=3D chan ||
> +				     fctx->sync(f, prev, chan) =3D=3D 0))
>  				must_wait =3D false;
>  			rcu_read_unlock();
>  		}
>  =

> -		if (must_wait)
> +		if (must_wait) {
>  			ret =3D dma_fence_wait(fence, intr);
> -
> -		return ret;
> -	}
> -
> -	if (!exclusive || !fobj)
> -		return ret;
> -
> -	for (i =3D 0; i < fobj->shared_count && !ret; ++i) {
> -		struct nouveau_channel *prev =3D NULL;
> -		bool must_wait =3D true;
> -
> -		fence =3D rcu_dereference_protected(fobj->shared[i],
> -						dma_resv_held(resv));
> -
> -		f =3D nouveau_local_fence(fence, chan->drm);
> -		if (f) {
> -			rcu_read_lock();
> -			prev =3D rcu_dereference(f->channel);
> -			if (prev && (prev =3D=3D chan || fctx->sync(f, prev, chan) =3D=3D 0))
> -				must_wait =3D false;
> -			rcu_read_unlock();
> +			if (ret)
> +				return ret;
>  		}
> -
> -		if (must_wait)
> -			ret =3D dma_fence_wait(fence, intr);
>  	}
> -
> -	return ret;
> +	return 0;
>  }
>  =

>  void
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
