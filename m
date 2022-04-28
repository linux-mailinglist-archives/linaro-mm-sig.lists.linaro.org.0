Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D67513061
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 11:55:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3D7247FC7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 09:55:17 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	by lists.linaro.org (Postfix) with ESMTPS id 0E7D53EEEF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 06:20:51 +0000 (UTC)
Received: from dggpeml500026.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Kplq56cyczhYmg;
	Thu, 28 Apr 2022 14:20:33 +0800 (CST)
Received: from localhost.localdomain (10.175.112.125) by
 dggpeml500026.china.huawei.com (7.185.36.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Thu, 28 Apr 2022 14:20:47 +0800
From: Yuanzheng Song <songyuanzheng@huawei.com>
To: <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
	<dri-devel@lists.freedesktop.org>, <linaro-mm-sig@lists.linaro.org>
Date: Thu, 28 Apr 2022 06:39:24 +0000
Message-ID: <20220428063924.3570409-1-songyuanzheng@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.125]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpeml500026.china.huawei.com (7.185.36.106)
X-CFilter-Loop: Reflected
X-MailFrom: songyuanzheng@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ME4XBZQXA2VXGF2PHN5QPX2ATACR7RCJ
X-Message-ID-Hash: ME4XBZQXA2VXGF2PHN5QPX2ATACR7RCJ
X-Mailman-Approved-At: Thu, 28 Apr 2022 09:55:13 +0000
CC: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, Yuanzheng Song <songyuanzheng@huawei.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: add the name field to the table header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ME4XBZQXA2VXGF2PHN5QPX2ATACR7RCJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

'cat /sys/kernel/debug/dma_buf/bufinfo' will print the Dma-buf
Objects' information when the CONFIG_DEBUG_FS=y.
However, the printed table header information does not contain
the name field. So we need to add the name field to the table
header and use the '<none>' to replace the empty buf_obj->name.

Signed-off-by: Yuanzheng Song <songyuanzheng@huawei.com>
---
 drivers/dma-buf/dma-buf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 79795857be3e..a2f9a1815e38 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -1351,7 +1351,7 @@ static int dma_buf_debug_show(struct seq_file *s, void *unused)
 		return ret;
 
 	seq_puts(s, "\nDma-buf Objects:\n");
-	seq_printf(s, "%-8s\t%-8s\t%-8s\t%-8s\texp_name\t%-8s\n",
+	seq_printf(s, "%-8s\t%-8s\t%-8s\t%-8s\texp_name\t%-8s\tname\n",
 		   "size", "flags", "mode", "count", "ino");
 
 	list_for_each_entry(buf_obj, &db_list.head, list_node) {
@@ -1368,7 +1368,7 @@ static int dma_buf_debug_show(struct seq_file *s, void *unused)
 				file_count(buf_obj->file),
 				buf_obj->exp_name,
 				file_inode(buf_obj->file)->i_ino,
-				buf_obj->name ?: "");
+				buf_obj->name ?: "<none>");
 		spin_unlock(&buf_obj->name_lock);
 
 		dma_resv_describe(buf_obj->resv, s);
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
