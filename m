Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F9B45DE30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 17:00:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9D8B6216C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 16:00:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8422861A4D; Thu, 25 Nov 2021 16:00:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0ABAB60BD0;
	Thu, 25 Nov 2021 16:00:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 16B196049C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 15:59:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1293160BD0; Thu, 25 Nov 2021 15:59:59 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 0913E6049C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 15:59:57 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id s13so12683723wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 07:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=x0f7TyhCyQOlbMzxvokkT1IDB1t8o4k6EuBMauIRzMo=;
 b=ZNxhEKp36LI7WbqzSGWIjAxZYfSBP7NRppZw0kR7RrHAIZNkkoxA1AKdYHG4VsF3tQ
 nd/wYHSvH4K4EqETGKuQfgNJQMxUk3cNuZ9u/4ovaKYZHsUPTfwqfecDI+lLirPfSFat
 Xwaw3BiDMHk6vfmsAxCklSm8QgXJgkBVdmcuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=x0f7TyhCyQOlbMzxvokkT1IDB1t8o4k6EuBMauIRzMo=;
 b=LK+VUvaPuZoWFn96pbsjhUD0p4cZ+sHS0ahvKzbsTnXZ6btopztMGlvMMSkTqjMyJn
 cLW/u3BE1V0hqBlCLqwvgPgKhZUKwcQwTI8XkctQo5YBiP4yKbqD5cDay4g3UbcAGxwK
 oZot2fOtKPi1/ies8sVWaH/VHb6XVwf+Pf+EW6rvlM5d9mChRp9cB+Yzw53gfulcWQ+y
 FF9SSvyC0uekVuZXZe3T/5NZBJu1VxAt4WAD91RqHdTcYx656jN7xzyT5aoGW/r+tcHS
 EpH8FoWFb+aNtxsARNPBe1NOoI6smfkxYlxIW1mUA+q3bnWziGxvOJQ4zmqcVYZLm2hF
 ZGig==
X-Gm-Message-State: AOAM5337Win2+jfOBV2zUQ/RxHRx1CmVkpW8E0f+syjwnGE14Z0CoKRu
 iZ6wveH1Mr2+0FlKIs7Ur6FI+w==
X-Google-Smtp-Source: ABdhPJytYFDJHPBsz8eB6XL8F7LOuQqnhmREZpGS6+MkDLsSQPsT/q95AG0UKtsOA3EDqk53fMjAxQ==
X-Received: by 2002:a5d:6e85:: with SMTP id k5mr7684803wrz.545.1637855996036; 
 Thu, 25 Nov 2021 07:59:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z11sm3236854wrt.58.2021.11.25.07.59.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:59:55 -0800 (PST)
Date: Thu, 25 Nov 2021 16:59:53 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YZ+y+Uwo809qtvs5@phenom.ffwll.local>
References: <20211123142111.3885-1-christian.koenig@amd.com>
 <20211123142111.3885-23-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123142111.3885-23-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 22/26] dma-buf: add enum dma_resv_usage
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

On Tue, Nov 23, 2021 at 03:21:07PM +0100, Christian K=F6nig wrote:
> This change adds the dma_resv_usage enum and allows us to specify why a
> dma_resv object is queried for its containing fences.
> =

> Additional to that a dma_resv_usage_rw() helper function is added to aid
> retrieving the fences for a read or write userspace submission.
> =

> This is then deployed to the different query functions of the dma_resv
> object and all of their users.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Just a few comments on the kenreldoc while I scroll through.

>  EXPORT_SYMBOL(ib_umem_dmabuf_map_pages);
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 062571c04bca..37552935bca6 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -49,6 +49,86 @@ extern struct ww_class reservation_ww_class;
>  =

>  struct dma_resv_list;
>  =

> +/**
> + * enum dma_resv_usage - how the fences from a dma_resv obj are used
> + *
> + * This enum describes the different use cases for a dma_resv object and
> + * controls which fences are returned when queried.
> + *
> + * An important fact is that there is the order KERNEL<WRITE<READ<OTHER =
and
> + * when the dma_resv object is asked for fences for one use case the fen=
ces
> + * for the lower use case are returned as well.

Might be good to replicate this to all functions that take a
dma_resv_usage flag, and then also add a "See enum dma_resv_usage for more
information." so we get a clickable hyperlink too.

> + *
> + * For example when asking for WRITE fences then the KERNEL fences are r=
eturned
> + * as well. Similar when asked for READ fences then both WRITE and KERNEL
> + * fences are returned as well.
> + */
> +enum dma_resv_usage {
> +	/**
> +	 * @DMA_RESV_USAGE_KERNEL: For in kernel memory management only.
> +	 *
> +	 * This should only be used for things like copying or clearing memory
> +	 * with a DMA hardware engine for the purpose of kernel memory
> +	 * management.
> +	 *
> +         * Drivers *always* need to wait for those fences before accessi=
ng the
> +	 * resource protected by the dma_resv object. The only exception for
> +	 * that is when the resource is known to be locked down in place by
> +	 * pinning it previously.

Should dma_buf_pin also do the wait for kernel fences? I think that would
also ba e bit clearer semantics in the dma-buf patch which does these
waits for us.

Or should dma_buf_pin be pipelined and it's up to callers to wait? For kms
that's definitely the semantics we want, but it's a bit playing with fire
situation, so maybe dma-buf should get the more idiot proof semantics?

> +	 */
> +	DMA_RESV_USAGE_KERNEL,
> +
> +	/**
> +	 * @DMA_RESV_USAGE_WRITE: Implicit write synchronization.
> +	 *
> +	 * This should only be used for userspace command submissions which add
> +	 * an implicit write dependency.
> +	 */
> +	DMA_RESV_USAGE_WRITE,
> +
> +	/**
> +	 * @DMA_RESV_USAGE_READ: Implicit read synchronization.
> +	 *
> +	 * This should only be used for userspace command submissions which add
> +	 * an implicit read dependency.
> +	 */
> +	DMA_RESV_USAGE_READ,
> +
> +	/**
> +	 * @DMA_RESV_USAGE_OTHER: No implicit sync.
> +	 *
> +	 * This should be used for operations which don't want to add an
> +	 * implicit dependency at all, but still have a dependency on memory
> +	 * management.
> +	 *
> +	 * This might include things like preemption fences as well as device
> +	 * page table updates or even userspace command submissions.

I think we should highlight a bit more that for explicitly synchronized
userspace like vk OTHER is the normal case. So really not an exception.
Ofc aside from amdkgf there's currently no driver doing this, but really
we should have lots of them ...


> +	 *
> +	 * The kernel memory management *always* need to wait for those fences
> +	 * before moving or freeing the resource protected by the dma_resv
> +	 * object.
> +	 */
> +	DMA_RESV_USAGE_OTHER
> +};
> +
> +/**
> + * dma_resv_usage_rw - helper for implicit sync
> + * @write: true if we create a new implicit sync write
> + *
> + * This returns the implicit synchronization usage for write or read acc=
esses.

Pls add "See enum dma_resv_usage for more details." or so. Never hurts to
be plentiful with links :-)

> + */
> +static inline enum dma_resv_usage dma_resv_usage_rw(bool write)
> +{
> +	/* This looks confusing at first sight, but is indeed correct.
> +	 *
> +	 * The rational is that new write operations needs to wait for the
> +	 * existing read and write operations to finish.
> +	 * But a new read operation only needs to wait for the existing write
> +	 * operations to finish.
> +	 */
> +	return write ? DMA_RESV_USAGE_READ : DMA_RESV_USAGE_WRITE;
> +}
> +
>  /**
>   * struct dma_resv - a reservation object manages fences for a buffer
>   *
> @@ -147,8 +227,8 @@ struct dma_resv_iter {
>  	/** @obj: The dma_resv object we iterate over */
>  	struct dma_resv *obj;
>  =

> -	/** @all_fences: If all fences should be returned */
> -	bool all_fences;
> +	/** @usage: Controls which fences are returned */
> +	enum dma_resv_usage usage;
>  =

>  	/** @fence: the currently handled fence */
>  	struct dma_fence *fence;
> @@ -178,14 +258,14 @@ struct dma_fence *dma_resv_iter_next(struct dma_res=
v_iter *cursor);
>   * dma_resv_iter_begin - initialize a dma_resv_iter object
>   * @cursor: The dma_resv_iter object to initialize
>   * @obj: The dma_resv object which we want to iterate over
> - * @all_fences: If all fences should be returned or just the exclusive o=
ne
> + * @usage: controls which fences to return

Please add the blurb here I mentioned above. Maybe adjust the text to use
the neatly highlighted @usage.

>   */
>  static inline void dma_resv_iter_begin(struct dma_resv_iter *cursor,
>  				       struct dma_resv *obj,
> -				       bool all_fences)
> +				       enum dma_resv_usage usage)
>  {
>  	cursor->obj =3D obj;
> -	cursor->all_fences =3D all_fences;
> +	cursor->usage =3D usage;
>  	cursor->fence =3D NULL;
>  }
>  =

> @@ -242,7 +322,7 @@ static inline bool dma_resv_iter_is_restarted(struct =
dma_resv_iter *cursor)
>   * dma_resv_for_each_fence - fence iterator
>   * @cursor: a struct dma_resv_iter pointer
>   * @obj: a dma_resv object pointer
> - * @all_fences: true if all fences should be returned
> + * @usage: controls which fences to return
>   * @fence: the current fence
>   *

Same, another place that needs the @usage clarification.

>   * Iterate over the fences in a struct dma_resv object while holding the
> @@ -251,8 +331,8 @@ static inline bool dma_resv_iter_is_restarted(struct =
dma_resv_iter *cursor)
>   * valid as long as the lock is held and so no extra reference to the fe=
nce is
>   * taken.
>   */
> -#define dma_resv_for_each_fence(cursor, obj, all_fences, fence)	\
> -	for (dma_resv_iter_begin(cursor, obj, all_fences),	\
> +#define dma_resv_for_each_fence(cursor, obj, usage, fence)	\
> +	for (dma_resv_iter_begin(cursor, obj, usage),	\
>  	     fence =3D dma_resv_iter_first(cursor); fence;	\
>  	     fence =3D dma_resv_iter_next(cursor))
>  =

> @@ -421,14 +501,14 @@ void dma_resv_replace_fences(struct dma_resv *obj, =
uint64_t context,
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce);
>  void dma_resv_prune(struct dma_resv *obj);
>  void dma_resv_prune_unlocked(struct dma_resv *obj);
> -int dma_resv_get_fences(struct dma_resv *obj, bool write,
> +int dma_resv_get_fences(struct dma_resv *obj, enum dma_resv_usage usage,
>  			unsigned int *num_fences, struct dma_fence ***fences);
> -int dma_resv_get_singleton(struct dma_resv *obj, bool write,
> +int dma_resv_get_singleton(struct dma_resv *obj, enum dma_resv_usage usa=
ge,
>  			   struct dma_fence **fence);
>  int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src);
> -long dma_resv_wait_timeout(struct dma_resv *obj, bool wait_all, bool int=
r,
> -			   unsigned long timeout);
> -bool dma_resv_test_signaled(struct dma_resv *obj, bool test_all);
> +long dma_resv_wait_timeout(struct dma_resv *obj, enum dma_resv_usage usa=
ge,
> +			   bool intr, unsigned long timeout);
> +bool dma_resv_test_signaled(struct dma_resv *obj, enum dma_resv_usage us=
age);
>  void dma_resv_describe(struct dma_resv *obj, struct seq_file *seq);

I took endless amounts of discussions, but I think we're arriving at
something really neat and tiny here now finally. Both semantics, and how
drivers use them.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
