Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D949F7E8A8B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 12:17:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E01A340D41
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 11:16:59 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id DBFF840D17
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Nov 2023 11:16:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=c+mim2i6;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com
X-UUID: c4339024808311ee8051498923ad61e6-20231111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=5pqE+DYe4rnOPGFUkj/FPYZIcGvVBO4Lr5b8DvLKJBo=;
	b=c+mim2i6dEexF8Tnh9YJuu5YBWMcFMpL2rAsq/tNPDLiNWqkuQ3KhXiaxqmbntCQRBU3OTfH7FrRNEhjriffZDOtyEUikX9t1O0wPDB9NNXvej/t7BSre+zUywVow9GlVRPibkYzxdi4xl4HziIpBgVW3xRTKmguuzPUzuDPo1A=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33,REQID:d1206b75-2855-4af6-8b3e-693319a057c2,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:364b77b,CLOUDID:356669fc-4a48-46e2-b946-12f04f20af8c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: c4339024808311ee8051498923ad61e6-20231111
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1528022555; Sat, 11 Nov 2023 19:16:31 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sat, 11 Nov 2023 19:16:29 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sat, 11 Nov 2023 19:16:28 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Sat, 11 Nov 2023 19:15:52 +0800
Message-ID: <20231111111559.8218-2-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231111111559.8218-1-yong.wu@mediatek.com>
References: <20231111111559.8218-1-yong.wu@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--0.102500-8.000000
X-TMASE-MatchedRID: R/IVBg3SNBztAxjyNphE0lz+axQLnAVB5Y0kb0hqatw1LB46LFAAkpkC
	erFMaabiXQS0szagh4NSeVWfRpnv1OG0fWP55EEGma6DzXaohvPJ5SXtoJPLyCfO9H6Y/dy+Ogm
	GgL3Bwl0o7OCuyuJ1PmqR4nX2iz2+28kC8Kr7Asnil2r2x2PwtYfsPVs/8Vw6wDR44lliPu14ou
	ZEjkeLRr1/tzoqsVtZ7u6XJjV0Px9vrBnHW6XSnLrbxxduc6FPfrTt+hmA5bLczkKO5k4APoHP3
	u3XDM5D4vM1YF6AJbbCCfuIMF6xLd934/rDAK3zlGdyD+QE2h9stf3gH1DFfDLh2YhC+ssg+n7K
	vjpDA2q2eoE4McoveEfJyHP7nZLkRo7PQ4TnmqaIqXjHhHSOrf0wV9qYAdsBye5hsD33dxxtUY6
	LqdlQnFr3vnlc+D6eVZObrZkNVZRlRd/nfa56MaSPBBRGVW4o
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--0.102500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: B1A63D69B5B3FF16385E0990BF5DBBB8142FEFB549F5713A3389450CC12E462B2000:8
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DBFF840D17
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32:c];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[210.61.82.184:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ndufresne.ca,gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: USJALKRZWN6VD3GOC2GH4TJD2G5B55OL
X-Message-ID-Hash: USJALKRZWN6VD3GOC2GH4TJD2G5B55OL
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/8] dma-buf: heaps: Initialize a secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/USJALKRZWN6VD3GOC2GH4TJD2G5B55OL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Initialize a secure heap. Currently just add a null heap, Prepare for
the later patches.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/dma-buf/heaps/Kconfig       |  7 +++
 drivers/dma-buf/heaps/Makefile      |  1 +
 drivers/dma-buf/heaps/secure_heap.c | 98 +++++++++++++++++++++++++++++
 3 files changed, 106 insertions(+)
 create mode 100644 drivers/dma-buf/heaps/secure_heap.c

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index a5eef06c4226..e358bf711145 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -12,3 +12,10 @@ config DMABUF_HEAPS_CMA
 	  Choose this option to enable dma-buf CMA heap. This heap is backed
 	  by the Contiguous Memory Allocator (CMA). If your system has these
 	  regions, you should say Y here.
+
+config DMABUF_HEAPS_SECURE
+	bool "DMA-BUF Secure Heap"
+	depends on DMABUF_HEAPS && TEE
+	help
+	  Choose this option to enable dma-buf secure heap. This heap is backed by
+	  TEE client interfaces or CMA. If in doubt, say N.
diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
index 974467791032..b1ad9d1f2fbe 100644
--- a/drivers/dma-buf/heaps/Makefile
+++ b/drivers/dma-buf/heaps/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_DMABUF_HEAPS_SECURE)	+= secure_heap.o
 obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
 obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
diff --git a/drivers/dma-buf/heaps/secure_heap.c b/drivers/dma-buf/heaps/secure_heap.c
new file mode 100644
index 000000000000..a634051a0a67
--- /dev/null
+++ b/drivers/dma-buf/heaps/secure_heap.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * DMABUF secure heap exporter
+ *
+ * Copyright (C) 2023 MediaTek Inc.
+ */
+
+#include <linux/dma-buf.h>
+#include <linux/dma-heap.h>
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+
+enum secure_memory_type {
+	/*
+	 * MediaTek static chunk memory carved out for TrustZone. The memory
+	 * management is inside the TEE.
+	 */
+	SECURE_MEMORY_TYPE_MTK_CM_TZ	= 1,
+};
+
+struct secure_buffer {
+	struct dma_heap			*heap;
+	size_t				size;
+};
+
+struct secure_heap {
+	const char			*name;
+	const enum secure_memory_type	mem_type;
+};
+
+static struct dma_buf *
+secure_heap_allocate(struct dma_heap *heap, unsigned long size,
+		     unsigned long fd_flags, unsigned long heap_flags)
+{
+	struct secure_buffer *sec_buf;
+	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
+	struct dma_buf *dmabuf;
+	int ret;
+
+	sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
+	if (!sec_buf)
+		return ERR_PTR(-ENOMEM);
+
+	sec_buf->size = ALIGN(size, PAGE_SIZE);
+	sec_buf->heap = heap;
+
+	exp_info.exp_name = dma_heap_get_name(heap);
+	exp_info.size = sec_buf->size;
+	exp_info.flags = fd_flags;
+	exp_info.priv = sec_buf;
+
+	dmabuf = dma_buf_export(&exp_info);
+	if (IS_ERR(dmabuf)) {
+		ret = PTR_ERR(dmabuf);
+		goto err_free_buf;
+	}
+
+	return dmabuf;
+
+err_free_buf:
+	kfree(sec_buf);
+	return ERR_PTR(ret);
+}
+
+static const struct dma_heap_ops sec_heap_ops = {
+	.allocate = secure_heap_allocate,
+};
+
+static struct secure_heap secure_heaps[] = {
+	{
+		.name		= "secure_mtk_cm",
+		.mem_type	= SECURE_MEMORY_TYPE_MTK_CM_TZ,
+	},
+};
+
+static int secure_heap_init(void)
+{
+	struct secure_heap *sec_heap = secure_heaps;
+	struct dma_heap_export_info exp_info;
+	struct dma_heap *heap;
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(secure_heaps); i++, sec_heap++) {
+		exp_info.name = sec_heap->name;
+		exp_info.ops = &sec_heap_ops;
+		exp_info.priv = (void *)sec_heap;
+
+		heap = dma_heap_add(&exp_info);
+		if (IS_ERR(heap))
+			return PTR_ERR(heap);
+	}
+	return 0;
+}
+
+module_init(secure_heap_init);
+MODULE_DESCRIPTION("Secure Heap Driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
