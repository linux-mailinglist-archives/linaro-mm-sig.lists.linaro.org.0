Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB50CA34AF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 11:48:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0CEC3F83F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 10:48:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 7E2623F8F5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 10:48:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=M8iBbu9P;
	spf=none (lists.linaro.org: domain of BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=qChLaZR5s/GOpATx/ro3bLhyDBLy5vLepXdMy3KpsPw=; b=M8iBbu9PONMlpy6WlRxFuR4Ird
	98MVr8TkAx0Sgemgdq3Gu41MKeQPWi1aaNa50zkkYIyi5pG+WGKlMBygLzm+NAJRi3rGibTu65dmT
	Dz5l9oFrIwraG/+DFZcvGP6hOXtxX00lCB9HhOR/drO26CMYRuuxCgvuiTl4JfFPokU5knc0O62X0
	LgK2ulE/AGz9lYClwgZtmEGLsfv6BmVifbsy4ArB6FOnet9t+1l0d9xYGHg6t1KLqr5mXgIMH5Bio
	G2nqv9ApYUOWrniW3EdFQS0+jjSlmK1UCcAUOQvAst8P5C+u3YPS8b4cHGdz/CriIIYL++uYjs2n4
	5qmYwVmQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR6sX-00000007rlX-2Wlb;
	Thu, 04 Dec 2025 10:48:05 +0000
Date: Thu, 4 Dec 2025 02:48:05 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aTFm5dHzH3IRID8o@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <12530de6d1907afb44be3e76e7668b935f1fd441.1763725387.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12530de6d1907afb44be3e76e7668b935f1fd441.1763725387.git.asml.silence@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[bombadil.srs.infradead.org:from_smtp];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7E2623F8F5
X-Spamd-Bar: ---
Message-ID-Hash: NC5JURIXAPMORELPMPAXLF6LG2FYI5MI
X-Message-ID-Hash: NC5JURIXAPMORELPMPAXLF6LG2FYI5MI
X-MailFrom: BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 04/11] block: introduce dma token backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NC5JURIXAPMORELPMPAXLF6LG2FYI5MI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> diff --git a/block/bio.c b/block/bio.c
> index 7b13bdf72de0..8793f1ee559d 100644
> --- a/block/bio.c
> +++ b/block/bio.c
> @@ -843,6 +843,11 @@ static int __bio_clone(struct bio *bio, struct bio *bio_src, gfp_t gfp)
>  		bio_clone_blkg_association(bio, bio_src);
>  	}
>  
> +	if (bio_flagged(bio_src, BIO_DMA_TOKEN)) {
> +		bio->dma_token = bio_src->dma_token;
> +		bio_set_flag(bio, BIO_DMA_TOKEN);
> +	}

Historically __bio_clone itself does not clone the payload, just the
bio.  But we got rid of the callers that want to clone a bio but not
the payload long time ago.

I'd suggest a prep patch that moves assigning bi_io_vec from
bio_alloc_clone and bio_init_clone into __bio_clone, and given that they
are the same field that'll take carw of the dma token as well.
Alternatively do it in an if/else that the compiler will hopefully
optimize away.

> @@ -1349,6 +1366,10 @@ int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter,
>  		bio_iov_bvec_set(bio, iter);
>  		iov_iter_advance(iter, bio->bi_iter.bi_size);
>  		return 0;
> +	} else if (iov_iter_is_dma_token(iter)) {

No else after an return please.

> +++ b/block/blk-merge.c
> @@ -328,6 +328,29 @@ int bio_split_io_at(struct bio *bio, const struct queue_limits *lim,
>  	unsigned nsegs = 0, bytes = 0, gaps = 0;
>  	struct bvec_iter iter;
>  
> +	if (bio_flagged(bio, BIO_DMA_TOKEN)) {

Please split the dmabuf logic into a self-contained
helper here.

> +		int offset = offset_in_page(bio->bi_iter.bi_bvec_done);
> +
> +		nsegs = ALIGN(bio->bi_iter.bi_size + offset, PAGE_SIZE);
> +		nsegs >>= PAGE_SHIFT;

Why are we hardcoding PAGE_SIZE based "segments" here?

> +
> +		if (offset & lim->dma_alignment || bytes & len_align_mask)
> +			return -EINVAL;
> +
> +		if (bio->bi_iter.bi_size > max_bytes) {
> +			bytes = max_bytes;
> +			nsegs = (bytes + offset) >> PAGE_SHIFT;
> +			goto split;
> +		} else if (nsegs > lim->max_segments) {

No else after a goto either.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
