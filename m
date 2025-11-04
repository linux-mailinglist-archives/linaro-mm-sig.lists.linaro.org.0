Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D70C2F8A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 04 Nov 2025 08:00:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFAF73F828
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Nov 2025 07:00:42 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id CC65A3F79C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 07:00:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="I1UEY/F8";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1EE2943791;
	Tue,  4 Nov 2025 07:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C40EC4CEF7;
	Tue,  4 Nov 2025 07:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762239630;
	bh=4X+6t70DXpoh2T+5EieuiIaGNQ+Nx/11qPV6DRFYJmY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I1UEY/F8kb6rmfO1N8znpDwknPo+zoeYokqXc5isZjuBzW2kwNIyURNneL551ILHq
	 xB1qlT1GwIRyPrqploIY1BSnrb/M+gayul0auOGaYIzVZ5ipDhkzhnPwCHrtS0f6BC
	 z5t1VvB9oLCq/rFMCgCk9VhSiEJuSXID8okNRaVWmbtPOK+n28WqZyhoHpfWmronvf
	 FcGjEPq4VK6Yo+LBMfOfTVdislK0QSciIeNRcwvKA5aNqAeghvNKt/yYcDiNo2g9fQ
	 ijAwMsISbHre8xNCfIwmhQpHnPPoDWGxgBNbI3zl0/Lwh8StDazLf/AgskMUfBm9kx
	 ZlGWIVygzFi3w==
Date: Tue, 4 Nov 2025 09:00:21 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Andrew Morton <akpm@linux-foundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Ankit Agrawal <ankita@nvidia.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Shameer Kolothum <skolothumtho@nvidia.com>,
	Kevin Tian <kevin.tian@intel.com>
Message-ID: <20251104070021.GC50752@unreal>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CC65A3F79C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[33];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: Y3WXHHNKBGRREP3APKMKTOUCTOMC4U2D
X-Message-ID-Hash: Y3WXHHNKBGRREP3APKMKTOUCTOMC4U2D
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3WXHHNKBGRREP3APKMKTOUCTOMC4U2D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Nov 02, 2025 at 10:00:48AM +0200, Leon Romanovsky wrote:

<...>

> ---
> Jason Gunthorpe (2):
>       PCI/P2PDMA: Document DMABUF model
>       vfio/nvgrace: Support get_dmabuf_phys
> 
> Leon Romanovsky (7):
>       PCI/P2PDMA: Separate the mmap() support from the core logic
>       PCI/P2PDMA: Simplify bus address mapping API
>       PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation
>       PCI/P2PDMA: Provide an access to pci_p2pdma_map_type() function
>       dma-buf: provide phys_vec to scatter-gather mapping routine
>       vfio/pci: Enable peer-to-peer DMA transactions by default
>       vfio/pci: Add dma-buf export support for MMIO regions
> 
> Vivek Kasireddy (2):
>       vfio: Export vfio device get and put registration helpers
>       vfio/pci: Share the core device pointer while invoking feature functions


Hi,

Can we get Acked-by for p2pdma and DMABUF parts?

Thanks

> 
>  Documentation/driver-api/pci/p2pdma.rst |  95 +++++++---
>  block/blk-mq-dma.c                      |   2 +-
>  drivers/dma-buf/dma-buf.c               | 235 ++++++++++++++++++++++++
>  drivers/iommu/dma-iommu.c               |   4 +-
>  drivers/pci/p2pdma.c                    | 182 +++++++++++++-----
>  drivers/vfio/pci/Kconfig                |   3 +
>  drivers/vfio/pci/Makefile               |   1 +
>  drivers/vfio/pci/nvgrace-gpu/main.c     |  56 ++++++
>  drivers/vfio/pci/vfio_pci.c             |   5 +
>  drivers/vfio/pci/vfio_pci_config.c      |  22 ++-
>  drivers/vfio/pci/vfio_pci_core.c        |  56 ++++--
>  drivers/vfio/pci/vfio_pci_dmabuf.c      | 315 ++++++++++++++++++++++++++++++++
>  drivers/vfio/pci/vfio_pci_priv.h        |  23 +++
>  drivers/vfio/vfio_main.c                |   2 +
>  include/linux/dma-buf.h                 |  18 ++
>  include/linux/pci-p2pdma.h              | 120 +++++++-----
>  include/linux/vfio.h                    |   2 +
>  include/linux/vfio_pci_core.h           |  42 +++++
>  include/uapi/linux/vfio.h               |  27 +++
>  kernel/dma/direct.c                     |   4 +-
>  mm/hmm.c                                |   2 +-
>  21 files changed, 1077 insertions(+), 139 deletions(-)
> ---
> base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> change-id: 20251016-dmabuf-vfio-6cef732adf5a
> 
> Best regards,
> --  
> Leon Romanovsky <leonro@nvidia.com>
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
