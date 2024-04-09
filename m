Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1200E89DC7F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 16:38:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FFE643C6E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 14:38:28 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id 1AAA23F466
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 14:38:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=h3GNJ4vb;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=afd@ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 439EcAgL079405;
	Tue, 9 Apr 2024 09:38:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1712673490;
	bh=haEpmy5VhtEasqeLLSLULQyED9X5Xlmx8DrgXvQysfQ=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=h3GNJ4vbNk4R79xkgSdUjOZcLEgCi/LUM3Ojj2nG7jw/60V4TcQIlc0rICQ4Cpxya
	 JlZkXiSgVGX8KeXUMFzRUni9In8fY/gDNqbMDVCz8a0nG7AW0U7DldBXoxwBnFMgx8
	 hbo/kvwmzUthkHlvIRxE51R8XWvRb6nhmPACpuv8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 439EcAgF012015
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 9 Apr 2024 09:38:10 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 9
 Apr 2024 09:38:09 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 9 Apr 2024 09:38:09 -0500
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 439Ec9xP024183;
	Tue, 9 Apr 2024 09:38:09 -0500
Message-ID: <17f4e562-a218-466c-9ac7-171e8780af60@ti.com>
Date: Tue, 9 Apr 2024 09:38:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Pascal FONTAIN <Pascal.FONTAIN@bachmann.info>,
        <linux-kernel@vger.kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
        Dragan
 Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
        Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sumit Semwal
	<sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>,
        Robin Murphy <robin.murphy@arm.com>
References: <20240409120605.4138472-1-Pascal.FONTAIN@bachmann.info>
 <20240409120605.4138472-3-Pascal.FONTAIN@bachmann.info>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20240409120605.4138472-3-Pascal.FONTAIN@bachmann.info>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Queue-Id: 1AAA23F466
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	URIBL_BLOCKED(0.00)[fllv0016.ext.ti.com:helo,fllv0016.ext.ti.com:rdns,exp_info.name:url,bachmann.info:email,ti.com:email,ti.com:dkim,ti.com:url];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RLM62AJCSB73WZTMWYEJKXH2XKAG4FHK
X-Message-ID-Hash: RLM62AJCSB73WZTMWYEJKXH2XKAG4FHK
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RLM62AJCSB73WZTMWYEJKXH2XKAG4FHK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 4/9/24 7:06 AM, Pascal FONTAIN wrote:
> From: Andrew Davis <afd@ti.com>
> 
> This new export type exposes to userspace the SRAM area as a DMA-BUF
> Heap,
> this allows for allocations of DMA-BUFs that can be consumed by various
> DMA-BUF supporting devices.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> Tested-by: Pascal Fontain <pascal.fontain@bachmann.info>
> ---

The last time I posted this I got this comment[0], for which I
didn't really have a good response and so haven't reposted this
since then.

Bacically this driver is backed by something other than "normal"
memory. So we really need to be careful here, the page pointer is
really just a cookie to keep track for the real mappings. We might
be able to use something similar to dma_get_sgtable() to hide that,
but under the hood it would still a bit unsafe[1].

Andrew

[0] https://patchwork.kernel.org/project/linux-media/patch/20230713191316.116019-1-afd@ti.com/#25475464
[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/kernel/dma/mapping.c#n388

>   drivers/misc/Kconfig         |   7 +
>   drivers/misc/Makefile        |   1 +
>   drivers/misc/sram-dma-heap.c | 246 +++++++++++++++++++++++++++++++++++
>   drivers/misc/sram.c          |   6 +
>   drivers/misc/sram.h          |  16 +++
>   5 files changed, 276 insertions(+)
>   create mode 100644 drivers/misc/sram-dma-heap.c
> 
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 9e4ad4d61f06..e6674e913168 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -448,6 +448,13 @@ config SRAM
>   config SRAM_EXEC
>   	bool
>   
> +config SRAM_DMA_HEAP
> +	bool "Export on-chip SRAM pools using DMA-Heaps"
> +	depends on DMABUF_HEAPS && SRAM
> +	help
> +	  This driver allows the export of on-chip SRAM marked as both pool
> +	  and exportable to userspace using the DMA-Heaps interface.
> +
>   config DW_XDATA_PCIE
>   	depends on PCI
>   	tristate "Synopsys DesignWare xData PCIe driver"
> diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> index cdc6405584e3..63effdde5163 100644
> --- a/drivers/misc/Makefile
> +++ b/drivers/misc/Makefile
> @@ -47,6 +47,7 @@ obj-$(CONFIG_VMWARE_VMCI)	+= vmw_vmci/
>   obj-$(CONFIG_LATTICE_ECP3_CONFIG)	+= lattice-ecp3-config.o
>   obj-$(CONFIG_SRAM)		+= sram.o
>   obj-$(CONFIG_SRAM_EXEC)		+= sram-exec.o
> +obj-$(CONFIG_SRAM_DMA_HEAP)	+= sram-dma-heap.o
>   obj-$(CONFIG_GENWQE)		+= genwqe/
>   obj-$(CONFIG_ECHO)		+= echo/
>   obj-$(CONFIG_CXL_BASE)		+= cxl/
> diff --git a/drivers/misc/sram-dma-heap.c b/drivers/misc/sram-dma-heap.c
> new file mode 100644
> index 000000000000..e5a0bafe8cb9
> --- /dev/null
> +++ b/drivers/misc/sram-dma-heap.c
> @@ -0,0 +1,246 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * SRAM DMA-Heap userspace exporter
> + *
> + * Copyright (C) 2019-2022 Texas Instruments Incorporated - https://www.ti.com/
> + *	Andrew Davis <afd@ti.com>
> + */
> +
> +#include <linux/dma-mapping.h>
> +#include <linux/err.h>
> +#include <linux/genalloc.h>
> +#include <linux/io.h>
> +#include <linux/mm.h>
> +#include <linux/scatterlist.h>
> +#include <linux/slab.h>
> +#include <linux/dma-buf.h>
> +#include <linux/dma-heap.h>
> +
> +#include "sram.h"
> +
> +struct sram_dma_heap {
> +	struct dma_heap *heap;
> +	struct gen_pool *pool;
> +};
> +
> +struct sram_dma_heap_buffer {
> +	struct gen_pool *pool;
> +	struct list_head attachments;
> +	struct mutex attachments_lock;
> +	unsigned long len;
> +	void *vaddr;
> +	phys_addr_t paddr;
> +};
> +
> +struct dma_heap_attachment {
> +	struct device *dev;
> +	struct sg_table *table;
> +	struct list_head list;
> +};
> +
> +static int dma_heap_attach(struct dma_buf *dmabuf,
> +			   struct dma_buf_attachment *attachment)
> +{
> +	struct sram_dma_heap_buffer *buffer = dmabuf->priv;
> +	struct dma_heap_attachment *a;
> +	struct sg_table *table;
> +
> +	a = kzalloc(sizeof(*a), GFP_KERNEL);
> +	if (!a)
> +		return -ENOMEM;
> +
> +	table = kmalloc(sizeof(*table), GFP_KERNEL);
> +	if (!table) {
> +		kfree(a);
> +		return -ENOMEM;
> +	}
> +	if (sg_alloc_table(table, 1, GFP_KERNEL)) {
> +		kfree(table);
> +		kfree(a);
> +		return -ENOMEM;
> +	}
> +	sg_set_page(table->sgl, pfn_to_page(PFN_DOWN(buffer->paddr)), buffer->len, 0);
> +
> +	a->table = table;
> +	a->dev = attachment->dev;
> +	INIT_LIST_HEAD(&a->list);
> +
> +	attachment->priv = a;
> +
> +	mutex_lock(&buffer->attachments_lock);
> +	list_add(&a->list, &buffer->attachments);
> +	mutex_unlock(&buffer->attachments_lock);
> +
> +	return 0;
> +}
> +
> +static void dma_heap_detatch(struct dma_buf *dmabuf,
> +			     struct dma_buf_attachment *attachment)
> +{
> +	struct sram_dma_heap_buffer *buffer = dmabuf->priv;
> +	struct dma_heap_attachment *a = attachment->priv;
> +
> +	mutex_lock(&buffer->attachments_lock);
> +	list_del(&a->list);
> +	mutex_unlock(&buffer->attachments_lock);
> +
> +	sg_free_table(a->table);
> +	kfree(a->table);
> +	kfree(a);
> +}
> +
> +static struct sg_table *dma_heap_map_dma_buf(struct dma_buf_attachment *attachment,
> +					     enum dma_data_direction direction)
> +{
> +	struct dma_heap_attachment *a = attachment->priv;
> +	struct sg_table *table = a->table;
> +
> +	/*
> +	 * As this heap is backed by uncached SRAM memory we do not need to
> +	 * perform any sync operations on the buffer before allowing device
> +	 * domain access. For this reason we use SKIP_CPU_SYNC and also do
> +	 * not use or provide begin/end_cpu_access() dma-buf functions.
> +	 */
> +	if (!dma_map_sg_attrs(attachment->dev, table->sgl, table->nents,
> +			      direction, DMA_ATTR_SKIP_CPU_SYNC))
> +		return ERR_PTR(-ENOMEM);
> +
> +	return table;
> +}
> +
> +static void dma_heap_unmap_dma_buf(struct dma_buf_attachment *attachment,
> +				   struct sg_table *table,
> +				   enum dma_data_direction direction)
> +{
> +	dma_unmap_sg_attrs(attachment->dev, table->sgl, table->nents,
> +			   direction, DMA_ATTR_SKIP_CPU_SYNC);
> +}
> +
> +static void dma_heap_dma_buf_release(struct dma_buf *dmabuf)
> +{
> +	struct sram_dma_heap_buffer *buffer = dmabuf->priv;
> +
> +	gen_pool_free(buffer->pool, (unsigned long)buffer->vaddr, buffer->len);
> +	kfree(buffer);
> +}
> +
> +static int dma_heap_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
> +{
> +	struct sram_dma_heap_buffer *buffer = dmabuf->priv;
> +	int ret;
> +
> +	/* SRAM mappings are not cached */
> +	vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
> +
> +	ret = vm_iomap_memory(vma, buffer->paddr, buffer->len);
> +	if (ret)
> +		pr_err("Could not map buffer to userspace\n");
> +
> +	return ret;
> +}
> +
> +static int dma_heap_vmap(struct dma_buf *dmabuf, struct iosys_map *map)
> +{
> +	struct sram_dma_heap_buffer *buffer = dmabuf->priv;
> +
> +	iosys_map_set_vaddr(map, buffer->vaddr);
> +
> +	return 0;
> +}
> +
> +static const struct dma_buf_ops sram_dma_heap_buf_ops = {
> +	.attach = dma_heap_attach,
> +	.detach = dma_heap_detatch,
> +	.map_dma_buf = dma_heap_map_dma_buf,
> +	.unmap_dma_buf = dma_heap_unmap_dma_buf,
> +	.release = dma_heap_dma_buf_release,
> +	.mmap = dma_heap_mmap,
> +	.vmap = dma_heap_vmap,
> +};
> +
> +static struct dma_buf *sram_dma_heap_allocate(struct dma_heap *heap,
> +					      unsigned long len,
> +					      unsigned long fd_flags,
> +					      unsigned long heap_flags)
> +{
> +	struct sram_dma_heap *sram_dma_heap = dma_heap_get_drvdata(heap);
> +	struct sram_dma_heap_buffer *buffer;
> +
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +	struct dma_buf *dmabuf;
> +	int ret;
> +
> +	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
> +	if (!buffer)
> +		return ERR_PTR(-ENOMEM);
> +	buffer->pool = sram_dma_heap->pool;
> +	INIT_LIST_HEAD(&buffer->attachments);
> +	mutex_init(&buffer->attachments_lock);
> +	buffer->len = len;
> +
> +	buffer->vaddr = (void *)gen_pool_alloc(buffer->pool, buffer->len);
> +	if (!buffer->vaddr) {
> +		ret = -ENOMEM;
> +		goto free_buffer;
> +	}
> +
> +	buffer->paddr = gen_pool_virt_to_phys(buffer->pool, (unsigned long)buffer->vaddr);
> +	if (buffer->paddr == -1) {
> +		ret = -ENOMEM;
> +		goto free_pool;
> +	}
> +
> +	/* create the dmabuf */
> +	exp_info.exp_name = dma_heap_get_name(heap);
> +	exp_info.ops = &sram_dma_heap_buf_ops;
> +	exp_info.size = buffer->len;
> +	exp_info.flags = fd_flags;
> +	exp_info.priv = buffer;
> +	dmabuf = dma_buf_export(&exp_info);
> +	if (IS_ERR(dmabuf)) {
> +		ret = PTR_ERR(dmabuf);
> +		goto free_pool;
> +	}
> +
> +	return dmabuf;
> +
> +free_pool:
> +	gen_pool_free(buffer->pool, (unsigned long)buffer->vaddr, buffer->len);
> +free_buffer:
> +	kfree(buffer);
> +
> +	return ERR_PTR(ret);
> +}
> +
> +static struct dma_heap_ops sram_dma_heap_ops = {
> +	.allocate = sram_dma_heap_allocate,
> +};
> +
> +int sram_add_dma_heap(struct sram_dev *sram,
> +		      struct sram_reserve *block,
> +		      phys_addr_t start,
> +		      struct sram_partition *part)
> +{
> +	struct sram_dma_heap *sram_dma_heap;
> +	struct dma_heap_export_info exp_info;
> +
> +	dev_info(sram->dev, "Exporting SRAM Heap '%s'\n", block->label);
> +
> +	sram_dma_heap = kzalloc(sizeof(*sram_dma_heap), GFP_KERNEL);
> +	if (!sram_dma_heap)
> +		return -ENOMEM;
> +	sram_dma_heap->pool = part->pool;
> +
> +	exp_info.name = kasprintf(GFP_KERNEL, "sram_%s", block->label);
> +	exp_info.ops = &sram_dma_heap_ops;
> +	exp_info.priv = sram_dma_heap;
> +	sram_dma_heap->heap = dma_heap_add(&exp_info);
> +	if (IS_ERR(sram_dma_heap->heap)) {
> +		int ret = PTR_ERR(sram_dma_heap->heap);
> +
> +		kfree(sram_dma_heap);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
> index 632f90d9bcea..643c77598beb 100644
> --- a/drivers/misc/sram.c
> +++ b/drivers/misc/sram.c
> @@ -120,6 +120,12 @@ static int sram_add_partition(struct sram_dev *sram, struct sram_reserve *block,
>   		ret = sram_add_pool(sram, block, start, part);
>   		if (ret)
>   			return ret;
> +
> +		if (block->export) {
> +			ret = sram_add_dma_heap(sram, block, start, part);
> +			if (ret)
> +				return ret;
> +		}
>   	}
>   	if (block->export) {
>   		ret = sram_add_export(sram, block, start, part);
> diff --git a/drivers/misc/sram.h b/drivers/misc/sram.h
> index 397205b8bf6f..062bdd25fa06 100644
> --- a/drivers/misc/sram.h
> +++ b/drivers/misc/sram.h
> @@ -60,4 +60,20 @@ static inline int sram_add_protect_exec(struct sram_partition *part)
>   	return -ENODEV;
>   }
>   #endif /* CONFIG_SRAM_EXEC */
> +
> +#ifdef CONFIG_SRAM_DMA_HEAP
> +int sram_add_dma_heap(struct sram_dev *sram,
> +		      struct sram_reserve *block,
> +		      phys_addr_t start,
> +		      struct sram_partition *part);
> +#else
> +static inline int sram_add_dma_heap(struct sram_dev *sram,
> +				    struct sram_reserve *block,
> +				    phys_addr_t start,
> +				    struct sram_partition *part)
> +{
> +	return 0;
> +}
> +#endif /* CONFIG_SRAM_DMA_HEAP */
> +
>   #endif /* __SRAM_H */
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
