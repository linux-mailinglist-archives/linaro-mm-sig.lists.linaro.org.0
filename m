Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE65260C35C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:38:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A99E3EC2E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:38:33 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by lists.linaro.org (Postfix) with ESMTPS id 171BE3E900
	for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Oct 2022 16:28:43 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id w2so6800646pfb.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 01 Oct 2022 09:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=R2aHD+6cNWC3HBn0zEy8lfhSMETzy6xsa81iQFM1gFI=;
        b=CnfTxBe3WqNAdyY553znsd4WFFospJ6nV0IeY7yOw8ZjreQMj2OLZItT3LNcrhOnkf
         aTThdwcf5BzNMP0qDDY/4EyAErr2QFgwqecT3rScHeE4Dl680Tfv2aL3bzk/kErOtmDq
         grZRxtc1sYP1QttyJJx/QFXNIFEo3QXiuFowAUw9css/YVFum1/u/RnTMULPxJbt9+VK
         lSYflZML/wX23jxWTMvD7+5lIskYWo/IrjY1Q4VK/fvR33rrFJwRLISddVM2AmOEuNqB
         palf3qfWNF/+0DGlnyERowoZTmQklznRMX0Q+E6r9DyAzcYUAphN52Qgls8SK33d36+V
         80iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=R2aHD+6cNWC3HBn0zEy8lfhSMETzy6xsa81iQFM1gFI=;
        b=KSJgYNL8Z3TgPfM1m3wFcNOAmzJcSo0ayaz/rnMOiPc3JkXKv2bcDDbR4fgcoLrEbJ
         iJUP7bTQLIjx1Tz7qVpj5UxvDKWgJZZuj4Hiv+hfmgzV22XKjpke+dxHi8O+jKUa+m9K
         /J/Q6ET9PAtM01hAl5I4u7CSPpth7yXS1sxC9w4u3no4IS8YzHz/JcRdB5NahM6pWEpm
         CzBkEc92kYu3gP9edAS26FlBdZyv2+gBlyiDsQIt2Yy7JKYdLFSzuS/08D4ELJw4h8Wj
         IKhl328BgIPFcj7EBY8cN++LXK7uH4c4FfknObCqm7jS0QKstoAoWDNUcIph30pcQKxP
         Dp+Q==
X-Gm-Message-State: ACrzQf3Y6zM0CV19ROR+UQ2A1t8DiJuZQeZfMNGOQBheC8nPivRUpFIS
	7GGzpcSKQFe9fpptxG7lJ2k=
X-Google-Smtp-Source: AMsMyM48mu3JqsMIftzSaQxBhnp0gnxIuN2YeQjS74Ood1zBecUmQ9aA0E1zLhZxhlZVNlJyuKM6YA==
X-Received: by 2002:a63:8a43:0:b0:44b:5c1b:6213 with SMTP id y64-20020a638a43000000b0044b5c1b6213mr1050682pgd.532.1664641722092;
        Sat, 01 Oct 2022 09:28:42 -0700 (PDT)
Received: from hyeyoo ([114.29.91.56])
        by smtp.gmail.com with ESMTPSA id cp24-20020a17090afb9800b00205f4f7a3b3sm3554434pjb.21.2022.10.01.09.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 09:28:41 -0700 (PDT)
Date: Sun, 2 Oct 2022 01:28:30 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <Yzhqrmpmo8/sGI3g@hyeyoo>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220923202822.2667581-3-keescook@chromium.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: 171BE3E900
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.176:from];
	URIBL_BLOCKED(0.00)[kvack.org:email,linux.com:email,linux-foundation.org:email,lge.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[suse.cz,linux.com,kernel.org,google.com,lge.com,linux-foundation.org,kvack.org,intel.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,gmail.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=CnfTxBe3;
	spf=pass (lists.linaro.org: domain of 42.hyeyoo@gmail.com designates 209.85.210.176 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
X-MailFrom: 42.hyeyoo@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XB7YV2RRJ4MK6FR22MIBFVCJYUIGRZVO
X-Message-ID-Hash: XB7YV2RRJ4MK6FR22MIBFVCJYUIGRZVO
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:33:20 +0000
CC: Vlastimil Babka <vbabka@suse.cz>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux
 -media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 02/16] slab: Introduce kmalloc_size_roundup()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XB7YV2RRJ4MK6FR22MIBFVCJYUIGRZVO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Sep 23, 2022 at 01:28:08PM -0700, Kees Cook wrote:
> In the effort to help the compiler reason about buffer sizes, the
> __alloc_size attribute was added to allocators. This improves the scope
> of the compiler's ability to apply CONFIG_UBSAN_BOUNDS and (in the near
> future) CONFIG_FORTIFY_SOURCE. For most allocations, this works well,
> as the vast majority of callers are not expecting to use more memory
> than what they asked for.
> 
> There is, however, one common exception to this: anticipatory resizing
> of kmalloc allocations. These cases all use ksize() to determine the
> actual bucket size of a given allocation (e.g. 128 when 126 was asked
> for). This comes in two styles in the kernel:
> 
> 1) An allocation has been determined to be too small, and needs to be
>    resized. Instead of the caller choosing its own next best size, it
>    wants to minimize the number of calls to krealloc(), so it just uses
>    ksize() plus some additional bytes, forcing the realloc into the next
>    bucket size, from which it can learn how large it is now. For example:
> 
> 	data = krealloc(data, ksize(data) + 1, gfp);
> 	data_len = ksize(data);
> 
> 2) The minimum size of an allocation is calculated, but since it may
>    grow in the future, just use all the space available in the chosen
>    bucket immediately, to avoid needing to reallocate later. A good
>    example of this is skbuff's allocators:
> 
> 	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
> 	...
> 	/* kmalloc(size) might give us more room than requested.
> 	 * Put skb_shared_info exactly at the end of allocated zone,
> 	 * to allow max possible filling before reallocation.
> 	 */
> 	osize = ksize(data);
>         size = SKB_WITH_OVERHEAD(osize);
> 
> In both cases, the "how much was actually allocated?" question is answered
> _after_ the allocation, where the compiler hinting is not in an easy place
> to make the association any more. This mismatch between the compiler's
> view of the buffer length and the code's intention about how much it is
> going to actually use has already caused problems[1]. It is possible to
> fix this by reordering the use of the "actual size" information.
> 
> We can serve the needs of users of ksize() and still have accurate buffer
> length hinting for the compiler by doing the bucket size calculation
> _before_ the allocation. Code can instead ask "how large an allocation
> would I get for a given size?".
> 
> Introduce kmalloc_size_roundup(), to serve this function so we can start
> replacing the "anticipatory resizing" uses of ksize().
> 
> [1] https://github.com/ClangBuiltLinux/linux/issues/1599
>     https://github.com/KSPP/linux/issues/183
> 
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Christoph Lameter <cl@linux.com>
> Cc: Pekka Enberg <penberg@kernel.org>
> Cc: David Rientjes <rientjes@google.com>
> Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/slab.h | 31 +++++++++++++++++++++++++++++++
>  mm/slab.c            |  9 ++++++---
>  mm/slab_common.c     | 20 ++++++++++++++++++++
>  3 files changed, 57 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 41bd036e7551..727640173568 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -188,7 +188,21 @@ void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __r
>  void kfree(const void *objp);
>  void kfree_sensitive(const void *objp);
>  size_t __ksize(const void *objp);
> +
> +/**
> + * ksize - Report actual allocation size of associated object
> + *
> + * @objp: Pointer returned from a prior kmalloc()-family allocation.
> + *
> + * This should not be used for writing beyond the originally requested
> + * allocation size. Either use krealloc() or round up the allocation size
> + * with kmalloc_size_roundup() prior to allocation. If this is used to
> + * access beyond the originally requested allocation size, UBSAN_BOUNDS
> + * and/or FORTIFY_SOURCE may trip, since they only know about the
> + * originally allocated size via the __alloc_size attribute.
> + */
>  size_t ksize(const void *objp);
> +

With this now we have two conflicting kernel-doc comments
about ksize in mm/slab_common.c and include/linux/slab.h.

>  #ifdef CONFIG_PRINTK
>  bool kmem_valid_obj(void *object);
>  void kmem_dump_obj(void *object);
> @@ -779,6 +793,23 @@ extern void kvfree(const void *addr);
>  extern void kvfree_sensitive(const void *addr, size_t len);
>  
>  unsigned int kmem_cache_size(struct kmem_cache *s);
> +
> +/**
> + * kmalloc_size_roundup - Report allocation bucket size for the given size
> + *
> + * @size: Number of bytes to round up from.
> + *
> + * This returns the number of bytes that would be available in a kmalloc()
> + * allocation of @size bytes. For example, a 126 byte request would be
> + * rounded up to the next sized kmalloc bucket, 128 bytes. (This is strictly
> + * for the general-purpose kmalloc()-based allocations, and is not for the
> + * pre-sized kmem_cache_alloc()-based allocations.)
> + *
> + * Use this to kmalloc() the full bucket size ahead of time instead of using
> + * ksize() to query the size after an allocation.
> + */
> +size_t kmalloc_size_roundup(size_t size);
> +
>  void __init kmem_cache_init_late(void);
>  
>  #if defined(CONFIG_SMP) && defined(CONFIG_SLAB)
> diff --git a/mm/slab.c b/mm/slab.c
> index 10e96137b44f..2da862bf6226 100644
> --- a/mm/slab.c
> +++ b/mm/slab.c
> @@ -4192,11 +4192,14 @@ void __check_heap_object(const void *ptr, unsigned long n,
>  #endif /* CONFIG_HARDENED_USERCOPY */
>  
>  /**
> - * __ksize -- Uninstrumented ksize.
> + * __ksize -- Report full size of underlying allocation
>   * @objp: pointer to the object
>   *
> - * Unlike ksize(), __ksize() is uninstrumented, and does not provide the same
> - * safety checks as ksize() with KASAN instrumentation enabled.
> + * This should only be used internally to query the true size of allocations.
> + * It is not meant to be a way to discover the usable size of an allocation
> + * after the fact. Instead, use kmalloc_size_roundup(). Using memory beyond
> + * the originally requested allocation size may trigger KASAN, UBSAN_BOUNDS,
> + * and/or FORTIFY_SOURCE.
>   *
>   * Return: size of the actual memory used by @objp in bytes
>   */
> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index 457671ace7eb..d7420cf649f8 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -721,6 +721,26 @@ struct kmem_cache *kmalloc_slab(size_t size, gfp_t flags)
>  	return kmalloc_caches[kmalloc_type(flags)][index];
>  }
>  
> +size_t kmalloc_size_roundup(size_t size)
> +{
> +	struct kmem_cache *c;
> +
> +	/* Short-circuit the 0 size case. */
> +	if (unlikely(size == 0))
> +		return 0;
> +	/* Short-circuit saturated "too-large" case. */
> +	if (unlikely(size == SIZE_MAX))
> +		return SIZE_MAX;
> +	/* Above the smaller buckets, size is a multiple of page size. */
> +	if (size > KMALLOC_MAX_CACHE_SIZE)
> +		return PAGE_SIZE << get_order(size);
> +
> +	/* The flags don't matter since size_index is common to all. */
> +	c = kmalloc_slab(size, GFP_KERNEL);
> +	return c ? c->object_size : 0;
> +}
> +EXPORT_SYMBOL(kmalloc_size_roundup);
> +
>  #ifdef CONFIG_ZONE_DMA
>  #define KMALLOC_DMA_NAME(sz)	.name[KMALLOC_DMA] = "dma-kmalloc-" #sz,
>  #else
> -- 
> 2.34.1

Otherwise looks good!

-- 
Thanks,
Hyeonggon
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
