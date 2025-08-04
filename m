Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2464B1A46A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Aug 2025 16:18:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59A2D43FC8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Aug 2025 14:18:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 399BF43FC8
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Aug 2025 14:18:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=rcZdA0LS;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AF9BE5C611E;
	Mon,  4 Aug 2025 14:18:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED16C4CEE7;
	Mon,  4 Aug 2025 14:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754317096;
	bh=Zr3kPkorN9J0wHoU77coJxVhd5vO47zAf6WxVna9oFs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rcZdA0LSgVnIJ/ja+rzujOZjYxEuQpnBSSJNlhmM+uIS36PMWIvxGnxJBKVGS0y/k
	 vBjKAwytVDKvxwg3o4C9JLt2cc5Xf3Ulyggy/L7MyOHzWrqYM35ShQ8xJDtl2YOAB7
	 3wGRmkXADNX6dFnB5tDVmYtUzfYrZkmqh/fAJX007BI21XLotatJs14FAYy7dz2Pqv
	 Eb7LFQAA4+jV/XnEzEvrRUpolhq+I8mzh+IQZcnXLb5j7+5cmwoKzIv7/4Y2lgrdRR
	 b8oxjcA0vaYNH78RQuyAh19r+u1Tc+UWreSga05cOcSy8fmAwfSkJk+8HgQjXZFhcc
	 /nh+mNJsc6Ehw==
Date: Mon, 4 Aug 2025 17:18:11 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Benjamin LaHaise <bcrl@kvack.org>
Message-ID: <20250804141811.GT402218@unreal>
References: <cover.1754311439.git.leon@kernel.org>
 <20250804141032.GA30056@kvack.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250804141032.GA30056@kvack.org>
X-Spamd-Result: default: False [-3.38 / 15.00];
	BAYES_HAM(-2.88)[99.47%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 399BF43FC8
X-Spamd-Bar: ---
Message-ID-Hash: VKY7SHZCCBFNT3Z3ZIGIUJCPYVK3OHPT
X-Message-ID-Hash: VKY7SHZCCBFNT3Z3ZIGIUJCPYVK3OHPT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 00/10] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VKY7SHZCCBFNT3Z3ZIGIUJCPYVK3OHPT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 04, 2025 at 10:10:32AM -0400, Benjamin LaHaise wrote:
> FYI: this entire patch series was rejected as spam by large numbers of
> linux-mm subscribers using @gmail.com email addresses.

Thanks for the heads-up. Are you aware of any issues from my side?
I'm sending patches with git-send-email through mail.kernel.org SMTP.

Thanks

> 
> 		-ben (owner-linux-mm)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
