Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B00C542C227
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:07:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9781961A44
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:07:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8CADB619B0; Wed, 13 Oct 2021 14:07:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBFBF6141E;
	Wed, 13 Oct 2021 14:07:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 299C7607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:07:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2752A6141E; Wed, 13 Oct 2021 14:07:51 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 1E587607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:07:49 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id g25so8894304wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=MKxaZc1pgApmzpCUtsxcB625bqKcDpcD1a7kgFDuO2c=;
 b=L+k3W2pOKne4quT1JwDLgoYvBTDNcQO7CjmuZjq7JfRe+vfeIKBrKVplAhVpXWwuUa
 m50PhxWJ3zjFv8h5BW7Pe5vIfesh4gLNQbXQK1J+KKywDFrwP3zogV7U0QcHa2smoOZh
 bXCL/2qqYIwY+IrEwP/CBh9IGsi0ka4uPf54A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=MKxaZc1pgApmzpCUtsxcB625bqKcDpcD1a7kgFDuO2c=;
 b=4/WhiK8pIsAub4Kzo0BYwoAT5aLX6t8rpg8HVsZLfF067TyA33fl1RRWCUMC4cy9Nx
 OOvYb4N8rQrX5vF7pgDr7JHiz3u8tp3l5o1ET88Dr1LeJfqjFwl1M7vlpIUQs8yz+FPf
 DpWJk5q+TR69R1rytKah1iv2MXjP3zRT/kYLnOVctMBLm5Ms9KGKzgAkizAjgjCerMad
 nXwqVgupyZWQb6MHmNW3grRtE2b5eXCaaBE26NkeGUuW5Ju/wo2vScLaNxY2OiRIiAcS
 hh2PhiAAhpobhFMqc7jTfIEVUU56C0IZoWx/8oFPzuRWoXP+bA1WjWpVWORi7a95rUJP
 /NhQ==
X-Gm-Message-State: AOAM533mmXdOfOZW/7+i4uprl7pUIbPDMWZ9UbPQjAPHKEup1gdkXE6P
 jw9tnbQmaO0L8gMXUOs7n8jv4g==
X-Google-Smtp-Source: ABdhPJwpY3GMpSXEeLezpKBdLRdIlDqC60mIwmphTOUCOalzhlFSIcORR+wr7zU2kxe9TM1Th2J1mg==
X-Received: by 2002:a1c:f302:: with SMTP id q2mr13407345wmq.56.1634134068132; 
 Wed, 13 Oct 2021 07:07:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r27sm13404433wrr.70.2021.10.13.07.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:07:47 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:07:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWboMfLOIjl1l7tF@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-13-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-13-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 12/28] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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

On Tue, Oct 05, 2021 at 01:37:26PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_ttm.c
> index e8d70b6e6737..722e3c9e8882 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> @@ -1345,10 +1345,9 @@ static bool amdgpu_ttm_bo_eviction_valuable(struct=
 ttm_buffer_object *bo,
>  					    const struct ttm_place *place)
>  {
>  	unsigned long num_pages =3D bo->resource->num_pages;
> +	struct dma_resv_iter resv_cursor;
>  	struct amdgpu_res_cursor cursor;
> -	struct dma_resv_list *flist;
>  	struct dma_fence *f;
> -	int i;
>  =

>  	/* Swapout? */
>  	if (bo->resource->mem_type =3D=3D TTM_PL_SYSTEM)
> @@ -1362,14 +1361,9 @@ static bool amdgpu_ttm_bo_eviction_valuable(struct=
 ttm_buffer_object *bo,
>  	 * If true, then return false as any KFD process needs all its BOs to
>  	 * be resident to run successfully
>  	 */
> -	flist =3D dma_resv_shared_list(bo->base.resv);
> -	if (flist) {
> -		for (i =3D 0; i < flist->shared_count; ++i) {
> -			f =3D rcu_dereference_protected(flist->shared[i],
> -				dma_resv_held(bo->base.resv));
> -			if (amdkfd_fence_check_mm(f, current->mm))
> -				return false;
> -		}
> +	dma_resv_for_each_fence(&resv_cursor, bo->base.resv, true, f) {

							    ^false?

At least I'm not seeing the code look at the exclusive fence here.
-Daniel

> +		if (amdkfd_fence_check_mm(f, current->mm))
> +			return false;
>  	}
>  =

>  	switch (bo->resource->mem_type) {
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
