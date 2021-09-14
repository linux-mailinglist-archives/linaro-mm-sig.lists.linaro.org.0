Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEB940B58F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 19:04:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0185462DEF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 17:04:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EA1A26242B; Tue, 14 Sep 2021 17:04:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49CA261A44;
	Tue, 14 Sep 2021 17:04:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 01CB76194E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 17:04:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EB53561A44; Tue, 14 Sep 2021 17:04:36 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id D80FB6194E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 17:04:34 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id t8so16347499wrq.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 10:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=s6NBKR7y7iR6nyMoIHrWCanthQm5/nplOlRlK5HkjxQ=;
 b=Eu2o4mosQzMA4qcdoIqmvS5dtfrxnUBmvXP+vlCuK9h7Tku1NUnXMFwfrI2Kby4v36
 6r2SN1eTzfpK+dm1b3QGzU1WqA8SYV71YO974fWKLjvVOdCbcSDqIcvjD7Lt0QVDYyzo
 tiPXOaEj9JcwfpeKaaZlRZm0KpSxZ/3rKzJN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=s6NBKR7y7iR6nyMoIHrWCanthQm5/nplOlRlK5HkjxQ=;
 b=22bpZSmhM+p/+Muc3ZyOw9Z6VkyCzbnLGB/RR/jjwicgrX0fxcH4uT1GwzDaEyDz3H
 9yRau4/kfEnVfzkoMOclQvYaF4GlmbMymeAreSM8crU1tGChDy2AlM4vJTxuUli5rbRk
 Qr1lU3hCQV1kEeFAC1zr4f9zk1Fl+GZpMf+znQ+S/nrwNrqL7ELlvT+FGhxFkEULFG1o
 7TfzAEpsVEDxhh4HopNLCPbWUszSPVvnITHDi8iEh4gxOXC982HRnTPtWDPtw2BLf4sI
 d/qf0OoLjpMU74XFDWzV7eIp8teQeWIH3BnNV9iwrp11YHZ/ohjHtBmmrL390c8/T6rj
 IFqw==
X-Gm-Message-State: AOAM531/nSXVVgotbhn8+WMFsnnlBQzI6wv/Bj50ANhU9Lk6S+ViElRT
 cqxmdRhclH/oweCO/wsIhYivrA==
X-Google-Smtp-Source: ABdhPJxm577Xn3MWr5qE/TxMJiVDmxQj0Go43zigyz9oIMcdgFVXnaqOY3josuoGrx90jJYkMC7fTw==
X-Received: by 2002:a5d:6590:: with SMTP id q16mr245393wru.52.1631639073700;
 Tue, 14 Sep 2021 10:04:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w14sm2269192wro.8.2021.09.14.10.04.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Sep 2021 10:04:32 -0700 (PDT)
Date: Tue, 14 Sep 2021 19:04:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUDWHw19iUMfFr7K@phenom.ffwll.local>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/14] dma-buf: add
 dma_resv_for_each_fence_unlocked
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
Cc: linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 10, 2021 at 10:26:42AM +0200, Christian K=F6nig wrote:
> Abstract the complexity of iterating over all the fences
> in a dma_resv object.
> =

> The new loop handles the whole RCU and retry dance and
> returns only fences where we can be sure we grabbed the
> right one.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 63 ++++++++++++++++++++++++++++++++++++++
>  include/linux/dma-resv.h   | 36 ++++++++++++++++++++++
>  2 files changed, 99 insertions(+)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 84fbe60629e3..213a9b7251ca 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -323,6 +323,69 @@ void dma_resv_add_excl_fence(struct dma_resv *obj, s=
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
> +					 struct dma_resv_cursor *cursor,
> +					 bool all_fences, bool first)
> +{
> +	struct dma_fence *fence =3D NULL;
> +
> +	do {
> +		/* Drop the reference from the previous round */
> +		dma_fence_put(fence);
> +
> +		cursor->is_first =3D first;
> +		if (first) {
> +			cursor->seq =3D read_seqcount_begin(&obj->seq);
> +			cursor->index =3D -1;
> +			cursor->fences =3D dma_resv_shared_list(obj);
> +			cursor->is_exclusive =3D true;
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
> +			cursor->is_exclusive =3D false;
> +			while (++cursor->index < fences->shared_count) {
> +				fence =3D rcu_dereference(fences->shared[
> +							cursor->index]);
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
> index 9100dd3dc21f..f5b91c292ee0 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -149,6 +149,39 @@ struct dma_resv {
>  	struct dma_resv_list __rcu *fence;
>  };
>  =

> +/**
> + * struct dma_resv_cursor - current position into the dma_resv fences
> + * @seq: sequence number to check
> + * @index: index into the shared fences
> + * @shared: the shared fences
> + * @is_first: true if this is the first returned fence
> + * @is_exclusive: if the current fence is the exclusive one
> + */
> +struct dma_resv_cursor {
> +	unsigned int seq;
> +	unsigned int index;
> +	struct dma_resv_list *fences;
> +	bool is_first;
> +	bool is_exclusive;
> +};

A bit a bikeshed, but I think I'd be nice to align this with the other
iterators we have, e.g. for the drm_connector list.

So struct dma_resv_fence_iter, dma_resv_fence_iter_begin/next/end().

Also I think the for_each macro must not include begin/end calls. If we
include that then it saves 2 lines of code at the cost of a pile of
awkward bugs because people break; out of the loop or return early  (only
continue is safe) and we leak a fence. Or worse.

Explicit begin/end is much more robust at a very marginal cost imo.

Otherwise I think this fence iterator is a solid concept that yeah we
should roll out everywhere.
-Daniel

> +
> +/**
> + * dma_resv_for_each_fence_unlocked - fence iterator
> + * @obj: a dma_resv object pointer
> + * @cursor: a struct dma_resv_cursor pointer
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
>  #define dma_resv_held(obj) lockdep_is_held(&(obj)->lock.base)
>  #define dma_resv_assert_held(obj) lockdep_assert_held(&(obj)->lock.base)
>  =

> @@ -366,6 +399,9 @@ void dma_resv_fini(struct dma_resv *obj);
>  int dma_resv_reserve_shared(struct dma_resv *obj, unsigned int num_fence=
s);
>  void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *f=
ence);
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce);
> +struct dma_fence *dma_resv_walk_unlocked(struct dma_resv *obj,
> +					 struct dma_resv_cursor *cursor,
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
