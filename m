Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5C847D8FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:52:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B71526101A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:52:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8259960B99; Wed, 22 Dec 2021 21:52:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 783F460DC1;
	Wed, 22 Dec 2021 21:52:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AC03760B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:52:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A7D5760DC1; Wed, 22 Dec 2021 21:52:38 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by lists.linaro.org (Postfix) with ESMTPS id 9F48960B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:52:36 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id j6so13657035edw.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=c7jtBamXWY7Ec9ROV3OjQL0fvP/qcLqLqrMSbN3AvqY=;
 b=ecRC2EllFpOPXFx3eUOJpN9EMHM+yrA3y4nYhQ3Q6cDMpUV9ZUtLIpsPG3IylvPhXx
 7NEFPhUsS32xRVSG+1lBEqWdpWTzcPcuxqFCGFNlPm/Mm6NTnAcTH6ywcnaRQtIDiPyG
 z62vXQMBt4BBad622pJR62wXhSNKyBMmpO+Ew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=c7jtBamXWY7Ec9ROV3OjQL0fvP/qcLqLqrMSbN3AvqY=;
 b=HRLZaEwmN16yxflNPx0oE8rC9BNykrYNLMfgnBWB/exdjJwUsa9Dqbx8lJOeF92N+j
 /Vje0pPtHGMbDW05uG1A2A6ih7sNL7tAFOf9W5zZduO73Dbz++3FGuzqpiRixKI4SDqb
 7Lqia7zwUy8YjqN7FZG1aes+MixxzbxCWAGRt7UfAdBq3mrzAqQrwkXWalOGgbeuBkiP
 nsi5f7AdfWmj8ZA4vbmQJYJtOZ3e8bSwNPminYaJPb/NojOyLc0/O+KPHoSvctVwbyRz
 MG+7N9H/nIEdDcaT+8oajEbe4bWGv+FdQcMkyi+goDkkpw7NLSBuZJGZDGq/4STptHPU
 7AdQ==
X-Gm-Message-State: AOAM532gueae6BMfCYzkyNSHO+Gbxjy9VJMEQeuzvGb0SPnwS1VuQgyt
 /Rwx5Tb4G7crMAoZF3a123ZJv8fmcy8bFA==
X-Google-Smtp-Source: ABdhPJya0W2q658d/hOLrgWA6I3WAs9SdToJcK6EKM3kejv0OPyZOAA4uQllKuDPAmH5Y2h6ddZrKQ==
X-Received: by 2002:a17:907:2d28:: with SMTP id
 gs40mr3760932ejc.765.1640209955690; 
 Wed, 22 Dec 2021 13:52:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id ne31sm1112670ejc.48.2021.12.22.13.52.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:52:35 -0800 (PST)
Date: Wed, 22 Dec 2021 22:52:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOeIfLwB6srBtQu@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-17-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-17-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 16/24] drm/nouveau: support more than
 one write fence in fenv50_wndw_prepare_fb
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

On Tue, Dec 07, 2021 at 01:34:03PM +0100, Christian K=F6nig wrote:
> Use dma_resv_get_singleton() here to eventually get more than one write
> fence as single fence.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/nouveau/dispnv50/wndw.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/drm/no=
uveau/dispnv50/wndw.c
> index 133c8736426a..b55a8a723581 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> @@ -536,8 +536,6 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct =
drm_plane_state *state)
>  	struct nouveau_bo *nvbo;
>  	struct nv50_head_atom *asyh;
>  	struct nv50_wndw_ctxdma *ctxdma;
> -	struct dma_resv_iter cursor;
> -	struct dma_fence *fence;
>  	int ret;
>  =

>  	NV_ATOMIC(drm, "%s prepare: %p\n", plane->name, fb);
> @@ -560,13 +558,11 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struc=
t drm_plane_state *state)
>  			asyw->image.handle[0] =3D ctxdma->object.handle;
>  	}
>  =

> -	dma_resv_iter_begin(&cursor, nvbo->bo.base.resv, false);
> -	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -		/* TODO: We only use the first writer here */
> -		asyw->state.fence =3D dma_fence_get(fence);
> -		break;
> -	}
> -	dma_resv_iter_end(&cursor);
> +	ret =3D dma_resv_get_singleton(nvbo->bo.base.resv, false,
> +				     &asyw->state.fence);

Needs nouveau-ack, but otherwise lgtm.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +	if (ret)
> +		return ret;
> +
>  	asyw->image.offset[0] =3D nvbo->offset;
>  =

>  	if (wndw->func->prepare) {
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
