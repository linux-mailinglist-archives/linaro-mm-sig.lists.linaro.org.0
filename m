Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0EC610B0A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 09:11:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C1943F5A2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 07:11:05 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 64C293ED39
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 07:10:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=anKIvAMl;
	spf=pass (lists.linaro.org: domain of mark-pk.tsai@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=mark-pk.tsai@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: f56dba9acbb249abaeed337066c527f0-20221028
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=Om6e9HJa3Y2xbqqlidvMSIavVsT9gkHzqKrxqv9RHmM=;
	b=anKIvAMl8gYU0EQ1LtLet6Zb1/AHJF/raCeGXrbsW3dbd9BJxf4AgKd7s6V9C+njJl+msVYIJhICS2WX4q2q1vhTvvkZsN80p1+u3WCMs+sjKsd94kDT2q/xehT+efwShxYUbD/3i6+lUBv9Wo+K127JSMbgLp7+/VKp+LqiEfA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.12,REQID:bbf317af-822f-4da6-9921-2a58100b0b80,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:62cd327,CLOUDID:0ae76827-9eb1-469f-b210-e32d06cfa36e,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: f56dba9acbb249abaeed337066c527f0-20221028
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <mark-pk.tsai@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2077977924; Fri, 28 Oct 2022 14:55:35 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Fri, 28 Oct 2022 14:55:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Fri, 28 Oct 2022 14:55:34 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, "Laura
 Abbott" <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, "John
 Stultz" <jstultz@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?=
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 28 Oct 2022 14:55:26 +0800
Message-ID: <20221028065533.23856-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: /
X-Rspamd-Queue-Id: 64C293ED39
X-Spamd-Result: default: False [0.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[mediatek.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[210.61.82.184:from];
	FROM_HAS_DN(0.00)[];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	DKIM_TRACE(0.00)[mediatek.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,collabora.com,codeaurora.org,redhat.com,arm.com,google.com,amd.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: BP4II6KPEKFBPIAQIVAPCB6CADX3TSYP
X-Message-ID-Hash: BP4II6KPEKFBPIAQIVAPCB6CADX3TSYP
X-MailFrom: mark-pk.tsai@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: yj.chiang@mediatek.com, Mark-PK Tsai <mark-pk.tsai@mediatek.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] dma-buf: cma_heap: Remove duplicated 'by' in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BP4II6KPEKFBPIAQIVAPCB6CADX3TSYP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Remove duplicated 'by' from comment in cma_heap_allocate().

Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
---
 drivers/dma-buf/heaps/cma_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 28fb04eccdd0..cd386ce639f3 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -316,7 +316,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 			kunmap_atomic(vaddr);
 			/*
 			 * Avoid wasting time zeroing memory if the process
-			 * has been killed by by SIGKILL
+			 * has been killed by SIGKILL
 			 */
 			if (fatal_signal_pending(current))
 				goto free_cma;
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
