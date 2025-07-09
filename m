Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FDEAFEEC3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 18:15:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97FB545541
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 16:15:08 +0000 (UTC)
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	by lists.linaro.org (Postfix) with ESMTPS id C77C640B80
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jul 2025 16:14:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=M0zqQns2;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.23.234 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 569GEc6i866973;
	Wed, 9 Jul 2025 11:14:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752077678;
	bh=qkPRxiZdgjK9MgB5IvFZmTDsVI/VU2ccmWoC4LVxJFE=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=M0zqQns2DKphNA2swG9UqaIo7IoYKntrIGmkvc2iUARrXbP6sSF4SVaPLcI6bmHpq
	 KQsoW6yYS/2xRJ0gCdSyZGMiLyN9HyBChbctipR+tWT94oOGuy+5NBm2z/fqSS+TKY
	 lMC9jwXI/mEzWLNQRq8SzR9Ftci4vfIMKVhatzV0=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 569GEcTr296137
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 9 Jul 2025 11:14:38 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Wed, 9
 Jul 2025 11:14:37 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Wed, 9 Jul 2025 11:14:37 -0500
Received: from [10.250.35.60] ([10.250.35.60])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 569GEbe1052300;
	Wed, 9 Jul 2025 11:14:37 -0500
Message-ID: <6045bcfb-35ef-410b-bd7c-0ca7c5c589c4@ti.com>
Date: Wed, 9 Jul 2025 11:14:37 -0500
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
 <20250709-dma-buf-ecc-heap-v6-2-dac9bf80f35d@kernel.org>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250709-dma-buf-ecc-heap-v6-2-dac9bf80f35d@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C77C640B80
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.23.224/27];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[198.47.23.234:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	ASN(0.00)[asn:161, ipnet:198.47.23.0/24, country:US];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: OYMFFQNMHMDYCIJBLYKQCBULIVUKRAKL
X-Message-ID-Hash: OYMFFQNMHMDYCIJBLYKQCBULIVUKRAKL
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 2/2] dma-buf: heaps: cma: Create CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OYMFFQNMHMDYCIJBLYKQCBULIVUKRAKL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 7/9/25 7:44 AM, Maxime Ripard wrote:
> Aside from the main CMA region, it can be useful to allow userspace to
> allocate from the other CMA reserved regions.
> 
> Indeed, those regions can have specific properties that can be useful to
> a specific us-case.
> 
> For example, one of them platform I've been with has ECC enabled on the
> entire memory but for a specific region. Using that region to allocate
> framebuffers can be particular beneficial because enabling the ECC has a
> performance and memory footprint cost.
> 
> Thus, exposing these regions as heaps user-space can allocate from and
> import wherever needed allows to cover that use-case.
> 
> For now, only shared-dma-pools regions with the reusable property (ie,
> backed by CMA) are supported, but eventually we'll want to support other
> DMA pools types.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>   drivers/dma-buf/heaps/cma_heap.c | 52 +++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
> index 0df007111975447d555714d61ead9699287fd65a..31a18683ee25788a800f3f878fd958718a930ff7 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -19,10 +19,12 @@
>   #include <linux/err.h>
>   #include <linux/highmem.h>
>   #include <linux/io.h>
>   #include <linux/mm.h>
>   #include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_reserved_mem.h>
>   #include <linux/scatterlist.h>
>   #include <linux/slab.h>
>   #include <linux/vmalloc.h>
>   
>   #define DEFAULT_CMA_NAME "default_cma_region"
> @@ -421,7 +423,55 @@ static int __init add_default_cma_heap(void)
>   				ERR_PTR(ret));
>   	}
>   
>   	return 0;
>   }
> -module_init(add_default_cma_heap);
> +
> +static int __init add_cma_heaps(void)
> +{
> +	struct device_node *rmem_node;
> +	struct device_node *node;
> +	int ret;
> +
> +	ret = add_default_cma_heap();

Will this double add the default CMA region if it was declared
using DT (reserved-memory) when all those nodes are again scanned
through below? Might need a check in that loop for linux,cma-default.

> +	if (ret)
> +		return ret;
> +
> +	rmem_node = of_find_node_by_path("/reserved-memory");
> +	if (!rmem_node)
> +		goto out;

Can just return here, "out" path doesn't need to put a NULL node.

Andrew

> +
> +	for_each_child_of_node(rmem_node, node) {
> +		struct reserved_mem *rmem;
> +		struct cma *cma;
> +
> +		rmem = of_reserved_mem_lookup(node);
> +		if (!rmem) {
> +			ret = -EINVAL;
> +			goto err_put_node;
> +		}
> +
> +		if (!of_reserved_mem_is_contiguous(rmem))
> +			continue;
> +
> +		cma = rmem->priv;
> +		if (!cma) {
> +			ret = -EINVAL;
> +			goto err_put_node;
> +		}
> +
> +		ret = __add_cma_heap(cma, of_node_full_name(node));
> +		if (ret)
> +			goto err_put_node;
> +	}
> +
> +out:
> +	of_node_put(rmem_node);
> +	return 0;
> +
> +err_put_node:
> +	of_node_put(rmem_node);
> +	return ret;
> +}
> +
> +module_init(add_cma_heaps);
>   MODULE_DESCRIPTION("DMA-BUF CMA Heap");
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
