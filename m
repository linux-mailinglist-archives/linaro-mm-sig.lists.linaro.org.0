Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ua3GC24SLGqEKwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 16:06:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E5F67A0E2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 16:06:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=v8wOgO8e;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2FAF40A68
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 14:06:36 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id A743D3FDAE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 14:06:24 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2bf22c18ad3so119915ad.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 07:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781273184; x=1781877984; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7gWNes2hHFmdqgzisSBTrBhiO7t0Lprwi8AqbjigE24=;
        b=v8wOgO8eJ2XU4EqbFD488PwQ+iAnSEeLkCxnbLBNlFOzqmE0t0Mo0n9rUNV8kKpt7O
         QWng02xje68nIvAFA9QR4y6pu3no8AoAFtK7FvekJLgPdhGXP5orOj41uIuo2bfv56VI
         x4ZnY/cEpgomV99zrK7cJ9hAvAaNiigC+59pa/x4aKDwN/XRsu6sAL3F9TIQlzB0//2e
         /sKLuYlmXBnZlpEb8NQr23OV8zO1VCWWKDYvoMjP6YiKbRgzUF7GT2qooVZUu7n07NZs
         jbI2LhQIedSlbmgYFIQrN3n4bSaScqWIoq9LBc9qxGSSuqZEBWlK2svvsE7QNh5M14L4
         R5Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781273184; x=1781877984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gWNes2hHFmdqgzisSBTrBhiO7t0Lprwi8AqbjigE24=;
        b=aH46znscPpB7nV4GqUvO8XmxiiQd74JSEfE6z1cvFBYv4Z3qeo0Qldb16HABtmu9E4
         QZaas8ZnXmnvMyxQyTVtevD0X+JQJb0XAvW+DyzvxKJ+0ZbbATJ2fITBVnEf6xeb1A+S
         LMNskSTMgQq0cnXVfsHj85/jW/oI8nH8BAn/whvibnJ7sef3HW2fhBza/cPE1kkPfZX7
         1YVp+rWRlwwl/avaKDGMUGsTAYjXk7Njqu8elwk785Z33/35DUSPGxmWlqs6qU2h4o06
         TSE+14tuXAWSZubfyTlSfNJCxkeNCOoVKljCP76HQA5uOERV/kmhA1zmduxSZNxv0T42
         dfJw==
X-Forwarded-Encrypted: i=1; AFNElJ8zsGjxbak6sCAIhLTKC8KIz5hMHa9OY3QJXyhMSfzeDtAgdsAGbHJcNX79MWO2QvUkm/ZJT+j96DQC2tU8@lists.linaro.org
X-Gm-Message-State: AOJu0YwSiBya5Ryc2RoiQukVNGLSPltVbGgba3d2ck0SLk7RER0fpo0o
	wrpo0vLE7AzVRMx8GJJNPt2XXShpk7qsZ6mMPI5OB7qV8hqDKTvpmudvtcGOOrDgmA==
X-Gm-Gg: Acq92OGPdLrMreNsX6+1MZjZE9b0949/5Iy4MYAL2h+5xwxXoUO5GGKqzYnZOgJU2WS
	wqEMzDXySjBkL9OdYGjgSeC1uX8IYQFoDHAIn1l8hU16lQyDSI4Go9xl+aYQ22vI4eGas0DEpRY
	wcZ+RGl/Sl0ENffwLiKtZWBHOU1I96hwkSf9cN7CsUBRA9vGkUjk5pZ4PKzCQmRhAB+uJ3w80PU
	G6gSwpZvPgS9dAL5uUozkO3dhUnGAf/kmWYgo+lf1x9205zaBxcVO92sUjxwg4d6Mx+oota1aeo
	Ao4m1ToHMpmwB8AvINVg3Ie4U75oLIq61UZl/4P0LrGKe6e0KL/OGwBDUvzu4PvwOL0YCykmAUu
	8DS+5A+Tw85dFwy6Szx+r0SXtHMBtfHEDAnPhDOxX6qIpdfIxvTkbwdUUrVzzAvlmvzUx29SQ0T
	PJRuccVXFhwo1hM8L6DSo5ALe5B0oqVvIVUlpOFjjgeGjQdiFzWDPFan3KsHwnY3GqXu0czng=
X-Received: by 2002:a17:903:46c6:b0:2bd:6dad:3df9 with SMTP id d9443c01a7336-2c405f85829mr1700165ad.23.1781273183096;
        Fri, 12 Jun 2026 07:06:23 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37a25ecd5dcsm2325236a91.9.2026.06.12.07.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 07:06:22 -0700 (PDT)
Date: Fri, 12 Jun 2026 14:06:14 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aiwSVk4n9mCQEln2@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-6-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-6-matt@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: TDS4CMSBHB7W2NSZOX535LW4WJMNKOFN
X-Message-ID-Hash: TDS4CMSBHB7W2NSZOX535LW4WJMNKOFN
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/9] vfio/pci: Provide a user-facing name for BAR mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TDS4CMSBHB7W2NSZOX535LW4WJMNKOFN/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8E5F67A0E2

On Wed, Jun 10, 2026 at 04:43:19PM +0100, Matt Evans wrote:
> Since converting BAR mmap()s to using DMABUFs, we lose the original
> device path in /proc/<pid>/maps, lsof, etc.  Generate a debug-oriented
> synthetic 'filename' based on the cdev, plus BDF, plus resource index.
> 
> This applies only to BAR mappings via the VFIO device fd, as
> explicitly-exported DMABUFs are named by userspace via the
> DMA_BUF_SET_NAME ioctl.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index 2fd3629789bf..8f7f1b909b94 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -4,6 +4,7 @@
>  #include <linux/dma-buf-mapping.h>
>  #include <linux/pci-p2pdma.h>
>  #include <linux/dma-resv.h>
> +#include <uapi/linux/dma-buf.h>
>  
>  #include "vfio_pci_priv.h"
>  
> @@ -470,6 +471,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  {
>  	struct vfio_pci_dma_buf *priv;
>  	unsigned long vma_pgoff = vma->vm_pgoff & (VFIO_PCI_OFFSET_MASK >> PAGE_SHIFT);
> +	char *bufname;
>  	int ret;
>  
>  	priv = kzalloc_obj(*priv);
> @@ -482,6 +484,20 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  		goto err_free_priv;
>  	}
>  
> +	bufname = kzalloc(DMA_BUF_NAME_LEN, GFP_KERNEL);
> +	if (!bufname) {
> +		ret = -ENOMEM;
> +		goto err_free_phys;
> +	}
> +
> +	/*
> +	 * Maximum size of the friendly debug name is
> +	 * vfio1234567890:ffff:ff:3f.7/5 = 30, which fits within
> +	 * DMA_BUF_NAME_LEN.
> +	 */
> +	snprintf(bufname, DMA_BUF_NAME_LEN, "%s:%s/%x",
> +		 dev_name(&vdev->vdev.device), pci_name(vdev->pdev), res_index);
> +

Nit: Could we instead use:

	bufname = kasprintf(GFP_KERNEL, "%s:%s/%x",
	                    dev_name(&vdev->vdev.device), pci_name(vdev->pdev), res_index);
	if (!bufname)
	    ret = -ENOMEM;
	    [...]

>  	/*
>  	 * The DMABUF begins from the mmap()'s BAR offset, i.e. the
>  	 * start of the VMA corresponds to byte 0 of the DMABUF and
> @@ -500,7 +516,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  	priv->provider = pcim_p2pdma_provider(vdev->pdev, res_index);
>  	if (!priv->provider) {
>  		ret = -EINVAL;
> -		goto err_free_phys;
> +		goto err_free_name;
>  	}
>  
>  	priv->phys_vec[0].paddr = phys_start + ((u64)vma_pgoff << PAGE_SHIFT);
> @@ -508,7 +524,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  
>  	ret = vfio_pci_dmabuf_export(vdev, priv, O_CLOEXEC | O_RDWR);
>  	if (ret)
> -		goto err_free_phys;
> +		goto err_free_name;
>  
>  	/*
>  	 * Ownership of the DMABUF file transfers to the VMA so that
> @@ -523,8 +539,15 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  	vma->vm_file = priv->dmabuf->file;
>  	vma->vm_private_data = priv;
>  
> +	spin_lock(&priv->dmabuf->name_lock);
> +	kfree(priv->dmabuf->name);
> +	priv->dmabuf->name = bufname;
> +	spin_unlock(&priv->dmabuf->name_lock);
> +
>  	return 0;
>  
> +err_free_name:
> +	kfree(bufname);
>  err_free_phys:
>  	kfree(priv->phys_vec);
>  err_free_priv:

Apart from that,

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
