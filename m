Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3B842C29C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:15:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BACF561793
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:14:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 90F8C6141E; Wed, 13 Oct 2021 14:14:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A895D6141E;
	Wed, 13 Oct 2021 14:14:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 495B4607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:14:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3514E6141E; Wed, 13 Oct 2021 14:14:51 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 1D336607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:14:49 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id e3so8781071wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=QGMl28YhRUiVkwlLZBmVBXM/gyOekGqQg/96lael90E=;
 b=P0JFBTHJb1PbNMI8zjyzr7d9fJsFYOFHA0yBi6E2RZWs9BbG3pgP09Q5ZbfNPBYrfe
 omcKg0S8cPzW2K3NVO1TtfBvQGSQmGi81ZTXvdFcqcuT3/GvLOrN8on5acW1QONc+L3Q
 dVWlOopJ2jZgRk57IgcSw6BClvk7y94ehK1mY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=QGMl28YhRUiVkwlLZBmVBXM/gyOekGqQg/96lael90E=;
 b=OxFEKAp+wlTSkZdJFRBFJARNTffLTPe8qzTYP2Bqm0PpHUbR8hBeziFh9Uy+9ekYc2
 X+BBh9c9hm4G6vfOhrpcwWTOiGDmFoL57YKdjkZ+avoU/AJG5havbSiUdeSF7A9ES/3b
 n+2LWpW1PMn3Mbnhn1FZko3YFbQxuZud3XQ0asABGUsfi+AJCdcyXT6PT328ViUWrnip
 0f1+5RDQUkS7FkHMpbJrxZomYdZqNx0Jyw1qFedWXfREiJnMW+Qdr7QTcPJfqflrXCeE
 OcsuDPiB9YntkNxHycKcsfmd+AFXWlCf1BpYwdUSzKejQPYWxwLpCSWC763Qf/lpYJyT
 u/vA==
X-Gm-Message-State: AOAM530qA4IjCE9q8ZWyHyrwSByxKg4YJbfJTUayynGmYiiRN0HGGfc0
 KDEJpwG3Hkvov9Txmof2V9JzmA==
X-Google-Smtp-Source: ABdhPJz3DWZJUUUVjvwZK5GxUdwNkVvvYKU7kkJTlhYb5/u8jsP/6ywjOD2vzguomUiuBwi9+TI1iA==
X-Received: by 2002:a5d:6ad2:: with SMTP id u18mr40933209wrw.47.1634134487220; 
 Wed, 13 Oct 2021 07:14:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b190sm5490616wmd.25.2021.10.13.07.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:14:46 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:14:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbp1PoezuLqHpKZ@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-15-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-15-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 14/28] drm/msm: use new iterator in
 msm_gem_describe
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

On Tue, Oct 05, 2021 at 01:37:28PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit. Also drop the RCU read side lock since the
> object is locked anyway.
> =

> Untested since I can't get the driver to compile on !ARM.

Cross-compiler install is pretty easy and you should have that for pushing
drm changes to drm-misc :-)

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Assuming this compiles, it looks correct.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/msm/msm_gem.c | 19 +++++--------------
>  1 file changed, 5 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
> index 40a9863f5951..5bd511f07c07 100644
> --- a/drivers/gpu/drm/msm/msm_gem.c
> +++ b/drivers/gpu/drm/msm/msm_gem.c
> @@ -880,7 +880,7 @@ void msm_gem_describe(struct drm_gem_object *obj, str=
uct seq_file *m,
>  {
>  	struct msm_gem_object *msm_obj =3D to_msm_bo(obj);
>  	struct dma_resv *robj =3D obj->resv;
> -	struct dma_resv_list *fobj;
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
>  	struct msm_gem_vma *vma;
>  	uint64_t off =3D drm_vma_node_start(&obj->vma_node);
> @@ -955,22 +955,13 @@ void msm_gem_describe(struct drm_gem_object *obj, s=
truct seq_file *m,
>  		seq_puts(m, "\n");
>  	}
>  =

> -	rcu_read_lock();
> -	fobj =3D dma_resv_shared_list(robj);
> -	if (fobj) {
> -		unsigned int i, shared_count =3D fobj->shared_count;
> -
> -		for (i =3D 0; i < shared_count; i++) {
> -			fence =3D rcu_dereference(fobj->shared[i]);
> +	dma_resv_for_each_fence(&cursor, robj, true, fence) {
> +		if (dma_resv_iter_is_exclusive(&cursor))
> +			describe_fence(fence, "Exclusive", m);
> +		else
>  			describe_fence(fence, "Shared", m);
> -		}
>  	}
>  =

> -	fence =3D dma_resv_excl_fence(robj);
> -	if (fence)
> -		describe_fence(fence, "Exclusive", m);
> -	rcu_read_unlock();
> -
>  	msm_gem_unlock(obj);
>  }
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
