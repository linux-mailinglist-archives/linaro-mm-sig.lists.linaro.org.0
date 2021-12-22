Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F81647D92D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 23:11:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1A7661009
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:11:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 256B26109D; Wed, 22 Dec 2021 22:11:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 313AA60DC1;
	Wed, 22 Dec 2021 22:11:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 69C5660374
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:11:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5D88460DC1; Wed, 22 Dec 2021 22:11:04 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id 5033760374
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 22:11:02 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id q14so6329349edi.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 14:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CXXmUNxPkCxymkecbPfwTry1g1NESxMh7D+z/VdxfYM=;
 b=lLDhp0wKuaC0pk+ZWgOndJjJ1vfksBUUmOsvbYXG6ot3ltaiHTdLdwModIOhcX0XgB
 eXThLSvO7jjKN6s4JOXUO/W20CCl0dpGZRBs56wJWZ2aVMgfE2xDB4FezaG2S9142X0Q
 hZgzlOUuQPsrGmSm9csErzgeVApLf0CQX96Tc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CXXmUNxPkCxymkecbPfwTry1g1NESxMh7D+z/VdxfYM=;
 b=MjlHZwUmHRWsk1MWCxi6G4c/IwNSGQvj127pcvL64TuqTIbHzIh+NgYfLrRU/SE4/Q
 G8vnrOWUNBSPI83XUVf9uQzJR6YeL7xyOueMCwKxzlZT/3Me7r7Ln5FzRi5oBu0aq1j4
 PjbpMYm5A0aKXdyxl6P1nJ4cXyxLja8gZ1x4RndwhG/tRF8Z05w/NpjLrOF4O7kNtFZV
 NIW58MAxcM485F+mbWHIDq+G5zAOityspv6Z3KZxb+/AXaEEa+YlfjiCInbYTonRNvqy
 UWsp9W+DOwqByDi9yzKWVT/f2Dw6mhPOW1RicVfBBgl6qcGmsUR7Us3BfX/naaRFA7yo
 MBeg==
X-Gm-Message-State: AOAM532xGnBvOxfjOKHnaG3vwOS2Oa7NhJb/n3+BcyN9y0kR/X5s2QYI
 FOqexXkhPa0lFN1WGRuAKhf7oA==
X-Google-Smtp-Source: ABdhPJyuWQsjblHvDjWOxEzOBMZLQ5tyFeaZsLWJLpnsj7fb46SUk3Yhx/EVMpWBN8NtsJFox7aAhA==
X-Received: by 2002:a17:906:5d0f:: with SMTP id
 g15mr4154210ejt.295.1640211061287; 
 Wed, 22 Dec 2021 14:11:01 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id sd39sm1164322ejc.14.2021.12.22.14.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 14:11:00 -0800 (PST)
Date: Wed, 22 Dec 2021 23:10:58 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOicrYTIFJXG/3I@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-22-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-22-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 21/24] dma-buf: add
 DMA_RESV_USAGE_BOOKKEEP
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

On Tue, Dec 07, 2021 at 01:34:08PM +0100, Christian K=F6nig wrote:
> Add an usage for submissions independent of implicit sync but still
> interesting for memory management.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Focusing on the kerneldoc first to get semantics agreed.

> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index 29d799991496..07ae5b00c1fa 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -55,7 +55,7 @@ struct dma_resv_list;
>   * This enum describes the different use cases for a dma_resv object and
>   * controls which fences are returned when queried.
>   *
> - * An important fact is that there is the order KERNEL<WRITE<READ and
> + * An important fact is that there is the order KERNEL<WRITE<READ<BOOKKE=
EP and
>   * when the dma_resv object is asked for fences for one use case the fen=
ces
>   * for the lower use case are returned as well.
>   *
> @@ -93,6 +93,22 @@ enum dma_resv_usage {
>  	 * an implicit read dependency.
>  	 */
>  	DMA_RESV_USAGE_READ,
> +
> +	/**
> +	 * @DMA_RESV_USAGE_BOOKKEEP: No implicit sync.
> +	 *
> +	 * This should be used by submissions which don't want to participate in
> +	 * implicit synchronization.

Uh we might still have a disagreement, because that isn't really what
drivers which added opt-in implicit sync have done thus far. Minimally we
need a note that some drivers also use _READ for this.

> +	 *
> +	 * The most common case are submissions with explicit synchronization,
> +	 * but also things like preemption fences as well as page table updates
> +	 * might use this.
> +	 *
> +	 * The kernel memory management *always* need to wait for those fences
> +	 * before moving or freeing the resource protected by the dma_resv
> +	 * object.

Yeah this is the comment I wanted to see for READ, and which now is in
bookkeeping (where it's correct in the end). I think we still should have
something in the READ comment (and here) explaining that there could very
well be writes hiding behind this, and that the kernel cannot assume
anything about what's going on in general (maybe some drivers enforce
read/write through command parsers).

Also all the text in dma_buf.resv needs to be updated to use the right
constants instead of words.
-Daniel


> +	 */
> +	DMA_RESV_USAGE_BOOKKEEP
>  };
>  =

>  /**
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
