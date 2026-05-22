Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEIcLhreD2qiQwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 06:39:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B3A5AEBAE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 06:39:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5633540981
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 04:39:52 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id D58C13F821
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2026 04:39:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=V+4OywB6;
	spf=pass (lists.linaro.org: domain of aneesh.kumar@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=aneesh.kumar@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3058540C29;
	Fri, 22 May 2026 04:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7E9D1F000E9;
	Fri, 22 May 2026 04:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779424781;
	bh=4R/ga3Po6rMY7/TfHCvcJNg7OZHy4BvhXq7wh2Ys9tU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=V+4OywB6Ij3jKYq4K1WppfdDnOGW/1nY5Q2/4SqgmZPpjVOBYUPJ+fTM2TVkk2e7f
	 MqQa0iuxW0neznyC2TdIWYM3VY+2AOBipiBvrDJk3zrJW56SjCy01RNAIJ7sKd/nIC
	 Qsna44aTeQ33uTJ5F8NfW6w7tqVUrOy84giORHypM4QjxS1pxiC2Oa9v+NWqa9FD+b
	 47gLjc36mPUK08epy/u9JaH5OaWahb/5Z8x/j+m21rtXOfj71sJ83rT6dF3VSxbzUf
	 aWpsvqN5tVEPYq0uB40EFHbnFS9d8aHalB+h7XUfZyS9JFcnA4RycYNrsTZvJ7jesF
	 Q/q1MiTqGtUaw==
X-Mailer: emacs 30.2 (via feedmail 11-beta-1 I)
From: Aneesh Kumar K.V <aneesh.kumar@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
In-Reply-To: <20260521175420.GA7702@ziepe.ca>
References: <20260325192352.437608-2-jiri@resnulli.us>
 <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
 <20260421121004.GA3611611@ziepe.ca> <yq5aik9jcpzm.fsf@kernel.org>
 <20260424225514.GE804026@ziepe.ca> <20260426130531.GF804026@ziepe.ca>
 <yq5azf1s6aic.fsf@kernel.org> <20260521175420.GA7702@ziepe.ca>
Date: Fri, 22 May 2026 10:09:26 +0530
Message-ID: <yq5aqzn45a81.fsf@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: UICP4ACDJWXAGEIWDKESQ6SR3URNPBRJ
X-Message-ID-Hash: UICP4ACDJWXAGEIWDKESQ6SR3URNPBRJ
X-MailFrom: aneesh.kumar@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UICP4ACDJWXAGEIWDKESQ6SR3URNPBRJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aneesh.kumar@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-0.990];
	DKIM_TRACE(0.00)[kernel.org:-]
X-Rspamd-Queue-Id: 44B3A5AEBAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jason Gunthorpe <jgg@ziepe.ca> writes:

> On Thu, May 21, 2026 at 09:05:39PM +0530, Aneesh Kumar K.V wrote:
>> I am wondering whether this is better
>> 
>> static inline dma_addr_t dma_direct_map_phys(struct device *dev,
>> 		phys_addr_t phys, size_t size, enum dma_data_direction dir,
>> 		unsigned long attrs, bool flush)
>> {
>> 	dma_addr_t dma_addr;
>> 
>> 	/*
>> 	 * For a device requiring unencrypted DMA, MMIO memory is treated
>> 	 * as shared.
>> 	 */
>> 	if (force_dma_unencrypted(dev) && (attrs & DMA_ATTR_MMIO))
>> 		attrs |= DMA_ATTR_CC_SHARED;
>
> It is an option, I would be happier if we went and fixed the few
> callers to properly pass the shared. CC did this with the
> pgprot_decrypted() stuff, same reasoning:
>
> diff --git a/block/blk-mq-dma.c b/block/blk-mq-dma.c
> index bfdb9ed7074116..e77f6404caa3db 100644
> --- a/block/blk-mq-dma.c
> +++ b/block/blk-mq-dma.c
> @@ -90,7 +90,7 @@ static bool blk_dma_map_direct(struct request *req, struct device *dma_dev,
>  	unsigned int attrs = 0;
>  
>  	if (iter->p2pdma.map == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE)
> -		attrs |= DMA_ATTR_MMIO;
> +		attrs |= iter->p2pdma.mem->dma_mapping_flags;
>  
>  	iter->addr = dma_map_phys(dma_dev, vec->paddr, vec->len,
>  			rq_dma_dir(req), attrs);
> @@ -115,7 +115,7 @@ static bool blk_rq_dma_map_iova(struct request *req, struct device *dma_dev,
>  	iter->len = dma_iova_size(state);
>  
>  	if (iter->p2pdma.map == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE)
> -		attrs |= DMA_ATTR_MMIO;
> +		attrs |= iter->p2pdma.mem->dma_mapping_flags;
>  
>  	do {
>  		error = dma_iova_link(dma_dev, state, vec->paddr, mapped,
> diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
> index 794acff2546a34..96022fadc48245 100644
> --- a/drivers/dma-buf/dma-buf-mapping.c
> +++ b/drivers/dma-buf/dma-buf-mapping.c
> @@ -147,7 +147,7 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
>  			ret = dma_iova_link(attach->dev, dma->state,
>  					    phys_vec[i].paddr, 0,
>  					    phys_vec[i].len, dir,
> -					    DMA_ATTR_MMIO);
> +					    provider->dma_mapping_flags);
>  			if (ret)
>  				goto err_unmap_dma;
>  
> @@ -155,7 +155,7 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
>  		} else {
>  			addr = dma_map_phys(attach->dev, phys_vec[i].paddr,
>  					    phys_vec[i].len, dir,
> -					    DMA_ATTR_MMIO);
> +					    provider->dma_mapping_flags);
>  			ret = dma_mapping_error(attach->dev, addr);
>  			if (ret)
>  				goto err_unmap_dma;
> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
> index 7c898542af8d5e..e4229b4d35c767 100644
> --- a/drivers/pci/p2pdma.c
> +++ b/drivers/pci/p2pdma.c
> @@ -282,6 +282,8 @@ int pcim_p2pdma_init(struct pci_dev *pdev)
>  			continue;
>  
>  		p2p->mem[i].owner = &pdev->dev;
> +		p2p->mem[i].dma_mapping_flags =
> +			DMA_ATTR_MMIO | DMA_ATTR_CC_SHARED;
>  		p2p->mem[i].bus_offset =
>  			pci_bus_address(pdev, i) - pci_resource_start(pdev, i);
>  	}
> diff --git a/include/linux/pci-p2pdma.h b/include/linux/pci-p2pdma.h
> index 873de20a224759..402dc5e5d62b0a 100644
> --- a/include/linux/pci-p2pdma.h
> +++ b/include/linux/pci-p2pdma.h
> @@ -21,10 +21,12 @@ struct scatterlist;
>   *
>   * A p2pdma provider is a range of MMIO address space available to the CPU.
>   * @owner: Device to which this provider belongs.
> + * @dma_mapping_flags: DMA attributes to use for host bridge mappings.
>   * @bus_offset: Bus offset for p2p communication.
>   */
>  struct p2pdma_provider {
>  	struct device *owner;
> +	unsigned long dma_mapping_flags;
>  	u64 bus_offset;
>  };
>  
> diff --git a/mm/hmm.c b/mm/hmm.c
> index 5955f2f0c83db1..c3f445acddf873 100644
> --- a/mm/hmm.c
> +++ b/mm/hmm.c
> @@ -811,7 +811,7 @@ dma_addr_t hmm_dma_map_pfn(struct device *dev, struct hmm_dma_map *map,
>  	case PCI_P2PDMA_MAP_NONE:
>  		break;
>  	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
> -		attrs |= DMA_ATTR_MMIO;
> +		attrs |= p2pdma_state->mem->dma_mapping_flags;
>  		pfns[idx] |= HMM_PFN_P2PDMA;
>  		break;
>  	case PCI_P2PDMA_MAP_BUS_ADDR:

Can I convert this as an independent patch with your SOB?

-aneesh
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
