Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC51780E22D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Dec 2023 03:47:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E76EC43D2D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Dec 2023 02:47:57 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id C7A2343F6F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Dec 2023 02:47:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=BFB+oMIf;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: bbbcb8ee989811eea5db2bebc7c28f94-20231212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=XaRVYF8RVa6s7Wemh4dazulTChOg4lLt+vsRrGuQUj4=;
	b=BFB+oMIf/BIzlTyrBdIqaKeXAF8d8xA8p7r4YsxvGraZAX8gpf/wAlQ0FFfh09HrfZauTeqJL5gflLE5kLNT0HAtvWdaiFgMkULWuAEwb0+sAdApCsQu5tObjZf+t0J4oSyHGb/w3d/Oho/iyKKad6zUn/fUgTzbEdTvJFAs1FE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:52d011f7-fb57-4b15-a7b8-9409b9225b78,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:5d391d7,CLOUDID:1d87ad73-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: bbbcb8ee989811eea5db2bebc7c28f94-20231212
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1573079492; Tue, 12 Dec 2023 10:47:04 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 12 Dec 2023 10:47:03 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 12 Dec 2023 10:47:02 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 12 Dec 2023 10:46:04 +0800
Message-ID: <20231212024607.3681-5-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231212024607.3681-1-yong.wu@mediatek.com>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Queue-Id: C7A2343F6F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[mailgw01.mediatek.com:rdns,mailgw01.mediatek.com:helo,mediatek.com:email,mediatek.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ndufresne.ca,gmail.com];
	NEURAL_HAM(-0.00)[-1.000]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GHAGQAKW7P7CEZBW23TGA4R5R3L7NUIS
X-Message-ID-Hash: GHAGQAKW7P7CEZBW23TGA4R5R3L7NUIS
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 4/7] dma-buf: heaps: secure_heap: Add dma_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GHAGQAKW7P7CEZBW23TGA4R5R3L7NUIS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add the dma_ops for this secure heap. For secure buffer, cache_ops/mmap
are not allowed, thus return EPERM for them.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/dma-buf/heaps/secure_heap.c | 103 ++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/dma-buf/heaps/secure_heap.c b/drivers/dma-buf/heaps/secure_heap.c
index 925cf8e1c7ce..7cb4db3e55c2 100644
--- a/drivers/dma-buf/heaps/secure_heap.c
+++ b/drivers/dma-buf/heaps/secure_heap.c
@@ -12,6 +12,10 @@
 
 #include "secure_heap.h"
 
+struct secure_heap_attachment {
+	struct sg_table			*table;
+};
+
 static int secure_heap_memory_allocate(struct secure_heap *sec_heap, struct secure_buffer *sec_buf)
 {
 	const struct secure_heap_ops *ops = sec_heap->ops;
@@ -43,6 +47,104 @@ static void secure_heap_memory_free(struct secure_heap *sec_heap, struct secure_
 	ops->memory_free(sec_heap, sec_buf);
 }
 
+static int secure_heap_attach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
+{
+	struct secure_buffer *sec_buf = dmabuf->priv;
+	struct secure_heap_attachment *a;
+	struct sg_table *table;
+	int ret;
+
+	a = kzalloc(sizeof(*a), GFP_KERNEL);
+	if (!a)
+		return -ENOMEM;
+
+	table = kzalloc(sizeof(*table), GFP_KERNEL);
+	if (!table) {
+		ret = -ENOMEM;
+		goto err_free_attach;
+	}
+
+	ret = sg_alloc_table(table, 1, GFP_KERNEL);
+	if (ret)
+		goto err_free_sgt;
+	sg_set_page(table->sgl, NULL, sec_buf->size, 0);
+
+	a->table = table;
+	attachment->priv = a;
+
+	return 0;
+
+err_free_sgt:
+	kfree(table);
+err_free_attach:
+	kfree(a);
+	return ret;
+}
+
+static void secure_heap_detach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
+{
+	struct secure_heap_attachment *a = attachment->priv;
+
+	sg_free_table(a->table);
+	kfree(a->table);
+	kfree(a);
+}
+
+static struct sg_table *
+secure_heap_map_dma_buf(struct dma_buf_attachment *attachment, enum dma_data_direction direction)
+{
+	struct secure_heap_attachment *a = attachment->priv;
+	struct sg_table *table = a->table;
+
+	return table;
+}
+
+static void
+secure_heap_unmap_dma_buf(struct dma_buf_attachment *attachment, struct sg_table *table,
+			  enum dma_data_direction direction)
+{
+	struct secure_heap_attachment *a = attachment->priv;
+
+	WARN_ON(a->table != table);
+}
+
+static int
+secure_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf, enum dma_data_direction direction)
+{
+	return -EPERM;
+}
+
+static int
+secure_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf, enum dma_data_direction direction)
+{
+	return -EPERM;
+}
+
+static int secure_heap_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
+{
+	return -EPERM;
+}
+
+static void secure_heap_free(struct dma_buf *dmabuf)
+{
+	struct secure_buffer *sec_buf = dmabuf->priv;
+	struct secure_heap *sec_heap = dma_heap_get_drvdata(sec_buf->heap);
+
+	secure_heap_memory_free(sec_heap, sec_buf);
+	kfree(sec_buf);
+}
+
+static const struct dma_buf_ops sec_heap_buf_ops = {
+	.attach		= secure_heap_attach,
+	.detach		= secure_heap_detach,
+	.map_dma_buf	= secure_heap_map_dma_buf,
+	.unmap_dma_buf	= secure_heap_unmap_dma_buf,
+	.begin_cpu_access = secure_heap_dma_buf_begin_cpu_access,
+	.end_cpu_access	= secure_heap_dma_buf_end_cpu_access,
+	.mmap		= secure_heap_dma_buf_mmap,
+	.release	= secure_heap_free,
+};
+
 static struct dma_buf *
 secure_heap_allocate(struct dma_heap *heap, unsigned long size,
 		     unsigned long fd_flags, unsigned long heap_flags)
@@ -64,6 +166,7 @@ secure_heap_allocate(struct dma_heap *heap, unsigned long size,
 	if (ret)
 		goto err_free_buf;
 	exp_info.exp_name = dma_heap_get_name(heap);
+	exp_info.ops = &sec_heap_buf_ops;
 	exp_info.size = sec_buf->size;
 	exp_info.flags = fd_flags;
 	exp_info.priv = sec_buf;
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
