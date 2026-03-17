Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIohLudg5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DA8431127
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B9BF3F82F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:22:46 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6F4363F76C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 08:26:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=SGldMQZe;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.51) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48534237460so59109225e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 01:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773735985; x=1774340785; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xf2CUvi8YSfRB4MbEru11u5aBtMS7TuUP2oF3ZpZ3ic=;
        b=SGldMQZetPTRa/jj9FjPvETdvYDq0F0GEDUWzNNonlBmJF7cTGMVk/N70qGqq9xQqe
         Fp3eIcHITaJ/VGK4oHBB4t+3OMKpBBjtfsobzHQog/jRDUdJbrTeA23U/YbAm/lx/sCQ
         0DmCxt4prVrelPF7lbS/7GauufPn5pLpbBKl/XrWfTPue3BzvGkgIMISekADJvT0/1hX
         YT0dgFH4xktLGaWeVr+f7s1xnTnz5gNRc0Lh9xzjltVvxkqXieP3PgxrpNcoKfX8mJGw
         U3OKRHtj+I5+fbhxtmr2ypSJbalGaQnxyuLO8XUyF0sMjjWnsff6cDKPMMEMoonj8FSr
         uoQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773735985; x=1774340785;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xf2CUvi8YSfRB4MbEru11u5aBtMS7TuUP2oF3ZpZ3ic=;
        b=BLu51KPcTod4gzmE44JtmCVj6QqAP2ILvjLnUJfUukOBAUBbtxJu17vm+yTLVGZqCI
         3UZczMClXM0aUhZ5CVZdsCYCnm/ouZBxQfxg6bt9bNrG8SrFXOJzhYwIgj4BJ7u30Zgd
         UPAfFoVC3R019M78ruEEmIejK5rLC/fWmWc/oM8KWNzdRtsG0JeCJuJFpbsgLmrOE5w6
         YnukBOBw1eFGQBLqQWk0bkPf6Rg5DHjcAxJ3f1vHfUKI/3gh7KY6O+VD0vFngMU8CK4V
         uAtg3yazBV7u7ryP37Pnr+ZZqAMG9qu5PmBXnqSXEZ/zLvR1983U85aOixKL987+7j/s
         CWWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXJv82hCQBulNHKt4tyTBRcn+H0LPfeJazJ94gkKr6jZcJ5umyStr9h8mhrQPjVQyYOhSIQY4GXma4JVTP@lists.linaro.org
X-Gm-Message-State: AOJu0Yz6B0l+R8AzDsPDTwzDD37oqtZqmyD3v6QxLxkOsdBLWOcO5oPz
	+o0JZpIs062W2G7qtDB3l/WFBF5lB/o51g5UqwXs9bYxI9lNXyrqitPYx+lTy2UuWQk=
X-Gm-Gg: ATEYQzzSZhy1OKJwcjWeTO8d2sVbCNLl/hPQ05rmpommcnAHikHh6F8B9wZ3+SBuwfl
	coGVOm7kmQQLOj64bcxZROkXpcXCPcSw1Z/z43iTZpO/YKmv5+FqGZNbtkJJ66fbtFd7QaQhh5e
	94EPU78zSY95Pb2GX07fzDyQNffZ2VJ8Gw5v1nDRfCFDYCtt8VcncJL3987j8qiwdMocP5cU1g7
	ot1RBeKZCDRCKbew8b0pUpbqfRNkDeW6mUTMNf2I6okgTOfMbCSLEz0FKbXW4CZvnZZzMbmMwFJ
	aFUCERXpsyzL9aC4w6XijwNd8KPya0LlpY6/9iGBp8JgYsFn0no2/oRvtRpxZbBYkVt+iBdAANS
	vLpPztcJWl6b7VEhLMgq4ABxrHpQBF+CHdRiM7i+nlNpCQFtGPMTHg1bBwXMncUT+g6QVxUq+Zi
	pOZkeUxkWfPGKAqbvycqRRdTSHD3FeSAF9WjiVTpkWph0=
X-Received: by 2002:a05:600c:c8f:b0:485:3c05:24dc with SMTP id 5b1f17b1804b1-48556710c02mr263331735e9.33.1773735985061;
        Tue, 17 Mar 2026 01:26:25 -0700 (PDT)
Received: from FV6GYCPJ69 ([2001:1ae9:6084:ab00:81f8:c391:4972:647b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea97e8esm52842845e9.5.2026.03.17.01.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 01:26:24 -0700 (PDT)
Date: Tue, 17 Mar 2026 09:26:21 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <lufy3ppgiy7637iravgzabajj67chmqvg22qc3fd2yqe2p33ws@b54vibhehth2>
References: <20260316125857.617836-1-jiri@resnulli.us>
 <20260316125857.617836-2-jiri@resnulli.us>
 <15fcfa5e-c4b9-4b56-8f84-20dd5f66d643@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15fcfa5e-c4b9-4b56-8f84-20dd5f66d643@arm.com>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LHKYEK4B7FMB3A3FWXYH4QJLLMPSVEIG
X-Message-ID-Hash: LHKYEK4B7FMB3A3FWXYH4QJLLMPSVEIG
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:51 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LHKYEK4B7FMB3A3FWXYH4QJLLMPSVEIG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[824];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.151];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email,arm.com:email]
X-Rspamd-Queue-Id: 33DA8431127
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mon, Mar 16, 2026 at 07:25:55PM +0100, robin.murphy@arm.com wrote:
>On 2026-03-16 12:58 pm, Jiri Pirko wrote:
>> From: Jiri Pirko <jiri@nvidia.com>
>> 
>> Current CC designs don't place a vIOMMU in front of untrusted devices.
>> Instead, the DMA API forces all untrusted device DMA through swiotlb
>> bounce buffers (is_swiotlb_force_bounce()) which copies data into
>> decrypted memory on behalf of the device.
>> 
>> When a caller has already arranged for the memory to be decrypted
>> via set_memory_decrypted(), the DMA API needs to know so it can map
>> directly using the unencrypted physical address rather than bounce
>> buffering. Following the pattern of DMA_ATTR_MMIO, add
>> DMA_ATTR_CC_DECRYPTED for this purpose. Like the MMIO case, only the
>> caller knows what kind of memory it has and must inform the DMA API
>> for it to work correctly.
>
>Echoing Jason's point, if the intent of this is to indicate shared memory,
>please call it DMA_ATTR_CC_SHARED. Yes, some of the existing APIs are badly
>named because they conflated intent with implementation details; that is no
>reason to keep wilfully making the same mistake.
>
>At least with Arm CCA, the architecture enforces *confidentiality* pretty
>much orthogonally to encryption - if your threat model excludes physical
>attacks against DRAM, you can still have Realms isolated from each other (and
>of course other execution states) without even implementing the memory
>encryption feature; conversely if you do have it, then even all the
>shared/host memory may still be physically encrypted, it just has its own
>context (key) distinct from the Realm ones. Similarly, while it's not a
>"true" CoCo environment, pKVM has a similar notion of shared vs. private
>which can benefit from piggy-backing off much of the CoCo infrastructure in
>places like the DMA layer, but has nothing whatsoever to do with actual
>encryption.
>
>Furthermore, "shared" is just shorter and more readable, even before I invoke
>the previous discussion of why it should be "unencrypted" rather than
>"decrypted" anyway ;)

Okay, fair points. I'll rename it to shared for "v5". Thanks!


>
>> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
>> ---
>> v3->v4:
>> - added some sanity checks to dma_map_phys and dma_unmap_phys
>> - enhanced documentation of DMA_ATTR_CC_DECRYPTED attr
>> v1->v2:
>> - rebased on top of recent dma-mapping-fixes
>> ---
>>   include/linux/dma-mapping.h | 10 ++++++++++
>>   include/trace/events/dma.h  |  3 ++-
>>   kernel/dma/direct.h         | 14 +++++++++++---
>>   kernel/dma/mapping.c        | 13 +++++++++++--
>>   4 files changed, 34 insertions(+), 6 deletions(-)
>> 
>> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
>> index 29973baa0581..476964d2b22f 100644
>> --- a/include/linux/dma-mapping.h
>> +++ b/include/linux/dma-mapping.h
>> @@ -85,6 +85,16 @@
>>    * a cacheline must have this attribute for this to be considered safe.
>>    */
>>   #define DMA_ATTR_CPU_CACHE_CLEAN	(1UL << 11)
>> +/*
>> + * DMA_ATTR_CC_DECRYPTED: Indicates the DMA mapping is decrypted (shared) for
>> + * confidential computing guests. For normal system memory the caller must have
>> + * called set_memory_decrypted(), and pgprot_decrypted must be used when
>> + * creating CPU PTEs for the mapping. The same decrypted semantic may be passed
>> + * to the vIOMMU when it sets up the IOPTE. For MMIO use together with
>
>That being "the vIOMMU" that you said doesn't exist, and which is explicitly
>not supported?...

Yeah, I wanted to draw the full picture. I can put a not like "(when it
is going to be introduced)" or something like that to be clear.


>
>> + * DMA_ATTR_MMIO to indicate decrypted MMIO. Unless DMA_ATTR_MMIO is provided
>> + * a struct page is required.
>> + */
>> +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
>>   /*
>>    * A dma_addr_t can hold any valid DMA or bus address for the platform.  It can
>> diff --git a/include/trace/events/dma.h b/include/trace/events/dma.h
>> index 33e99e792f1a..b8082d5177c4 100644
>> --- a/include/trace/events/dma.h
>> +++ b/include/trace/events/dma.h
>> @@ -32,7 +32,8 @@ TRACE_DEFINE_ENUM(DMA_NONE);
>>   		{ DMA_ATTR_ALLOC_SINGLE_PAGES, "ALLOC_SINGLE_PAGES" }, \
>>   		{ DMA_ATTR_NO_WARN, "NO_WARN" }, \
>>   		{ DMA_ATTR_PRIVILEGED, "PRIVILEGED" }, \
>> -		{ DMA_ATTR_MMIO, "MMIO" })
>> +		{ DMA_ATTR_MMIO, "MMIO" }, \
>> +		{ DMA_ATTR_CC_DECRYPTED, "CC_DECRYPTED" })
>>   DECLARE_EVENT_CLASS(dma_map,
>>   	TP_PROTO(struct device *dev, phys_addr_t phys_addr, dma_addr_t dma_addr,
>> diff --git a/kernel/dma/direct.h b/kernel/dma/direct.h
>> index e89f175e9c2d..c047a9d0fda3 100644
>> --- a/kernel/dma/direct.h
>> +++ b/kernel/dma/direct.h
>> @@ -84,16 +84,24 @@ static inline dma_addr_t dma_direct_map_phys(struct device *dev,
>>   	dma_addr_t dma_addr;
>>   	if (is_swiotlb_force_bounce(dev)) {
>> -		if (attrs & DMA_ATTR_MMIO)
>> -			return DMA_MAPPING_ERROR;
>> +		if (!(attrs & DMA_ATTR_CC_DECRYPTED)) {
>> +			if (attrs & DMA_ATTR_MMIO)
>> +				return DMA_MAPPING_ERROR;
>> -		return swiotlb_map(dev, phys, size, dir, attrs);
>> +			return swiotlb_map(dev, phys, size, dir, attrs);
>> +		}
>> +	} else if (attrs & DMA_ATTR_CC_DECRYPTED) {
>> +		return DMA_MAPPING_ERROR;
>>   	}
>>   	if (attrs & DMA_ATTR_MMIO) {
>>   		dma_addr = phys;
>>   		if (unlikely(!dma_capable(dev, dma_addr, size, false)))
>>   			goto err_overflow;
>> +	} else if (attrs & DMA_ATTR_CC_DECRYPTED) {
>> +		dma_addr = phys_to_dma_unencrypted(dev, phys);
>> +		if (unlikely(!dma_capable(dev, dma_addr, size, false)))
>> +			goto err_overflow;
>>   	} else {
>>   		dma_addr = phys_to_dma(dev, phys);
>>   		if (unlikely(!dma_capable(dev, dma_addr, size, true)) ||
>> diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
>> index 3928a509c44c..abb0c88b188b 100644
>> --- a/kernel/dma/mapping.c
>> +++ b/kernel/dma/mapping.c
>> @@ -157,6 +157,7 @@ dma_addr_t dma_map_phys(struct device *dev, phys_addr_t phys, size_t size,
>>   {
>>   	const struct dma_map_ops *ops = get_dma_ops(dev);
>>   	bool is_mmio = attrs & DMA_ATTR_MMIO;
>> +	bool is_cc_decrypted = attrs & DMA_ATTR_CC_DECRYPTED;
>>   	dma_addr_t addr = DMA_MAPPING_ERROR;
>>   	BUG_ON(!valid_dma_direction(dir));
>> @@ -165,8 +166,11 @@ dma_addr_t dma_map_phys(struct device *dev, phys_addr_t phys, size_t size,
>>   		return DMA_MAPPING_ERROR;
>>   	if (dma_map_direct(dev, ops) ||
>> -	    (!is_mmio && arch_dma_map_phys_direct(dev, phys + size)))
>> +	    (!is_mmio && !is_cc_decrypted &&
>> +	     arch_dma_map_phys_direct(dev, phys + size)))
>>   		addr = dma_direct_map_phys(dev, phys, size, dir, attrs);
>> +	else if (is_cc_decrypted)
>> +		return DMA_MAPPING_ERROR;
>>   	else if (use_dma_iommu(dev))
>
>...although, why *shouldn't* this be allowed with a vIOMMU? (Especially given
>that a vIOMMU for untrusted devices can be emulated by the host VMM without
>the CoCo hypervisor having to care at all - again, at least on Arm and other
>architectures where IOMMUs are regular driver model devices)

Well, when iommu path is able to consume the attr, this restriction
should be lifted. This is basically a sanity check for the
dma_map_phys() caller.


>
>>   		addr = iommu_dma_map_phys(dev, phys, size, dir, attrs);
>>   	else if (ops->map_phys)
>
>Or indeed any other non-direct ops? Obviously all the legacy architectures
>like Alpha are never going to see this or care, but I could imagine Xen and
>possibly PowerPC might.

Same here.


>
>Thanks,
>Robin.
>
>> @@ -203,11 +207,16 @@ void dma_unmap_phys(struct device *dev, dma_addr_t addr, size_t size,
>>   {
>>   	const struct dma_map_ops *ops = get_dma_ops(dev);
>>   	bool is_mmio = attrs & DMA_ATTR_MMIO;
>> +	bool is_cc_decrypted = attrs & DMA_ATTR_CC_DECRYPTED;
>>   	BUG_ON(!valid_dma_direction(dir));
>> +
>>   	if (dma_map_direct(dev, ops) ||
>> -	    (!is_mmio && arch_dma_unmap_phys_direct(dev, addr + size)))
>> +	    (!is_mmio && !is_cc_decrypted &&
>> +	     arch_dma_unmap_phys_direct(dev, addr + size)))
>>   		dma_direct_unmap_phys(dev, addr, size, dir, attrs);
>> +	else if (is_cc_decrypted)
>> +		return;
>>   	else if (use_dma_iommu(dev))
>>   		iommu_dma_unmap_phys(dev, addr, size, dir, attrs);
>>   	else if (ops->unmap_phys)
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
