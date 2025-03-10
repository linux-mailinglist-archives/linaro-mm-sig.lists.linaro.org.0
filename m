Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D36A5A360
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 19:45:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB75244523
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 18:45:13 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 0866A4410C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 18:44:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADD28152B;
	Mon, 10 Mar 2025 11:45:08 -0700 (PDT)
Received: from [10.57.39.174] (unknown [10.57.39.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AB873F673;
	Mon, 10 Mar 2025 11:44:53 -0700 (PDT)
Message-ID: <0b057c55-fe02-4c83-af69-37770dc83eb8@arm.com>
Date: Mon, 10 Mar 2025 18:44:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <20250310-dmem-cgroups-v1-6-2984c1bc9312@kernel.org>
 <2af9ea85-b31d-49c9-b574-38c33cc89cef@arm.com>
 <20250310-expert-piculet-of-fascination-3813cd@houat>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250310-expert-piculet-of-fascination-3813cd@houat>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0866A4410C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	RCVD_IN_DNSWL_MED(-0.20)[217.140.110.172:from];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[linux-foundation.org,samsung.com,linaro.org,amd.com,collabora.com,arm.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[renesas];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: YW642L7XXD32AT3LLN6EG44UQUSMBEGM
X-Message-ID-Hash: YW642L7XXD32AT3LLN6EG44UQUSMBEGM
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/12] dma: direct: Provide accessor to dmem region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YW642L7XXD32AT3LLN6EG44UQUSMBEGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2025-03-10 4:28 pm, Maxime Ripard wrote:
> On Mon, Mar 10, 2025 at 02:56:37PM +0000, Robin Murphy wrote:
>> On 2025-03-10 12:06 pm, Maxime Ripard wrote:
>>> Consumers of the direct DMA API will have to know which region their
>>> device allocate from in order for them to charge the memory allocation
>>> in the right one.
>>
>> This doesn't seem to make much sense - dma-direct is not an allocator
>> itself, it just provides the high-level dma_alloc_attrs/dma_alloc_pages/etc.
>> interfaces wherein the underlying allocations _could_ come from CMA, but
>> also a per-device coherent/restricted pool, or a global coherent/atomic
>> pool, or the regular page allocator, or in one weird corner case the SWIOTLB
>> buffer, or...
> 
> I guess it wasn't super clear, but what I meant is that it's an
> allocator to the consumer: it gets called, and returns a buffer. How it
> does so is transparent to the device, and on the other side of the
> abstraction.
> 
> I do agree that the logic is complicated to follow, and that's what I
> was getting at in the cover letter.

Right, but ultimately my point is that when we later end up with:

struct dmem_cgroup_region *
dma_get_dmem_cgroup_region(struct device *dev)
{
	if (dma_alloc_direct(dev, get_dma_ops(dev)))
		return dma_direct_get_dmem_cgroup_region(dev);

		= dma_contiguous_get_dmem_cgroup_region(dev);

it's objectively wrong given what dma_alloc_direct() means in context:

void *dma_alloc_attrs(...)
{
	if (dma_alloc_direct(dev, ops))
		cpu_addr = dma_direct_alloc(...);

where dma_direct_alloc() may then use at least 5 different allocation 
methods, only one of which is CMA. Accounting things which are not CMA 
to CMA seems to thoroughly defeat the purpose of having such 
fine-grained accounting at all.

This is why the very notion of "consumers of dma-direct" should 
fundamentally not be a thing IMO. Drivers consume the DMA API 
interfaces, and the DMA API ultimately consumes various memory 
allocators, but what happens in between is nobody else's business; 
dma-direct happens to represent *some* paths between the two, but there 
are plenty more paths to the same (and different) allocators through 
other DMA API implementations as well. Which route a particular call 
takes to end up at a particular allocator is not meaningful unless you 
are the DMA ops dispatch code.

Or to put it another way, to even go for the "dumbest possible correct 
solution", the plumbing of dma_get_dmem_cgroup_region() would need to be 
about as complex and widespread as the plumbing of dma_alloc_attrs() 
itself ;)

I think I see why a simple DMA attribute couldn't be made to work, as 
dmem_cgroup_uncharge() can't simply look up the pool the same way 
dmem_cgroup_try_charge() found it, since we still need a cg for that and 
get_current_dmemcs() can't be assumed to be stable over time, right?
At the point I'm probably starting to lean towards a whole new DMA op 
with a properly encapsulated return type (and maybe a long-term goal of 
consolidating the 3 or 4 different allocation type we already have), or 
just have a single dmem region for "DMA API memory" and don't care where 
it came from (although I do see the issues with that too - you probably 
wouldn't want to ration a device-private pool the same way as global 
system memory, for example)

Thanks,
Robin.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
