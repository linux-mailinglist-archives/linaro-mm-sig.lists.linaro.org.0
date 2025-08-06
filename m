Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7907B1CF0B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Aug 2025 00:25:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B70B84122C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Aug 2025 22:25:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 9323740D24
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Aug 2025 22:25:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=A687wrL5;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754519104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2KWudinkIbXD4F4ulzK9/+oUi2avXDJW6sBf89lUWmU=;
	b=A687wrL50JPH4B1qppQH1Wb1ADAsKM0EB2dJZG/Ky9aDLn15CyhTFagyW26SBMOyP5kD81
	WyXmr3cG2BJqMBzDVnYOK7/DIL86uiTjGN38q0Hz8z+NNuBFIJvy+hd7OqexVxpwpeu/sy
	plR9dY3/1TPsiNiNCOoPEP+Gfi34wMk=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-128-ohKlqttnO92U2vs65aZUIQ-1; Wed, 06 Aug 2025 18:25:01 -0400
X-MC-Unique: ohKlqttnO92U2vs65aZUIQ-1
X-Mimecast-MFC-AGG-ID: ohKlqttnO92U2vs65aZUIQ_1754519101
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3e51bd62f3dso827725ab.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Aug 2025 15:25:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754519101; x=1755123901;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2KWudinkIbXD4F4ulzK9/+oUi2avXDJW6sBf89lUWmU=;
        b=Rg8NHs5R4bmNUVIyzK/+hrqTrT4yIcd7C7+Kcf1qNqg9q0NImrxVNO823b99c49mT+
         0RDkz+L8glVmLEgsg6UQ1JuGNpGkXaYT5j+i3ibWHuP+hyycZYv1JK81kDDE+1TgWi9m
         gfxEKWxJAH/84tEKOmvd5lHGpllo7WtJOkz/Dldzsp/JXj5LhQoKpmyjwHMK+fx6IbAW
         1ygRk/hRs+GY0Q2V8L/1GbRBLiSa3bcTsTWbGiE7/WDTZ29OuHjRw5XhPMIWrZgsPV6l
         aWbKJ/DIcaZENZEUX4WcTdSccRHDqjvWZXbG7Gju8dZW8A3q18fTCLe/pC2b4z5BAbHy
         cLpg==
X-Forwarded-Encrypted: i=1; AJvYcCURjTefsRbS2bxBkXBAvUjH+F792mmCkBGrSuDkkA8g6p9Do6Fs8oqFL9BJeqZaR1PtoEKoaZWHNGChreVN@lists.linaro.org
X-Gm-Message-State: AOJu0YzuhzaKsOWLoWPU+GYh7jaGUFcco/oa6x2F786Awh+NND3LsIzj
	jE1ZPHwnoJbI5R32dBR0HIqwI1KvlapTUlzrREFNsrdak+MKjzQ+4RT7XXnHgR0KaIOiffhhao3
	bSHaGWDohSTZ+SOgzrwvCodqfT91/hACvmyAacz7ZDPefPHpE5MFQnM17mxD/cxCUdt8H
X-Gm-Gg: ASbGnctaPyL6ObAanbTGv7fGye4wQYaNSSZ/hxg1XqUKnrZf+tp7Ywg9cuy/bdhBZaZ
	HzaXEu2va2aYr45elA+EHastEFbGyYjDV8QJ4594U+rJ4rCy1xaKg7uGkEWZuuB1ssSJSJEVKXN
	bvQqriOn90cVwBg7mVY/bL5mDknxzvsbGRWUDLmXS0ejKtKtyjMHLR/V1Cz202RH8gC0BxFOE4L
	DwcerPvtAJhb5OfQUcD0P2i8dy8UTbURYpOG6HWVv2oACKkkjT/95exvYO0ZAuRDy5lypiJDmFJ
	Vt/yFiHmtqsOFGCmx1WAkZJlk7YdDA6MmKeDfYGu7J4=
X-Received: by 2002:a05:6602:148a:b0:85d:9793:e0d8 with SMTP id ca18e2360f4ac-8819eddca30mr265753339f.0.1754519100592;
        Wed, 06 Aug 2025 15:25:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJbvSuwj5vna+ENO4HZHTFh+EQIF6Bqd2408Pfz1T06ISMEQUJO+65aGvhO/KGJJ7KSEu0KQ==
X-Received: by 2002:a05:6602:148a:b0:85d:9793:e0d8 with SMTP id ca18e2360f4ac-8819eddca30mr265749739f.0.1754519100087;
        Wed, 06 Aug 2025 15:25:00 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-88175b2e0c6sm314280239f.31.2025.08.06.15.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 15:24:59 -0700 (PDT)
Date: Wed, 6 Aug 2025 16:24:55 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250806162455.350f73a4.alex.williamson@redhat.com>
In-Reply-To: <5e043d8b95627441db6156e7f15e6e1658e9d537.1754311439.git.leon@kernel.org>
References: <cover.1754311439.git.leon@kernel.org>
	<5e043d8b95627441db6156e7f15e6e1658e9d537.1754311439.git.leon@kernel.org>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8ZHHoYqE9PN4YgvMi7rZvqB3ZOwI06WJZUbg8CyhVAo_1754519101
X-Mimecast-Originator: redhat.com
X-Spamd-Result: default: False [-3.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	HAS_ORG_HEADER(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9323740D24
X-Spamd-Bar: ---
Message-ID-Hash: KRV7HTMEXYHLXQ6DFZ26F6TYYCI3IQTC
X-Message-ID-Hash: KRV7HTMEXYHLXQ6DFZ26F6TYYCI3IQTC
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 10/10] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KRV7HTMEXYHLXQ6DFZ26F6TYYCI3IQTC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon,  4 Aug 2025 16:00:45 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Add support for exporting PCI device MMIO regions through dma-buf,
> enabling safe sharing of non-struct page memory with controlled
> lifetime management. This allows RDMA and other subsystems to import
> dma-buf FDs and build them into memory regions for PCI P2P operations.
> 
> The implementation provides a revocable attachment mechanism using
> dma-buf move operations. MMIO regions are normally pinned as BARs
> don't change physical addresses, but access is revoked when the VFIO
> device is closed or a PCI reset is issued. This ensures kernel
> self-defense against potentially hostile userspace.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/vfio/pci/Kconfig           |  20 ++
>  drivers/vfio/pci/Makefile          |   2 +
>  drivers/vfio/pci/vfio_pci_config.c |  22 +-
>  drivers/vfio/pci/vfio_pci_core.c   |  25 +-
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 390 +++++++++++++++++++++++++++++
>  drivers/vfio/pci/vfio_pci_priv.h   |  23 ++
>  include/linux/dma-buf.h            |   1 +
>  include/linux/vfio_pci_core.h      |   3 +
>  include/uapi/linux/vfio.h          |  25 ++
>  9 files changed, 506 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/vfio/pci/vfio_pci_dmabuf.c
> 
> diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
> index 2b0172f546652..55ae888bf26ae 100644
> --- a/drivers/vfio/pci/Kconfig
> +++ b/drivers/vfio/pci/Kconfig
> @@ -55,6 +55,26 @@ config VFIO_PCI_ZDEV_KVM
>  
>  	  To enable s390x KVM vfio-pci extensions, say Y.
>  
> +config VFIO_PCI_DMABUF
> +	bool "VFIO PCI extensions for DMA-BUF"
> +	depends on VFIO_PCI_CORE
> +	depends on PCI_P2PDMA && DMA_SHARED_BUFFER
> +	default y
> +	help
> +	  Enable support for VFIO PCI extensions that allow exporting
> +	  device MMIO regions as DMA-BUFs for peer devices to access via
> +	  peer-to-peer (P2P) DMA.
> +
> +	  This feature enables a VFIO-managed PCI device to export a portion
> +	  of its MMIO BAR as a DMA-BUF file descriptor, which can be passed
> +	  to other userspace drivers or kernel subsystems capable of
> +	  initiating DMA to that region.
> +
> +	  Say Y here if you want to enable VFIO DMABUF-based MMIO export
> +	  support for peer-to-peer DMA use cases.
> +
> +	  If unsure, say N.
> +
>  source "drivers/vfio/pci/mlx5/Kconfig"
>  
>  source "drivers/vfio/pci/hisilicon/Kconfig"
> diff --git a/drivers/vfio/pci/Makefile b/drivers/vfio/pci/Makefile
> index cf00c0a7e55c8..f9155e9c5f630 100644
> --- a/drivers/vfio/pci/Makefile
> +++ b/drivers/vfio/pci/Makefile
> @@ -2,7 +2,9 @@
>  
>  vfio-pci-core-y := vfio_pci_core.o vfio_pci_intrs.o vfio_pci_rdwr.o vfio_pci_config.o
>  vfio-pci-core-$(CONFIG_VFIO_PCI_ZDEV_KVM) += vfio_pci_zdev.o
> +
>  obj-$(CONFIG_VFIO_PCI_CORE) += vfio-pci-core.o
> +vfio-pci-core-$(CONFIG_VFIO_PCI_DMABUF) += vfio_pci_dmabuf.o
>  
>  vfio-pci-y := vfio_pci.o
>  vfio-pci-$(CONFIG_VFIO_PCI_IGD) += vfio_pci_igd.o
> diff --git a/drivers/vfio/pci/vfio_pci_config.c b/drivers/vfio/pci/vfio_pci_config.c
> index 8f02f236b5b4b..7e23387a43b4d 100644
> --- a/drivers/vfio/pci/vfio_pci_config.c
> +++ b/drivers/vfio/pci/vfio_pci_config.c
> @@ -589,10 +589,12 @@ static int vfio_basic_config_write(struct vfio_pci_core_device *vdev, int pos,
>  		virt_mem = !!(le16_to_cpu(*virt_cmd) & PCI_COMMAND_MEMORY);
>  		new_mem = !!(new_cmd & PCI_COMMAND_MEMORY);
>  
> -		if (!new_mem)
> +		if (!new_mem) {
>  			vfio_pci_zap_and_down_write_memory_lock(vdev);
> -		else
> +			vfio_pci_dma_buf_move(vdev, true);
> +		} else {
>  			down_write(&vdev->memory_lock);
> +		}
>  
>  		/*
>  		 * If the user is writing mem/io enable (new_mem/io) and we
> @@ -627,6 +629,8 @@ static int vfio_basic_config_write(struct vfio_pci_core_device *vdev, int pos,
>  		*virt_cmd &= cpu_to_le16(~mask);
>  		*virt_cmd |= cpu_to_le16(new_cmd & mask);
>  
> +		if (__vfio_pci_memory_enabled(vdev))
> +			vfio_pci_dma_buf_move(vdev, false);
>  		up_write(&vdev->memory_lock);
>  	}
>  
> @@ -707,12 +711,16 @@ static int __init init_pci_cap_basic_perm(struct perm_bits *perm)
>  static void vfio_lock_and_set_power_state(struct vfio_pci_core_device *vdev,
>  					  pci_power_t state)
>  {
> -	if (state >= PCI_D3hot)
> +	if (state >= PCI_D3hot) {
>  		vfio_pci_zap_and_down_write_memory_lock(vdev);
> -	else
> +		vfio_pci_dma_buf_move(vdev, true);
> +	} else {
>  		down_write(&vdev->memory_lock);
> +	}
>  
>  	vfio_pci_set_power_state(vdev, state);
> +	if (__vfio_pci_memory_enabled(vdev))
> +		vfio_pci_dma_buf_move(vdev, false);
>  	up_write(&vdev->memory_lock);
>  }
>  
> @@ -900,7 +908,10 @@ static int vfio_exp_config_write(struct vfio_pci_core_device *vdev, int pos,
>  
>  		if (!ret && (cap & PCI_EXP_DEVCAP_FLR)) {
>  			vfio_pci_zap_and_down_write_memory_lock(vdev);
> +			vfio_pci_dma_buf_move(vdev, true);
>  			pci_try_reset_function(vdev->pdev);
> +			if (__vfio_pci_memory_enabled(vdev))
> +				vfio_pci_dma_buf_move(vdev, true);

@revoked true -> true seems wrong.

>  			up_write(&vdev->memory_lock);
>  		}
>  	}
> @@ -982,7 +993,10 @@ static int vfio_af_config_write(struct vfio_pci_core_device *vdev, int pos,
>  
>  		if (!ret && (cap & PCI_AF_CAP_FLR) && (cap & PCI_AF_CAP_TP)) {
>  			vfio_pci_zap_and_down_write_memory_lock(vdev);
> +			vfio_pci_dma_buf_move(vdev, true);
>  			pci_try_reset_function(vdev->pdev);
> +			if (__vfio_pci_memory_enabled(vdev))
> +				vfio_pci_dma_buf_move(vdev, true);

Same.

>  			up_write(&vdev->memory_lock);
>  		}
>  	}
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index b1863d84b11aa..8e840ac413e9b 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -28,7 +28,9 @@
>  #include <linux/nospec.h>
>  #include <linux/sched/mm.h>
>  #include <linux/iommufd.h>
> +#ifdef CONFIG_VFIO_PCI_DMABUF
>  #include <linux/pci-p2pdma.h>
> +#endif
>  #if IS_ENABLED(CONFIG_EEH)
>  #include <asm/eeh.h>
>  #endif
> @@ -287,6 +289,8 @@ static int vfio_pci_runtime_pm_entry(struct vfio_pci_core_device *vdev,
>  	 * semaphore.
>  	 */
>  	vfio_pci_zap_and_down_write_memory_lock(vdev);
> +	vfio_pci_dma_buf_move(vdev, true);
> +
>  	if (vdev->pm_runtime_engaged) {
>  		up_write(&vdev->memory_lock);
>  		return -EINVAL;
> @@ -370,6 +374,8 @@ static void vfio_pci_runtime_pm_exit(struct vfio_pci_core_device *vdev)
>  	 */
>  	down_write(&vdev->memory_lock);
>  	__vfio_pci_runtime_pm_exit(vdev);
> +	if (__vfio_pci_memory_enabled(vdev))
> +		vfio_pci_dma_buf_move(vdev, false);
>  	up_write(&vdev->memory_lock);
>  }
>  
> @@ -690,6 +696,8 @@ void vfio_pci_core_close_device(struct vfio_device *core_vdev)
>  #endif
>  	vfio_pci_core_disable(vdev);
>  
> +	vfio_pci_dma_buf_cleanup(vdev);
> +
>  	mutex_lock(&vdev->igate);
>  	if (vdev->err_trigger) {
>  		eventfd_ctx_put(vdev->err_trigger);
> @@ -1222,7 +1230,10 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
>  	 */
>  	vfio_pci_set_power_state(vdev, PCI_D0);
>  
> +	vfio_pci_dma_buf_move(vdev, true);
>  	ret = pci_try_reset_function(vdev->pdev);
> +	if (__vfio_pci_memory_enabled(vdev))
> +		vfio_pci_dma_buf_move(vdev, false);
>  	up_write(&vdev->memory_lock);
>  
>  	return ret;
> @@ -1511,6 +1522,8 @@ int vfio_pci_core_ioctl_feature(struct vfio_device *device, u32 flags,
>  		return vfio_pci_core_pm_exit(vdev, flags, arg, argsz);
>  	case VFIO_DEVICE_FEATURE_PCI_VF_TOKEN:
>  		return vfio_pci_core_feature_token(vdev, flags, arg, argsz);
> +	case VFIO_DEVICE_FEATURE_DMA_BUF:
> +		return vfio_pci_core_feature_dma_buf(vdev, flags, arg, argsz);
>  	default:
>  		return -ENOTTY;
>  	}
> @@ -2085,9 +2098,13 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
>  	INIT_LIST_HEAD(&vdev->dummy_resources_list);
>  	INIT_LIST_HEAD(&vdev->ioeventfds_list);
>  	INIT_LIST_HEAD(&vdev->sriov_pfs_item);
> +#ifdef CONFIG_VFIO_PCI_DMABUF
>  	vdev->provider = pci_p2pdma_enable(vdev->pdev);
>  	if (IS_ERR(vdev->provider))
>  		return PTR_ERR(vdev->provider);
> +
> +	INIT_LIST_HEAD(&vdev->dmabufs);
> +#endif
>  	init_rwsem(&vdev->memory_lock);
>  	xa_init(&vdev->ctx);
>  
> @@ -2470,11 +2487,17 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>  	 * cause the PCI config space reset without restoring the original
>  	 * state (saved locally in 'vdev->pm_save').
>  	 */
> -	list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
> +	list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list) {
> +		vfio_pci_dma_buf_move(vdev, true);
>  		vfio_pci_set_power_state(vdev, PCI_D0);
> +	}

The revoke should have happened at the time the BARs were zapped.
Thanks,

Alex

>  
>  	ret = pci_reset_bus(pdev);
>  
> +	list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
> +		if (__vfio_pci_memory_enabled(vdev))
> +			vfio_pci_dma_buf_move(vdev, false);
> +
>  	vdev = list_last_entry(&dev_set->device_list,
>  			       struct vfio_pci_core_device, vdev.dev_set_list);
>  

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
