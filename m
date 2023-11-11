Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E62267E8AAB
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 12:19:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 021F540D17
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 11:19:10 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 1DBD440D22
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Nov 2023 11:17:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=WfnvWHTN;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com
X-UUID: f30d6d48808311ee8051498923ad61e6-20231111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=Gy+M2bUMx+CYFsdXG/I6G6ZzW4z/qv5O5Hu3jt5CWYo=;
	b=WfnvWHTN2aurvacg/7XEX6uvVC+RGTiN4mmoR87heZXvASEEJPNfp25bWlmGd7fFZwp5Arac/vWAzLqpYzbacOS0nUaaudgQpQ4nStYVNIXhY6dwE+ZARbSpPFcZy3KUpMxNamHEWs7bdObG/AYUVoX7GjVg5x4DVVIlx76ecrE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33,REQID:6176c338-03f7-488b-8ac7-e16a80234da0,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:364b77b,CLOUDID:12838872-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: f30d6d48808311ee8051498923ad61e6-20231111
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1772081158; Sat, 11 Nov 2023 19:17:50 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sat, 11 Nov 2023 19:17:49 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sat, 11 Nov 2023 19:17:47 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Sat, 11 Nov 2023 19:15:58 +0800
Message-ID: <20231111111559.8218-8-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231111111559.8218-1-yong.wu@mediatek.com>
References: <20231111111559.8218-1-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1DBD440D22
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32:c];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[210.61.82.184:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[mediatek.com:email,mediatek.com:dkim,mailgw02.mediatek.com:helo,exp_info.name:url];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ndufresne.ca,gmail.com];
	NEURAL_HAM(-0.00)[-1.000]
X-Rspamd-Action: no action
Message-ID-Hash: YUXH554ONFJ2HFCL5EYONCE2UZ6HV5QM
X-Message-ID-Hash: YUXH554ONFJ2HFCL5EYONCE2UZ6HV5QM
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 7/8] dma_buf: heaps: secure_heap: Add a new MediaTek CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YUXH554ONFJ2HFCL5EYONCE2UZ6HV5QM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Create a new MediaTek CMA heap from the CMA reserved buffer.

In this heap, When the first allocating buffer, use cma_alloc to prepare
whole the CMA range, then send its range to TEE to protect and manage.
For the later allocating, we just adds the cma_used_size_mtk.

This CMA flow may be different with the normal CMA heap of next patch.
So I named the variable with _mtk suffix like cma_page_mtk/
cma_used_size_mtk. This is also to distinguish it from the cma_page of
the buffer structure in the next patch.

When SVP done, cma_release will release the buffer, then kernel may
reuse it.

Meanwhile, this patch adds a "heap_init" pointer, while allows some heap
initialization operations. This case also checks if the CMA range is
ready.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/dma-buf/heaps/secure_heap.c | 124 +++++++++++++++++++++++++++-
 1 file changed, 122 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/secure_heap.c b/drivers/dma-buf/heaps/secure_heap.c
index 25cc95442c56..f8b84fd16288 100644
--- a/drivers/dma-buf/heaps/secure_heap.c
+++ b/drivers/dma-buf/heaps/secure_heap.c
@@ -4,11 +4,12 @@
  *
  * Copyright (C) 2023 MediaTek Inc.
  */
-
+#include <linux/cma.h>
 #include <linux/dma-buf.h>
 #include <linux/dma-heap.h>
 #include <linux/err.h>
 #include <linux/module.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/tee_drv.h>
@@ -25,6 +26,8 @@ enum secure_buffer_tee_cmd { /* PARAM NUM always is 4. */
 	 * [in]  value[0].a: The buffer size.
 	 *       value[0].b: alignment.
 	 * [in]  value[1].a: enum secure_memory_type.
+	 * [in]  value[2].a: pa base in cma case.
+	 *       value[2].b: The buffer size in cma case.
 	 * [out] value[3].a: The secure handle.
 	 */
 	TZCMD_SECMEM_ZALLOC = 0,
@@ -45,6 +48,13 @@ enum secure_memory_type {
 	 * management is inside the TEE.
 	 */
 	SECURE_MEMORY_TYPE_MTK_CM_TZ	= 1,
+	/*
+	 * MediaTek dynamic chunk memory carved out from CMA.
+	 * In normal case, the CMA could be used in kernel; When SVP start, we will
+	 * allocate whole this CMA and pass whole the CMA PA and size into TEE to
+	 * protect it, then the detail memory management also is inside the TEE.
+	 */
+	SECURE_MEMORY_TYPE_MTK_CM_CMA	= 2,
 };
 
 struct secure_buffer {
@@ -70,6 +80,7 @@ struct secure_heap_prv_data {
 	 */
 	const int			tee_command_id_base;
 
+	int	(*heap_init)(struct secure_heap *sec_heap);
 	int	(*memory_alloc)(struct secure_heap *sec_heap, struct secure_buffer *sec_buf);
 	void	(*memory_free)(struct secure_heap *sec_heap, struct secure_buffer *sec_buf);
 
@@ -86,6 +97,13 @@ struct secure_heap {
 	u32				tee_session;
 
 	const struct secure_heap_prv_data *data;
+
+	struct cma		*cma;
+	struct page		*cma_page_mtk;
+	unsigned long		cma_paddr;
+	unsigned long		cma_size;
+	unsigned long		cma_used_size_mtk;
+	struct mutex		lock; /* lock for cma_used_size_mtk */
 };
 
 struct secure_heap_attachment {
@@ -168,7 +186,10 @@ static int secure_heap_tee_secure_memory(struct secure_heap *sec_heap,
 	params[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
 	params[1].u.value.a = sec_heap->mem_type;
 	params[2].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
-
+	if (sec_heap->cma && sec_heap->mem_type == SECURE_MEMORY_TYPE_MTK_CM_CMA) {
+		params[2].u.value.a = sec_heap->cma_paddr;
+		params[2].u.value.b = sec_heap->cma_size;
+	}
 	params[3].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
 	ret = secure_heap_tee_service_call(sec_heap->tee_ctx, sec_heap->tee_session,
 					   data->tee_command_id_base + TZCMD_SECMEM_ZALLOC,
@@ -197,6 +218,66 @@ static void secure_heap_tee_unsecure_memory(struct secure_heap *sec_heap,
 		       sec_heap->name, sec_buf->sec_handle, params[1].u.value.a);
 }
 
+static int mtk_secure_memory_cma_allocate(struct secure_heap *sec_heap,
+					  struct secure_buffer *sec_buf)
+{
+	/*
+	 * Allocate CMA only when allocating buffer for the first time, and just
+	 * increase cma_used_size_mtk at the other time.
+	 */
+	mutex_lock(&sec_heap->lock);
+	if (sec_heap->cma_used_size_mtk)
+		goto add_size;
+
+	mutex_unlock(&sec_heap->lock);
+	sec_heap->cma_page_mtk = cma_alloc(sec_heap->cma, sec_heap->cma_size >> PAGE_SHIFT,
+					   get_order(PAGE_SIZE), false);
+	if (!sec_heap->cma_page_mtk)
+		return -ENOMEM;
+
+	mutex_lock(&sec_heap->lock);
+add_size:
+	sec_heap->cma_used_size_mtk += sec_buf->size;
+	mutex_unlock(&sec_heap->lock);
+
+	return 0;
+}
+
+static void mtk_secure_memory_cma_free(struct secure_heap *sec_heap,
+				       struct secure_buffer *sec_buf)
+{
+	bool cma_is_empty;
+
+	mutex_lock(&sec_heap->lock);
+	sec_heap->cma_used_size_mtk -= sec_buf->size;
+	cma_is_empty = !sec_heap->cma_used_size_mtk;
+	mutex_unlock(&sec_heap->lock);
+
+	if (cma_is_empty)
+		cma_release(sec_heap->cma, sec_heap->cma_page_mtk,
+			    sec_heap->cma_size >> PAGE_SHIFT);
+}
+
+static int mtk_secure_heap_cma_init(struct secure_heap *sec_heap)
+{
+	if (!sec_heap->cma)
+		return -EINVAL;
+	mutex_init(&sec_heap->lock);
+	return 0;
+}
+
+/* Use CMA to prepare the buffer and the memory allocating is within the TEE. */
+const struct secure_heap_prv_data mtk_sec_mem_data_cma = {
+	.uuid			= TZ_TA_MEM_UUID_MTK,
+	.tee_impl_id		= TEE_IMPL_ID_OPTEE,
+	.tee_command_id_base	= TEE_MEM_COMMAND_ID_BASE_MTK,
+	.heap_init		= mtk_secure_heap_cma_init,
+	.memory_alloc		= mtk_secure_memory_cma_allocate,
+	.memory_free		= mtk_secure_memory_cma_free,
+	.secure_the_memory	= secure_heap_tee_secure_memory,
+	.unsecure_the_memory	= secure_heap_tee_unsecure_memory,
+};
+
 /* The memory allocating is within the TEE. */
 const struct secure_heap_prv_data mtk_sec_mem_data = {
 	.uuid			= TZ_TA_MEM_UUID_MTK,
@@ -420,20 +501,59 @@ static struct secure_heap secure_heaps[] = {
 		.mem_type	= SECURE_MEMORY_TYPE_MTK_CM_TZ,
 		.data		= &mtk_sec_mem_data,
 	},
+	{
+		.name		= "secure_mtk_cma",
+		.mem_type	= SECURE_MEMORY_TYPE_MTK_CM_CMA,
+		.data		= &mtk_sec_mem_data_cma,
+	},
 };
 
+static int __init secure_cma_init(struct reserved_mem *rmem)
+{
+	struct secure_heap *sec_heap = secure_heaps;
+	struct cma *sec_cma;
+	int ret, i;
+
+	ret = cma_init_reserved_mem(rmem->base, rmem->size, 0, rmem->name,
+				    &sec_cma);
+	if (ret) {
+		pr_err("%s: %s set up CMA fail\n", __func__, rmem->name);
+		return ret;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(secure_heaps); i++, sec_heap++) {
+		if (sec_heap->mem_type != SECURE_MEMORY_TYPE_MTK_CM_CMA)
+			continue;
+
+		sec_heap->cma = sec_cma;
+		sec_heap->cma_paddr = rmem->base;
+		sec_heap->cma_size = rmem->size;
+	}
+	return 0;
+}
+
+RESERVEDMEM_OF_DECLARE(secure_cma, "secure_cma_region", secure_cma_init);
+
 static int secure_heap_init(void)
 {
 	struct secure_heap *sec_heap = secure_heaps;
 	struct dma_heap_export_info exp_info;
 	struct dma_heap *heap;
 	unsigned int i;
+	int ret;
 
 	for (i = 0; i < ARRAY_SIZE(secure_heaps); i++, sec_heap++) {
 		exp_info.name = sec_heap->name;
 		exp_info.ops = &sec_heap_ops;
 		exp_info.priv = (void *)sec_heap;
 
+		if (sec_heap->data && sec_heap->data->heap_init) {
+			ret = sec_heap->data->heap_init(sec_heap);
+			if (ret) {
+				pr_err("sec_heap %s init fail %d.\n", sec_heap->name, ret);
+				continue;
+			}
+		}
 		heap = dma_heap_add(&exp_info);
 		if (IS_ERR(heap))
 			return PTR_ERR(heap);
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
