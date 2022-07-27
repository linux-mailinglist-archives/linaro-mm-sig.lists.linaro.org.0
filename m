Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1EB582730
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jul 2022 14:57:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAF3847F49
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jul 2022 12:57:07 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by lists.linaro.org (Postfix) with ESMTPS id BB3243EE09
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jul 2022 12:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658926624; x=1690462624;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ZZz/K3MC/VTWwgoscj+ukc/J2fLhkf7sdFzroIufZjI=;
  b=bEzdjuSLAchp3bif9n82dZzbMcoKtVILYnsjBWPd/6epBgbA1eyGE6mJ
   4mtmjqK0CtQb9oHqmgZoAvcThhed3/oLgq9TCmKa8UKWzUT/+h8KA+Lzh
   7Ogx+muySmuPRw+xufioRl33Bl5IqDodvTmFX7WnMjH56tHY291Wa6X23
   jvDWkSABXJTqUAOr6iFN5Ufvr5cFqHxQuP0mL9Gn1wvE8SjUDcG9AxLjf
   hYVYoZfuNGkT8AkjCAiAmjPO0PmFWlkk4cvtAC8pnl9+cOSQeR0npv4EN
   7RMMFDFWYYxKbKeyNddR6LJWF6FC3jOH7V2Ttl4Q1nTRq4E4V/k8NoWd1
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="267991718"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200";
   d="scan'208";a="267991718"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2022 05:56:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200";
   d="scan'208";a="927778582"
Received: from ncouniha-mobl.ger.corp.intel.com (HELO [10.213.217.229]) ([10.213.217.229])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2022 05:56:52 -0700
Message-ID: <d2337b73-ae34-3dd3-afa3-85c77dc2135e@linux.intel.com>
Date: Wed, 27 Jul 2022 13:56:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
References: <cover.1657800199.git.mchehab@kernel.org>
 <9f535a97f32320a213a619a30c961ba44b595453.1657800199.git.mchehab@kernel.org>
 <567823d5-57ba-30db-dd64-de609df4d8c5@linux.intel.com>
 <20220727134836.7f7b5fab@maurocar-mobl2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220727134836.7f7b5fab@maurocar-mobl2>
Message-ID-Hash: LGWZZMSSSERP7ICHM6LEW5XMAGIWDPOC
X-Message-ID-Hash: LGWZZMSSSERP7ICHM6LEW5XMAGIWDPOC
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, Chris Wilson <chris.p.wilson@intel.com>, Dave Airlie <airlied@redhat.com>, Tomas Winkler <tomas.winkler@intel.com>, Matthew Auld <matthew.auld@intel.com>, =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-media@vger.kernel.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH v2 06/21] drm/i915/gt: Batch TLB invalidations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LGWZZMSSSERP7ICHM6LEW5XMAGIWDPOC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 27/07/2022 12:48, Mauro Carvalho Chehab wrote:
> On Wed, 20 Jul 2022 11:49:59 +0100
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> 
>> On 20/07/2022 08:13, Mauro Carvalho Chehab wrote:
>>> On Mon, 18 Jul 2022 14:52:05 +0100
>>> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>>    
>>>>
>>>> On 14/07/2022 13:06, Mauro Carvalho Chehab wrote:
>>>>> From: Chris Wilson <chris.p.wilson@intel.com>
>>>>>
>>>>> Invalidate TLB in patch, in order to reduce performance regressions.
>>>>
>>>> "in batches"?
>>>
>>> Yeah. Will fix it.
> 
>>> +void vma_invalidate_tlb(struct i915_address_space *vm, u32 tlb)
>>> +{
>>> +	/*
>>> +	 * Before we release the pages that were bound by this vma, we
>>> +	 * must invalidate all the TLBs that may still have a reference
>>> +	 * back to our physical address. It only needs to be done once,
>>> +	 * so after updating the PTE to point away from the pages, record
>>> +	 * the most recent TLB invalidation seqno, and if we have not yet
>>> +	 * flushed the TLBs upon release, perform a full invalidation.
>>> +	 */
>>> +	WRITE_ONCE(tlb, intel_gt_next_invalidate_tlb_full(vm->gt));
>>
>> Shouldn't tlb be a pointer for this to make sense?
> 
> Oh, my mistake! Will fix at the next version.
> 
>>>    
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
>>>>> index d8b94d638559..2da6c82a8bd2 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
>>>>> @@ -206,8 +206,12 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
>>>>>     void ppgtt_unbind_vma(struct i915_address_space *vm,
>>>>>     		      struct i915_vma_resource *vma_res)
>>>>>     {
>>>>> -	if (vma_res->allocated)
>>>>> -		vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>>>>> +	if (!vma_res->allocated)
>>>>> +		return;
>>>>> +
>>>>> +	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>>>>> +	if (vma_res->tlb)
>>>>> +		vma_invalidate_tlb(vm, *vma_res->tlb);
>>>>
>>>> The patch is about more than batching? If there is a security hole in
>>>> this area (unbind) with the current code?
>>>
>>> No, I don't think there's a security hole. The rationale for this is
>>> not due to it.
>>
>> In this case obvious question is why are these changes in the patch
>> which declares itself to be about batching invalidations? Because...
> 
> Because vma_invalidate_tlb() basically stores a TLB seqno, but the
> actual invalidation is deferred to when the pages are unset, at
> __i915_gem_object_unset_pages().
> 
> So, what happens is:
> 
> - on VMA sync mode, the need to invalidate TLB is marked at
>    __vma_put_pages(), before VMA unbind;
> - on async, this is deferred to happen at ppgtt_unbind_vma(), where
>    it marks the need to invalidate TLBs.
> 
> On both cases, __i915_gem_object_unset_pages() is called later,
> when the driver is ready to unmap the page.

Sorry still not clear to me why is the patch moving marking of the need 
to invalidate (regardless if it a bit like today, or a seqno like in 
this patch) from bind to unbind?

What if the seqno was stored in i915_vma_bind, where the bit is set 
today, and all the hunks which touch the unbind and evict would 
disappear from the patch. What wouldn't work in that case, if anything?

Regards,

Tvrtko

> 
>> I am explaining why it looks to me that the patch is doing two things.
>> Implementing batching _and_ adding invalidation points at VMA unbind
>> sites, while so far we had it at backing store release only. Maybe I am
>> wrong and perhaps I am too slow to pick up on the explanation here.
>>
>> So if the patch is doing two things please split it up.
>>
>> I am further confused by the invalidation call site in evict and in
>> unbind - why there can't be one logical site since the logical sequence
>> is evict -> unbind.
> 
> The invalidation happens only on one place: __i915_gem_object_unset_pages().
> 
> Despite its name, vma_invalidate_tlb() just marks the need of doing TLB
> invalidation.
> 
> Regards,
> Mauro
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
