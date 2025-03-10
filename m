Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDF5A59890
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 15:57:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4BC1444CB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 14:57:02 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 0EC883EBA1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 14:56:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C18D226BC;
	Mon, 10 Mar 2025 07:56:54 -0700 (PDT)
Received: from [10.57.39.174] (unknown [10.57.39.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0B203F5A1;
	Mon, 10 Mar 2025 07:56:39 -0700 (PDT)
Message-ID: <2af9ea85-b31d-49c9-b574-38c33cc89cef@arm.com>
Date: Mon, 10 Mar 2025 14:56:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <20250310-dmem-cgroups-v1-6-2984c1bc9312@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250310-dmem-cgroups-v1-6-2984c1bc9312@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0EC883EBA1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[217.140.110.172:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[arm.com,none];
	FREEMAIL_TO(0.00)[kernel.org,linux-foundation.org,samsung.com,linaro.org,amd.com,collabora.com,arm.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org];
	FREEMAIL_CC(0.00)[xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[217.140.110.172:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:217.140.96.0/20];
	TAGGED_RCPT(0.00)[renesas];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: YGWJ2BPMQ26DPWM6ZNGRZVCF3GOWNWZP
X-Message-ID-Hash: YGWJ2BPMQ26DPWM6ZNGRZVCF3GOWNWZP
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/12] dma: direct: Provide accessor to dmem region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YGWJ2BPMQ26DPWM6ZNGRZVCF3GOWNWZP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2025-03-10 12:06 pm, Maxime Ripard wrote:
> Consumers of the direct DMA API will have to know which region their
> device allocate from in order for them to charge the memory allocation
> in the right one.

This doesn't seem to make much sense - dma-direct is not an allocator 
itself, it just provides the high-level 
dma_alloc_attrs/dma_alloc_pages/etc. interfaces wherein the underlying 
allocations _could_ come from CMA, but also a per-device 
coherent/restricted pool, or a global coherent/atomic pool, or the 
regular page allocator, or in one weird corner case the SWIOTLB buffer, 
or...

Thanks,
Robin.

> Let's provide an accessor for that region.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>   include/linux/dma-direct.h | 2 ++
>   kernel/dma/direct.c        | 8 ++++++++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
> index d7e30d4f7503a898a456df8eedf6a2cd284c35ff..2dd7cbccfaeed81c18c67aae877417fe89f2f2f5 100644
> --- a/include/linux/dma-direct.h
> +++ b/include/linux/dma-direct.h
> @@ -145,6 +145,8 @@ void dma_direct_free_pages(struct device *dev, size_t size,
>   		enum dma_data_direction dir);
>   int dma_direct_supported(struct device *dev, u64 mask);
>   dma_addr_t dma_direct_map_resource(struct device *dev, phys_addr_t paddr,
>   		size_t size, enum dma_data_direction dir, unsigned long attrs);
>   
> +struct dmem_cgroup_region *dma_direct_get_dmem_cgroup_region(struct device *dev);
> +
>   #endif /* _LINUX_DMA_DIRECT_H */
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 5b4e6d3bf7bcca8930877ba078aed4ce26828f06..ece1361077b6efeec5b202d838750afd967d473f 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -42,10 +42,18 @@ u64 dma_direct_get_required_mask(struct device *dev)
>   	u64 max_dma = phys_to_dma_direct(dev, phys);
>   
>   	return (1ULL << (fls64(max_dma) - 1)) * 2 - 1;
>   }
>   
> +#if IS_ENABLED(CONFIG_CGROUP_DMEM)
> +struct dmem_cgroup_region *
> +dma_direct_get_dmem_cgroup_region(struct device *dev)
> +{
> +	return dma_contiguous_get_dmem_cgroup_region(dev);
> +}
> +#endif
> +
>   static gfp_t dma_direct_optimal_gfp_mask(struct device *dev, u64 *phys_limit)
>   {
>   	u64 dma_limit = min_not_zero(
>   		dev->coherent_dma_mask,
>   		dev->bus_dma_limit);
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
