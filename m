Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F348B15A24
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jul 2025 10:03:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBAD2441C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jul 2025 08:03:36 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 24878441C4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Jul 2025 08:03:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Phq6ne8j;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7CC0543D89;
	Wed, 30 Jul 2025 08:03:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C439C4CEE7;
	Wed, 30 Jul 2025 08:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753862603;
	bh=HEgPRodovJalgZ/g1kb94tmKLk2QtGEpj7zW37uzKec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Phq6ne8jeiHRh+g/jyaIbVu24BslXtOFr5jlNeVkeq5Pd4JP4IP/urevgfTH7y8Ng
	 IM4N1EVTTw6lIyVWLMQ5K0tdY5QpmQj79Qaao8gIoOMRohyP/vZ3M9ekEqXib6GZL+
	 Vd2t51G/uWQd6oD58QoSzV0VWLuJ8QqSIDQStXuXWQ5G8gEHsTZDXx81LTTpzH1daZ
	 ezVZXuukAwl9TGk23btBxOterY1GjPt8BN4i8ULPTxzKhdnMZ1IhejtxHnXHMC5Wo6
	 rXCmw6UrvY7ectigm1BvmYyiZfOF9dlvJf0mlr92yHUxxT/i06Xv2nhdtuZ9olDn3p
	 c3RNuuUGIqBAg==
Date: Wed, 30 Jul 2025 11:03:17 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <20250730080317.GO402218@unreal>
References: <82e62eb59afcd39b68ae143573d5ed113a92344e.1753274085.git.leonro@nvidia.com>
 <20250724080313.GA31887@lst.de>
 <20250724081321.GT402218@unreal>
 <b32ae619-6c4a-46fc-a368-6ad4e245d581@deltatee.com>
 <20250727190514.GG7551@nvidia.com>
 <d69e0d74-285e-4cde-a2e4-a803accfa9e1@deltatee.com>
 <20250728164136.GD402218@unreal>
 <d3c8c573-f201-4450-9400-cc3ccafd2c04@deltatee.com>
 <20250728231107.GE36037@nvidia.com>
 <f332e2b9-151f-49ca-ac0c-8c9494c38027@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f332e2b9-151f-49ca-ac0c-8c9494c38027@deltatee.com>
X-Spamd-Result: default: False [-2.52 / 15.00];
	BAYES_HAM(-2.02)[95.14%];
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
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 24878441C4
X-Spamd-Bar: --
Message-ID-Hash: VMOVRYK63OZTG2YTWZMUGP34JZY5EXTN
X-Message-ID-Hash: VMOVRYK63OZTG2YTWZMUGP34JZY5EXTN
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Christoph Hellwig <hch@lst.de>, Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/10] PCI/P2PDMA: Export pci_p2pdma_map_type() function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VMOVRYK63OZTG2YTWZMUGP34JZY5EXTN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 29, 2025 at 02:54:13PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2025-07-28 17:11, Jason Gunthorpe wrote:
> >> If the dma mapping for P2P memory doesn't need to create an iommu
> >> mapping then that's fine. But it should be the dma-iommu layer to decide
> >> that.
> > 
> > So above, we can't use dma-iommu.c, it might not be compiled into the
> > kernel but the dma_map_phys() path is still valid.
> 
> This is an easily solved problem. I did a very rough sketch below to say
> it's really not that hard. (Note it has some rough edges that could be
> cleaned up and I based it off Leon's git repo which appears to not be
> the same as what was posted, but the core concept is sound).

I started to prepare v2, this is why posted version is slightly
different from dmabuf-vfio branch.

In addition to what Jason wrote. there is an extra complexity with using
state. The wrappers which operate on dma_iova_state assume that all memory,
which is going to be mapped, is the same type: or p2p or not.

This is not the cased for HMM/RDMA users, there you create state in
advance and get mixed type of pages.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
