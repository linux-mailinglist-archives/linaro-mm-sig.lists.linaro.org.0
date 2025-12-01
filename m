Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMKcOtYB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 64051410F73
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D3894464D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:35:49 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by lists.linaro.org (Postfix) with ESMTPS id 99CB13F832
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Dec 2025 11:08:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mFFFvwRu;
	spf=pass (lists.linaro.org: domain of urezki@gmail.com designates 209.85.208.182 as permitted sender) smtp.mailfrom=urezki@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-37a2d9cf22aso27121341fa.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Dec 2025 03:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764587306; x=1765192106; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=apPnjqLgYv5KFdQVAUozAIQDApH/iP9GbYj6xjZKpNk=;
        b=mFFFvwRuguYW12T09VgDqoi/uWju/bPlYhjEYKSyN0MA/DZM20/I/rsKzhu44YnS5G
         9qOJ0UwCMlUN9xHjPQn78A28Ncb24Ce0L++Ief3lCIR1rDwDUYYcK/lzCZe/gdxmjLWZ
         qwB0t6tmvuoXEQF9WyG+M1PUbHKmYdIO7df1nv2GeuHijummPy7exW3z6rU6tXBq726L
         TXmfcc5LGXl4D0Pp9M8nHJtaLej6EVJrHQ5z5gkpcPDPGdSMqRwMJhwZV8J3IY5WN91J
         ysH9HSRnHqDU3ERYYLmqkON+Rdl5iPnqit76jSsg6RgSh1q19349Lwg5HjiIPxTeXqgG
         7tYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764587306; x=1765192106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=apPnjqLgYv5KFdQVAUozAIQDApH/iP9GbYj6xjZKpNk=;
        b=ZZiRWPFdcM4Q8lmXygfotE0ThPxuQRumBuaHp8yv5eiDFaMR3HVyobaTvLolfUj3ZP
         BD3ee/9Y8+GhQrGFOK2eLsWAAqw+uuHJa0DkpGYgJXbYD8APlAZSozYs1IFDMcBbd3EY
         GazBISURk8nrD/Kd9KmAcna3njYOFvFG5f5qApczbhPFGgeh4kaz/azUugQTrUXN2rOw
         /SDcdb0Ngtifgxz8F34dH87+j4qwoDJS5g6YHLTQKKOPElvDhspQMFxtvvOrWf9AqEZV
         Z6VMttA6PA51M/EvMoC0a+l8mxN4AOymBpv8C29lnICMP+t26EJGy1a+2Zva0WI74yDu
         NKCw==
X-Forwarded-Encrypted: i=1; AJvYcCW59JJxjBQ+SPlLJwVyIhiRt46TjYA6BOvBfp9bIFUbkng1rSkVE9SgVDosuppwFlhwtlSzqCmaG8oxpkm/@lists.linaro.org
X-Gm-Message-State: AOJu0Yzwwyfg1DrCzFD+URik/o8JDUXldLf2qBB4Q1G8kjbaSdOXZhHx
	KUgpTV2HsY/qWvBR3QwXXk8oQy3ISZrqEdZ+L7DO4ySuW2HSoGYtHjNL
X-Gm-Gg: ASbGncvKsRYGX+ugGrw2+WwjtDlGY/f2siqrUBZCEAmbj3PAncYoQtRjHqWolDL5Mya
	y05OOuNmrcd8j2EgrvJJlo0kp8MaZtImSvY+RuFIPy7gQv0ZsYZP8seLxH4UOrJ4yCl5TP6QbNk
	DbQ4ztVS7NKmGNWUIsuq4UdhuqQRqodIqQtoiEKefXMMP7lB6e19CLRvsHaSnUVk5Klfqa+OoN8
	FDYiyOUAOUkZ24WJtZ24YTfS8JsGCxpTmUcGE9FZigZ/cr5aLYUYcjjhvo7Ex8P6U0WNKDteWmK
	8KbjZFqYgxZSjOVJL7n4/fv9kz+nAVK9sv9f6eCYzd8SWiIVaiF+IgXDlb5+crlL7XdYuxKM7PA
	AyhN2xVFdDpDGLpZ2j+JE5uF16QYiD6SOzlkBCSxWwjQTwFPeUM0t3A==
X-Google-Smtp-Source: AGHT+IFYuTqVq/XXzpVDPZNlji0QpaJTMsgY/VJiO3ObVzX6tMfBu+vPiuyhJLxl2QXQDIY11tZWpg==
X-Received: by 2002:a2e:bc26:0:b0:376:41f5:a6ca with SMTP id 38308e7fff4ca-37cc8213bf3mr101258641fa.0.1764587306127;
        Mon, 01 Dec 2025 03:08:26 -0800 (PST)
Received: from milan ([2001:9b1:d5a0:a500::24b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm27895361fa.24.2025.12.01.03.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 03:08:25 -0800 (PST)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@milan>
Date: Mon, 1 Dec 2025 12:08:23 +0100
To: Barry Song <21cnbao@gmail.com>
Message-ID: <aS13J6U-QMOrwwbs@milan>
References: <20251122090343.81243-1-21cnbao@gmail.com>
 <aSiB-UsunuE7u295@milan>
 <CAGsJ_4z21fN2KSg6jt_qveYgrKZw1Vsi_kb+uhed=RJAbujMHw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGsJ_4z21fN2KSg6jt_qveYgrKZw1Vsi_kb+uhed=RJAbujMHw@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: urezki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TRJX6G2CAQ5FFDURLMC5NI35DTNXKUPV
X-Message-ID-Hash: TRJX6G2CAQ5FFDURLMC5NI35DTNXKUPV
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:29 +0000
CC: Uladzislau Rezki <urezki@gmail.com>, akpm@linux-foundation.org, linux-mm@kvack.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRJX6G2CAQ5FFDURLMC5NI35DTNXKUPV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[3268];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[urezki@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kvack.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,oppo.com,linaro.org,google.com,kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.841];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 64051410F73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Nov 28, 2025 at 04:43:54AM +0800, Barry Song wrote:
> > >
> > > +     /*
> > > +      * Some users may allocate pages from high-order down to order 0.
> > > +      * We roughly check if the first page is a compound page. If so,
> > > +      * there is a chance to batch multiple pages together.
> > > +      */
> > >       if (!IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMALLOC) ||
> > > -                     page_shift == PAGE_SHIFT)
> > > +                     (page_shift == PAGE_SHIFT && !PageCompound(pages[0])))
> > >
> > Do we support __GFP_COMP as vmalloc/vmap flag? As i see from latest:
> 
> This is not the case for vmalloc, but applies to dma-bufs that are allocated
> using alloc_pages() with GFP_COMP.
> 
> #define LOW_ORDER_GFP (GFP_HIGHUSER | __GFP_ZERO)
> #define HIGH_ORDER_GFP  (((GFP_HIGHUSER | __GFP_ZERO | __GFP_NOWARN \
>                                 | __GFP_NORETRY) & ~__GFP_RECLAIM) \
>                                 | __GFP_COMP)
> 
> >
> > /*
> >  * See __vmalloc_node_range() for a clear list of supported vmalloc flags.
> >  * This gfp lists all flags currently passed through vmalloc. Currently,
> >  * __GFP_ZERO is used by BPF and __GFP_NORETRY is used by percpu. Both drm
> >  * and BPF also use GFP_USER. Additionally, various users pass
> >  * GFP_KERNEL_ACCOUNT. Xfs uses __GFP_NOLOCKDEP.
> >  */
> > #define GFP_VMALLOC_SUPPORTED (GFP_KERNEL | GFP_ATOMIC | GFP_NOWAIT |\
> >                                __GFP_NOFAIL |  __GFP_ZERO | __GFP_NORETRY |\
> >                                GFP_NOFS | GFP_NOIO | GFP_KERNEL_ACCOUNT |\
> >                                GFP_USER | __GFP_NOLOCKDEP)
> >
> > Could you please clarify when PageCompound(pages[0]) returns true?
> >
> 
> In this case, dma-buf attempts to allocate as many compound high-order pages
> as possible, falling back to 0-order allocations if necessary.
> 
OK, it is folio who uses it.

> Then, dma_buf_vmap() is called by the GPU drivers:
> 
>  1    404  drivers/accel/amdxdna/amdxdna_gem.c <<amdxdna_gem_obj_vmap>>
>              dma_buf_vmap(abo->dma_buf, map);
>    2   1568  drivers/dma-buf/dma-buf.c <<dma_buf_vmap_unlocked>>
>              ret = dma_buf_vmap(dmabuf, map);
>    3    354  drivers/gpu/drm/drm_gem_shmem_helper.c
> <<drm_gem_shmem_vmap_locked>>
>              ret = dma_buf_vmap(obj->import_attach->dmabuf, map);
>    4     85  drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
> <<etnaviv_gem_prime_vmap_impl>>
>              ret = dma_buf_vmap(etnaviv_obj->base.import_attach->dmabuf, &map);
>    5    433  drivers/gpu/drm/vmwgfx/vmwgfx_blit.c <<map_external>>
>              ret = dma_buf_vmap(bo->tbo.base.dma_buf, map);
>    6     88  drivers/gpu/drm/vmwgfx/vmwgfx_gem.c <<vmw_gem_vmap>>
>              ret = dma_buf_vmap(obj->import_attach->dmabuf, map);
> 
Thank you for clarification. That would be good to reflect it in the
commit message. Also, please note that:

>       if (!IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMALLOC) ||
> -                     page_shift == PAGE_SHIFT)
> +                     (page_shift == PAGE_SHIFT && !PageCompound(pages[0])))
>
we rely on page_shift == PAGE_SHIFT condition for the non-sleep vmalloc()
allocations(GFP_ATOMIC, GFP_NOWAIT), so we go via vmap_small_pages_range_noflush()
path. Your patch adds !PageCompound(pages[0]) also. It is not a problem
since it is vmap() path but we need to comment that.

--
Uladzislau Rezki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
