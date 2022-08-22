Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBA95F686F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 15:45:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09EBC3F547
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 13:45:28 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lists.linaro.org (Postfix) with ESMTPS id A8AA53EF7B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Aug 2022 23:31:04 +0000 (UTC)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 27MNUQLd074090;
	Mon, 22 Aug 2022 18:30:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1661211026;
	bh=uSkotbdg/hVWC8rjHHqjYakc/nGIs5ok73w5EJZqouk=;
	h=From:To:CC:Subject:Date;
	b=mZsdZQ8LXrXeQc/vTg2jHHWrep9JYsHVZESdztngA3NE/xeLh0MfLwdfZ67BgfBUf
	 ursMG/QGCt1nRB/3Sc/vZ4DjJqZh1K00/2BzwSsbVnrPMzdKrebOj+UCeEcWctIZyL
	 HtRbmPoJX0foUesWbOfUsqet2Vzv7ePRRSvmsySk=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 27MNUQZc026737
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 22 Aug 2022 18:30:26 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 22
 Aug 2022 18:30:26 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 22 Aug 2022 18:30:26 -0500
Received: from ula0226330.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 27MNUPs8007032;
	Mon, 22 Aug 2022 18:30:25 -0500
From: Andrew Davis <afd@ti.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Liam Mark <lmark@codeaurora.org>, Laura
 Abbott <labbott@redhat.com>,
        Brian Starkey <Brian.Starkey@arm.com>,
        John
 Stultz <jstultz@google.com>,
        =?UTF-8?q?Christian=20K=C3=B6nig?=
	<christian.koenig@amd.com>,
        <dri-devel@lists.freedesktop.org>, <linaro-mm-sig@lists.linaro.org>,
        <linux-kernel@vger.kernel.org>
Date: Mon, 22 Aug 2022 18:30:25 -0500
Message-ID: <20220822233025.3965-1-afd@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LCLSDQWFWXKKX2Z5TDPUE6UJAXC55LZJ
X-Message-ID-Hash: LCLSDQWFWXKKX2Z5TDPUE6UJAXC55LZJ
X-Mailman-Approved-At: Thu, 06 Oct 2022 13:43:09 +0000
CC: Andrew Davis <afd@ti.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: cma_heap: Check for device max segment size when attaching
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LCLSDQWFWXKKX2Z5TDPUE6UJAXC55LZJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Although there is usually not such a limitation (and when there is it is
often only because the driver forgot to change the super small default),
it is still correct here to break scatterlist element into chunks of
dma_max_mapping_size().

This might cause some issues for users with misbehaving drivers. If
bisecting has landed you on this commit, make sure your drivers both set
dma_set_max_seg_size() and are checking for contiguousness correctly.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 drivers/dma-buf/heaps/cma_heap.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 28fb04eccdd0..cacc84cb5ece 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -58,10 +58,11 @@ static int cma_heap_attach(struct dma_buf *dmabuf,
 	if (!a)
 		return -ENOMEM;
 
-	ret = sg_alloc_table_from_pages(&a->table, buffer->pages,
-					buffer->pagecount, 0,
-					buffer->pagecount << PAGE_SHIFT,
-					GFP_KERNEL);
+	size_t max_segment = dma_get_max_seg_size(attachment->dev);
+	ret = sg_alloc_table_from_pages_segment(&a->table, buffer->pages,
+						buffer->pagecount, 0,
+						buffer->pagecount << PAGE_SHIFT,
+						max_segment, GFP_KERNEL);
 	if (ret) {
 		kfree(a);
 		return ret;
-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
