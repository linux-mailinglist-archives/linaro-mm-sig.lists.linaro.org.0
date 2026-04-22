Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEK8NCpI6mkhxgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B27DB454DB1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BEB7405D5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 16:26:17 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 5B2B93F727
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 09:18:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=LLQZJ+1k;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of aneesh.kumar@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=aneesh.kumar@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8F2306011F;
	Wed, 22 Apr 2026 09:18:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7191C19425;
	Wed, 22 Apr 2026 09:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776849528;
	bh=K8pcoY2WgjFw92Yz0dOk8n5L/ZPIsmzw+Zb1EkmEH/o=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=LLQZJ+1kSY/o60d6TTX7DKYBkuuD8VNc4XiuneZZhwI/K3F3/KYPHPlKbb/7y41F0
	 gW1geJvdRNu0QQF2ij+TdA1Ko6jujZCK/cQOjIaqyw1+Do9f0iniyArT4lNax/LEZV
	 hM6b/dNMUWVUMQmA71kXlXPG59YnQYZW9oqBVyfSD41/HPP2mLSWqE4thBh30kYWAe
	 ++lrrvZfP3q9VR1MrQ0mrIYbQIm5mwvKy5DbT3+ooWNPnWVuklVR8qXC5xAHiG3bju
	 uV+jNi6tXJJiBLTXufIj9S5p9mECdkVaQQ3Uo/5V7pf2LGjpD8hv6xWI7SxI3bKhVG
	 N/ctHrkaSbPjA==
X-Mailer: emacs 30.2 (via feedmail 11-beta-1 I)
From: Aneesh Kumar K.V <aneesh.kumar@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>, Jiri Pirko <jiri@resnulli.us>
In-Reply-To: <20260421121004.GA3611611@ziepe.ca>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us> <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
 <20260421121004.GA3611611@ziepe.ca>
Date: Wed, 22 Apr 2026 14:48:37 +0530
Message-ID: <yq5aik9jcpzm.fsf@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: aneesh.kumar@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6TBALH7RJJUMPEELJHGHIURXUKN5UTRC
X-Message-ID-Hash: 6TBALH7RJJUMPEELJHGHIURXUKN5UTRC
X-Mailman-Approved-At: Thu, 23 Apr 2026 16:26:03 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6TBALH7RJJUMPEELJHGHIURXUKN5UTRC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[31];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[aneesh.kumar@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B27DB454DB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jason Gunthorpe <jgg@ziepe.ca> writes:

> On Tue, Apr 21, 2026 at 01:53:31PM +0200, Jiri Pirko wrote:
>> >> You reach there when is_swiotlb_force_bounce(dev) is true and
>> >> DMA_ATTR_CC_SHARED is set. What am I missing?
>> >>
>> >
>> >So a swiotlb_force_bounce will not use swiotlb bouncing if
>> >DMA_ATTR_CC_SHARED is set ? 
>> 
>> Correct. Bouncing does not make sense in this case, as shared memory is
>> already being mapped.
>
> It is a little bit mangled, there are many reasons force_swiotlb can
> be set, but we loose them as it flows through - swiotlb_init()
> just has a simple SWIOTLB_FORCE
>
> Ideally DMA_ATTR_CC_SHARED would skip swiotlb only if it is being
> selected for CC reasons. For instance if you have the swiotlb force
> command line parameter I would still expect it bounce shared memory.
>
> Arguably I think this arch flow is misdesigned, the
> is_swiotlb_force_bounce() should not be used for CC. dma_capable() is
> the correct API to check if the device can DMA to the presented
> address, and it will trigger swiotlb_map() just the same without
> creating this gap.
>
> Jason

Something like this?

static inline dma_addr_t dma_direct_map_phys(struct device *dev,
		phys_addr_t phys, size_t size, enum dma_data_direction dir,
		unsigned long attrs, bool flush)
{
	dma_addr_t dma_addr;

	if (is_swiotlb_force_bounce(dev)) {
		if (attrs & (DMA_ATTR_MMIO | DMA_ATTR_REQUIRE_COHERENT))
			return DMA_MAPPING_ERROR;

		return swiotlb_map(dev, phys, size, dir, attrs);
	}

	if (attrs & DMA_ATTR_MMIO) {
		dma_addr = phys;
		if (unlikely(!dma_capable(dev, dma_addr, size, false, attrs)))
			goto err_overflow;
		goto dma_mapped;
	} else if (attrs & DMA_ATTR_CC_SHARED) {
		dma_addr = phys_to_dma_unencrypted(dev, phys);
	} else {
		dma_addr = phys_to_dma_encrypted(dev, phys);
	}

	if (unlikely(!dma_capable(dev, dma_addr, size, true, attrs)) ||
	    dma_kmalloc_needs_bounce(dev, size, dir)) {
		if (is_swiotlb_active(dev) &&
		    !(attrs & DMA_ATTR_REQUIRE_COHERENT))
			return swiotlb_map(dev, phys, size, dir, attrs);
		goto err_overflow;
	}

dma_mapped:
	if (!dev_is_dma_coherent(dev) &&
	    !(attrs & (DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_MMIO))) {
		arch_sync_dma_for_device(phys, size, dir);
		if (flush)
			arch_sync_dma_flush();
	}
	return dma_addr;

and dma_capable() now does
static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size,
		bool is_ram, unsigned long attrs)
{
....

	/*
	 * if phys addr attribute is encrypted but the
	 * device is forcing an encrypted dma addr
	 */
	if (!(attrs & DMA_ATTR_CC_SHARED) && force_dma_unencrypted(dev))
		return false;
...

}


-aneesh
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
