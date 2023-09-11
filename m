Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A0179A95F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 17:05:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 987503F003
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 15:05:46 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 668AD3EAB0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 02:46:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=JJruc5ts;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 47ac74e8504b11ee8051498923ad61e6-20230911
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=CUJ9ELlafUDabP9pJTFwquJ8GeCYxQW7Xz1vuQdcyBM=;
	b=JJruc5tsMWh8hFGlyl3tDD4r5uCARVVB9mQ67GdDTj5IA5UFGCaiqXz1N7TcKnRG8zvJbqHuYg3N9VDULiGze/Iqmdz+XDfjQzDt4XmWzahsvxBiYOcOTTVXF5IrhdXAcsUD/AibsvIvPJYereaoJ8kD0/DwYH5NZvXhAGAVRgA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:472d4f0e-470a-42a4-8e9d-a5bf8ac750ab,IP:0,U
	RL:0,TC:0,Content:-25,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACT
	ION:release,TS:-50
X-CID-META: VersionHash:0ad78a4,CLOUDID:1283c713-4929-4845-9571-38c601e9c3c9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:1,IP:nil,UR
	L:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,D
	KR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 47ac74e8504b11ee8051498923ad61e6-20230911
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1632540821; Mon, 11 Sep 2023 10:31:15 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.194) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 11 Sep 2023 10:31:13 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 11 Sep 2023 10:31:12 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 11 Sep 2023 10:30:32 +0800
Message-ID: <20230911023038.30649-4-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230911023038.30649-1-yong.wu@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--7.359800-8.000000
X-TMASE-MatchedRID: YiCTc/DoVWftt0HEL3BUV4lD2T5imTkJ2qBSQHAh8pg0QmmUihPzrFJS
	0b8z/9TB8AyWk2NFMNbijpjet3oGSJCoy9iDotiwNNHZMWDTEbe4UO5+xwKkcStjI02a+7m1q3c
	ttlDobAxG26EiMHWORL4tP830vR4Ai8ICQO6ibxThG1IOMb7PsOWNJG9IamrcfmHrLgoJIlxnXT
	ApdRZectbsbJMjcyybVDhg+HFzjttT4Q98GKrcb7E3FpMbg63SKx5ICGp/WtFLgo8+IIHbcNDvp
	yUuLSMV+F1V82TD38h/OSL2yLHcRZH0YXYnbGozFEUknJ/kEl7dB/CxWTRRu4Gh9SYKzkjuUpXq
	gxV1N6mhT243gu1N3ZrBizs+kLqF+9kKfC9LZkrreFgbzoDRQm39xATaiFQjftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--7.359800-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	E407940FB271E0BC0AEB9E656D12D42CD9BD2BF3E21ED0673D5E5E0724D604882000:8
X-MTK: N
X-Rspamd-Queue-Id: 668AD3EAB0
X-Spamd-Bar: ++++
X-Spamd-Result: default: False [4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:dkim,mediatek.com:email,mailgw02.mediatek.com:helo,mailgw02.mediatek.com:rdns];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[]
X-Rspamd-Action: add header
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ****
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V5FDVLYNXJ32JXSDCNWA6ZKFK64ZWFER
X-Message-ID-Hash: V5FDVLYNXJ32JXSDCNWA6ZKFK64ZWFER
X-Mailman-Approved-At: Mon, 11 Sep 2023 15:03:22 +0000
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5FDVLYNXJ32JXSDCNWA6ZKFK64ZWFER/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: John Stultz <jstultz@google.com>

This allows drivers who don't want to create their own
DMA-BUF exporter to be able to allocate DMA-BUFs directly
from existing DMA-BUF Heaps.

There is some concern that the premise of DMA-BUF heaps is
that userland knows better about what type of heap memory
is needed for a pipeline, so it would likely be best for
drivers to import and fill DMA-BUFs allocated by userland
instead of allocating one themselves, but this is still
up for debate.

Signed-off-by: John Stultz <jstultz@google.com>
Signed-off-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
[Yong: Fix the checkpatch alignment warning]
---
 drivers/dma-buf/dma-heap.c | 60 ++++++++++++++++++++++++++++----------
 include/linux/dma-heap.h   | 25 ++++++++++++++++
 2 files changed, 69 insertions(+), 16 deletions(-)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index dcc0e38c61fa..908bb30dc864 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -53,12 +53,15 @@ static dev_t dma_heap_devt;
 static struct class *dma_heap_class;
 static DEFINE_XARRAY_ALLOC(dma_heap_minors);
 
-static int dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
-				 unsigned int fd_flags,
-				 unsigned int heap_flags)
+struct dma_buf *dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
+				      unsigned int fd_flags,
+				      unsigned int heap_flags)
 {
-	struct dma_buf *dmabuf;
-	int fd;
+	if (fd_flags & ~DMA_HEAP_VALID_FD_FLAGS)
+		return ERR_PTR(-EINVAL);
+
+	if (heap_flags & ~DMA_HEAP_VALID_HEAP_FLAGS)
+		return ERR_PTR(-EINVAL);
 
 	/*
 	 * Allocations from all heaps have to begin
@@ -66,9 +69,20 @@ static int dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
 	 */
 	len = PAGE_ALIGN(len);
 	if (!len)
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 
-	dmabuf = heap->ops->allocate(heap, len, fd_flags, heap_flags);
+	return heap->ops->allocate(heap, len, fd_flags, heap_flags);
+}
+EXPORT_SYMBOL_GPL(dma_heap_buffer_alloc);
+
+static int dma_heap_bufferfd_alloc(struct dma_heap *heap, size_t len,
+				   unsigned int fd_flags,
+				   unsigned int heap_flags)
+{
+	struct dma_buf *dmabuf;
+	int fd;
+
+	dmabuf = dma_heap_buffer_alloc(heap, len, fd_flags, heap_flags);
 	if (IS_ERR(dmabuf))
 		return PTR_ERR(dmabuf);
 
@@ -106,15 +120,9 @@ static long dma_heap_ioctl_allocate(struct file *file, void *data)
 	if (heap_allocation->fd)
 		return -EINVAL;
 
-	if (heap_allocation->fd_flags & ~DMA_HEAP_VALID_FD_FLAGS)
-		return -EINVAL;
-
-	if (heap_allocation->heap_flags & ~DMA_HEAP_VALID_HEAP_FLAGS)
-		return -EINVAL;
-
-	fd = dma_heap_buffer_alloc(heap, heap_allocation->len,
-				   heap_allocation->fd_flags,
-				   heap_allocation->heap_flags);
+	fd = dma_heap_bufferfd_alloc(heap, heap_allocation->len,
+				     heap_allocation->fd_flags,
+				     heap_allocation->heap_flags);
 	if (fd < 0)
 		return fd;
 
@@ -205,6 +213,7 @@ const char *dma_heap_get_name(struct dma_heap *heap)
 {
 	return heap->name;
 }
+EXPORT_SYMBOL_GPL(dma_heap_get_name);
 
 struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 {
@@ -290,6 +299,24 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 	kfree(heap);
 	return err_ret;
 }
+EXPORT_SYMBOL_GPL(dma_heap_add);
+
+struct dma_heap *dma_heap_find(const char *name)
+{
+	struct dma_heap *h;
+
+	mutex_lock(&heap_list_lock);
+	list_for_each_entry(h, &heap_list, list) {
+		if (!strcmp(h->name, name)) {
+			kref_get(&h->refcount);
+			mutex_unlock(&heap_list_lock);
+			return h;
+		}
+	}
+	mutex_unlock(&heap_list_lock);
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(dma_heap_find);
 
 static void dma_heap_release(struct kref *ref)
 {
@@ -315,6 +342,7 @@ void dma_heap_put(struct dma_heap *h)
 	kref_put(&h->refcount, dma_heap_release);
 	mutex_unlock(&heap_list_lock);
 }
+EXPORT_SYMBOL_GPL(dma_heap_put);
 
 static char *dma_heap_devnode(const struct device *dev, umode_t *mode)
 {
diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
index f3c678892c5c..59e70f6c7a60 100644
--- a/include/linux/dma-heap.h
+++ b/include/linux/dma-heap.h
@@ -64,10 +64,35 @@ const char *dma_heap_get_name(struct dma_heap *heap);
  */
 struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info);
 
+/**
+ * dma_heap_find - get the heap registered with the specified name
+ * @name: Name of the DMA-Heap to find
+ *
+ * Returns:
+ * The DMA-Heap with the provided name.
+ *
+ * NOTE: DMA-Heaps returned from this function MUST be released using
+ * dma_heap_put() when the user is done to enable the heap to be unloaded.
+ */
+struct dma_heap *dma_heap_find(const char *name);
+
 /**
  * dma_heap_put - drops a reference to a dmabuf heap, potentially freeing it
  * @heap: the heap whose reference count to decrement
  */
 void dma_heap_put(struct dma_heap *heap);
 
+/**
+ * dma_heap_buffer_alloc - Allocate dma-buf from a dma_heap
+ * @heap:	DMA-Heap to allocate from
+ * @len:	size to allocate in bytes
+ * @fd_flags:	flags to set on returned dma-buf fd
+ * @heap_flags: flags to pass to the dma heap
+ *
+ * This is for internal dma-buf allocations only. Free returned buffers with dma_buf_put().
+ */
+struct dma_buf *dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
+				      unsigned int fd_flags,
+				      unsigned int heap_flags);
+
 #endif /* _DMA_HEAPS_H */
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
