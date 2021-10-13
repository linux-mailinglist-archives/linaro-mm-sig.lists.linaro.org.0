Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F7B42C2F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:23:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A0FF617B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:23:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4C70C6143B; Wed, 13 Oct 2021 14:23:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 168246141E;
	Wed, 13 Oct 2021 14:23:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 63DA8607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:23:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 618676141E; Wed, 13 Oct 2021 14:23:20 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 5AD9E607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:23:18 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id y3so9095806wrl.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=aYg90o+vAlenz3v9nyvq6NbxIIAcYGj0FssSPUnAiFg=;
 b=AmfY+aim06wD3tQeVQ4yrNHsj6eRmGtBactGGzWNX03gCUGx7AKpu61USFaKTqN/q7
 FOjHZy9ZNWAvsNrvKsOkQrqW9vvIch+28PVCJfzqwDRug261C3wnd9aSFnrfzHGt/Ezm
 etYh27NJj9ZQuobiw9uGHoonUagrntoYUPFig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=aYg90o+vAlenz3v9nyvq6NbxIIAcYGj0FssSPUnAiFg=;
 b=Qap71UmahGjVO/pVCqGR63V8j5QMq0T+a5HTsqtAKlKDSQ4gnalCHQGZoCzZmGHeos
 yAO58lVZTb9tTocfR4TISdehIC9NIC3YbAW8WfjACIPj4/gP79HNQXIpoE/jWOA9gmbg
 Iyrt8z/HdB3nUSY4sjPpC0b97YPWcqjcZfffVvmar0YnaGqp2Q+h/8ZsnYG+3ZkXsWBW
 Db1ueQrhTfaslTHOIegEZApCoKt1iezwn8CRQsDxrQUSMsDD9Hp1cK1Id0jBkNtpWMcQ
 omc8/4RA6davcXSZcAXOuNHqDsVLt5Hl8aB+OSZJ2QOx4mBlKtaeAzp29y5saRj0aaD1
 5ogQ==
X-Gm-Message-State: AOAM532pTkmF+CZwwci1ZPUgpthyztzXlCRaOJPkSKJqi3HRg4ZA2hAB
 nXPOw9A84boCimbS/t7ShCIftw==
X-Google-Smtp-Source: ABdhPJxKy6Zj/ZXE+R74iOcucsIyIDxW/UMZ54YPO5tLJBzyQCV95JIsV7M6L+rta31Bylb41EG/pg==
X-Received: by 2002:a5d:6da5:: with SMTP id u5mr39299569wrs.436.1634134997373; 
 Wed, 13 Oct 2021 07:23:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i24sm5170720wml.26.2021.10.13.07.23.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:23:16 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:23:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-25-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-25-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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

On Tue, Oct 05, 2021 at 01:37:38PM +0200, Christian K=F6nig wrote:
> Makes the handling a bit more complex, but avoids the use of
> dma_resv_get_excl_unlocked().
> =

> v2: improve coding and documentation
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/drm_gem_atomic_helper.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/drm/dr=
m_gem_atomic_helper.c
> index e570398abd78..8534f78d4d6d 100644
> --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> @@ -143,6 +143,7 @@
>   */
>  int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_=
plane_state *state)
>  {
> +	struct dma_resv_iter cursor;
>  	struct drm_gem_object *obj;
>  	struct dma_fence *fence;
>  =

> @@ -150,9 +151,17 @@ int drm_gem_plane_helper_prepare_fb(struct drm_plane=
 *plane, struct drm_plane_st
>  		return 0;
>  =

>  	obj =3D drm_gem_fb_get_obj(state->fb, 0);
> -	fence =3D dma_resv_get_excl_unlocked(obj->resv);
> -	drm_atomic_set_fence_for_plane(state, fence);
> +	dma_resv_iter_begin(&cursor, obj->resv, false);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		/* TODO: We only use the first write fence here and need to fix
> +		 * the drm_atomic_set_fence_for_plane() API to accept more than
> +		 * one. */

I'm confused, right now there is only one write fence. So no need to
iterate, and also no need to add a TODO. If/when we add more write fences
then I think this needs to be revisited, and ofc then we do need to update
the set_fence helpers to carry an entire array of fences.
-Daniel

> +		dma_fence_get(fence);
> +		break;
> +	}
> +	dma_resv_iter_end(&cursor);
>  =

> +	drm_atomic_set_fence_for_plane(state, fence);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(drm_gem_plane_helper_prepare_fb);
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
