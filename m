Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3130740FAD6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:53:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD1816362E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:53:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9272D64AD6; Fri, 17 Sep 2021 14:53:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 596466341D;
	Fri, 17 Sep 2021 14:53:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6A1A56323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:53:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67B576341D; Fri, 17 Sep 2021 14:53:37 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by lists.linaro.org (Postfix) with ESMTPS id 5F0E66323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:53:35 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id v5so30625398edc.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=i7wK8PAy0pTln1Ij7WUju223Tboi1RO9p+q6y08OLdQ=;
 b=UUlDPJH5THY/fyLkI2T7gaCqZRXS3ctAzfWpLsWlez/mGxf+1bKjUyVjIelTu+4raQ
 ie843+Jb4jSnRKKXHBzpaTEKWlrvs5yqOUZk+4FksFw9KMVm2OKu5zCtfIRe2zZ0u7tr
 dxk43ymJdoEHjaFGj9tOPTHm6xUKu+/uGoAQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=i7wK8PAy0pTln1Ij7WUju223Tboi1RO9p+q6y08OLdQ=;
 b=8Chj+duk/dFhwsW2AB9w23ZAH+H0EKvEidMMP8fletrGUdpLnK11pPnW+TAE3MxFFU
 Y9B60ERcFLqYfCoS3ENFxNQRsM4SXzohg2aU14FglppULFxat4k20Pu+MyrLfkyco5Fd
 6C9XAFskgfXVWDeYYUn9nYCPM6lFCDLVfQj3Y2VaZvbaK+tfpivNxweigzYKiB449BFC
 wWAzCZwG0AkaKQljWdnfz2wSTOzbN/44VzZSe4dusREfXC3xy/HcYAIWxUDoxTYmOKyY
 OTf013jBF3zLX3BnqbGQBqN+XfMUjPcEYo5hnDTHtI610ZtU50yrxzpXqFuYt4e++zXq
 FnfA==
X-Gm-Message-State: AOAM533XHH80fbr+Ru7WjkvvoOgCS/kuxsrnDrfN2nMTiEmDdDiP3uMn
 fNAs+rQizY8q8FwfJLiP/EODjkk40H4klw==
X-Google-Smtp-Source: ABdhPJz8wdHWvCd01v4kCjRcWM6KPrx/VnjgO/KDJQJBvz9h1g3363BbbrSpXMNQj/pYRAh1e1Vezw==
X-Received: by 2002:a17:906:3fd7:: with SMTP id
 k23mr12397223ejj.176.1631890414444; 
 Fri, 17 Sep 2021 07:53:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id ml12sm2429067ejb.29.2021.09.17.07.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:53:34 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:53:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSr7AN3vv6kpreo@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-21-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-21-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 20/26] drm: use new iterator in
 drm_gem_fence_array_add_implicit v2
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

On Fri, Sep 17, 2021 at 02:35:07PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit.
> =

> v2: add missing rcu_read_lock()/unlock()
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

This will be gone as soon as I can land the last conversion patches. Plus
it's always called with dma_resv_lock held.

I wouldn't bother tbh.
-Daniel

> ---
>  drivers/gpu/drm/drm_gem.c | 34 ++++++++++++----------------------
>  1 file changed, 12 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 09c820045859..c2c41b668f40 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1340,31 +1340,21 @@ int drm_gem_fence_array_add_implicit(struct xarra=
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
> -
> -	ret =3D dma_resv_get_fences(obj->resv, NULL,
> -						&fence_count, &fences);
> -	if (ret || !fence_count)
> -		return ret;
> -
> -	for (i =3D 0; i < fence_count; i++) {
> -		ret =3D drm_gem_fence_array_add(fence_array, fences[i]);
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
> +	int ret =3D 0;
> +
> +	rcu_read_lock();
> +	dma_resv_iter_begin(&cursor, obj->resv, write);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		rcu_read_unlock();
> +		ret =3D drm_gem_fence_array_add(fence_array, fence);
> +		rcu_read_lock();
>  		if (ret)
>  			break;
>  	}
> -
> -	for (; i < fence_count; i++)
> -		dma_fence_put(fences[i]);
> -	kfree(fences);
> +	dma_resv_iter_end(&cursor);
> +	rcu_read_unlock();
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
