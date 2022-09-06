Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 135165AE4C7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 11:51:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42AA348A10
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 09:51:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id F238B3F58D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 09:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8/NrZAK5q7MnGYfTuWbWU8dghg9PZc1WBiUJ2nOuaC4=; b=IAyCiQiRvm+ndIADZzUDg2ER2+
	8Kz7YGsP3iYQq/EykkXdB+9anNfClC1OCd4udP7exSyBmsfShITgu4AW/cekmSy00tpbcV6w4Z3ZZ
	CTMbiYiO7uLS00CKzrENWw+PQGegQwk90oJdjBXZmHwsjYekKt9L6qB7xjRqB8yDzIrx9UJL2ta09
	9Cz4KilqnGfnvm3x2ffIqJ9TDiR0OTwKzgUuzbHyespz4Z5GO5DTrsxW6DHKFoR9/VyJfyCj3vTwx
	++lwBFxBrxfqK99GFdt/TfVWWYD9+Lw5yNmEk+PUrQtcDxl8AOZh3hu+Djvhp+LkaWj2Ifs4NGa/j
	bvHemi+w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVEq-00C5Pm-08; Tue, 06 Sep 2022 09:51:24 +0000
Date: Tue, 6 Sep 2022 02:51:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <YxcYGzPv022G2vLm@infradead.org>
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Message-ID-Hash: PWNGHKKGFNPLJHKY5X6SBWGMKFYLC552
X-Message-ID-Hash: PWNGHKKGFNPLJHKY5X6SBWGMKFYLC552
X-MailFrom: BATV+3c9dadc9e27e1b9c7a6f+6953+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex.williamson@redhat.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PWNGHKKGFNPLJHKY5X6SBWGMKFYLC552/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> +{
> +	struct vfio_pci_dma_buf *priv = dmabuf->priv;
> +	int rc;
> +
> +	rc = pci_p2pdma_distance_many(priv->vdev->pdev, &attachment->dev, 1,
> +				      true);

This should just use pci_p2pdma_distance.

> +	/*
> +	 * Since the memory being mapped is a device memory it could never be in
> +	 * CPU caches.
> +	 */

DMA_ATTR_SKIP_CPU_SYNC doesn't even apply to dma_map_resource, not sure
where this wisdom comes from.

> +	dma_addr = dma_map_resource(
> +		attachment->dev,
> +		pci_resource_start(priv->vdev->pdev, priv->index) +
> +			priv->offset,
> +		priv->dmabuf->size, dir, DMA_ATTR_SKIP_CPU_SYNC);

This is not how P2P addresses are mapped.  You need to use
dma_map_sgtable and have the proper pgmap for it.

The above is just a badly implemented version of the dma-direct
PCI_P2PDMA_MAP_BUS_ADDR case, ignoring mappings through the host
bridge or dma-map-ops interactions.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
