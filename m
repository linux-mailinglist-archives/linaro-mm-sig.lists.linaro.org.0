Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB59B153C4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 21:45:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD96E45605
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 19:45:03 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 65BCD43C07
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jul 2025 19:44:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA8F71516;
	Tue, 29 Jul 2025 12:44:39 -0700 (PDT)
Received: from [10.57.1.109] (unknown [10.57.1.109])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2D313F66E;
	Tue, 29 Jul 2025 12:44:43 -0700 (PDT)
Message-ID: <8f912671-f1d9-4f73-9c1d-e39938bfc09f@arm.com>
Date: Tue, 29 Jul 2025 20:44:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>
References: <cover.1753274085.git.leonro@nvidia.com>
 <aea452cc27ca9e5169f7279d7b524190c39e7260.1753274085.git.leonro@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <aea452cc27ca9e5169f7279d7b524190c39e7260.1753274085.git.leonro@nvidia.com>
X-Spamd-Result: default: False [-3.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	RCVD_IN_DNSWL_MED(-0.20)[217.140.110.172:from];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[foss.arm.com:rdns,foss.arm.com:helo];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 65BCD43C07
X-Spamd-Bar: ---
Message-ID-Hash: IYJNA5U2PCHSAC6ZCDLEHJ4LR4CRA4SC
X-Message-ID-Hash: IYJNA5U2PCHSAC6ZCDLEHJ4LR4CRA4SC
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/10] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IYJNA5U2PCHSAC6ZCDLEHJ4LR4CRA4SC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2025-07-23 2:00 pm, Leon Romanovsky wrote:
[...]
> +static struct sg_table *
> +vfio_pci_dma_buf_map(struct dma_buf_attachment *attachment,
> +		     enum dma_data_direction dir)
> +{
> +	struct vfio_pci_dma_buf *priv = attachment->dmabuf->priv;
> +	struct p2pdma_provider *provider = priv->vdev->provider;
> +	struct dma_iova_state *state = attachment->priv;
> +	struct phys_vec *phys_vec = &priv->phys_vec;
> +	struct scatterlist *sgl;
> +	struct sg_table *sgt;
> +	dma_addr_t addr;
> +	int ret;
> +
> +	dma_resv_assert_held(priv->dmabuf->resv);
> +
> +	sgt = kzalloc(sizeof(*sgt), GFP_KERNEL);
> +	if (!sgt)
> +		return ERR_PTR(-ENOMEM);
> +
> +	ret = sg_alloc_table(sgt, 1, GFP_KERNEL | __GFP_ZERO);
> +	if (ret)
> +		goto err_kfree_sgt;
> +
> +	sgl = sgt->sgl;
> +
> +	if (!state) {
> +		addr = pci_p2pdma_bus_addr_map(provider, phys_vec->paddr);
> +	} else if (dma_use_iova(state)) {
> +		ret = dma_iova_link(attachment->dev, state, phys_vec->paddr, 0,
> +				    phys_vec->len, dir, DMA_ATTR_SKIP_CPU_SYNC);

The supposed benefits of this API are only for replacing scatterlists 
where multiple disjoint pages are being mapped. In this case with just 
one single contiguous mapping, it is clearly objectively worse to have 
to bounce in and out of the IOMMU layer 3 separate times and store a 
dma_map_state, to achieve the exact same operations that a single call 
to iommu_dma_map_resource() will perform more efficiently and with no 
external state required.

Oh yeah, and mapping MMIO with regular memory attributes (IOMMU_CACHE) 
rather than appropriate ones (IOMMU_MMIO), as this will end up doing, 
isn't guaranteed not to end badly either (e.g. if the system 
interconnect ends up merging consecutive write bursts and exceeding the 
target root port's MPS.)

> +		if (ret)
> +			goto err_free_table;
> +
> +		ret = dma_iova_sync(attachment->dev, state, 0, phys_vec->len);
> +		if (ret)
> +			goto err_unmap_dma;
> +
> +		addr = state->addr;
> +	} else {
> +		addr = dma_map_phys(attachment->dev, phys_vec->paddr,
> +				    phys_vec->len, dir, DMA_ATTR_SKIP_CPU_SYNC);

And again, if the IOMMU is in bypass (the idea of P2P with vfio-noiommu 
simply isn't worth entertaining) then what purpose do you imagine this 
call serves at all, other than to hilariously crash under 
"swiotlb=force"? Even in the case that phys_to_dma(phys_vec->paddr) != 
phys_vec->paddr, in almost all circumstances (both hardware offsets and 
CoCo environments with address-based aliasing), it is more likely than 
not that the latter is still the address you want and the former is 
wrong (and liable to lead to corruption or fatal system errors), because 
MMIO and memory remain fundamentally different things.

AFAICS you're *depending* on this call being an effective no-op, and 
thus only demonstrating that the dma_map_phys() idea is still entirely 
unnecessary.

> +		ret = dma_mapping_error(attachment->dev, addr);
> +		if (ret)
> +			goto err_free_table;
> +	}
> +
> +	fill_sg_entry(sgl, phys_vec->len, addr);
> +	return sgt;
> +
> +err_unmap_dma:
> +	dma_iova_destroy(attachment->dev, state, phys_vec->len, dir,
> +			 DMA_ATTR_SKIP_CPU_SYNC);
> +err_free_table:
> +	sg_free_table(sgt);
> +err_kfree_sgt:
> +	kfree(sgt);
> +	return ERR_PTR(ret);
> +}
> +
> +static void vfio_pci_dma_buf_unmap(struct dma_buf_attachment *attachment,
> +				   struct sg_table *sgt,
> +				   enum dma_data_direction dir)
> +{
> +	struct vfio_pci_dma_buf *priv = attachment->dmabuf->priv;
> +	struct dma_iova_state *state = attachment->priv;
> +	struct scatterlist *sgl;
> +	int i;
> +
> +	if (!state)
> +		; /* Do nothing */
> +	else if (dma_use_iova(state))
> +		dma_iova_destroy(attachment->dev, state, priv->phys_vec.len,
> +				 dir, DMA_ATTR_SKIP_CPU_SYNC);
> +	else
> +		for_each_sgtable_dma_sg(sgt, sgl, i)

The table always has exactly one entry...

Thanks,
Robin.

> +			dma_unmap_phys(attachment->dev, sg_dma_address(sgl),
> +				       sg_dma_len(sgl), dir,
> +				       DMA_ATTR_SKIP_CPU_SYNC);
> +
> +	sg_free_table(sgt);
> +	kfree(sgt);
> +}
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
