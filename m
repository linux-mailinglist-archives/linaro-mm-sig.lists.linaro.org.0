Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A82647D8F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:51:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66B2761031
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:51:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 18F6D6101C; Wed, 22 Dec 2021 21:51:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C278960DC1;
	Wed, 22 Dec 2021 21:51:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 351E060B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:51:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 32B5060DC1; Wed, 22 Dec 2021 21:51:25 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id 2988D60B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:51:23 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id j6so13648234edw.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=tvMuyvqKENJPxfYNvPBdLBk/Q0Wu/qzhmc/BjawCPSo=;
 b=CPeuFuALlPY2M7TTTvs430ZAgWX3z4eHsR15vVCComngcPfMN/3b1I9hB3sP72T1of
 FgPUZ0qOV8PVMFUFczgp7jCLSsuNRFMuRVeInQh0X+Flyi84Qe3jWG6CUlOsw2yNDA63
 VFAZ7oJ9+m8l/c51UW7wiAGZ6Kb0zO+HE1PgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=tvMuyvqKENJPxfYNvPBdLBk/Q0Wu/qzhmc/BjawCPSo=;
 b=1kvoLkpI6rgVug9g+gj3A+gXJhAMCMRJ3vK750Rnw9vMAHYOV/J8rbP99RWMmDJ1Cw
 DEZtRGSawyBI1AvpWt0b3Wj7F9QcK4vLiH71KxB+RV8Wi26lO7uEPziHMKk4GIh8Lgil
 KJ4+mpWrPCSyl6MHTvGohTAOK/p0AaC0n7RcRxxyQiMurzf/ww4li1zGFHSSjNkjWeWh
 5VvVnV5JK50LmWYpOzMDG6JnINvuQYMjzXA5VrvpTe1FnzicnFSeeJbtSkVTWgsCH18y
 tsHLNgVpa9Zvz+amnt85ADy+Y4kGGfUHl38Z18MnzIwmXRo4v0YVzPD+szGF9RWlq7Kb
 g+cg==
X-Gm-Message-State: AOAM533FzU34S4Ha0R3U9tB+amU3LmQixSjKerZQcDyB02xuO9fZf3a4
 e1nKF5on27GsjXuxac24zQ60Vw==
X-Google-Smtp-Source: ABdhPJwVGe0nyH+ZbABYq6LPipkNqDcq5EgwVrsId62oST/trYTfKTAhQzsjzEcYTc9rYFgRDXORgQ==
X-Received: by 2002:a17:906:249a:: with SMTP id
 e26mr3866884ejb.492.1640209882226; 
 Wed, 22 Dec 2021 13:51:22 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id hr36sm1123687ejc.28.2021.12.22.13.51.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:51:21 -0800 (PST)
Date: Wed, 22 Dec 2021 22:51:20 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOd2DpbI0QTPhPh@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-16-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-16-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 15/24] drm: support more than one write
 fence in drm_gem_plane_helper_prepare_fb
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

On Tue, Dec 07, 2021 at 01:34:02PM +0100, Christian K=F6nig wrote:
> Use dma_resv_get_singleton() here to eventually get more than one write
> fence as single fence.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Patch title should be drm/atomic-helper: prefix, not just drm:

With that nit:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/drm_gem_atomic_helper.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/drm/dr=
m_gem_atomic_helper.c
> index c3189afe10cb..9338ddb7edff 100644
> --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> @@ -143,25 +143,21 @@
>   */
>  int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_=
plane_state *state)
>  {
> -	struct dma_resv_iter cursor;
>  	struct drm_gem_object *obj;
>  	struct dma_fence *fence;
> +	int ret;
>  =

>  	if (!state->fb)
>  		return 0;
>  =

>  	obj =3D drm_gem_fb_get_obj(state->fb, 0);
> -	dma_resv_iter_begin(&cursor, obj->resv, false);
> -	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -		/* TODO: Currently there should be only one write fence, so this
> -		 * here works fine. But drm_atomic_set_fence_for_plane() should
> -		 * be changed to be able to handle more fences in general for
> -		 * multiple BOs per fb anyway. */
> -		dma_fence_get(fence);
> -		break;
> -	}
> -	dma_resv_iter_end(&cursor);
> +	ret =3D dma_resv_get_singleton(obj->resv, false, &fence);
> +	if (ret)
> +		return ret;
>  =

> +	/* TODO: drm_atomic_set_fence_for_plane() should be changed to be able
> +	 * to handle more fences in general for multiple BOs per fb.
> +	 */
>  	drm_atomic_set_fence_for_plane(state, fence);
>  	return 0;
>  }
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
