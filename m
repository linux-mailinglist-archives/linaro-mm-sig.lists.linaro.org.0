Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEOqGpv/4Gk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC93410B68
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D364840A0C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:26:17 +0000 (UTC)
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	by lists.linaro.org (Postfix) with ESMTPS id 278B63F70E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 16:26:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=fIjAqedd;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="X E+Hssa";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.149 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.stl.internal (Postfix) with ESMTP id 455321D0015F;
	Fri, 21 Nov 2025 11:26:34 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Fri, 21 Nov 2025 11:26:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1763742394;
	 x=1763828794; bh=SOBAycGh1eM9sjqCtQOuYbqzhKy6Zs3m7fTThaBdxmQ=; b=
	fIjAqeddP6hflxkNPTIn/b88xuiOrUfCkEKruMrpBPDaQA7gsfXE5fDiAsnBfM5O
	vZ4yWd9ZQb478P562xTokM81Ja7mtoRm8oAxcIp82nDahkeUKddYCNBymtm3bsgn
	ZqYgFXoAGPgsTncQeqe1TqC961KyEjp4vrybbvD3TuSgkEaABnvLI+reqGTrzigZ
	1509Ht2ZjNQuWQzkj6w91n2HByPpixpDamWL660UaAhCTP1X/+/H6yRYz6iBy2BM
	Lkm5l5jgRnSXvNUZYgOPdLorHvTHGNLNlRD9gmeb73KKFf17b9BPBNTcz36d31SM
	qMI7KUFfRYXFXRjVjVkZ2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1763742394; x=
	1763828794; bh=SOBAycGh1eM9sjqCtQOuYbqzhKy6Zs3m7fTThaBdxmQ=; b=X
	E+HssaMzO+8Mb4BuU2feRX+bUXWPtNc5/yANLnItpNEnpdcKsASWunNCVGnMdLBT
	+qfct40y5Ii/MmCIFkqPytZ6AfGM0HxbHaMTDrrFRSV89qoBVA7SFBwEIx3PXq73
	211a6u0u5PAkWldu9OGLnANNcRZSTQZ+0kggMyiYe3ZaZPVVH7kW4vMOhTt5D67l
	c94XqJl/rKjo0x0JsQ4fq0CVg+0NupvS1cP9+/bGjWdscaSx/vkOB2x6AxyVIMim
	WTjQisAzPP3j3dZ6eGPjhM6OEkgwkdLpQZLuCpn7D40YAscB6n6JoQ95xhj7E8Ob
	moJcA+TZ8YnmX56KsXUFg==
X-ME-Sender: <xms:uJIgaeTct6T6qnJFCuIiwa2mEgEUIb3TnRcvAwP50VNMfwVrCByaog>
    <xme:uJIgafP2Nqw7XpUpwqAth9g_0PK3Th6W5p7NtoJfEn1wNNPm7GFI-KwuXqZXeO2-5
    I2Q03k4tw8FLNq0jKA-AL-34_kLyLKK8d4mrxK8bdyFq7kRKZdf>
X-ME-Received: <xmr:uJIgaaidOmd7YSWIWXJveg62I538KGHsy-oJKs3-AS-hFKXCZce1o6Iu>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvfedtgeegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfgggtgfesthejredttddtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepteetudelgeekieegudegleeuvdffgeehleeivddtfeektdekkeehffehudet
    hffhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hlvgigsehshhgriigsohhtrdhorhhgpdhnsggprhgtphhtthhopedvfedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhmpdhrtghpthhtoh
    eptghhrhhishhtihgrnhdrkhhovghnihhgsegrmhgurdgtohhmpdhrtghpthhtohepughr
    ihdquggvvhgvlheslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghdprhgtphhtth
    hopehiohhmmhhusehlihhsthhsrdhlihhnuhigrdguvghvpdhrtghpthhtohepjhhorhho
    seeksgihthgvshdrohhrghdprhgtphhtthhopehkvhhmsehvghgvrhdrkhgvrhhnvghlrd
    horhhgpdhrtghpthhtoheplhhinhgrrhhoqdhmmhdqshhigheslhhishhtshdrlhhinhgr
    rhhordhorhhgpdhrtghpthhtoheplhhinhhugidqkhhsvghlfhhtvghsthesvhhgvghrrd
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhmvgguihgrsehvghgvrhdr
    khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:uJIgaXI_HP21BySr47DBw_MiP77s7EYFOujJET3Wq00ZEAckjThoQg>
    <xmx:uJIgad67aaerDjlapy_TV8VFbIP4mysNuXmlXuh8JPOnvYMTlwBl7w>
    <xmx:uJIgackM046yyq-_5QHxrTvzZluSda3DHTYYgiaiKLOKrLZ2el9yNQ>
    <xmx:uJIgaX64o4HqnZRJ9bGGCY3veQrTjTSw7XEVaBzwLaRjn3eMPCNMgw>
    <xmx:upIgaZeA94wI9neXQ1yZpA30hxKZfQLX-8cOTKz6f5_BTmYAMHVcsKCp>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 21 Nov 2025 11:26:30 -0500 (EST)
Date: Fri, 21 Nov 2025 09:26:28 -0700
From: Alex Williamson <alex@shazbot.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20251121092628.2075d916.alex@shazbot.org>
In-Reply-To: <1-v2-b2c110338e3f+5c2-iommufd_dmabuf_jgg@nvidia.com>
References: <0-v2-b2c110338e3f+5c2-iommufd_dmabuf_jgg@nvidia.com>
	<1-v2-b2c110338e3f+5c2-iommufd_dmabuf_jgg@nvidia.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TCTDLXH7GVJRHISTRBF763QTATXCZLDM
X-Message-ID-Hash: TCTDLXH7GVJRHISTRBF763QTATXCZLDM
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:15 +0000
CC: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, Nicolin Chen <nicolinc@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Shuai Xue <xueshuai@linux.alibaba.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/9] vfio/pci: Add vfio_pci_dma_buf_iommufd_map()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TCTDLXH7GVJRHISTRBF763QTATXCZLDM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3502];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.703];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,shazbot.org:mid,shazbot.org:email,nvidia.com:email,intel.com:email,alibaba.com:email]
X-Rspamd-Queue-Id: 1DC93410B68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 21 Nov 2025 11:50:58 -0400
Jason Gunthorpe <jgg@nvidia.com> wrote:

> This function is used to establish the "private interconnect" between the
> VFIO DMABUF exporter and the iommufd DMABUF importer. This is intended to
> be a temporary API until the core DMABUF interface is improved to natively
> support a private interconnect and revocable negotiation.
> 
> This function should only be called by iommufd when trying to map a
> DMABUF. For now iommufd will only support VFIO DMABUFs.
> 
> The following improvements are needed in the DMABUF API to generically
> support more exporters with iommufd/kvm type importers that cannot use the
> DMA API:
> 
>  1) Revoke semantics. VFIO needs to be able to prevent access to the MMIO
>     during FLR, and so it will use dma_buf_move_notify() to prevent
>     access. iommmufd does not support fault handling so it cannot
>     implement the full move_notify. Instead if revoke is negotiated the
>     exporter promises not to use move_notify() unless the importer can
>     experiance failures. iommufd will unmap the dmabuf from the iommu page
>     tables while it is revoked.
> 
>  2) Private interconnect negotiation. iommufd will only be able to map
>     a "private interconnect" that provides a phys_addr_t and a
>     struct p2pdma_provider * to describe the memory. It cannot use a DMA
>     mapped scatterlist since it is directly calling iommu_map().
> 
>  3) NULL device during dma_buf_dynamic_attach(). Since iommufd doesn't use
>     the DMA API it doesn't have a DMAable struct device to pass here.
> 
> Reviewed-by: Nicolin Chen <nicolinc@nvidia.com>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> Tested-by: Shuai Xue <xueshuai@linux.alibaba.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 34 ++++++++++++++++++++++++++++++
>  include/linux/vfio_pci_core.h      |  4 ++++
>  2 files changed, 38 insertions(+)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index 6698f540bdac87..d4d0f7d08c53e2 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -82,6 +82,40 @@ static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
>  	.release = vfio_pci_dma_buf_release,
>  };
>  
> +/*
> + * This is a temporary "private interconnect" between VFIO DMABUF and iommufd.
> + * It allows the two co-operating drivers to exchange the physical address of
> + * the BAR. This is to be replaced with a formal DMABUF system for negotiated
> + * interconnect types.
> + *
> + * If this function succeeds the following are true:
> + *  - There is one physical range and it is pointing to MMIO
> + *  - When move_notify is called it means revoke, not move, vfio_dma_buf_map
> + *    will fail if it is currently revoked
> + */
> +int vfio_pci_dma_buf_iommufd_map(struct dma_buf_attachment *attachment,
> +				 struct dma_buf_phys_vec *phys)
> +{
> +	struct vfio_pci_dma_buf *priv;
> +
> +	dma_resv_assert_held(attachment->dmabuf->resv);
> +
> +	if (attachment->dmabuf->ops != &vfio_pci_dmabuf_ops)
> +		return -EOPNOTSUPP;
> +
> +	priv = attachment->dmabuf->priv;
> +	if (priv->revoked)
> +		return -ENODEV;
> +
> +	/* More than one range to iommufd will require proper DMABUF support */
> +	if (priv->nr_ranges != 1)
> +		return -EOPNOTSUPP;
> +
> +	*phys = priv->phys_vec[0];
> +	return 0;
> +}
> +EXPORT_SYMBOL_FOR_MODULES(vfio_pci_dma_buf_iommufd_map, "iommufd");
> +
>  int vfio_pci_core_fill_phys_vec(struct dma_buf_phys_vec *phys_vec,
>  				struct vfio_region_dma_range *dma_ranges,
>  				size_t nr_ranges, phys_addr_t start,
> diff --git a/include/linux/vfio_pci_core.h b/include/linux/vfio_pci_core.h
> index c9466ba323fa9c..6a3074f2cf1cea 100644
> --- a/include/linux/vfio_pci_core.h
> +++ b/include/linux/vfio_pci_core.h
> @@ -28,6 +28,7 @@ struct vfio_pci_core_device;
>  struct vfio_pci_region;
>  struct p2pdma_provider;
>  struct dma_buf_phys_vec;
> +struct dma_buf_attachment;
>  
>  struct vfio_pci_regops {
>  	ssize_t (*rw)(struct vfio_pci_core_device *vdev, char __user *buf,
> @@ -203,4 +204,7 @@ VFIO_IOREAD_DECLARATION(32)
>  VFIO_IOREAD_DECLARATION(64)
>  #endif
>  
> +int vfio_pci_dma_buf_iommufd_map(struct dma_buf_attachment *attachment,
> +				 struct dma_buf_phys_vec *phys);
> +
>  #endif /* VFIO_PCI_CORE_H */

Acked-by: Alex Williamson <alex@shazbot.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
