Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B25293469A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jul 2024 05:08:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56FC7411D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jul 2024 03:08:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 229BA3F975
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jul 2024 03:08:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=IpuNKge5;
	spf=none (lists.linaro.org: domain of BATV+8a855cc45d05e91dc6c7+7634+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+8a855cc45d05e91dc6c7+7634+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=dhbKOOXLOR2dvKgzNkDsF4yaQ6Osy862xbMrlR1zrlQ=; b=IpuNKge5/alV6Zh+IIdYK02o6o
	mQ6vK/76s7+pxU7WODCEyWz/6yKYMACOjWbuNN4pfqaGfqwjrVJvk6szr8URtWhT3CD8Yu6EV2RJ+
	LdboflFJOE/rpX8VL8rN7I795cKHfm5U9BD7/mom5/xJnC9F0ggILKciQJ60LMLmE/a0MYkBudjWs
	909niZLucPZQkdPbI9FbVL0SFbseSieO4T6Xf2faKmBw/AVRNmqLdd3jX7OUD7F94MesgwTfOqdk6
	6g66H6TUQnwT6o6pwSBBVSI/GEyDRUbkc38BZbKtUB5rZ884cpQMrPjBckplXxQTjxXMykRDG6Z9C
	Z99aa10A==;
Received: from hch by bombadil.infradead.org with local (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUHVJ-0000000FavV-24cO;
	Thu, 18 Jul 2024 03:08:25 +0000
Date: Wed, 17 Jul 2024 20:08:25 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Huan Yang <link@vivo.com>
Message-ID: <ZpiHKY2pGiBuEq4z@infradead.org>
References: <20240711074221.459589-2-link@vivo.com>
 <5ccbe705-883c-4651-9e66-6b452c414c74@amd.com>
 <ZpTnzkdolpEwFbtu@phenom.ffwll.local>
 <99364176-a7f0-4a17-8889-75ff92d5694e@amd.com>
 <06713006-c5ce-4773-a1b3-ca3bea56ee45@vivo.com>
 <ZpY-CfcDdEhzWpxN@phenom.ffwll.local>
 <b18ad853-90e4-4ad7-b621-2ca8a8111708@vivo.com>
 <Zpff-8LmqK5AD-a8@phenom.ffwll.local>
 <Zpf5R7fRZZmEwVuR@infradead.org>
 <7140a145-7dd5-43b0-8b2a-0fd12bb9e62d@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7140a145-7dd5-43b0-8b2a-0fd12bb9e62d@vivo.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Queue-Id: 229BA3F975
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DMARC_NA(0.00)[infradead.org];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[8a855cc45d05e91dc6c7,7634,infradead.org,hch];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7HRRA6SR47Q2XD7C2WJRFXTP76FLC3KB
X-Message-ID-Hash: 7HRRA6SR47Q2XD7C2WJRFXTP76FLC3KB
X-MailFrom: BATV+8a855cc45d05e91dc6c7+7634+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: heaps: DMA_HEAP_IOCTL_ALLOC_READ_FILE framework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7HRRA6SR47Q2XD7C2WJRFXTP76FLC3KB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 18, 2024 at 09:51:39AM +0800, Huan Yang wrote:
> Yes, actually, if dma-buf want's to copy_file_range from a file, it need
> change something in vfs_copy_file_range:

No, it doesn't.  copy_file_range is specifically designed to copy inside
a single file system as already mentioned.  The generic offload for
copying between arbitrary FDs is splice and the sendfile convenience
wrapper around it

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
