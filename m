Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHYwF9tGD2ptIgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 19:54:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC395AAA20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 19:54:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 732534098C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 17:54:33 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 55B0B406F3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 17:54:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=I2NbpTlz;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.49 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8b701756684so80569506d6.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 10:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1779386062; x=1779990862; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EC6XWlOYSm7qj75HyHmp0T60BsFS50VL7KHJNUynWLU=;
        b=I2NbpTlzY/yEmNi1yKWrkNxycvGKAvMxcNf6LqN26EcMWCPeaxfIoqioxt4K0lnJKs
         s/4wQdK+AZlV/govDiwqhRrvkDR9Tc7Pq+HIXn5C7nEeNLFA2GMqkO53xs4hbP18BCJF
         pa6tYVPXHLqjAAoc/LPgmUy5gs87rbrw7Jp9A9z9CEM3fPeCgTNQgLqCQjqq/Z+cgrWQ
         nbSYGmREik1iFAWxD9qG8jpCndd3Puzvc7g2Lii37FK7gDC+NCUgzUrlHOGmnNzgBWiX
         gvD0Ww1WWkDiDPxlS/ADkr+f6nL8kX6Iy5nLmMg6MeAUiBPsTRd3grRqtsBJPTt7H7sm
         X2gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779386062; x=1779990862;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EC6XWlOYSm7qj75HyHmp0T60BsFS50VL7KHJNUynWLU=;
        b=qJ6FD1b/0vIE/hh9Yd73VqoS/86Hp0dDfU67TWQVHoAlJVPrxkAzb7VMm8fFAka7K+
         0/x6Sj7bnArbkPCOlih6uaPmB90GTAwZuxzKSWKxy6d/10xjD+6kCni96Mos0honD+AD
         8aeZzs/A6ZEeBb1Usmu4xUe3hWEhtJ33yHks8dIPcuZiQFfNYufaA1ws3HPwlOlQkyQD
         ONo+MAKecAkSkfS581AwQt/NzwS+cXN+9Ek37XqTrNu1+Q6EzKuyjmaFvY2GaNXXk23T
         W60VZGZprT+tiUI0Rdv9LJoMXuI3y3yHfHaHz525TkOfYi3L2Or/Bu529t1wKjSW3oS2
         7Gaw==
X-Forwarded-Encrypted: i=1; AFNElJ/PmJPsDeVsU0nMqj0YnYh0vsKV0rupk2kbaQVTWEfqdniV+hSIRw+vHdzqRwXlRNCCWjKh1QQa/3+0PlE1@lists.linaro.org
X-Gm-Message-State: AOJu0YxPuuojxUjoV22KooQFw9cDSY9Bu0prqtYMzwFVw9voZXe7mKjs
	nThMCOZr1zth2BmzIwFKUTORY0/0VOVE5Wm1G8L3haCh+dTj5m5ze6pmeEYlVL5mbfs=
X-Gm-Gg: Acq92OFdOWRHHI1+bMnqy5SKz2K/l+LZlzTn98JbtlE5VT7Q5gFaIs5oJvHCXEeGStm
	knSc07e02X3ySh2tBtrrej0K7gTkP3KsrJrcM6HELnBTF6d+V9e6BzdZchyRtxTe0BAnhVmSXm7
	arSNOgMvngQh4XHqIDcUVRr1AWa8jQ402bSQBdNtdbAQL64KK9fzNJ4jY81G//wmN+X63gqLAzL
	gMdIpSTjH2mwtc+ScQgmkc2plebEpxUJwqBOdFUsqr2G4ZENnR2Wp0qAY9ZQw+niX4Zf2hhGyT/
	O/hm3RST/8xNHjzWAubfKQRU2KgEfvDW/jqfsgD+iW4Ezh4YA6B3XuiFn/0wJRTB4jFCtPFZ+6p
	5J1NvDmFtTGiLx+toTlxVl+YiuJ4TxAkOIZ1j9tKicoNJk0ZDgABCBLI/mRKuqbVf9DsLl7NRpS
	ND7Vx0Xjn/9U2lv1Yi75mWgnYvNDjhH+dQZ935GmxiRuPiEPA/Yc02q/O3bkdg4jWKc9opT37mR
	Y/m6g==
X-Received: by 2002:a05:6214:1c4e:b0:8ca:1e71:c5fb with SMTP id 6a1803df08f44-8cc6e91f389mr49249796d6.7.1779386061667;
        Thu, 21 May 2026 10:54:21 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8cc768b6fc2sm11374296d6.6.2026.05.21.10.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 10:54:21 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wQ7bA-000000020Ak-1yKK;
	Thu, 21 May 2026 14:54:20 -0300
Date: Thu, 21 May 2026 14:54:20 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>
Message-ID: <20260521175420.GA7702@ziepe.ca>
References: <20260325192352.437608-2-jiri@resnulli.us>
 <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
 <20260421121004.GA3611611@ziepe.ca>
 <yq5aik9jcpzm.fsf@kernel.org>
 <20260424225514.GE804026@ziepe.ca>
 <20260426130531.GF804026@ziepe.ca>
 <yq5azf1s6aic.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq5azf1s6aic.fsf@kernel.org>
X-Spamd-Bar: ---
Message-ID-Hash: JKOOZH34ULXCQTNBRIOY4UZJXAM3NJSK
X-Message-ID-Hash: JKOOZH34ULXCQTNBRIOY4UZJXAM3NJSK
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JKOOZH34ULXCQTNBRIOY4UZJXAM3NJSK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.956];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: DCC395AAA20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 21, 2026 at 09:05:39PM +0530, Aneesh Kumar K.V wrote:
> I am wondering whether this is better
> 
> static inline dma_addr_t dma_direct_map_phys(struct device *dev,
> 		phys_addr_t phys, size_t size, enum dma_data_direction dir,
> 		unsigned long attrs, bool flush)
> {
> 	dma_addr_t dma_addr;
> 
> 	/*
> 	 * For a device requiring unencrypted DMA, MMIO memory is treated
> 	 * as shared.
> 	 */
> 	if (force_dma_unencrypted(dev) && (attrs & DMA_ATTR_MMIO))
> 		attrs |= DMA_ATTR_CC_SHARED;

It is an option, I would be happier if we went and fixed the few
callers to properly pass the shared. CC did this with the
pgprot_decrypted() stuff, same reasoning:

diff --git a/block/blk-mq-dma.c b/block/blk-mq-dma.c
index bfdb9ed7074116..e77f6404caa3db 100644
--- a/block/blk-mq-dma.c
+++ b/block/blk-mq-dma.c
@@ -90,7 +90,7 @@ static bool blk_dma_map_direct(struct request *req, struct device *dma_dev,
 	unsigned int attrs = 0;
 
 	if (iter->p2pdma.map == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE)
-		attrs |= DMA_ATTR_MMIO;
+		attrs |= iter->p2pdma.mem->dma_mapping_flags;
 
 	iter->addr = dma_map_phys(dma_dev, vec->paddr, vec->len,
 			rq_dma_dir(req), attrs);
@@ -115,7 +115,7 @@ static bool blk_rq_dma_map_iova(struct request *req, struct device *dma_dev,
 	iter->len = dma_iova_size(state);
 
 	if (iter->p2pdma.map == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE)
-		attrs |= DMA_ATTR_MMIO;
+		attrs |= iter->p2pdma.mem->dma_mapping_flags;
 
 	do {
 		error = dma_iova_link(dma_dev, state, vec->paddr, mapped,
diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a34..96022fadc48245 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -147,7 +147,7 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
 			ret = dma_iova_link(attach->dev, dma->state,
 					    phys_vec[i].paddr, 0,
 					    phys_vec[i].len, dir,
-					    DMA_ATTR_MMIO);
+					    provider->dma_mapping_flags);
 			if (ret)
 				goto err_unmap_dma;
 
@@ -155,7 +155,7 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
 		} else {
 			addr = dma_map_phys(attach->dev, phys_vec[i].paddr,
 					    phys_vec[i].len, dir,
-					    DMA_ATTR_MMIO);
+					    provider->dma_mapping_flags);
 			ret = dma_mapping_error(attach->dev, addr);
 			if (ret)
 				goto err_unmap_dma;
diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index 7c898542af8d5e..e4229b4d35c767 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -282,6 +282,8 @@ int pcim_p2pdma_init(struct pci_dev *pdev)
 			continue;
 
 		p2p->mem[i].owner = &pdev->dev;
+		p2p->mem[i].dma_mapping_flags =
+			DMA_ATTR_MMIO | DMA_ATTR_CC_SHARED;
 		p2p->mem[i].bus_offset =
 			pci_bus_address(pdev, i) - pci_resource_start(pdev, i);
 	}
diff --git a/include/linux/pci-p2pdma.h b/include/linux/pci-p2pdma.h
index 873de20a224759..402dc5e5d62b0a 100644
--- a/include/linux/pci-p2pdma.h
+++ b/include/linux/pci-p2pdma.h
@@ -21,10 +21,12 @@ struct scatterlist;
  *
  * A p2pdma provider is a range of MMIO address space available to the CPU.
  * @owner: Device to which this provider belongs.
+ * @dma_mapping_flags: DMA attributes to use for host bridge mappings.
  * @bus_offset: Bus offset for p2p communication.
  */
 struct p2pdma_provider {
 	struct device *owner;
+	unsigned long dma_mapping_flags;
 	u64 bus_offset;
 };
 
diff --git a/mm/hmm.c b/mm/hmm.c
index 5955f2f0c83db1..c3f445acddf873 100644
--- a/mm/hmm.c
+++ b/mm/hmm.c
@@ -811,7 +811,7 @@ dma_addr_t hmm_dma_map_pfn(struct device *dev, struct hmm_dma_map *map,
 	case PCI_P2PDMA_MAP_NONE:
 		break;
 	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
-		attrs |= DMA_ATTR_MMIO;
+		attrs |= p2pdma_state->mem->dma_mapping_flags;
 		pfns[idx] |= HMM_PFN_P2PDMA;
 		break;
 	case PCI_P2PDMA_MAP_BUS_ADDR:
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
