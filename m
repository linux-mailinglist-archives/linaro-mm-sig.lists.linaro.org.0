Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D26832B1D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 15:14:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A00243FCD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 14:14:52 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id EF04543FBE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 14:14:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=nihKf29Q;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1705673651;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VqYgKFlSXeXJ+ek05cChLqHNIcn71hJPj0SKGxZRr1E=;
	b=nihKf29QM3PAzCv1lf02nN0Lm7J1hFfqxSiJIykkJWXBNUWAts3p9naI7FhbAo3qS1vUZ+
	AQnGMwjj3hS2I+vprXp5cMewxBvtbj1QizrYkrsEZ5nETFXsE//UAy/FMDfPFQvI/KRz1x
	ZpJEeAwef/CDAgBRqgMIUAVTEo2wVuY=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 19 Jan 2024 15:13:57 +0100
Message-ID: <20240119141402.44262-2-paul@crapouillou.net>
In-Reply-To: <20240119141402.44262-1-paul@crapouillou.net>
References: <20240119141402.44262-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.00 / 15.00];
	SPAM_FLAG(5.00)[];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.478];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EF04543FBE
X-Spamd-Bar: /
Message-ID-Hash: VP7CGYMFJ4P5JR4FKKR6JXSIF5ORXUZQ
X-Message-ID-Hash: VP7CGYMFJ4P5JR4FKKR6JXSIF5ORXUZQ
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VP7CGYMFJ4P5JR4FKKR6JXSIF5ORXUZQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

These functions should be used by device drivers when they start and
stop accessing the data of DMABUF. It allows DMABUF importers to cache
the dma_buf_attachment while ensuring that the data they want to access
is available for their device when the DMA transfers take place.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>

---
v5: New patch
---
 drivers/dma-buf/dma-buf.c | 66 +++++++++++++++++++++++++++++++++++++++
 include/linux/dma-buf.h   | 37 ++++++++++++++++++++++
 2 files changed, 103 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 8fe5aa67b167..a8bab6c18fcd 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -830,6 +830,8 @@ static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,
  *     - dma_buf_mmap()
  *     - dma_buf_begin_cpu_access()
  *     - dma_buf_end_cpu_access()
+ *     - dma_buf_begin_access()
+ *     - dma_buf_end_access()
  *     - dma_buf_map_attachment_unlocked()
  *     - dma_buf_unmap_attachment_unlocked()
  *     - dma_buf_vmap_unlocked()
@@ -1602,6 +1604,70 @@ void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_vunmap_unlocked, DMA_BUF);
 
+/**
+ * @dma_buf_begin_access - Call before any hardware access from/to the DMABUF
+ * @attach:	[in]	attachment used for hardware access
+ * @sg_table:	[in]	scatterlist used for the DMA transfer
+ * @direction:  [in]    direction of DMA transfer
+ */
+int dma_buf_begin_access(struct dma_buf_attachment *attach,
+			 struct sg_table *sgt, enum dma_data_direction dir)
+{
+	struct dma_buf *dmabuf;
+	bool cookie;
+	int ret;
+
+	if (WARN_ON(!attach))
+		return -EINVAL;
+
+	dmabuf = attach->dmabuf;
+
+	if (!dmabuf->ops->begin_access)
+		return 0;
+
+	cookie = dma_fence_begin_signalling();
+	ret = dmabuf->ops->begin_access(attach, sgt, dir);
+	dma_fence_end_signalling(cookie);
+
+	if (WARN_ON_ONCE(ret))
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(dma_buf_begin_access, DMA_BUF);
+
+/**
+ * @dma_buf_end_access - Call after any hardware access from/to the DMABUF
+ * @attach:	[in]	attachment used for hardware access
+ * @sg_table:	[in]	scatterlist used for the DMA transfer
+ * @direction:  [in]    direction of DMA transfer
+ */
+int dma_buf_end_access(struct dma_buf_attachment *attach,
+		       struct sg_table *sgt, enum dma_data_direction dir)
+{
+	struct dma_buf *dmabuf;
+	bool cookie;
+	int ret;
+
+	if (WARN_ON(!attach))
+		return -EINVAL;
+
+	dmabuf = attach->dmabuf;
+
+	if (!dmabuf->ops->end_access)
+		return 0;
+
+	cookie = dma_fence_begin_signalling();
+	ret = dmabuf->ops->end_access(attach, sgt, dir);
+	dma_fence_end_signalling(cookie);
+
+	if (WARN_ON_ONCE(ret))
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(dma_buf_end_access, DMA_BUF);
+
 #ifdef CONFIG_DEBUG_FS
 static int dma_buf_debug_show(struct seq_file *s, void *unused)
 {
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 8ff4add71f88..8ba612c7cc16 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -246,6 +246,38 @@ struct dma_buf_ops {
 	 */
 	int (*end_cpu_access)(struct dma_buf *, enum dma_data_direction);
 
+	/**
+	 * @begin_access:
+	 *
+	 * This is called from dma_buf_begin_access() when a device driver
+	 * wants to access the data of the DMABUF. The exporter can use this
+	 * to flush/sync the caches if needed.
+	 *
+	 * This callback is optional.
+	 *
+	 * Returns:
+	 *
+	 * 0 on success or a negative error code on failure.
+	 */
+	int (*begin_access)(struct dma_buf_attachment *, struct sg_table *,
+			    enum dma_data_direction);
+
+	/**
+	 * @end_access:
+	 *
+	 * This is called from dma_buf_end_access() when a device driver is
+	 * done accessing the data of the DMABUF. The exporter can use this
+	 * to flush/sync the caches if needed.
+	 *
+	 * This callback is optional.
+	 *
+	 * Returns:
+	 *
+	 * 0 on success or a negative error code on failure.
+	 */
+	int (*end_access)(struct dma_buf_attachment *, struct sg_table *,
+			  enum dma_data_direction);
+
 	/**
 	 * @mmap:
 	 *
@@ -606,6 +638,11 @@ void dma_buf_detach(struct dma_buf *dmabuf,
 int dma_buf_pin(struct dma_buf_attachment *attach);
 void dma_buf_unpin(struct dma_buf_attachment *attach);
 
+int dma_buf_begin_access(struct dma_buf_attachment *attach,
+			 struct sg_table *sgt, enum dma_data_direction dir);
+int dma_buf_end_access(struct dma_buf_attachment *attach,
+		       struct sg_table *sgt, enum dma_data_direction dir);
+
 struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info);
 
 int dma_buf_fd(struct dma_buf *dmabuf, int flags);
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
