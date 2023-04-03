Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB43C6D4CDF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 17:58:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B75193ED6B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 15:58:12 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 873913E948
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Apr 2023 15:57:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=lV75bMrv;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680536894;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HdiZb0JavkoDqxk9mA7rDah7yJ9YxJPEz9HPH/6qmHo=;
	b=lV75bMrvTMtRgSJsvgQi6Qg+qk35iFkofgaGdxueE3AQcWMW7BGe+wJdrrNMImWO4C4SQY
	W6qWht6ZOwgiQZ/ieAci8UfKh2SO8uCmG2Tf58t7NHz4UCyx8HytGFO1LZww0RXz/K97+a
	DHEF4b2okfkraHNADpKeIjII5iH/DLc=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Vinod Koul <vkoul@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Mon,  3 Apr 2023 17:47:53 +0200
Message-Id: <20230403154800.215924-5-paul@crapouillou.net>
In-Reply-To: <20230403154800.215924-1-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: add header
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ****
X-Rspamd-Queue-Id: 873913E948
X-Spamd-Result: default: False [4.00 / 15.00];
	SPAM_FLAG(5.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net,gmail.com];
	NEURAL_SPAM(0.00)[0.872];
	ARC_NA(0.00)[]
X-Spamd-Bar: ++++
Message-ID-Hash: 4JLVYMSEQLUUL45RUSEVB2FHERUNIIKR
X-Message-ID-Hash: 4JLVYMSEQLUUL45RUSEVB2FHERUNIIKR
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>, Alexandru Ardelean <ardeleanalex@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 04/11] iio: buffer-dma: Enable buffer write support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4JLVYMSEQLUUL45RUSEVB2FHERUNIIKR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Adding write support to the buffer-dma code is easy - the write()
function basically needs to do the exact same thing as the read()
function: dequeue a block, read or write the data, enqueue the block
when entirely processed.

Therefore, the iio_buffer_dma_read() and the new iio_buffer_dma_write()
now both call a function iio_buffer_dma_io(), which will perform this
task.

The .space_available() callback can return the exact same value as the
.data_available() callback for input buffers, since in both cases we
count the exact same thing (the number of bytes in each available
block).

Note that we preemptively reset block->bytes_used to the buffer's size
in iio_dma_buffer_request_update(), as in the future the
iio_dma_buffer_enqueue() function won't reset it.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>

---
v2: - Fix block->state not being reset in
      iio_dma_buffer_request_update() for output buffers.
    - Only update block->bytes_used once and add a comment about why we
      update it.
    - Add a comment about why we're setting a different state for output
      buffers in iio_dma_buffer_request_update()
    - Remove useless cast to bool (!!) in iio_dma_buffer_io()

v3: - Reorganize arguments to iio_dma_buffer_io()
    - Change 'is_write' argument to 'is_from_user'
    - Change (__force char *) to (__force __user char *), in
      iio_dma_buffer_write(), since we only want to drop the "const".
---
 drivers/iio/buffer/industrialio-buffer-dma.c | 89 ++++++++++++++++----
 include/linux/iio/buffer-dma.h               |  7 ++
 2 files changed, 80 insertions(+), 16 deletions(-)

diff --git a/drivers/iio/buffer/industrialio-buffer-dma.c b/drivers/iio/buffer/industrialio-buffer-dma.c
index 1fc91467d1aa..86eced458236 100644
--- a/drivers/iio/buffer/industrialio-buffer-dma.c
+++ b/drivers/iio/buffer/industrialio-buffer-dma.c
@@ -195,6 +195,18 @@ static void _iio_dma_buffer_block_done(struct iio_dma_buffer_block *block)
 		block->state = IIO_BLOCK_STATE_DONE;
 }
 
+static void iio_dma_buffer_queue_wake(struct iio_dma_buffer_queue *queue)
+{
+	__poll_t flags;
+
+	if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN)
+		flags = EPOLLIN | EPOLLRDNORM;
+	else
+		flags = EPOLLOUT | EPOLLWRNORM;
+
+	wake_up_interruptible_poll(&queue->buffer.pollq, flags);
+}
+
 /**
  * iio_dma_buffer_block_done() - Indicate that a block has been completed
  * @block: The completed block
@@ -212,7 +224,7 @@ void iio_dma_buffer_block_done(struct iio_dma_buffer_block *block)
 	spin_unlock_irqrestore(&queue->list_lock, flags);
 
 	iio_buffer_block_put_atomic(block);
-	wake_up_interruptible_poll(&queue->buffer.pollq, EPOLLIN | EPOLLRDNORM);
+	iio_dma_buffer_queue_wake(queue);
 }
 EXPORT_SYMBOL_GPL(iio_dma_buffer_block_done);
 
@@ -241,7 +253,7 @@ void iio_dma_buffer_block_list_abort(struct iio_dma_buffer_queue *queue,
 	}
 	spin_unlock_irqrestore(&queue->list_lock, flags);
 
-	wake_up_interruptible_poll(&queue->buffer.pollq, EPOLLIN | EPOLLRDNORM);
+	iio_dma_buffer_queue_wake(queue);
 }
 EXPORT_SYMBOL_GPL(iio_dma_buffer_block_list_abort);
 
@@ -335,8 +347,24 @@ int iio_dma_buffer_request_update(struct iio_buffer *buffer)
 			queue->fileio.blocks[i] = block;
 		}
 
-		block->state = IIO_BLOCK_STATE_QUEUED;
-		list_add_tail(&block->head, &queue->incoming);
+		/*
+		 * block->bytes_used may have been modified previously, e.g. by
+		 * iio_dma_buffer_block_list_abort(). Reset it here to the
+		 * block's so that iio_dma_buffer_io() will work.
+		 */
+		block->bytes_used = block->size;
+
+		/*
+		 * If it's an input buffer, mark the block as queued, and
+		 * iio_dma_buffer_enable() will submit it. Otherwise mark it as
+		 * done, which means it's ready to be dequeued.
+		 */
+		if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN) {
+			block->state = IIO_BLOCK_STATE_QUEUED;
+			list_add_tail(&block->head, &queue->incoming);
+		} else {
+			block->state = IIO_BLOCK_STATE_DONE;
+		}
 	}
 
 out_unlock:
@@ -465,20 +493,12 @@ static struct iio_dma_buffer_block *iio_dma_buffer_dequeue(
 	return block;
 }
 
-/**
- * iio_dma_buffer_read() - DMA buffer read callback
- * @buffer: Buffer to read form
- * @n: Number of bytes to read
- * @user_buffer: Userspace buffer to copy the data to
- *
- * Should be used as the read callback for iio_buffer_access_ops
- * struct for DMA buffers.
- */
-int iio_dma_buffer_read(struct iio_buffer *buffer, size_t n,
-	char __user *user_buffer)
+static int iio_dma_buffer_io(struct iio_buffer *buffer, size_t n,
+			     char __user *user_buffer, bool is_from_user)
 {
 	struct iio_dma_buffer_queue *queue = iio_buffer_to_queue(buffer);
 	struct iio_dma_buffer_block *block;
+	void *addr;
 	int ret;
 
 	if (n < buffer->bytes_per_datum)
@@ -501,8 +521,13 @@ int iio_dma_buffer_read(struct iio_buffer *buffer, size_t n,
 	n = rounddown(n, buffer->bytes_per_datum);
 	if (n > block->bytes_used - queue->fileio.pos)
 		n = block->bytes_used - queue->fileio.pos;
+	addr = block->vaddr + queue->fileio.pos;
 
-	if (copy_to_user(user_buffer, block->vaddr + queue->fileio.pos, n)) {
+	if (is_from_user)
+		ret = copy_from_user(addr, user_buffer, n);
+	else
+		ret = copy_to_user(user_buffer, addr, n);
+	if (ret) {
 		ret = -EFAULT;
 		goto out_unlock;
 	}
@@ -521,8 +546,40 @@ int iio_dma_buffer_read(struct iio_buffer *buffer, size_t n,
 
 	return ret;
 }
+
+/**
+ * iio_dma_buffer_read() - DMA buffer read callback
+ * @buffer: Buffer to read form
+ * @n: Number of bytes to read
+ * @user_buffer: Userspace buffer to copy the data to
+ *
+ * Should be used as the read callback for iio_buffer_access_ops
+ * struct for DMA buffers.
+ */
+int iio_dma_buffer_read(struct iio_buffer *buffer, size_t n,
+	char __user *user_buffer)
+{
+	return iio_dma_buffer_io(buffer, n, user_buffer, false);
+}
 EXPORT_SYMBOL_GPL(iio_dma_buffer_read);
 
+/**
+ * iio_dma_buffer_write() - DMA buffer write callback
+ * @buffer: Buffer to read form
+ * @n: Number of bytes to read
+ * @user_buffer: Userspace buffer to copy the data from
+ *
+ * Should be used as the write callback for iio_buffer_access_ops
+ * struct for DMA buffers.
+ */
+int iio_dma_buffer_write(struct iio_buffer *buffer, size_t n,
+			 const char __user *user_buffer)
+{
+	return iio_dma_buffer_io(buffer, n,
+				 (__force __user char *)user_buffer, true);
+}
+EXPORT_SYMBOL_GPL(iio_dma_buffer_write);
+
 /**
  * iio_dma_buffer_data_available() - DMA buffer data_available callback
  * @buf: Buffer to check for data availability
diff --git a/include/linux/iio/buffer-dma.h b/include/linux/iio/buffer-dma.h
index 18d3702fa95d..490b93f76fa8 100644
--- a/include/linux/iio/buffer-dma.h
+++ b/include/linux/iio/buffer-dma.h
@@ -132,6 +132,8 @@ int iio_dma_buffer_disable(struct iio_buffer *buffer,
 	struct iio_dev *indio_dev);
 int iio_dma_buffer_read(struct iio_buffer *buffer, size_t n,
 	char __user *user_buffer);
+int iio_dma_buffer_write(struct iio_buffer *buffer, size_t n,
+			 const char __user *user_buffer);
 size_t iio_dma_buffer_data_available(struct iio_buffer *buffer);
 int iio_dma_buffer_set_bytes_per_datum(struct iio_buffer *buffer, size_t bpd);
 int iio_dma_buffer_set_length(struct iio_buffer *buffer, unsigned int length);
@@ -142,4 +144,9 @@ int iio_dma_buffer_init(struct iio_dma_buffer_queue *queue,
 void iio_dma_buffer_exit(struct iio_dma_buffer_queue *queue);
 void iio_dma_buffer_release(struct iio_dma_buffer_queue *queue);
 
+static inline size_t iio_dma_buffer_space_available(struct iio_buffer *buffer)
+{
+	return iio_dma_buffer_data_available(buffer);
+}
+
 #endif
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
