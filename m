Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D126B82BCE7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 10:21:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAC1A43FEC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 09:21:49 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id BEB1143FED
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 09:21:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=TD9sqqYI;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: e5792f18b12b11eea2298b7352fd921d-20240112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=6jHIiPkYdMqrIuViIDt09m/oNMLq/0qMbZqFoJXbNq8=;
	b=TD9sqqYIY5f+voXnqFuUeaiG7sOiy6ohkg3BKaAJwktv05l2zpep8PsoIk5lNQ9toA2slerzjC7M2yBX4Wk0LyrLDfUQ9GAnSW2UFkIw7qbtDrbX4AzwE/WFjZcGjFF4Ak8tFRnVOUO3sep+Bal8dtH6YilWJ6Oel/eAP2DcORQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:5526147d-f6e3-44a3-b444-a2d928507d93,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:dd5ac782-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: e5792f18b12b11eea2298b7352fd921d-20240112
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1197223448; Fri, 12 Jan 2024 17:20:58 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 12 Jan 2024 17:20:55 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 12 Jan 2024 17:20:53 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <christian.koenig@amd.com>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Fri, 12 Jan 2024 17:20:10 +0800
Message-ID: <20240112092014.23999-4-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240112092014.23999-1-yong.wu@mediatek.com>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--2.237500-8.000000
X-TMASE-MatchedRID: iSQL5szRvdExaBEU4bKrV0hEDfw/93BuMApqy5cfknVX4H/AHZTAKiyG
	2FFo0u8oRHLRFcKKZXfbCHv011Gy9ZCoy9iDotiwzfqlpbtmcWiH7D1bP/FcOrXvDHySC+eU+a/
	zdHOJ3WkVrfWt68rqN2a39PjWf0NNHxPMjOKY7A8LbigRnpKlKSBuGJWwgxArX1upngn1GyfAxT
	6U8SDb8vUxfqD56Kpg95Wd/WEnd3Q/A2ducvlnMYZSLT91ovb7o0pTThB0QTAQDF6kcoF++1KIU
	FLF1m+Y8mf/2A2Ja/Zpp55fZDlsr34cY/B7JqXaYZ1R7NXn0MdBmmCXcKyFFJ6oP1a0mRIj
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--2.237500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: E17AEBE1573EE56AA0E5BF0CDAEE0C2195895CC9F7701A5D61573FE5E60280622000:8
X-MTK: N
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	RWL_MAILSPIKE_GOOD(-0.10)[210.61.82.184:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,amd.com,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,gmail.com];
	NEURAL_HAM(-0.00)[-1.000]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BEB1143FED
X-Spamd-Bar: --
Message-ID-Hash: G4RBJUEKW7EBIQN3L6K2ZT46XA7FV7EL
X-Message-ID-Hash: G4RBJUEKW7EBIQN3L6K2ZT46XA7FV7EL
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G4RBJUEKW7EBIQN3L6K2ZT46XA7FV7EL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add "struct restricted_heap_ops". For the restricted memory, totally there
are two steps:
a) memory_alloc: Allocate the buffer in kernel;
b) memory_restrict: Restrict/Protect/Secure that buffer.
The memory_alloc is mandatory while memory_restrict is optinal since it may
be part of memory_alloc.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/dma-buf/heaps/restricted_heap.c | 41 ++++++++++++++++++++++++-
 drivers/dma-buf/heaps/restricted_heap.h | 12 ++++++++
 2 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
index fd7c82abd42e..8c266a0f6192 100644
--- a/drivers/dma-buf/heaps/restricted_heap.c
+++ b/drivers/dma-buf/heaps/restricted_heap.c
@@ -12,10 +12,44 @@
 
 #include "restricted_heap.h"
 
+static int
+restricted_heap_memory_allocate(struct restricted_heap *heap, struct restricted_buffer *buf)
+{
+	const struct restricted_heap_ops *ops = heap->ops;
+	int ret;
+
+	ret = ops->memory_alloc(heap, buf);
+	if (ret)
+		return ret;
+
+	if (ops->memory_restrict) {
+		ret = ops->memory_restrict(heap, buf);
+		if (ret)
+			goto memory_free;
+	}
+	return 0;
+
+memory_free:
+	ops->memory_free(heap, buf);
+	return ret;
+}
+
+static void
+restricted_heap_memory_free(struct restricted_heap *heap, struct restricted_buffer *buf)
+{
+	const struct restricted_heap_ops *ops = heap->ops;
+
+	if (ops->memory_unrestrict)
+		ops->memory_unrestrict(heap, buf);
+
+	ops->memory_free(heap, buf);
+}
+
 static struct dma_buf *
 restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
 			 unsigned long fd_flags, unsigned long heap_flags)
 {
+	struct restricted_heap *restricted_heap = dma_heap_get_drvdata(heap);
 	struct restricted_buffer *restricted_buf;
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 	struct dma_buf *dmabuf;
@@ -28,6 +62,9 @@ restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
 	restricted_buf->size = ALIGN(size, PAGE_SIZE);
 	restricted_buf->heap = heap;
 
+	ret = restricted_heap_memory_allocate(restricted_heap, restricted_buf);
+	if (ret)
+		goto err_free_buf;
 	exp_info.exp_name = dma_heap_get_name(heap);
 	exp_info.size = restricted_buf->size;
 	exp_info.flags = fd_flags;
@@ -36,11 +73,13 @@ restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
 	dmabuf = dma_buf_export(&exp_info);
 	if (IS_ERR(dmabuf)) {
 		ret = PTR_ERR(dmabuf);
-		goto err_free_buf;
+		goto err_free_restricted_mem;
 	}
 
 	return dmabuf;
 
+err_free_restricted_mem:
+	restricted_heap_memory_free(restricted_heap, restricted_buf);
 err_free_buf:
 	kfree(restricted_buf);
 	return ERR_PTR(ret);
diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-buf/heaps/restricted_heap.h
index 443028f6ba3b..ddeaf9805708 100644
--- a/drivers/dma-buf/heaps/restricted_heap.h
+++ b/drivers/dma-buf/heaps/restricted_heap.h
@@ -15,6 +15,18 @@ struct restricted_buffer {
 
 struct restricted_heap {
 	const char		*name;
+
+	const struct restricted_heap_ops *ops;
+};
+
+struct restricted_heap_ops {
+	int	(*heap_init)(struct restricted_heap *heap);
+
+	int	(*memory_alloc)(struct restricted_heap *heap, struct restricted_buffer *buf);
+	void	(*memory_free)(struct restricted_heap *heap, struct restricted_buffer *buf);
+
+	int	(*memory_restrict)(struct restricted_heap *heap, struct restricted_buffer *buf);
+	void	(*memory_unrestrict)(struct restricted_heap *heap, struct restricted_buffer *buf);
 };
 
 int restricted_heap_add(struct restricted_heap *rstrd_heap);
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
