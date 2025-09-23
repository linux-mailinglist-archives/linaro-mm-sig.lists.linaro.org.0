Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 393D7B972AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 20:09:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D4514595B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 18:09:44 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id A74FD42525
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 18:09:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=WgwCqdwX;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of alex.williamson@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=alex.williamson@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758650977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mQIcre9d/GLURHCzSftYDLgKY/Tx/WICcqQ2djA+XCg=;
	b=WgwCqdwXaYN3Trerny7CPtN4SBPyc/HSKDsoex+YwLeP0gtV+SgGmQ/UMR1Tnh+RpS1iuO
	dKdFLD77MyzuEVG8CFDFv4XOzWcgUlIqjirngbu1iFBv2/dvCPe/VCFzCfuVa2FsZewXG7
	8xEDTJQxTKTkD4GB86sD0clhH88n8/Y=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-587-LYjv4O5pN_uVj58uNA2o6g-1; Tue, 23 Sep 2025 14:09:36 -0400
X-MC-Unique: LYjv4O5pN_uVj58uNA2o6g-1
X-Mimecast-MFC-AGG-ID: LYjv4O5pN_uVj58uNA2o6g_1758650975
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-4257ba8573cso1899825ab.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 11:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758650975; x=1759255775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mQIcre9d/GLURHCzSftYDLgKY/Tx/WICcqQ2djA+XCg=;
        b=EQw6qXDa0N5uUbe/eGGWzMvhGdNdr9O9OYJJ6OprMF3boZQX+mhSv2B++9MwMYPxIK
         0VutiukvrZsEs969l5Tpdkxm3Ypaj5Z/80uvlfigr2hO6cjsqOwrLeNR7OHXcW8Hab8b
         nMovBCfNvus6jnK8wsolkpccSYy7jL6KTE+i3A2ZVno9PoWSWXYNhFRhVxnIUYOT6pkZ
         ghUP3SNUBRFI4QKeH9o0If/7U/mczIdeawFEI8Kz5fIksNK6E3FIamRpaKsr2rO0oKkG
         R3SYh3+m3k8S196p6Z94LN0AC110VJywvjJZKziy4zVrZaFUoOETo4C2ThXVVS1vEThy
         xGJg==
X-Forwarded-Encrypted: i=1; AJvYcCUYZzFQYHzCDNRkjZsvlI7ZAp8TPEaUW+HgyeXfNhS0aqc8FKgJgX6PVEiMq1oFSmFfPKkDm3uUWvIVY2wQ@lists.linaro.org
X-Gm-Message-State: AOJu0Yyx4bh5LssTp86qcV0pAs3XWWDVCqrNT/XD61A/pvOIAQmXs3WA
	rJ/Vt+MUF69yas41ns5/T00o2M1NuKt5oFL0HLhlTFIF4NXVkBL/BUgRv5t4oPr/2l/VGrEP19b
	xGQc5OxRi4vGx7VGd0takdB/C8pP+Yw7zHD271xb6MJ65u5tX52mM+6LwWOwXOY9oOLnD
X-Gm-Gg: ASbGnct6WksY2nsQL3E4GWXB9AS6BWwv+1vzLultkFjoKbBXJAelr8wm5A7+BEn8JuP
	GTw79NUkZvcrdOl4zugoQMDlH90YGuM9KaovFSMGcPp90zMDUY9oIeyDZlTEurGK6OF784Sabng
	yvAapyyryBnoE8WKO2+csfJ1VgoN6FjP50I+8vO1m03snWmtIE8L887KozHxopOjHpLEOAlMOBj
	AdtIJc506NAffGUxKGUH3HQYqGxqQwk3R7XiZpmKEseURA952JRQ7j55MDVfkmE/BH426mbAFJl
	6EYFnRGMR5HPbz5+yMruZofwA2N3SA8Mo8qLwQdnPSM=
X-Received: by 2002:a05:6e02:1528:b0:412:5782:c7c1 with SMTP id e9e14a558f8ab-42581ea129fmr20080615ab.5.1758650975108;
        Tue, 23 Sep 2025 11:09:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFq8NLMhZ8QXjx/u5jq96UNETG/D0tlVJnMFlvqXnog3t1PaipQH1rILjZIuw/YRGMbPtKiFQ==
X-Received: by 2002:a05:6e02:1528:b0:412:5782:c7c1 with SMTP id e9e14a558f8ab-42581ea129fmr20080265ab.5.1758650974546;
        Tue, 23 Sep 2025 11:09:34 -0700 (PDT)
Received: from redhat.com ([38.15.36.11])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-54f69c6262esm5209728173.79.2025.09.23.11.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 11:09:33 -0700 (PDT)
Date: Tue, 23 Sep 2025 12:09:32 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20250923120932.47df57b2.alex.williamson@redhat.com>
In-Reply-To: <20250923174333.GE2608121@nvidia.com>
References: <cover.1757589589.git.leon@kernel.org>
	<1e2cb89ea76a92949d06a804e3ab97478e7cacbb.1757589589.git.leon@kernel.org>
	<20250922150032.3e3da410.alex.williamson@redhat.com>
	<20250923150414.GA2608121@nvidia.com>
	<20250923113041.38bee711.alex.williamson@redhat.com>
	<20250923174333.GE2608121@nvidia.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YCHQWrVQTT_ifuk__Dyv7S_AXDbxkKr9sYdXPk4yJBg_1758650975
X-Mimecast-Originator: redhat.com
X-Rspamd-Queue-Id: A74FD42525
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
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4QLOBP6XRUAGDHG2CKETUF7YEJYKJWDL
X-Message-ID-Hash: 4QLOBP6XRUAGDHG2CKETUF7YEJYKJWDL
X-MailFrom: alex.williamson@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/10] PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4QLOBP6XRUAGDHG2CKETUF7YEJYKJWDL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 23 Sep 2025 14:43:33 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Sep 23, 2025 at 11:30:41AM -0600, Alex Williamson wrote:
> > On Tue, 23 Sep 2025 12:04:14 -0300
> > Jason Gunthorpe <jgg@nvidia.com> wrote:
> >   
> > > On Mon, Sep 22, 2025 at 03:00:32PM -0600, Alex Williamson wrote:  
> > > > But then later in patch 8/ and again in 10/ why exactly do we cache
> > > > the provider on the vfio_pci_core_device rather than ask for it on
> > > > demand from the p2pdma?    
> > > 
> > > It makes the most sense if the P2P is activated once during probe(),
> > > it is just a cheap memory allocation, so no reason not to.
> > > 
> > > If you try to do it on-demand then it will require more locking.  
> > 
> > I'm only wondering about splitting to an "initialize/setup" function
> > where providers for each BAR are setup, and a "get provider" interface,
> > which doesn't really seem to be a hot path anyway.  Batching could
> > still be done to setup all BAR providers at once.  
> 
> I agree it is a weird interface, but it is close to the existing weird
> interface :\

Seems like it would help if we just positioned it as a "get provider
for BAR" function that happens to initialize all the providers on the
first call, rather than an "enable" function with some strange BAR
argument and provider return.  pcim_p2pdma_provider(pdev, bar)?

It would at least make sense to me then to store the provider on the
vfio_pci_dma_buf object at the time of the get feature call rather than
vfio_pci_core_init_dev() though.  That would eliminate patch 08/ and
the inline #ifdefs.

> > However, the setup isn't really once per probe(), even in the case of a
> > new driver probing we re-use the previously setup providers.    
> 
> It uses devm to call pci_p2pdma_release() which NULL's pdev->p2pdma.

Ah, right.  So the /* PCI device was "rebound" to the driver */ comment
is further misleading, a new probe would do a new setup.  Thanks,

Alex

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
