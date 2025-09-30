Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCADCBADFD9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 18:01:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C3D845776
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 16:01:20 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 373D544B41
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 16:01:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=fXNEoCIo;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759248077;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HOYVDlXcgikSCUwOdxOfSsjt8Nh4FIwdpCdV/JBPVPE=;
	b=fXNEoCIoR+K4YTQjX+UMw0SszYm9keXeDIdPPwfE3PBYTgnQT1eGg1GFhJrm1IWIn0NNCi
	eU6wcF0ce9Qk55Nl2fRIZ3bLuxLWw641P4m44MWrucjCExU2LXT6JBxrP9HA7hJbGIJQfU
	50kih9g+c06iRaSHmeZk/vrlOvm6J/0=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-253-vybF-9InP7-9pjAJD8hJuA-1; Tue, 30 Sep 2025 12:01:16 -0400
X-MC-Unique: vybF-9InP7-9pjAJD8hJuA-1
X-Mimecast-MFC-AGG-ID: vybF-9InP7-9pjAJD8hJuA_1759248075
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-42571642af9so17420265ab.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 09:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759248075; x=1759852875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HOYVDlXcgikSCUwOdxOfSsjt8Nh4FIwdpCdV/JBPVPE=;
        b=p8g4UDSd3x0rkNH4aw098T+JywRvQnOs0Et4wQaBBLBdR3GZSNjtW0Mw5669nmuZE8
         ytUtItgWRgpqYZn4aIbSKKdX3M1EGjN5AHCC/i6rZAUFfNvEocNSUGicarYM+rAhXXTl
         EkyNpS2aSwchKVVQ8B6oWW9jnop7q/kG/53msWR2IEL1kQjVOgnhTYojERJt/SbLImxx
         ccUtmkMcFkDJc7kR9qcv1X+qo/9BFeuSe0HtCqORkYqt6hO/eULh7c2pIrDE8PU8dyq8
         bi84uunLesE9Ul4+Kmgh9O/VG433q6VYCnVnB0av6rdXpXIPGdkLe0Qk0T11wcTPBr5B
         /NKg==
X-Forwarded-Encrypted: i=1; AJvYcCVu7R0isPWO5fRN53Sf7hFBUu1oNazz4n1e22wBvya87wOzZftSJyKvGDL1MhaXNNKGEdg34DaDrW5egfPl@lists.linaro.org
X-Gm-Message-State: AOJu0Yzpv3ZNEWva3/Z+AqQCrix8zcvuL7Br+9e3GN4fOv1wRgs6JMQr
	Z6Rz0fHgy3vhJt9xnuuCsOUmk+Z8SvOurF/ZVeUwHY++0+8S6vZ3DR0IGJPoyHMDYYOwx38DmGo
	KDIbHkfMTmwwKZHu6k8JFnPA/wBF1OwQtldvbaMLPgmBwLD2YkU6at727CvnhIVFQtjXc
X-Gm-Gg: ASbGncuZe+686DUSjhWLLM1Kdk4lFpbZFU1uLAFaDTtCPkLxKJ0tWeaRCpCzv0ZQGs1
	4jPYWLy9UlM2O1YKEu99muULE/RTTEaEgjf3LeleeKlYap0QgyBgF0QgurmEr37L4XaVxgATkF9
	/fAModcj0W7EwFEDsy4oImBoehA1EPt2QUV5vTWfejX/K2xDMdgPmaCkKC6zE25a6fH4gfoABVe
	7I7qFRcgW/ZhMxdFqfgcRB0yRayMJ0M+WJKACtAE3HMeOftZypwtG2LCK1tgx/Jez/9jDxIqtfl
	A4Zdhnxksseg7vojXhTSwHoeKQYinArrEFFIj7v4Cr3DW+14
X-Received: by 2002:a05:6e02:164b:b0:42b:1763:5796 with SMTP id e9e14a558f8ab-42d81635257mr2672865ab.7.1759248075087;
        Tue, 30 Sep 2025 09:01:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFa3YWCojRcq8FvhA8oy0OghueS9jHVQ9BVoBDjYigh74bKjlyhu7iHP48jxbQj2TC5kTDAzg==
X-Received: by 2002:a05:6e02:164b:b0:42b:1763:5796 with SMTP id e9e14a558f8ab-42d81635257mr2672385ab.7.1759248074259;
        Tue, 30 Sep 2025 09:01:14 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-425bfba6242sm68758215ab.27.2025.09.30.09.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 09:01:13 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:01:10 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>
Message-ID: <20250930100110.6ec5b8a1.alex.williamson@redhat.com>
In-Reply-To: <20250930073053.GE324804@unreal>
References: <cover.1759070796.git.leon@kernel.org>
	<ac8c6ccd792e79f9424217d4bca23edd249916ca.1759070796.git.leon@kernel.org>
	<20250929151745.439be1ec.alex.williamson@redhat.com>
	<20250930073053.GE324804@unreal>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BX5bhr_F1AsX3u8LCH4Y8-ooLUQFf5Ud90D8FHKvrsg_1759248075
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: 373D544B41
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DWL_DNSWL_LOW(-1.00)[redhat.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[170.10.129.124:from,38.15.36.11:received];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WBKMPWWR3V4NT25DYWOAOPAI4MCKSARN
X-Message-ID-Hash: WBKMPWWR3V4NT25DYWOAOPAI4MCKSARN
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 08/10] vfio/pci: Enable peer-to-peer DMA transactions by default
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WBKMPWWR3V4NT25DYWOAOPAI4MCKSARN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 30 Sep 2025 10:30:53 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> On Mon, Sep 29, 2025 at 03:17:45PM -0600, Alex Williamson wrote:
> > On Sun, 28 Sep 2025 17:50:18 +0300
> > Leon Romanovsky <leon@kernel.org> wrote:
> >   
> > > From: Leon Romanovsky <leonro@nvidia.com>
> > > 
> > > Make sure that all VFIO PCI devices have peer-to-peer capabilities
> > > enables, so we would be able to export their MMIO memory through DMABUF,
> > > 
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > ---
> > >  drivers/vfio/pci/vfio_pci_core.c | 9 +++++++++
> > >  1 file changed, 9 insertions(+)
> > > 
> > > diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> > > index 7dcf5439dedc..608af135308e 100644
> > > --- a/drivers/vfio/pci/vfio_pci_core.c
> > > +++ b/drivers/vfio/pci/vfio_pci_core.c
> > > @@ -28,6 +28,9 @@
> > >  #include <linux/nospec.h>
> > >  #include <linux/sched/mm.h>
> > >  #include <linux/iommufd.h>
> > > +#ifdef CONFIG_VFIO_PCI_DMABUF
> > > +#include <linux/pci-p2pdma.h>
> > > +#endif
> > >  #if IS_ENABLED(CONFIG_EEH)
> > >  #include <asm/eeh.h>
> > >  #endif
> > > @@ -2085,6 +2088,7 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
> > >  {
> > >  	struct vfio_pci_core_device *vdev =
> > >  		container_of(core_vdev, struct vfio_pci_core_device, vdev);
> > > +	int __maybe_unused ret;
> > >  
> > >  	vdev->pdev = to_pci_dev(core_vdev->dev);
> > >  	vdev->irq_type = VFIO_PCI_NUM_IRQS;
> > > @@ -2094,6 +2098,11 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
> > >  	INIT_LIST_HEAD(&vdev->dummy_resources_list);
> > >  	INIT_LIST_HEAD(&vdev->ioeventfds_list);
> > >  	INIT_LIST_HEAD(&vdev->sriov_pfs_item);
> > > +#ifdef CONFIG_VFIO_PCI_DMABUF
> > > +	ret = pcim_p2pdma_init(vdev->pdev);
> > > +	if (ret)
> > > +		return ret;
> > > +#endif
> > >  	init_rwsem(&vdev->memory_lock);
> > >  	xa_init(&vdev->ctx);
> > >    
> > 
> > What breaks if we don't test the return value and remove all the
> > #ifdefs?  The feature call should fail if we don't have a provider but
> > that seems more robust than failing to register the device.  Thanks,  
> 
> pcim_p2pdma_init() fails if memory allocation fails, which is worth to check.
> Such failure will most likely cause to non-working vfio-pci module anyway,
> as failure in pcim_p2pdma_init() will trigger OOM. It is better to fail early
> and help for the system to recover from OOM, instead of delaying to the
> next failure while trying to load vfio-pci.
> 
> CONFIG_VFIO_PCI_DMABUF is mostly for next line "INIT_LIST_HEAD(&vdev->dmabufs);"
> from the following patch. Because that pcim_p2pdma_init() and dmabufs list are
> coupled, I put CONFIG_VFIO_PCI_DMABUF on both of them.

Maybe it would remove my hang-up on the #ifdefs if we were to
unconditionally include the header and move everything below that into
a 'if (IS_ENABLED(CONFIG_VFIO_PCI_DMA)) {}' block.  I think that would
be statically evaluated by the compiler so we can still conditionalize
the list_head in the vfio_pci_core_device struct via #ifdef, though I'm
not super concerned about that since I'm expecting this will eventually
be necessary for p2p DMA with IOMMUFD.

That's also my basis for questioning why we think this needs a user
visible kconfig option.  I don't see a lot of value in enabling
P2PDMA, DMABUF, and VFIO_PCI, but not VFIO_PCI_DMABUF.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
