Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CADB1439F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Jul 2025 22:56:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8849456C7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Jul 2025 20:56:13 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 825BC3F5B7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Jul 2025 20:56:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="jUPd5F/K";
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753736161;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3lAhpTjpbvFQu27uIQ7LZXIQUIKIfZHhU7pyfNlOjpc=;
	b=jUPd5F/K+2mkzyzjv4i4NKo6/ezgKCNcLYYZv0COa1flpuS4jEW6B0qMaEuWFZrcyVOs4r
	Wj/MIVfGTUuDUuyXQ4dTntyQGEGx6HshS4hq6CsLer3QpFMhleW2sB5eD//lzK3//qVU4E
	x9J01O18ba0F9KDK0YiyX6y7ABLI0hA=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-471-PZR-pliNN9Oxw3OlT2ElvA-1; Mon, 28 Jul 2025 16:55:58 -0400
X-MC-Unique: PZR-pliNN9Oxw3OlT2ElvA-1
X-Mimecast-MFC-AGG-ID: PZR-pliNN9Oxw3OlT2ElvA_1753736158
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-3df57df1eb3so7487505ab.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Jul 2025 13:55:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753736157; x=1754340957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3lAhpTjpbvFQu27uIQ7LZXIQUIKIfZHhU7pyfNlOjpc=;
        b=n/c5GOdd1TwjPx5CuSIH3crk4FXCTJmRAUT7seITSblAb52nsQhM/dXGC2QUc7AGET
         4Z65AStlVaI4xoiDoCF8xpAjCf4QVuUJK3bhuEyEvVPNtNNT1h7S8GDUqDF/JSBYDiVK
         9oqy2rHfZP4ME0M8dSJYY+CaEhJ849PEf0S0IzuJboc/ACnmKOVD0skRg/Lh5hRWymNi
         HSayJkxmaBQVVZ1fPCsASJGVM0rTzdbhL2rhi/WFKwE5qh9byE4EjQPaA4ZokpppVDkD
         DJfC731pjdsClfy3gtmkHgyXwQcr0TNGRxWMFX1vo0QrM0W2Xst6JMzhQlNlD9DgrG3b
         snLg==
X-Forwarded-Encrypted: i=1; AJvYcCVxfrhas7b/E4vA5rZ/d2jbDyLk14E0mYzRo104Is8Tk8M9HKEdNoe1O7bWXDbA2su07Kb3N+eHLDPcZ6D7@lists.linaro.org
X-Gm-Message-State: AOJu0YwFbGw8UYhNWYTqfZSxm2jQ9hamt9a5BMyKMLmkCS0+qayuq3V9
	e6kCZ2+SLa5SfQMEnBB6uAYZXT8nvJPKw2ifUW4izl4hNVpVFxEpTL8VS0qRMZ4h+sTygNIBbGV
	xJSXsYsEqpaPzdxLIDMN/l6yEjoS1TMivtqoiI6qa1ULbMm1A9Rh2+yUeE0YrbSyYi9BI
X-Gm-Gg: ASbGncvqYmZbc7anxnIeAjCRx8xvjQg7dv3A4DtvsOT9euG+aydd+RpeB2SYYSwbviN
	mPxXDrycVSxidsATqEYNoxMEQ/0SnzMTtOmACNZOmglriEwDtxMoLWmaQOToAJhAxhs2qhlX/I3
	6NWhSsjTKhptMLyHT1/06nejeM29c/zVAHUMn06ol7It0IjDs6HQ7dgdqMWFKJ/SOTiXzTGTkTg
	uQ7LrPunXSGPG7l1eRI4QHHI7N8RePYbf7NQcdj03W2MhBRgmlm9rwsLmN8yuLIsQjwyqsnW5le
	rLFpYYVfoN4mOJQ4J8RYHxfb4xueaDNyuptuSdtDuGI=
X-Received: by 2002:a05:6e02:3389:b0:3e3:e461:4617 with SMTP id e9e14a558f8ab-3e3e4614777mr12699235ab.2.1753736157535;
        Mon, 28 Jul 2025 13:55:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaMLNGgu4ToITqnk/t+y4I2RkNZuq3J6YSgL+Stwkf8Y5Ta3HhAl493hrL7HwiUxfbSIOjGA==
X-Received: by 2002:a05:6e02:3389:b0:3e3:e461:4617 with SMTP id e9e14a558f8ab-3e3e4614777mr12698925ab.2.1753736157034;
        Mon, 28 Jul 2025 13:55:57 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-508c9341e4csm2109194173.76.2025.07.28.13.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 13:55:55 -0700 (PDT)
Date: Mon, 28 Jul 2025 14:55:53 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250728145553.53e94d49.alex.williamson@redhat.com>
In-Reply-To: <19f71a0f4d1a5db8c712cb4d094ccf2f10dc22c5.1753274085.git.leonro@nvidia.com>
References: <cover.1753274085.git.leonro@nvidia.com>
	<19f71a0f4d1a5db8c712cb4d094ccf2f10dc22c5.1753274085.git.leonro@nvidia.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RLJ3Kb2IagJvbTVSmGhldPixxDAH5KvZ47XR9FX81Es_1753736158
X-Mimecast-Originator: redhat.com
X-Spamd-Result: default: False [-3.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.129.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
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
X-Rspamd-Queue-Id: 825BC3F5B7
X-Spamd-Bar: ---
Message-ID-Hash: MWIFMTXIVWAC5LR32VFN7LC4N7KFLIPT
X-Message-ID-Hash: MWIFMTXIVWAC5LR32VFN7LC4N7KFLIPT
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?UTF-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/10] vfio/pci: Share the core device pointer while invoking feature functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MWIFMTXIVWAC5LR32VFN7LC4N7KFLIPT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Jul 2025 16:00:10 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
> 
> There is no need to share the main device pointer (struct vfio_device *)
> with all the feature functions as they only need the core device
> pointer. Therefore, extract the core device pointer once in the
> caller (vfio_pci_core_ioctl_feature) and share it instead.
> 
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/vfio/pci/vfio_pci_core.c | 30 +++++++++++++-----------------
>  1 file changed, 13 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index 1e675daab5753..5512d13bb8899 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -301,11 +301,9 @@ static int vfio_pci_runtime_pm_entry(struct vfio_pci_core_device *vdev,
>  	return 0;
>  }
>  
> -static int vfio_pci_core_pm_entry(struct vfio_device *device, u32 flags,
> +static int vfio_pci_core_pm_entry(struct vfio_pci_core_device *vdev, u32 flags,
>  				  void __user *arg, size_t argsz)
>  {
> -	struct vfio_pci_core_device *vdev =
> -		container_of(device, struct vfio_pci_core_device, vdev);
>  	int ret;
>  
>  	ret = vfio_check_feature(flags, argsz, VFIO_DEVICE_FEATURE_SET, 0);
> @@ -322,12 +320,10 @@ static int vfio_pci_core_pm_entry(struct vfio_device *device, u32 flags,
>  }
>  
>  static int vfio_pci_core_pm_entry_with_wakeup(
> -	struct vfio_device *device, u32 flags,
> +	struct vfio_pci_core_device *vdev, u32 flags,
>  	struct vfio_device_low_power_entry_with_wakeup __user *arg,
>  	size_t argsz)

I'm tempted to fix the line wrapping here, but I think this patch
stands on its own.  Even if it's rather trivial, it makes sense to
consolidate and standardize on the vfio_pci_core_device getting passed
around within vfio_pci_core.c.  Any reason not to split this off?
Thanks,

Alex

>  {
> -	struct vfio_pci_core_device *vdev =
> -		container_of(device, struct vfio_pci_core_device, vdev);
>  	struct vfio_device_low_power_entry_with_wakeup entry;
>  	struct eventfd_ctx *efdctx;
>  	int ret;
> @@ -378,11 +374,9 @@ static void vfio_pci_runtime_pm_exit(struct vfio_pci_core_device *vdev)
>  	up_write(&vdev->memory_lock);
>  }
>  
> -static int vfio_pci_core_pm_exit(struct vfio_device *device, u32 flags,
> +static int vfio_pci_core_pm_exit(struct vfio_pci_core_device *vdev, u32 flags,
>  				 void __user *arg, size_t argsz)
>  {
> -	struct vfio_pci_core_device *vdev =
> -		container_of(device, struct vfio_pci_core_device, vdev);
>  	int ret;
>  
>  	ret = vfio_check_feature(flags, argsz, VFIO_DEVICE_FEATURE_SET, 0);
> @@ -1475,11 +1469,10 @@ long vfio_pci_core_ioctl(struct vfio_device *core_vdev, unsigned int cmd,
>  }
>  EXPORT_SYMBOL_GPL(vfio_pci_core_ioctl);
>  
> -static int vfio_pci_core_feature_token(struct vfio_device *device, u32 flags,
> -				       uuid_t __user *arg, size_t argsz)
> +static int vfio_pci_core_feature_token(struct vfio_pci_core_device *vdev,
> +				       u32 flags, uuid_t __user *arg,
> +				       size_t argsz)
>  {
> -	struct vfio_pci_core_device *vdev =
> -		container_of(device, struct vfio_pci_core_device, vdev);
>  	uuid_t uuid;
>  	int ret;
>  
> @@ -1506,16 +1499,19 @@ static int vfio_pci_core_feature_token(struct vfio_device *device, u32 flags,
>  int vfio_pci_core_ioctl_feature(struct vfio_device *device, u32 flags,
>  				void __user *arg, size_t argsz)
>  {
> +	struct vfio_pci_core_device *vdev =
> +		container_of(device, struct vfio_pci_core_device, vdev);
> +
>  	switch (flags & VFIO_DEVICE_FEATURE_MASK) {
>  	case VFIO_DEVICE_FEATURE_LOW_POWER_ENTRY:
> -		return vfio_pci_core_pm_entry(device, flags, arg, argsz);
> +		return vfio_pci_core_pm_entry(vdev, flags, arg, argsz);
>  	case VFIO_DEVICE_FEATURE_LOW_POWER_ENTRY_WITH_WAKEUP:
> -		return vfio_pci_core_pm_entry_with_wakeup(device, flags,
> +		return vfio_pci_core_pm_entry_with_wakeup(vdev, flags,
>  							  arg, argsz);
>  	case VFIO_DEVICE_FEATURE_LOW_POWER_EXIT:
> -		return vfio_pci_core_pm_exit(device, flags, arg, argsz);
> +		return vfio_pci_core_pm_exit(vdev, flags, arg, argsz);
>  	case VFIO_DEVICE_FEATURE_PCI_VF_TOKEN:
> -		return vfio_pci_core_feature_token(device, flags, arg, argsz);
> +		return vfio_pci_core_feature_token(vdev, flags, arg, argsz);
>  	default:
>  		return -ENOTTY;
>  	}

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
