Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA7E79A6C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 11:34:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 862E43F09C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 09:34:06 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id B86723F09C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 09:34:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=hdEWKVqo;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C3CF966072F0;
	Mon, 11 Sep 2023 10:33:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694424840;
	bh=rHHHuF02A5nvt+AXbCIowWRbwndRguiS4v+mhK3ndws=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hdEWKVqo2v+9z5TdmS3rsrer803Qt2ExqloC2R16vDBb7HzzZm8InCiQhzTKEB5jV
	 h/GZcp87wLWxXngKvN3N6LFft7Z9rOzIEzICp1S2uOvBNiT8QLjnSj1sOQGxGCxtl+
	 b3R9QGOcOM1GUQfQPgxDD9SordElS28hYwIO6Axb3HOH0zh/3jTIgD4k/m9/LCuC25
	 waPj7xE0dpPGBLtYjoZUVWSOyfphK2L/xqTN0syYLACpTujIeg/T7T0YmH6d2+SxRO
	 8RZtgPaUop56crCMOSYatDaTZfv/2i4IETmyUQQla/KkNb4IWL7JpM1X4Ewdd1QgXg
	 WcMMM3kRqLYeg==
Message-ID: <dd418409-1c91-f58d-f8ed-a0c8d42a26be@collabora.com>
Date: Mon, 11 Sep 2023 11:33:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-10-yong.wu@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230911023038.30649-10-yong.wu@mediatek.com>
X-Rspamd-Queue-Id: B86723F09C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 42P7WM4AXLSQJXD4K2RQCH6FVKHUT7P3
X-Message-ID-Hash: 42P7WM4AXLSQJXD4K2RQCH6FVKHUT7P3
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] dma_buf: heaps: mtk_sec_heap: Add a new CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/42P7WM4AXLSQJXD4K2RQCH6FVKHUT7P3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 11/09/23 04:30, Yong Wu ha scritto:
> Create a new mtk_svp_cma heap from the CMA reserved buffer.
> 
> When the first allocating buffer, use cma_alloc to prepare whole the
> CMA range, then send its range to TEE to protect and manage.
> For the later allocating, we just adds the cma_used_size.
> 
> When SVP done, cma_release will release the buffer, then kernel may
> reuse it.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>   drivers/dma-buf/heaps/Kconfig           |   2 +-
>   drivers/dma-buf/heaps/mtk_secure_heap.c | 121 +++++++++++++++++++++++-
>   2 files changed, 119 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> index 729c0cf3eb7c..e101f788ecbf 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -15,7 +15,7 @@ config DMABUF_HEAPS_CMA
>   
>   config DMABUF_HEAPS_MTK_SECURE
>   	bool "DMA-BUF MediaTek Secure Heap"
> -	depends on DMABUF_HEAPS && TEE
> +	depends on DMABUF_HEAPS && TEE && CMA
>   	help
>   	  Choose this option to enable dma-buf MediaTek secure heap for Secure
>   	  Video Path. This heap is backed by TEE client interfaces. If in
> diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-buf/heaps/mtk_secure_heap.c
> index daf6cf2121a1..3f568fe6b569 100644
> --- a/drivers/dma-buf/heaps/mtk_secure_heap.c
> +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c

..snip..

> +}
> +
> +RESERVEDMEM_OF_DECLARE(mtk_secure_cma, "mediatek,secure_cma_chunkmem",

I'd suggest "mediatek,secure-heap" as compatible name.

> +		       mtk_secure_cma_init);
> +

Regards,
Angelo


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
