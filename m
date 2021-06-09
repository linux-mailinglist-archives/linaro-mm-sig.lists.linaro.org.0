Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3E33A0DA0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jun 2021 09:19:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A72656123A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jun 2021 07:19:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7CFC7612A9; Wed,  9 Jun 2021 07:19:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7A6560AF2;
	Wed,  9 Jun 2021 07:19:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6AF1160A9F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jun 2021 07:19:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5EAC860AF2; Wed,  9 Jun 2021 07:19:35 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by lists.linaro.org (Postfix) with ESMTPS id 2313A60A9F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jun 2021 07:19:33 +0000 (UTC)
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.56])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4G0JKk74MWz6ttj;
 Wed,  9 Jun 2021 15:15:38 +0800 (CST)
Received: from dggpeml500020.china.huawei.com (7.185.36.88) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 9 Jun 2021 15:19:30 +0800
Received: from huawei.com (10.175.127.227) by dggpeml500020.china.huawei.com
 (7.185.36.88) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 9 Jun 2021
 15:19:29 +0800
From: Baokun Li <libaokun1@huawei.com>
To: <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>, Sean Paul
 <sean@poorly.run>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 9 Jun 2021 15:28:38 +0800
Message-ID: <20210609072838.1369371-1-libaokun1@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500020.china.huawei.com (7.185.36.88)
X-CFilter-Loop: Reflected
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH -next v2] drm/msm: Use list_move_tail
 instead of list_del/list_add_tail in msm_gem.c
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
Cc: kernel-janitors@vger.kernel.org, Hulk
 Robot <hulkci@huawei.com>, linux-arm-msm@vger.kernel.org, yuehaibing@huawei.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 yangjihong1@huawei.com, libaokun1@huawei.com, yukuai3@huawei.com,
 weiyongjun1@huawei.com, freedreno@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Using list_move_tail() instead of list_del() + list_add_tail() in msm_gem.c.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Baokun Li <libaokun1@huawei.com>
---
V1->V2:
	CC mailist

 drivers/gpu/drm/msm/msm_gem.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index 1865919368f2..5b7d63d3750a 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -854,8 +854,7 @@ void msm_gem_active_get(struct drm_gem_object *obj, struct msm_gpu *gpu)
 		mutex_lock(&priv->mm_lock);
 		if (msm_obj->evictable)
 			mark_unevictable(msm_obj);
-		list_del(&msm_obj->mm_list);
-		list_add_tail(&msm_obj->mm_list, &gpu->active_list);
+		list_move_tail(&msm_obj->mm_list, &gpu->active_list);
 		mutex_unlock(&priv->mm_lock);
 	}
 }

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
