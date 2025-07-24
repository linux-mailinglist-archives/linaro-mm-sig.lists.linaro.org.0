Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D4DB10243
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 09:50:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 921C544B31
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jul 2025 07:50:25 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 93EA53F6E9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jul 2025 07:50:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 593F968AFE; Thu, 24 Jul 2025 09:50:08 +0200 (CEST)
Date: Thu, 24 Jul 2025 09:50:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20250724075008.GA30590@lst.de>
References: <cover.1753274085.git.leonro@nvidia.com> <c1a4acd69e040fc2cc7e552849f4d922f5f66325.1753274085.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1a4acd69e040fc2cc7e552849f4d922f5f66325.1753274085.git.leonro@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spamd-Result: default: False [-3.59 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	DMARC_POLICY_ALLOW(-0.50)[lst.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:213.95.11.211];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	SINGLE_SHORT_PART(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.886];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[213.95.11.211:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 93EA53F6E9
X-Spamd-Bar: ---
Message-ID-Hash: DENDB3XFASD3VXI3QRKF3D6CSXKBN2C3
X-Message-ID-Hash: DENDB3XFASD3VXI3QRKF3D6CSXKBN2C3
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/10] PCI/P2PDMA: Remove redundant bus_offset from map state
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DENDB3XFASD3VXI3QRKF3D6CSXKBN2C3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
