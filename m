Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D342084406F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 14:24:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88CD3400DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 13:24:11 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 9AD7F3EA59
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 13:24:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=sRuDEHSC;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.208.43 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-55f8abbeeddso662954a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 05:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706707443; x=1707312243; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5MUD9HTI1e0BY5P2+rcAvV/RfzBprzDJcgshNjTcI5g=;
        b=sRuDEHSCCNICwykXzQlwmWkrCOahY6m/0GM1yv7w5p2bOYhE5vFjt/6E/cmvup6FMf
         TcjPXydMKmslmi9NK7VtCwBWWxGm1PifqJYXuRLb4sn90cARq+ZqnonzF1dp1Ij4UF7r
         CDwrE4odVJeqnUbNCNv+EyZOR2TGG6t4aGbKWlOdX97N/L0jKlZh+UpTblmpkuxg/AdU
         vZVSg/PDvf02Zv0ZE4NOZDTaSns0b+VtdPiwlNPJOMO+yEuS25lTkTHrdD+C13oFgRGb
         zm6RN5l2JnKpyNDW4jg7kCixjqXbVtCmgWtRlzXC9fG4mQ+nfs7Wo+LUsj02GGMxLzUT
         RPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706707443; x=1707312243;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5MUD9HTI1e0BY5P2+rcAvV/RfzBprzDJcgshNjTcI5g=;
        b=EMbh6OZHEXzQKqBAF+GeleZ7ntdmjSBaBLgasrvOOMyY3SA2INhamU3DLJaBNiECML
         /8HuxCrPE2tBORYuIDNca0gUtylbBjPMhmTKWlXiZQFrE1P+Uq1e5CnAXb6ZkXVyPIXv
         Kyy7eQxNzqPVlotIsfrBlVMhgL6VBOtWXhYQcJs56hWmHcTRAvCecDluB2LcIeX6YE79
         OWp2sVER4tzG7XHbU67oFR7++SkYNvF/I04rhI4GJuAwnqtNcfTLDwxpUIGnflRCmUEv
         G9poeoPHSNXcxLujHXpX4XopuGmZ/IOIKH7cvbNrnAQeCdvN/tx/oSUlyUfoFRWoZ2l1
         mD8w==
X-Gm-Message-State: AOJu0Yxozk3jVNs7nh0GPEjjA6vjY3tW8cadJBFV1vH3rWW0i4RKh7ul
	ky6X6o8IO7gpj7Efe0sY4yihAT4bZXVDaNDbTtwyAQwlwZYyp+M1++jpwcoXPdsIDQ==
X-Google-Smtp-Source: AGHT+IGsArhQ0W4XwCtuYHmCXvO2RCbEUYwLVnXG7bbJ2f+RWm7qp6uth4/WrrGNVLWi0nMCiDAGlA==
X-Received: by 2002:a05:6402:5213:b0:55f:7fe9:c567 with SMTP id s19-20020a056402521300b0055f7fe9c567mr1328202edd.1.1706707443454;
        Wed, 31 Jan 2024 05:24:03 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXAPb1qAxujL6HdXhhSE+sVLYyv05T+1t6zsGllhHznYzX/PMaaMWlWlwdKflV/rE2cW6o74D6P5/MgaRBL50x8hpKC6rdV3SXCT9jg9Ji7TUTPz1pNeBhWMlWC+IfLrPd0B2vhwyNDuizmS32810JX3sqf5JT7V+AQ99g6Rel+10bREe21Sb5EO1A/Omzzjn3QIfCT/mujA2BEUIiu1zZv+0CqUv1MaxkOh7cqm9rocuXEHmjyBszU0xvEJlv0mjNYLCS1XoDJxpzUAq/rfM/zz5jpOFPEGrdjrd9xf/22brANqKdr5Qe7xJD4RBSiEgBrJJf/AkA4q95VBK8PXrnB0jaX78Q7eDv8e+05u79LxxjkpSzKapxDjRADUQkvVUGL4Bo/Fj0g6gCjTSX4jQxfKFGNVzoFUx5kWAFx1+ygTUek7Rz2OKpqQXwb937CLkXtvDD2DA7yqDKv1A+/fqrKg8HBoUNNJECbkjLwH8g99VV5sbLqL0YhV3CLc4Xcu7CMQMVNnwPCTGD4XqyeQSQ8hrz1YCxpBWplY+sPHVREe6iy1/GkJs/OwqCglwcC7CFTSolo9DSTLmRDrk1UhGOFe31qbec+gOCKSWxxr4s6abJlSI8f+navK+6YHoPncMiXIizZv3QIiI1Z4891Tkb4pYAedqs2PA0AE1Wv9C7i3ka9bfYsDX09/hNrgQkhQ1xjUVADtWzUmG0UrwpYOJEmhjfGBkgglntxHOt+hgbn4N4VuA1QdBjYw1CU8N7CJzmVLwtLZaliIjELEvthoIM2ibY5DXpSs5qu9XM59tf609gL0qEP4IFy3iwMydPTmAqogjjmV03dipumTSNdoFHa55YPC2eQ3OyH5nA5YOEQrE4ElC5koxoXVb43SA5OoTdRfnAD93eKIz+BlAAfzx/hqxYe+pKpm1gX8Qh3wS2YqK9fF05r6BlYh117YgypN339P3
 9xHWP4A+bTltjSuhLbMpZNEOGvejoeqZB4
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id et6-20020a056402378600b0055eeb5f0efcsm3641516edb.58.2024.01.31.05.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 05:24:02 -0800 (PST)
Date: Wed, 31 Jan 2024 14:24:00 +0100
From: Joakim Bech <joakim.bech@linaro.org>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <20240131132400.h3hklvnjjp3pelqz@pop-os.localdomain>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
 <20240112092014.23999-3-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240112092014.23999-3-yong.wu@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9AD7F3EA59
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,mediatek.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: AHR7HXTPV4RSER2JKHNSQAYZVNPKMQLS
X-Message-ID-Hash: AHR7HXTPV4RSER2JKHNSQAYZVNPKMQLS
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 2/7] dma-buf: heaps: Initialize a restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AHR7HXTPV4RSER2JKHNSQAYZVNPKMQLS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 12, 2024 at 05:20:09PM +0800, Yong Wu wrote:
> Initialize a restricted heap. Currently just add a null heap, Prepare for
> the later patches.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/Kconfig           |  9 ++++
>  drivers/dma-buf/heaps/Makefile          |  3 +-
>  drivers/dma-buf/heaps/restricted_heap.c | 67 +++++++++++++++++++++++++
>  drivers/dma-buf/heaps/restricted_heap.h | 22 ++++++++
>  4 files changed, 100 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/dma-buf/heaps/restricted_heap.c
>  create mode 100644 drivers/dma-buf/heaps/restricted_heap.h
> 
> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
> index a5eef06c4226..e54506f480ea 100644
> --- a/drivers/dma-buf/heaps/Kconfig
> +++ b/drivers/dma-buf/heaps/Kconfig
> @@ -12,3 +12,12 @@ config DMABUF_HEAPS_CMA
>  	  Choose this option to enable dma-buf CMA heap. This heap is backed
>  	  by the Contiguous Memory Allocator (CMA). If your system has these
>  	  regions, you should say Y here.
> +
> +config DMABUF_HEAPS_RESTRICTED
> +	bool "DMA-BUF Restricted Heap"
> +	depends on DMABUF_HEAPS
> +	help
> +	  Choose this option to enable dma-buf restricted heap. The purpose of this
> +	  heap is to manage buffers that are inaccessible to the kernel and user space.
> +	  There may be several ways to restrict it, for example it may be encrypted or
> +	  protected by a TEE or hypervisor. If in doubt, say N.
> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
> index 974467791032..a2437c1817e2 100644
> --- a/drivers/dma-buf/heaps/Makefile
> +++ b/drivers/dma-buf/heaps/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
> -obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
>  obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
> +obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED)	+= restricted_heap.o
> +obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
> diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
> new file mode 100644
> index 000000000000..fd7c82abd42e
> --- /dev/null
> +++ b/drivers/dma-buf/heaps/restricted_heap.c
> @@ -0,0 +1,67 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DMABUF restricted heap exporter
> + *
> + * Copyright (C) 2024 MediaTek Inc.
> + */
> +
> +#include <linux/dma-buf.h>
> +#include <linux/dma-heap.h>
> +#include <linux/err.h>
> +#include <linux/slab.h>
> +
> +#include "restricted_heap.h"
> +
> +static struct dma_buf *
> +restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
> +			 unsigned long fd_flags, unsigned long heap_flags)
> +{
> +	struct restricted_buffer *restricted_buf;
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +	struct dma_buf *dmabuf;
> +	int ret;
> +
> +	restricted_buf = kzalloc(sizeof(*restricted_buf), GFP_KERNEL);
> +	if (!restricted_buf)
> +		return ERR_PTR(-ENOMEM);
> +
> +	restricted_buf->size = ALIGN(size, PAGE_SIZE);
> +	restricted_buf->heap = heap;
> +
> +	exp_info.exp_name = dma_heap_get_name(heap);
> +	exp_info.size = restricted_buf->size;
> +	exp_info.flags = fd_flags;
> +	exp_info.priv = restricted_buf;
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
> +	kfree(restricted_buf);
> +	return ERR_PTR(ret);
> +}
> +
> +static const struct dma_heap_ops restricted_heap_ops = {
> +	.allocate = restricted_heap_allocate,
> +};
> +
> +int restricted_heap_add(struct restricted_heap *rstrd_heap)
>
Nothing wrong, but what about shortening rstrd_heap throughout the patch
set to "rheap", I would find that easier to read.

> +{
> +	struct dma_heap_export_info exp_info;
> +	struct dma_heap *heap;
> +
> +	exp_info.name = rstrd_heap->name;
> +	exp_info.ops = &restricted_heap_ops;
> +	exp_info.priv = (void *)rstrd_heap;
> +
> +	heap = dma_heap_add(&exp_info);
> +	if (IS_ERR(heap))
> +		return PTR_ERR(heap);
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(restricted_heap_add);
> diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-buf/heaps/restricted_heap.h
> new file mode 100644
> index 000000000000..443028f6ba3b
> --- /dev/null
> +++ b/drivers/dma-buf/heaps/restricted_heap.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Restricted heap Header.
> + *
> + * Copyright (C) 2024 MediaTek, Inc.
> + */
> +
> +#ifndef _DMABUF_RESTRICTED_HEAP_H_
> +#define _DMABUF_RESTRICTED_HEAP_H_
> +
> +struct restricted_buffer {
> +	struct dma_heap		*heap;
> +	size_t			size;
> +};
> +
> +struct restricted_heap {
> +	const char		*name;
> +};
> +
> +int restricted_heap_add(struct restricted_heap *rstrd_heap);
> +
> +#endif
> -- 
> 2.25.1
> 

-- 
// Regards
Joakim
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
