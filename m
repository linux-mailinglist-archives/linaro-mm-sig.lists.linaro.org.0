Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE6840FA9A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:43:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5687C6341F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:43:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A8E9C666F6; Fri, 17 Sep 2021 14:43:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DACDD6341D;
	Fri, 17 Sep 2021 14:43:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 645F56323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:43:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 600946341D; Fri, 17 Sep 2021 14:43:26 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by lists.linaro.org (Postfix) with ESMTPS id 47C546323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:43:24 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id h17so30979567edj.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=l3KbKSGPjgb2NQ1xQIuBnrBhc4uBXqtRTi8wbPC0ga0=;
 b=HrmJwuQJWlLgUqqIYXW5uFcRxT3fwUlDFOeKT5h+YmE4hgSUbgngIgakGyqza0Ak/E
 N4WcCcZSbwU0I41a3Ee2uCq5lKNlsfxQlS4bk5jnbz8Uc8/WLP7VJVhqqPU7+DDR27nr
 bHZcaJvnM2c/q5KiP8xgBisXFCU0o+BPQMbXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=l3KbKSGPjgb2NQ1xQIuBnrBhc4uBXqtRTi8wbPC0ga0=;
 b=0Q9EORfrvKx/5DwKqSH/ER4HfAlkUR80bc1ra9anyMPkeT1htXyhK2mazod+DSDcdP
 mksMcvHK4mtVlUdNIPX05zVdjRU7ssN52DH5dVhM9b6umQjRoQKmxHyq7MEcOiFbXFCg
 3RgVDoCEpuT8ywen8rec0PWaBxUitgPVppSB4xi8m5bUroNAvUWMP+Nv1iwSQlsH+B5U
 DMAOw28nDqadJ0tU91YKq7uoGggf47DZBrjQUtrTAChbvo0RuDMKmNX/MiXbEUas9lbN
 zOd0DyHNLLTom+pTVWJ1sr9aU992B/qkIp5S0y/b7uCNRCaF8HnNWWl/ag9YFnel7deN
 oSQQ==
X-Gm-Message-State: AOAM530aK+TwZBmKHJf1MO69JStw/2vluFnUGV4Lx4eXN7JYFtpxAbNp
 FPX+l/y3YgnYGh5KhFATlDB0Iw==
X-Google-Smtp-Source: ABdhPJxVPzhZbOficXc6bDadxPa26AhAtQKrydrKlHVpMgqpF2mtB0UweCcZ1SJVG9txF/t6ofoM/g==
X-Received: by 2002:a17:906:9ad0:: with SMTP id
 ah16mr13185322ejc.43.1631889802760; 
 Fri, 17 Sep 2021 07:43:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f2sm2273109eje.109.2021.09.17.07.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:43:22 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:43:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSpiHK7Dd1pF/Mq@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-6-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-6-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 05/26] dma-buf: use new iterator in
 dma_resv_wait_timeout
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

On Fri, Sep 17, 2021 at 02:34:52PM +0200, Christian K=F6nig wrote:
> This makes the function much simpler since the complex
> retry logic is now handled elsewhere.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 68 ++++++--------------------------------
>  1 file changed, 10 insertions(+), 58 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 9b90bd9ac018..c7db553ab115 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -569,74 +569,26 @@ long dma_resv_wait_timeout(struct dma_resv *obj, bo=
ol wait_all, bool intr,
>  			   unsigned long timeout)
>  {
>  	long ret =3D timeout ? timeout : 1;
> -	unsigned int seq, shared_count;
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
> -	int i;
>  =

> -retry:
> -	shared_count =3D 0;
> -	seq =3D read_seqcount_begin(&obj->seq);
>  	rcu_read_lock();

I missed this in my previous conversion reviews, but pls move the
rcu_read_lock into the iterator. That should simplify the flow in all of
these quite a bit more, and since the iter_next_unlocked grabs a full
reference for the iteration body we really don't need that protected by
rcu.

We can't toss rcu protection for dma_resv anytime soon (if ever), but we
can at least make it an implementation detail.

> -	i =3D -1;
> -
> -	fence =3D dma_resv_excl_fence(obj);
> -	if (fence && !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> -		if (!dma_fence_get_rcu(fence))
> -			goto unlock_retry;
> +	dma_resv_iter_begin(&cursor, obj, wait_all);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		rcu_read_unlock();
>  =

> -		if (dma_fence_is_signaled(fence)) {
> -			dma_fence_put(fence);
> -			fence =3D NULL;
> +		ret =3D dma_fence_wait_timeout(fence, intr, ret);
> +		if (ret <=3D 0) {
> +			dma_resv_iter_end(&cursor);
> +			return ret;
>  		}
>  =

> -	} else {
> -		fence =3D NULL;
> -	}
> -
> -	if (wait_all) {
> -		struct dma_resv_list *fobj =3D dma_resv_shared_list(obj);
> -
> -		if (fobj)
> -			shared_count =3D fobj->shared_count;
> -
> -		for (i =3D 0; !fence && i < shared_count; ++i) {
> -			struct dma_fence *lfence;
> -
> -			lfence =3D rcu_dereference(fobj->shared[i]);
> -			if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> -				     &lfence->flags))
> -				continue;
> -
> -			if (!dma_fence_get_rcu(lfence))
> -				goto unlock_retry;
> -
> -			if (dma_fence_is_signaled(lfence)) {
> -				dma_fence_put(lfence);
> -				continue;
> -			}
> -
> -			fence =3D lfence;
> -			break;
> -		}
> +		rcu_read_lock();
>  	}
> -
> +	dma_resv_iter_end(&cursor);
>  	rcu_read_unlock();
> -	if (fence) {
> -		if (read_seqcount_retry(&obj->seq, seq)) {
> -			dma_fence_put(fence);
> -			goto retry;
> -		}
>  =

> -		ret =3D dma_fence_wait_timeout(fence, intr, ret);
> -		dma_fence_put(fence);
> -		if (ret > 0 && wait_all && (i + 1 < shared_count))
> -			goto retry;
> -	}
>  	return ret;
> -
> -unlock_retry:
> -	rcu_read_unlock();
> -	goto retry;

I think we still have the same semantics, and it's so much tidier.

With the rcu_read_unlock stuff into iterators (also applies to previous
two patches):

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  }
>  EXPORT_SYMBOL_GPL(dma_resv_wait_timeout);
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
