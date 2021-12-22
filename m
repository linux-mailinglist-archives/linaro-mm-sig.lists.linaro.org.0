Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B4247D8BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:30:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04D8E610C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:30:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 89B6261050; Wed, 22 Dec 2021 21:30:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91A4C60DA3;
	Wed, 22 Dec 2021 21:30:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4DE30606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:30:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 40CCD60DA3; Wed, 22 Dec 2021 21:30:43 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by lists.linaro.org (Postfix) with ESMTPS id 341CD606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:30:41 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id q14so6024218edi.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cRuxaJUssp+3x7yqlysYE2p8OoJ6aDX0xXr2ZckK16U=;
 b=KP2ZB8x9mT1Rkak3thP1kypDm8oatJJtSsCJZnCX2xS28QtkRB2qgE4fihR14jxAAC
 g1F3xxGk7NNzdhhsyxgdLZBxvhrrbDboX+KahX37I1+aR1X9+nSsmcHSn7bO0ysKrZNd
 IO/IP3UvQVGLj3h1SjMf+VjJlm5+pgIkT7iKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cRuxaJUssp+3x7yqlysYE2p8OoJ6aDX0xXr2ZckK16U=;
 b=SZZJs8i7E4QHIoUdiB2sog8da1EaBec1k7tD6fzVXRP1UCfdu8Ra2amFqR21WkdJy0
 kLF5hbDP5tFRhDJqSMQRvkeIb61KZBjtsOqJc6Afsc53wZntFwqnjulqqZzc3Op10MRt
 6dNIz6Z9gCnScppueioyXWmRWO1nvxmYyhF1imRBid+dmVmGJaY806lXNskF4eK+u6j6
 XF1+hvH+y8bqsDQi8qfnNkG+r3T+P6nHFYIZNfTGtqQAL8kxTPt8Bp6TiG1bGEvMLd6+
 8vj6Wx9hf1nw6FVZmbwHJB5qS4wSG9yi7Dg61pY3vBNf4hBZIxvab3s/e650s6VFW2cT
 +v+A==
X-Gm-Message-State: AOAM531P9uUrPRU0cb0r/sSEyKuoorDn0AOyfbxglqcvvbH4eVQRFMxL
 qLPXptK2wN9j1l/IW1jQk1wnyjV5YGi5IQ==
X-Google-Smtp-Source: ABdhPJwK4laAQJWZO9107YfUXlS+5KTEbT9Av7yKnW08IQXOuHhQ+uXbytjjJxGVeJE7kHRHfqd8rw==
X-Received: by 2002:a17:907:7241:: with SMTP id
 ds1mr3868968ejc.695.1640208640204; 
 Wed, 22 Dec 2021 13:30:40 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b10sm1320362ede.52.2021.12.22.13.30.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:30:39 -0800 (PST)
Date: Wed, 22 Dec 2021 22:30:38 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOY/jR9nogI7yzU@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-10-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-10-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 09/24] drm/radeon: stop using
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

On Tue, Dec 07, 2021 at 01:33:56PM +0100, Christian K=F6nig wrote:
> Instead use the new dma_resv_get_singleton function.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/radeon/radeon_display.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/radeon/radeon_display.c b/drivers/gpu/drm/ra=
deon/radeon_display.c
> index 573154268d43..a6f875118f01 100644
> --- a/drivers/gpu/drm/radeon/radeon_display.c
> +++ b/drivers/gpu/drm/radeon/radeon_display.c
> @@ -533,7 +533,12 @@ static int radeon_crtc_page_flip_target(struct drm_c=
rtc *crtc,
>  		DRM_ERROR("failed to pin new rbo buffer before flip\n");
>  		goto cleanup;
>  	}
> -	work->fence =3D dma_fence_get(dma_resv_excl_fence(new_rbo->tbo.base.res=
v));
> +	r =3D dma_resv_get_singleton(new_rbo->tbo.base.resv, false, &work->fenc=
e);
> +	if (r) {
> +		radeon_bo_unreserve(new_rbo);
> +		DRM_ERROR("failed to get new rbo buffer fences\n");
> +		goto cleanup;
> +	}

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  	radeon_bo_get_tiling_flags(new_rbo, &tiling_flags, NULL);
>  	radeon_bo_unreserve(new_rbo);
>  =

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
