Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E1140FACD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:52:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D88763538
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:52:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6854764AD6; Fri, 17 Sep 2021 14:52:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCF986341F;
	Fri, 17 Sep 2021 14:52:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BE0216323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:52:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BBA4E6341D; Fri, 17 Sep 2021 14:52:29 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by lists.linaro.org (Postfix) with ESMTPS id B21416323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:52:27 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id t6so31023927edi.9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=4qS+tt3C0ZYNclfI1pgK07MNXYZAOvx318h8HoEwcCo=;
 b=M63t4yL9jhyjtLRv25j1Pdh3L7uyIp0PM0PgJt617pbRTm5S2so9t1OyjSB7OhXujz
 isPuBItyjFDPMWD0mdzKWkDjHZMfLlS4QjQF+ljDB0fa3DORQ7+vYZOOxJBQEqLZnjkQ
 cvlJwZ33rt3pXoBKRVaLkWC3v00VVpAnM4NJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4qS+tt3C0ZYNclfI1pgK07MNXYZAOvx318h8HoEwcCo=;
 b=78biN/3n0l5YliNfGb6sUiR4nwVfvoty/1ra5x0AMwlko+OByGmrqxl7QDJ3By++aU
 XGdCGVZcuRBKSAVO5n5i1IxSMETXV0V3cZ/tANdkuUm4rkntqamf/4Cb3o5GvuaT+q2a
 2/96+03JP6rgu+Qbla5Wc2+Y8sd//GTvC75EWEvaK6YUd8XxbeIEIyhj9iUs2v62iEWH
 ZAM1GSkc8OM2mk5Eczbua/g99WE8j0fvGGJnG5yVMmQIeelWLLz61DsbVIlG7Z0hxToJ
 B+cIQqeewZCu6C+5qfBzfTF3LoWAyVI6DAerVR7HoiLt6Mjdl4V4Fkw+xhdXBNrvwfWT
 wLXQ==
X-Gm-Message-State: AOAM533occKmMiu7KXIytD3nq+x4N0qyN/aUvxRw9meoONbFC9cSL77k
 IzK3/TKKENbE3ZBSCxafZhfofXUiT8f9rw==
X-Google-Smtp-Source: ABdhPJxeDJzAFZPXsUaCi7oxKwLot8V1c/M4K6oO/Es12uIBRQqDR7eOJksrtVTsBbZW+ZgscxxfPg==
X-Received: by 2002:a50:fa89:: with SMTP id w9mr13216244edr.113.1631890346738; 
 Fri, 17 Sep 2021 07:52:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w5sm2424958ejz.25.2021.09.17.07.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:52:26 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:52:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSrqLa5IoXuxS1y@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-13-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-13-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 12/26] drm/scheduler: use new iterator
 in drm_sched_job_add_implicit_dependencies v2
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

On Fri, Sep 17, 2021 at 02:34:59PM +0200, Christian K=F6nig wrote:
> Simplifying the code a bit.
> =

> v2: use dma_resv_for_each_fence
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/scheduler/sched_main.c | 26 ++++++--------------------
>  1 file changed, 6 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/sch=
eduler/sched_main.c
> index 042c16b5d54a..5bc5f775abe1 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -699,30 +699,16 @@ int drm_sched_job_add_implicit_dependencies(struct =
drm_sched_job *job,
>  					    struct drm_gem_object *obj,
>  					    bool write)
>  {
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
>  	int ret;
> -	struct dma_fence **fences;
> -	unsigned int i, fence_count;
> -
> -	if (!write) {
> -		struct dma_fence *fence =3D dma_resv_get_excl_unlocked(obj->resv);
> -
> -		return drm_sched_job_add_dependency(job, fence);
> -	}
> -
> -	ret =3D dma_resv_get_fences(obj->resv, NULL, &fence_count, &fences);
> -	if (ret || !fence_count)
> -		return ret;
>  =

> -	for (i =3D 0; i < fence_count; i++) {
> -		ret =3D drm_sched_job_add_dependency(job, fences[i]);
> +	dma_resv_for_each_fence(&cursor, obj->resv, write, fence) {

Hah I got tricked reading your 2nd patch, the iter_begin() is included and
we don't need iter_end for this. Please correct my comments for patch 2
:-)

On this as-is:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +		ret =3D drm_sched_job_add_dependency(job, fence);
>  		if (ret)
> -			break;
> +			return ret;
>  	}
> -
> -	for (; i < fence_count; i++)
> -		dma_fence_put(fences[i]);
> -	kfree(fences);
> -	return ret;
> +	return 0;
>  }
>  EXPORT_SYMBOL(drm_sched_job_add_implicit_dependencies);
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
