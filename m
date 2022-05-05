Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B93351C20B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 16:12:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79EF54808E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 14:12:48 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 3082347FAF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 May 2022 14:12:44 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id b24so5352218edu.10
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 May 2022 07:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=kVsswnf/g59OO+feN+eGWTWREjJsADfr8vABwXR+jN4=;
        b=ZZRqDlkh+V4KBi+3tRnCE0GMMIm1yJpg+6UqpoQkS3iFsXMmV9oVHtaBRHe7BIycp7
         PShUzCunCfi4WVfEzwzm1DSQDXkk2zHmRar6Q+0QzzZLIS4tnL78zRT/5tWaNoU4CPAh
         ecD4HXZGVhhCEYhe2g8YhFPmNhhXv3BO7+7qY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=kVsswnf/g59OO+feN+eGWTWREjJsADfr8vABwXR+jN4=;
        b=BsAtrPJc1IOdMPqHD64eUFt4KUaA/0WuSxU+R3Qr87fYHfxpZFmeKINSNXx2G561Gp
         Sm+Hk1lvpNmdfeheO8YJB/sydLgU0gU2ugCdyb2FVjHoFxb9eSgHcCTs9SAyR9LFuNzp
         oq+yJGlTwyf3NyHdDv0g3hNzg08EcSG5fftEkz1ssMdWv+idjTjGFNAnGKAFYl34rsV6
         WcYPjow3e8SVeegw0APMiv3WT6E5fwdP1mjo0aw/hS+wLF5eNKeI+af8xkLFWIXgkQFi
         IOLizgj4M4tcgUv1UhS5+IFmrc7ZRZTohXw+JOfY0KmnpL/v+sJdPG5xj1eX8fY/QsQV
         kmTg==
X-Gm-Message-State: AOAM532eGyIgbOEJEGUU+13ogGRyW/n4YWa5bkGkC43zfLMo9MrnxWiX
	DzMmDprXeNMf8xgRuMAJtrlPVw==
X-Google-Smtp-Source: ABdhPJxVh60ePw25wH48SbQ34nxQxHULwVw3a2tw5BFeqHYSaXgGwxHkGLPXE6s3ptQolxtfQhAi2A==
X-Received: by 2002:a05:6402:3552:b0:427:e36a:e839 with SMTP id f18-20020a056402355200b00427e36ae839mr15398404edd.351.1651759963197;
        Thu, 05 May 2022 07:12:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id h25-20020a1709070b1900b006f3ef214e5esm775164ejl.196.2022.05.05.07.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 07:12:42 -0700 (PDT)
Date: Thu, 5 May 2022 16:12:40 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YnPbWNumTafUUEk9@phenom.ffwll.local>
References: <20220504122256.1654-1-christian.koenig@amd.com>
 <20220504122256.1654-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504122256.1654-5-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: ZRUTCAPQRL4AJJTYNFGBG7G34UWXT6HS
X-Message-ID-Hash: ZRUTCAPQRL4AJJTYNFGBG7G34UWXT6HS
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/5] drm: use dma_fence_unwrap_merge() in drm_syncobj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZRUTCAPQRL4AJJTYNFGBG7G34UWXT6HS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 04, 2022 at 02:22:56PM +0200, Christian K=F6nig wrote:
> The unwrap merge function is now intended for this use case.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Yeah this starts to make sense now as refactor.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/drm_syncobj.c | 57 +++++------------------------------
>  1 file changed, 7 insertions(+), 50 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
> index 7e48dcd1bee4..bbad9e4696e7 100644
> --- a/drivers/gpu/drm/drm_syncobj.c
> +++ b/drivers/gpu/drm/drm_syncobj.c
> @@ -184,6 +184,7 @@
>   */
> =20
>  #include <linux/anon_inodes.h>
> +#include <linux/dma-fence-unwrap.h>
>  #include <linux/file.h>
>  #include <linux/fs.h>
>  #include <linux/sched/signal.h>
> @@ -853,57 +854,12 @@ drm_syncobj_fd_to_handle_ioctl(struct drm_device *d=
ev, void *data,
>  					&args->handle);
>  }
> =20
> -
> -/*
> - * Try to flatten a dma_fence_chain into a dma_fence_array so that it ca=
n be
> - * added as timeline fence to a chain again.
> - */
> -static int drm_syncobj_flatten_chain(struct dma_fence **f)
> -{
> -	struct dma_fence_chain *chain =3D to_dma_fence_chain(*f);
> -	struct dma_fence *tmp, **fences;
> -	struct dma_fence_array *array;
> -	unsigned int count;
> -
> -	if (!chain)
> -		return 0;
> -
> -	count =3D 0;
> -	dma_fence_chain_for_each(tmp, &chain->base)
> -		++count;
> -
> -	fences =3D kmalloc_array(count, sizeof(*fences), GFP_KERNEL);
> -	if (!fences)
> -		return -ENOMEM;
> -
> -	count =3D 0;
> -	dma_fence_chain_for_each(tmp, &chain->base)
> -		fences[count++] =3D dma_fence_get(tmp);
> -
> -	array =3D dma_fence_array_create(count, fences,
> -				       dma_fence_context_alloc(1),
> -				       1, false);
> -	if (!array)
> -		goto free_fences;
> -
> -	dma_fence_put(*f);
> -	*f =3D &array->base;
> -	return 0;
> -
> -free_fences:
> -	while (count--)
> -		dma_fence_put(fences[count]);
> -
> -	kfree(fences);
> -	return -ENOMEM;
> -}
> -
>  static int drm_syncobj_transfer_to_timeline(struct drm_file *file_privat=
e,
>  					    struct drm_syncobj_transfer *args)
>  {
>  	struct drm_syncobj *timeline_syncobj =3D NULL;
> +	struct dma_fence *fence, *tmp;
>  	struct dma_fence_chain *chain;
> -	struct dma_fence *fence;
>  	int ret;
> =20
>  	timeline_syncobj =3D drm_syncobj_find(file_private, args->dst_handle);
> @@ -912,13 +868,14 @@ static int drm_syncobj_transfer_to_timeline(struct =
drm_file *file_private,
>  	}
>  	ret =3D drm_syncobj_find_fence(file_private, args->src_handle,
>  				     args->src_point, args->flags,
> -				     &fence);
> +				     &tmp);
>  	if (ret)
>  		goto err_put_timeline;
> =20
> -	ret =3D drm_syncobj_flatten_chain(&fence);
> -	if (ret)
> -		goto err_free_fence;
> +	fence =3D dma_fence_unwrap_merge(tmp);
> +	dma_fence_put(tmp);
> +	if (!fence)
> +		goto err_put_timeline;
> =20
>  	chain =3D dma_fence_chain_alloc();
>  	if (!chain) {
> --=20
> 2.25.1
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
