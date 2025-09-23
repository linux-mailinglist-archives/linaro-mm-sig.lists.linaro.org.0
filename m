Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 680E3B9771C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 22:07:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8067345959
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 20:07:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id BBABD42525
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 20:07:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=ZLFqnU6d;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758658050;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TkF/1TIVCdQ8I35UWInq/5XGtjT7LO6t3DfocUuGzJk=;
	b=ZLFqnU6d+6znjZm1pAwJ06tM7mu3sevqZlUrT8MjnxwlkXnkTcyAXiAA6TG2ugWnXotjoI
	TdSoPOFUBZUupSa72gNvmK6pOUe++iUCJ2LAaZQ+ZbW03xt+Z/3dlVMHZjvF6jguJV9+zY
	anHh/hhO8vGM/0FtG3uQIIO8IH4Ytj4=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-373-f9P008S-MdyWJlbFcsOaRw-1; Tue, 23 Sep 2025 16:07:29 -0400
X-MC-Unique: f9P008S-MdyWJlbFcsOaRw-1
X-Mimecast-MFC-AGG-ID: f9P008S-MdyWJlbFcsOaRw_1758658048
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-4258981d664so852275ab.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 13:07:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758658048; x=1759262848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TkF/1TIVCdQ8I35UWInq/5XGtjT7LO6t3DfocUuGzJk=;
        b=BB3eLlRekkqfRkg+zCOgUvPZNDuh/9owYjXB7q6Zy5X0tSF/rlqNYrbG4uMOtwP4h8
         1gZp3cSLZip0WMlYyEUHgdQGjSP8kgBmFVctEVI7iTHDlfn/FfZD72Dv+mLoiAwwZxHW
         sWB65TGLil8iG11NJTXGBb9Y+O+Q1ClEOkYXgVklAUMkKYFPsAxPZkpnk+KH1wQJZPan
         vrak0x6Ra4zRq3bVIazgWtvr18Ni+VdEJE+HBye4A75rxZ4fx76s3ij9LzXWhjIbq4ov
         jpNZD4nChKkWKIZbHG3hhEJivGLDYA4fd9gfm6j5x1vTDiVgDxffGnKDbzv0nwf0G5gk
         DB8A==
X-Forwarded-Encrypted: i=1; AJvYcCUqpvSVYQklM/e4awC72+0MnY0tXt8YIt1SplRxrqVgB7htAxgLL2+17o9Le8AUAqjBKs2dAG5NkrkYv+EW@lists.linaro.org
X-Gm-Message-State: AOJu0Yy5ip9LprXJYnljCFztZGh2W9sNFd+1tHMEh5kf7pKQyUENpsb+
	I3zMzKhN9e8TE8hobJB/wrsGohIZZrReClYBZjZXlS0KkH7zxX4IC4pJUzWXSvDDdNzG7BF7RRe
	7JyNkXuz2LGrxGPmnmU+bAp8Y9psKVXhtMlazBTb7Od8VhxiVIaWHHO5v+qbiN9VJk2TD
X-Gm-Gg: ASbGncsgU2Tw2BMoDAsLcjDCYGpKMrSsHKKe1razmWlNSmf9L/kchoz/sYiP27LlHMZ
	sZaBapAqsidNSPpfpDGYus4R02U+sP0xXHegO8c4IXShepxu0rHuml/hr1lesITn0Mpaj8u++JV
	qMP6qBGrdkevO93HCiG/wAfWNAZBt+4S4mLyUho+vddy6GUNgTsChOMNCRvqgXxWDfjj48UdOsx
	UtJpOv3fRhVykGUB9zdiu4zASQeFlmDQcoEXWwl7mUEil+Xj5YgNbIyC++6q2lvHonrowt8yH5/
	ltczDWg6NWPYWM7V8jGH4mKh1+ecjphRy6mdf0wJ15I=
X-Received: by 2002:a05:6e02:b27:b0:423:fd07:d3fe with SMTP id e9e14a558f8ab-42581e0924amr21638545ab.2.1758658048112;
        Tue, 23 Sep 2025 13:07:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmMxIqHNMDHwq6jPuldjwSxK84807XGPUliuEF5qCvF8SuPWmF0LqQLkrDELCWNHqAt6pi1g==
X-Received: by 2002:a05:6e02:b27:b0:423:fd07:d3fe with SMTP id e9e14a558f8ab-42581e0924amr21638385ab.2.1758658047638;
        Tue, 23 Sep 2025 13:07:27 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-425813f3053sm15141865ab.21.2025.09.23.13.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 13:07:26 -0700 (PDT)
Date: Tue, 23 Sep 2025 14:07:23 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250923140723.14c63741.alex.williamson@redhat.com>
In-Reply-To: <20250923171228.GL10800@unreal>
References: <cover.1757589589.git.leon@kernel.org>
	<1e2cb89ea76a92949d06a804e3ab97478e7cacbb.1757589589.git.leon@kernel.org>
	<20250922150032.3e3da410.alex.williamson@redhat.com>
	<20250923171228.GL10800@unreal>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: V08HrcB920CLc3E_D6sWjIN4bFQ7SEg9LyuPiux5R6o_1758658048
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: BBABD42525
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[170.10.129.124:from,38.15.36.11:received,209.85.166.197:received];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LYIVWCWCTNPV6IPIDWYUL6G3ZGUFD5XX
X-Message-ID-Hash: LYIVWCWCTNPV6IPIDWYUL6G3ZGUFD5XX
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/10] PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LYIVWCWCTNPV6IPIDWYUL6G3ZGUFD5XX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 23 Sep 2025 20:12:28 +0300
Leon Romanovsky <leon@kernel.org> wrote:

> On Mon, Sep 22, 2025 at 03:00:32PM -0600, Alex Williamson wrote:
> > On Thu, 11 Sep 2025 14:33:07 +0300
> > Leon Romanovsky <leon@kernel.org> wrote:
> >   
> > > From: Leon Romanovsky <leonro@nvidia.com>
> > > 
> > > Refactor the PCI P2PDMA subsystem to separate the core peer-to-peer DMA
> > > functionality from the optional memory allocation layer. This creates a
> > > two-tier architecture:
> > > 
> > > The core layer provides P2P mapping functionality for physical addresses
> > > based on PCI device MMIO BARs and integrates with the DMA API for
> > > mapping operations. This layer is required for all P2PDMA users.
> > > 
> > > The optional upper layer provides memory allocation capabilities
> > > including gen_pool allocator, struct page support, and sysfs interface
> > > for user space access.
> > > 
> > > This separation allows subsystems like VFIO to use only the core P2P
> > > mapping functionality without the overhead of memory allocation features
> > > they don't need. The core functionality is now available through the
> > > new pci_p2pdma_enable() function that returns a p2pdma_provider
> > > structure.
> > > 
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > ---
> > >  drivers/pci/p2pdma.c       | 129 +++++++++++++++++++++++++++----------
> > >  include/linux/pci-p2pdma.h |   5 ++
> > >  2 files changed, 100 insertions(+), 34 deletions(-)  
> 
> <...>
> 
> > > -static int pci_p2pdma_setup(struct pci_dev *pdev)
> > > +/**
> > > + * pcim_p2pdma_enable - Enable peer-to-peer DMA support for a PCI device
> > > + * @pdev: The PCI device to enable P2PDMA for
> > > + * @bar: BAR index to get provider
> > > + *
> > > + * This function initializes the peer-to-peer DMA infrastructure for a PCI
> > > + * device. It allocates and sets up the necessary data structures to support
> > > + * P2PDMA operations, including mapping type tracking.
> > > + */
> > > +struct p2pdma_provider *pcim_p2pdma_enable(struct pci_dev *pdev, int bar)
> > >  {
> > > -	int error = -ENOMEM;
> > >  	struct pci_p2pdma *p2p;
> > > +	int i, ret;
> > > +
> > > +	p2p = rcu_dereference_protected(pdev->p2pdma, 1);
> > > +	if (p2p)
> > > +		/* PCI device was "rebound" to the driver */
> > > +		return &p2p->mem[bar];
> > >    
> > 
> > This seems like two separate functions rolled into one, an 'initialize
> > providers' and a 'get provider for BAR'.  The comment above even makes
> > it sound like only a driver re-probing a device would encounter this
> > branch, but the use case later in vfio-pci shows it to be the common
> > case to iterate BARs for a device.
> > 
> > But then later in patch 8/ and again in 10/ why exactly do we cache
> > the provider on the vfio_pci_core_device rather than ask for it on
> > demand from the p2pdma?  
> 
> In addition to what Jason said about locking. The whole p2pdma.c is
> written with assumption that "pdev->p2pdma" pointer is assigned only
> once during PCI device lifetime. For example, see how sysfs files
> are exposed and accessed in p2pdma.c.

Except as Jason identifies in the other thread, the p2pdma is a devm
object, so it's assigned once during the lifetime of the driver, not
the device.  It seems that to get the sysfs attributes exposed, a
driver would need to call pci_p2pdma_add_resource() to setup a pool,
but that pool setup is only done if pci_p2pdma_add_resource() itself
calls pcim_p2pdma_enable():

        p2pdma = rcu_dereference_protected(pdev->p2pdma, 1);
        if (!p2pdma) {
                mem = pcim_p2pdma_enable(pdev, bar);
                if (IS_ERR(mem))
                        return PTR_ERR(mem);

                error = pci_p2pdma_setup_pool(pdev);
		...
        } else
                mem = &p2pdma->mem[bar];

Therefore as proposed here a device bound to vfio-pci would never have
these sysfs attributes.

> Once you initialize p2pdma, it is much easier to initialize all BARs at
> the same time.

I didn't phrase my question above well.  We can setup all the providers
on the p2pdma at once, that's fine.  My comment is related to the
awkward API we're creating and what seems to be gratuitously caching
the providers on the vfio_pci_core_device when it seems much more
logical to get the provider for a specific dmabuf and cache it on the
vfio_pci_dma_buf object in the device feature ioctl.  We could also
validate the provider at that point rather than the ad-hoc, parallel
checks for MMIO BARs.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
