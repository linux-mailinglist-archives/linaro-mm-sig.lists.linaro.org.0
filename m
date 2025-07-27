Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 820E0B12DD5
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 27 Jul 2025 08:02:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5CFC44368
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 27 Jul 2025 06:02:14 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id EFE0B3F65C
	for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Jul 2025 06:02:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=V6ve41Za;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 18BF9600AA;
	Sun, 27 Jul 2025 06:02:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD49FC4CEEB;
	Sun, 27 Jul 2025 06:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753596121;
	bh=WWhFp00ABgRKsC2uOYcHpFSsCkih5U8N9S1/bm3HEt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V6ve41Zak6FqYGIRPWdvNdwMfPpQHLnn/G1OPBuETwI5ItOPWDUXA170k7wALPl9R
	 LV5UmgOfKcIWXOXmXNXDvg2oKFa+MPKmb44xV1RXo7qlaGXjb5InY7RkNyHDuLXjqv
	 v7oaji5OpdebPV9NK4boMVjMbo8R5vodWngmOQReq+LAf/Pk1twkeVnZKn4GwEkpsz
	 PkdhJo7R927PwoGPB1NoHxVC+twjz6EsFo0Rd7txaywXaV0GllSt+nRFydY1QMhg/W
	 vOdJPaGwLvhMTWNq0jeRRpeR4GCWuudwZ02zlGFMIBWl0C4X6O3koj2oIy0WdW1VQb
	 dL4srFTzXh3fw==
Date: Sun, 27 Jul 2025 09:01:57 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <20250727060157.GV402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <82e62eb59afcd39b68ae143573d5ed113a92344e.1753274085.git.leonro@nvidia.com>
 <20250724080313.GA31887@lst.de>
 <20250724081321.GT402218@unreal>
 <b32ae619-6c4a-46fc-a368-6ad4e245d581@deltatee.com>
 <20250725185402.GU402218@unreal>
 <a749c502-7794-42f0-8f86-163efd4640b2@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a749c502-7794-42f0-8f86-163efd4640b2@deltatee.com>
X-Spamd-Result: default: False [-4.49 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[172.105.4.254:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EFE0B3F65C
X-Spamd-Bar: ----
Message-ID-Hash: TZ3EU74NTHQSANFEAFAVAKFMUXP32NHN
X-Message-ID-Hash: TZ3EU74NTHQSANFEAFAVAKFMUXP32NHN
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christoph Hellwig <hch@lst.de>, Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/10] PCI/P2PDMA: Export pci_p2pdma_map_type() function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TZ3EU74NTHQSANFEAFAVAKFMUXP32NHN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jul 25, 2025 at 01:12:35PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2025-07-25 12:54, Leon Romanovsky wrote:
> >> The solution that would make more sense to me would be for either
> >> dma_iova_try_alloc() or another helper in dma-iommu.c to handle the
> >> P2PDMA case. dma-iommu.c already uses those same interfaces and thus
> >> there would be no need to export the low level helpers from the p2pdma code.
> > 
> > I had same idea in early versions of DMA phys API discussion and it was
> > pointed (absolutely right) that this is layering violation.
> 
> Respectfully, I have to disagree with this. Having the layer (ie.
> dma-iommu) that normally checks how to handle a P2PDMA request now check
>  how to handle these DMA requests is the exact opposite of a layering
> violation. 

I'm aware of your implementation and have feeling that it was very
influenced by NVMe requirements, so the end result is very tailored
for it. Other users have very different paths if p2p is taken. Just
see last VFIO patch in this series, it skips all DMA logic.

> Expecting every driver that wants to do P2PDMA to have to
> figure out for themselves how to map the memory before calling into the
> DMA API doesn't seem like a good design choice to me.

We had this discussion earlier too on previous versions. The summary is
that p2p capable devices are very special anyway. They need to work with
p2p natively. BTW, the implementation is not supposed to be in the
drivers, but in their respective subsystems.

> 
> > So unfortunately, I think that dma*.c|h is not right place for p2p
> > type check.
> 
> dma*.c is already where those checks are done. I'm not sure patches to
> remove the code from that layer and put it into the NVMe driver would
> make a lot of sense (and then, of course, we'd have to put it into every
> other driver that wants to participate in p2p transactions).

I don't have plans to remove existing checks right now, but NVMe was already
converted to new DMA phys API.

Thanks

> 
> Logan
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
