Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C276C290EC
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 02 Nov 2025 16:13:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35E053F73D
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  2 Nov 2025 15:13:13 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 8BFEE3F73D
	for <linaro-mm-sig@lists.linaro.org>; Sun,  2 Nov 2025 15:13:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CT9wGfoA;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E3ADB438F0;
	Sun,  2 Nov 2025 15:13:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAABBC4CEF7;
	Sun,  2 Nov 2025 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762096380;
	bh=tizBF6oQAn/Y3qWcygtT9HOK6tA8tcWjX6+eHwzztHc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CT9wGfoAiCv2vOtEIQkZsX5as/tdAoLN3LndZfBArHXUFA/Zw6aiiZ8s7L1ItFwnS
	 J44TfxOhI/HBSPQzjPfDdOnuTocQGDHYR0rQS/QWk/RFyc2i6YnIcrq0bR37G55zSN
	 cRUJYZHLWZuU9uME66gb8xkP50ARR5vellQ8rh2cps+8y1z5a6FXx1Bm7+UKl4xykw
	 BKzX1CHLdgL5P2L7bHPJvSRCjuzG6pnNETHYekFTtAy6gY2hQ8xQ2LYlmtydkaNOmU
	 IDJqI0JxojL60OTRm80nOQSmOqRXrUZh51uEpe4MhDqcBvu3YYEuSQHoFo9Sv5xLDN
	 7aBCzDPV1VG1g==
Date: Sun, 2 Nov 2025 17:12:53 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20251102151253.GA50752@unreal>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
 <20251102-dmabuf-vfio-v6-10-d773cff0db9f@nvidia.com>
 <20251102080137.209aa567@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251102080137.209aa567@shazbot.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8BFEE3F73D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[34];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[sea.source.kernel.org:rdns,sea.source.kernel.org:helo];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ALFNIN45L4S2QLTYBBQE3OBQGTU44H5Y
X-Message-ID-Hash: ALFNIN45L4S2QLTYBBQE3OBQGTU44H5Y
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.
 linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ALFNIN45L4S2QLTYBBQE3OBQGTU44H5Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Nov 02, 2025 at 08:01:37AM -0700, Alex Williamson wrote:
> On Sun,  2 Nov 2025 10:00:58 +0200
> Leon Romanovsky <leon@kernel.org> wrote:
> > @@ -2391,6 +2403,7 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
> >  				      struct iommufd_ctx *iommufd_ctx)
> >  {
> >  	struct vfio_pci_core_device *vdev;
> > +	bool restore_revoke = false;
> >  	struct pci_dev *pdev;
> >  	int ret;
> >  
> > @@ -2459,6 +2472,8 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
> >  			break;
> >  		}
> >  
> > +		vfio_pci_dma_buf_move(vdev, true);
> > +		restore_revoke = true;
> >  		vfio_pci_zap_bars(vdev);
> >  	}
> >  
> > @@ -2486,6 +2501,12 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
> >  			       struct vfio_pci_core_device, vdev.dev_set_list);
> >  
> >  err_undo:
> > +	if (restore_revoke) {
> > +		list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
> > +			if (__vfio_pci_memory_enabled(vdev))
> > +				vfio_pci_dma_buf_move(vdev, false);
> > +	}
> > +
> >  	list_for_each_entry_from_reverse(vdev, &dev_set->device_list,
> >  					 vdev.dev_set_list)
> 
> We don't need the separate loop or flag, and adding it breaks the
> existing reverse list walk.  Thanks,

Do you want me to send v7? I have a feeling that v6 is good to be merged.

Thanks

diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index 24204893e221..51a3bcc26f8b 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -2403,7 +2403,6 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
                                      struct iommufd_ctx *iommufd_ctx)
 {
        struct vfio_pci_core_device *vdev;
-       bool restore_revoke = false;
        struct pci_dev *pdev;
        int ret;
 
@@ -2473,7 +2472,6 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
                }
 
                vfio_pci_dma_buf_move(vdev, true);
-               restore_revoke = true;
                vfio_pci_zap_bars(vdev);
        }
 
@@ -2501,15 +2499,12 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
                               struct vfio_pci_core_device, vdev.dev_set_list);
 
 err_undo:
-       if (restore_revoke) {
-               list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
-                       if (__vfio_pci_memory_enabled(vdev))
-                               vfio_pci_dma_buf_move(vdev, false);
-       }
-
        list_for_each_entry_from_reverse(vdev, &dev_set->device_list,
-                                        vdev.dev_set_list)
+                                        vdev.dev_set_list) {
+               if (__vfio_pci_memory_enabled(vdev))
+                       vfio_pci_dma_buf_move(vdev, false);
                up_write(&vdev->memory_lock);
+       }
 
        list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
                pm_runtime_put(&vdev->pdev->dev);


> 
> Alex
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
