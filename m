Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 239C740FA43
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:35:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BB8363514
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:35:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6A66963524; Fri, 17 Sep 2021 14:35:32 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F28E6341D;
	Fri, 17 Sep 2021 14:35:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7FF1B6328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:35:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 72E126341D; Fri, 17 Sep 2021 14:35:27 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 6A4A06328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:35:25 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id x6so15492255wrv.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=qUsEEoXzY2X8rmoz2snm6FddyjyVftZB08rOLj8eGPk=;
 b=V69LD8XNFIK2pA5BGDgFz22fu1vZAC6dxuDh0z+ZAwT/+011bsa2C4OfgYKtSznaZy
 sQoc/4fK9UNRReXachSizIL7ICC3VLi5NxOqzeKTx0sAPQoLqWhHUCk+9sZwgsCjEFs0
 zUhCfZc+JsS7rwUGMQw6BqhIYA3l4rqZADzcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=qUsEEoXzY2X8rmoz2snm6FddyjyVftZB08rOLj8eGPk=;
 b=RW8tsUVwIerxqmzXtRJt1JAaMlD/FeCUUcBbeuufQIZVmid2cIPT3DAq1Nuv0+YodT
 lBlpUNUJnb7hH+dtk1kx9mjKYv8QrhDfAvdgGzeNHWe2oZfz1IB7i7MmI7F9Y6RwX6qG
 PWERfuIOQuPvB6bUUJwNztp00JlmXur6929nO+FWqlqtPGlt1S0/8pTFyH8agFBqPHtG
 GstpY/JIVaRC++Z8N6f+vWC58LEi5nO46EeA+CZXz+vPR8+fbEBZv951VO+TbhBmXh/7
 eWFzZl4y4I306AvOd7Vt02iy9tdRzt0OFLWqX03iwPzyoBkB7JaCYGrS1STEwHRHaexZ
 mNbA==
X-Gm-Message-State: AOAM533BAVKo0fMrDS76ccMRBX+BOyY9Ue0k5Ihdxg9b5iNigagAIdRB
 meIVjNDSGvMllHQVln88JYURfA==
X-Google-Smtp-Source: ABdhPJwsHUAz1Ud7ieLF8h6emjPzljHMSSKQjwl95CP1FZbeae+6NCR/kaILhhfvihuz8brhiisDzQ==
X-Received: by 2002:a5d:554e:: with SMTP id g14mr12646627wrw.48.1631889324502; 
 Fri, 17 Sep 2021 07:35:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v17sm6813802wrr.69.2021.09.17.07.35.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:35:23 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:35:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSnqqsMjXOPNB6W@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 03/26] dma-buf: use new iterator in
 dma_resv_copy_fences
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

On Fri, Sep 17, 2021 at 02:34:50PM +0200, Christian K=F6nig wrote:
> This makes the function much simpler since the complex
> retry logic is now handled else where.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 86 ++++++++++++++++----------------------
>  1 file changed, 35 insertions(+), 51 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index a3c79a99fb44..406150dea5e4 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -426,74 +426,58 @@ EXPORT_SYMBOL_GPL(dma_resv_iter_walk);
>   */
>  int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src)
>  {
> -	struct dma_resv_list *src_list, *dst_list;
> -	struct dma_fence *old, *new;
> -	unsigned int i;
> +	struct dma_resv_iter cursor;
> +	struct dma_resv_list *list;
> +	struct dma_fence *f, *excl;
>  =

>  	dma_resv_assert_held(dst);
>  =

> -	rcu_read_lock();
> -	src_list =3D dma_resv_shared_list(src);
> -
> -retry:
> -	if (src_list) {
> -		unsigned int shared_count =3D src_list->shared_count;
> -
> -		rcu_read_unlock();
> +	list =3D NULL;
> +	excl =3D NULL;
>  =

> -		dst_list =3D dma_resv_list_alloc(shared_count);
> -		if (!dst_list)
> -			return -ENOMEM;
> +	rcu_read_lock();
> +	dma_resv_iter_begin(&cursor, src, true);
> +	dma_resv_for_each_fence_unlocked(&cursor, f) {
>  =

> -		rcu_read_lock();
> -		src_list =3D dma_resv_shared_list(src);
> -		if (!src_list || src_list->shared_count > shared_count) {
> -			kfree(dst_list);
> -			goto retry;
> -		}
> +		if (cursor.is_first) {

Maybe have a wrapper for this, like dma_resv_iter_is_reset or is_first or
is_restart (my preference) with some nice docs that this returns true
everytime we had to restart the sequence?

Otherwise I fully agree, this is so much better with all the hairy
restarting and get_rcu and test_bit shovelled away somewhere.

Either way (but I much prefer a wrapper for is_first):

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +			dma_resv_list_free(list);
> +			dma_fence_put(excl);
>  =

> -		dst_list->shared_count =3D 0;
> -		for (i =3D 0; i < src_list->shared_count; ++i) {
> -			struct dma_fence __rcu **dst;
> -			struct dma_fence *fence;
> +			if (cursor.fences) {
> +				unsigned int cnt =3D cursor.fences->shared_count;
>  =

> -			fence =3D rcu_dereference(src_list->shared[i]);
> -			if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> -				     &fence->flags))
> -				continue;
> +				rcu_read_unlock();
> +				list =3D dma_resv_list_alloc(cnt);
> +				if (!list) {
> +					dma_resv_iter_end(&cursor);
> +					return -ENOMEM;
> +				}
>  =

> -			if (!dma_fence_get_rcu(fence)) {
> -				dma_resv_list_free(dst_list);
> -				src_list =3D dma_resv_shared_list(src);
> -				goto retry;
> -			}
> +				list->shared_count =3D 0;
> +				rcu_read_lock();
>  =

> -			if (dma_fence_is_signaled(fence)) {
> -				dma_fence_put(fence);
> -				continue;
> +			} else {
> +				list =3D NULL;
>  			}
> -
> -			dst =3D &dst_list->shared[dst_list->shared_count++];
> -			rcu_assign_pointer(*dst, fence);
> +			excl =3D NULL;
>  		}
> -	} else {
> -		dst_list =3D NULL;
> -	}
>  =

> -	new =3D dma_fence_get_rcu_safe(&src->fence_excl);
> +		dma_fence_get(f);
> +		if (dma_resv_iter_is_exclusive(&cursor))
> +			excl =3D f;
> +		else
> +			RCU_INIT_POINTER(list->shared[list->shared_count++], f);
> +	}
> +	dma_resv_iter_end(&cursor);
>  	rcu_read_unlock();
>  =

> -	src_list =3D dma_resv_shared_list(dst);
> -	old =3D dma_resv_excl_fence(dst);
> -
>  	write_seqcount_begin(&dst->seq);
> -	/* write_seqcount_begin provides the necessary memory barrier */
> -	RCU_INIT_POINTER(dst->fence_excl, new);
> -	RCU_INIT_POINTER(dst->fence, dst_list);
> +	excl =3D rcu_replace_pointer(dst->fence_excl, excl, dma_resv_held(dst));
> +	list =3D rcu_replace_pointer(dst->fence, list, dma_resv_held(dst));
>  	write_seqcount_end(&dst->seq);
>  =

> -	dma_resv_list_free(src_list);
> -	dma_fence_put(old);
> +	dma_resv_list_free(list);
> +	dma_fence_put(excl);
>  =

>  	return 0;
>  }
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
