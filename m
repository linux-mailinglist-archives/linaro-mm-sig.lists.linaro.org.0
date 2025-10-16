Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F3FBE1AB3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 08:10:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0F9145602
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 06:10:34 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 8E1ED454D2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 06:10:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BG3eEDCS;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E092F490D6;
	Thu, 16 Oct 2025 06:10:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39906C4CEF1;
	Thu, 16 Oct 2025 06:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760595029;
	bh=tT6N7q0N+tYnpCuKuxnxGLzsNtDaUUpQ+9IuABIG9g0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BG3eEDCSI/HeqTCyC/0LCNKBgZ3zo6ECD9ngmXBKIPPl5NBH22Bn7mghAB8et/H6G
	 Mk66piiBKnfchNsu3YfuJzNnwCXFrqb8msDY8Om7bdz82Hkljjp7CPmpHtnH9rNGgs
	 KlMJt91fqlCWGDLVdc6FP/YNLaLQ7lPh9mflRMeup/0Wzsexbxj6A0mkigA65Vzw0x
	 gbAD3ImrXMKJVAfq/R2QbmWKCY7eNvtD8O8jYdRtYFKQ5Hq1PrhccrO90mG8ylxJEA
	 UlVJ3lTR+OmS5SyBhCnebiq7W+a6V2pL6QQLerxSwT6B4ZcH42Z/KxX0dqJOEZ6gTV
	 xAaHdT8g/V/0w==
Date: Thu, 16 Oct 2025 09:10:25 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Nicolin Chen <nicolinc@nvidia.com>
Message-ID: <20251016061025.GA6199@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <a04c44aa4625a6edfadaf9c9e2c2afb460ad1857.1760368250.git.leon@kernel.org>
 <aPBwEVJSzezdii1V@Asurada-Nvidia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aPBwEVJSzezdii1V@Asurada-Nvidia>
X-Rspamd-Queue-Id: 8E1ED454D2
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ERFLKIIU2NMTOXWIA3CI7GWK2CSICM7V
X-Message-ID-Hash: ERFLKIIU2NMTOXWIA3CI7GWK2CSICM7V
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 8/9] vfio/pci: Enable peer-to-peer DMA transactions by default
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ERFLKIIU2NMTOXWIA3CI7GWK2CSICM7V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 15, 2025 at 09:09:53PM -0700, Nicolin Chen wrote:
> Hi Leon,
> 
> On Mon, Oct 13, 2025 at 06:26:10PM +0300, Leon Romanovsky wrote:
> > @@ -2090,6 +2092,9 @@ int vfio_pci_core_init_dev(struct vfio_device *core_vdev)
> >  	INIT_LIST_HEAD(&vdev->dummy_resources_list);
> >  	INIT_LIST_HEAD(&vdev->ioeventfds_list);
> >  	INIT_LIST_HEAD(&vdev->sriov_pfs_item);
> > +	ret = pcim_p2pdma_init(vdev->pdev);
> > +	if (ret != -EOPNOTSUPP)
> > +		return ret;
> >  	init_rwsem(&vdev->memory_lock);
> >  	xa_init(&vdev->ctx);
> 
> I think this should be:
> 	if (ret && ret != -EOPNOTSUPP)
> 		return ret;
> 
> Otherwise, init_rwsem() and xa_init() would be missed if ret==0.

You absolutely right.

Thanks

> 
> Thanks
> Nicolin
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
