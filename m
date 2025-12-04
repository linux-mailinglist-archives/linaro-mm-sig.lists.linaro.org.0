Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 836CACA3609
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 12:04:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BCA03F92F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 11:04:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 013D93F690
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 11:04:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=mDHHlQMb;
	spf=none (lists.linaro.org: domain of BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=QdqWywYRLnjOqYVHKgtj3N4//GIROBVw9oqa0ZS355g=; b=mDHHlQMbDwfREYyLCJJdJ8aJmE
	6GyenRcqCkKxRoFrZtrTAzkuJmDPx9SnpyYywEoSFynjyN9SklwoSdmSDfowZxY50W3FqzmHljPQU
	t5KiPaxqmH4Y/15kkfsN8pB9jttHPhePJxU9O3HOA3hfVi9o1hxy4/01QC2VUpNfRusoh7Di2sD66
	gFWlkzoJleKZVr4brAQNrUvATdbJsXvfyJhCjOsX55GYdogNpXnCY701gwoLKGR0dWMyhhxMmY1lC
	Ua2kSeQx5lg+kXy0hUoSBoAj8KgiZtc9wukhjkjBc+5wjKEn6sKI8Li0GmY91Ro/0uVhETp3HSqbU
	84isKhKQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR784-00000007tIE-2op0;
	Thu, 04 Dec 2025 11:04:08 +0000
Date: Thu, 4 Dec 2025 03:04:08 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aTFqqNMR9i89puxB@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <a86bbe2d8d105ed2c342749cd46ece2d1c537821.1763725388.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a86bbe2d8d105ed2c342749cd46ece2d1c537821.1763725388.git.asml.silence@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	R_SPF_NA(0.00)[no SPF record];
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
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 013D93F690
X-Spamd-Bar: ---
Message-ID-Hash: HOK5ZVSPWHAJZILO3ONZBYWLP75DY2RI
X-Message-ID-Hash: HOK5ZVSPWHAJZILO3ONZBYWLP75DY2RI
X-MailFrom: BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 07/11] nvme-pci: implement dma_token backed requests
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HOK5ZVSPWHAJZILO3ONZBYWLP75DY2RI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> +static void nvme_sync_dma(struct nvme_dev *nvme_dev, struct request *req,
> +			  enum dma_data_direction dir)
> +{
> +	struct blk_mq_dma_map *map = req->dma_map;
> +	int length = blk_rq_payload_bytes(req);
> +	bool for_cpu = dir == DMA_FROM_DEVICE;
> +	struct device *dev = nvme_dev->dev;
> +	dma_addr_t *dma_list = map->private;
> +	struct bio *bio = req->bio;
> +	int offset, map_idx;
> +
> +	offset = bio->bi_iter.bi_bvec_done;
> +	map_idx = offset / NVME_CTRL_PAGE_SIZE;
> +	length += offset & (NVME_CTRL_PAGE_SIZE - 1);
> +
> +	while (length > 0) {
> +		u64 dma_addr = dma_list[map_idx++];
> +
> +		if (for_cpu)
> +			__dma_sync_single_for_cpu(dev, dma_addr,
> +						  NVME_CTRL_PAGE_SIZE, dir);
> +		else
> +			__dma_sync_single_for_device(dev, dma_addr,
> +						     NVME_CTRL_PAGE_SIZE, dir);
> +		length -= NVME_CTRL_PAGE_SIZE;
> +	}

This looks really inefficient.  Usually the ranges in the dmabuf should
be much larger than a controller page.


> +static void nvme_unmap_premapped_data(struct nvme_dev *dev,
> +				      struct request *req)
> +{
> +	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
> +
> +	if (rq_data_dir(req) == READ)
> +		nvme_sync_dma(dev, req, DMA_FROM_DEVICE);
> +	if (!(iod->flags & IOD_SINGLE_SEGMENT))
> +		nvme_free_descriptors(req);
> +}

This doesn't really unmap anything :)

Also the dma ownership rules say that you always need to call the
sync_to_device helpers before I/O and the sync_to_cpu helpers after I/O,
no matters if it is a read or write.  The implementations then makes
them a no-op where possible.

> +
> +	offset = bio->bi_iter.bi_bvec_done;
> +	map_idx = offset / NVME_CTRL_PAGE_SIZE;
> +	offset &= (NVME_CTRL_PAGE_SIZE - 1);
> +
> +	prp1_dma = dma_list[map_idx++] + offset;
> +
> +	length -= (NVME_CTRL_PAGE_SIZE - offset);
> +	if (length <= 0) {
> +		prp2_dma = 0;

Urgg, why is this building PRPs instead of SGLs?  Yes, SGLs are an
optional feature, but for devices where you want to micro-optimize
like this I think we should simply require them.  This should cut
down on both the memory use and the amount of special mapping code.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
