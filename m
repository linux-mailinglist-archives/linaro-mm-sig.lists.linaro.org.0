Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1CDBE6721
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 07:40:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA4F945725
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 05:40:15 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 2A8094440C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Oct 2025 05:40:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JpP2Mu5B;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D083A641DD;
	Fri, 17 Oct 2025 05:40:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD16DC4CEE7;
	Fri, 17 Oct 2025 05:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760679611;
	bh=QatSK3vs5GP8c8e8mP/n3Zh7cEbbQ3Zbp2cyGT+36CI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JpP2Mu5B3aLEq2tithF2l4ekoWI7PQCF+VFS8MQGgHf4eBvOc+yXOj+6j3SF1JJGp
	 pEWPTs1ub7jCDFoztpJusE1SvuXOPIOS3EDzNJKolsvP7ynn443SDWb6+4ru7KM3Ik
	 4j+XYNWMaoFpTvU03u3ve6ByEq+Ss1Fm2ijL//zmgS/KjrczzYtQkY9DonD8sLZBjR
	 wAsx5V7EeXmlXZROMgB5Yk8A5L2w8KdUAli094vKeMAxXL3wpcyYeEh7KW2U9dbVP1
	 B/DzVQ/2C+MLErckpLFiu2Jq3uo28qrca2pT6QzZpBpkxmTwNhHCgEXgkTF1WRW82g
	 apdepzvlnSlOA==
Date: Fri, 17 Oct 2025 08:40:07 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20251017054007.GB6199@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <20251016235332.GA265079@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251016235332.GA265079@nvidia.com>
X-Rspamd-Queue-Id: 2A8094440C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Q2NH2AT3WIPAMJB4GLNIJG3REINIGQ2Q
X-Message-ID-Hash: Q2NH2AT3WIPAMJB4GLNIJG3REINIGQ2Q
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q2NH2AT3WIPAMJB4GLNIJG3REINIGQ2Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 16, 2025 at 08:53:32PM -0300, Jason Gunthorpe wrote:
> On Mon, Oct 13, 2025 at 06:26:11PM +0300, Leon Romanovsky wrote:
> > +
> > +static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
> > +				   struct dma_buf_attachment *attachment)
> > +{
> > +	struct vfio_pci_dma_buf *priv = dmabuf->priv;
> > +
> > +	if (!attachment->peer2peer)
> > +		return -EOPNOTSUPP;
> > +
> > +	if (priv->revoked)
> > +		return -ENODEV;
> > +
> > +	switch (pci_p2pdma_map_type(priv->provider, attachment->dev)) {
> > +	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
> > +		break;
> > +	case PCI_P2PDMA_MAP_BUS_ADDR:
> > +		/*
> > +		 * There is no need in IOVA at all for this flow.
> > +		 * We rely on attachment->priv == NULL as a marker
> > +		 * for this mode.
> > +		 */
> > +		return 0;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	attachment->priv = kzalloc(sizeof(struct dma_iova_state), GFP_KERNEL);
> > +	if (!attachment->priv)
> > +		return -ENOMEM;
> > +
> > +	dma_iova_try_alloc(attachment->dev, attachment->priv, 0, priv->size);
> 
> The lifetime of this isn't good..
> 
> > +	return 0;
> > +}
> > +
> > +static void vfio_pci_dma_buf_detach(struct dma_buf *dmabuf,
> > +				    struct dma_buf_attachment *attachment)
> > +{
> > +	kfree(attachment->priv);
> > +}
> 
> If the caller fails to call map then it leaks the iova.

I'm relying on dmabuf code and documentation:

   926 /**
   927  * dma_buf_dynamic_attach - Add the device to dma_buf's attachments list
...   
   932  *
   933  * Returns struct dma_buf_attachment pointer for this attachment. Attachments
   934  * must be cleaned up by calling dma_buf_detach().

Successful call to vfio_pci_dma_buf_attach() MUST be accompanied by call
to vfio_pci_dma_buf_detach(), so as far as dmabuf implementation follows
it, there is no leak.

> 
> > +static struct sg_table *
> > +vfio_pci_dma_buf_map(struct dma_buf_attachment *attachment,
> > +		     enum dma_data_direction dir)
> > +{
> [..]
> 
> 
> > +err_unmap_dma:
> > +	if (!i || !state)
> > +		; /* Do nothing */
> > +	else if (dma_use_iova(state))
> > +		dma_iova_destroy(attachment->dev, state, mapped_len, dir,
> > +				 attrs);
> 
> If we hit this error path then it is freed..
> 
> > +static void vfio_pci_dma_buf_unmap(struct dma_buf_attachment *attachment,
> > +				   struct sg_table *sgt,
> > +				   enum dma_data_direction dir)
> > +{
> > +	struct vfio_pci_dma_buf *priv = attachment->dmabuf->priv;
> > +	struct dma_iova_state *state = attachment->priv;
> > +	unsigned long attrs = DMA_ATTR_MMIO;
> > +	struct scatterlist *sgl;
> > +	int i;
> > +
> > +	if (!state)
> > +		; /* Do nothing */
> > +	else if (dma_use_iova(state))
> > +		dma_iova_destroy(attachment->dev, state, priv->size, dir,
> > +				 attrs);
> 
> It is freed here too, but we can call map multiple times. Every time a
> move_notify happens can trigger another call to map.
> 
> I think just call unlink in those two and put dma_iova_free in detach

Yes, it can work.

Thanks

> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
