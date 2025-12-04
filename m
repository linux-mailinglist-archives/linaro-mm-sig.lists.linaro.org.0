Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5D1CA354B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 11:57:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60B963F92F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 10:57:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id BCD1F3F690
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 10:57:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=B0ieOXMA;
	spf=none (lists.linaro.org: domain of BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=htG5helYPRZeOE+g4oA9RANRm8weBs+7p0pVyLxQe2g=; b=B0ieOXMAYXJdlPHXV7V4nMYUq4
	VLEycv7k2YMzsXO9f4pJFjGny4vY4NfP8epkdhF8F38h/+6fuV6iE0gXTkh21rb/Euo7s9NNXKYYk
	jUGj2Oa358FRSerVYREYFAFFTZJxVpE+JFBwPWaISBzTDks2d3hZLzyz2S7CYoHr1Z9X0Ae9y6VRN
	2scK3Uza7PxJiVMSjoImUuRP422HIsinlaDCL/FBlW0s0ZJaNo9nCNO17ZDdgYNg3HKZ7Oz3GxSrX
	VazDtqvvKZK/WNu+J1TtwVImyE1a4yvSxyPKo+giez0CfJoEdNAzNyUrMjEIwBU8TPP/zWGBbDg5W
	PrTftRUQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR71A-00000007sn7-00ap;
	Thu, 04 Dec 2025 10:57:00 +0000
Date: Thu, 4 Dec 2025 02:56:59 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aTFo-7ufbyZnEUzd@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
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
	URIBL_BLOCKED(0.00)[infradead.org:dkim,infradead.org:mid,infradead.org:from_mime,bombadil.srs.infradead.org:from_smtp];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BCD1F3F690
X-Spamd-Bar: ---
Message-ID-Hash: 32YEPQJHUSNZHEMCNIYR4ALBPKPXXMVY
X-Message-ID-Hash: 32YEPQJHUSNZHEMCNIYR4ALBPKPXXMVY
X-MailFrom: BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 05/11] block: add infra to handle dmabuf tokens
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/32YEPQJHUSNZHEMCNIYR4ALBPKPXXMVY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Nov 23, 2025 at 10:51:25PM +0000, Pavel Begunkov wrote:
> Add blk-mq infrastructure to handle dmabuf tokens. There are two main

Please spell out infrastructure in the subject as well.

> +struct dma_token *blkdev_dma_map(struct file *file,
> +				 struct dma_token_params *params)
> +{
> +	struct request_queue *q = bdev_get_queue(file_bdev(file));
> +
> +	if (!(file->f_flags & O_DIRECT))
> +		return ERR_PTR(-EINVAL);

Shouldn't the O_DIRECT check be in the caller?

> +++ b/block/blk-mq-dma-token.c

Missing SPDX and Copyright statement.

> @@ -0,0 +1,236 @@
> +#include <linux/blk-mq-dma-token.h>
> +#include <linux/dma-resv.h>
> +
> +struct blk_mq_dma_fence {
> +	struct dma_fence base;
> +	spinlock_t lock;
> +};

And a high-level comment explaining the fencing logic would be nice
as well.

> +	struct blk_mq_dma_map *map = container_of(ref, struct blk_mq_dma_map, refs);

Overly long line.

> +static struct blk_mq_dma_map *blk_mq_alloc_dma_mapping(struct blk_mq_dma_token *token)

Another one.  Also kinda inconsistent between _map in the data structure
and _mapping in the function name.

> +static inline
> +struct blk_mq_dma_map *blk_mq_get_token_map(struct blk_mq_dma_token *token)

Really odd return value / scope formatting.

> +{
> +	struct blk_mq_dma_map *map;
> +
> +	guard(rcu)();
> +
> +	map = rcu_dereference(token->map);
> +	if (unlikely(!map || !percpu_ref_tryget_live_rcu(&map->refs)))
> +		return NULL;
> +	return map;

Please use good old rcu_read_unlock to make this readable.

> +	guard(mutex)(&token->mapping_lock);

Same.

> +
> +	map = blk_mq_get_token_map(token);
> +	if (map)
> +		return map;
> +
> +	map = blk_mq_alloc_dma_mapping(token);
> +	if (IS_ERR(map))
> +		return NULL;
> +
> +	dma_resv_lock(dmabuf->resv, NULL);
> +	ret = dma_resv_wait_timeout(dmabuf->resv, DMA_RESV_USAGE_BOOKKEEP,
> +				    true, MAX_SCHEDULE_TIMEOUT);
> +	ret = ret ? ret : -ETIME;

	if (!ret)
		ret = -ETIME;

> +blk_status_t blk_rq_assign_dma_map(struct request *rq,
> +				   struct blk_mq_dma_token *token)
> +{
> +	struct blk_mq_dma_map *map;
> +
> +	map = blk_mq_get_token_map(token);
> +	if (map)
> +		goto complete;
> +
> +	if (rq->cmd_flags & REQ_NOWAIT)
> +		return BLK_STS_AGAIN;
> +
> +	map = blk_mq_create_dma_map(token);
> +	if (IS_ERR(map))
> +		return BLK_STS_RESOURCE;

Having a few comments, that say this is creating the map lazily
would probably helper the reader.  Also why not keep the !map
case in the branch, as the map case should be the fast path and
thus usually be straight line in the function?

> +void blk_mq_dma_map_move_notify(struct blk_mq_dma_token *token)
> +{
> +	blk_mq_dma_map_remove(token);
> +}

Is there a good reason for having this blk_mq_dma_map_move_notify
wrapper?

> +	if (bio_flagged(bio, BIO_DMA_TOKEN)) {
> +		struct blk_mq_dma_token *token;
> +		blk_status_t ret;
> +
> +		token = dma_token_to_blk_mq(bio->dma_token);
> +		ret = blk_rq_assign_dma_map(rq, token);
> +		if (ret) {
> +			if (ret == BLK_STS_AGAIN) {
> +				bio_wouldblock_error(bio);
> +			} else {
> +				bio->bi_status = BLK_STS_RESOURCE;
> +				bio_endio(bio);
> +			}
> +			goto queue_exit;
> +		}
> +	}

Any reason to not just keep the dma_token_to_blk_mq?  Also why is this
overriding non-BLK_STS_AGAIN errors with BLK_STS_RESOURCE?

(I really wish we could make all BLK_STS_AGAIN errors be quiet without
the explicit setting of BIO_QUIET, which is a bit annoying, but that's
not for this patch).

> +static inline
> +struct blk_mq_dma_token *dma_token_to_blk_mq(struct dma_token *token)

More odd formatting.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
