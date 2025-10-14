Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 30660BD803E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 09:54:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0D8545DE3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 07:54:44 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 95FB544498
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Oct 2025 07:54:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=rFDo5Ulp;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20251014075440euoutp02d665d2f6f897c3f383afb37342cc255a~uTGArcTEn2338723387euoutp02x
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Oct 2025 07:54:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20251014075440euoutp02d665d2f6f897c3f383afb37342cc255a~uTGArcTEn2338723387euoutp02x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1760428480;
	bh=JOoWy2TOH/HfwMyNVGGIpIsyLOQO7Ec5UY2tpwzKToc=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=rFDo5Ulpk/N2rsM7tt353fcS/+GCTpW3dmbQIXB7/Qe+QTMFvkBPDPu3LBqQdNzEE
	 yQ9SOgut5u2/NEoLzVlCbP6bah80bMipVkR8lzdR2pwPQjAYMjbOB7Je2JgkMmAs48
	 Po3UyQyQuH9iAcw7cfFxOZKqAEuKpoybz4GdB68w=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20251014075439eucas1p1a0347c3c70491684dd09a88171c5bdfe~uTGASgFS_1159211592eucas1p1b;
	Tue, 14 Oct 2025 07:54:39 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251014075438eusmtip1da3f2669673b5a70103143b6d02ac1a8~uTF-T-zpl1304013040eusmtip1V;
	Tue, 14 Oct 2025 07:54:38 +0000 (GMT)
Message-ID: <e549a9a3-6038-4a9a-aa2a-404fa8fad5c9@samsung.com>
Date: Tue, 14 Oct 2025 09:54:38 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@kernel.org>, Sumit Semwal
	<sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	Jonathan Corbet <corbet@lwn.net>, =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20251013-dma-buf-ecc-heap-v8-3-04ce150ea3d9@kernel.org>
X-CMS-MailID: 20251014075439eucas1p1a0347c3c70491684dd09a88171c5bdfe
X-Msg-Generator: CA
X-RootMTR: 20251013083534eucas1p10ed51d5c1d836cb573d959a8c83a750a
X-EPHeader: CA
X-CMS-RootMailID: 20251013083534eucas1p10ed51d5c1d836cb573d959a8c83a750a
References: <20251013-dma-buf-ecc-heap-v8-0-04ce150ea3d9@kernel.org>
	<CGME20251013083534eucas1p10ed51d5c1d836cb573d959a8c83a750a@eucas1p1.samsung.com>
	<20251013-dma-buf-ecc-heap-v8-3-04ce150ea3d9@kernel.org>
X-Rspamd-Queue-Id: 95FB544498
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.09 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.12:from];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JFQQTKCR6KJKQ3E222LXQOPQLX5FEUOP
X-Message-ID-Hash: JFQQTKCR6KJKQ3E222LXQOPQLX5FEUOP
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 3/5] dma: contiguous: Register reusable CMA regions at boot
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JFQQTKCR6KJKQ3E222LXQOPQLX5FEUOP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 13.10.2025 10:35, Maxime Ripard wrote:
> In order to create a CMA dma-buf heap instance for each CMA heap region
> in the system, we need to collect all of them during boot.
>
> They are created from two main sources: the reserved-memory regions in
> the device tree, and the default CMA region created from the
> configuration or command line parameters, if no default region is
> provided in the device tree.
>
> Let's collect all the device-tree defined CMA regions flagged as
> reusable.
>
> Reviewed-by: T.J. Mercier <tjmercier@google.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>   kernel/dma/contiguous.c | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index d9b9dcba6ff7cf5904ac93b72c061fd59072c41b..d67e95094749d45f43c1809c175e491a3f55b2e1 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -40,10 +40,11 @@
>   #include <asm/page.h>
>   
>   #include <linux/memblock.h>
>   #include <linux/err.h>
>   #include <linux/sizes.h>
> +#include <linux/dma-buf/heaps/cma.h>
>   #include <linux/dma-map-ops.h>
>   #include <linux/cma.h>
>   #include <linux/nospec.h>
>   
>   #ifdef CONFIG_CMA_SIZE_MBYTES
> @@ -491,9 +492,13 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
>   	rmem->priv = cma;
>   
>   	pr_info("Reserved memory: created CMA memory pool at %pa, size %ld MiB\n",
>   		&rmem->base, (unsigned long)rmem->size / SZ_1M);
>   
> +	err = dma_heap_cma_register_heap(cma);
> +	if (err)
> +		pr_warn("Couldn't register CMA heap.");
> +
>   	return 0;
>   }
>   RESERVEDMEM_OF_DECLARE(cma, "shared-dma-pool", rmem_cma_setup);
>   #endif
>
Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
