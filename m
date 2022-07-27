Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 892E4595EBB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Aug 2022 17:05:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFE413F5E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Aug 2022 15:05:44 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 955973EE09
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jul 2022 11:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658922536; x=1690458536;
  h=date:from:to:cc:subject:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Az1nDJh3EQ7R5j6ZaG1tS/RcvdlaJn7u98b87B9prMk=;
  b=I88DR5hRECeuwump3oIxrEe+MVo9mW2PCHH5pWCo5bVpPEq0XeQAgIrY
   j7VOznVzQXKb96ULn6uiLz9+mMMvp0cUhxMjItlfhba7FwcVydPicFSNn
   EzNPLjG/CO8sAcH5dFa4Bdwm7w7OjRaakFxozhJkWSvQyGvwik1G8M1ej
   CZcbqwPKZ8AvOPBcFpph7K3iwVI1kwSl30QdtXdpy57/HpnkzI36U/irJ
   K71mOhB6GIyApHsfjMIzZrP8B9cLk3TTY3P3rhSuWcYEz/RvuRi0XKZbi
   N+384uVpzWCDJlvmtrV77c72zl2yraAAAIN5/o84R0s35pGsl6+NANmT8
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288976159"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200";
   d="scan'208";a="288976159"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2022 04:48:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200";
   d="scan'208";a="628346740"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO maurocar-mobl2) ([10.252.45.68])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2022 04:48:39 -0700
Date: Wed, 27 Jul 2022 13:48:36 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220727134836.7f7b5fab@maurocar-mobl2>
In-Reply-To: <567823d5-57ba-30db-dd64-de609df4d8c5@linux.intel.com>
References: <cover.1657800199.git.mchehab@kernel.org>
	<9f535a97f32320a213a619a30c961ba44b595453.1657800199.git.mchehab@kernel.org>
	<567823d5-57ba-30db-dd64-de609df4d8c5@linux.intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-MailFrom: mauro.chehab@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y7627N7DFKSKRO7UZJWIWQJICIF53YQ4
X-Message-ID-Hash: Y7627N7DFKSKRO7UZJWIWQJICIF53YQ4
X-Mailman-Approved-At: Tue, 16 Aug 2022 15:05:42 +0000
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, Chris Wilson <chris.p.wilson@intel.com>, Dave Airlie <airlied@redhat.com>, Tomas Winkler <tomas.winkler@intel.com>, Matthew Auld <matthew.auld@intel.com>, Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-media@vger.kernel.org, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH v2 06/21] drm/i915/gt: Batch TLB invalidations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y7627N7DFKSKRO7UZJWIWQJICIF53YQ4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 20 Jul 2022 11:49:59 +0100
Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:

> On 20/07/2022 08:13, Mauro Carvalho Chehab wrote:
> > On Mon, 18 Jul 2022 14:52:05 +0100
> > Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> >   
> >>
> >> On 14/07/2022 13:06, Mauro Carvalho Chehab wrote:  
> >>> From: Chris Wilson <chris.p.wilson@intel.com>
> >>>
> >>> Invalidate TLB in patch, in order to reduce performance regressions.  
> >>
> >> "in batches"?  
> > 
> > Yeah. Will fix it.

> > +void vma_invalidate_tlb(struct i915_address_space *vm, u32 tlb)
> > +{
> > +	/*
> > +	 * Before we release the pages that were bound by this vma, we
> > +	 * must invalidate all the TLBs that may still have a reference
> > +	 * back to our physical address. It only needs to be done once,
> > +	 * so after updating the PTE to point away from the pages, record
> > +	 * the most recent TLB invalidation seqno, and if we have not yet
> > +	 * flushed the TLBs upon release, perform a full invalidation.
> > +	 */
> > +	WRITE_ONCE(tlb, intel_gt_next_invalidate_tlb_full(vm->gt));  
> 
> Shouldn't tlb be a pointer for this to make sense?

Oh, my mistake! Will fix at the next version.

> >   
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> >>> index d8b94d638559..2da6c82a8bd2 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> >>> @@ -206,8 +206,12 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
> >>>    void ppgtt_unbind_vma(struct i915_address_space *vm,
> >>>    		      struct i915_vma_resource *vma_res)
> >>>    {
> >>> -	if (vma_res->allocated)
> >>> -		vm->clear_range(vm, vma_res->start, vma_res->vma_size);
> >>> +	if (!vma_res->allocated)
> >>> +		return;
> >>> +
> >>> +	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
> >>> +	if (vma_res->tlb)
> >>> +		vma_invalidate_tlb(vm, *vma_res->tlb);  
> >>
> >> The patch is about more than batching? If there is a security hole in
> >> this area (unbind) with the current code?  
> > 
> > No, I don't think there's a security hole. The rationale for this is
> > not due to it.  
> 
> In this case obvious question is why are these changes in the patch 
> which declares itself to be about batching invalidations? Because...

Because vma_invalidate_tlb() basically stores a TLB seqno, but the
actual invalidation is deferred to when the pages are unset, at
__i915_gem_object_unset_pages().

So, what happens is:

- on VMA sync mode, the need to invalidate TLB is marked at
  __vma_put_pages(), before VMA unbind;
- on async, this is deferred to happen at ppgtt_unbind_vma(), where
  it marks the need to invalidate TLBs.

On both cases, __i915_gem_object_unset_pages() is called later,
when the driver is ready to unmap the page.

> I am explaining why it looks to me that the patch is doing two things. 
> Implementing batching _and_ adding invalidation points at VMA unbind 
> sites, while so far we had it at backing store release only. Maybe I am 
> wrong and perhaps I am too slow to pick up on the explanation here.
> 
> So if the patch is doing two things please split it up.
> 
> I am further confused by the invalidation call site in evict and in 
> unbind - why there can't be one logical site since the logical sequence 
> is evict -> unbind.

The invalidation happens only on one place: __i915_gem_object_unset_pages().

Despite its name, vma_invalidate_tlb() just marks the need of doing TLB
invalidation.

Regards,
Mauro
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
