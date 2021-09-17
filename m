Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA3F40FAE4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:56:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1946B63423
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:56:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0D5036341D; Fri, 17 Sep 2021 14:56:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C3A063413;
	Fri, 17 Sep 2021 14:56:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 60CB0603EF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:56:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5E78863413; Fri, 17 Sep 2021 14:56:16 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by lists.linaro.org (Postfix) with ESMTPS id 4C4C3603EF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:56:14 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id eg28so8112732edb.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=X29mbY4XMQeoCuwbVUTtCWIrpaTXec+xmjDFVMtuCBM=;
 b=A1mcavcYt2QQTNBkoc/FLtlWT1v9wbPlqaIljyDs2v8H+aMqb3YWAo/dBjkr7bnB9Q
 fdKFk/C3fl1c+dc4jgBuYmy83h8ZIAXghsGelEppBnIbXsB+MPbQHYy2wL6veYXqLwB0
 IXY7RuywYKGiRoaVNoO2pnLtiRV+KPnamRdbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=X29mbY4XMQeoCuwbVUTtCWIrpaTXec+xmjDFVMtuCBM=;
 b=1789TgAG+gX+T81hV7Ohm2bJzBlJp5zwGDGu9ZJTlaQgqDyvmnphkjvlzPwys3pnwA
 35MY1jSv/UUhaG8g65haJzVoUgh1vuiY5jL+PsPkciVEeJ8wKnXmiScBaTTIkQs+dh59
 6r0N7uXp356F0hwXZX9/1HGQBCyfOfRWKkMQh6Pt+NC/koxVXuV2ysV5K2BJQY3WZfRS
 29LGr+peSe8LyWUPSlrWwz7brtlT4MME/3u07TSYX58uOJQPlzbxMDIFYfspyH0rl7xZ
 JBJJOIEgfVK7dwC4i3xs2sVF7VPbY2K7zr/Ub0/MCvqqxEV+XCokNAIVEC9PwRu7pP0M
 TiqQ==
X-Gm-Message-State: AOAM531ivCO4e+510IbXYetrR2kvTLTowBEJG9wJ2fp/3Mxuy3IqkwOp
 AmawjxHzfLkwHZmH+gw6A8YdeQ==
X-Google-Smtp-Source: ABdhPJzipdEA6H6mMcSGep1fE9poMh/Q4IA14eEu/6Rd+xLXMksMP/16auhU0CWMS0H+xVD6zggZfg==
X-Received: by 2002:a17:906:fb13:: with SMTP id
 lz19mr12364559ejb.516.1631890573401; 
 Fri, 17 Sep 2021 07:56:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o23sm2752212eds.75.2021.09.17.07.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:56:12 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:56:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSsixkj+ivSug/5@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-27-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-27-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 26/26] dma-buf: nuke
 dma_resv_get_excl_unlocked
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

On Fri, Sep 17, 2021 at 02:35:13PM +0200, Christian K=F6nig wrote:
> Heureka, that's finally not used any more.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  include/linux/dma-resv.h | 26 --------------------------
>  1 file changed, 26 deletions(-)
> =

> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 8c968f8c9d33..f42ca254acb5 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -423,32 +423,6 @@ dma_resv_excl_fence(struct dma_resv *obj)
>  	return rcu_dereference_check(obj->fence_excl, dma_resv_held(obj));
>  }
>  =

> -/**
> - * dma_resv_get_excl_unlocked - get the reservation object's
> - * exclusive fence, without lock held.
> - * @obj: the reservation object
> - *
> - * If there is an exclusive fence, this atomically increments it's
> - * reference count and returns it.
> - *
> - * RETURNS
> - * The exclusive fence or NULL if none
> - */
> -static inline struct dma_fence *
> -dma_resv_get_excl_unlocked(struct dma_resv *obj)
> -{
> -	struct dma_fence *fence;
> -
> -	if (!rcu_access_pointer(obj->fence_excl))
> -		return NULL;
> -
> -	rcu_read_lock();
> -	fence =3D dma_fence_get_rcu_safe(&obj->fence_excl);
> -	rcu_read_unlock();
> -
> -	return fence;
> -}
> -
>  /**
>   * dma_resv_shared_list - get the reservation object's shared fence list
>   * @obj: the reservation object
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
