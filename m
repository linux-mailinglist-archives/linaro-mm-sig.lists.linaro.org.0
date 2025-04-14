Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 923B2A87EED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 13:24:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A02D645FF9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 11:24:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 930224454E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 11:24:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=zqQycXN4;
	spf=none (lists.linaro.org: domain of BATV+77a17d6d4b98c784e272+7904+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+77a17d6d4b98c784e272+7904+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=KlO9Sk4hejiVYyH+invLfYMYpcyc09MHVxHMPbyfzU4=; b=zqQycXN450Ypn3ETQ6T4HLhL/w
	uS1ayxj32deBuCXN2M+pZRKAAJq8wVyritpiF5QpZBR9QdveTF0b2EZzKNrorl0srfWp1Nvj6m4hb
	I18iiUXRGNr4WRV863QDReIcHv+tBdjvFFXYzc/6pbRh+4+F0eFhliIQig7N9TWn5NSIFidkdoz0f
	Vc+5KaHOZm1eDT8JP1WMsPiVY3zV0LlHI6Y1ev4f20rG47Rn2QIRts19cNU+h0YjpkG80RyZy1bft
	5GN6LrmqEc2I4MG7WPGu27vq/sG02rvRmanctdCL8YZKdyHZ41PuA2h3vFabIfN8/vmebg6mIV3Uv
	of9xo2Cg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HvJ-00000001kmE-3jAQ;
	Mon, 14 Apr 2025 11:24:21 +0000
Date: Mon, 14 Apr 2025 04:24:21 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Message-ID: <Z_zwZYBO5Txz6lDF@infradead.org>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
 <Z_yjNgY3dVnA5OVz@infradead.org>
 <20250414102455.03331c0f@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250414102455.03331c0f@windsurf>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Queue-Id: 930224454E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[198.137.202.133:from];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[77a17d6d4b98c784e272,7904,infradead.org,hch];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FFSWQVY6CW6V6RHDSDAW4T673PA3OKIU
X-Message-ID-Hash: FFSWQVY6CW6V6RHDSDAW4T673PA3OKIU
X-MailFrom: BATV+77a17d6d4b98c784e272+7904+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Bastien Curutchet <bastien.curutchet@bootlin.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/3] uio/dma-buf: Give UIO users access to DMA addresses.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FFSWQVY6CW6V6RHDSDAW4T673PA3OKIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Apr 14, 2025 at 10:24:55AM +0200, Thomas Petazzoni wrote:
> What this patch series is about is to add new user-space interface to
> extend the existing UIO subsystem.

Which as I explained to you is fundamentally broken and unsafe.  If you
need to do DMA from userspae you need to use vfio/iommufd.

> I am not sure how this can work in our use-case. We have a very simple
> set of IP blocks implemented in a FPGA, some of those IP blocks are
> able to perform DMA operations. The register of those IP blocks are
> mapped into a user-space application using the existing, accepted
> upstream, UIO subsystem. Some of those registers allow to program DMA
> transfers. So far, we can do all what we need, except program those DMA
> transfers. Lots of people are having the same issue, and zillions of
> ugly out-of-tree solutions flourish all over, and we're trying to see
> if we can constructively find a solution that would be acceptable
> upstream to resolve this use-case. Our platform is an old PowerPC with
> no IOMMU.

Then your driver design can't work and you need to replace it with a
proper in-kernel driver.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
