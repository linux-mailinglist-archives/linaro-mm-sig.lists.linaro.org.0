Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD3CB1673F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jul 2025 21:59:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7013443BA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jul 2025 19:59:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 8D0A0441C4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Jul 2025 19:58:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=JrAlgITh;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753905532;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MJ8yWqGXhru7WhV5DGnUZnDJthF7Yg1ZkZASyV+JWoM=;
	b=JrAlgIThoSFMeKzlFetHu868raSE5TLJur5SHmGVzjj1qLnX2XK//45baY8Gkj7A28G40H
	AsxhNQ8Ayq8uWGbgGYR3xd5TGcBdwy4oKbOfpZ5L4o7/ir//xc7TsEHhXObtrRF05jSs1l
	ePEe+pSGrm8x2VGaOcaOJdhgAwLg3Fs=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-365-kEg-dQf-OIqJExuDJ6onYw-1; Wed, 30 Jul 2025 15:58:50 -0400
X-MC-Unique: kEg-dQf-OIqJExuDJ6onYw-1
X-Mimecast-MFC-AGG-ID: kEg-dQf-OIqJExuDJ6onYw_1753905530
Received: by mail-io1-f72.google.com with SMTP id ca18e2360f4ac-88118bfccf4so4301639f.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Jul 2025 12:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905530; x=1754510330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJ8yWqGXhru7WhV5DGnUZnDJthF7Yg1ZkZASyV+JWoM=;
        b=V3kV68fdaiGCfwNWPUQyzycJV/PSY8C3kWGfcZIF03WuAZxJlp/mdwRCdBW0wOsHq2
         onYiKmUZKpTI7hrGkifb/PUyXquv/uxVt0wJMBsdhgdRsXZ3xhMw25Cl6gw2M1ja8O0V
         KXsz+bIOs7dYACajaCCv7IGqLTO4xSdMzqFQdkoJo6j7nA79p2z+BIQBpLXEIDA3qnlb
         /7N4cdD/i3EQI6zRMaXkvIPSMPnOTS5oXZhJ8L/tEXOXFl3pF4Bva2ZxeTK78uZ+G5Em
         z0UJ1nuqJOiWLD73+UdnxH8L6vb6aKtTnrjO4lnKPcKjmdrAWjlHmXuuAAFyLg8hVNbc
         JL4A==
X-Forwarded-Encrypted: i=1; AJvYcCUAqliZkuzQ205TUdL0JZqBMaH3O+Z7eMzqRdH9OfMvnF1B5upo9u0Kwl5Vw6qzbhePF8vKVr/oXR+P4lpa@lists.linaro.org
X-Gm-Message-State: AOJu0YwU3Ch0Nyqda38HAfq4B7EIULjDe03BtyecHHIDOm9PQ3VHKBFp
	HFxIAVtkGpKSRuQ8HCfw8dwjm7TD5T595oXyhRcUCiRO1Z0CGErZD7/5n0qL9ncQpeCeqf1QnMu
	ioT0jtGH41aEA0WSPYlL4jvNw3FoHnOmBGeP75jtusCclfPCaJKyiREP2ObUWS5erkaBB
X-Gm-Gg: ASbGnctB8IaZrcUD74Jgi6uvsPu/VrosDS3mQH3QI8SKlk1dRCMwQMDEVz5hRuXyql5
	mepMGhXYSdRI4oWuQ9bMudRp98MIYvuroiY003Br3AivJNTIfa5apwFIdb32lyhsfXGGzpdROD9
	+jIjSRRjUmTvKtq4Z7fZGZRqzfqiF3bkkJXBDVnbfc4QRsV6VFUvcXxr3eqLmguHNZvvN6Lau7Y
	XRL6S47NWZC9tVGJ5lbVhk0aIYJozVDmJVFt5vEm/mXyU3QcCNIHEo8JnEPc0a9tMfijpzXB8FQ
	662ICsIqEFPNuh5qGeRtdEYOoOJorEQfFx+FS/pQHbY=
X-Received: by 2002:a05:6602:3403:b0:85b:544c:ba6c with SMTP id ca18e2360f4ac-88137489c1bmr247638139f.1.1753905529646;
        Wed, 30 Jul 2025 12:58:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqzTNDwtWgU4diezEDNzfWAqDpdNRdRLffgeb0LuFILxM3AuzO6OxVkpYobVhQ8ZrxcWgziA==
X-Received: by 2002:a05:6602:3403:b0:85b:544c:ba6c with SMTP id ca18e2360f4ac-88137489c1bmr247635939f.1.1753905529204;
        Wed, 30 Jul 2025 12:58:49 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50a55da3278sm19521173.84.2025.07.30.12.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:58:48 -0700 (PDT)
Date: Wed, 30 Jul 2025 13:58:46 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250730135846.2208fe89.alex.williamson@redhat.com>
In-Reply-To: <cover.1753274085.git.leonro@nvidia.com>
References: <cover.1753274085.git.leonro@nvidia.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NhrQ01T2V2ec0AnucBt8DYbeueiUrAeGlMIHfB2RqFs_1753905530
X-Mimecast-Originator: redhat.com
X-Spamd-Result: default: False [-3.36 / 15.00];
	BAYES_HAM(-2.96)[99.82%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.129.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
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
X-Rspamd-Queue-Id: 8D0A0441C4
X-Spamd-Bar: ---
Message-ID-Hash: YE2AU5DXH5YE33LISLTVGDDA7WUGJDY2
X-Message-ID-Hash: YE2AU5DXH5YE33LISLTVGDDA7WUGJDY2
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?UTF-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/10] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YE2AU5DXH5YE33LISLTVGDDA7WUGJDY2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Jul 2025 16:00:01 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> ---------------------------------------------------------------------------
> Based on blk and DMA patches which will be sent during coming merge window.
> ---------------------------------------------------------------------------
> 
> This series extends the VFIO PCI subsystem to support exporting MMIO regions
> from PCI device BARs as dma-buf objects, enabling safe sharing of non-struct
> page memory with controlled lifetime management. This allows RDMA and other
> subsystems to import dma-buf FDs and build them into memory regions for PCI
> P2P operations.
> 
> The series supports a use case for SPDK where a NVMe device will be owned
> by SPDK through VFIO but interacting with a RDMA device. The RDMA device
> may directly access the NVMe CMB or directly manipulate the NVMe device's
> doorbell using PCI P2P.
> 
> However, as a general mechanism, it can support many other scenarios with
> VFIO. This dmabuf approach can be usable by iommufd as well for generic
> and safe P2P mappings.

I think this will eventually enable DMA mapping of device MMIO through
an IOMMUFD IOAS for the VM P2P use cases, right?  How do we get from
what appears to be a point-to-point mapping between two devices to a
shared IOVA between multiple devices?  I'm guessing we need IOMMUFD to
support something like IOMMU_IOAS_MAP_FILE for dma-buf, but I can't
connect all the dots.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
