Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULDhHY4/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:46:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F36E357CBCA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:46:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 166B73F829
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:46:37 +0000 (UTC)
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by lists.linaro.org (Postfix) with ESMTPS id ED192404D0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 10:18:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=M7Kg9NpC;
	spf=pass (lists.linaro.org: domain of anuj20.g@samsung.com designates 203.254.224.25 as permitted sender) smtp.mailfrom=anuj20.g@samsung.com;
	dmarc=pass (policy=none) header.from=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260518101848epoutp02e1971adfb981fb6f0c09753a17b9064d~woZhcIF0k0234502345epoutp02n
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 10:18:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260518101848epoutp02e1971adfb981fb6f0c09753a17b9064d~woZhcIF0k0234502345epoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1779099528;
	bh=AC3DsS6WkhVfH7c3CTSyK//O8EcqzwniBI6lGRkZZsU=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=M7Kg9NpCTyjhzTAkh1MwSRgs5/P7S501/GIoFtAn6lEi40YFO6YeTmJvjiBJsYfuT
	 cyGRuQdbiPFba9oGrBcUKjerwuYQBcoLaAKH26vVLRH2+t5m+eIiZ77C2OnKt0eZbY
	 Zgrmscd2h/eSY58icf0lFirCCxs7zerVsiW7C4F0=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260518101847epcas5p20c363dbebbd73fd72a0354d8a15e55fd~woZg4Vhra2884028840epcas5p2m;
	Mon, 18 May 2026 10:18:47 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.89]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4gJv0Q6lJTz6B9m5; Mon, 18 May
	2026 10:18:46 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20260518101846epcas5p3ae97aef88bd9239a92120368958a4a6e~woZfgA5GW2694926949epcas5p3z;
	Mon, 18 May 2026 10:18:46 +0000 (GMT)
Received: from [107.122.10.194] (unknown [107.122.10.194]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260518101843epsmtip16d0504c0f9985d04573419140d5cc9af~woZcw0Yjg1875218752epsmtip1S;
	Mon, 18 May 2026 10:18:43 +0000 (GMT)
Message-ID: <f9e04625-50c6-4fa9-8b12-76496e29f10c@samsung.com>
Date: Mon, 18 May 2026 15:48:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>, Christoph Hellwig <hch@lst.de>
Content-Language: en-US
From: Anuj Gupta/Anuj Gupta <anuj20.g@samsung.com>
In-Reply-To: <50ed7240-d8d3-4816-bcc9-ce8adbbbf841@gmail.com>
X-CMS-MailID: 20260518101846epcas5p3ae97aef88bd9239a92120368958a4a6e
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260518092930epcas5p30d3b49f26efa5969ddcdb15351a886f3
References: <cover.1777475843.git.asml.silence@gmail.com>
	<5cecb1157ab784f9f303a91449fdf11b03aa6002.1777475843.git.asml.silence@gmail.com>
	<20260513083817.GC6461@lst.de>
	<CGME20260518092930epcas5p30d3b49f26efa5969ddcdb15351a886f3@epcas5p3.samsung.com>
	<50ed7240-d8d3-4816-bcc9-ce8adbbbf841@gmail.com>
X-Spamd-Bar: ----
X-MailFrom: anuj20.g@samsung.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PTOMHBDYT7GDRMGPPTYVUMWO2FUUGAXM
X-Message-ID-Hash: PTOMHBDYT7GDRMGPPTYVUMWO2FUUGAXM
X-Mailman-Approved-At: Tue, 19 May 2026 10:46:26 +0000
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/10] nvme-pci: implement dma_token backed requests
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PTOMHBDYT7GDRMGPPTYVUMWO2FUUGAXM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[samsung.com:s=mail20170921];
	DATE_IN_PAST(1.00)[24];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,lst.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,samsung.com:mid,samsung.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anuj20.g@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F36E357CBCA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/18/2026 2:59 PM, Pavel Begunkov wrote:
>> FYI, I really want SGL support before this get merged, but ignoring that
>> for now:
> 
> I was hoping to let Samsung guys to send a follow up they already have,
> but I'll ask them to have about taking it into this patch set.

I had done patches on top of v3 adding SGL support and PRP list reuse
optimization for the dmabuf path.
Branch: https://github.com/SamsungDS/linux/commits/rw-dmabuf-v3-nvme-opt/

Also pasting the SGL patch here for quick reference:

Subject: [PATCH 1/2] nvme-pci: add sgl support for dmabuf path

Handle dmabuf-backed requests through the SGL setup path too.
Use the cached dmabuf sg_table and keep PRP fallback where allowed.

Signed-off-by: Anuj Gupta <anuj20.g@samsung.com>
---
  drivers/nvme/host/pci.c | 194 +++++++++++++++++++++++++++++++++++++++-
  1 file changed, 193 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 0a49c94dd675..31e37ab8769b 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1270,6 +1270,14 @@ static void nvme_pci_sgl_set_data(struct 
nvme_sgl_desc *sge,
         sge->type = NVME_SGL_FMT_DATA_DESC << 4;
  }

+static void nvme_pci_sgl_set_data_addr(struct nvme_sgl_desc *sge,
+               dma_addr_t addr, u32 len)
+{
+       sge->addr = cpu_to_le64(addr);
+       sge->length = cpu_to_le32(len);
+       sge->type = NVME_SGL_FMT_DATA_DESC << 4;
+}
+
  static void nvme_pci_sgl_set_seg(struct nvme_sgl_desc *sge,
                 dma_addr_t dma_addr, int entries)
  {
@@ -1321,6 +1329,176 @@ static blk_status_t 
nvme_pci_setup_data_sgl(struct request *req,
         return iter->status;
  }

+static unsigned int nvme_pci_dmabuf_sgl_nents(struct request *req,
+               dma_addr_t *first_dma, u32 *first_len)
+{
+       struct bio *bio = req->bio;
+       struct nvme_dmabuf_map *map;
+       struct scatterlist *sg;
+       unsigned long tmp;
+       size_t offset = bio->bi_iter.bi_bvec_done;
+       size_t remaining = blk_rq_payload_bytes(req);
+       dma_addr_t last_end = 0;
+       unsigned int nents = 0;
+       dma_addr_t dma = 0;
+       u32 len = 0;
+       bool have = false;
+
+       map = container_of(bio->dmabuf_map, struct nvme_dmabuf_map, base);
+
+       for_each_sgtable_dma_sg(map->sgt, sg, tmp) {
+               size_t sg_len = sg_dma_len(sg);
+               dma_addr_t addr = sg_dma_address(sg);
+
+               if (!remaining)
+                       break;
+               if (offset >= sg_len) {
+                       offset -= sg_len;
+                       continue;
+               }
+
+               addr += offset;
+               sg_len -= offset;
+               offset = 0;
+
+               while (sg_len && remaining) {
+                       u32 chunk = min_t(size_t, remaining, sg_len);
+
+                       if (!have || last_end != addr) {
+                               nents++;
+                               if (nents == 1) {
+                                       dma = addr;
+                                       len = chunk;
+                               }
+                       } else if (nents == 1) {
+                               len += chunk;
+                       }
+
+                       have = true;
+                       last_end = addr + chunk;
+                       addr += chunk;
+                       sg_len -= chunk;
+                       remaining -= chunk;
+               }
+       }
+
+       if (unlikely(remaining))
+               return 0;
+
+       *first_dma = dma;
+       *first_len = len;
+       return nents;
+}
+
+static unsigned int nvme_pci_dmabuf_avg_seg_size(struct request *req)
+{
+       dma_addr_t first_dma;
+       u32 first_len;
+       unsigned int nseg;
+
+       nseg = nvme_pci_dmabuf_sgl_nents(req, &first_dma, &first_len);
+       if (!nseg)
+               return 0;
+       return DIV_ROUND_UP(blk_rq_payload_bytes(req), nseg);
+}
+
+static blk_status_t nvme_rq_setup_dmabuf_sgl(struct request *req,
+                                            struct nvme_queue *nvmeq)
+{
+       struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
+       struct bio *bio = req->bio;
+       struct nvme_dmabuf_map *map;
+       size_t length = blk_rq_payload_bytes(req);
+       struct nvme_sgl_desc *sg_list = NULL;
+       dma_addr_t sgl_dma = 0, first_dma, last_end = 0;
+       unsigned int entries, mapped = 0;
+       unsigned long tmp;
+       struct scatterlist *sg;
+       size_t offset, remaining;
+       u32 first_len;
+       bool have = false;
+
+       map = container_of(bio->dmabuf_map, struct nvme_dmabuf_map, base);
+
+       entries = nvme_pci_dmabuf_sgl_nents(req, &first_dma, &first_len);
+       if (!entries)
+               return BLK_STS_IOERR;
+       if (entries > NVME_MAX_SEGS)
+               return BLK_STS_AGAIN;
+
+       iod->cmd.common.flags = NVME_CMD_SGL_METABUF;
+       iod->total_len = length;
+
+       nvme_sync_dma(nvmeq->dev, req, false);
+
+       if (entries == 1) {
+               nvme_pci_sgl_set_data_addr(&iod->cmd.common.dptr.sgl, 
first_dma,
+                                          first_len);
+               return BLK_STS_OK;
+       }
+
+       if (entries <= NVME_SMALL_POOL_SIZE / sizeof(*sg_list))
+               iod->flags |= IOD_SMALL_DESCRIPTOR;
+
+       sg_list = dma_pool_alloc(nvme_dma_pool(nvmeq, iod), GFP_ATOMIC,
+                                &sgl_dma);
+       if (!sg_list)
+               return BLK_STS_RESOURCE;
+       iod->descriptors[iod->nr_descriptors++] = sg_list;
+
+       offset = bio->bi_iter.bi_bvec_done;
+       remaining = length;
+
+       for_each_sgtable_dma_sg(map->sgt, sg, tmp) {
+               size_t sg_len = sg_dma_len(sg);
+               dma_addr_t addr = sg_dma_address(sg);
+
+               if (!remaining)
+                       break;
+               if (offset >= sg_len) {
+                       offset -= sg_len;
+                       continue;
+               }
+
+               addr += offset;
+               sg_len -= offset;
+               offset = 0;
+
+               while (sg_len && remaining) {
+                       u32 chunk = min_t(size_t, remaining, sg_len);
+
+                       if (have && last_end == addr) {
+                               u32 old = le32_to_cpu(sg_list[mapped - 
1].length);
+
+                               sg_list[mapped - 1].length =
+                                       cpu_to_le32(old + chunk);
+                       } else {
+                               if (WARN_ON_ONCE(mapped == entries))
+                                       goto err_free;
+ 
nvme_pci_sgl_set_data_addr(&sg_list[mapped++],
+                                                          addr, chunk);
+                       }
+
+                       have = true;
+                       last_end = addr + chunk;
+                       addr += chunk;
+                       sg_len -= chunk;
+                       remaining -= chunk;
+               }
+       }
+
+       if (unlikely(remaining))
+               goto err_free;
+
+       nvme_pci_sgl_set_seg(&iod->cmd.common.dptr.sgl, sgl_dma, mapped);
+       return BLK_STS_OK;
+
+err_free:
+       iod->nr_descriptors--;
+       dma_pool_free(nvme_dma_pool(nvmeq, iod), sg_list, sgl_dma);
+       return BLK_STS_IOERR;
+}
+
  static blk_status_t nvme_pci_setup_data_simple(struct request *req,
                 enum nvme_use_sgl use_sgl)
  {
@@ -1369,8 +1547,22 @@ static blk_status_t nvme_map_data(struct request 
*req)
         struct blk_dma_iter iter;
         blk_status_t ret;

-       if (nvme_rq_is_dmabuf_attached(req))
+       if (nvme_rq_is_dmabuf_attached(req)) {
+               if (use_sgl == SGL_FORCED) {
+                       ret = nvme_rq_setup_dmabuf_sgl(req, nvmeq);
+                       /* Regular path doesn't fall back if SGLs are 
forced. */
+                       return ret == BLK_STS_AGAIN ? BLK_STS_IOERR : ret;
+               }
+
+               if (use_sgl == SGL_SUPPORTED && sgl_threshold &&
+                   nvme_pci_dmabuf_avg_seg_size(req) >= sgl_threshold) {
+                       ret = nvme_rq_setup_dmabuf_sgl(req, nvmeq);
+                       if (ret != BLK_STS_AGAIN)
+                               return ret;
+               }
+
                 return nvme_rq_setup_dmabuf_map(req, nvmeq);
+       }

         /*
          * Try to skip the DMA iterator for single segment requests, as 
that
--
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
