Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJGNNGgB4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B1565410EA9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65076444A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:59 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by lists.linaro.org (Postfix) with ESMTPS id C253E3F772
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 20:44:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="D4SWEb/+";
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.219.50 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-8823dfa84c5so11900196d6.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 12:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764276246; x=1764881046; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qwCD3atudzQaR/LDn9XgIygiEi/nCI5QmZX0e0EMwzk=;
        b=D4SWEb/+EWpb8GyG8zdByblQqTiF9sSaYFZ/YtXVz6ZkJ2wR4TqqFNi0kXCY4j6vgL
         SLG0IIH056HELmPkN8uqBoXDORndVs5ArYMjrPaGvxNHwfb/KdmcNVFF/RmxXeItVK6Y
         znH3c7dXQtS12ozsWCWi0qecDFtKBQdqUytAkwye1zp4KdaDoPbmZfv/qU+5prjsPSN/
         WBxO1rUpEdNSVyuVsF3yI6Ja1GUux3pCv8kph5QKC4ClytWuKy2Qdawy3ePaLZ0o8rNs
         BhFMIic+5jUgIZs++VQJQdLl+7ElxYN2u9I2iuBOmCB8xXgLvbHxm5Cm/46dK1RRzfI8
         Yuog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764276246; x=1764881046;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qwCD3atudzQaR/LDn9XgIygiEi/nCI5QmZX0e0EMwzk=;
        b=i7XAaNtFTCYHoUoswTjjTmNtDjxzqnHnQBLpj6spwCJw+zlwIS3H+I4r8xFzfQyxUZ
         Ebw3lKr5GmGssXjqZoyLhwX824YKioeP4CyklY7X7ymrnbEe9Xg/4fUfDWoY8UYewzY5
         0IpXhsxrAMImNTtwOs0PldmEIwCmfeZQFlJ7PWKNarM0oyR/9Mnz2HoQC0U4/ZYKYmnC
         WHTIsC4/xWfNMZUAMaXGsnq8/kKnmJagklmV741eUd+ZJM5KmdKFPcStYu1AfHZjEm3w
         RXAIa11MJhSa5Lak/1kQNqb2yl9TOey6TUS2hjecs+LiZNWKTl646Qa4mgGLHP+kRk4F
         x2TQ==
X-Forwarded-Encrypted: i=1; AJvYcCURf/w3sia9t0GlE3vs1L6d+YnETl3C7lzq52Dx78w7TWeJ2v/XJhU84PDXdSK9f/NZlEHFAqZ+vv6kajJ0@lists.linaro.org
X-Gm-Message-State: AOJu0YykFLixiLMq7h+qJveIpDXSUaHAKb9QF6+LBAmJH0mCmajYfpWo
	EA2WQA2aJqFUHlrWsoH5LDjsUhYYvVyq4BnHBEa4M8Inwwh/DZiCNFimdW5Ur+4c4MUDr5AJqaK
	ay3cEjppgFuN9gipB3hHaYN4mJm2y/DU=
X-Gm-Gg: ASbGncuc2yrOlx6DPDGxqSVTQWkJ3gkK4f2AzHfcJw+dvR5K2aa9mp9Uq2a59qRIaBt
	KM4fJbESeK9b5IYBwLciWFlPQXLVYDzWN+VbrhZ0ugPvFSs2hPRqB+VRoXt+6iH0LOq6h588W3z
	XG5secBdHW2Tb8/du3uhpGQXDffN8hx/ZLZ4YXW60bnj+8zP0QaKp1bgdUjJY1FH+ACe5WxmRXR
	LlVS0xe56XnjREGUsjPdnAMSigeDEsv9ILmEhjhbB3xQl1UUjQAxkEmE9u6RGaFgSeAhQ==
X-Google-Smtp-Source: AGHT+IE7voQiHDKLB4NwV8zGSE3REVdUO0e8yn38MIWlpfXSI6ZQdpofqkZUcP8t3D35swjRjPiF80F/keI36AiYhgc=
X-Received: by 2002:a05:6214:4018:b0:880:4c02:c49 with SMTP id
 6a1803df08f44-8847c49a3ffmr351784406d6.23.1764276246078; Thu, 27 Nov 2025
 12:44:06 -0800 (PST)
MIME-Version: 1.0
References: <20251122090343.81243-1-21cnbao@gmail.com> <aSiB-UsunuE7u295@milan>
In-Reply-To: <aSiB-UsunuE7u295@milan>
From: Barry Song <21cnbao@gmail.com>
Date: Fri, 28 Nov 2025 04:43:54 +0800
X-Gm-Features: AWmQ_bn1BA-EHgk099B5JdrbxARNS1wqxvNFJMmU7BmZqAfXIiS6yKlNivY5AG4
Message-ID: <CAGsJ_4z21fN2KSg6jt_qveYgrKZw1Vsi_kb+uhed=RJAbujMHw@mail.gmail.com>
To: Uladzislau Rezki <urezki@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B36RPDUT2ZTUAPZ47F3XOLQ7EM7V7VJA
X-Message-ID-Hash: B36RPDUT2ZTUAPZ47F3XOLQ7EM7V7VJA
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:20 +0000
CC: akpm@linux-foundation.org, linux-mm@kvack.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC] mm/vmap: map contiguous pages in batches whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B36RPDUT2ZTUAPZ47F3XOLQ7EM7V7VJA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3354];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.554];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B1565410EA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> >
> > +     /*
> > +      * Some users may allocate pages from high-order down to order 0.
> > +      * We roughly check if the first page is a compound page. If so,
> > +      * there is a chance to batch multiple pages together.
> > +      */
> >       if (!IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMALLOC) ||
> > -                     page_shift == PAGE_SHIFT)
> > +                     (page_shift == PAGE_SHIFT && !PageCompound(pages[0])))
> >
> Do we support __GFP_COMP as vmalloc/vmap flag? As i see from latest:

This is not the case for vmalloc, but applies to dma-bufs that are allocated
using alloc_pages() with GFP_COMP.

#define LOW_ORDER_GFP (GFP_HIGHUSER | __GFP_ZERO)
#define HIGH_ORDER_GFP  (((GFP_HIGHUSER | __GFP_ZERO | __GFP_NOWARN \
                                | __GFP_NORETRY) & ~__GFP_RECLAIM) \
                                | __GFP_COMP)

>
> /*
>  * See __vmalloc_node_range() for a clear list of supported vmalloc flags.
>  * This gfp lists all flags currently passed through vmalloc. Currently,
>  * __GFP_ZERO is used by BPF and __GFP_NORETRY is used by percpu. Both drm
>  * and BPF also use GFP_USER. Additionally, various users pass
>  * GFP_KERNEL_ACCOUNT. Xfs uses __GFP_NOLOCKDEP.
>  */
> #define GFP_VMALLOC_SUPPORTED (GFP_KERNEL | GFP_ATOMIC | GFP_NOWAIT |\
>                                __GFP_NOFAIL |  __GFP_ZERO | __GFP_NORETRY |\
>                                GFP_NOFS | GFP_NOIO | GFP_KERNEL_ACCOUNT |\
>                                GFP_USER | __GFP_NOLOCKDEP)
>
> Could you please clarify when PageCompound(pages[0]) returns true?
>

In this case, dma-buf attempts to allocate as many compound high-order pages
as possible, falling back to 0-order allocations if necessary.

Then, dma_buf_vmap() is called by the GPU drivers:

 1    404  drivers/accel/amdxdna/amdxdna_gem.c <<amdxdna_gem_obj_vmap>>
             dma_buf_vmap(abo->dma_buf, map);
   2   1568  drivers/dma-buf/dma-buf.c <<dma_buf_vmap_unlocked>>
             ret = dma_buf_vmap(dmabuf, map);
   3    354  drivers/gpu/drm/drm_gem_shmem_helper.c
<<drm_gem_shmem_vmap_locked>>
             ret = dma_buf_vmap(obj->import_attach->dmabuf, map);
   4     85  drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
<<etnaviv_gem_prime_vmap_impl>>
             ret = dma_buf_vmap(etnaviv_obj->base.import_attach->dmabuf, &map);
   5    433  drivers/gpu/drm/vmwgfx/vmwgfx_blit.c <<map_external>>
             ret = dma_buf_vmap(bo->tbo.base.dma_buf, map);
   6     88  drivers/gpu/drm/vmwgfx/vmwgfx_gem.c <<vmw_gem_vmap>>
             ret = dma_buf_vmap(obj->import_attach->dmabuf, map);

Thanks
Barry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
