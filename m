Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C530949462C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 04:34:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 996193EEA2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 03:34:10 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 6A7EA3EB7C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 03:34:07 +0000 (UTC)
X-UUID: 0e3172ea1eef46cebc6361e5b4b2992f-20220120
X-UUID: 0e3172ea1eef46cebc6361e5b4b2992f-20220120
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <guangming.cao@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1117506135; Thu, 20 Jan 2022 11:34:01 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.792.3;
 Thu, 20 Jan 2022 11:34:00 +0800
Received: from mszswglt01.gcn.mediatek.inc (10.16.20.20) by
 mtkcas11.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.0.1497.2 via Frontend Transport; Thu, 20 Jan 2022 11:33:59 +0800
From: <guangming.cao@mediatek.com>
To: <john.stultz@linaro.org>
Date: Thu, 20 Jan 2022 11:34:50 +0800
Message-ID: <20220120033450.90164-1-guangming.cao@mediatek.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CALAqxLUtK8V9LgC-DY+tkzFYyWfzF+JhbrLZk6UhEG57HQBDSA@mail.gmail.com>
References: <CALAqxLUtK8V9LgC-DY+tkzFYyWfzF+JhbrLZk6UhEG57HQBDSA@mail.gmail.com>
MIME-Version: 1.0
X-MTK: N
Message-ID-Hash: 4ZM4TSKENQICVSHNQENCPEXJZBEZAXIL
X-Message-ID-Hash: 4ZM4TSKENQICVSHNQENCPEXJZBEZAXIL
X-MailFrom: guangming.cao@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: benjamin.gaignard@linaro.org, bo.song@mediatek.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, guangming.cao@mediatek.com, jianjiao.zeng@mediatek.com, labbott@redhat.com, libo.kang@mediatek.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, matthias.bgg@gmail.com, michael.j.ruhl@intel.com, mingyuan.ma@mediatek.com, wsd_upstream@mediatek.com, yf.wang@mediatek.com, caoguangming34@gmail.com, Guangming <Guangming.Cao@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4] dma-buf: system_heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4ZM4TSKENQICVSHNQENCPEXJZBEZAXIL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Guangming <Guangming.Cao@mediatek.com>

Add a size check for allocation since the allocation size should be
always less than the total DRAM size on system heap.
And it can prevent consuming too much time for invalid allocations.

Signed-off-by: Guangming <Guangming.Cao@mediatek.com>
---
 drivers/dma-buf/heaps/system_heap.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 23a7e74ef966..bd6f255620e2 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -347,6 +347,13 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	struct page *page, *tmp_page;
 	int i, ret = -ENOMEM;
 
+	/*
+	 * Size check. The "len" should be less than totalram since system_heap
+	 * memory is comes from system. Adding check here can prevent consuming
+	 * too much time for invalid allocations.
+	 */
+	if (len >> PAGE_SHIFT > totalram_pages())
+		return -EINVAL;
 	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 	if (!buffer)
 		return ERR_PTR(-ENOMEM);
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
