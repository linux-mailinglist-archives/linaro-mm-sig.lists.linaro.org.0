Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCCDB10259
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 09:52:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8169444D18
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 07:52:52 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 2BB183F6E9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jul 2025 07:52:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 376B168BFE; Thu, 24 Jul 2025 09:52:38 +0200 (CEST)
Date: Thu, 24 Jul 2025 09:52:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250724075238.GC30590@lst.de>
References: <cover.1753274085.git.leonro@nvidia.com> <30640b5e4ec975f928e685b92aaaf3e2e5e08f72.1753274085.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30640b5e4ec975f928e685b92aaaf3e2e5e08f72.1753274085.git.leonro@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spamd-Result: default: False [-3.37 / 15.00];
	BAYES_HAM(-2.77)[98.98%];
	DMARC_POLICY_ALLOW(-0.50)[lst.de,none];
	ONCE_RECEIVED(0.20)[];
	R_SPF_ALLOW(-0.20)[+ip4:213.95.11.211:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.861];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[213.95.11.211:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2BB183F6E9
X-Spamd-Bar: ---
Message-ID-Hash: NETW5JYTDZHNQJIWBLDS7LBTUKRIT5SE
X-Message-ID-Hash: NETW5JYTDZHNQJIWBLDS7LBTUKRIT5SE
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/10] PCI/P2PDMA: Simplify bus address mapping API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NETW5JYTDZHNQJIWBLDS7LBTUKRIT5SE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jul 23, 2025 at 04:00:04PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Update the pci_p2pdma_bus_addr_map() function to take a direct pointer
> to the p2pdma_provider structure instead of the pci_p2pdma_map_state.
> This simplifies the API by removing the need for callers to extract
> the provider from the state structure.
> 
> The change updates all callers across the kernel (block layer, IOMMU,
> DMA direct, and HMM) to pass the provider pointer directly, making
> the code more explicit and reducing unnecessary indirection. This
> also removes the runtime warning check since callers now have direct
> control over which provider they use.

Again I don't actually see any simplification here.  But maybe I'm
missing the ultimate goal here.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
