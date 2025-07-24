Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7F4B102E0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 10:08:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99C2E45516
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 08:08:04 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 6FEFE413EF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jul 2025 08:07:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VOsjIIeI;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DA08B439A2;
	Thu, 24 Jul 2025 08:07:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0172DC4CEF1;
	Thu, 24 Jul 2025 08:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753344471;
	bh=1SX+zcqB99cjjB9BCfDjf9tPWG4xWING89rNVeEpf+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VOsjIIeIH9Rm+A+TaQ0V7RH51KmQgYil3OHypDB1K75Vw6Q633ZWqyufs6mpXmjgy
	 8LsZTfLRMqu8Q3aUECPmaK6fz118qRgZxsQo52X8A22JJasuxKIhK8eiezk8hp9SAc
	 jHnyZT944fThfEGK02iapsKBQc2GMyceVPsI5Ej6hFz/7GB9hjU2rY3MhXnDmg0Af3
	 EmVL68MOlWu5/WtcynPwwwXn3gv5bFT1ONKBqH4E10CypSHNangIwHPWApThEuqWtj
	 gZXy/mzxhxENu2F+hWSPwgeJkrW8aD7ChboSZ9kiIUCIRjgkp5GFEhH5TMyS7SGjaO
	 J/E2lr1sMS9Pg==
Date: Thu, 24 Jul 2025 11:07:47 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20250724080747.GS402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <c2307cb4c3f1af46da138f3410738754691fbb3d.1753274085.git.leonro@nvidia.com>
 <20250724075145.GB30590@lst.de>
 <20250724075533.GR402218@unreal>
 <20250724075922.GD30590@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724075922.GD30590@lst.de>
X-Spamd-Result: default: False [-3.48 / 15.00];
	BAYES_HAM(-2.98)[99.91%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6FEFE413EF
X-Spamd-Bar: ---
Message-ID-Hash: FSHGOOZBV7255SVJ4E42F2XJZHSVVCMT
X-Message-ID-Hash: FSHGOOZBV7255SVJ4E42F2XJZHSVVCMT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] PCI/P2PDMA: Introduce p2pdma_provider structure for cleaner abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FSHGOOZBV7255SVJ4E42F2XJZHSVVCMT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 24, 2025 at 09:59:22AM +0200, Christoph Hellwig wrote:
> On Thu, Jul 24, 2025 at 10:55:33AM +0300, Leon Romanovsky wrote:
> > Please, see last patch in the series https://lore.kernel.org/all/aea452cc27ca9e5169f7279d7b524190c39e7260.1753274085.git.leonro@nvidia.com
> > It gives me a way to call p2p code with stable pointer for whole BAR.
> > 
> 
> That simply can't work.  So I guess you're trying to do the same stupid
> things shut down before again?  I might as well not waste my time
> reviewing this.

I'm not aware of anything that is not acceptable in this series.

This series focused on replacing dma_map_resource() call from v3
https://lore.kernel.org/all/20250307052248.405803-4-vivek.kasireddy@intel.com/
to proper API.

   92         if (!state) { 
   93                 addr = pci_p2pdma_bus_addr_map(provider, phys_vec->paddr); 
   94         } else if (dma_use_iova(state)) {                                 
   95                 ret = dma_iova_link(attachment->dev, state, phys_vec->paddr, 0,
   96                                     phys_vec->len, dir, DMA_ATTR_SKIP_CPU_SYNC); 
   97                 if (ret)                                                        
   98                         goto err_free_table;                                   
   99                                                                               
  100                 ret = dma_iova_sync(attachment->dev, state, 0, phys_vec->len);
  101                 if (ret)                                                     
  102                         goto err_unmap_dma;                                 
  103                                                                            
  104                 addr = state->addr;                                       
  105         } else {                                                         
  106                 addr = dma_map_phys(attachment->dev, phys_vec->paddr,   
  107                                     phys_vec->len, dir, DMA_ATTR_SKIP_CPU_SYNC);
  108                 ret = dma_mapping_error(attachment->dev, addr);                
  109                 if (ret)                                                      
  110                         goto err_free_table;                                 
  111         }            

Thanks

> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
