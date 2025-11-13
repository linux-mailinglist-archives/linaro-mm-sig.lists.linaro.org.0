Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNP8CBj94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B42DF410671
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5CE4409B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:15:34 +0000 (UTC)
Received: from fhigh-a5-smtp.messagingengine.com (fhigh-a5-smtp.messagingengine.com [103.168.172.156])
	by lists.linaro.org (Postfix) with ESMTPS id 5C2783F833
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 18:37:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=P4bXbg4r;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="D pGygDW";
	dmarc=pass (policy=none) header.from=shazbot.org;
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.156 as permitted sender) smtp.mailfrom=alex@shazbot.org
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 2372C1400199;
	Thu, 13 Nov 2025 13:37:16 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Thu, 13 Nov 2025 13:37:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1763059036;
	 x=1763145436; bh=BD/WhsB8e3Zqe/+8EjZIdOgAXRaXvGfr+f2jY+eE6qA=; b=
	P4bXbg4r0oJBx/E1bztlF2B7BGiNEXyehLzephEvSFNUzMrTKBGd5gyYOihif0HP
	r2++kCNOY3yWKZAG3q7Xb6ayZXXzR4AVyDalUfLi/iaqnWpJMSUtcLuxNkehfqHm
	SnE/Ak+8J9AChVjgr7qsSBMZq9C4572WX2jxkU3XiVN9O52fhS/37VfPLpAt/tf/
	1aeR0oBeUqFwezNgYxGArK2jGJDYFKq1ffGKg/pLQRElClNVjxdu3iCDvlBgfeJF
	dVDI3dDNENZfredhGsVe+gNc8Ipt/QLOa77HOG2ezlCE0wqLjFRDpzM4dUVMIEIz
	uXFnb8YqQiEXQrOGO26g1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1763059036; x=
	1763145436; bh=BD/WhsB8e3Zqe/+8EjZIdOgAXRaXvGfr+f2jY+eE6qA=; b=D
	pGygDWLC8Oe9G09LLQDBC1/TayHNtFRtvgmEhbZmDj9ch6Rr4nqbI6m6N4mcww+N
	C41gypCxhkw6Pq0yRh1rzcPpt+qHtxQkLQdmG+Ie3KlDIeH5Cg2xPuS6Q/B16UfT
	sb2YAXQ1NJZUMMaS+ZkebiPpAbjB3B6+LTY2C57ioXpbjPqCETISXVaVdhIWq+Bv
	GGN04+Rs1E3gC6rdE65jYymY2wWx9ZfR3UZOVmPzpGraYfDXX4dxdgUSpffGY/B+
	1wyHA5S7k7dmOC//sARsVdiaxMR2jwfOqQZtGT3MKQiicg0omH0+QBgPOxCZPWyF
	u9fIjPnt4oOtYHKsVcHog==
X-ME-Sender: <xms:WyUWaf__6D7GlE4G0lv0WEbX-j95a5x7mOnxVaAwbdgwZhVfnfxtsQ>
    <xme:WyUWaQkNmUKHebBltm1E85FYBiO7HCC8Zb-6PJ8rL2Vg4CxJEk31n95aqfodpLZk5
    qPratmr-ORczzCvsXYsJv9wMYLiqqeU-ZWTpQud7NKeAR8F6AvKBg>
X-ME-Received: <xmr:WyUWaamzWAc2t2Li2SMxOVf_brfrgMMLf0weM2hGMK7azQEUHVR-6bDQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvtdejieejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfgggtgfesthejredttddtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhephedvtdeuveejudffjeefudfhueefjedvtefgffdtieeiudfhjeejhffhfeeu
    vedunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhgvgiesshhhrgiisghothdrohhrghdp
    nhgspghrtghpthhtohepvddvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehjgh
    hgsehnvhhiughirgdrtghomhdprhgtphhtthhopegthhhrihhsthhirghnrdhkohgvnhhi
    ghesrghmugdrtghomhdprhgtphhtthhopegurhhiqdguvghvvghlsehlihhsthhsrdhfrh
    gvvgguvghskhhtohhprdhorhhgpdhrtghpthhtohepihhomhhmuheslhhishhtshdrlhhi
    nhhugidruggvvhdprhgtphhtthhopehjohhroheskegshihtvghsrdhorhhgpdhrtghpth
    htohepkhgvvhhinhdrthhirghnsehinhhtvghlrdgtohhmpdhrtghpthhtohepkhhvmhes
    vhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnrghrohdqmhhmqdhsih
    hgsehlihhsthhsrdhlihhnrghrohdrohhrghdprhgtphhtthhopehlihhnuhigqdhkshgv
    lhhfthgvshhtsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:WyUWadgknQxey309jF3XVJ2yKgO_IFBsYQySnm_8sUiOGolaMmVO4A>
    <xmx:WyUWaTUZa3GLUPgwRWEoO0n0fsVxCgwAssYFOgb-oD5UOHMfbNyzPA>
    <xmx:WyUWafigRYQ2beb6l2qAlk0v2X2ItqzkqklJoDhtMWHW48aYYXTUow>
    <xmx:WyUWaX6ZoZ1wgcFp4eUYhhhHacpSfKtijoAlupBJPRUTroKQlcm1OA>
    <xmx:XCUWaSI9FcHDO5EWV-LobXCtc85dMlQA7tlAtzmFdov-aHuxhe7QJja2>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Nov 2025 13:37:13 -0500 (EST)
Date: Thu, 13 Nov 2025 11:37:12 -0700
From: Alex Williamson <alex@shazbot.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20251113113712.5691cbaf.alex@shazbot.org>
In-Reply-To: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 74LITZ3U464D4R3RVMA336PMDC3VZQOD
X-Message-ID-Hash: 74LITZ3U464D4R3RVMA336PMDC3VZQOD
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:54 +0000
CC: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, Nicolin Chen <nicolinc@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/9] Initial DMABUF support for iommufd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/74LITZ3U464D4R3RVMA336PMDC3VZQOD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3692];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.601];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,shazbot.org:mid]
X-Rspamd-Queue-Id: B42DF410671
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri,  7 Nov 2025 12:49:32 -0400
Jason Gunthorpe <jgg@nvidia.com> wrote:

> This series is the start of adding full DMABUF support to
> iommufd. Currently it is limited to only work with VFIO's DMABUF exporter.
> It sits on top of Leon's series to add a DMABUF exporter to VFIO:
> 
>   https://lore.kernel.org/r/20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com
> 
> The existing IOMMU_IOAS_MAP_FILE is enhanced to detect DMABUF fd's, but
> otherwise works the same as it does today for a memfd. The user can select
> a slice of the FD to map into the ioas and if the underliyng alignment
> requirements are met it will be placed in the iommu_domain.
> 
> Though limited, it is enough to allow a VMM like QEMU to connect MMIO BAR
> memory from VFIO to an iommu_domain controlled by iommufd. This is used
> for PCI Peer to Peer support in VMs, and is the last feature that the VFIO
> type 1 container has that iommufd couldn't do.
> 
> The VFIO type1 version extracts raw PFNs from VMAs, which has no lifetime
> control and is a use-after-free security problem.
> 
> Instead iommufd relies on revokable DMABUFs. Whenever VFIO thinks there
> should be no access to the MMIO it can shoot down the mapping in iommufd
> which will unmap it from the iommu_domain. There is no automatic remap,
> this is a safety protocol so the kernel doesn't get stuck. Userspace is
> expected to know it is doing something that will revoke the dmabuf and
> map/unmap it around the activity. Eg when QEMU goes to issue FLR it should
> do the map/unmap to iommufd.
> 
> Since DMABUF is missing some key general features for this use case it
> relies on a "private interconnect" between VFIO and iommufd via the
> vfio_pci_dma_buf_iommufd_map() call.
> 
> The call confirms the DMABUF has revoke semantics and delivers a phys_addr
> for the memory suitable for use with iommu_map().
> 
> Medium term there is a desire to expand the supported DMABUFs to include
> GPU drivers to support DPDK/SPDK type use cases so future series will work
> to add a general concept of revoke and a general negotiation of
> interconnect to remove vfio_pci_dma_buf_iommufd_map().
> 
> I also plan another series to modify iommufd's vfio_compat to
> transparently pull a dmabuf out of a VFIO VMA to emulate more of the uAPI
> of type1.
> 
> The latest series for interconnect negotation to exchange a phys_addr is:
>  https://lore.kernel.org/r/20251027044712.1676175-1-vivek.kasireddy@intel.com

If this is in development, why are we pursuing a vfio specific
temporary "private interconnect" here rather than building on that
work?  What are the gaps/barriers/timeline?

I don't see any uAPI changes here, is there any visibility to userspace
whether IOMMUFD supports this feature or is it simply a try and fail
approach?  The latter makes it difficult for management tools to select
whether to choose a VM configuration based on IOMMUFD or legacy vfio if
p2p DMA is a requirement.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
