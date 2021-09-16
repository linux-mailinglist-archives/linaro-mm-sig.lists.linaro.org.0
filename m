Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5DC40D9A3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 14:15:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2108663421
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 12:15:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1BA4F62EA6; Thu, 16 Sep 2021 12:15:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19B0760833;
	Thu, 16 Sep 2021 12:15:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0EC63604C3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 12:15:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0A83760833; Thu, 16 Sep 2021 12:15:51 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id E2B7D604C3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 12:15:48 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 v20-20020a1cf714000000b002e71f4d2026so5664666wmh.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 05:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IRRs5XneX2vo2Gm7yuvudORdb1lagFg+pbee5Tr6lgg=;
 b=DtkJ/8rzTreJI6XHSbC7+rydW84FqEJvZc+Qkw3kqbSN0EPOpQF7G+oAjoI5orQOsi
 87cMsjfobWQEK+I6pzNzcv+DxCNEdFpDg2KIqKoTN5WAy8ef2WZTKpQbG+vXNtLZb/b7
 Uj5sq8zvpBkDyR7v4Km/YZLWrmwmRsgLJLPUQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IRRs5XneX2vo2Gm7yuvudORdb1lagFg+pbee5Tr6lgg=;
 b=M37woBMlXKyDbdIU84qKYLg9J0kkIZc1QiH3s+/S479LEgfK0sxYAJTQFQySlkqdGQ
 XmFqubLByndxAp3uGqjfnZX+DBdSomlBNpyWwdQxaJyphjDQMXcrbUP2+3oV0LYBBJCd
 QU7dIZ9W4dw1Dq6oxykHVW+WNxyar49isIt7eHEr679YL+ilX0R863gbuSq41NmJydZb
 aIcoy9CrSD4QGgfHHzkAg+Ph4tuBrFx6yHPgJN2oNVhBphfPQj/c9meDYNGzdk9o+WLh
 DrT1ZrqaPintXalEFG92ecpzUo+i10C93o+SgmovVmr8ESS4dMJmfeRYCDPgetj1fMQC
 iSMg==
X-Gm-Message-State: AOAM530AGHiDHJZuBw9zESpzeLnkhGpiJZvcNdZb95JN3UwEosAmyOaW
 mztL7umR0OYoxb47L0qeKdFEkQ==
X-Google-Smtp-Source: ABdhPJxW1rIOmeDct5A4v6mCkBGYPjWqfoCdG963K5HHIFyuGzPWLCEVF9AqCiqTuD6U9Gvl6w1V+Q==
X-Received: by 2002:a1c:e915:: with SMTP id q21mr9796894wmc.180.1631794547927; 
 Thu, 16 Sep 2021 05:15:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a25sm7376193wmj.34.2021.09.16.05.15.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 05:15:47 -0700 (PDT)
Date: Thu, 16 Sep 2021 14:15:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUM1cY5HKixNUnQn@phenom.ffwll.local>
References: <20210916113042.3631-1-christian.koenig@amd.com>
 <20210916113042.3631-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916113042.3631-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/26] dma-buf: add
 dma_resv_for_each_fence_unlocked v2
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

On Thu, Sep 16, 2021 at 01:30:17PM +0200, Christian K=F6nig wrote:
> Abstract the complexity of iterating over all the fences
> in a dma_resv object.
> =

> The new loop handles the whole RCU and retry dance and
> returns only fences where we can be sure we grabbed the
> right one.
> =

> v2: fix accessing the shared fences while they might be freed,
>     improve kerneldoc, rename _cursor to _iter, add
>     dma_resv_iter_is_exclusive
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Replied in the other thread with the fully typed out example, this really
needs iter_init/next/end here. Or it's just way too fragile and tricky for
a generic helper that we roll out everywhere.
-Daniel

> ---
>  drivers/dma-buf/dma-resv.c | 62 ++++++++++++++++++++++++++++++++++++++
>  include/linux/dma-resv.h   | 50 ++++++++++++++++++++++++++++++
>  2 files changed, 112 insertions(+)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 84fbe60629e3..77083170ec3b 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -323,6 +323,68 @@ void dma_resv_add_excl_fence(struct dma_resv *obj, s=
truct dma_fence *fence)
>  }
>  EXPORT_SYMBOL(dma_resv_add_excl_fence);
>  =

> +/**
> + * dma_resv_walk_unlocked - walk over fences in a dma_resv obj
> + * @obj: the dma_resv object
> + * @cursor: cursor to record the current position
> + * @all_fences: true returns also the shared fences
> + * @first: if we should start over
> + *
> + * Return all the fences in the dma_resv object which are not yet signal=
ed.
> + * The returned fence has an extra local reference so will stay alive.
> + * If a concurrent modify is detected the whole iterator is started over=
 again.
> + */
> +struct dma_fence *dma_resv_walk_unlocked(struct dma_resv *obj,
> +					 struct dma_resv_iter *cursor,
> +					 bool all_fences, bool first)
> +{
> +	struct dma_fence *fence =3D NULL;
> +
> +	first |=3D read_seqcount_retry(&obj->seq, cursor->seq);
> +	do {
> +		/* Drop the reference from the previous round */
> +		dma_fence_put(fence);
> +
> +		cursor->is_first =3D first;
> +		if (first) {
> +			cursor->seq =3D read_seqcount_begin(&obj->seq);
> +			cursor->index =3D -1;
> +			cursor->fences =3D dma_resv_shared_list(obj);
> +
> +			fence =3D dma_resv_excl_fence(obj);
> +			if (fence && test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> +					      &fence->flags))
> +				fence =3D NULL;
> +		} else {
> +			fence =3D NULL;
> +		}
> +
> +		if (fence) {
> +			fence =3D dma_fence_get_rcu(fence);
> +		} else if (all_fences && cursor->fences) {
> +			struct dma_resv_list *fences =3D cursor->fences;
> +
> +			while (++cursor->index < fences->shared_count) {
> +				fence =3D rcu_dereference(
> +					fences->shared[cursor->index]);
> +				if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> +					      &fence->flags))
> +					break;
> +			}
> +			if (cursor->index < fences->shared_count)
> +				fence =3D dma_fence_get_rcu(fence);
> +			else
> +				fence =3D NULL;
> +		}
> +
> +		/* For the eventually next round */
> +		first =3D true;
> +	} while (read_seqcount_retry(&obj->seq, cursor->seq));
> +
> +	return fence;
> +}
> +EXPORT_SYMBOL_GPL(dma_resv_walk_unlocked);
> +
>  /**
>   * dma_resv_copy_fences - Copy all fences from src to dst.
>   * @dst: the destination reservation object
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 9100dd3dc21f..1cd686384c71 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -149,6 +149,53 @@ struct dma_resv {
>  	struct dma_resv_list __rcu *fence;
>  };
>  =

> +/**
> + * struct dma_resv_iter - current position into the dma_resv fences
> + *
> + * Don't touch this directly in the driver, use the accessor function in=
stead.
> + */
> +struct dma_resv_iter {
> +	/** @seq: sequence number to check for modifications */
> +	unsigned int seq;
> +
> +	/** @index: index into the shared fences */
> +	unsigned int index;
> +
> +	/** @fences: the shared fences */
> +	struct dma_resv_list *fences;
> +
> +	/** @is_first: true if this is the first returned fence */
> +	bool is_first;
> +};
> +
> +/**
> + * dma_resv_for_each_fence_unlocked - fence iterator
> + * @obj: a dma_resv object pointer
> + * @cursor: a struct dma_resv_iter pointer
> + * @all_fences: true if all fences should be returned
> + * @fence: the current fence
> + *
> + * Iterate over the fences in a struct dma_resv object without holding t=
he
> + * dma_resv::lock. The RCU read side lock must be hold when using this, =
but can
> + * be dropped and re-taken as necessary inside the loop. @all_fences con=
trols
> + * if the shared fences are returned as well.
> + */
> +#define dma_resv_for_each_fence_unlocked(obj, cursor, all_fences, fence)=
    \
> +	for (fence =3D dma_resv_walk_unlocked(obj, cursor, all_fences, true); \
> +	     fence; dma_fence_put(fence),				    \
> +	     fence =3D dma_resv_walk_unlocked(obj, cursor, all_fences, false))
> +
> +/**
> + * dma_resv_iter_is_exclusive - test if the current fence is the exclusi=
ve one
> + * @cursor: the cursor of the current position
> + *
> + * Returns true if the currently returned fence is the exclusive one.
> + */
> +static inline bool dma_resv_iter_is_exclusive(struct dma_resv_iter *curs=
or)
> +{
> +	return cursor->index =3D=3D -1;
> +}
> +
>  #define dma_resv_held(obj) lockdep_is_held(&(obj)->lock.base)
>  #define dma_resv_assert_held(obj) lockdep_assert_held(&(obj)->lock.base)
>  =

> @@ -366,6 +413,9 @@ void dma_resv_fini(struct dma_resv *obj);
>  int dma_resv_reserve_shared(struct dma_resv *obj, unsigned int num_fence=
s);
>  void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *f=
ence);
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce);
> +struct dma_fence *dma_resv_walk_unlocked(struct dma_resv *obj,
> +					 struct dma_resv_iter *cursor,
> +					 bool first, bool all_fences);
>  int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **pfence_=
excl,
>  			unsigned *pshared_count, struct dma_fence ***pshared);
>  int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src);
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
