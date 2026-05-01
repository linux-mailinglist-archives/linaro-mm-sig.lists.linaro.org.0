Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJcfI+0m9WlAJAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 02 May 2026 00:19:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D584AFFD5
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 02 May 2026 00:19:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8B0E405CF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 May 2026 22:19:23 +0000 (UTC)
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	by lists.linaro.org (Postfix) with ESMTPS id 56405401B7
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 May 2026 22:19:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=Z36rFCSV;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="R iv28Dn";
	dmarc=pass (policy=none) header.from=shazbot.org;
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.158 as permitted sender) smtp.mailfrom=alex@shazbot.org
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id EEA127A0078;
	Fri,  1 May 2026 18:19:18 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Fri, 01 May 2026 18:19:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1777673958;
	 x=1777760358; bh=4TX/vtHUA9w5SLfj0GTrWfQ85zbl7VX0Zm2z9iybBGg=; b=
	Z36rFCSV/QHmdMLY8t8AOreKTfAXJWjSgrmCwCpHa9+ReT7y36fgcR5pc5+GEqDS
	eLpXfKzpd0Pc5TaH6ae90SgtPzwSlgr89CNZqPRsW47EsnsrIX+eViySl4rlJXJD
	0F2itZ57gCSkpgtOJv7K6SMJGOfORF01ic1R15jRI1L6IZZIEEM5PxD8/BsWu1/S
	eyBik5hXWGwGMEDvebHDpYuvooohhzBSUWUlWqxW5QVsSx9q0fx/UddnaEJHV3aT
	RB8FAxyZIsh4OjFeHxAaN+E/dhHafNo39QJbQlYa8fMtqJQ6+32I4TlwfypNBE7h
	HQ5Kpv9hq7/KDnu1Km7UMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1777673958; x=
	1777760358; bh=4TX/vtHUA9w5SLfj0GTrWfQ85zbl7VX0Zm2z9iybBGg=; b=R
	iv28Dn26iAUXL2ry8P1je31g/3uECfkks3pwYk9h65HngH0Uy4tOs8zDdqIm3hTs
	2g+1rC0b6Eab1EBcDdcko4IpzoO3iQl8O4VlqgECyUO/TDmw6G6xF09vGFwoDb4w
	n6yPBJR9BwpOqX0r6Tzsq7S85jq8xcWXZtgS+i6nWtpLzWCod1Ql082fOt+qrApx
	LA082YBqLFDO/c1RehIIZ+KLdEViXvdJm2aFqGfN5eGh2PZHZKlZlQROnqIBPL3Y
	/RT8E42WicUOqDnfMP8MAFa0nnXc6BU02LBH82hdlnq1iUNOWI3mc8HHu2dO0fZl
	WtInGVcI42IirGJLw2KWQ==
X-ME-Sender: <xms:5Sb1aYNUZG6T84P__jBOxGJPdzhKXLpgaVTqJd1cXLahJ0eYRUblwQ>
    <xme:5Sb1adWX3Ppw0aaRcnn1VTGpwyEtrCbaY1rJdxNJAw3gY8Qh5qHyX6gkUGXRxwAhV
    SZU7HWEsSInE0NDEVm30R3Jp1ez00nieWantHFXFI_UW3MDUb3npw>
X-ME-Received: <xmr:5Sb1abS8HSqyQU0NUgEdetLRrzJ6a0L4Vpr7eu3FwEp3OqHnQmshig8iHdo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeludefkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefukfgjfhfogggtgfesthejredtredtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepvdekfeejkedvudfhudfhteekudfgudeiteetvdeukedvheetvdekgfdugeev
    ueeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hlvgigsehshhgriigsohhtrdhorhhgpdhnsggprhgtphhtthhopedvtddpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtohepmhgrthhtvghvsehmvghtrgdrtghomhdprhgtphhtth
    hopehlvghonheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgr
    rdgtohhmpdhrtghpthhtoheprghmrghsthhrohesfhgsrdgtohhmpdhrtghpthhtoheptg
    hhrhhishhtihgrnhdrkhhovghnihhgsegrmhgurdgtohhmpdhrtghpthhtohepmhhnghih
    rggurghmsegrmhgriihonhdruggvpdhrtghpthhtohepughmrghtlhgrtghksehgohhogh
    hlvgdrtghomhdprhgtphhtthhopegsjhhorhhnsehkvghrnhgvlhdrohhrghdprhgtphht
    thhopehsuhhmihhtrdhsvghmfigrlheslhhinhgrrhhordhorhhg
X-ME-Proxy: <xmx:5Sb1aT2nfnQUIzMnrub8onPVS6x1O83t5QZSLF6nuatY8uH4aCgxHA>
    <xmx:5Sb1aYgkNICmhWFuRTixu6bvx7m-uS9MLGbEM5FmKoWyu6rCyTmhaQ>
    <xmx:5Sb1aRZydNZyMo71yCBoVHolTdcupfRLa2hpmAv6ykZVda_STzI6tQ>
    <xmx:5Sb1aRNlFq0ad7VlC83tSd-C0QFRQmU6ijTgGpN5eYNtdh63LiM6AQ>
    <xmx:5ib1aS08He7QGz8xhxxoeRfmtj1zPSWcv__eW5qdQrbWWPjrMHjHHPHD>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 18:19:16 -0400 (EDT)
Date: Fri, 1 May 2026 16:19:15 -0600
From: Alex Williamson <alex@shazbot.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260501161915.75525c15@shazbot.org>
In-Reply-To: <20260416131815.2729131-5-mattev@meta.com>
References: <20260416131815.2729131-1-mattev@meta.com>
	<20260416131815.2729131-5-mattev@meta.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: JVJRKD4ZBEZKCYH6ASFBHVBL3OCA56A4
X-Message-ID-Hash: JVJRKD4ZBEZKCYH6ASFBHVBL3OCA56A4
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, alex@shazbot.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JVJRKD4ZBEZKCYH6ASFBHVBL3OCA56A4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E7D584AFFD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[shazbot.org:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[shazbot.org:-,messagingengine.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:email,shazbot.org:mid]

On Thu, 16 Apr 2026 06:17:47 -0700
Matt Evans <mattev@meta.com> wrote:

> Convert the VFIO device fd fops->mmap to create a DMABUF representing
> the BAR mapping, and make the VMA fault handler look up PFNs from the
> corresponding DMABUF.  This supports future code mmap()ing BAR
> DMABUFs, and iommufd work to support Type1 P2P.
> 
> First, vfio_pci_core_mmap() uses the new
> vfio_pci_core_mmap_prep_dmabuf() helper to export a DMABUF
> representing a single BAR range.  Then, the vfio_pci_mmap_huge_fault()
> callback is updated to understand revoked buffers, and uses the new
> vfio_pci_dma_buf_find_pfn() helper to determine the PFN for a given
> fault address.
> 
> Now that the VFIO DMABUFs can be mmap()ed, vfio_pci_dma_buf_move() and
> vfio_pci_dma_buf_cleanup() need to zap PTEs on revocation and cleanup
> paths.
> 
> CONFIG_VFIO_PCI_CORE now unconditionally depends on
> CONFIG_DMA_SHARED_BUFFER.  CONFIG_VFIO_PCI_DMABUF remains, to
> conditionally include support for VFIO_DEVICE_FEATURE_DMA_BUF, and
> depends on CONFIG_PCI_P2PDMA.
> 
> Signed-off-by: Matt Evans <mattev@meta.com>
> ---
>  drivers/vfio/pci/Kconfig           |  3 +-
>  drivers/vfio/pci/Makefile          |  3 +-
>  drivers/vfio/pci/vfio_pci_core.c   | 86 ++++++++++++++++++------------
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 14 +++++
>  drivers/vfio/pci/vfio_pci_priv.h   | 11 +---
>  5 files changed, 71 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
> index 296bf01e185e..2074f2a941e1 100644
> --- a/drivers/vfio/pci/Kconfig
> +++ b/drivers/vfio/pci/Kconfig
> @@ -6,6 +6,7 @@ config VFIO_PCI_CORE
>  	tristate
>  	select VFIO_VIRQFD
>  	select IRQ_BYPASS_MANAGER
> +	select DMA_SHARED_BUFFER
>  
>  config VFIO_PCI_INTX
>  	def_bool y if !S390
> @@ -56,7 +57,7 @@ config VFIO_PCI_ZDEV_KVM
>  	  To enable s390x KVM vfio-pci extensions, say Y.
>  
>  config VFIO_PCI_DMABUF
> -	def_bool y if VFIO_PCI_CORE && PCI_P2PDMA && DMA_SHARED_BUFFER
> +	def_bool y if PCI_P2PDMA

But here we introduce the call chain:

 vfio_pci_core_mmap()
   -> vfio_pci_core_mmap_prep_dmabuf()
        -> pcim_p2pdma_provider()

Where pcim_p2pdma_provider() requires PCI_P2PDMA.  So honestly,
VFIO_PCI_CORE depends on PCI_P2PDMA.  I think that's a pretty
significant regression.

Exporting dma-bufs from vfio-pci is a feature, but mmap of MMIO BARs is
a legacy requirement.  That legacy requirement now depends on
PCI_P2PDMA, which depends on 64BIT and ZONE_DEVICE.

It's possible that our 32-bit support is already broken and we can
easily codify it in Kconfig.  We should check.  Otherwise it seems
pretty harsh to drop it without notice, or make it fundamentally broken
by exposing mmap support flags for regions where mmap is no longer
available.

ZONE_DEVICE is harder, it seems like it's possible there could be
minimal 64-bit custom kernel configs where vfio-pci currently works
without ZONE_DEVICE.

We might be headed to this impasse already as dma-buf is required to
have feature-complete compatibility with iommufd, but I had hoped we'd
be able to manage that with full legacy functionality through the
transition.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
