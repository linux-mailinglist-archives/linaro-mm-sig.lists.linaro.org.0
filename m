Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 99500BAAA14
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 23:17:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22C4445D9D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 21:17:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id C5ACC43FB5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 21:17:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=FcefPI3V;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759180667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pvJsfDbbmraa6iCCkjoqVoBB3Mb9XdjPoCcVP3qHFzU=;
	b=FcefPI3VC3H7rl091287xezmtYWI1vEbg0/4+wzGoR797ga+uLFcUlbC9vZVTAS3AbdUC8
	ufwov4q3l7HKYs2ixwvUtvZxhX5qgMD9zfyFJmAZ4auFX/A9NB9IzCPaAL2hBRUyYe5/+W
	lsSay2NfMFELMeFiqeXokjFoIQpXtYs=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-383-uYYX24cMM9S6Rv5whJKl1g-1; Mon, 29 Sep 2025 17:17:45 -0400
X-MC-Unique: uYYX24cMM9S6Rv5whJKl1g-1
X-Mimecast-MFC-AGG-ID: uYYX24cMM9S6Rv5whJKl1g_1759180664
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-427350656e3so6835495ab.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 14:17:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759180664; x=1759785464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pvJsfDbbmraa6iCCkjoqVoBB3Mb9XdjPoCcVP3qHFzU=;
        b=qmDE1DCvNfL3/OoPN+c0FBMxowQxl+Ctfnz7HI7dhKvDUGuaYnWVe4MR6ajC/O+l6X
         cv7kvXa5EhdbIF4YE5SXAGfN48SFqTS1zq1Kgiz3QC1rr/XQXK3/yfB+I2CvjLn5lhWA
         +wohyPoidVrFvsnfRYLZGLsKN2hUjJ4+5zyeTZTJ6L7sesE2qF83qR+cVr5pL2w54lLY
         Z4fZZ88iSOjHkMdf1km9y1x3yk8j2OoO2m+2W5rHK3tt4egsn1SkvBnm73ocjskFG90U
         +4cU6Sc4NRoO92dB8oMizZaqsUwYXr0VOe8K/Grxf0YZ65xob7hQZXAUflmB+yZ0Gslh
         iAPw==
X-Forwarded-Encrypted: i=1; AJvYcCVjZpZmUAuwnpaurGM1lThMirEKql9zDXz/DF6x3r1Xp+QpvoIVW3ATfmqap/m8v9eb1EaJ0NWlgEeacJpi@lists.linaro.org
X-Gm-Message-State: AOJu0YwqgjmP3IYVDaA05w0RywDk8PPnbLvZ6TBUiQfiDfds4ubXAb2D
	F++srx3R97RlJtIoiwBizlrCuO1igQ+AncZBUfT6vClImdeA886W/cLiIbgczjXSnzRLoizXuyg
	Xa7eAEG+3ZVrstgJIWqrSntKChsUMLpaIBfqPp3wvTLkep4u9IDtj9PvISkmhcb60/kz6
X-Gm-Gg: ASbGncuyLZjLkdRFQ77XDDf6oeWKaA+IRws4L1tDYnLbpiqRqTkwAnciXjEAdv1jfFg
	NubNDWOzAdudeygcHccVmGFX5RGBXc9Ga2S7e9SeU/chRax64gl2XcUBdp3TWco3It04m1w8LF4
	+QW2vb40R4si/r+ky+/Cdmc49ak1cIx9sGff6g85gwKVJHtfcKhihZUPL11VvmB7k3dBMKfy7YU
	j7IzKJDN3u2Ys0QLvRA7x8gjg44CIJOudebrzYySI8osruNGPNnJyrW1w5NYz82lYSIKfTAFmXF
	Langb5FEdIiMIxlwU3m7Val+oZrbt5zOek4TpFxSQZE=
X-Received: by 2002:a05:6e02:1525:b0:408:1624:b2ee with SMTP id e9e14a558f8ab-425955e4f60mr87965025ab.1.1759180664164;
        Mon, 29 Sep 2025 14:17:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3VrvxaH7k00bkTZJWrxcv/Xeuv7Ik/zOnPnH3ASkfKmA5ptZ34qoyLfGaDXRfunQjFfs8kg==
X-Received: by 2002:a05:6e02:1525:b0:408:1624:b2ee with SMTP id e9e14a558f8ab-425955e4f60mr87964675ab.1.1759180663680;
        Mon, 29 Sep 2025 14:17:43 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-57269f5d0c5sm1963571173.13.2025.09.29.14.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 14:17:42 -0700 (PDT)
Date: Mon, 29 Sep 2025 15:17:40 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250929151740.21f001e3.alex.williamson@redhat.com>
In-Reply-To: <b1b44823f93fd9e7fa73dc165141d716cb74fa90.1759070796.git.leon@kernel.org>
References: <cover.1759070796.git.leon@kernel.org>
	<b1b44823f93fd9e7fa73dc165141d716cb74fa90.1759070796.git.leon@kernel.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QiCQGf78TeKRda58p6ddpmvphTEjMFKDIW7uuBWALOM_1759180664
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: C5ACC43FB5
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
Message-ID-Hash: BTFM7LZXH7CDZHTYTZDPNOB4NYBHC2N5
X-Message-ID-Hash: BTFM7LZXH7CDZHTYTZDPNOB4NYBHC2N5
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 07/10] vfio/pci: Add dma-buf export config for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BTFM7LZXH7CDZHTYTZDPNOB4NYBHC2N5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 28 Sep 2025 17:50:17 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Add new kernel config which indicates support for dma-buf export
> of MMIO regions, which implementation is provided in next patches.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/vfio/pci/Kconfig | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
> index 2b0172f54665..55ae888bf26a 100644
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

This is only necessary if we think there's a need to build a kernel with
P2PDMA and VFIO_PCI, but not VFIO_PCI_DMABUF.  Does that need really
exist?

I also find it unusual to create the Kconfig before adding the
supporting code.  Maybe this could be popped to the end or rolled into
the last patch if we decided to keep it.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
