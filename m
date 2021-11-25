Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFC945DDE2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 16:47:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7693D62173
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 15:47:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BCF4262A45; Thu, 25 Nov 2021 15:47:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D31B60F1E;
	Thu, 25 Nov 2021 15:47:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3DFD860865
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 15:47:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 30F1660F1E; Thu, 25 Nov 2021 15:47:29 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 2B62960865
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 15:47:27 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id j3so12602778wrp.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 07:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=GrYTK8K69bBPxxO0M+FvuVC8uOT906Mq4gG8ozU4uk4=;
 b=d3wDvLB9aibDUksaMaJq0BzCsxenfX7o/qh4G09m6w3hGehD+WLtkdEKOfV/7xmM4p
 o1alxzNE3KLzxu4Ad0ohpwHVVU1k6iqQd5mAQ6qjNGXOdwNMEZBir978i8nB25cdn6JY
 n2oFt7seHvCaEi8DaO6BIa6O8e0mZYu8KAOKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=GrYTK8K69bBPxxO0M+FvuVC8uOT906Mq4gG8ozU4uk4=;
 b=sbH3g5DjwVOcxpj8zAI2qKMW3HWeYiQuhPE3VZTxR8k6JwIsFCBSN7ciLM6fonQiiV
 rYCH3kmzmIC8Vodnnidxf1FcE5yhwt+trhm0VeU3H2CD+XjxiEqv4rrxrU67H0jrTpPu
 FtfZe+DNHQCXX/AVVcQvqoDKXkXAYdYDJQ806wvDwUjABNHLUzOKIVENtYkRDtf6sKZc
 Rc9RUfNK6yMDJwnsJDySdZ4t//rwVrZ1i7dQepKgoHvUXPcackqDU1v9dk0ql8G0ZdEj
 NDwNQxFxccGMop/VKwCBwqlAJaJlSZzX/4R7AHpma8VyVmwZXdzOdmkpNcF1aUf5qp8R
 C0fA==
X-Gm-Message-State: AOAM531dCTcf8O02R72OdrrrJd1O4s5ocPMK01QAbmCE7VnM5uVCkmFR
 XiGeZDM2gbyyKP5MHYBEWVya2Q==
X-Google-Smtp-Source: ABdhPJyJKxgo85AFU7bZqlQKZR/U22Xtoer9r53DLE3Pttwt+lXpKP86T5A0OTOsLHUXdHbcZKm8Dw==
X-Received: by 2002:a5d:50c7:: with SMTP id f7mr7272141wrt.327.1637855246069; 
 Thu, 25 Nov 2021 07:47:26 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f18sm3113464wre.7.2021.11.25.07.47.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:47:25 -0800 (PST)
Date: Thu, 25 Nov 2021 16:47:23 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YZ+wCxjFSI4EAIvx@phenom.ffwll.local>
References: <20211123142111.3885-1-christian.koenig@amd.com>
 <20211123142111.3885-20-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123142111.3885-20-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 19/26] drm: support more than one write
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

On Tue, Nov 23, 2021 at 03:21:04PM +0100, Christian K=F6nig wrote:
> Use dma_resv_get_singleton() here to eventually get more than one write
> fence as single fence.

Yeah this is nice, atomic commit helpers not supporting multiple write
fences was really my main worry in this entire endeavour. Otherwise looks
all rather reasonable.

I'll try to find some review bandwidth, but would be really if you can
volunteer others too (especially making sure ttm drivers set the KERNEL
fences correctly in all cases).
-Daniel


> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
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
