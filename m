Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A0847D90C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 23:00:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DF5D6101C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:00:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C83CC606D5; Wed, 22 Dec 2021 22:00:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4176E60DA3;
	Wed, 22 Dec 2021 22:00:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 249FB60B99
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:00:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 18834606D5; Wed, 22 Dec 2021 22:00:27 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id E9563606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:00:24 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id y13so13756133edd.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 14:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=m8mX4/UdUbjdrXOKj5oiii6jZCrjjYboxkooYivOSes=;
 b=C6YL49aVL0Oj1jNWfDIZXvrmssZ60+vrU7PxuCyOZdoIfC9LSeHPc5/Tk04IkDjMhl
 q8etLWrL7xw1S3EHDcM8owQh8bmvcD+sr+uQYPfm1t1HV3mig/Q7Ee+OTDQpkCzJ9KIS
 7+RIxzQqb1bjUmL8zhu2dXzy3Tloxta3gSj0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=m8mX4/UdUbjdrXOKj5oiii6jZCrjjYboxkooYivOSes=;
 b=DajC/MO4gvDBTM5SU2/v2+imALUyyi8fo2aPq5xfEZ7L6COMIZDgM/xPTz+ZjpAr8c
 AOfhC3UXX0AqwCI/0onsYUPxD4eYvog6aXNs3GjFGH4J2/8gyTcTs1yJwV0I+jOjjQQN
 UdgyOOdna7UBSfTko0hVPFb2/u1LlCiZcNBuN0SyO5bZAQ/uSsDKwx0VXiK7PuctyHXJ
 yNnnDJfVcE53QjeT/8mF/tmN9H44MXAgYlaE0KOt/b4SVTwQSsDtMQMUnNezMm+YfdyS
 1uBZAKKDfz8msgr+jqEwKOJhqZsky22is2U0rsz5KbxjVwlLoTgaZGn7dQw6OySBnvTZ
 WNSg==
X-Gm-Message-State: AOAM532JbNQhcFE8lnN5eXEw3iKr+bpUZnQ6EUGJKE/u7QavsiuegtUO
 woSbm0C7YUPGhlGw3oAs11Vhfw==
X-Google-Smtp-Source: ABdhPJxHQVpLGW7NlsLZAnbq1c3soRN4OLiqGnh2JsLWSBMBf+b+T2OITKHWwuF1MFnpHqjkDUCC6g==
X-Received: by 2002:a17:907:7e99:: with SMTP id
 qb25mr3962494ejc.534.1640210423947; 
 Wed, 22 Dec 2021 14:00:23 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id hc40sm1104821ejc.72.2021.12.22.14.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 14:00:23 -0800 (PST)
Date: Wed, 22 Dec 2021 23:00:21 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOf9XAOsRJruwAt@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-19-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-19-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 18/24] dma-buf: add enum dma_resv_usage
 v3
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

On Tue, Dec 07, 2021 at 01:34:05PM +0100, Christian K=F6nig wrote:
> This change adds the dma_resv_usage enum and allows us to specify why a
> dma_resv object is queried for its containing fences.
> =

> Additional to that a dma_resv_usage_rw() helper function is added to aid
> retrieving the fences for a read or write userspace submission.
> =

> This is then deployed to the different query functions of the dma_resv
> object and all of their users. When the write paratermer was previously
> true we now use DMA_RESV_USAGE_WRITE and DMA_RESV_USAGE_READ otherwise.
> =

> v2: add KERNEL/OTHER in separate patch
> v3: some kerneldoc suggestions by Daniel
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Just commenting on the kerneldoc here.

> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 40ac9d486f8f..d96d8ca9af56 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -49,6 +49,49 @@ extern struct ww_class reservation_ww_class;
>  =

>  struct dma_resv_list;
>  =

> +/**
> + * enum dma_resv_usage - how the fences from a dma_resv obj are used
> + *
> + * This enum describes the different use cases for a dma_resv object and
> + * controls which fences are returned when queried.

We need to link here to both dma_buf.resv and from there to here.

Also we had a fair amount of text in the old dma_resv fields which should
probably be included here.

> + */
> +enum dma_resv_usage {
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

I think the above would benefit from at least a link each to &dma_buf.resv
for further discusion.

Plus the READ flag needs a huge warning that in general it does _not_
guarantee that neither there's no writes possible, nor that the writes can
be assumed mistakes and dropped (on buffer moves e.g.).

Drivers can only make further assumptions for driver-internal dma_resv
objects (e.g. on vm/pagetables) or when the fences are all fences of the
same driver (e.g. the special sync rules amd has that takes the fence
owner into account).

We have this documented in the dma_buf.resv rules, but since it came up
again in a discussion with Thomas H. somewhere, it's better to hammer this
in a few more time. Specically in generally ignoring READ fences for
buffer moves (well the copy job, memory freeing still has to wait for all
of them) is a correctness bug.

Maybe include a big warning that really the difference between READ and
WRITE should only matter for implicit sync, and _not_ for anything else
the kernel does.

I'm assuming the actual replacement is all mechanical, so I skipped that
one for now, that's for next year :-)
-Daniel

> +	 */
> +	DMA_RESV_USAGE_READ,
> +};
> +
> +/**
> + * dma_resv_usage_rw - helper for implicit sync
> + * @write: true if we create a new implicit sync write
> + *
> + * This returns the implicit synchronization usage for write or read acc=
esses,
> + * see enum dma_resv_usage.
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
> @@ -147,8 +190,8 @@ struct dma_resv_iter {
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
> @@ -178,14 +221,14 @@ struct dma_fence *dma_resv_iter_next(struct dma_res=
v_iter *cursor);
>   * dma_resv_iter_begin - initialize a dma_resv_iter object
>   * @cursor: The dma_resv_iter object to initialize
>   * @obj: The dma_resv object which we want to iterate over
> - * @all_fences: If all fences should be returned or just the exclusive o=
ne
> + * @usage: controls which fences to include, see enum dma_resv_usage.
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

> @@ -242,7 +285,7 @@ static inline bool dma_resv_iter_is_restarted(struct =
dma_resv_iter *cursor)
>   * dma_resv_for_each_fence - fence iterator
>   * @cursor: a struct dma_resv_iter pointer
>   * @obj: a dma_resv object pointer
> - * @all_fences: true if all fences should be returned
> + * @usage: controls which fences to return
>   * @fence: the current fence
>   *
>   * Iterate over the fences in a struct dma_resv object while holding the
> @@ -251,8 +294,8 @@ static inline bool dma_resv_iter_is_restarted(struct =
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

> @@ -419,14 +462,14 @@ void dma_resv_add_shared_fence(struct dma_resv *obj=
, struct dma_fence *fence);
>  void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
>  			     struct dma_fence *fence);
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce);
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
>  =

>  #endif /* _LINUX_RESERVATION_H */
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
