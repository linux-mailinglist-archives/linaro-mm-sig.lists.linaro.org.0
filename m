Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 943A0BAAA2C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 23:18:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B52DF45D78
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 21:18:08 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 035B345D78
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 21:17:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=eSzIvrH3;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759180670;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pary30BmU4/NqakwYdG1eNkY0RiL1NyFW4TmIsuJ5GE=;
	b=eSzIvrH3TgR0u/E7xT35nD+af8z61fl3d06j8oab4bPnIAOmHnplVN848Li+daD8aG2NUl
	eo9ppaNIkhWD0cfULhpqQAOKXbhi3NB/3F3Q77eGKJqGllFgASG+czUoRAp9Mk3BRKkKmM
	PaGkjgchT4tV6RFaWyNW7XHFmxsUftE=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-335-bghc39pzNkSvJmu0uBu7MQ-1; Mon, 29 Sep 2025 17:17:49 -0400
X-MC-Unique: bghc39pzNkSvJmu0uBu7MQ-1
X-Mimecast-MFC-AGG-ID: bghc39pzNkSvJmu0uBu7MQ_1759180668
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-4264c256677so13488905ab.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 14:17:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759180668; x=1759785468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pary30BmU4/NqakwYdG1eNkY0RiL1NyFW4TmIsuJ5GE=;
        b=HcSquhZAtAYd5wUE9mZ2CsQMoWy4b9bIKgyzK3M5MWumoAbt07RpQICLSTQHoRzD4o
         spy3rvN5mNbJHpnc5TGlfnH79egJoiUsMXVN75BxypARyDtOmSR/lIYL5CTlkeLSowzn
         /czyb9j4b9ul9b6gaYqAOB3AreQnDnhGfxjd3IhgH+XVVVXwkMmrU9foLnyEBYLUGvVg
         16FuUA9KCavxdmfaoFza5lKF9byEtqiX1aK99/Rt7Estacav7ryhFuIWu6Ooqui14lUq
         HVuHE/cLpfi5UNk98xANNZ7C6CkBjJCDX5oQgoUGjqt3W3WuJLz9IeYvPimgp2APzVV7
         8bpg==
X-Forwarded-Encrypted: i=1; AJvYcCXbtrTFnlbAMO1v0/kmmtfoutdFXNjbeWyWPGC5NDQCbmsya9symI20vSAple+Gvvj0IQrv0qU+Qn81/u7Q@lists.linaro.org
X-Gm-Message-State: AOJu0YyRZx8/RtKpczjcn+benXOirwU5AcFVNVVH/49h4zUDtEeGoEzK
	gRuSzIiQ0ixBesykFciOahrQ3PC2Tg3czHPyVpluITdSA0ZP+RwdEKtp+WoWtqaR03LuaI1rp5f
	XvYDIvZJGF2dGdrl0JlQLvZJpichjEZX1dIOcNVtYue4ZmJMdK/J1ht8NlqX71/+UNwVC
X-Gm-Gg: ASbGncsJ/JKP1YAiZxxfwqU4vG9ghse3swUVMEPKirGmnZOGR//7MnEgtyq2gmdUh8u
	evt1tI0ePUWLrqpN+FvVt+yDsvTeEL+hCXy/jL8Mxnp5iQQTlhwVO2itct4WJ24dtCyZOZxeclV
	QH9ENI+65c90qxgDmGkLCqKhx24qWfuJdQybffrdLif6XzFvXN9Uhe7XYhxouqNxKe2VXbArt1r
	GpPIFlBobCj2ag28jEFjONlBJOFH80QmVRy5XNACBZJgEgxgLPCm6nevH22dX1m9OUE5Ufb8Ppc
	KfR6ONLBl+gYnWFZHK/UWwlCyIMg9iMD8EB/HiHyHaI=
X-Received: by 2002:a05:6e02:1b08:b0:424:6c8e:6187 with SMTP id e9e14a558f8ab-425955e4dfdmr95833965ab.2.1759180668411;
        Mon, 29 Sep 2025 14:17:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHE31/4ZuuqxcHY5C8RvKg6dnDpxm6QWjHiIpet9IRXNGlsIsGmjCxy18kHCIW8dgbK0MWZ9w==
X-Received: by 2002:a05:6e02:1b08:b0:424:6c8e:6187 with SMTP id e9e14a558f8ab-425955e4dfdmr95833605ab.2.1759180667942;
        Mon, 29 Sep 2025 14:17:47 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5753c50a188sm920778173.31.2025.09.29.14.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 14:17:46 -0700 (PDT)
Date: Mon, 29 Sep 2025 15:17:45 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250929151745.439be1ec.alex.williamson@redhat.com>
In-Reply-To: <ac8c6ccd792e79f9424217d4bca23edd249916ca.1759070796.git.leon@kernel.org>
References: <cover.1759070796.git.leon@kernel.org>
	<ac8c6ccd792e79f9424217d4bca23edd249916ca.1759070796.git.leon@kernel.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TZ_NeT4QjeFZJ9FLdSWfbYmH49WXBd8YTETGyy-QHKM_1759180668
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: 035B345D78
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RX6DV5U7KXHB6T3WE3HS26FC344RAERO
X-Message-ID-Hash: RX6DV5U7KXHB6T3WE3HS26FC344RAERO
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 08/10] vfio/pci: Enable peer-to-peer DMA transactions by default
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RX6DV5U7KXHB6T3WE3HS26FC344RAERO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 28 Sep 2025 17:50:18 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Make sure that all VFIO PCI devices have peer-to-peer capabilities
> enables, so we would be able to export their MMIO memory through DMABUF,
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/vfio/pci/vfio_pci_core.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index 7dcf5439dedc..608af135308e 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -28,6 +28,9 @@
>  #include <linux/nospec.h>
>  #include <linux/sched/mm.h>
>  #include <linux/iommufd.h>
> +#ifdef CONFIG_VFIO_PCI_DMABUF
> +#include <linux/pci-p2pdma.h>
> +#endif
>  #if IS_ENABLED(CONFIG_EEH)
>  #include <asm/eeh.h>
>  #endif
> @@ -2085,6 +2088,7 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
>  {
>  	struct vfio_pci_core_device *vdev =
>  		container_of(core_vdev, struct vfio_pci_core_device, vdev);
> +	int __maybe_unused ret;
>  
>  	vdev->pdev = to_pci_dev(core_vdev->dev);
>  	vdev->irq_type = VFIO_PCI_NUM_IRQS;
> @@ -2094,6 +2098,11 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
>  	INIT_LIST_HEAD(&vdev->dummy_resources_list);
>  	INIT_LIST_HEAD(&vdev->ioeventfds_list);
>  	INIT_LIST_HEAD(&vdev->sriov_pfs_item);
> +#ifdef CONFIG_VFIO_PCI_DMABUF
> +	ret = pcim_p2pdma_init(vdev->pdev);
> +	if (ret)
> +		return ret;
> +#endif
>  	init_rwsem(&vdev->memory_lock);
>  	xa_init(&vdev->ctx);
>  

What breaks if we don't test the return value and remove all the
#ifdefs?  The feature call should fail if we don't have a provider but
that seems more robust than failing to register the device.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
