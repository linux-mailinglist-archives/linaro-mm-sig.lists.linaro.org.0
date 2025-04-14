Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA309A87797
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 07:55:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FF2440C96
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 05:55:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 0C66440C96
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 05:55:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=I8KfdBzl;
	spf=none (lists.linaro.org: domain of BATV+77a17d6d4b98c784e272+7904+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+77a17d6d4b98c784e272+7904+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ThCKDRswempuOEJ84yo2mtU9l4yxvOGeZE8tpO0fpn4=; b=I8KfdBzlRA2N9nmXn+STRIjztw
	2+LGoe/I754+SGvknv8AkTj4J3+46jJ89atsgpbyhLPLRKCwIkQkHkK8x1oiaGMmwVYgtgeaI/Yad
	V0Fc7vx+6DT3abW+WLCZGC4V82XGjT2VZPHOwz4Zv2UgLPRWgysoSC3j7+xuf1jo3vxN6aqcXmen0
	0f+GApbMTtVUVG6rUxjfUFq1ilH/d7lGRoTrWo/O9PYM2FPirNXuIq5o68vxqqS3V1N6x8i/ODWDg
	Hoz31hEt89k+/PMu8U1jAQK6nQBGwiRk05KrDW/szU/+NcBQ9diDOH1iclyGdr2SFsrcAddYXijea
	pyEzPO8Q==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Cmc-00000000kIO-48Kt;
	Mon, 14 Apr 2025 05:55:02 +0000
Date: Sun, 13 Apr 2025 22:55:02 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Bastien Curutchet <bastien.curutchet@bootlin.com>
Message-ID: <Z_yjNgY3dVnA5OVz@infradead.org>
References: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250410-uio-dma-v1-0-6468ace2c786@bootlin.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Queue-Id: 0C66440C96
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.137.202.133:from];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[77a17d6d4b98c784e272,7904,infradead.org,hch];
	DMARC_NA(0.00)[infradead.org];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 62UC2HKQNMYBD5JWKAGEKFIFPKR6TVLA
X-Message-ID-Hash: 62UC2HKQNMYBD5JWKAGEKFIFPKR6TVLA
X-MailFrom: BATV+77a17d6d4b98c784e272+7904+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/3] uio/dma-buf: Give UIO users access to DMA addresses.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/62UC2HKQNMYBD5JWKAGEKFIFPKR6TVLA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Apr 10, 2025 at 04:53:17PM +0200, Bastien Curutchet wrote:
> Hi all,
> 
> Many UIO users performing DMA from their UIO device need to access the
> DMA addresses of the allocated buffers. There are out-of-tree drivers
> that allow to do it but nothing in the mainline.

In which case it does not matter at all for mainline.

FYI the proper and safe way to do DMA from userspace is to use
vfio/iommufd.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
