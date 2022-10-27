Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E00E60FBB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 17:21:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 006E13F59F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 15:21:33 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id A9E783ECD4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 07:28:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=NjBwhMzg;
	spf=pass (lists.linaro.org: domain of mark-pk.tsai@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=mark-pk.tsai@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: c259a5c7d9254db3881abf04af8bfe9e-20221027
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=fit9DE1uftXws95JgYIXJNf7F1hkoUCp6yPmdEg2Etg=;
	b=NjBwhMzgIpV2QjhmFfavsFozFD0hzPU6FIfOm+3WV2QPRWAVHms6h8t1iCsJ1q87o2LKzgA9EHh1K1JmyAPMZptSv7z/fh0r8AmQOVgC9NfVE1YmoexPzaEWaDDekmYtm3n4CLS3vT+r62mh0I323doX0sHoaSZlET9qDjaYHJs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.12,REQID:f43c6b74-3081-4e4a-97ba-9770d31875b6,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:100,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:100
X-CID-INFO: VERSION:1.1.12,REQID:f43c6b74-3081-4e4a-97ba-9770d31875b6,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:100,FILE:0,BULK:0,RULE:Spam_GS981B3D,ACTIO
	N:quarantine,TS:100
X-CID-META: VersionHash:62cd327,CLOUDID:b75ed6e4-e572-4957-be22-d8f73f3158f9,B
	ulkID:221027152809CX8AZQO0,BulkQuantity:0,Recheck:0,SF:38|28|17|19|48,TC:n
	il,Content:0,EDM:-3,IP:nil,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: c259a5c7d9254db3881abf04af8bfe9e-20221027
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <mark-pk.tsai@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2146327282; Thu, 27 Oct 2022 15:28:09 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Thu, 27 Oct 2022 15:28:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Thu, 27 Oct 2022 15:28:07 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, "Laura
 Abbott" <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, "John
 Stultz" <jstultz@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?=
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 27 Oct 2022 15:26:38 +0800
Message-ID: <20221027072642.23787-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: +
X-Rspamd-Queue-Id: A9E783ECD4
X-Spamd-Result: default: False [1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.138/32];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[linaro.org,collabora.com,codeaurora.org,redhat.com,arm.com,google.com,amd.com,gmail.com];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[60.244.123.138:from]
X-Spam-Level: *
X-MailFrom: mark-pk.tsai@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4G4EZCIPBFBCLUZRYOL6AUSLHII52I2G
X-Message-ID-Hash: 4G4EZCIPBFBCLUZRYOL6AUSLHII52I2G
X-Mailman-Approved-At: Thu, 27 Oct 2022 15:21:02 +0000
CC: yj.chiang@mediatek.com, Mark-PK Tsai <mark-pk.tsai@mediatek.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: cma_heap: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4G4EZCIPBFBCLUZRYOL6AUSLHII52I2G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Fix typo in comment.

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
