Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB8A47D8CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:32:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAD47610AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:32:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A647A61082; Wed, 22 Dec 2021 21:32:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3C9C60DA3;
	Wed, 22 Dec 2021 21:32:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 16AD1606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:31:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1462F60DA3; Wed, 22 Dec 2021 21:31:59 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by lists.linaro.org (Postfix) with ESMTPS id 069DE606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:31:57 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id x15so13727675edv.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=2T7m6MaySg2FvxYaYRTpWc42tSr8dmW3Qbv0jXUALeY=;
 b=dMgTo6RrvNQuOM8G52QyijpF7jh0AkCNEt6cihbEwJB3TckVCPvdeWvsTQjiqHo2m9
 zR+r9ZaHWGVyGRSR2lE4zCtt7QaKDhmDH1aySG52CYxDTZWnN948zrMxyoiobIRvkc0T
 1mPDnmZok26tFdbr61Q8wFql62SZstlpxlp98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=2T7m6MaySg2FvxYaYRTpWc42tSr8dmW3Qbv0jXUALeY=;
 b=SWrv0g4WOlYsY/R51AZszZLjQJ5m4q97z4Zbycs6hwzYRPZ16LagZplJjlY2B3r68l
 K7CU/fjBlIh/OQYiC9DcdN2MF6XYaqj2XOKa8NtG/qn5dhgz/zKCTFOLaC315tDlUWWm
 Z0eQMq3noeLfg7x5CslgFOSwouB5EoFSKyq/aB1bvJmCaw+SJzhLPNvTUx/uJKcbQQ+7
 F2sk7DuHcTdCSlJxdERV+OQQ3756A4HGz/YG3oFm070fAlIsx1OQ/oYmwkRbmZjGh3pz
 EqizfOkoKd8ChRsujyn4he41Jl3lE43YFb4E1mG87WTWZHvLwQttoR6uE/DPPKT1V561
 v0dw==
X-Gm-Message-State: AOAM533XcncN8E5mkaCEk9a8EkBvK4pkWwN+6Ybe5u+G2ITeCjolVDH0
 7dt9FWFP14WKD6q+klB+Tj1cxQ==
X-Google-Smtp-Source: ABdhPJwzKn8NHPstNozIVE3zEuBv/ScM3bK17X1lHdgr1ouDigeX0VV5H0WqaeFXBBWpV7d0iw64EQ==
X-Received: by 2002:a17:906:eb56:: with SMTP id
 mc22mr3849902ejb.331.1640208716064; 
 Wed, 22 Dec 2021 13:31:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id zh8sm1061978ejb.1.2021.12.22.13.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:31:55 -0800 (PST)
Date: Wed, 22 Dec 2021 22:31:53 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOZSc3Z1hf5lPlA@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-9-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-9-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 08/24] drm/vmwgfx: stop using
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

On Tue, Dec 07, 2021 at 01:33:55PM +0100, Christian K=F6nig wrote:
> Instead use the new dma_resv_get_singleton function.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/vmwgfx/vmwgfx_resource.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_resource.c b/drivers/gpu/drm/v=
mwgfx/vmwgfx_resource.c
> index 8d1e869cc196..23c3fc2cbf10 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_resource.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_resource.c
> @@ -1168,8 +1168,10 @@ int vmw_resources_clean(struct vmw_buffer_object *=
vbo, pgoff_t start,
>  		vmw_bo_fence_single(bo, NULL);
>  		if (bo->moving)
>  			dma_fence_put(bo->moving);
> -		bo->moving =3D dma_fence_get
> -			(dma_resv_excl_fence(bo->base.resv));
> +
> +		/* TODO: This is actually a memory management dependency */
> +		return dma_resv_get_singleton(bo->base.resv, false,
> +					      &bo->moving);

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  	}
>  =

>  	return 0;
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
