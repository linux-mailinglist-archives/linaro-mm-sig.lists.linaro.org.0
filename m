Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2672047D8E1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:37:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A46FC610C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:37:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 89E2A610AD; Wed, 22 Dec 2021 21:37:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8B7C60DA3;
	Wed, 22 Dec 2021 21:37:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 483AF606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:37:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4601D60DA3; Wed, 22 Dec 2021 21:37:45 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by lists.linaro.org (Postfix) with ESMTPS id 3E19C606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:37:43 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id w16so13582982edc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=5Qo+nFcnWhfkRsrQeCzbvYusBRH/F2n7RikRiuAf8/g=;
 b=IvYzvI3/k4LalWnS2750Udv5OE/ko7GcCzuzKNVNfHKcMqA0T2D9NinPZtbsC4iUM+
 I1s4AjJqIdn/6n/cjhy81gKOkV82UZZfGsvDFUZUeYeuXxkrfuJ7dGETUdBYvnWlY/pG
 1yq/bHJmHiL2riWajRm0Z4ZyGTf8mvrODxyto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=5Qo+nFcnWhfkRsrQeCzbvYusBRH/F2n7RikRiuAf8/g=;
 b=qs/wYzQeDiA5Lu9Oapfj4h/DqCqLPjrs2kL8BEkssCSive0b+sb5+j3TrKcO0AasCe
 Tws5c2lpDnNNPy+PAmzOJuN+kORYkcG7WOKu5ZMaver+mvy19wOekVZnxW16c4NCLaa9
 NqfELSrAr1UY4q0QsHguSxmyyATRSP7GCwEMl2astQZgFpkApfD1RldQl0NYfaeusQim
 pcIL3e2iWmx7aQ7ZJHREGlMwWbOD34EA0g80NLfhqHIthGe3J64aCHovyG9ZAr4tIdX9
 ZKhdPtc0ZtpOon1cO8tGNj3kDe8F9ar+2dfyaL6Fo2FkMfZysfsREehGXyeJ7p00tDLk
 c14w==
X-Gm-Message-State: AOAM53179hrZnFqX+gslxAp+zgB++u4aIQVsID1UbToH4QtTFHISVuH4
 aPowq7gG5HGwSqMYK6rtqKJ9xutdLO4xBg==
X-Google-Smtp-Source: ABdhPJzOaQ3/3QMM/0PJ7nP8MwY7OPDou96jhbXDS81aDHtiLwn7DX6gpwyf9ktdSVJ4Sh++XjoWCQ==
X-Received: by 2002:a05:6402:51cd:: with SMTP id
 r13mr4458688edd.184.1640209062287; 
 Wed, 22 Dec 2021 13:37:42 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s26sm1071922eja.152.2021.12.22.13.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:37:41 -0800 (PST)
Date: Wed, 22 Dec 2021 22:37:40 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOapBWDYQj5hKRn@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-12-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-12-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 11/24] drm/amdgpu: use
 dma_resv_for_each_fence for CS workaround
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

On Tue, Dec 07, 2021 at 01:33:58PM +0100, Christian K=F6nig wrote:
> Get the write fence using dma_resv_for_each_fence instead of accessing
> it manually.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_cs.c
> index 53e407ea4c89..7facd614e50a 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> @@ -1268,6 +1268,8 @@ static int amdgpu_cs_submit(struct amdgpu_cs_parser=
 *p,
>  	amdgpu_bo_list_for_each_entry(e, p->bo_list) {
>  		struct dma_resv *resv =3D e->tv.bo->base.resv;
>  		struct dma_fence_chain *chain =3D e->chain;
> +		struct dma_resv_iter cursor;
> +		struct dma_fence *fence;
>  =

>  		if (!chain)
>  			continue;
> @@ -1277,9 +1279,10 @@ static int amdgpu_cs_submit(struct amdgpu_cs_parse=
r *p,
>  		 * submission in a dma_fence_chain and add it as exclusive
>  		 * fence.
>  		 */
> -		dma_fence_chain_init(chain, dma_resv_excl_fence(resv),
> -				     dma_fence_get(p->fence), 1);
> -
> +		dma_resv_for_each_fence(&cursor, resv, false, fence) {
> +			break;
> +		}
> +		dma_fence_chain_init(chain, fence, dma_fence_get(p->fence), 1);

Uh this needs a TODO. I'm assuming you'll fix this up later on when
there's more than write fence, but in case of bisect or whatever this is a
bit too clever. Like you just replace one "dig around in dma-resv
implementation details" with one that's not even a documented interface
:-)

With an adequately loud comment added interim:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  		rcu_assign_pointer(resv->fence_excl, &chain->base);
>  		e->chain =3D NULL;
>  	}
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
