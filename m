Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE269B00554
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 16:34:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69B724494F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 14:34:38 +0000 (UTC)
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	by lists.linaro.org (Postfix) with ESMTPS id 4B2D641598
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Jul 2025 14:34:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=ebuZC6cz;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.246 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56AEYD8O1757269;
	Thu, 10 Jul 2025 09:34:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752158053;
	bh=BVL6wME1yGZ7fV9BQGxihbfGblWI8yXM9/Z8B5NCWK8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=ebuZC6cziSuduAq4B/3p4+AftJaE8Zh00qI5y8wbuEXgRqHOVvZfzM2CJUyezlSe3
	 kFdst2ABoAzSeksNw01pBBVZ8erPNpsGGxthlGf9A1riGvEBfAIrkXsZR21AapJuF6
	 N1nt4BfD33xxYYYMUAypl3hcyeCnrzwk8bXxMiOc=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56AEYDip253174
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 10 Jul 2025 09:34:13 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 10
 Jul 2025 09:34:13 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 10 Jul 2025 09:34:13 -0500
Received: from [10.250.35.60] ([10.250.35.60])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56AEYCen1513328;
	Thu, 10 Jul 2025 09:34:12 -0500
Message-ID: <aba6defc-817f-477c-8569-c5e01ca734b6@ti.com>
Date: Thu, 10 Jul 2025 09:34:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>
References: <20250616-dma-buf-heap-names-doc-v2-1-8ae43174cdbf@kernel.org>
 <9182c5cd-b3de-470b-bf84-3ebef309def6@ti.com>
 <20250710-knowing-premium-goldfish-0bfe6e@houat>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250710-knowing-premium-goldfish-0bfe6e@houat>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4B2D641598
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_FIVE(0.00)[5];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,redhat.com,kernel.org,gmail.com];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[ti.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: PKUGQNKCOLQD6VSKKTHE53PTDCQLHXOM
X-Message-ID-Hash: PKUGQNKCOLQD6VSKKTHE53PTDCQLHXOM
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PKUGQNKCOLQD6VSKKTHE53PTDCQLHXOM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 7/10/25 2:06 AM, Maxime Ripard wrote:
> On Wed, Jul 09, 2025 at 12:39:15PM -0500, Andrew Davis wrote:
>> On 6/16/25 10:21 AM, Maxime Ripard wrote:
>>> We've discussed a number of times of how some heap names are bad, but
>>> not really what makes a good heap name.
>>>
>>> Let's document what we expect the heap names to look like.
>>>
>>> Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>
>>> Signed-off-by: Maxime Ripard <mripard@kernel.org>
>>> ---
>>> Changes in v2:
>>> - Added justifications for each requirement / suggestions
>>> - Added a mention and example of buffer attributes
>>> - Link to v1: https://lore.kernel.org/r/20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org
>>> ---
>>>    Documentation/userspace-api/dma-buf-heaps.rst | 38 +++++++++++++++++++++++++++
>>>    1 file changed, 38 insertions(+)
>>>
>>> diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
>>> index 535f49047ce6450796bf4380c989e109355efc05..835ad1c3a65bc07b6f41d387d85c57162909e859 100644
>>> --- a/Documentation/userspace-api/dma-buf-heaps.rst
>>> +++ b/Documentation/userspace-api/dma-buf-heaps.rst
>>> @@ -21,5 +21,43 @@ following heaps:
>>>       usually created either through the kernel commandline through the
>>>       `cma` parameter, a memory region Device-Tree node with the
>>>       `linux,cma-default` property set, or through the `CMA_SIZE_MBYTES` or
>>>       `CMA_SIZE_PERCENTAGE` Kconfig options. Depending on the platform, it
>>>       might be called ``reserved``, ``linux,cma``, or ``default-pool``.
>>> +
>>> +Naming Convention
>>> +=================
>>> +
>>> +``dma-buf`` heaps name should meet a number of constraints:
>>> +
>>> +- That name must be stable, and must not change from one version to the
>>> +  other. Userspace identifies heaps by their name, so if the names ever
>>> +  changes, we would be likely to introduce regressions.
>>> +
>>> +- That name must describe the memory region the heap will allocate from,
>>> +  and must uniquely identify it in a given platform. Since userspace
>>> +  applications use the heap name as the discriminant, it must be able to
>>> +  tell which heap it wants to use reliably if there's multiple heaps.
>>> +
>>> +- That name must not mention implementation details, such as the
>>> +  allocator. The heap driver will change over time, and implementation
>>> +  details when it was introduced might not be relevant in the future.
>>> +
>>> +- The name should describe properties of the buffers that would be
>>> +  allocated. Doing so will make heap identification easier for
>>> +  userspace. Such properties are:
>>> +
>>> +  - ``cacheable`` / ``uncacheable`` for buffers with CPU caches enabled
>>> +    or disabled;
>>> +
>>
>> We should avoid exposing cacheability to userspace. What users care about
>> is if writes are readable by the other side (and vice versa) without SYNC
>> operations in-between. This property is "coherency". Being non-cached
>> is just one way to achieve coherency on some systems. For many systems
>> even cached buffers are still coherent and manually specifying "non-cached"
>> causes unneeded performance issues.
> 
> I disagree. If you want to do any kind of software rendering, the
> buffers being cached is absolutely critical to having decent
> performance.
> 

I think we are saying the same thing, the default should be cached.
If the user doesn't have an option for specifying "non-cached" then
they will always get the better performing cached buffers.

>> DMA-BUFs are default assumed to be non-coherent and sync operations should
>> be always be performed (if the buffer is actually coherent these operations
>> are turned into NOPs and no harm done). If sync operations cannot be done
>> (for instance small multi-writer ring-buffers), then the property can
>> be simply:
>>
>> - ``coherent`` for buffers which do not require sync operations
> 
> That would be a change in the uAPI which, so far, requires sync
> operations to be performed. I'm not necessarily agaisnt it, but handling
> coherency in general is not what this patch is about.

Agree, so then let's just drop the line about cacheable/coherent from
this doc, we can deal with those properties and document them when/if
they are ever needed.

Andrew

> 
> Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
