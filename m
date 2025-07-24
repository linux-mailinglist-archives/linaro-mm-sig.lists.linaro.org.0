Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F61B1030A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 10:13:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 780B7454D5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 08:13:38 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id AF31E43C1B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jul 2025 08:13:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="GZij/Khf";
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1FAEF601EE;
	Thu, 24 Jul 2025 08:13:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 259DEC4CEED;
	Thu, 24 Jul 2025 08:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753344805;
	bh=TMHBNschFRg/EXbokl2TnOo376mtUvL9vCgJ968zWc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GZij/KhfBIUnbU4lbHxjP88/lDFzJVzpN+LpEfBwzehWsDkUfges9TR5IyiZTnUhz
	 OadLn/vpSTN0knIfMqxk1/W2CkIVAi3gxUO12Curbh72sdoAFUoZHMoQdkblwXYtCK
	 DBBS15tXdkII8NQBEHBXo5TqCjHgGsdp0FLQhgc8yB1hMi8M7wr3Or6XwNhMDDmE5z
	 Em/8soyscY18uKVRMTABiIjE1R3FnnTzVaf+jWOosD8zdiT3uo+rw2d6i+cCw9KzmJ
	 6lq4oh/7XQmhm5eJkFy7pTkaIXNXQvR9uEMZs2rWb31Otvoz0nnuBSZNCxcv8TqFNT
	 vTyCJMK4plyfw==
Date: Thu, 24 Jul 2025 11:13:21 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20250724081321.GT402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <82e62eb59afcd39b68ae143573d5ed113a92344e.1753274085.git.leonro@nvidia.com>
 <20250724080313.GA31887@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080313.GA31887@lst.de>
X-Spamd-Result: default: False [-3.46 / 15.00];
	BAYES_HAM(-2.96)[99.81%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AF31E43C1B
X-Spamd-Bar: ---
Message-ID-Hash: RV3JOAMRKUWOSDKNMQOJ3AWTOZDM4CSW
X-Message-ID-Hash: RV3JOAMRKUWOSDKNMQOJ3AWTOZDM4CSW
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/10] PCI/P2PDMA: Export pci_p2pdma_map_type() function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RV3JOAMRKUWOSDKNMQOJ3AWTOZDM4CSW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 24, 2025 at 10:03:13AM +0200, Christoph Hellwig wrote:
> On Wed, Jul 23, 2025 at 04:00:06PM +0300, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Export the pci_p2pdma_map_type() function to allow external modules
> > and subsystems to determine the appropriate mapping type for P2PDMA
> > transfers between a provider and target device.
> 
> External modules have no business doing this.

VFIO PCI code is built as module. There is no way to access PCI p2p code
without exporting functions in it.

Thanks

> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
