Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB2E47D913
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 23:05:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA82261035
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:05:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 91D64610C6; Wed, 22 Dec 2021 22:05:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E291560DA3;
	Wed, 22 Dec 2021 22:05:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 99D1C606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:05:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8D66360DA3; Wed, 22 Dec 2021 22:05:30 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by lists.linaro.org (Postfix) with ESMTPS id 813F5606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:05:28 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id b13so13830099edd.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 14:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=JXq+5dsY8Bw6O6xbPcewh11jsddjQUU7f6PccADeVp8=;
 b=FdevmSAT2QN0i6s5X2Gg01OrLYPi1IoWtg3nJsFYGzcoYslzwlwpsx6ndo+RYwMTY+
 6caTpATFpuzhpIpFg7IYgC0Vg/3I8NYJQb1wQSNTJTX3FxrabgP0n3bQGkunKtCbU7MH
 7rTMGctqC4TFS0gpnE79Gxs7QKZvShbTUUXeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JXq+5dsY8Bw6O6xbPcewh11jsddjQUU7f6PccADeVp8=;
 b=GjNQ84SBOWkOgWgkR6mR717thZDsZ4A7t9VtxxhgSuFLjtZZVJWhwSVmfooav5TB3I
 L26id0nHeqcPk9Kya+o4FOlXYS7uecmagetK05nZMCGpVi8L6FEcqmv7OySJGV78Q83G
 nEO/DpdhXlSD86V2sxGk4LJ8y7PE7dTS96DF0rVjEkDXF3+lVGnCVnL4ekWvRpUaq7TW
 /CB6RB+MVldtcnBHbyyfv5wcccti4m+Nvi6rlUeZCsjHEFmxdRLk4Cn8oI5KZrHtH5yj
 zt12I1NqtQluy4a/Zi2THv/F/yE6N59595ecDhJfM7JBF8fW+Jm2kp8WYyY9b2Q6mPdO
 RCeg==
X-Gm-Message-State: AOAM533bblCo5CnB1BOt9ebWxGGxs+k9C6Cm35TJG3sMGCKq+tqPN/AE
 bSD0j9bT+gCI9rjIP+6a3G5URg==
X-Google-Smtp-Source: ABdhPJxrmggVIJ3vzjr6h0B36cTMwYShzuIu5ndivNPTudzJbwapW1arhLeUWChHQLLQWzHyXuZ9SQ==
X-Received: by 2002:a05:6402:27d1:: with SMTP id
 c17mr4373894ede.128.1640210727567; 
 Wed, 22 Dec 2021 14:05:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s5sm1090628ejn.205.2021.12.22.14.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 14:05:27 -0800 (PST)
Date: Wed, 22 Dec 2021 23:05:25 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOhJfy3O7lydic8@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-21-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-21-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 20/24] dma-buf: add DMA_RESV_USAGE_KERNEL
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

On Tue, Dec 07, 2021 at 01:34:07PM +0100, Christian K=F6nig wrote:
> Add an usage for kernel submissions. Waiting for those
> are mandatory for dynamic DMA-bufs.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Again just skipping to the doc bikeshedding, maybe with more cc others
help with some code review too.

>  EXPORT_SYMBOL(ib_umem_dmabuf_map_pages);
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 4f3a6abf43c4..29d799991496 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -54,8 +54,30 @@ struct dma_resv_list;
>   *
>   * This enum describes the different use cases for a dma_resv object and
>   * controls which fences are returned when queried.
> + *
> + * An important fact is that there is the order KERNEL<WRITE<READ and
> + * when the dma_resv object is asked for fences for one use case the fen=
ces
> + * for the lower use case are returned as well.
> + *
> + * For example when asking for WRITE fences then the KERNEL fences are r=
eturned
> + * as well. Similar when asked for READ fences then both WRITE and KERNEL
> + * fences are returned as well.
>   */
>  enum dma_resv_usage {
> +	/**
> +	 * @DMA_RESV_USAGE_KERNEL: For in kernel memory management only.
> +	 *
> +	 * This should only be used for things like copying or clearing memory
> +	 * with a DMA hardware engine for the purpose of kernel memory
> +	 * management.
> +	 *
> +         * Drivers *always* need to wait for those fences before accessi=
ng the

s/need to/must/ to stay with usual RFC wording. It's a hard requirement or
there's a security bug somewhere.

> +	 * resource protected by the dma_resv object. The only exception for
> +	 * that is when the resource is known to be locked down in place by
> +	 * pinning it previously.

Is this true? This sounds more confusing than helpful, because afaik in
general our pin interfaces do not block for any kernel fences. dma_buf_pin
doesn't do that for sure. And I don't think ttm does that either.

I think the only safe thing here is to state that it's safe if a) the
resource is pinned down and b) the callers has previously waited for the
kernel fences.

I also think we should put that wait for kernel fences into dma_buf_pin(),
but that's maybe a later patch.
-Daniel



> +	 */
> +	DMA_RESV_USAGE_KERNEL,
> +
>  	/**
>  	 * @DMA_RESV_USAGE_WRITE: Implicit write synchronization.
>  	 *
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
