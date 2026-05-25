Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B1KNlPkE2rhHAcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 07:55:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 666835C6143
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 07:55:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E31024049E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 05:55:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 3667A3F787
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2026 05:55:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=xlW8pfbL;
	spf=none (lists.linaro.org: domain of BATV+728b97dfb722ff21c2bb+8310+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+728b97dfb722ff21c2bb+8310+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=/zIwOpbitf7WLzXzmB3Euq/uS1lyI9bpSUSP2miWa70=; b=xlW8pfbLdj/TK2bo5zU5BLi1bi
	jXwYk8Y8nVYNhtjUqqjt3d92LokhxVkY/NxR8seyumuHMG7iW8bK/ScSNopbOZj5pRUSnwtr3WsHP
	gf3/rdFOt15PtkKSruX9KWpjTwi6h+ZvvnzJxrTLjfE7IaStcaX7xj/4BXCuYsPpBBUMbnhDKGu54
	KvEpOKXXLA53tq0dssb4vb78JUFKDShhxhp4oQykeU+KAsnH3hlDqrhRK+xS3AutnIROYAdj3BHii
	n0/1TsZzWNZPhBVyfdxUrDxo5Fk1V+e4skjVlx5HZfDmDfIj0mFT/Jp3ga1/CdC8g5jPzF4N9gL2b
	aaPGt9RA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wROHS-0000000GMhh-4BHY;
	Mon, 25 May 2026 05:55:14 +0000
Date: Sun, 24 May 2026 22:55:14 -0700
From: Christoph Hellwig <hch@infradead.org>
To: John Hubbard <jhubbard@nvidia.com>
Message-ID: <ahPkQgCg_52sxkYH@infradead.org>
References: <20260523011117.121390-1-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260523011117.121390-1-jhubbard@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spamd-Bar: ---
Message-ID-Hash: 7GMAKKEL2EAUDHRWKHB2HS2PAN5MALRK
X-Message-ID-Hash: 7GMAKKEL2EAUDHRWKHB2HS2PAN5MALRK
X-MailFrom: BATV+728b97dfb722ff21c2bb+8310+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christian Brauner <brauner@kernel.org>, Jens Axboe <axboe@kernel.dk>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: set SB_I_NOEXEC and SB_I_NODEV on the pseudo filesystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7GMAKKEL2EAUDHRWKHB2HS2PAN5MALRK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 666835C6143
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 06:11:17PM -0700, John Hubbard wrote:
> The dma-buf pseudo filesystem dispenses S_ANON_INODE inodes via
> alloc_anon_inode() but never sets SB_I_NOEXEC on its superblock.
> Since commit 1e7ab6f67824 ("anon_inode: rework assertions") in 6.17,
> path_noexec() warns on exactly that combination, so an mmap() on any
> dma-buf fd trips the warning:

Just as last time this came up, we really should set this higher up.
There isn't really a reason why pseudofses should not set SB_I_NOEXEC
by default.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
