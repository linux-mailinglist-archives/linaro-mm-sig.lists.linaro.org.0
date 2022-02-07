Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A4A4B6FA1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 16:17:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F95F3ED38
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 15:17:02 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 381603EDA3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Feb 2022 13:01:48 +0000 (UTC)
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Date: Mon,  7 Feb 2022 13:01:39 +0000
Message-Id: <20220207130140.81891-1-paul@crapouillou.net>
In-Reply-To: <20220207125933.81634-1-paul@crapouillou.net>
References: <20220207125933.81634-1-paul@crapouillou.net>
MIME-Version: 1.0
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6ON5GFFMEPZM4A4VEXLFH56AFO5GWZIY
X-Message-ID-Hash: 6ON5GFFMEPZM4A4VEXLFH56AFO5GWZIY
X-Mailman-Approved-At: Tue, 15 Feb 2022 15:16:03 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 11/12] iio: buffer-dmaengine: Add support for cyclic buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6ON5GFFMEPZM4A4VEXLFH56AFO5GWZIY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Handle the IIO_BUFFER_DMABUF_CYCLIC flag to support cyclic buffers.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>
---
 drivers/iio/buffer/industrialio-buffer-dma.c      |  1 +
 .../iio/buffer/industrialio-buffer-dmaengine.c    | 15 ++++++++++++---
 include/linux/iio/buffer-dma.h                    |  3 +++
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/buffer/industrialio-buffer-dma.c b/drivers/iio/buffer/industrialio-buffer-dma.c
index b9c3b01c5ea0..6185af2f33f0 100644
--- a/drivers/iio/buffer/industrialio-buffer-dma.c
+++ b/drivers/iio/buffer/industrialio-buffer-dma.c
@@ -901,6 +901,7 @@ int iio_dma_buffer_enqueue_dmabuf(struct iio_buffer *buffer,
 	}
 
 	dma_block->bytes_used = iio_dmabuf->bytes_used ?: dma_block->size;
+	dma_block->cyclic = iio_dmabuf->flags & IIO_BUFFER_DMABUF_CYCLIC;
 
 	switch (dma_block->state) {
 	case IIO_BLOCK_STATE_QUEUED:
diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
index 57a8b2e4ba3c..952e2160a11e 100644
--- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
+++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
@@ -81,9 +81,18 @@ static int iio_dmaengine_buffer_submit_block(struct iio_dma_buffer_queue *queue,
 	if (!block->bytes_used || block->bytes_used > max_size)
 		return -EINVAL;
 
-	desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
-		block->phys_addr, block->bytes_used, dma_dir,
-		DMA_PREP_INTERRUPT);
+	if (block->cyclic) {
+		desc = dmaengine_prep_dma_cyclic(dmaengine_buffer->chan,
+						 block->phys_addr,
+						 block->size,
+						 block->bytes_used,
+						 dma_dir, 0);
+	} else {
+		desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
+						   block->phys_addr,
+						   block->bytes_used, dma_dir,
+						   DMA_PREP_INTERRUPT);
+	}
 	if (!desc)
 		return -ENOMEM;
 
diff --git a/include/linux/iio/buffer-dma.h b/include/linux/iio/buffer-dma.h
index 5bd687132355..3a5d9169e573 100644
--- a/include/linux/iio/buffer-dma.h
+++ b/include/linux/iio/buffer-dma.h
@@ -40,6 +40,7 @@ enum iio_block_state {
  * @phys_addr: Physical address of the blocks memory
  * @queue: Parent DMA buffer queue
  * @state: Current state of the block
+ * @cyclic: True if this is a cyclic buffer
  * @fileio: True if this buffer is used for fileio mode
  * @dmabuf: Underlying DMABUF object
  */
@@ -63,6 +64,8 @@ struct iio_dma_buffer_block {
 	 */
 	enum iio_block_state state;
 
+	bool cyclic;
+
 	bool fileio;
 	struct dma_buf *dmabuf;
 };
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
