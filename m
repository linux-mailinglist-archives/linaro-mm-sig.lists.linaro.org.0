Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 613B0AFEE35
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 17:56:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 72FBA45523
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 15:56:06 +0000 (UTC)
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	by lists.linaro.org (Postfix) with ESMTPS id BB6C542503
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jul 2025 15:55:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b="m/wnR0mE";
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.246 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 569FtgxY1505172;
	Wed, 9 Jul 2025 10:55:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752076542;
	bh=MfT0l7g5qijaXkNJNgIEaao8kUCMjEOWRY9UATjc5Fs=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=m/wnR0mEUQArPldBkTx+ov0ZYMSWaEU3JA2vN1d+CzuxUhpF8siwhchRvgnzumej3
	 SjD3lNbs5iG+FDBPKrEhj7llrTiTJ3YmiKitqpdUWmlXFe3+9kUVwKX7DQJ6Fs7Dgt
	 mngh3D5MNBPGFUqXGHnDY6HOP6E+BFZMQDBJ+lp0=
Received: from DFLE20.ent.ti.com (dfle20.ent.ti.com [10.64.6.57])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 569Ftf0v282164
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 9 Jul 2025 10:55:41 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE20.ent.ti.com
 (10.64.6.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.1748.24; Wed, 9 Jul
 2025 10:55:41 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Wed, 9 Jul 2025 10:55:41 -0500
Received: from [10.250.35.60] ([10.250.35.60])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 569FteH03927392;
	Wed, 9 Jul 2025 10:55:40 -0500
Message-ID: <8b36f958-3406-421d-ab94-5e49f911f92e@ti.com>
Date: Wed, 9 Jul 2025 10:55:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        Sumit Semwal
	<sumit.semwal@linaro.org>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Brian Starkey <Brian.Starkey@arm.com>,
        John Stultz <jstultz@google.com>,
        "T.J. Mercier" <tjmercier@google.com>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marek
 Szyprowski <m.szyprowski@samsung.com>,
        Robin Murphy <robin.murphy@arm.com>
References: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
 <20250709-dma-buf-ecc-heap-v6-1-dac9bf80f35d@kernel.org>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250709-dma-buf-ecc-heap-v6-1-dac9bf80f35d@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BB6C542503
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: EVFTHF42EYBAA5ZFS53I7VNFY7VEZIF3
X-Message-ID-Hash: EVFTHF42EYBAA5ZFS53I7VNFY7VEZIF3
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 1/2] dma/contiguous: Add helper to test reserved memory type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EVFTHF42EYBAA5ZFS53I7VNFY7VEZIF3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 7/9/25 7:44 AM, Maxime Ripard wrote:
> A given reserved-memory region can be of multiple types.
> 
> We have currently four types defined in the tree: contiguous, backed by
> CMA, coherent and swiotlb, backed by their respective allocators, and a
> platform-specific one for tegra.
> 
> However, some users, like dma-buf heaps, might be interested in the
> exact type of a reserved memory region they are getting. It would thus
> be useful to have helpers to test if a given region is of a given type.
> 
> Since we only care about CMA for now though, let's create one for CMA
> only.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>   include/linux/dma-map-ops.h | 13 +++++++++++++
>   kernel/dma/contiguous.c     |  7 +++++++
>   2 files changed, 20 insertions(+)
> 
> diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
> index f48e5fb88bd5dd346094bbf2ce1b79e5f5bfe1a6..ea646acb6367bd062619b337013db221749f85ab 100644
> --- a/include/linux/dma-map-ops.h
> +++ b/include/linux/dma-map-ops.h
> @@ -153,10 +153,23 @@ static inline void dma_free_contiguous(struct device *dev, struct page *page,
>   {
>   	__free_pages(page, get_order(size));
>   }
>   #endif /* CONFIG_DMA_CMA*/
>   
> +#if defined(CONFIG_DMA_CMA) && defined(CONFIG_OF_RESERVED_MEM)
> +struct reserved_mem;
> +
> +bool of_reserved_mem_is_contiguous(const struct reserved_mem *rmem);
> +#else
> +struct reserved_mem;
> +
> +static inline bool of_reserved_mem_is_contiguous(const struct reserved_mem *rmem)
> +{
> +	return false;
> +}
> +#endif
> +

Should this all go in linux/of_reserved_mem.h?

>   #ifdef CONFIG_DMA_DECLARE_COHERENT
>   int dma_declare_coherent_memory(struct device *dev, phys_addr_t phys_addr,
>   		dma_addr_t device_addr, size_t size);
>   void dma_release_coherent_memory(struct device *dev);
>   int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index 8df0dfaaca18eeb0a20145512ba64425d2e7601e..ace4982e928e404315cf38551e1596f7ed445156 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -493,6 +493,13 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
>   		&rmem->base, (unsigned long)rmem->size / SZ_1M);
>   
>   	return 0;
>   }
>   RESERVEDMEM_OF_DECLARE(cma, "shared-dma-pool", rmem_cma_setup);
> +
> +bool of_reserved_mem_is_contiguous(const struct reserved_mem *rmem)

Needing to check where the reserved mem comes from seems wrong, it hints
that the reserved mem region drivers, like this one, are not in full control
of their regions. Instead of looping over all the regions in DT in the next
patch and searching for the owner, how about the owner (this driver) call
into __add_cma_heap() if it chooses to expose the region in that way.

(I know RESERVEDMEM_OF_DECLARE callbacks are done very early and the CMA-Heap
driver might not be able to deal with adding heaps at this point, so maybe
keeping a table the heaps driver can later iterate over would also work).

Andrew

> +{
> +	return rmem->ops == &rmem_cma_ops;
> +}
> +EXPORT_SYMBOL_GPL(of_reserved_mem_is_contiguous);
> +
>   #endif
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
