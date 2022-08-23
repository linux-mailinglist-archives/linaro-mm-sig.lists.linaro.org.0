Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CD95F6870
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 15:45:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6E9E3F56D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 13:45:49 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id A97223F196
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Aug 2022 14:39:34 +0000 (UTC)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 27NEcu7x028058;
	Tue, 23 Aug 2022 09:38:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1661265536;
	bh=SrhwDfFmCKDHUwaKLYHtQUV86zVweQBvySv+nYqBj6g=;
	h=From:To:CC:Subject:Date;
	b=kAjpgjcE4BAbFQTEA17ZsjxBOspxBjetf+L66QoUUGj43WxBpFahfFcC0zP/lJqkk
	 fAHm3t02e4s9JM6FGqmsdd5L6SsMD77Zbp2EL5JJK1kfACF1G8zowNzd24AyFV6Msg
	 CX2STekgHcGfDXltAu41uibxpDoAi4kYXsCEPnso=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 27NEcuWN014059
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 23 Aug 2022 09:38:56 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 23
 Aug 2022 09:38:56 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 23 Aug 2022 09:38:56 -0500
Received: from ula0226330.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 27NEctxN038712;
	Tue, 23 Aug 2022 09:38:55 -0500
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
Date: Tue, 23 Aug 2022 09:38:55 -0500
Message-ID: <20220823143855.12065-1-afd@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XABYDYNFFARG3KDK7VJWOO67YKMRQVTV
X-Message-ID-Hash: XABYDYNFFARG3KDK7VJWOO67YKMRQVTV
X-Mailman-Approved-At: Thu, 06 Oct 2022 13:43:10 +0000
CC: Andrew Davis <afd@ti.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: cma_heap: Check for device max segment size when attaching
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XABYDYNFFARG3KDK7VJWOO67YKMRQVTV/>
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

Changes from v1:
 - Fixed mixed declarations and code warning

 drivers/dma-buf/heaps/cma_heap.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 28fb04eccdd0..a927b248c045 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -52,16 +52,18 @@ static int cma_heap_attach(struct dma_buf *dmabuf,
 {
 	struct cma_heap_buffer *buffer = dmabuf->priv;
 	struct dma_heap_attachment *a;
+	size_t max_segment;
 	int ret;
 
 	a = kzalloc(sizeof(*a), GFP_KERNEL);
 	if (!a)
 		return -ENOMEM;
 
-	ret = sg_alloc_table_from_pages(&a->table, buffer->pages,
-					buffer->pagecount, 0,
-					buffer->pagecount << PAGE_SHIFT,
-					GFP_KERNEL);
+	max_segment = dma_get_max_seg_size(attachment->dev);
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
