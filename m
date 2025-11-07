Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D93C41951
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 07 Nov 2025 21:27:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A85A3F7DE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Nov 2025 20:27:41 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 2E5E93F73D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Nov 2025 20:27:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GnHfPvK9;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 77AA241B35;
	Fri,  7 Nov 2025 20:27:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 836D6C4CEF5;
	Fri,  7 Nov 2025 20:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762547244;
	bh=VAySUlKP+gpY13ehfWvqZiKxHmLFx9bZKqh1eqOc7BU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GnHfPvK9RlbGueuO2dIzOFloCGUIJO+4STJ9acaeZ4mwoNgCLVysGF3G1CD2dslTO
	 J8xEeZg2TWQROLBRgu9cIRspJbvL0T9YEBkcbbcqYSRUqcnzE6UpSuE7s17MqR38od
	 k1auiNEzsLsrcn/e5bmLAUXdt14ph1onYr5+m4OBZiUnSghRHlS5cz0wreim7qkvti
	 AitNvNVxIXHxoXVVQZB1fuCmNeB+VUFl+qA0fr1ukYsVMffsErSLFPHEZkD3QhPl33
	 mZVBp/M5pmVMtLNk4jfzBFQR0vtiXMXgOHw2XwWQXqRS2kcJr3JwuXFYWK3abcXYgE
	 W34/n88w3YbCg==
Date: Fri, 7 Nov 2025 22:27:18 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20251107202718.GE15456@unreal>
References: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
 <20251106-dmabuf-vfio-v7-5-2503bf390699@nvidia.com>
 <135df7eb-9291-428b-9c86-d58c2e19e052@infradead.org>
 <20251107160120.GD15456@unreal>
 <0c265a9b-fdc5-40d7-845f-30910f1ac6ea@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c265a9b-fdc5-40d7-845f-30910f1ac6ea@infradead.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E5E93F73D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	URIBL_BLOCKED(0.00)[nvidia.com:email,sea.source.kernel.org:rdns,sea.source.kernel.org:helo];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: H7BY4JUDZXMJZ74ZC7NWJ4VICQMCFWTE
X-Message-ID-Hash: H7BY4JUDZXMJZ74ZC7NWJ4VICQMCFWTE
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
 , kvm@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7BY4JUDZXMJZ74ZC7NWJ4VICQMCFWTE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 07, 2025 at 10:58:27AM -0800, Randy Dunlap wrote:
> 	
> 
> On 11/7/25 8:01 AM, Leon Romanovsky wrote:
> > On Thu, Nov 06, 2025 at 10:15:07PM -0800, Randy Dunlap wrote:
> >>
> >>
> >> On 11/6/25 6:16 AM, Leon Romanovsky wrote:
> >>> From: Jason Gunthorpe <jgg@nvidia.com>
> >>>
> >>> Reflect latest changes in p2p implementation to support DMABUF lifecycle.
> >>>
> >>> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> >>> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> >>> ---
> >>>  Documentation/driver-api/pci/p2pdma.rst | 95 +++++++++++++++++++++++++--------
> >>>  1 file changed, 72 insertions(+), 23 deletions(-)

<...>

> >>> -The second issue is that to make use of existing interfaces in Linux,
> >>> -memory that is used for P2P transactions needs to be backed by struct
> >>> -pages. However, PCI BARs are not typically cache coherent so there are
> >>> -a few corner case gotchas with these pages so developers need to
> >>> -be careful about what they do with them.
> >>> +For PCIe the routing of TLPs is well defined up until they reach a host bridge
> >>
> >> Define what TLP means?
> > 
> > In PCIe "world", TLP is very well-known and well-defined acronym, which
> > means Transaction Layer Packet.
> 
> It's your choice (or Bjorn's). I'm just reviewing...

Thanks a lot.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
