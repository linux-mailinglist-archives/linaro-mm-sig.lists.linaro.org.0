Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A83942C33B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:31:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 926B861516
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:31:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 24146607FD; Wed, 13 Oct 2021 14:31:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74A236141E;
	Wed, 13 Oct 2021 14:31:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8641060AEE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:31:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 822B0607FD; Wed, 13 Oct 2021 14:31:08 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 7600B607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:31:06 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id v17so9032134wrv.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6tq8Smct1MJoJumDXNBJuUP3GtNG4JxmFE/qpsP7bjw=;
 b=KiU3YeLJZ7sb9UTPffXi6zuNo62/3TTWlotxFoCAMiu0+ROMX9Dl38qmvsoL1azPf1
 IkllaVifg/UKOODiAIbyBDf+Hlxcyeg2oTU7tFcxqjZ041jbPxDy6wV+xnKDQE2y8vAn
 13B7F5k78sP5L8HU6C0lIsUBW2Wkg4vxHi/Kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6tq8Smct1MJoJumDXNBJuUP3GtNG4JxmFE/qpsP7bjw=;
 b=Q9uep/XHCjSt289lRW3aIhURmY6lQBabo80jgFdPSjAPFMAyy09QtBs9dpMJZU/AAD
 yijqAHKTSXlK4rCQ5pIzcznT02K43gm/R/Et5vOsqvd9H7IkC0CMrWbIKEHLYxjbSB4J
 WtiyAsXYLmBE5XAXhVXVTAr4UEDfLmRbuCM8kA5DHeyfvyYXwsF1YtcUCom9D1FjqouO
 cNWGSwhvlJMUwFy4yNWuz8jZJKWvCiC+B/auSGRpND3YFyC74u+6AT58km8WrWlIP8Qw
 +/l1UU5c9QRjWlKmNjv2Q1KA8et02LF7ouOONTru84Oe5ur179KTPF6iW6+D9nhum6u0
 qYSw==
X-Gm-Message-State: AOAM53059dqSqD8IQs+hl55iv/wlzAGK8EB/5lw1dxIBAN04gUwZA/xP
 XM58sdFrNF69XGNuLOvIngo91Q==
X-Google-Smtp-Source: ABdhPJy3Tc+8RM6gjALdeDYn0+OEHx7+hZmSpzgoaXo+0bD0SJuiR90J8Wo5ZozKTZynXWI53KX1iQ==
X-Received: by 2002:a5d:58ec:: with SMTP id f12mr40034247wrd.24.1634135465534; 
 Wed, 13 Oct 2021 07:31:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l124sm5795580wml.8.2021.10.13.07.31.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:31:05 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:31:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbtpxmI1BAtRvey@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-28-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-28-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 27/28] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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

On Tue, Oct 05, 2021 at 01:37:41PM +0200, Christian K=F6nig wrote:
> Instead of hand rolling the logic.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gem.c | 31 ++++++++++-----------------
>  1 file changed, 11 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etna=
viv/etnaviv_gem.c
> index 8f1b5af47dd6..0eeb33de2ff4 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
> @@ -428,19 +428,17 @@ int etnaviv_gem_wait_bo(struct etnaviv_gpu *gpu, st=
ruct drm_gem_object *obj,
>  static void etnaviv_gem_describe_fence(struct dma_fence *fence,
>  	const char *type, struct seq_file *m)
>  {
> -	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))

Yay for removing open-coded tests like this. Drivers really should have no
business digging around in fence->flags (i915 is terrible in this regard
unfortunately).

> -		seq_printf(m, "\t%9s: %s %s seq %llu\n",
> -			   type,
> -			   fence->ops->get_driver_name(fence),
> -			   fence->ops->get_timeline_name(fence),
> -			   fence->seqno);
> +	seq_printf(m, "\t%9s: %s %s seq %llu\n", type,
> +		   fence->ops->get_driver_name(fence),
> +		   fence->ops->get_timeline_name(fence),
> +		   fence->seqno);
>  }
>  =

>  static void etnaviv_gem_describe(struct drm_gem_object *obj, struct seq_=
file *m)
>  {
>  	struct etnaviv_gem_object *etnaviv_obj =3D to_etnaviv_bo(obj);
>  	struct dma_resv *robj =3D obj->resv;
> -	struct dma_resv_list *fobj;
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
>  	unsigned long off =3D drm_vma_node_start(&obj->vma_node);
>  =

> @@ -449,21 +447,14 @@ static void etnaviv_gem_describe(struct drm_gem_obj=
ect *obj, struct seq_file *m)
>  			obj->name, kref_read(&obj->refcount),
>  			off, etnaviv_obj->vaddr, obj->size);
>  =

> -	rcu_read_lock();
> -	fobj =3D dma_resv_shared_list(robj);
> -	if (fobj) {
> -		unsigned int i, shared_count =3D fobj->shared_count;
> -
> -		for (i =3D 0; i < shared_count; i++) {
> -			fence =3D rcu_dereference(fobj->shared[i]);
> +	dma_resv_iter_begin(&cursor, robj, true);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		if (dma_resv_iter_is_exclusive(&cursor))
> +			etnaviv_gem_describe_fence(fence, "Exclusive", m);
> +		else
>  			etnaviv_gem_describe_fence(fence, "Shared", m);
> -		}
>  	}
> -
> -	fence =3D dma_resv_excl_fence(robj);
> -	if (fence)
> -		etnaviv_gem_describe_fence(fence, "Exclusive", m);
> -	rcu_read_unlock();
> +	dma_resv_iter_end(&cursor);

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Please make sure it compiles on arm before pushing :-)

>  }
>  =

>  void etnaviv_gem_describe_objects(struct etnaviv_drm_private *priv,
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
