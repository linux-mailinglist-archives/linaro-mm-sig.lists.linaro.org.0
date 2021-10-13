Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F8042C2DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:21:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EFC461655
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:21:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A90BE61725; Wed, 13 Oct 2021 14:21:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 425926141E;
	Wed, 13 Oct 2021 14:21:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AE7C4607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:21:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9350D6141E; Wed, 13 Oct 2021 14:21:41 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 830FB607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:21:39 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id e3so8851512wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KGV5+XgnGGbgyKsBWGvZeJz+/eWLXpcVDfX0Eq6feqQ=;
 b=CDVxwOlatCqAQJ8IC7a7zwRg9FBupYDWMsfWNq6dSGIGWx8SOFh/5Oatw+InCNkBUz
 c81RlmRhS9qtZoUZcmEsSMPAdlgsuta7BhGZ7UsryDpPe5MAUMCPAKQmoXkCXin7aSEQ
 csk1THJ9vzr7MQlqGmrxP6ZpOIYWcJmMrX1o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KGV5+XgnGGbgyKsBWGvZeJz+/eWLXpcVDfX0Eq6feqQ=;
 b=qWSOvI8AmoMujjCYL4+Z0zLkdCBVv/+M5WvoCyuYj+MlztfEhXgAn/Qpmrw29LUnWk
 KuCjI/DX024f+TEbcOpfPVSo0kWip+GuZ85wEgX399sBC6j5Bekavd0MWV0v33aq+bmg
 glYIw9CXj7O+KI8fhproMLGcqJg6ZD3Nd14TrpKJx8mH94BJuxV6VS3wkXvh8ugTpWBL
 jwPlQt/Gl/Abb16C+BgYy6LGXZuE8i39Z5bpmjHNsTFrUTUxvLrT4usrwEVl6gIT9FwO
 aDw01SmpkGoY4L9Sy23LDDs1u3oWShavTjW1DLyl6BE11cljn9UJUATp9VIa2K0jvXOK
 lukQ==
X-Gm-Message-State: AOAM530gzntw6jiOa7pGFUHcAxSrwaWiiryfGOapEulqSDNwEYckrd/n
 G4b/FkfQ6RkrYwLmoACElGfrDXLrQSx3Mw==
X-Google-Smtp-Source: ABdhPJxMaiINoMOB6u6wWQi7pvYuDM8TL3L0oupZrIcFiKmpMteTsfoTnacdbIv/SDv8AHoif0NupA==
X-Received: by 2002:a1c:21d7:: with SMTP id
 h206mr13058751wmh.163.1634134898166; 
 Wed, 13 Oct 2021 07:21:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r3sm7119388wrw.55.2021.10.13.07.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:21:37 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:21:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbrb7xQfTWU15U1@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-24-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-24-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 23/28] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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

On Tue, Oct 05, 2021 at 01:37:37PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit.
> =

> v2: add missing rcu_read_lock()/unlock()
> v3: switch to locked version
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Please make sure you also apply this to the new copy of this code in
drm/sched. This one here is up for deletion, once I get all the driver
conversions I have landed ...
-Daniel

> ---
>  drivers/gpu/drm/drm_gem.c | 26 +++++---------------------
>  1 file changed, 5 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 09c820045859..4dcdec6487bb 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1340,31 +1340,15 @@ int drm_gem_fence_array_add_implicit(struct xarra=
y *fence_array,
>  				     struct drm_gem_object *obj,
>  				     bool write)
>  {
> -	int ret;
> -	struct dma_fence **fences;
> -	unsigned int i, fence_count;
> -
> -	if (!write) {
> -		struct dma_fence *fence =3D
> -			dma_resv_get_excl_unlocked(obj->resv);
> -
> -		return drm_gem_fence_array_add(fence_array, fence);
> -	}
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
> +	int ret =3D 0;
>  =

> -	ret =3D dma_resv_get_fences(obj->resv, NULL,
> -						&fence_count, &fences);
> -	if (ret || !fence_count)
> -		return ret;
> -
> -	for (i =3D 0; i < fence_count; i++) {
> -		ret =3D drm_gem_fence_array_add(fence_array, fences[i]);
> +	dma_resv_for_each_fence(&cursor, obj->resv, write, fence) {
> +		ret =3D drm_gem_fence_array_add(fence_array, fence);
>  		if (ret)
>  			break;
>  	}
> -
> -	for (; i < fence_count; i++)
> -		dma_fence_put(fences[i]);
> -	kfree(fences);
>  	return ret;
>  }
>  EXPORT_SYMBOL(drm_gem_fence_array_add_implicit);
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
