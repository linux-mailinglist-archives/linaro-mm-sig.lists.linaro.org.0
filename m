Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDBmN2ImD2paGgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 17:36:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9655A8779
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 17:36:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DEA640985
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 15:36:01 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id B31974044C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 15:35:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bEhNVt1G;
	spf=pass (lists.linaro.org: domain of aneesh.kumar@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=aneesh.kumar@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4BBA8601F3;
	Thu, 21 May 2026 15:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EBDC1F00A3B;
	Thu, 21 May 2026 15:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779377751;
	bh=5PUD/3vmVzMg81CR18Fk250apIi9RXyWW+eG5eaM6s8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=bEhNVt1GsNTReAabbrbOrGd7094+P/Sa5116B7JLNnREdhOzMGX2Gz8rO+jhs2hjr
	 zSsrlqBKOoM5flIzMvqZnYd7J9cRg2EDO74CdatpbE2YJ1B0uNV1ztRl6S0G+N0vsU
	 yB1er4WO6TtsqsXhRMk1/TlGmKa+L1/FsD2GOdqw+oQm9GLeFT3Bj3KKSnDOBHF4B/
	 U+yyOFENz4I54n62JgPRSNPUjWlQ+ltOi5Wo2jvwQbED3vUWkLuR6lXfvEDJvLC4tN
	 p2nKWsvyoT705a20eObfWQInTblFf6CCtvyGPA+dGyxm9WCeiQxTawQdn76dB9GHg8
	 A/2+Gwm/0LbAQ==
X-Mailer: emacs 30.2 (via feedmail 11-beta-1 I)
From: Aneesh Kumar K.V <aneesh.kumar@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
In-Reply-To: <20260426130531.GF804026@ziepe.ca>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us> <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
 <20260421121004.GA3611611@ziepe.ca> <yq5aik9jcpzm.fsf@kernel.org>
 <20260424225514.GE804026@ziepe.ca> <20260426130531.GF804026@ziepe.ca>
Date: Thu, 21 May 2026 21:05:39 +0530
Message-ID: <yq5azf1s6aic.fsf@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 3XWZJ53MAGHIJBWNELMZGME5DOEZW7TT
X-Message-ID-Hash: 3XWZJ53MAGHIJBWNELMZGME5DOEZW7TT
X-MailFrom: aneesh.kumar@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3XWZJ53MAGHIJBWNELMZGME5DOEZW7TT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.941];
	FROM_NEQ_ENVFROM(0.00)[aneesh.kumar@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:email,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 7B9655A8779
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jason Gunthorpe <jgg@ziepe.ca> writes:

>> > static inline dma_addr_t dma_direct_map_phys(struct device *dev,
>> > 		phys_addr_t phys, size_t size, enum dma_data_direction dir,
>> > 		unsigned long attrs, bool flush)
>> > {
>> > 	dma_addr_t dma_addr;
>> > 
>> > 	if (is_swiotlb_force_bounce(dev)) {
>> > 		if (attrs & (DMA_ATTR_MMIO | DMA_ATTR_REQUIRE_COHERENT))
>> > 			return DMA_MAPPING_ERROR;
>> > 
>> > 		return swiotlb_map(dev, phys, size, dir, attrs);
>> > 	}
>> > 
>> > 	if (attrs & DMA_ATTR_MMIO) {
>> > 		dma_addr = phys;
>> > 		if (unlikely(!dma_capable(dev, dma_addr, size, false, attrs)))
>> > 			goto err_overflow;
>> > 		goto dma_mapped;
>> 
>> I suspect P2P is probably broken on CC because this doesn't make
>> sense..
>
> Actually, I suppose it is fully broken because it will jump to swiotlb
> and then should fail.
>
>> This should flow into the
>> phys_to_dma_unencrypted/phys_to_dma_encrypted block as well AFAICT, it
>> shouldn't just assign phys. Assigning phys to dma on a CC system is
>> always wrong, right?
>> 
>> It is is more like
>> 
>>         /* To be updated, callers should specify MMIO | CC_SHARED instead of
>> 	   * implying it. */
>>         if (attrs & DMA_ATTR_MMIO)
>> 	   attrs |= DMA_ATTR_CC_SHARED;
>
> So no need for this if, we can go directly to marking the MMIO callers
> with DMA_ATTR_CC_SHARED once this is fixed for mmio:
>
>>         if (attrs & DMA_ATTR_CC_SHARED) {
>>  		dma_addr = phys_to_dma_unencrypted(dev, phys);
>>  	} else {
>>  		dma_addr = phys_to_dma_encrypted(dev, phys);
>>  	}
>
> Jasn

I am wondering whether this is better

static inline dma_addr_t dma_direct_map_phys(struct device *dev,
		phys_addr_t phys, size_t size, enum dma_data_direction dir,
		unsigned long attrs, bool flush)
{
	dma_addr_t dma_addr;

	/*
	 * For a device requiring unencrypted DMA, MMIO memory is treated
	 * as shared.
	 */
	if (force_dma_unencrypted(dev) && (attrs & DMA_ATTR_MMIO))
		attrs |= DMA_ATTR_CC_SHARED;

.....

	if (attrs & DMA_ATTR_CC_SHARED)
		dma_addr = phys_to_dma_unencrypted(dev, phys);
	else
		dma_addr = phys_to_dma_encrypted(dev, phys);

	if (attrs & DMA_ATTR_MMIO) {
		if (unlikely(!dma_capable(dev, dma_addr, size, false, attrs)))
			goto err_overflow;
		goto dma_mapped;
	}


....
-aneesh
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
