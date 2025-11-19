Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2192DC71141
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 21:51:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A3C83F909
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 20:51:18 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 5EFA13F80D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 20:51:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WD9x9QV1;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 98FBB42B3E;
	Wed, 19 Nov 2025 20:51:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB6F6C4CEF5;
	Wed, 19 Nov 2025 20:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763585461;
	bh=DswVG1oTzUiEJ8OCl8YsEigGVa4Bx94nOKhFpt+Wsvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WD9x9QV1DwQwVGIdLkDg9vHfbQWvYyRs6UT8Nax935CI2rJnRDICNwCXS5HIhangI
	 saQZQ2RpBFUMtb4TJEEOL0WHh0wFiFri2b7JG1n0+RK11ZsLc5DGmVGV7l64ClKkgC
	 vRxDQT5EoIvjPLEi3B2XAyJU7WmaDXg8OAMkEXQd0JsmXPrJJv3d6a7i/Z5JdxWmyx
	 zdB6j8b4TGgfCNdk4lt38vyNWR9l3e8PIbJ/I9sUPcdygSMyl55HkgU0LmvIG3CZXG
	 nYSnV5vsWC6s9rmBabRJ/c3v1bKjE10as/k7ibkiwCvxigdkv0cD1MYlZw5r1SLJuf
	 GU4qhKmwKMLZQ==
Date: Wed, 19 Nov 2025 22:50:57 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20251119205057.GO18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-10-fd9aa5df478f@nvidia.com>
 <BN9PR11MB527610F3240E677BE9720C2B8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251118142849.GG17968@ziepe.ca>
 <BN9PR11MB5276EF47D26AB55B2CD456EE8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251119194120.GR17968@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251119194120.GR17968@ziepe.ca>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5EFA13F80D
X-Spamd-Bar: ---
Message-ID-Hash: EXN4FZRGHFPR3GIMQNW5YIC3LPKCFFCD
X-Message-ID-Hash: EXN4FZRGHFPR3GIMQNW5YIC3LPKCFFCD
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Tian, Kevin" <kevin.tian@intel.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "lin
 ux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EXN4FZRGHFPR3GIMQNW5YIC3LPKCFFCD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 19, 2025 at 03:41:20PM -0400, Jason Gunthorpe wrote:
> On Tue, Nov 18, 2025 at 11:56:14PM +0000, Tian, Kevin wrote:
> > > > > +	down_write(&vdev->memory_lock);
> > > > > +	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm)
> > > > > {
> > > > > +		if (!get_file_active(&priv->dmabuf->file))
> > > > > +			continue;
> > > > > +
> > > > > +		dma_resv_lock(priv->dmabuf->resv, NULL);
> > > > > +		list_del_init(&priv->dmabufs_elm);
> > > > > +		priv->vdev = NULL;
> > > > > +		priv->revoked = true;
> > > > > +		dma_buf_move_notify(priv->dmabuf);
> > > > > +		dma_resv_unlock(priv->dmabuf->resv);
> > > > > +		vfio_device_put_registration(&vdev->vdev);
> > > > > +		fput(priv->dmabuf->file);
> > > >
> > > > dma_buf_put(priv->dmabuf), consistent with other places.
> > > 
> > > Someone else said this, I don't agree, the above got the get via
> > > 
> > > get_file_active() instead of a dma_buf version..
> > > 
> > > So we should pair with get_file_active() vs fput().
> > > 
> > > Christian rejected the idea of adding a dmabuf wrapper for
> > > get_file_active(), oh well.
> > 
> > Okay then vfio_pci_dma_buf_move() should be changed. It uses
> > get_file_active() to pair dma_buf_put().
> 
> Makes sense, Leon can you fix it?

Sure,

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index e7511cad8e06..c67c1ca7e4bf 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -300,7 +300,7 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
                        dma_buf_move_notify(priv->dmabuf);
                        dma_resv_unlock(priv->dmabuf->resv);
                }
-               dma_buf_put(priv->dmabuf);
+               fput(priv->dmabuf->file);
        }
 }



> 
> Thanks,
> Jason 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
