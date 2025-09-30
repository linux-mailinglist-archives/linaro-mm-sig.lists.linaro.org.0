Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A66BFBABD39
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 09:31:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64AA245F6D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 07:31:02 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 6693F45D16
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 07:30:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=F87Yad04;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D398A603F3;
	Tue, 30 Sep 2025 07:30:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B71C8C113D0;
	Tue, 30 Sep 2025 07:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759217458;
	bh=JQzf0lGVVh7uBp1GGrgRG3aOLt81vd3Z1vJ+MdzJaUg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F87Yad04oYGKqR0yrv700Kdv7cMA7yYANQZWxSzZfBGzhhGL/AY0n38vF/CbS1+uS
	 xoHf7BEDW8mOIaQN7Wk/lwIKl4Yr4ZCcSIRmUMKAIta02I34naQImlmh2K8ES0+J0J
	 37JGfcZ5Fcjrg+XvYNzoB1zs1jcuvaeDiG8rOpUd6KE1U67TY/2JY6hYEFcEF+3s0j
	 KRocY0sJEKrIBIPmUsJmcRcbzwrkU9tKLg/YjlOL+FaI0JgPnlof0Me1fLbHLHzT1r
	 DpZwl2Lrtc0E2Q7+85ZBPdg92JKatMeAQHBu3PCoTknvQScfYkwgCaBKVjyqnL/Fk+
	 VbrIksbpXUNYQ==
Date: Tue, 30 Sep 2025 10:30:53 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20250930073053.GE324804@unreal>
References: <cover.1759070796.git.leon@kernel.org>
 <ac8c6ccd792e79f9424217d4bca23edd249916ca.1759070796.git.leon@kernel.org>
 <20250929151745.439be1ec.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250929151745.439be1ec.alex.williamson@redhat.com>
X-Rspamd-Queue-Id: 6693F45D16
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 63IEMEDFBEMH6YLEGICBF3ECVFHM225R
X-Message-ID-Hash: 63IEMEDFBEMH6YLEGICBF3ECVFHM225R
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 08/10] vfio/pci: Enable peer-to-peer DMA transactions by default
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/63IEMEDFBEMH6YLEGICBF3ECVFHM225R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 29, 2025 at 03:17:45PM -0600, Alex Williamson wrote:
> On Sun, 28 Sep 2025 17:50:18 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> 
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Make sure that all VFIO PCI devices have peer-to-peer capabilities
> > enables, so we would be able to export their MMIO memory through DMABUF,
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_core.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> > index 7dcf5439dedc..608af135308e 100644
> > --- a/drivers/vfio/pci/vfio_pci_core.c
> > +++ b/drivers/vfio/pci/vfio_pci_core.c
> > @@ -28,6 +28,9 @@
> >  #include <linux/nospec.h>
> >  #include <linux/sched/mm.h>
> >  #include <linux/iommufd.h>
> > +#ifdef CONFIG_VFIO_PCI_DMABUF
> > +#include <linux/pci-p2pdma.h>
> > +#endif
> >  #if IS_ENABLED(CONFIG_EEH)
> >  #include <asm/eeh.h>
> >  #endif
> > @@ -2085,6 +2088,7 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
> >  {
> >  	struct vfio_pci_core_device *vdev =
> >  		container_of(core_vdev, struct vfio_pci_core_device, vdev);
> > +	int __maybe_unused ret;
> >  
> >  	vdev->pdev = to_pci_dev(core_vdev->dev);
> >  	vdev->irq_type = VFIO_PCI_NUM_IRQS;
> > @@ -2094,6 +2098,11 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
> >  	INIT_LIST_HEAD(&vdev->dummy_resources_list);
> >  	INIT_LIST_HEAD(&vdev->ioeventfds_list);
> >  	INIT_LIST_HEAD(&vdev->sriov_pfs_item);
> > +#ifdef CONFIG_VFIO_PCI_DMABUF
> > +	ret = pcim_p2pdma_init(vdev->pdev);
> > +	if (ret)
> > +		return ret;
> > +#endif
> >  	init_rwsem(&vdev->memory_lock);
> >  	xa_init(&vdev->ctx);
> >  
> 
> What breaks if we don't test the return value and remove all the
> #ifdefs?  The feature call should fail if we don't have a provider but
> that seems more robust than failing to register the device.  Thanks,

pcim_p2pdma_init() fails if memory allocation fails, which is worth to check.
Such failure will most likely cause to non-working vfio-pci module anyway,
as failure in pcim_p2pdma_init() will trigger OOM. It is better to fail early
and help for the system to recover from OOM, instead of delaying to the
next failure while trying to load vfio-pci.

CONFIG_VFIO_PCI_DMABUF is mostly for next line "INIT_LIST_HEAD(&vdev->dmabufs);"
from the following patch. Because that pcim_p2pdma_init() and dmabufs list are
coupled, I put CONFIG_VFIO_PCI_DMABUF on both of them.

Thanks

> 
> Alex
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
