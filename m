Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CB14263736C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 09:11:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D52E53EECC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 08:11:38 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id ACE663EE40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 08:11:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=B4nBu20b;
	spf=pass (lists.linaro.org: domain of tommaso.merciai@amarulasolutions.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=tommaso.merciai@amarulasolutions.com;
	dmarc=pass (policy=none) header.from=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id vp12so1129849ejc.8
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 00:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6YHJgPorhOUbyl8qXKZ/Y1Fb0whHUGXa2Cr+bH3NpKM=;
        b=B4nBu20bW7mnUL2BeHRcg59KXuEcGTlAVaR5iapLDCicXnF3jFRGL0KaCd3/+h9Tdw
         vY9pRcqoKoWybtisYS+ZxcgaQKr5iVDQ7zAsYRhTzvbjh9N+7LqU/5PuYXAq73/SPu5K
         lK1a6zcpRASRjG7B8xKq1P1Np87iRH6szFwH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6YHJgPorhOUbyl8qXKZ/Y1Fb0whHUGXa2Cr+bH3NpKM=;
        b=wyMAjtrDzS2bRnmh2+GWfamPLbmY6terU45vEA3sgy2XHiX3S98tOTc4OdJVF3EDpQ
         ZtFGh0haJIQQxA/CjSbRhwGQNLGlKs4VPbCBRS2F1G1BZCn2RbtFMqcCaJHhwTU6SweJ
         JSATruQdMP0nms0+bvwVkSLz4UhVGuRGxBSUKx+PYMJXO+eZx+LPqNXZrNWprJsZlae9
         /XHSORnRHN/ptA1CRMFBZeXwTzrUs/i4yIndFA3NnfhPqQqQRXAtDQCw2HOBs70jpryC
         utVHeurOo6/hfsd97AEBupPwP9tQxDkW9iaYoD+n7aw7aq3VvGWcrjrRibqRaXsdOYG/
         IT6g==
X-Gm-Message-State: ANoB5plM9yLP7mR8pHqJ5T2aesp/4zrAHsu5kDnIlNFY/PZR2JtxGvtK
	qiSdQGuyQb5G2DtVJkxC5FXRpg==
X-Google-Smtp-Source: AA0mqf7aVZbVSFuG+L8Eyzm7AhG74w3bgdJjvzEEZlZQFKaZUtPxj3jnE/eIs0+1qpSwdBYG5TXoFA==
X-Received: by 2002:a17:906:245a:b0:78d:857d:b4a8 with SMTP id a26-20020a170906245a00b0078d857db4a8mr5069511ejb.495.1669277488639;
        Thu, 24 Nov 2022 00:11:28 -0800 (PST)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-55-94.cust.vodafonedsl.it. [188.217.55.94])
        by smtp.gmail.com with ESMTPSA id wl3-20020a170907310300b007b4bc423b41sm145907ejb.190.2022.11.24.00.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 00:11:27 -0800 (PST)
Date: Thu, 24 Nov 2022 09:11:26 +0100
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20221124081126.GA607444@tom-ThinkPad-T14s-Gen-2i>
References: <20221123193519.3948105-1-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221123193519.3948105-1-tjmercier@google.com>
X-Rspamd-Queue-Id: ACE663EE40
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.995];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.218.48:from];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[amarulasolutions.com:url,amarulasolutions.com:email,amarulasolutions.com:dkim];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	FROM_HAS_DN(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[188.217.55.94:received];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XLI2A3ZYZL5NAFO7VXHXORNIEPIUKGVK
X-Message-ID-Hash: XLI2A3ZYZL5NAFO7VXHXORNIEPIUKGVK
X-MailFrom: tommaso.merciai@amarulasolutions.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: A collection of typo and documentation fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XLI2A3ZYZL5NAFO7VXHXORNIEPIUKGVK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi T.J,

On Wed, Nov 23, 2022 at 07:35:18PM +0000, T.J. Mercier wrote:
> I've been collecting these typo fixes for a while and it feels like
> time to send them in.
> 
> Signed-off-by: T.J. Mercier <tjmercier@google.com>
> ---
>  drivers/dma-buf/dma-buf.c | 14 +++++++-------
>  include/linux/dma-buf.h   |  6 +++---
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index dd0f83ee505b..614ccd208af4 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -1141,7 +1141,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_unmap_attachment, DMA_BUF);
>   *
>   * @dmabuf:	[in]	buffer which is moving
>   *
> - * Informs all attachmenst that they need to destroy and recreated all their
> + * Informs all attachments that they need to destroy and recreate all their
>   * mappings.
>   */
>  void dma_buf_move_notify(struct dma_buf *dmabuf)
> @@ -1159,11 +1159,11 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, DMA_BUF);
>  /**
>   * DOC: cpu access
>   *
> - * There are mutliple reasons for supporting CPU access to a dma buffer object:
> + * There are multiple reasons for supporting CPU access to a dma buffer object:
>   *
>   * - Fallback operations in the kernel, for example when a device is connected
>   *   over USB and the kernel needs to shuffle the data around first before
> - *   sending it away. Cache coherency is handled by braketing any transactions
> + *   sending it away. Cache coherency is handled by bracketing any transactions
>   *   with calls to dma_buf_begin_cpu_access() and dma_buf_end_cpu_access()
>   *   access.
>   *
> @@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, DMA_BUF);
>   *   replace ION buffers mmap support was needed.
>   *
>   *   There is no special interfaces, userspace simply calls mmap on the dma-buf
> - *   fd. But like for CPU access there's a need to braket the actual access,
> + *   fd. But like for CPU access there's a need to bracket the actual access,
>   *   which is handled by the ioctl (DMA_BUF_IOCTL_SYNC). Note that
>   *   DMA_BUF_IOCTL_SYNC can fail with -EAGAIN or -EINTR, in which case it must
>   *   be restarted.
> @@ -1264,10 +1264,10 @@ static int __dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
>   * preparations. Coherency is only guaranteed in the specified range for the
>   * specified access direction.
>   * @dmabuf:	[in]	buffer to prepare cpu access for.
> - * @direction:	[in]	length of range for cpu access.
> + * @direction:	[in]	direction of access.
>   *
>   * After the cpu access is complete the caller should call
> - * dma_buf_end_cpu_access(). Only when cpu access is braketed by both calls is
> + * dma_buf_end_cpu_access(). Only when cpu access is bracketed by both calls is
>   * it guaranteed to be coherent with other DMA access.
>   *
>   * This function will also wait for any DMA transactions tracked through
> @@ -1307,7 +1307,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_begin_cpu_access, DMA_BUF);
>   * actions. Coherency is only guaranteed in the specified range for the
>   * specified access direction.
>   * @dmabuf:	[in]	buffer to complete cpu access for.
> - * @direction:	[in]	length of range for cpu access.
> + * @direction:	[in]	direction of access.
>   *
>   * This terminates CPU access started with dma_buf_begin_cpu_access().
>   *
> diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> index 71731796c8c3..1d61a4f6db35 100644
> --- a/include/linux/dma-buf.h
> +++ b/include/linux/dma-buf.h
> @@ -330,7 +330,7 @@ struct dma_buf {
>  	 * @lock:
>  	 *
>  	 * Used internally to serialize list manipulation, attach/detach and
> -	 * vmap/unmap. Note that in many cases this is superseeded by
> +	 * vmap/unmap. Note that in many cases this is superseded by
>  	 * dma_resv_lock() on @resv.
>  	 */
>  	struct mutex lock;
> @@ -365,7 +365,7 @@ struct dma_buf {
>  	 */
>  	const char *name;
>  
> -	/** @name_lock: Spinlock to protect name acces for read access. */
> +	/** @name_lock: Spinlock to protect name access for read access. */
>  	spinlock_t name_lock;
>  
>  	/**
> @@ -402,7 +402,7 @@ struct dma_buf {
>  	 *   anything the userspace API considers write access.
>  	 *
>  	 * - Drivers may just always add a write fence, since that only
> -	 *   causes unecessarily synchronization, but no correctness issues.
> +	 *   causes unnecessary synchronization, but no correctness issues.
>  	 *
>  	 * - Some drivers only expose a synchronous userspace API with no
>  	 *   pipelining across drivers. These do not set any fences for their
> -- 
> 2.38.1.584.g0f3c55d4c2-goog
> 

Looks good to me.

Reviewed-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>

Thanks & Regards,
Tommaso

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
