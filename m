Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C00DC48D806
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 13:33:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E97713ED74
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 12:33:31 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 4DA5C3ED74
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 12:33:27 +0000 (UTC)
X-UUID: a357bcd85de4422e9e90e55554a8dd4d-20220113
X-UUID: a357bcd85de4422e9e90e55554a8dd4d-20220113
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw02.mediatek.com
	(envelope-from <guangming.cao@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1167861225; Thu, 13 Jan 2022 20:33:19 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.792.3;
 Thu, 13 Jan 2022 20:33:17 +0800
Received: from mszswglt01.gcn.mediatek.inc (10.16.20.20) by
 mtkcas11.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.0.1497.2 via Frontend Transport; Thu, 13 Jan 2022 20:33:16 +0800
From: <guangming.cao@mediatek.com>
To: <sumit.semwal@linaro.org>
Date: Thu, 13 Jan 2022 20:34:06 +0800
Message-ID: <20220113123406.11520-1-guangming.cao@mediatek.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
MIME-Version: 1.0
X-MTK: N
Message-ID-Hash: NVTSPHGXVGC43EDGAITTFI4MTG34OAZV
X-Message-ID-Hash: NVTSPHGXVGC43EDGAITTFI4MTG34OAZV
X-MailFrom: guangming.cao@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: benjamin.gaignard@linaro.org, bo.song@mediatek.com, brian.starkey@arm.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, guangming.cao@mediatek.com, jianjiao.zeng@mediatek.com, john.stultz@linaro.org, labbott@redhat.com, libo.kang@mediatek.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, matthias.bgg@gmail.com, mingyuan.ma@mediatek.com, wsd_upstream@mediatek.com, yf.wang@mediatek.com, Guangming <Guangming.Cao@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NVTSPHGXVGC43EDGAITTFI4MTG34OAZV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Guangming <Guangming.Cao@mediatek.com>

Add a size check for allocation since the allocation size is
always less than the total DRAM size.

Without this check, once the invalid size allocation runs on a process that
can't be killed by OOM flow(such as "gralloc" on Android devices), it will
cause a kernel exception, and to make matters worse, we can't find who are using
so many memory with "dma_buf_debug_show" since the relevant dma-buf hasn't exported.

To make OOM issue easier, maybe need dma-buf framework to dump the buffer size
under allocating in "dma_buf_debug_show".

Signed-off-by: Guangming <Guangming.Cao@mediatek.com>
Signed-off-by: jianjiao zeng <jianjiao.zeng@mediatek.com>
---
v3: 1. update patch, use right shift to replace division.
    2. update patch, add reason in code and commit message.
v2: 1. update size limitation as total_dram page size.
    2. update commit message
---
 drivers/dma-buf/dma-heap.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index 56bf5ad01ad5..1fd382712584 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -55,6 +55,16 @@ static int dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
 	struct dma_buf *dmabuf;
 	int fd;
 
+	/*
+	 * Invalid size check. The "len" should be less than totalram.
+	 *
+	 * Without this check, once the invalid size allocation runs on a process that
+	 * can't be killed by OOM flow(such as "gralloc" on Android devices), it will
+	 * cause a kernel exception, and to make matters worse, we can't find who are using
+	 * so many memory with "dma_buf_debug_show" since the relevant dma-buf hasn't exported.
+	 */
+	if (len >> PAGE_SHIFT > totalram_pages())
+		return -EINVAL;
 	/*
 	 * Allocations from all heaps have to begin
 	 * and end on page boundaries.
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
