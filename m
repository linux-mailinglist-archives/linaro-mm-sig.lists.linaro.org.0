Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DA98C6589
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 13:24:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1473643D37
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 11:24:14 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id B3ABE441A8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 11:23:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=YSSbYq5r;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 9a7ddfe812ad11ef8065b7b53f7091ad-20240515
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=NarYFV9zitHC0a/dKQv6CpzSu0O4WzMUjZiRTiPvYRk=;
	b=YSSbYq5rADUMeehe1983rnEkN9+hymohAMwkvULLv2NGUbdSDdc75vCfEuQMRRxHu2fuDC1hRZCKmLZQN+9ebyiO4jn2WRy2L9yZEe2ak9zw/spDdkfgxTcWQ3MBbAhN8eIZyOE6tY/0RfanMiQBmVFTkRxkaAPKnF0yGycA/7o=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:6bcbe974-3b56-4b5a-a3da-f17ea27eea34,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:82c5f88,CLOUDID:98c81ffc-ed05-4274-9204-014369d201e8,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 9a7ddfe812ad11ef8065b7b53f7091ad-20240515
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1038484702; Wed, 15 May 2024 19:23:50 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 15 May 2024 04:23:48 -0700
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 15 May 2024 19:23:47 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <christian.koenig@amd.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 15 May 2024 19:23:01 +0800
Message-ID: <20240515112308.10171-3-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240515112308.10171-1-yong.wu@mediatek.com>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B3ABE441A8
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
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,amd.com,linaro.org,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,gmail.com,infradead.org,deltatee.com,ffwll.ch]
X-Rspamd-Action: no action
Message-ID-Hash: RT6BSYGRJJ4ZU2T5U4AADAMINOF7LVXF
X-Message-ID-Hash: RT6BSYGRJJ4ZU2T5U4AADAMINOF7LVXF
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, willy@infradead.org, Logan Gunthorpe <logang@deltatee.com>, Daniel Vetter <daniel@ffwll.ch>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@medi
 atek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RT6BSYGRJJ4ZU2T5U4AADAMINOF7LVXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Introduce a FLAG for the restricted memory which means the memory is
protected by TEE or hypervisor, then it's inaccessiable for kernel.

Currently we don't use sg_dma_unmark_restricted, thus this interface
has not been added.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 include/linux/scatterlist.h | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/include/linux/scatterlist.h b/include/linux/scatterlist.h
index 77df3d7b18a6..a6ad9018eca0 100644
--- a/include/linux/scatterlist.h
+++ b/include/linux/scatterlist.h
@@ -282,6 +282,7 @@ static inline void sg_unmark_end(struct scatterlist *sg)
 
 #define SG_DMA_BUS_ADDRESS	(1 << 0)
 #define SG_DMA_SWIOTLB		(1 << 1)
+#define SG_DMA_RESTRICTED	(2 << 1)
 
 /**
  * sg_dma_is_bus_address - Return whether a given segment was marked
@@ -352,6 +353,31 @@ static inline void sg_dma_mark_swiotlb(struct scatterlist *sg)
 	sg->dma_flags |= SG_DMA_SWIOTLB;
 }
 
+/**
+ * sg_dma_mark_restricted - Mark the scatterlist for restricted buffer.
+ * @sg:		SG entry
+ *
+ * Description:
+ *   Marks a a scatterlist for the restricted buffer that may be inaccessiable
+ *   in kernel if it is protected.
+ */
+static inline void sg_dma_mark_restricted(struct scatterlist *sg)
+{
+	sg->dma_flags |= SG_DMA_RESTRICTED;
+}
+
+/**
+ * sg_dma_is_restricted - Return whether the scatterlist was marked as restricted
+ *                        buffer.
+ * @sg:		SG entry
+ *
+ * Description:
+ *   Returns true if the scatterlist was marked as restricted buffer.
+ */
+static inline bool sg_dma_is_restricted(struct scatterlist *sg)
+{
+	return sg->dma_flags & SG_DMA_RESTRICTED;
+}
 #else
 
 static inline bool sg_dma_is_bus_address(struct scatterlist *sg)
@@ -372,6 +398,14 @@ static inline void sg_dma_mark_swiotlb(struct scatterlist *sg)
 {
 }
 
+static inline bool sg_dma_is_restricted(struct scatterlist *sg)
+{
+	return false;
+}
+
+static inline void sg_dma_mark_restrited(struct scatterlist *sg)
+{
+}
 #endif	/* CONFIG_NEED_SG_DMA_FLAGS */
 
 /**
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
