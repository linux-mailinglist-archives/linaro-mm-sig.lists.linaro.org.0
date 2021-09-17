Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BC07940FAC4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:50:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B81B63423
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:50:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8CB3463413; Fri, 17 Sep 2021 14:50:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91D676341D;
	Fri, 17 Sep 2021 14:50:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8F0166323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:50:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 83AB56341D; Fri, 17 Sep 2021 14:50:22 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by lists.linaro.org (Postfix) with ESMTPS id 797B66323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:50:20 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id c21so30746666edj.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=5RGQxzmlKwLpLejf7DyioqG8/xNm2Xdb7FS3U66xIrQ=;
 b=KISrc2lSZllL6gBcY+5XK+lD9HLQ+zSIdbbchQVQTKVYPWwYnEjy+hUmPmmIETYGLF
 uHXfp7iHt4eWj5756feNhEgkLI5RnAYOgGkQY6YIHy39zA7xuIHJnrMN1HGGfkOydDXx
 ugowRSHA+WDJH+laAfL4w+ShJz/VT+5qy9Ato=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=5RGQxzmlKwLpLejf7DyioqG8/xNm2Xdb7FS3U66xIrQ=;
 b=NMP1AjwGAVPO0cSzS0Qbh93kU9KKxOrMd02xdu63J6HV9AGK7RTzj3Bngtmy0rwQST
 Q32K34WoGkH5WEA8O0kf6xAhSrahHoPctF1MKd4QyUC4CWp3iq6wszce1KYS7v/S0xwc
 zS1wWpI1i4nM1CbIJierhaS8cB5X6GU7gWpdHARLmaZQcv03TCXA/HoFNbO/qqhrbMFk
 gmbagULOH3shTgK805mIqmLOyKNtAjNgU70LE4hBvAbtlYAujgZSKWVFCscDfZS296Ih
 HMADO6jwu4D3r+dtPh84Qf5XL6dxCkEv4aEoWj1RYUt66VqnT4+/hLB37Gh44VkIQk6m
 VPCQ==
X-Gm-Message-State: AOAM532WRO1ALyv73WeFFn8+qM98sBveLhtp0aO/b4togltOhqWzrXs1
 vEnG7FhHqgFPd1DRsL98nicBIw==
X-Google-Smtp-Source: ABdhPJxba/NO0TrkGTviWKbmqvAbMZ4UOj73wmiM3lhAiN+9qVsSuL5PWtv7x1Y8+C+2+v3sFyzyhA==
X-Received: by 2002:a50:fb06:: with SMTP id d6mr12689369edq.31.1631890219229; 
 Fri, 17 Sep 2021 07:50:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z12sm2718687edx.66.2021.09.17.07.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:50:18 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:50:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSrKdHwcK+us4XG@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-8-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-8-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 07/26] drm/ttm: use the new iterator in
 ttm_bo_flush_all_fences
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 17, 2021 at 02:34:54PM +0200, Christian K=F6nig wrote:
> This is probably a fix since we didn't even grabed a reference to the
> fences.

It's rcu protected, and we only care about speeding things up a bit. I
think this wont have any impact on correctness, and I don't think any
driver could blow up?

But yeah maybe we should have a few assert sprinkled into various
dma_fence functions to make sure we never call them when the refcount has
dropped to 0. That would catch stuff like this, and help lock down the
dma-fence api quite a bit.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/ttm/ttm_bo.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index 3b22c0013dbf..7d804c0c69b0 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -269,22 +269,16 @@ static int ttm_bo_individualize_resv(struct ttm_buf=
fer_object *bo)
>  static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
>  {
>  	struct dma_resv *resv =3D &bo->base._resv;
> -	struct dma_resv_list *fobj;
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
> -	int i;
>  =

>  	rcu_read_lock();
> -	fobj =3D dma_resv_shared_list(resv);
> -	fence =3D dma_resv_excl_fence(resv);
> -	if (fence && !fence->ops->signaled)
> -		dma_fence_enable_sw_signaling(fence);
> -
> -	for (i =3D 0; fobj && i < fobj->shared_count; ++i) {
> -		fence =3D rcu_dereference(fobj->shared[i]);
> -
> +	dma_resv_iter_begin(&cursor, resv, true);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
>  		if (!fence->ops->signaled)

Imo delete this check here. If that really matters for performance we
should have it in the core dma_fence function, not replicated all over the
place like this. Noodling around in dma_fence internals like this isn't
cool.

With that removal included:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  			dma_fence_enable_sw_signaling(fence);
>  	}
> +	dma_resv_iter_end(&cursor);
>  	rcu_read_unlock();
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
