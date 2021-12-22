Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF5447D8B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:27:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA01C60F21
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:27:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7B51961033; Wed, 22 Dec 2021 21:27:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50F0760DA3;
	Wed, 22 Dec 2021 21:26:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 78C10606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:26:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7477A60DA3; Wed, 22 Dec 2021 21:26:57 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by lists.linaro.org (Postfix) with ESMTPS id 6D954606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:26:55 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id j6so13461127edw.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Yz9uOCBqf37QPt8riRSUwHZh5OXIzEuZG643lYUqqT0=;
 b=AsZf00kNYJbXTi+o0VPiWrjucHLQCYKuMEtPaDmV+QlUkS9Tb8LnTvlYvRund4qRY/
 7Q1HL1ta8f11APqzxBEWRfPCt7VZCMXDNmVhYiXcaz6XH51yOF6rFiD4DdrZjc8jfy50
 ZfF+QBYTKan2yCtlZviSJz2PTde73iCYmHhHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Yz9uOCBqf37QPt8riRSUwHZh5OXIzEuZG643lYUqqT0=;
 b=N4chfv9iH4smX/L0VKGPzlvPQ7QxcpvyCaMLtbNQqHdTYrKmAQALBq1v59YHTSFzYb
 X9zeFUZPnuAN2vrsgLNQ1QEQ3xSekmSU3U24BxAJ+InmwUIWwwtMzBtZZNLXn04pSB4M
 kxKRsRdbQiG4XvxfJhne9wwtzMD6m5p8SMrvMkSwh8xyPYC08PzRS6e70r9FHOYNmdu5
 /KCw6u9BIzOyDuxIx1jTjBmGHWJhflthh6ZPTUJ4yZTbj0quOjiWifECv46khV90MTJC
 BIsp6Z+4nl5wL3sNjOFzb3KO4guEn5uarrMJBQCCcAyzbVJ7rjQf3oKASo00yWFZscly
 T14A==
X-Gm-Message-State: AOAM531eqm9WDG+Xab8+/KHiZYWtKD8WaHs6tT16hv89EXHMuSzzjDpK
 rVIvsdVtygIOooRFZrWignucgg==
X-Google-Smtp-Source: ABdhPJwvq7qwcdZObxpBfJF3/nVSIH0D+E85X0+1f84I5+ccF1IFYv54iv16kHiZkbEGAehnLSlIww==
X-Received: by 2002:a05:6402:350a:: with SMTP id
 b10mr4520545edd.89.1640208414469; 
 Wed, 22 Dec 2021 13:26:54 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 16sm1051926ejd.204.2021.12.22.13.26.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:26:54 -0800 (PST)
Date: Wed, 22 Dec 2021 22:26:52 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOYHNkiN3bZDbyH@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-8-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-8-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 07/24] drm/nouveau: stop using
 dma_resv_excl_fence
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

On Tue, Dec 07, 2021 at 01:33:54PM +0100, Christian K=F6nig wrote:
> Instead use the new dma_resv_get_singleton function.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/nouveau/nouveau_bo.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouve=
au/nouveau_bo.c
> index fa73fe57f97b..74f8652d2bd3 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_bo.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
> @@ -959,7 +959,14 @@ nouveau_bo_vm_cleanup(struct ttm_buffer_object *bo,
>  {
>  	struct nouveau_drm *drm =3D nouveau_bdev(bo->bdev);
>  	struct drm_device *dev =3D drm->dev;
> -	struct dma_fence *fence =3D dma_resv_excl_fence(bo->base.resv);
> +	struct dma_fence *fence;
> +	int ret;
> +
> +	/* TODO: This is actually a memory management dependency */
> +	ret =3D dma_resv_get_singleton(bo->base.resv, false, &fence);
> +	if (ret)
> +		dma_resv_wait_timeout(bo->base.resv, false, false,
> +				      MAX_SCHEDULE_TIMEOUT);

Needs ack from nouveau folks.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  =

>  	nv10_bo_put_tile_region(dev, *old_tile, fence);
>  	*old_tile =3D new_tile;
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
