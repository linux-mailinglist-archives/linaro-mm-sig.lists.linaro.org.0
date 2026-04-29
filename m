Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OwnNY5dBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3F8532079
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6C834044C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:16:29 +0000 (UTC)
Received: from arkamax.eu (128-116-240-228.dyn.eolo.it [128.116.240.228])
	by lists.linaro.org (Postfix) with ESMTPS id 318423F80C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 16:07:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of mlombard@arkamax.eu designates 128.116.240.228 as permitted sender) smtp.mailfrom=mlombard@arkamax.eu
Received: from localhost (128-116-240-228.dyn.eolo.it [128.116.240.228])
	by arkamax.eu (OpenSMTPD) with ESMTPSA id 8ebc5e10 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 29 Apr 2026 18:07:48 +0200 (CEST)
Mime-Version: 1.0
Date: Wed, 29 Apr 2026 18:07:47 +0200
Message-Id: <DI5RO76D5IWR.19K0ES58HUIVS@arkamax.eu>
From: "Maurizio Lombardi" <mlombard@arkamax.eu>
To: "Pavel Begunkov" <asml.silence@gmail.com>, "Jens Axboe"
 <axboe@kernel.dk>, "Keith Busch" <kbusch@kernel.org>, "Christoph Hellwig"
 <hch@lst.de>, "Sagi Grimberg" <sagi@grimberg.me>, "Alexander Viro"
 <viro@zeniv.linux.org.uk>, "Christian Brauner" <brauner@kernel.org>,
 "Andrew Morton" <akpm@linux-foundation.org>, "Sumit Semwal"
 <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, <linux-block@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-nvme@lists.infradead.org>,
 <linux-fsdevel@vger.kernel.org>, <io-uring@vger.kernel.org>,
 <linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linaro-mm-sig@lists.linaro.org>
X-Mailer: aerc 0.21.0
References: <cover.1777475843.git.asml.silence@gmail.com>
 <5cecb1157ab784f9f303a91449fdf11b03aa6002.1777475843.git.asml.silence@gmail.com>
In-Reply-To: <5cecb1157ab784f9f303a91449fdf11b03aa6002.1777475843.git.asml.silence@gmail.com>
X-Spamd-Bar: /
X-MailFrom: mlombard@arkamax.eu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VCNVGRZUFXDNWTLPPJGNWBMDBG6YPNMX
X-Message-ID-Hash: VCNVGRZUFXDNWTLPPJGNWBMDBG6YPNMX
X-Mailman-Approved-At: Wed, 13 May 2026 11:15:56 +0000
CC: Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/10] nvme-pci: implement dma_token backed requests
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VCNVGRZUFXDNWTLPPJGNWBMDBG6YPNMX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8E3F8532079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[arkamax.eu : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[331];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.dk,kernel.org,lst.de,grimberg.me,zeniv.linux.org.uk,linux-foundation.org,linaro.org,amd.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mlombard@arkamax.eu,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On Wed Apr 29, 2026 at 5:25 PM CEST, Pavel Begunkov wrote:
> Enable BIO_DMABUF_MAP backed requests. It creates a prp list for the
> dmabuf when it's mapped, which is then used to initialise requests.
>
> Suggested-by: Keith Busch <kbusch@kernel.org>
> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
> ---
>  drivers/nvme/host/pci.c | 282 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 282 insertions(+)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index db5fc9bf6627..d2629853a972 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -27,6 +27,8 @@
>  #include <linux/io-64-nonatomic-lo-hi.h>
>  #include <linux/io-64-nonatomic-hi-lo.h>
>  #include <linux/sed-opal.h>
> +#include <linux/io_dmabuf_token.h>
> +#include <linux/dma-resv.h>
>  
>  #include "trace.h"
>  #include "nvme.h"
> @@ -393,6 +395,17 @@ struct nvme_queue {
>  	struct completion delete_done;
>  };
>  
> +struct nvme_dmabuf_token {
> +	struct dma_buf_attachment *attach;
> +};
> +
> +struct nvme_dmabuf_map {
> +	struct io_dmabuf_map base;
> +	dma_addr_t *dma_list;
> +	struct sg_table *sgt;
> +	unsigned nr_entries;
> +};
> +
>  /* bits for iod->flags */
>  enum nvme_iod_flags {
>  	/* this command has been aborted by the timeout handler */
> @@ -854,6 +867,134 @@ static void nvme_free_descriptors(struct request *req)
>  	}
>  }
>  
> +static void nvme_dmabuf_map_sync(struct nvme_dev *nvme_dev, struct request *req,
> +				 bool for_cpu)
> +{
> +	int length = blk_rq_payload_bytes(req);
> +	struct device *dev = nvme_dev->dev;
> +	enum dma_data_direction dma_dir;
> +	struct bio *bio = req->bio;
> +	struct nvme_dmabuf_map *map;
> +	dma_addr_t *dma_list;
> +	int offset, map_idx;
> +
> +	dma_dir = rq_data_dir(req) == READ ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
> +	map = container_of(bio->dmabuf_map, struct nvme_dmabuf_map, base);
> +	dma_list = map->dma_list;
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
> +						  NVME_CTRL_PAGE_SIZE, dma_dir);
> +		else
> +			__dma_sync_single_for_device(dev, dma_addr,
> +						     NVME_CTRL_PAGE_SIZE,
> +						     dma_dir);
> +		length -= NVME_CTRL_PAGE_SIZE;
> +	}
> +}
> +
> +static void nvme_rq_clean_dmabuf_map(struct nvme_dev *dev,
> +				      struct request *req)
> +{
> +	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
> +
> +	nvme_dmabuf_map_sync(dev, req, true);
> +
> +	if (!(iod->flags & IOD_SINGLE_SEGMENT))
> +		nvme_free_descriptors(req);
> +}
> +
> +static blk_status_t nvme_rq_setup_dmabuf_map(struct request *req,
> +					     struct nvme_queue *nvmeq)
> +{
> +	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
> +	int length = blk_rq_payload_bytes(req);
> +	u64 dma_addr, prp1_dma, prp2_dma;
> +	struct bio *bio = req->bio;
> +	struct nvme_dmabuf_map *map;
> +	dma_addr_t *dma_list;
> +	dma_addr_t prp_dma;
> +	__le64 *prp_list;
> +	int i, map_idx;
> +	int offset;
> +
> +	nvme_dmabuf_map_sync(nvmeq->dev, req, false);
> +
> +	map = container_of(bio->dmabuf_map, struct nvme_dmabuf_map, base);
> +	dma_list = map->dma_list;
> +
> +	offset = bio->bi_iter.bi_bvec_done;
> +	map_idx = offset / NVME_CTRL_PAGE_SIZE;
> +	offset &= (NVME_CTRL_PAGE_SIZE - 1);
> +	prp1_dma = dma_list[map_idx++] + offset;
> +
> +	length -= (NVME_CTRL_PAGE_SIZE - offset);
> +	if (length <= 0) {
> +		prp2_dma = 0;
> +		goto done;
> +	}
> +
> +	if (length <= NVME_CTRL_PAGE_SIZE) {
> +		prp2_dma = dma_list[map_idx];
> +		goto done;
> +	}
> +
> +	if (DIV_ROUND_UP(length, NVME_CTRL_PAGE_SIZE) <=
> +	    NVME_SMALL_POOL_SIZE / sizeof(__le64))
> +		iod->flags |= IOD_SMALL_DESCRIPTOR;
> +
> +	prp_list = dma_pool_alloc(nvme_dma_pool(nvmeq, iod), GFP_ATOMIC,
> +			&prp_dma);
> +	if (!prp_list)
> +		return BLK_STS_RESOURCE;
> +
> +	iod->descriptors[iod->nr_descriptors++] = prp_list;
> +	prp2_dma = prp_dma;
> +	i = 0;
> +	for (;;) {
> +		if (i == NVME_CTRL_PAGE_SIZE >> 3) {
> +			__le64 *old_prp_list = prp_list;
> +
> +			prp_list = dma_pool_alloc(nvmeq->descriptor_pools.large,
> +					GFP_ATOMIC, &prp_dma);
> +			if (!prp_list)
> +				goto free_prps;
> +			iod->descriptors[iod->nr_descriptors++] = prp_list;
> +			prp_list[0] = old_prp_list[i - 1];
> +			old_prp_list[i - 1] = cpu_to_le64(prp_dma);
> +			i = 1;
> +		}
> +
> +		dma_addr = dma_list[map_idx++];
> +		prp_list[i++] = cpu_to_le64(dma_addr);
> +
> +		length -= NVME_CTRL_PAGE_SIZE;
> +		if (length <= 0)
> +			break;
> +	}
> +done:
> +	iod->cmd.common.dptr.prp1 = cpu_to_le64(prp1_dma);
> +	iod->cmd.common.dptr.prp2 = cpu_to_le64(prp2_dma);
> +	return BLK_STS_OK;
> +free_prps:
> +	nvme_free_descriptors(req);
> +	return BLK_STS_RESOURCE;
> +}
> +
> +static inline bool nvme_rq_is_dmabuf_attached(struct request *req)
> +{
> +	if (!IS_ENABLED(CONFIG_DMABUF_TOKEN))
> +		return false;
> +	return req->bio && bio_flagged(req->bio, BIO_DMABUF_MAP);
> +}
> +
>  static void nvme_free_prps(struct request *req, unsigned int attrs)
>  {
>  	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
> @@ -932,6 +1073,11 @@ static void nvme_unmap_data(struct request *req)
>  	struct device *dma_dev = nvmeq->dev->dev;
>  	unsigned int attrs = 0;
>  
> +	if (nvme_rq_is_dmabuf_attached(req)) {
> +		nvme_rq_clean_dmabuf_map(nvmeq->dev, req);
> +		return;
> +	}
> +
>  	if (iod->flags & IOD_SINGLE_SEGMENT) {
>  		static_assert(offsetof(union nvme_data_ptr, prp1) ==
>  				offsetof(union nvme_data_ptr, sgl.addr));
> @@ -1222,6 +1368,9 @@ static blk_status_t nvme_map_data(struct request *req)
>  	struct blk_dma_iter iter;
>  	blk_status_t ret;
>  
> +	if (nvme_rq_is_dmabuf_attached(req))
> +		return nvme_rq_setup_dmabuf_map(req, nvmeq);
> +
>  	/*
>  	 * Try to skip the DMA iterator for single segment requests, as that
>  	 * significantly improves performances for small I/O sizes.
> @@ -2238,6 +2387,134 @@ static int nvme_create_queue(struct nvme_queue *nvmeq, int qid, bool polled)
>  	return result;
>  }
>  
> +#ifdef CONFIG_DMABUF_TOKEN
> +static void nvme_dmabuf_invalidate_mappings(struct dma_buf_attachment *attach)
> +{
> +	struct io_dmabuf_token *token = attach->importer_priv;
> +
> +	io_dmabuf_token_invalidate_mappings(token);
> +}
> +
> +const struct dma_buf_attach_ops nvme_dmabuf_importer_ops = {
> +	.invalidate_mappings	= nvme_dmabuf_invalidate_mappings,
> +	.allow_peer2peer	= true,
> +};
> +
> +static struct io_dmabuf_map *nvme_dmabuf_token_map(struct io_dmabuf_token *token)
> +{
> +	struct nvme_dmabuf_token *data = token->dev_priv;
> +	struct dma_buf_attachment *attach = data->attach;
> +	dma_addr_t *dma_list = NULL;
> +	unsigned long tmp, i = 0;
> +	struct nvme_dmabuf_map *map;
> +	struct scatterlist *sg;
> +	struct sg_table *sgt;
> +	unsigned nr_entries;
> +	int ret;
> +
> +	dma_resv_assert_held(token->dmabuf->resv);
> +
> +	map = kmalloc(sizeof(*map), GFP_KERNEL);
> +	if (!map)
> +		return ERR_PTR(-ENOMEM);
> +
> +	nr_entries = token->dmabuf->size / NVME_CTRL_PAGE_SIZE;
> +	dma_list = kmalloc_array(nr_entries, sizeof(dma_list[0]), GFP_KERNEL);
> +	if (!dma_list) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	sgt = dma_buf_map_attachment(attach, token->dir);
> +	if (IS_ERR(sgt)) {
> +		ret = PTR_ERR(sgt);
> +		sgt = NULL;
> +		goto err;
> +	}
> +
> +	for_each_sgtable_dma_sg(sgt, sg, tmp) {
> +		dma_addr_t dma_addr = sg_dma_address(sg);
> +		unsigned long sg_len = sg_dma_len(sg);
> +
> +		if (sg_len % NVME_CTRL_PAGE_SIZE) {
> +			ret = -EINVAL;
> +			goto err;
> +		}
> +
> +		while (sg_len) {
> +			dma_list[i++] = dma_addr;
> +			dma_addr += NVME_CTRL_PAGE_SIZE;
> +			sg_len -= NVME_CTRL_PAGE_SIZE;
> +		}
> +	}
> +
> +	ret = io_dmabuf_init_map(token, &map->base);
> +	if (ret)
> +		goto err;
> +	map->nr_entries = nr_entries;
> +	map->dma_list = dma_list;
> +	map->sgt = sgt;
> +	return &map->base;
> +err:
> +	if (sgt)
> +		dma_buf_unmap_attachment(attach, sgt, token->dir);
> +	kfree(map);
> +	kfree(dma_list);
> +	return ERR_PTR(ret);
> +}
> +
> +static void nvme_dmabuf_token_unmap(struct io_dmabuf_token *token,
> +				 struct io_dmabuf_map *map_base)
> +{
> +	struct nvme_dmabuf_token *data = token->dev_priv;
> +	struct nvme_dmabuf_map *map = container_of(map_base,
> +						struct nvme_dmabuf_map, base);
> +
> +	dma_resv_assert_held(token->dmabuf->resv);
> +
> +	dma_buf_unmap_attachment(data->attach, map->sgt, token->dir);
> +	kfree(map->dma_list);
> +}
> +
> +static void nvme_dmabuf_token_release(struct io_dmabuf_token *token)
> +{
> +	struct nvme_dmabuf_token *data = token->dev_priv;
> +
> +	dma_buf_detach(token->dmabuf, data->attach);
> +	kfree(data);
> +}
> +
> +const struct io_dmabuf_token_dev_ops nvme_dma_token_ops = {
> +	.map		= nvme_dmabuf_token_map,
> +	.unmap		= nvme_dmabuf_token_unmap,
> +	.release	= nvme_dmabuf_token_release,
> +};
> +
> +static int nvme_create_dmabuf_token(struct request_queue *q,
> +				 struct io_dmabuf_token *token)
> +{
> +	struct nvme_dmabuf_token *data;
> +	struct dma_buf_attachment *attach;
> +	struct nvme_ns *ns = q->queuedata;
> +	struct nvme_dev *dev = to_nvme_dev(ns->ctrl);
> +	struct dma_buf *dmabuf = token->dmabuf;
> +
> +	data = kzalloc(sizeof(data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;

Shouldn't this be kzalloc(sizeof(*data)...) ?

Also, checkpatch generates a warning because kzalloc_obj() should be
preferred for this kind of memory allocations over kzalloc().

> +
> +	token->dev_priv = data;
> +	token->dev_ops = &nvme_dma_token_ops;
> +
> +	attach = dma_buf_dynamic_attach(dmabuf, dev->dev,
> +					&nvme_dmabuf_importer_ops, token);
> +	if (IS_ERR(attach))
> +		return PTR_ERR(attach);

Supposing dma_buf_dynamic_attach() returns an error, won't the 'data'
pointer be leaked?

Maurizio
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
