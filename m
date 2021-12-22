Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E9547D900
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:53:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B00C261060
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:53:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3B868610F9; Wed, 22 Dec 2021 21:53:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 186D960DC1;
	Wed, 22 Dec 2021 21:53:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 78E2360B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:53:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 76C5B60DC1; Wed, 22 Dec 2021 21:53:17 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id 7013F60B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:53:15 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id bm14so13789353edb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=yBDJCmeaT+tM7/3ZGzr3jqJyscYabJL4fOLvv95NZ8Y=;
 b=TeelYZqeWHWDKFtFiBJXZ1GpKy8D7JsVxszcrXd7AMSOFZpl42DDrNPK3nDh26/Oo0
 SMAzaLQYMD1NeJ/p/LUFyqlNeqeSp/0J0uXufjC7dI+QEwYV07GaUEjqoHQLHtYjPXwv
 vX6mP8otA5kQ1QmfpeaM93b5ZzGWMdzb1Bf9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=yBDJCmeaT+tM7/3ZGzr3jqJyscYabJL4fOLvv95NZ8Y=;
 b=5QxrWYTtaEju1cVqWit10dJqpQpyWzxGy9LyN3PTcrrMMDwMs5ai1xZOljeL6ngS3U
 Gnqc+rC1ec/mHu7gprrqJMiLbDfVdcGzJYRt0U9XXA4K7pyEOz6+47krRotqgodvRpi+
 kvUFjqgYCumsdWMSYH9XWiRXaZLNIw0Ur/3nqZqN6ph+/2j6tYzIs/qzrO0dvVp9hBXj
 utTTZ/MdadQzKO4e0xWVLaNQdAjklpbDPOcniF1L6Ehn+a1hsyJYP7d59yikACFngul2
 gRBstuNVncHEg2GIH65A6xwSeFJuiIM4oGMzeDoO0sE9Xe3uf+YT+V/3fkgZU3/UqC3n
 Ux4w==
X-Gm-Message-State: AOAM530t8Axx0r2ibe3bLN0r4EtoWOkTaSg2HC1ge3Si6H2WfgTb5LgF
 qOIo2CqXVymk7iIdpyz2aCfhOw==
X-Google-Smtp-Source: ABdhPJwgrUJcT/9tjLzdw/pZnJlRl0CYKBxXTvQbO1TJ9r3hWHI/E/5nmcelnHOMi+EKS/8k3+U5xg==
X-Received: by 2002:a17:907:168b:: with SMTP id
 hc11mr4155613ejc.518.1640209994552; 
 Wed, 22 Dec 2021 13:53:14 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id qw20sm1110251ejc.185.2021.12.22.13.53.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:53:14 -0800 (PST)
Date: Wed, 22 Dec 2021 22:53:12 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOeSCEZ/MYqP1Sr@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-18-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-18-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 17/24] drm/amdgpu: use
 dma_resv_get_singleton in amdgpu_pasid_free_cb
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

On Tue, Dec 07, 2021 at 01:34:04PM +0100, Christian K=F6nig wrote:
> Makes the code a bit more simpler.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c | 23 +++--------------------
>  1 file changed, 3 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_ids.c
> index be48487e2ca7..888d97143177 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c
> @@ -107,36 +107,19 @@ static void amdgpu_pasid_free_cb(struct dma_fence *=
fence,
>  void amdgpu_pasid_free_delayed(struct dma_resv *resv,
>  			       u32 pasid)
>  {
> -	struct dma_fence *fence, **fences;
>  	struct amdgpu_pasid_cb *cb;
> -	unsigned count;
> +	struct dma_fence *fence;
>  	int r;
>  =

> -	r =3D dma_resv_get_fences(resv, true, &count, &fences);
> +	r =3D dma_resv_get_singleton(resv, true, &fence);
>  	if (r)
>  		goto fallback;
>  =

> -	if (count =3D=3D 0) {
> +	if (!fence) {
>  		amdgpu_pasid_free(pasid);
>  		return;
>  	}
>  =

> -	if (count =3D=3D 1) {
> -		fence =3D fences[0];
> -		kfree(fences);
> -	} else {
> -		uint64_t context =3D dma_fence_context_alloc(1);
> -		struct dma_fence_array *array;
> -
> -		array =3D dma_fence_array_create(count, fences, context,
> -					       1, false);
> -		if (!array) {
> -			kfree(fences);
> -			goto fallback;
> -		}
> -		fence =3D &array->base;
> -	}
> -
>  	cb =3D kmalloc(sizeof(*cb), GFP_KERNEL);
>  	if (!cb) {
>  		/* Last resort when we are OOM */
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
