Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4B29340E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jul 2024 19:03:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E03B42B37
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jul 2024 17:03:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id ED0BE40B40
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jul 2024 17:03:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=4spTy3FP;
	spf=none (lists.linaro.org: domain of BATV+f1b72a524681918e3418+7633+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+f1b72a524681918e3418+7633+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=btjX+x6cX8ZBL/5bFIlgNMCTbIAJLEehWyH8wcIpEtA=; b=4spTy3FPwrLHyxqFzvVKuk6IsZ
	dWB88354/QeLzMTejtZXsLORI5PI06SASnDbophFtwoS/jmsYRzStFitTD4QQxFM+4Q34EYee4KrS
	EwfERdLiKdeKKYApRpDYHcrfplLTCMNqnaGPurJACPcgfPOMpveONFMFsiIC2j1UQa9qj0DPaRpY1
	zjCBvgds+6kDB+08OVrG96LOpkRnFlgAl3MT5L0xMk6dNdSMEE0gh5lJ/HX6CiEtddkeZTkKtXHLY
	d9s7NAoSza++7qxIxMb0t1tdfTJ/3t9nFTFRjSJPZhrVeC108Wvk9LsjhGL+mvL7PkuEbhfBigQge
	Mb9I9eww==;
Received: from hch by bombadil.infradead.org with local (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU83U-0000000EQZG-0AYB;
	Wed, 17 Jul 2024 17:03:04 +0000
Date: Wed, 17 Jul 2024 10:03:03 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Huan Yang <link@vivo.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
Message-ID: <Zpf5R7fRZZmEwVuR@infradead.org>
References: <20240711074221.459589-1-link@vivo.com>
 <20240711074221.459589-2-link@vivo.com>
 <5ccbe705-883c-4651-9e66-6b452c414c74@amd.com>
 <ZpTnzkdolpEwFbtu@phenom.ffwll.local>
 <99364176-a7f0-4a17-8889-75ff92d5694e@amd.com>
 <06713006-c5ce-4773-a1b3-ca3bea56ee45@vivo.com>
 <ZpY-CfcDdEhzWpxN@phenom.ffwll.local>
 <b18ad853-90e4-4ad7-b621-2ca8a8111708@vivo.com>
 <Zpff-8LmqK5AD-a8@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zpff-8LmqK5AD-a8@phenom.ffwll.local>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Queue-Id: ED0BE40B40
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
	RCPT_COUNT_TWELVE(0.00)[12];
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
	TAGGED_FROM(0.00)[f1b72a524681918e3418,7633,infradead.org,hch];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2DWDOSDTDSANQWA3QW4CP7WTJMXELQKT
X-Message-ID-Hash: 2DWDOSDTDSANQWA3QW4CP7WTJMXELQKT
X-MailFrom: BATV+f1b72a524681918e3418+7633+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: heaps: DMA_HEAP_IOCTL_ALLOC_READ_FILE framework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2DWDOSDTDSANQWA3QW4CP7WTJMXELQKT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jul 17, 2024 at 05:15:07PM +0200, Daniel Vetter wrote:
> I'm talking about memfd, not dma-buf here. I think copy_file_range to
> dma-buf is as architecturally unsound as allowing O_DIRECT on the dma-buf
> mmap.

copy_file_range only work inside the same file system anyway, so
it is completely irrelevant here.

What should work just fine is using sendfile (or splice if you like it
complicated) to write TO the dma buf.  That just iterates over the page
cache on the source file and calls ->write_iter from the page cache
pages.  Of course that requires that you actually implement
->write_iter, but given that dmabufs support mmaping there I can't
see why you should not be able to write to it.

Reading FROM the dma buf in that fashion should also work if you provide
a ->read_iter wire up ->splice_read to copy_splice_read so that it
doesn't require any page cache.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
