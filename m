Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 587125F6866
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 15:43:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65C643F50B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 13:43:31 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 241AE3EF7B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Aug 2022 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661205512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mQUeuV51GD+/Z3NmS3oF64vuc80M1JzNM209IAEm6Lo=;
	b=Qj8sQstVbqvPBCGUqxPZmyPJ3l3Tpw/C0QsdDrlxfrh8Ye1IV4YCIJWZCT9PrKerGgSaKH
	p7tL7Z7h56TRUcFdA/TZfcqSWFZ4JYVBeSYaHRuPwZmWNoiPN8RpwqWsi8qWA0/ZSPcFQ8
	oR1NOJhDDT2K1m64IT51vMDvSE+tdfM=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-516-FX6dAVdCMlCm2C8Wk1H0Vg-1; Mon, 22 Aug 2022 17:58:32 -0400
X-MC-Unique: FX6dAVdCMlCm2C8Wk1H0Vg-1
Received: by mail-io1-f72.google.com with SMTP id a21-20020a5d9815000000b006882e9be20aso6320056iol.17
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Aug 2022 14:58:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc;
        bh=mQUeuV51GD+/Z3NmS3oF64vuc80M1JzNM209IAEm6Lo=;
        b=2zIX7JV1R3MeqYHtrIMD5uAdt+r5F2YlMSkSZAkl4gYOe19MY5CuwZihTM5pIZIQMK
         Q7wzTutJmpprc1KqGdCgbu+NVEgyhEnKYXVuAtlOJnIorSpVCJARe3CpdrrBNfNLGfB0
         5HpsOUI4oczmpTcEdKnoEAUvHstT6zU3Q13sSdPCJvSMkFfyR3nEt4plFwbmQsPAxYE1
         CBzDOV9kYQdtqI1cpdIIv6qACUQcKbQvAQdCCTTxxo6kBNeWrvd2CIp9NubARhJN8/Lp
         J6dbJ2ssrZzjBRenkEOFIU1LjcoXH4ImEYD8bV9Pb4qgt3shN0XL4LMAkmAP0JtBQNBO
         LC0Q==
X-Gm-Message-State: ACgBeo1h2b4F8vfAWEjWR2c9LaS3RQzWK8YUmRBTP3j7XLHNKgydoqJ3
	5YSqrC06h51o2EwCC1W6/h4H4a92VYTXknDl5K/hdLv16sqpUI27NDlbewrFHXNbmGh+P9lUgbJ
	6oZgzsRwJm21mwLt2Q7fdpBcdrT8=
X-Received: by 2002:a05:6638:3892:b0:342:8aa5:a050 with SMTP id b18-20020a056638389200b003428aa5a050mr10967581jav.145.1661205511230;
        Mon, 22 Aug 2022 14:58:31 -0700 (PDT)
X-Google-Smtp-Source: AA6agR7Ji5Aas470cfaDuYoFCQXCz8xDov2+WjpaEqjz4PP+196q6rswlxrWF7iO99xdkBAv+YQNFg==
X-Received: by 2002:a05:6638:3892:b0:342:8aa5:a050 with SMTP id b18-20020a056638389200b003428aa5a050mr10967567jav.145.1661205510943;
        Mon, 22 Aug 2022 14:58:30 -0700 (PDT)
Received: from redhat.com ([38.15.36.239])
        by smtp.gmail.com with ESMTPSA id g2-20020a05660203c200b006788259b526sm6276185iov.41.2022.08.22.14.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 14:58:30 -0700 (PDT)
Date: Mon, 22 Aug 2022 15:58:28 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220822155828.6fa6a961.alex.williamson@redhat.com>
In-Reply-To: <Yv4rBEeUMQyIdEzi@nvidia.com>
References: <0-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
	<Yv4rBEeUMQyIdEzi@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WR6HUXHISVSEK35R5PZ7THHA2UAWXQAW
X-Message-ID-Hash: WR6HUXHISVSEK35R5PZ7THHA2UAWXQAW
X-Mailman-Approved-At: Thu, 06 Oct 2022 13:42:52 +0000
CC: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WR6HUXHISVSEK35R5PZ7THHA2UAWXQAW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 18 Aug 2022 09:05:24 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Wed, Aug 17, 2022 at 01:11:38PM -0300, Jason Gunthorpe wrote:
> > dma-buf has become a way to safely acquire a handle to non-struct page
> > memory that can still have lifetime controlled by the exporter. Notably
> > RDMA can now import dma-buf FDs and build them into MRs which allows for
> > PCI P2P operations. Extend this to allow vfio-pci to export MMIO memory
> > from PCI device BARs.
> > 
> > This series supports a use case for SPDK where a NVMe device will be owned
> > by SPDK through VFIO but interacting with a RDMA device. The RDMA device
> > may directly access the NVMe CMB or directly manipulate the NVMe device's
> > doorbell using PCI P2P.
> > 
> > However, as a general mechanism, it can support many other scenarios with
> > VFIO. I imagine this dmabuf approach to be usable by iommufd as well for
> > generic and safe P2P mappings.
> > 
> > This series goes after the "Break up ioctl dispatch functions to one
> > function per ioctl" series.
> > 
> > This is on github: https://github.com/jgunthorpe/linux/commits/vfio_dma_buf
> > 
> > Jason Gunthorpe (4):
> >   dma-buf: Add dma_buf_try_get()
> >   vfio: Add vfio_device_get()
> >   vfio_pci: Do not open code pci_try_reset_function()
> >   vfio/pci: Allow MMIO regions to be exported through dma-buf
> > 
> >  drivers/vfio/pci/Makefile           |   1 +
> >  drivers/vfio/pci/vfio_pci_config.c  |  22 ++-
> >  drivers/vfio/pci/vfio_pci_core.c    |  33 +++-
> >  drivers/vfio/pci/vfio_pci_dma_buf.c | 265 ++++++++++++++++++++++++++++  
> 
> I forget about this..
> 
> Alex, do you want to start doing as Linus discused and I will rename
> this new file to "dma_buf.c" ?
> 
> Or keep this directory as having the vfio_pci_* prefix for
> consistency?

I have a hard time generating a strong opinion over file name
redundancy relative to directory structure.  By my count, over 17% of
files in drivers/ have some file name redundancy to their parent
directory structure (up to two levels).  I see we already have two
$FOO_dma_buf.c files in the tree, virtio and amdgpu among these.  In
the virtio case this is somewhat justified, to me at least, as the
virtio_dma_buf.h file exists in a shared include namespace.  However,
this justification only accounts for about 1% of such files, for many
others the redundancy exists in the include path as well.

I guess if we don't have a reason other than naming consistency and
accept an end goal to incrementally remove file name vs directory
structure redundancy where it makes sense, sure, name it dma_buf.c.
Ugh. Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
