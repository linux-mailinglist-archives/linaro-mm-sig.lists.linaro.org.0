Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DF68C65B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 13:25:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9815D40C97
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 11:25:47 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id B3CAE410C1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 11:25:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=mcOjeSVb;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: c21bdeba12ad11efb92737409a0e9459-20240515
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=buygVuho50A/P4N5uY7njaMQ+WncCQXnsVcfc7HwcY0=;
	b=mcOjeSVbXrvH93OGysML/6AnWgc7vchqqyRzFb512YCWnsjpaM/MQJt04MRNCORCmyeZvs9Tcvaf7Lozq5EF9NhEKZY676Tdw4D/n903s2OFOudAVJyhJPECM7KBQ6eoaF+ZvF/5GvxPEG4+BdhL6FEQQowWTiEuNJCMzxiZSkY=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:f417a707-df60-456c-98ac-5a680f495e93,IP:0,U
	RL:0,TC:0,Content:-25,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACT
	ION:release,TS:-50
X-CID-META: VersionHash:82c5f88,CLOUDID:f03fca92-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:1,IP:nil,UR
	L:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,S
	PR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: c21bdeba12ad11efb92737409a0e9459-20240515
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 410548808; Wed, 15 May 2024 19:24:56 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 15 May 2024 19:24:55 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 15 May 2024 19:24:54 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <christian.koenig@amd.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 15 May 2024 19:23:06 +0800
Message-ID: <20240515112308.10171-8-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240515112308.10171-1-yong.wu@mediatek.com>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B3CAE410C1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,gmail.com,infradead.org,deltatee.com,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[33];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,amd.com,linaro.org,linux-foundation.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: DTQZIMTTCB4IUEG3FTG3FGWQZL2T462M
X-Message-ID-Hash: DTQZIMTTCB4IUEG3FTG3FGWQZL2T462M
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, willy@infradead.org, Logan Gunthorpe <logang@deltatee.com>, Daniel Vetter <daniel@ffwll.ch>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@medi
 atek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 7/9] dma-buf: heaps: restricted_heap: Add MediaTek restricted heap and heap_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DTQZIMTTCB4IUEG3FTG3FGWQZL2T462M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add a MediaTek restricted heap which uses TEE service call to restrict
buffer. Currently this restricted heap is NULL, Prepare for the later
patch. Mainly there are two changes:
a) Add a heap_init ops since TEE probe late than restricted heap, thus
   initialize the heap when we require the buffer the first time.
b) Add a priv_data for each heap, like the special data used by MTK
   (such as "TEE session") can be placed in priv_data.

Currently our heap depends on CMA which could only be bool, thus
depend on "TEE=y".

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/dma-buf/heaps/Kconfig               |   7 ++
 drivers/dma-buf/heaps/Makefile              |   1 +
 drivers/dma-buf/heaps/restricted_heap.c     |  11 ++
 drivers/dma-buf/heaps/restricted_heap.h     |   2 +
 drivers/dma-buf/heaps/restricted_heap_mtk.c | 115 ++++++++++++++++++++
 5 files changed, 136 insertions(+)
 create mode 100644 drivers/dma-buf/heaps/restricted_heap_mtk.c

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index e54506f480ea..84f748fb2856 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -21,3 +21,10 @@ config DMABUF_HEAPS_RESTRICTED
 	  heap is to manage buffers that are inaccessible to the kernel and user space.
 	  There may be several ways to restrict it, for example it may be encrypted or
 	  protected by a TEE or hypervisor. If in doubt, say N.
+
+config DMABUF_HEAPS_RESTRICTED_MTK
+	bool "MediaTek DMA-BUF Restricted Heap"
+	depends on DMABUF_HEAPS_RESTRICTED && TEE=y
+	help
+	  Enable restricted dma-buf heaps for MediaTek platform. This heap is backed by
+	  TEE client interfaces. If in doubt, say N.
diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
index a2437c1817e2..0028aa9d875f 100644
--- a/drivers/dma-buf/heaps/Makefile
+++ b/drivers/dma-buf/heaps/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
 obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED)	+= restricted_heap.o
+obj-$(CONFIG_DMABUF_HEAPS_RESTRICTED_MTK)	+= restricted_heap_mtk.o
 obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
index 4e45d46a6467..8bc8a5e3f969 100644
--- a/drivers/dma-buf/heaps/restricted_heap.c
+++ b/drivers/dma-buf/heaps/restricted_heap.c
@@ -151,11 +151,22 @@ restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
 			 unsigned long fd_flags, unsigned long heap_flags)
 {
 	struct restricted_heap *rheap = dma_heap_get_drvdata(heap);
+	const struct restricted_heap_ops *ops = rheap->ops;
 	struct restricted_buffer *restricted_buf;
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 	struct dma_buf *dmabuf;
 	int ret;
 
+	/*
+	 * In some implements, TEE is required to protect buffer. However TEE probe
+	 * may be late, Thus heap_init is performed when the first buffer is requested.
+	 */
+	if (ops->heap_init) {
+		ret = ops->heap_init(rheap);
+		if (ret)
+			return ERR_PTR(ret);
+	}
+
 	restricted_buf = kzalloc(sizeof(*restricted_buf), GFP_KERNEL);
 	if (!restricted_buf)
 		return ERR_PTR(-ENOMEM);
diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-buf/heaps/restricted_heap.h
index 6d9599a4a34e..2a33a1c7a48b 100644
--- a/drivers/dma-buf/heaps/restricted_heap.h
+++ b/drivers/dma-buf/heaps/restricted_heap.h
@@ -19,6 +19,8 @@ struct restricted_heap {
 	const char		*name;
 
 	const struct restricted_heap_ops *ops;
+
+	void			*priv_data;
 };
 
 struct restricted_heap_ops {
diff --git a/drivers/dma-buf/heaps/restricted_heap_mtk.c b/drivers/dma-buf/heaps/restricted_heap_mtk.c
new file mode 100644
index 000000000000..52e805eb9858
--- /dev/null
+++ b/drivers/dma-buf/heaps/restricted_heap_mtk.c
@@ -0,0 +1,115 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * DMABUF restricted heap exporter for MediaTek
+ *
+ * Copyright (C) 2024 MediaTek Inc.
+ */
+#define pr_fmt(fmt)     "rheap_mtk: " fmt
+
+#include <linux/dma-buf.h>
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/tee_drv.h>
+#include <linux/uuid.h>
+
+#include "restricted_heap.h"
+
+#define TZ_TA_MEM_UUID_MTK		"4477588a-8476-11e2-ad15-e41f1390d676"
+
+#define TEE_PARAM_NUM			4
+
+enum mtk_secure_mem_type {
+	/*
+	 * MediaTek static chunk memory carved out for TrustZone. The memory
+	 * management is inside the TEE.
+	 */
+	MTK_SECURE_MEMORY_TYPE_CM_TZ	= 1,
+};
+
+struct mtk_restricted_heap_data {
+	struct tee_context	*tee_ctx;
+	u32			tee_session;
+
+	const enum mtk_secure_mem_type mem_type;
+
+};
+
+static int mtk_tee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	return ver->impl_id == TEE_IMPL_ID_OPTEE;
+}
+
+static int mtk_tee_session_init(struct mtk_restricted_heap_data *data)
+{
+	struct tee_param t_param[TEE_PARAM_NUM] = {0};
+	struct tee_ioctl_open_session_arg arg = {0};
+	uuid_t ta_mem_uuid;
+	int ret;
+
+	data->tee_ctx = tee_client_open_context(NULL, mtk_tee_ctx_match, NULL, NULL);
+	if (IS_ERR(data->tee_ctx)) {
+		pr_err_once("%s: open context failed, ret=%ld\n", __func__,
+			    PTR_ERR(data->tee_ctx));
+		return -ENODEV;
+	}
+
+	arg.num_params = TEE_PARAM_NUM;
+	arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
+	ret = uuid_parse(TZ_TA_MEM_UUID_MTK, &ta_mem_uuid);
+	if (ret)
+		goto close_context;
+	memcpy(&arg.uuid, &ta_mem_uuid.b, sizeof(ta_mem_uuid));
+
+	ret = tee_client_open_session(data->tee_ctx, &arg, t_param);
+	if (ret < 0 || arg.ret) {
+		pr_err_once("%s: open session failed, ret=%d:%d\n",
+			    __func__, ret, arg.ret);
+		ret = -EINVAL;
+		goto close_context;
+	}
+	data->tee_session = arg.session;
+	return 0;
+
+close_context:
+	tee_client_close_context(data->tee_ctx);
+	return ret;
+}
+
+static int mtk_restricted_heap_init(struct restricted_heap *rheap)
+{
+	struct mtk_restricted_heap_data *data = rheap->priv_data;
+
+	if (!data->tee_ctx)
+		return mtk_tee_session_init(data);
+	return 0;
+}
+
+static const struct restricted_heap_ops mtk_restricted_heap_ops = {
+	.heap_init		= mtk_restricted_heap_init,
+};
+
+static struct mtk_restricted_heap_data mtk_restricted_heap_data = {
+	.mem_type		= MTK_SECURE_MEMORY_TYPE_CM_TZ,
+};
+
+static struct restricted_heap mtk_restricted_heaps[] = {
+	{
+		.name		= "restricted_mtk_cm",
+		.ops		= &mtk_restricted_heap_ops,
+		.priv_data	= &mtk_restricted_heap_data,
+	},
+};
+
+static int mtk_restricted_heap_initialize(void)
+{
+	struct restricted_heap *rheap = mtk_restricted_heaps;
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(mtk_restricted_heaps); i++, rheap++)
+		restricted_heap_add(rheap);
+	return 0;
+}
+module_init(mtk_restricted_heap_initialize);
+MODULE_DESCRIPTION("MediaTek Restricted Heap Driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
