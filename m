Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5FC5EAE9F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 19:51:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A54D24050C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 17:51:00 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id 112833F8EB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 17:50:40 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id d24so6926740pls.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 10:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=TNDUsCjQ4zB2/5GZ7X+uS9zeoK4Uz9rg4Dmc7gG+Kts=;
        b=diPFMelUGqg5Olz6I8z2UqQgP/qT0p6U2CTPr1IKXAPPQDlXjIbGiW+Mq8ZW/AJerP
         YVtmTqGjAus4WfzbTh4Tizc48Roo/vvFh6ncx714UJ4hLWN/DikhBXoZzoyhCy7LE6Y/
         3OYOMIYymLSLRxuRHD8IaRlLtQ4iFKBE+1Png=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=TNDUsCjQ4zB2/5GZ7X+uS9zeoK4Uz9rg4Dmc7gG+Kts=;
        b=TXty05NrTObouBj1iNnL6cIpg2+lOmBfjc8j7jW2ZMerRbi7tbz5SMhp21HTQmf0fL
         L1DUmiCX28gpz5u5x7vX/akw2BoRkx8fhqnZszhKAnWilPC08hMmiX6VVhP9RTTt6B1+
         km5pbFMgIueEZMnaFaDiWgHarJygQ8ve9zJG0wK+agDLm/LBrCGcbRVkAufG/6CgQpbM
         +29ogvklN83jnCsvxGMibWNx4iIwtDekFGACb4Gsjl17/We/+9baQu3coJXsDN4Mp+7o
         dirEqFawMZVjLUqWO9BdRd9mhxvejuKuaPPPlFVDgLXYaKran0ZaJE/z7q9vilstaDUE
         CU4g==
X-Gm-Message-State: ACrzQf1Ax1iditux8n/9G08fAiqfceMVhTSDCBo4KviywBojIOa0ehlQ
	8xSKm4xbRdhvaDcHL1hXb2am/A==
X-Google-Smtp-Source: AMsMyM53HUNBt6kGZBRWVtwFK3cgJAVMJrfeOBQoCVB2uG4qpYwM3FiGKu6g/YmgMRQUrRqqychKmQ==
X-Received: by 2002:a17:90a:a09:b0:202:ab93:2afb with SMTP id o9-20020a17090a0a0900b00202ab932afbmr37124281pjo.60.1664214639071;
        Mon, 26 Sep 2022 10:50:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g13-20020aa79f0d000000b00536097dd45bsm12539497pfr.134.2022.09.26.10.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 10:50:37 -0700 (PDT)
Date: Mon, 26 Sep 2022 10:50:36 -0700
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <202209261050.560459B@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-3-keescook@chromium.org>
 <e0326835-9b0d-af1b-bd22-2aadb178bd25@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0326835-9b0d-af1b-bd22-2aadb178bd25@suse.cz>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: /
X-Rspamd-Queue-Id: 112833F8EB
X-Spamd-Result: default: False [0.90 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.173:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[linux.com,kernel.org,google.com,lge.com,linux-foundation.org,kvack.org,intel.com,gmail.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=diPFMelU;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.214.173 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Message-ID-Hash: T7HTPNDCPHUNIDPYPWCO3CMREFUIOF64
X-Message-ID-Hash: T7HTPNDCPHUNIDPYPWCO3CMREFUIOF64
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, li
 nux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 02/16] slab: Introduce kmalloc_size_roundup()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T7HTPNDCPHUNIDPYPWCO3CMREFUIOF64/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 26, 2022 at 03:15:22PM +0200, Vlastimil Babka wrote:
> On 9/23/22 22:28, Kees Cook wrote:
> > In the effort to help the compiler reason about buffer sizes, the
> > __alloc_size attribute was added to allocators. This improves the scope
> > of the compiler's ability to apply CONFIG_UBSAN_BOUNDS and (in the near
> > future) CONFIG_FORTIFY_SOURCE. For most allocations, this works well,
> > as the vast majority of callers are not expecting to use more memory
> > than what they asked for.
> > 
> > There is, however, one common exception to this: anticipatory resizing
> > of kmalloc allocations. These cases all use ksize() to determine the
> > actual bucket size of a given allocation (e.g. 128 when 126 was asked
> > for). This comes in two styles in the kernel:
> > 
> > 1) An allocation has been determined to be too small, and needs to be
> >     resized. Instead of the caller choosing its own next best size, it
> >     wants to minimize the number of calls to krealloc(), so it just uses
> >     ksize() plus some additional bytes, forcing the realloc into the next
> >     bucket size, from which it can learn how large it is now. For example:
> > 
> > 	data = krealloc(data, ksize(data) + 1, gfp);
> > 	data_len = ksize(data);
> > 
> > 2) The minimum size of an allocation is calculated, but since it may
> >     grow in the future, just use all the space available in the chosen
> >     bucket immediately, to avoid needing to reallocate later. A good
> >     example of this is skbuff's allocators:
> > 
> > 	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
> > 	...
> > 	/* kmalloc(size) might give us more room than requested.
> > 	 * Put skb_shared_info exactly at the end of allocated zone,
> > 	 * to allow max possible filling before reallocation.
> > 	 */
> > 	osize = ksize(data);
> >          size = SKB_WITH_OVERHEAD(osize);
> > 
> > In both cases, the "how much was actually allocated?" question is answered
> > _after_ the allocation, where the compiler hinting is not in an easy place
> > to make the association any more. This mismatch between the compiler's
> > view of the buffer length and the code's intention about how much it is
> > going to actually use has already caused problems[1]. It is possible to
> > fix this by reordering the use of the "actual size" information.
> > 
> > We can serve the needs of users of ksize() and still have accurate buffer
> > length hinting for the compiler by doing the bucket size calculation
> > _before_ the allocation. Code can instead ask "how large an allocation
> > would I get for a given size?".
> > 
> > Introduce kmalloc_size_roundup(), to serve this function so we can start
> > replacing the "anticipatory resizing" uses of ksize().
> > 
> > [1] https://github.com/ClangBuiltLinux/linux/issues/1599
> >      https://github.com/KSPP/linux/issues/183
> > 
> > Cc: Vlastimil Babka <vbabka@suse.cz>
> > Cc: Christoph Lameter <cl@linux.com>
> > Cc: Pekka Enberg <penberg@kernel.org>
> > Cc: David Rientjes <rientjes@google.com>
> > Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: linux-mm@kvack.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> OK, added patch 1+2 to slab.git for-next branch.
> Had to adjust this one a bit, see below.
> 
> > ---
> >   include/linux/slab.h | 31 +++++++++++++++++++++++++++++++
> >   mm/slab.c            |  9 ++++++---
> >   mm/slab_common.c     | 20 ++++++++++++++++++++
> >   3 files changed, 57 insertions(+), 3 deletions(-)
> > 
> > diff --git a/include/linux/slab.h b/include/linux/slab.h
> > index 41bd036e7551..727640173568 100644
> > --- a/include/linux/slab.h
> > +++ b/include/linux/slab.h
> > @@ -188,7 +188,21 @@ void * __must_check krealloc(const void *objp, size_t new_size, gfp_t flags) __r
> >   void kfree(const void *objp);
> >   void kfree_sensitive(const void *objp);
> >   size_t __ksize(const void *objp);
> > +
> > +/**
> > + * ksize - Report actual allocation size of associated object
> > + *
> > + * @objp: Pointer returned from a prior kmalloc()-family allocation.
> > + *
> > + * This should not be used for writing beyond the originally requested
> > + * allocation size. Either use krealloc() or round up the allocation size
> > + * with kmalloc_size_roundup() prior to allocation. If this is used to
> > + * access beyond the originally requested allocation size, UBSAN_BOUNDS
> > + * and/or FORTIFY_SOURCE may trip, since they only know about the
> > + * originally allocated size via the __alloc_size attribute.
> > + */
> >   size_t ksize(const void *objp);
> > +
> >   #ifdef CONFIG_PRINTK
> >   bool kmem_valid_obj(void *object);
> >   void kmem_dump_obj(void *object);
> > @@ -779,6 +793,23 @@ extern void kvfree(const void *addr);
> >   extern void kvfree_sensitive(const void *addr, size_t len);
> >   unsigned int kmem_cache_size(struct kmem_cache *s);
> > +
> > +/**
> > + * kmalloc_size_roundup - Report allocation bucket size for the given size
> > + *
> > + * @size: Number of bytes to round up from.
> > + *
> > + * This returns the number of bytes that would be available in a kmalloc()
> > + * allocation of @size bytes. For example, a 126 byte request would be
> > + * rounded up to the next sized kmalloc bucket, 128 bytes. (This is strictly
> > + * for the general-purpose kmalloc()-based allocations, and is not for the
> > + * pre-sized kmem_cache_alloc()-based allocations.)
> > + *
> > + * Use this to kmalloc() the full bucket size ahead of time instead of using
> > + * ksize() to query the size after an allocation.
> > + */
> > +size_t kmalloc_size_roundup(size_t size);
> > +
> >   void __init kmem_cache_init_late(void);
> >   #if defined(CONFIG_SMP) && defined(CONFIG_SLAB)
> > diff --git a/mm/slab.c b/mm/slab.c
> > index 10e96137b44f..2da862bf6226 100644
> > --- a/mm/slab.c
> > +++ b/mm/slab.c
> > @@ -4192,11 +4192,14 @@ void __check_heap_object(const void *ptr, unsigned long n,
> >   #endif /* CONFIG_HARDENED_USERCOPY */
> >   /**
> > - * __ksize -- Uninstrumented ksize.
> > + * __ksize -- Report full size of underlying allocation
> >    * @objp: pointer to the object
> >    *
> > - * Unlike ksize(), __ksize() is uninstrumented, and does not provide the same
> > - * safety checks as ksize() with KASAN instrumentation enabled.
> > + * This should only be used internally to query the true size of allocations.
> > + * It is not meant to be a way to discover the usable size of an allocation
> > + * after the fact. Instead, use kmalloc_size_roundup(). Using memory beyond
> > + * the originally requested allocation size may trigger KASAN, UBSAN_BOUNDS,
> > + * and/or FORTIFY_SOURCE.
> >    *
> >    * Return: size of the actual memory used by @objp in bytes
> >    */
> > diff --git a/mm/slab_common.c b/mm/slab_common.c
> > index 457671ace7eb..d7420cf649f8 100644
> > --- a/mm/slab_common.c
> > +++ b/mm/slab_common.c
> > @@ -721,6 +721,26 @@ struct kmem_cache *kmalloc_slab(size_t size, gfp_t flags)
> >   	return kmalloc_caches[kmalloc_type(flags)][index];
> >   }
> > +size_t kmalloc_size_roundup(size_t size)
> > +{
> > +	struct kmem_cache *c;
> > +
> > +	/* Short-circuit the 0 size case. */
> > +	if (unlikely(size == 0))
> > +		return 0;
> > +	/* Short-circuit saturated "too-large" case. */
> > +	if (unlikely(size == SIZE_MAX))
> > +		return SIZE_MAX;
> > +	/* Above the smaller buckets, size is a multiple of page size. */
> > +	if (size > KMALLOC_MAX_CACHE_SIZE)
> > +		return PAGE_SIZE << get_order(size);
> > +
> > +	/* The flags don't matter since size_index is common to all. */
> > +	c = kmalloc_slab(size, GFP_KERNEL);
> > +	return c ? c->object_size : 0;
> > +}
> > +EXPORT_SYMBOL(kmalloc_size_roundup);
> 
> We need a SLOB version too as it's not yet removed... I added this:
> 
> diff --git a/mm/slob.c b/mm/slob.c
> index 2bd4f476c340..5dbdf6ad8bcc 100644
> --- a/mm/slob.c
> +++ b/mm/slob.c
> @@ -574,6 +574,20 @@ void kfree(const void *block)
>  }
>  EXPORT_SYMBOL(kfree);
> +size_t kmalloc_size_roundup(size_t size)
> +{
> +       /* Short-circuit the 0 size case. */
> +       if (unlikely(size == 0))
> +               return 0;
> +       /* Short-circuit saturated "too-large" case. */
> +       if (unlikely(size == SIZE_MAX))
> +               return SIZE_MAX;
> +
> +       return ALIGN(size, ARCH_KMALLOC_MINALIGN);
> +}
> +
> +EXPORT_SYMBOL(kmalloc_size_roundup);

Ah, perfect! Thanks for catching that. :)

FWIW:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
