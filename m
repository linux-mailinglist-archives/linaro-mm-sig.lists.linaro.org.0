Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A66CA35C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 12:00:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B2E93F93E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 11:00:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 630973F8F5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 11:00:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=j4xMVX6Z;
	spf=none (lists.linaro.org: domain of BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=CPr0hvEES4qg8auZHNPhlav8VYvcjZHHtnyCgzRk7/Q=; b=j4xMVX6ZqZNzIKK7H67VWZejnQ
	Kgu78x5aQjjrblW6go6clzkBgsCDWr97rkpZlveFVGe/BDl4XA8cQfZjkJkhRSB+VKhxW4YHvFaTj
	JUjNIDgbI+mfFbj6rLWt6yZef2J9Waj9nNQr/kP0usxMgvPWhTzFitvmCs6XBhrmJExYVJt7BujRY
	z7x/LW1+PP0TpGBKiS6kxRgsLeUyWTcTq/mnV3W3YVhSX05yFPyNREe6hkKqVcUAsZkStxTjqC399
	hY4PIvozZep5fClhJPCsdOsCMmyDwNMVpqYHUIeopPmVoKLAymEx3HQRIY/gwcvE10CS32FEzNY0V
	Eggmh0TQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR746-00000007t0z-3wxL;
	Thu, 04 Dec 2025 11:00:02 +0000
Date: Thu, 4 Dec 2025 03:00:02 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aTFpsl3o7IoJ_xPg@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <9bc25f46d2116436d73140cd8e8554576de2caca.1763725388.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bc25f46d2116436d73140cd8e8554576de2caca.1763725388.git.asml.silence@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[198.137.202.133:server fail];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[bombadil.srs.infradead.org:from_smtp,infradead.org:dkim,infradead.org:mid,infradead.org:from_mime];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 630973F8F5
X-Spamd-Bar: ---
Message-ID-Hash: REWYYFKAFEACA2MEBEMS3KF7M2EDWJBX
X-Message-ID-Hash: REWYYFKAFEACA2MEBEMS3KF7M2EDWJBX
X-MailFrom: BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 06/11] nvme-pci: add support for dmabuf reggistration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/REWYYFKAFEACA2MEBEMS3KF7M2EDWJBX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Splitting this trivial stub from the substantial parts in the next patch
feels odd.  Please merge them.

(and better commit logs and comments really would be useful for others
to understand what you've done).

> +const struct dma_buf_attach_ops nvme_dmabuf_importer_ops = {
> +	.move_notify = nvme_dmabuf_move_notify,
> +	.allow_peer2peer = true,
> +};

Tab-align the =, please.

> +static int nvme_init_dma_token(struct request_queue *q,
> +				struct blk_mq_dma_token *token)
> +{
> +	struct dma_buf_attachment *attach;
> +	struct nvme_ns *ns = q->queuedata;
> +	struct nvme_dev *dev = to_nvme_dev(ns->ctrl);
> +	struct dma_buf *dmabuf = token->dmabuf;
> +
> +	if (dmabuf->size % NVME_CTRL_PAGE_SIZE)
> +		return -EINVAL;

Why do you care about alignment to the controller page size?

> +	for_each_sgtable_dma_sg(sgt, sg, tmp) {
> +		dma_addr_t dma = sg_dma_address(sg);
> +		unsigned long sg_len = sg_dma_len(sg);
> +
> +		while (sg_len) {
> +			dma_list[i++] = dma;
> +			dma += NVME_CTRL_PAGE_SIZE;
> +			sg_len -= NVME_CTRL_PAGE_SIZE;
> +		}
> +	}

Why does this build controller pages sized chunks?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
