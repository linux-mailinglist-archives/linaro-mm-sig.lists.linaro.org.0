Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D97B15BAF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jul 2025 11:32:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E520645778
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jul 2025 09:32:32 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C52FC441C4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Jul 2025 09:32:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=re3qBfXG;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1CC2445B43;
	Wed, 30 Jul 2025 09:32:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B5ABC4CEE7;
	Wed, 30 Jul 2025 09:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753867941;
	bh=4W4puONHgBcGHwoNV0CY3xma0bboz0RMz11XR/y9JNQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=re3qBfXG4XyZtA/RqPxafo444qv+5COTZZvAJcsIAudJvNJ5GRUrGxzmLMht7qn04
	 hwCyO3Hzt2ruEpZEzwjjG5TqM57jCt7NS/wTLq9A4i30flu1luxSTT3gmO7ssNsvS2
	 Lb5pXFUz6XiBnwlYG8HhanlHIjmJFWfrePje/Dln8nbnfZZITOpG3X+Mc4VYGCgMtY
	 LtRFBtuou9BEeShW+H/gLAcqTOk0FFSJQaVIa0Z6ohVZeUE9/L2qylX3UiuRgQ91sw
	 bEWg/OKcbPZyTRB/9hC19ZqDyhbFiEikEPzuwYdJ2SVd4jtrfVeKeJap5nBj7dN4c4
	 1MrJJzfkPtKTQ==
Date: Wed, 30 Jul 2025 12:32:15 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20250730093215.GP402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <aea452cc27ca9e5169f7279d7b524190c39e7260.1753274085.git.leonro@nvidia.com>
 <8f912671-f1d9-4f73-9c1d-e39938bfc09f@arm.com>
 <20250729201351.GA82395@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250729201351.GA82395@nvidia.com>
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C52FC441C4
X-Spamd-Bar: ---
Message-ID-Hash: D5ZKIQIK7VSG4QPW23FKTDHZKJGEU5VJ
X-Message-ID-Hash: D5ZKIQIK7VSG4QPW23FKTDHZKJGEU5VJ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex.williamson@redhat.com>, Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/10] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D5ZKIQIK7VSG4QPW23FKTDHZKJGEU5VJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 29, 2025 at 05:13:51PM -0300, Jason Gunthorpe wrote:
> On Tue, Jul 29, 2025 at 08:44:21PM +0100, Robin Murphy wrote:
> 
> > In this case with just one single
> > contiguous mapping, it is clearly objectively worse to have to bounce in and
> > out of the IOMMU layer 3 separate times and store a dma_map_state,
> 
> The non-contiguous mappings are comming back, it was in earlier drafts
> of this. Regardless, the point is to show how to use the general API
> that we would want to bring into the DRM drivers that don't have
> contiguity even though VFIO is a bit special.

Yes, we will see comeback of DMA ranges in v2.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
