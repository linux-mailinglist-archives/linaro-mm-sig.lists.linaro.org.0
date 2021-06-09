Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6153A0CE8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jun 2021 08:58:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CBCA6130A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jun 2021 06:58:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8EF566129B; Wed,  9 Jun 2021 06:58:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2595860AF2;
	Wed,  9 Jun 2021 06:58:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 152F960AE3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jun 2021 06:58:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 089B160AF2; Wed,  9 Jun 2021 06:58:51 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by lists.linaro.org (Postfix) with ESMTPS id B839660AE3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jun 2021 06:58:48 +0000 (UTC)
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.54])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4G0Htk2KH1z6vtc;
 Wed,  9 Jun 2021 14:55:42 +0800 (CST)
Received: from dggpeml500020.china.huawei.com (7.185.36.88) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 9 Jun 2021 14:58:46 +0800
Received: from huawei.com (10.175.127.227) by dggpeml500020.china.huawei.com
 (7.185.36.88) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 9 Jun 2021
 14:58:45 +0800
From: Baokun Li <libaokun1@huawei.com>
To: <linux-kernel@vger.kernel.org>, Christian Koenig
 <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>
Date: Wed, 9 Jun 2021 15:07:50 +0800
Message-ID: <20210609070750.1329318-1-libaokun1@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500020.china.huawei.com (7.185.36.88)
X-CFilter-Loop: Reflected
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH -next v2] drm/ttm: use list_move instead of
 list_del/list_add in ttm_execbuf_util.c
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Hulk Robot <hulkci@huawei.com>, kernel-janitors@vger.kernel.org,
 yuehaibing@huawei.com, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, yangjihong1@huawei.com, libaokun1@huawei.com,
 yukuai3@huawei.com, weiyongjun1@huawei.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Using list_move() instead of list_del() + list_add() in ttm_execbuf_util.c.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Baokun Li <libaokun1@huawei.com>
---
V1->V2:
	CC mailist

 drivers/gpu/drm/ttm/ttm_execbuf_util.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_execbuf_util.c b/drivers/gpu/drm/ttm/ttm_execbuf_util.c
index 071c48d672c6..c50943888d04 100644
--- a/drivers/gpu/drm/ttm/ttm_execbuf_util.c
+++ b/drivers/gpu/drm/ttm/ttm_execbuf_util.c
@@ -95,8 +95,7 @@ int ttm_eu_reserve_buffers(struct ww_acquire_ctx *ticket,
 		if (ret == -EALREADY && dups) {
 			struct ttm_validate_buffer *safe = entry;
 			entry = list_prev_entry(entry, head);
-			list_del(&safe->head);
-			list_add(&safe->head, dups);
+			list_move(&safe->head, dups);
 			continue;
 		}
 
@@ -135,8 +134,7 @@ int ttm_eu_reserve_buffers(struct ww_acquire_ctx *ticket,
 		/* move this item to the front of the list,
 		 * forces correct iteration of the loop without keeping track
 		 */
-		list_del(&entry->head);
-		list_add(&entry->head, list);
+		list_move(&entry->head, list);
 	}
 
 	return 0;

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
