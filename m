Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 32260BF27E4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 18:45:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DEA63F75F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Oct 2025 16:45:12 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 123C93F757
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Oct 2025 16:45:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=uwACY+gA;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5DE5A62093;
	Mon, 20 Oct 2025 16:45:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90E34C116B1;
	Mon, 20 Oct 2025 16:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760978703;
	bh=TIx5NRTP5K3pYgUiu6kQ2tFh50oiXo0JG1oS7oaLLgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uwACY+gAAHVeDRNLQa9LhoH9lcVFnZPzXatywkYG646bVhvuqsRPN14g1g/VNKLes
	 WYNJREIXrJtYT7QbloBWC3KAb3tT4a4woiFgInEG+Q1ETN0Ps+qgi6JaeRCyXnfGma
	 5sgxwKokkXII1oj9idvsCFH+xzxFf+ctHebO0Crf8NoevzUCnORlmsx2c38BzGnEu/
	 s3EFcu5YRpFtIlMTjRKfKi1EEzzIFI6u24tuPRov6TF1nceX6GqjYmDq7yRyORhFLg
	 hFkabH/anV7vAMpIABZ7pHq33jQbOvDbCcvoCX9x7Rpe/xWcFSBpnYpbbJKwrjEhRF
	 yB30+vyIw7ITg==
Date: Mon, 20 Oct 2025 19:44:57 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20251020164457.GQ6199@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <20251017130249.GA309181@nvidia.com>
 <20251017161358.GC6199@unreal>
 <20251020161516.GU316284@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251020161516.GU316284@nvidia.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 123C93F757
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: GDTFOX2I5JVBXJFNFAKEOIOSA6HHXOTT
X-Message-ID-Hash: GDTFOX2I5JVBXJFNFAKEOIOSA6HHXOTT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GDTFOX2I5JVBXJFNFAKEOIOSA6HHXOTT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 20, 2025 at 01:15:16PM -0300, Jason Gunthorpe wrote:
> On Fri, Oct 17, 2025 at 07:13:58PM +0300, Leon Romanovsky wrote:
> > > static int dma_ranges_to_p2p_phys(struct vfio_pci_dma_buf *priv,
> > > 				  struct vfio_device_feature_dma_buf *dma_buf,
> > > 				  struct vfio_region_dma_range *dma_ranges,
> > > 				  struct p2pdma_provider *provider)
> > > {
> > > 	struct pci_dev *pdev = priv->vdev->pdev;
> > > 	phys_addr_t len = pci_resource_len(pdev, dma_buf->region_index);
> > > 	phys_addr_t pci_start;
> > > 	phys_addr_t pci_last;
> > > 	u32 i;
> > > 
> > > 	if (!len)
> > > 		return -EINVAL;
> > > 	pci_start = pci_resource_start(pdev, dma_buf->region_index);
> > > 	pci_last = pci_start + len - 1;
> > > 	for (i = 0; i < dma_buf->nr_ranges; i++) {
> > > 		phys_addr_t last;
> > > 
> > > 		if (!dma_ranges[i].length)
> > > 			return -EINVAL;
> > > 
> > > 		if (check_add_overflow(pci_start, dma_ranges[i].offset,
> > > 				       &priv->phys_vec[i].paddr) ||
> > > 		    check_add_overflow(priv->phys_vec[i].paddr,
> > > 				       dma_ranges[i].length - 1, &last))
> > > 			return -EOVERFLOW;
> > > 		if (last > pci_last)
> > > 			return -EINVAL;
> > > 
> > > 		priv->phys_vec[i].len = dma_ranges[i].length;
> > > 		priv->size += priv->phys_vec[i].len;
> > > 	}
> > > 	priv->nr_ranges = dma_buf->nr_ranges;
> > > 	priv->provider = provider;
> > > 	return 0;
> > > }
> > 
> > I have these checks in validate_dmabuf_input(). 
> > Do you think that I need to add extra checks?
> 
> I think they work better in this function, so I'd move them here.

The main idea for validate_dmabuf_input() is to perform as much as
possible checks before allocating kernel memory.

Thanks

> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
