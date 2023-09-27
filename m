Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F232B7CF778
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:51:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08BFD3EF8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:51:55 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 26D5B40D3D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 14:42:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ELTW5F37;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.218.53 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso1446104266b.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 07:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695825749; x=1696430549; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DQa0uS9ZxVzUEvSIaoDnSyYxM+uNjYjcw68CuBARJN8=;
        b=ELTW5F37zwypuLK4N1sQWo4KHkT97XKjsaLbkVLOXct0r6l4hT3CtaLaBF7+5jIoKt
         KMNYXEzG06STz7YweyhnGchK9mKXo4WEgN5Nl/wET2YKtE45DL770kh8mI9EJRNgVPtS
         1fZLLPrOUZcMFEX9HqTQqMGHjazrmTjjNCgGw7RAnAI13eV5//D+UxFvr/VWBK6QCqT9
         cdn1rJ/MQfYI2HUI1o9+RQVpJUPKH397o0iBS30JuGCbr04aXsdlNTrVuGiwkTvtAgV0
         vxHUmVFHYZnkB0nV8a/tMuDUR25j0Nn3ZCaC958m+b802FCQPEE21/0UmgExZHS9cJs3
         nOhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695825749; x=1696430549;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DQa0uS9ZxVzUEvSIaoDnSyYxM+uNjYjcw68CuBARJN8=;
        b=kkgYRba81sfUMGpu2U55ufRb38GW+xFgtsAVVnkMJq2xRG1DUkVi90YE21hT8w7n/W
         esTPg87d84LTK7xBcYv62nvF9wfSkHbVRQRxYX8hSp1JqgZGVA/wr7zYHBsB5mJUSQ7I
         ZSEfUxAidaRFY1n3Enq2mZrQxH8BV7D4V2aHu7vujWQwIwzts8lkKnaOJhkuOlJkMz23
         269QHnk3WYSyuOvZU+J+qHp0GQ/AIUvsRiXcd5QYZk84OW+uWNmBiNYJMvxoHhHBcimO
         7K0letuPT4iuqDMwSHp14Q/KDq3Gx4eCCkHzJBdQrmpA7iuJSq8dqwqPF9jn2z9v/jlb
         yg4Q==
X-Gm-Message-State: AOJu0YyFrna49nGrlgT+MsHhJRM8/qgr2W6yvyF+Rm/O8Nq8w9Ujogeq
	TY/3M+1OB/z3cwS5iyXd5DhMBump
X-Google-Smtp-Source: AGHT+IHbkXEUZ2yiICh2bDKC3XoQRoR1GzJCgOavVhuustl4JEpqTa1gx5Cc9UIMgVeGD+zgjr8MaQ==
X-Received: by 2002:a17:906:5142:b0:9b2:ba65:db21 with SMTP id jr2-20020a170906514200b009b2ba65db21mr368111ejc.45.1695825749077;
        Wed, 27 Sep 2023 07:42:29 -0700 (PDT)
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id z15-20020a170906944f00b00993928e4d1bsm9374996ejx.24.2023.09.27.07.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 07:42:28 -0700 (PDT)
Date: Wed, 27 Sep 2023 16:42:26 +0200
From: Joakim Bech <joakim.bech@linaro.org>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <20230927144226.pdssel3dwv53g546@pop-os.localdomain>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-5-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230911023038.30649-5-yong.wu@mediatek.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,mediatek.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 26D5B40D3D
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 673CLPIRD4B3RSLCDCIN6NYFA7GROMD6
X-Message-ID-Hash: 673CLPIRD4B3RSLCDCIN6NYFA7GROMD6
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:46:53 +0000
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/673CLPIRD4B3RSLCDCIN6NYFA7GROMD6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 11, 2023 at 10:30:33AM +0800, Yong Wu wrote:
> Initialise a mtk_svp heap. Currently just add a null heap, Prepare for
> the later patches.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/Kconfig           |  8 ++
>  drivers/dma-buf/heaps/Makefile          |  1 +
>  drivers/dma-buf/heaps/mtk_secure_heap.c | 99 +++++++++++++++++++++++++
>  3 files changed, 108 insertions(+)
>  create mode 100644 drivers/dma-buf/heaps/mtk_secure_heap.c
> 
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> index a5eef06c4226..729c0cf3eb7c 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -12,3 +12,11 @@ config DMABUF_HEAPS_CMA
>  	  Choose this option to enable dma-buf CMA heap. This heap is backed
>  	  by the Contiguous Memory Allocator (CMA). If your system has these
>  	  regions, you should say Y here.
> +
> +config DMABUF_HEAPS_MTK_SECURE
> +	bool "DMA-BUF MediaTek Secure Heap"
> +	depends on DMABUF_HEAPS && TEE
> +	help
> +	  Choose this option to enable dma-buf MediaTek secure heap for Secure
> +	  Video Path. This heap is backed by TEE client interfaces. If in
Although this is intended for SVP right now, this is something that very
well could work for other use cases. So, I think I'd not mention "Secure
Video Path" and just mention "secure heap".

> +	  doubt, say N.
> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
> index 974467791032..df559dbe33fe 100644
> --- a/drivers/dma-buf/heaps/Makefile
> +++ b/drivers/dma-buf/heaps/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
> +obj-$(CONFIG_DMABUF_HEAPS_MTK_SECURE)	+= mtk_secure_heap.o
> diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-buf/heaps/mtk_secure_heap.c
> new file mode 100644
> index 000000000000..bbf1c8dce23e
> --- /dev/null
> +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DMABUF mtk_secure_heap exporter
> + *
> + * Copyright (C) 2023 MediaTek Inc.
> + */
> +
> +#include <linux/dma-buf.h>
> +#include <linux/dma-heap.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +
> +/*
> + * MediaTek secure (chunk) memory type
> + *
> + * @KREE_MEM_SEC_CM_TZ: static chunk memory carved out for trustzone.
nit: s/trustzone/TrustZone/

-- 
// Regards
Joakim

> + */
> +enum kree_mem_type {
> +	KREE_MEM_SEC_CM_TZ = 1,
> +};
> +
> +struct mtk_secure_heap_buffer {
> +	struct dma_heap		*heap;
> +	size_t			size;
> +};
> +
> +struct mtk_secure_heap {
> +	const char		*name;
> +	const enum kree_mem_type mem_type;
> +};
> +
> +static struct dma_buf *
> +mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
> +		      unsigned long fd_flags, unsigned long heap_flags)
> +{
> +	struct mtk_secure_heap_buffer *sec_buf;
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +	struct dma_buf *dmabuf;
> +	int ret;
> +
> +	sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
> +	if (!sec_buf)
> +		return ERR_PTR(-ENOMEM);
> +
> +	sec_buf->size = size;
> +	sec_buf->heap = heap;
> +
> +	exp_info.exp_name = dma_heap_get_name(heap);
> +	exp_info.size = sec_buf->size;
> +	exp_info.flags = fd_flags;
> +	exp_info.priv = sec_buf;
> +
> +	dmabuf = dma_buf_export(&exp_info);
> +	if (IS_ERR(dmabuf)) {
> +		ret = PTR_ERR(dmabuf);
> +		goto err_free_buf;
> +	}
> +
> +	return dmabuf;
> +
> +err_free_buf:
> +	kfree(sec_buf);
> +	return ERR_PTR(ret);
> +}
> +
> +static const struct dma_heap_ops mtk_sec_heap_ops = {
> +	.allocate	= mtk_sec_heap_allocate,
> +};
> +
> +static struct mtk_secure_heap mtk_sec_heap[] = {
> +	{
> +		.name		= "mtk_svp",
> +		.mem_type	= KREE_MEM_SEC_CM_TZ,
> +	},
> +};
> +
> +static int mtk_sec_heap_init(void)
> +{
> +	struct mtk_secure_heap *sec_heap = mtk_sec_heap;
> +	struct dma_heap_export_info exp_info;
> +	struct dma_heap *heap;
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(mtk_sec_heap); i++, sec_heap++) {
> +		exp_info.name = sec_heap->name;
> +		exp_info.ops = &mtk_sec_heap_ops;
> +		exp_info.priv = (void *)sec_heap;
> +
> +		heap = dma_heap_add(&exp_info);
> +		if (IS_ERR(heap))
> +			return PTR_ERR(heap);
> +	}
> +	return 0;
> +}
> +
> +module_init(mtk_sec_heap_init);
> +MODULE_DESCRIPTION("MediaTek Secure Heap Driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
