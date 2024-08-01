Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCA7944AE0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 14:06:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DBCA410EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 12:06:42 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 6C286434DC
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Aug 2024 12:05:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=QUovD0uI;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 68697CE18E6;
	Thu,  1 Aug 2024 12:05:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37A25C4AF09;
	Thu,  1 Aug 2024 12:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722513942;
	bh=wcxbwl6CKHuMSz23l9nyG/Jwc9VoDjJQ+eyO66Z4CGQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QUovD0uI+exPoZj7LG0ZbfynjF9a9xLRNtYqhlWc+52nyTGMP3++fgWGzw7DYDNXU
	 K7DvKNcALnGoaxyQES1Lqh+VDdXy6uspMKr9EhK6ZJMGCD2kPXQSnSf2Om/lC2vFDC
	 Re7eo7FDpVG1zwtChmP759+aiaNno/k9bvE0ot2fwqTVkB0bTjwzqxrTuNZ970qzFp
	 UZRr54RLQH33lHhQCaod99Ki1F+u4KZ7X85KwaN0GxZ2DGRrifk1VhdTg7frLDT3Px
	 68JWSYEbNztemCJ0qqB0uqobpg1HYDbAgqUzad9DkI4UFW1bWXRPMam8ePei44HcSN
	 X91b1LXqbcf7A==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Date: Thu,  1 Aug 2024 15:05:13 +0300
Message-ID: <038aad36a43797e5591b20ba81051fc5758124f9.1722512548.git.leon@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1722512548.git.leon@kernel.org>
References: <cover.1722512548.git.leon@kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C286434DC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,sin.source.kernel.org:helo,sin.source.kernel.org:rdns];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: RXSZERDEG62L2WWDTHDSTRVSZCIHJ5DF
X-Message-ID-Hash: RXSZERDEG62L2WWDTHDSTRVSZCIHJ5DF
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yishai Hadas <yishaih@nvidia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-rdma@vger.kernel.org, Michael Margolin <mrgolin@amazon.com>, Mustafa Ismail <mustafa.ismail@intel.com>, netdev@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Sumit Semwal <sumit.semwal@linaro.org>, Tariq Toukan <tariqt@nvidia.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH rdma-next 4/8] RDMA/umem: Add support for creating pinned DMABUF umem with a given dma device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RXSZERDEG62L2WWDTHDSTRVSZCIHJ5DF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Yishai Hadas <yishaih@nvidia.com>

Add support for creating pinned DMABUF umem with a specified DMA device
instead of the DMA device of the given IB device.

This API will be utilized in the upcoming patches of the series when
multiple path DMAs are implemented.

Signed-off-by: Yishai Hadas <yishaih@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/umem_dmabuf.c | 45 ++++++++++++++++++++-------
 include/rdma/ib_umem.h                | 15 +++++++++
 2 files changed, 49 insertions(+), 11 deletions(-)

diff --git a/drivers/infiniband/core/umem_dmabuf.c b/drivers/infiniband/core/umem_dmabuf.c
index 39357dc2d229..726a09786547 100644
--- a/drivers/infiniband/core/umem_dmabuf.c
+++ b/drivers/infiniband/core/umem_dmabuf.c
@@ -110,10 +110,12 @@ void ib_umem_dmabuf_unmap_pages(struct ib_umem_dmabuf *umem_dmabuf)
 }
 EXPORT_SYMBOL(ib_umem_dmabuf_unmap_pages);
 
-struct ib_umem_dmabuf *ib_umem_dmabuf_get(struct ib_device *device,
-					  unsigned long offset, size_t size,
-					  int fd, int access,
-					  const struct dma_buf_attach_ops *ops)
+static struct ib_umem_dmabuf *
+ib_umem_dmabuf_get_with_dma_device(struct ib_device *device,
+				   struct device *dma_device,
+				   unsigned long offset, size_t size,
+				   int fd, int access,
+				   const struct dma_buf_attach_ops *ops)
 {
 	struct dma_buf *dmabuf;
 	struct ib_umem_dmabuf *umem_dmabuf;
@@ -152,7 +154,7 @@ struct ib_umem_dmabuf *ib_umem_dmabuf_get(struct ib_device *device,
 
 	umem_dmabuf->attach = dma_buf_dynamic_attach(
 					dmabuf,
-					device->dma_device,
+					dma_device,
 					ops,
 					umem_dmabuf);
 	if (IS_ERR(umem_dmabuf->attach)) {
@@ -168,6 +170,15 @@ struct ib_umem_dmabuf *ib_umem_dmabuf_get(struct ib_device *device,
 	dma_buf_put(dmabuf);
 	return ret;
 }
+
+struct ib_umem_dmabuf *ib_umem_dmabuf_get(struct ib_device *device,
+					  unsigned long offset, size_t size,
+					  int fd, int access,
+					  const struct dma_buf_attach_ops *ops)
+{
+	return ib_umem_dmabuf_get_with_dma_device(device, device->dma_device,
+						  offset, size, fd, access, ops);
+}
 EXPORT_SYMBOL(ib_umem_dmabuf_get);
 
 static void
@@ -184,16 +195,18 @@ static struct dma_buf_attach_ops ib_umem_dmabuf_attach_pinned_ops = {
 	.move_notify = ib_umem_dmabuf_unsupported_move_notify,
 };
 
-struct ib_umem_dmabuf *ib_umem_dmabuf_get_pinned(struct ib_device *device,
-						 unsigned long offset,
-						 size_t size, int fd,
-						 int access)
+struct ib_umem_dmabuf *
+ib_umem_dmabuf_get_pinned_with_dma_device(struct ib_device *device,
+					  struct device *dma_device,
+					  unsigned long offset, size_t size,
+					  int fd, int access)
 {
 	struct ib_umem_dmabuf *umem_dmabuf;
 	int err;
 
-	umem_dmabuf = ib_umem_dmabuf_get(device, offset, size, fd, access,
-					 &ib_umem_dmabuf_attach_pinned_ops);
+	umem_dmabuf = ib_umem_dmabuf_get_with_dma_device(device, dma_device, offset,
+							 size, fd, access,
+							 &ib_umem_dmabuf_attach_pinned_ops);
 	if (IS_ERR(umem_dmabuf))
 		return umem_dmabuf;
 
@@ -217,6 +230,16 @@ struct ib_umem_dmabuf *ib_umem_dmabuf_get_pinned(struct ib_device *device,
 	ib_umem_release(&umem_dmabuf->umem);
 	return ERR_PTR(err);
 }
+EXPORT_SYMBOL(ib_umem_dmabuf_get_pinned_with_dma_device);
+
+struct ib_umem_dmabuf *ib_umem_dmabuf_get_pinned(struct ib_device *device,
+						 unsigned long offset,
+						 size_t size, int fd,
+						 int access)
+{
+	return ib_umem_dmabuf_get_pinned_with_dma_device(device, device->dma_device,
+							 offset, size, fd, access);
+}
 EXPORT_SYMBOL(ib_umem_dmabuf_get_pinned);
 
 void ib_umem_dmabuf_release(struct ib_umem_dmabuf *umem_dmabuf)
diff --git a/include/rdma/ib_umem.h b/include/rdma/ib_umem.h
index 565a85044541..de05268ed632 100644
--- a/include/rdma/ib_umem.h
+++ b/include/rdma/ib_umem.h
@@ -150,6 +150,11 @@ struct ib_umem_dmabuf *ib_umem_dmabuf_get_pinned(struct ib_device *device,
 						 unsigned long offset,
 						 size_t size, int fd,
 						 int access);
+struct ib_umem_dmabuf *
+ib_umem_dmabuf_get_pinned_with_dma_device(struct ib_device *device,
+					  struct device *dma_device,
+					  unsigned long offset, size_t size,
+					  int fd, int access);
 int ib_umem_dmabuf_map_pages(struct ib_umem_dmabuf *umem_dmabuf);
 void ib_umem_dmabuf_unmap_pages(struct ib_umem_dmabuf *umem_dmabuf);
 void ib_umem_dmabuf_release(struct ib_umem_dmabuf *umem_dmabuf);
@@ -196,6 +201,16 @@ ib_umem_dmabuf_get_pinned(struct ib_device *device, unsigned long offset,
 {
 	return ERR_PTR(-EOPNOTSUPP);
 }
+
+static inline struct ib_umem_dmabuf *
+ib_umem_dmabuf_get_pinned_with_dma_device(struct ib_device *device,
+					  struct device *dma_device,
+					  unsigned long offset, size_t size,
+					  int fd, int access)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
 static inline int ib_umem_dmabuf_map_pages(struct ib_umem_dmabuf *umem_dmabuf)
 {
 	return -EOPNOTSUPP;
-- 
2.45.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
