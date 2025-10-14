Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A17BBD805F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 09:55:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91F5F3F6A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 07:55:27 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id 683BE3F6A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Oct 2025 07:55:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=G+rUOrf2;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20251014075523euoutp01aaa20a47e2022c0ece8c1d7760c2c3eb~uTGoevwND0161801618euoutp01d
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Oct 2025 07:55:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20251014075523euoutp01aaa20a47e2022c0ece8c1d7760c2c3eb~uTGoevwND0161801618euoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1760428523;
	bh=DjNnE0OoknK6AVx8/+2pbe/xE5HGwUdWMg8IvkZJLyo=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=G+rUOrf2VbGmEo75oZTr8zkHDSf9qXNFiVP/3Geln7oDTNzZhKeAJ+8xTAeQk66wY
	 YnOFNQy8N4KGw2ezBJx23mxi++aZtbo1xA3NKbRYDiojplQAcf6JadRin7gyIOf0wN
	 zmcKlLsUmXtJTEmYJ6f5tGtRVxECHry28uYmwA14=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20251014075522eucas1p1ee4792f47a967cac07e306140aa77ebd~uTGoAVtc01507915079eucas1p1h;
	Tue, 14 Oct 2025 07:55:22 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251014075521eusmtip15224e89e824cfe715eb663fc5921579f~uTGnLE7qI1606716067eusmtip1W;
	Tue, 14 Oct 2025 07:55:21 +0000 (GMT)
Message-ID: <a321abc5-fba3-45a5-a99a-73a542fc35c9@samsung.com>
Date: Tue, 14 Oct 2025 09:55:20 +0200
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
In-Reply-To: <20251013-dma-buf-ecc-heap-v8-4-04ce150ea3d9@kernel.org>
X-CMS-MailID: 20251014075522eucas1p1ee4792f47a967cac07e306140aa77ebd
X-Msg-Generator: CA
X-RootMTR: 20251013083535eucas1p2d80c3c6a03cdbdf79a67f983b2724bea
X-EPHeader: CA
X-CMS-RootMailID: 20251013083535eucas1p2d80c3c6a03cdbdf79a67f983b2724bea
References: <20251013-dma-buf-ecc-heap-v8-0-04ce150ea3d9@kernel.org>
	<CGME20251013083535eucas1p2d80c3c6a03cdbdf79a67f983b2724bea@eucas1p2.samsung.com>
	<20251013-dma-buf-ecc-heap-v8-4-04ce150ea3d9@kernel.org>
X-Rspamd-Queue-Id: 683BE3F6A1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.09 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.11:from];
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
Message-ID-Hash: WSWY6UMMTLHL6ATDZVMBQP3JSSIET76J
X-Message-ID-Hash: WSWY6UMMTLHL6ATDZVMBQP3JSSIET76J
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 4/5] dma: contiguous: Reserve default CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WSWY6UMMTLHL6ATDZVMBQP3JSSIET76J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 13.10.2025 10:35, Maxime Ripard wrote:
> The CMA code, in addition to the reserved-memory regions in the device
> tree, will also register a default CMA region if the device tree doesn't
> provide any, with its size and position coming from either the kernel
> command-line or configuration.
>
> Let's register that one for use to create a heap for it.
>
> Reviewed-by: T.J. Mercier <tjmercier@google.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>   kernel/dma/contiguous.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index d67e95094749d45f43c1809c175e491a3f55b2e1..d8fd6f779f797f711b8e0fd628f868d644b8f784 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -240,17 +240,23 @@ void __init dma_contiguous_reserve(phys_addr_t limit)
>   		selected_size = max(size_bytes, cma_early_percent_memory());
>   #endif
>   	}
>   
>   	if (selected_size && !dma_contiguous_default_area) {
> +		int ret;
> +
>   		pr_debug("%s: reserving %ld MiB for global area\n", __func__,
>   			 (unsigned long)selected_size / SZ_1M);
>   
>   		dma_contiguous_reserve_area(selected_size, selected_base,
>   					    selected_limit,
>   					    &dma_contiguous_default_area,
>   					    fixed);
> +
> +		ret = dma_heap_cma_register_heap(dma_contiguous_default_area);
> +		if (ret)
> +			pr_warn("Couldn't register default CMA heap.");
>   	}
>   }
>   
>   void __weak
>   dma_contiguous_early_fixup(phys_addr_t base, unsigned long size)
>
Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
