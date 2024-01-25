Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DC183CA95
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 19:10:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11CEB40CBD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 18:10:22 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id DDD683F37C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 18:10:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=ekuSmfoq;
	dmarc=none;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.48) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-55369c59708so1639254a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 10:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1706206214; x=1706811014; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5tOrqes/9yVROTQ69tGyE0dsjLuB7wrcHht59zsTqBI=;
        b=ekuSmfoq+0ypIoy5iFCv2axccDyyOMObR08mwHR9PoEqRSTgJ77QR1tGe85s1YvLfP
         nmoyGVjlKthneyoSgNSlSX3vVLSiOMum6WDimo58NLHNz9NJUO0KfYwf4IQLqcySC0YE
         CI+teK0re6/DGLeajBFxNCGX2RvuFSckDVXxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706206214; x=1706811014;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5tOrqes/9yVROTQ69tGyE0dsjLuB7wrcHht59zsTqBI=;
        b=nFSMvYoX5gs/Blp37B2/zyiiQgIp9p741DVYjEQLVg+AUuZ2py7M9hk5hd7cYiF1uS
         ITIhcVbr7qzB9Cl9vlLX1wAmLnVnaNlukbtk0Yad7m9bxM9ToHQTjrSgNTLhiMJXroBG
         bnNecC40Q3VzWggeHn9vZhDpC0Ld64sA678aoAyOUdkBQ80jsQZjOEPGoOOZDNY8yHtL
         KeJHbvP1FROV4iktDSqBrrynYHENwgT18VePnIl7G3eHsvqpkXrS/XiqyLF7hA4Dn+Qf
         6dllwgtHnU3oAuuZ4CN/9BXKazaigZ7kWR1YXa2KDe3rgPgFymVbjm+2GtUNcNZIizvk
         rGXA==
X-Gm-Message-State: AOJu0YyWhP88JL+aVt9hRZiK/iou7XTKow2Ak+7uxh9vInQA2fw60QwF
	2qI5bKxCdX+TRd/5aJzLrDRCSL23hT0nppqdSne2U6vLBgSKEwVRLuPyMq3H3p4=
X-Google-Smtp-Source: AGHT+IHiPqW8oQ3VVW2VkOd3YkCZla2B2xfbN2rRDbyJzKzFaaBeBkii2OIRJhk353wOIuVlybUpFg==
X-Received: by 2002:aa7:c595:0:b0:55c:c283:30c6 with SMTP id g21-20020aa7c595000000b0055cc28330c6mr63184edq.0.1706206213777;
        Thu, 25 Jan 2024 10:10:13 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id fj9-20020a0564022b8900b00559cb738c1bsm10748896edb.4.2024.01.25.10.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 10:10:13 -0800 (PST)
Date: Thu, 25 Jan 2024 19:10:11 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZbKkA68PuekJGIrP@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-usb@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20240119141402.44262-1-paul@crapouillou.net>
 <20240119141402.44262-2-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240119141402.44262-2-paul@crapouillou.net>
X-Operating-System: Linux phenom 6.6.11-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DDD683F37C
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.48:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,lwn.net,linaro.org,amd.com,kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
Message-ID-Hash: KB7KRIGVHBEOMN2T6H2GRA7QJ2S6OS5C
X-Message-ID-Hash: KB7KRIGVHBEOMN2T6H2GRA7QJ2S6OS5C
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KB7KRIGVHBEOMN2T6H2GRA7QJ2S6OS5C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 19, 2024 at 03:13:57PM +0100, Paul Cercueil wrote:
> These functions should be used by device drivers when they start and
> stop accessing the data of DMABUF. It allows DMABUF importers to cache
> the dma_buf_attachment while ensuring that the data they want to access
> is available for their device when the DMA transfers take place.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>

Putting my detailed review comments here just so I don't have to remember
them any longer. We need to reach consensus on the big picture direction
first.

> 
> ---
> v5: New patch
> ---
>  drivers/dma-buf/dma-buf.c | 66 +++++++++++++++++++++++++++++++++++++++
>  include/linux/dma-buf.h   | 37 ++++++++++++++++++++++
>  2 files changed, 103 insertions(+)
> 
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 8fe5aa67b167..a8bab6c18fcd 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -830,6 +830,8 @@ static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,
>   *     - dma_buf_mmap()
>   *     - dma_buf_begin_cpu_access()
>   *     - dma_buf_end_cpu_access()
> + *     - dma_buf_begin_access()
> + *     - dma_buf_end_access()
>   *     - dma_buf_map_attachment_unlocked()
>   *     - dma_buf_unmap_attachment_unlocked()
>   *     - dma_buf_vmap_unlocked()
> @@ -1602,6 +1604,70 @@ void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
>  }
>  EXPORT_SYMBOL_NS_GPL(dma_buf_vunmap_unlocked, DMA_BUF);
>  
> +/**
> + * @dma_buf_begin_access - Call before any hardware access from/to the DMABUF
> + * @attach:	[in]	attachment used for hardware access
> + * @sg_table:	[in]	scatterlist used for the DMA transfer
> + * @direction:  [in]    direction of DMA transfer

I think for the kerneldoc would be good to point at the other function
here, explain why this might be needed and that for most reasonable
devices it's probably not, and link between the function pairs.

Also we need to document that dma_buf_map does an implied
dma_buf_begin_access (because dma_sg_map does an implied
dma_sg_sync_for_device) and vice versa for dma_buf_end_access. Which also
means that dma_buf_map/unmap should link to these functions in their
kerneldoc too.

Finally I think we should document here that it's ok to call these from
dma_fence signalling critical section and link to the relevant discussion
in the dma_fence docs for that.

> + */
> +int dma_buf_begin_access(struct dma_buf_attachment *attach,
> +			 struct sg_table *sgt, enum dma_data_direction dir)
> +{
> +	struct dma_buf *dmabuf;
> +	bool cookie;
> +	int ret;
> +
> +	if (WARN_ON(!attach))
> +		return -EINVAL;
> +
> +	dmabuf = attach->dmabuf;
> +
> +	if (!dmabuf->ops->begin_access)
> +		return 0;
> +
> +	cookie = dma_fence_begin_signalling();
> +	ret = dmabuf->ops->begin_access(attach, sgt, dir);
> +	dma_fence_end_signalling(cookie);
> +
> +	if (WARN_ON_ONCE(ret))
> +		return ret;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_NS_GPL(dma_buf_begin_access, DMA_BUF);

So explicit device side coherency management is not going to be very
compatible with dynamic buffer managament where the exporter can move the
buffer around. The reason for that is that for a dynamic exporter we cache
the sg mapping, which means any device-side coherency management which
dma_buf_map/unmap would do will not happen (since it's cached),
potentially breaking things for importers that rely on the assumption that
dma_buf_map/unmap already implies dma_buf_begin/end_device_access.

I think for now it's sufficient to put a WARN_ON(dma_buf_is_dymamic() &&
ops->begin|end_access) or similar into dma_buf_export and bail out with an
error to catch that.

Aside from the nits I do think this is roughly what we brievely discussed
well over a decade ago in the original dma-buf kickoff meeting at a linaro
connect in Budapest :-)

Cheers, Sima

> +
> +/**
> + * @dma_buf_end_access - Call after any hardware access from/to the DMABUF
> + * @attach:	[in]	attachment used for hardware access
> + * @sg_table:	[in]	scatterlist used for the DMA transfer
> + * @direction:  [in]    direction of DMA transfer
> + */
> +int dma_buf_end_access(struct dma_buf_attachment *attach,
> +		       struct sg_table *sgt, enum dma_data_direction dir)
> +{
> +	struct dma_buf *dmabuf;
> +	bool cookie;
> +	int ret;
> +
> +	if (WARN_ON(!attach))
> +		return -EINVAL;
> +
> +	dmabuf = attach->dmabuf;
> +
> +	if (!dmabuf->ops->end_access)
> +		return 0;
> +
> +	cookie = dma_fence_begin_signalling();
> +	ret = dmabuf->ops->end_access(attach, sgt, dir);
> +	dma_fence_end_signalling(cookie);
> +
> +	if (WARN_ON_ONCE(ret))
> +		return ret;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_NS_GPL(dma_buf_end_access, DMA_BUF);
> +
>  #ifdef CONFIG_DEBUG_FS
>  static int dma_buf_debug_show(struct seq_file *s, void *unused)
>  {
> diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> index 8ff4add71f88..8ba612c7cc16 100644
> --- a/include/linux/dma-buf.h
> +++ b/include/linux/dma-buf.h
> @@ -246,6 +246,38 @@ struct dma_buf_ops {
>  	 */
>  	int (*end_cpu_access)(struct dma_buf *, enum dma_data_direction);
>  
> +	/**
> +	 * @begin_access:
> +	 *
> +	 * This is called from dma_buf_begin_access() when a device driver
> +	 * wants to access the data of the DMABUF. The exporter can use this
> +	 * to flush/sync the caches if needed.
> +	 *
> +	 * This callback is optional.
> +	 *
> +	 * Returns:
> +	 *
> +	 * 0 on success or a negative error code on failure.
> +	 */
> +	int (*begin_access)(struct dma_buf_attachment *, struct sg_table *,
> +			    enum dma_data_direction);
> +
> +	/**
> +	 * @end_access:
> +	 *
> +	 * This is called from dma_buf_end_access() when a device driver is
> +	 * done accessing the data of the DMABUF. The exporter can use this
> +	 * to flush/sync the caches if needed.
> +	 *
> +	 * This callback is optional.
> +	 *
> +	 * Returns:
> +	 *
> +	 * 0 on success or a negative error code on failure.
> +	 */
> +	int (*end_access)(struct dma_buf_attachment *, struct sg_table *,
> +			  enum dma_data_direction);
> +
>  	/**
>  	 * @mmap:
>  	 *
> @@ -606,6 +638,11 @@ void dma_buf_detach(struct dma_buf *dmabuf,
>  int dma_buf_pin(struct dma_buf_attachment *attach);
>  void dma_buf_unpin(struct dma_buf_attachment *attach);
>  
> +int dma_buf_begin_access(struct dma_buf_attachment *attach,
> +			 struct sg_table *sgt, enum dma_data_direction dir);
> +int dma_buf_end_access(struct dma_buf_attachment *attach,
> +		       struct sg_table *sgt, enum dma_data_direction dir);
> +
>  struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info);
>  
>  int dma_buf_fd(struct dma_buf *dmabuf, int flags);
> -- 
> 2.43.0
> 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
