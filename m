Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADD76D4D37
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 18:08:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FC9C3F5BD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 16:08:08 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 6A1553F5E6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Apr 2023 16:07:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=w2Vbrqzj;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680537005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wA4riywwKKpvJAgChQaqtpae762HoiQ3X43R1omKQq4=;
	b=w2Vbrqzju+FpRpVjzxZ2RLYiP3a1YX0fUt98d/TwX/8ordZETUPCJEcVcrO40kky/ffb9S
	crFaELFhXS+K44RKouzy6bUJopS6o5LK2G4sSwcSpNycj2XHVf7p/0YKpt+mQ99jEQKCwj
	YMLN5v0VHzBRjP/xQ0K8kCdC+HOP350=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Vinod Koul <vkoul@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Mon,  3 Apr 2023 17:49:54 +0200
Message-Id: <20230403154955.216148-1-paul@crapouillou.net>
In-Reply-To: <20230403154800.215924-1-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6A1553F5E6
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	SPAM_FLAG(5.00)[];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	RCVD_IN_DNSWL_HI(-0.50)[89.234.176.197:from];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	RCVD_COUNT_ZERO(0.00)[0];
	NEURAL_SPAM(0.00)[0.888];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: XLKKVM32KPMW2G643EMD5BTKPKCCV4UL
X-Message-ID-Hash: XLKKVM32KPMW2G643EMD5BTKPKCCV4UL
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 10/11] iio: buffer-dmaengine: Support new DMABUF based userspace API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XLKKVM32KPMW2G643EMD5BTKPKCCV4UL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use the functions provided by the buffer-dma core to implement the
DMABUF userspace API in the buffer-dmaengine IIO buffer implementation.

Since we want to be able to transfer an arbitrary number of bytes and
not necesarily the full DMABUF, the associated scatterlist is converted
to an array of DMA addresses + lengths, which is then passed to
dmaengine_prep_slave_dma_array().

Signed-off-by: Paul Cercueil <paul@crapouillou.net>

---
v3: Use the new dmaengine_prep_slave_dma_array(), and adapt the code to
    work with the new functions introduced in industrialio-buffer-dma.c.
---
 .../buffer/industrialio-buffer-dmaengine.c    | 69 ++++++++++++++++---
 include/linux/iio/buffer-dma.h                |  2 +
 2 files changed, 60 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
index 866c8b84bb24..faed9c2b089c 100644
--- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
+++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
@@ -65,25 +65,68 @@ static int iio_dmaengine_buffer_submit_block(struct iio_dma_buffer_queue *queue,
 		iio_buffer_to_dmaengine_buffer(&queue->buffer);
 	struct dma_async_tx_descriptor *desc;
 	enum dma_transfer_direction dma_dir;
+	unsigned int i, nents, *lenghts;
+	struct scatterlist *sgl;
+	unsigned long flags;
+	dma_addr_t *addrs;
 	size_t max_size;
 	dma_cookie_t cookie;
+	size_t len_total;
 
-	max_size = min(block->size, dmaengine_buffer->max_size);
-	max_size = round_down(max_size, dmaengine_buffer->align);
+	if (!block->bytes_used)
+		return -EINVAL;
 
-	if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN) {
-		block->bytes_used = max_size;
+	if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN)
 		dma_dir = DMA_DEV_TO_MEM;
-	} else {
+	else
 		dma_dir = DMA_MEM_TO_DEV;
-	}
 
-	if (!block->bytes_used || block->bytes_used > max_size)
-		return -EINVAL;
+	if (block->sg_table) {
+		sgl = block->sg_table->sgl;
+		nents = sg_nents_for_len(sgl, block->bytes_used);
+
+		addrs = kmalloc_array(nents, sizeof(*addrs), GFP_KERNEL);
+		if (!addrs)
+			return -ENOMEM;
+
+		lenghts = kmalloc_array(nents, sizeof(*lenghts), GFP_KERNEL);
+		if (!lenghts) {
+			kfree(addrs);
+			return -ENOMEM;
+		}
+
+		len_total = block->bytes_used;
 
-	desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
-		block->phys_addr, block->bytes_used, dma_dir,
-		DMA_PREP_INTERRUPT);
+		for (i = 0; i < nents; i++) {
+			addrs[i] = sg_dma_address(sgl);
+			lenghts[i] = min(sg_dma_len(sgl), len_total);
+			len_total -= lenghts[i];
+
+			sgl = sg_next(sgl);
+		}
+
+		flags = block->cyclic ? DMA_PREP_REPEAT : DMA_PREP_INTERRUPT;
+
+		desc = dmaengine_prep_slave_dma_array(dmaengine_buffer->chan,
+						      addrs, lenghts, nents,
+						      dma_dir, flags);
+		kfree(addrs);
+		kfree(lenghts);
+	} else {
+		max_size = min(block->size, dmaengine_buffer->max_size);
+		max_size = round_down(max_size, dmaengine_buffer->align);
+
+		if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN)
+			block->bytes_used = max_size;
+
+		if (block->bytes_used > max_size)
+			return -EINVAL;
+
+		desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
+						   block->phys_addr,
+						   block->bytes_used, dma_dir,
+						   DMA_PREP_INTERRUPT);
+	}
 	if (!desc)
 		return -ENOMEM;
 
@@ -133,6 +176,10 @@ static const struct iio_buffer_access_funcs iio_dmaengine_buffer_ops = {
 	.space_available = iio_dma_buffer_space_available,
 	.release = iio_dmaengine_buffer_release,
 
+	.enqueue_dmabuf = iio_dma_buffer_enqueue_dmabuf,
+	.attach_dmabuf = iio_dma_buffer_attach_dmabuf,
+	.detach_dmabuf = iio_dma_buffer_detach_dmabuf,
+
 	.modes = INDIO_BUFFER_HARDWARE,
 	.flags = INDIO_BUFFER_FLAG_FIXED_WATERMARK,
 };
diff --git a/include/linux/iio/buffer-dma.h b/include/linux/iio/buffer-dma.h
index e5e5817e99db..48f7ffaf0867 100644
--- a/include/linux/iio/buffer-dma.h
+++ b/include/linux/iio/buffer-dma.h
@@ -43,6 +43,7 @@ enum iio_block_state {
  * @queue: Parent DMA buffer queue
  * @kref: kref used to manage the lifetime of block
  * @state: Current state of the block
+ * @cyclic: True if this is a cyclic buffer
  * @fileio: True if this buffer is used for fileio mode
  */
 struct iio_dma_buffer_block {
@@ -67,6 +68,7 @@ struct iio_dma_buffer_block {
 	 */
 	enum iio_block_state state;
 
+	bool cyclic;
 	bool fileio;
 
 	struct dma_buf_attachment *attach;
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
