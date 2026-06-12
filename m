Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0noQMnniK2oUHAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 12:42:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 301E9678BF6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 12:42:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=XLc3EXSI;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2708B40A4C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 10:42:00 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id BE6053F91B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 10:41:46 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2bf22c18ad3so98065ad.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 03:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781260906; x=1781865706; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kyKpUSmzhXA86dwYd5qyCKe1OI2XqC/1Gh0xGOzaDhE=;
        b=XLc3EXSItuBxGSD4sY1A3tXGxwNwLcdzZanhgLHTV1RPWej/v40SDKzyrNsp/tGOWp
         AbvWOFeP9GqrnwSCrMRNWj0Ls9GYkRriLOe02HMRnMdViBRgqQxurXH3Q+rkD4ab30EH
         ++1BLMgDvfLJY2OUf4mqC+m6Qt1NUaD486ZYd+dAptX9X33E2CyifkwsySWN2S9DueVd
         33vmhueG9R0QeUO6fJnPnAT5NmxBUooh/qt0ryfUeKlYDm983s8YM2/zgJ19XeN6c4Nc
         zHP4PtRivyIiy6EkQPlj11UGxv9pGxNUZQR4OqLR6zy8lirJui950sk9TyfsGfk8sPW9
         WFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781260906; x=1781865706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kyKpUSmzhXA86dwYd5qyCKe1OI2XqC/1Gh0xGOzaDhE=;
        b=qlFkG/6SoTuvelkBiDbTxMEbVEcVYxJ7CAQsE8+lu5lDpjisCrS7JlqJZ6sNbYE0nU
         bvzzrwGZPzXQ7GQTLaELrB9cms/Fk/RL8MWQ9c/hpl8xVqzqMBEfWuNoxR0rVZyvtbXQ
         mR0MQTFeD/eaaYYY4AIweSODgA277OB9u3W9+Cl44zEw+jmFFepiu7j2ebf5Tg5mbC9z
         9MENYhEn61eO2+OlMZ8Lfnv9xJ44+HaT623A2ZQoxGkaZGwXpAwNQz5rCDQDCgDbr2AE
         tJwfp0WRj5Yj7nwnyh58SZ8QRXvuK/doUt92QMTJAutTaihHeuSO+5tnItUiRgnqixeo
         AjOw==
X-Forwarded-Encrypted: i=1; AFNElJ+PAd/MKmKpa6ahEE5S8LPrdxllzQbfrY9UIBlRzB+MFEI6065XUP7p7P3rpPmaYzFM/w93vj4E2BX7N/7z@lists.linaro.org
X-Gm-Message-State: AOJu0Yw0GoF+47oxsFHvhg9pBnxPeUCLiEwgCfqCvVy5PBJ7bGg/xp1o
	zvbf6VcBsAALHXiGEHS0+DTP2Hwziyg/7z/pdCWFMGw+yuPATm9AiqqZf8gNDEoyTQ==
X-Gm-Gg: Acq92OFk2vm1PbkzfPNWol37VVpMDxHNoU04ex9+bbc1gAQ6VMuJMBXeQlte/qv36w+
	N1U8MfaE6+0qIpSsQ/SCtqXX2FawcJGx9JpMMcG8asxx76rfI/kqMRk8isvzSTWs/ofNDiPO7DP
	Qo5MejWUeduz6VrVOVEOQ3NWu3yuaQyUGElWad7jGwLBLVUeZAO3N9T3kEcu/oPtQO5OAl3KFQc
	aoEPu6G2E13DTXZbOIKPG68RUN0xzn6i0gFk6+2WJ/L6Lt55uDa7A/OSfMJxpMU0m409bhlLEx5
	81yIBFAYgYd+XlnnSf2YD6jTTskshoyn0wO6jF+XnzMyjIV6/xHoCy+k3IZSnoIR/pp3PCPzjO+
	TmC40zpsv0dEMXoc51T8gFMu77+l/CllIqjyGTfXV83T0xcBg/D+D1PWAfCUoREXXGmQNWNK9Iv
	oil6nlREdcRhuGCVx4ZHSN0GlJPCjmdFmj8wNPgp91iow17i+XhVFvsie8yXTH
X-Received: by 2002:a17:902:da81:b0:2c0:c14c:bf37 with SMTP id d9443c01a7336-2c3e1919896mr2258415ad.16.1781260905357;
        Fri, 12 Jun 2026 03:41:45 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327acae2sm15759755ad.52.2026.06.12.03.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 03:41:44 -0700 (PDT)
Date: Fri, 12 Jun 2026 10:41:36 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aiviYEi17tewEQg0@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-5-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-5-matt@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: P4I5ZMBXVUS5SLHEH3ZV3WVVRML446NB
X-Message-ID-Hash: P4I5ZMBXVUS5SLHEH3ZV3WVVRML446NB
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P4I5ZMBXVUS5SLHEH3ZV3WVVRML446NB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ozlabs.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 301E9678BF6

On Wed, Jun 10, 2026 at 04:43:18PM +0100, Matt Evans wrote:
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
> Now that the VFIO DMABUFs can be mmap()ed, vfio_pci_dma_buf_move()
> zaps PTEs (used on the revocation and cleanup paths).
> 
> CONFIG_VFIO_PCI_CORE now unconditionally depends on
> CONFIG_DMA_SHARED_BUFFER and CONFIG_PCI_P2PDMA_CORE.  The
> CONFIG_VFIO_PCI_DMABUF feature conditionally includes support for
> VFIO_DEVICE_FEATURE_DMA_BUF, depending on the availability of
> CONFIG_PCI_P2PDMA.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  drivers/vfio/pci/Kconfig           |  5 +-
>  drivers/vfio/pci/Makefile          |  3 +-
>  drivers/vfio/pci/vfio_pci_core.c   | 75 +++++++++++++++++++-----------
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 12 +++++
>  drivers/vfio/pci/vfio_pci_priv.h   | 11 +----
>  5 files changed, 67 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
> index 296bf01e185e..67a2ae1fbc04 100644
> --- a/drivers/vfio/pci/Kconfig
> +++ b/drivers/vfio/pci/Kconfig
> @@ -6,6 +6,8 @@ config VFIO_PCI_CORE
>  	tristate
>  	select VFIO_VIRQFD
>  	select IRQ_BYPASS_MANAGER
> +	select PCI_P2PDMA_CORE
> +	select DMA_SHARED_BUFFER
>  
>  config VFIO_PCI_INTX
>  	def_bool y if !S390
> @@ -56,7 +58,8 @@ config VFIO_PCI_ZDEV_KVM
>  	  To enable s390x KVM vfio-pci extensions, say Y.
>  
>  config VFIO_PCI_DMABUF
> -	def_bool y if VFIO_PCI_CORE && PCI_P2PDMA && DMA_SHARED_BUFFER
> +	def_bool y if PCI_P2PDMA
> +	depends on VFIO_PCI_CORE
>  
>  source "drivers/vfio/pci/mlx5/Kconfig"
>  
[...]  
>  int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  				   struct vm_area_struct *vma,
> @@ -532,6 +538,10 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>  	struct vfio_pci_dma_buf *tmp;
>  
>  	lockdep_assert_held_write(&vdev->memory_lock);
> +	/*
> +	 * Holding memory_lock ensures a racing VMA fault observes
> +	 * priv->revoked properly.
> +	 */

Nit: This comment should appear before the lockdep_assert_held_write()
Also, it is slightly verbose.. (not against it though).

>  
>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
>  		if (!get_file_active(&priv->dmabuf->file))
> @@ -549,6 +559,8 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>  			if (revoked) {
>  				kref_put(&priv->kref, vfio_pci_dma_buf_done);
>  				wait_for_completion(&priv->comp);
> +				unmap_mapping_range(priv->dmabuf->file->f_mapping,
> +						    0, priv->size, 1);

Have we run this series with lockdep enabled?
I guess it'd be nice to check with lockdep once..

Apart from these, 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
