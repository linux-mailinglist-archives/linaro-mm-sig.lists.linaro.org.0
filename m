Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF593A0CED
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jun 2021 08:59:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E33261238
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jun 2021 06:59:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3BCFC611EB; Wed,  9 Jun 2021 06:59:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA2B560AF2;
	Wed,  9 Jun 2021 06:59:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BE7E460AE3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jun 2021 06:59:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC14760AF2; Wed,  9 Jun 2021 06:59:43 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by lists.linaro.org (Postfix) with ESMTPS id 8058760AE3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jun 2021 06:59:41 +0000 (UTC)
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.56])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4G0Htq1Fb1z6vl6;
 Wed,  9 Jun 2021 14:55:47 +0800 (CST)
Received: from dggpeml500020.china.huawei.com (7.185.36.88) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 9 Jun 2021 14:59:27 +0800
Received: from huawei.com (10.175.127.227) by dggpeml500020.china.huawei.com
 (7.185.36.88) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 9 Jun 2021
 14:59:26 +0800
From: Baokun Li <libaokun1@huawei.com>
To: <linux-kernel@vger.kernel.org>, Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan,
 Xinhui"
 <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Felix Kuehling
 <Felix.Kuehling@amd.com>, Nirmoy Das <nirmoy.das@amd.com>, Philip Yang
 <Philip.Yang@amd.com>, Mihir Bhogilal Patel <Mihir.Patel@amd.com>, Roy Sun
 <Roy.Sun@amd.com>
Date: Wed, 9 Jun 2021 15:08:31 +0800
Message-ID: <20210609070831.1329840-1-libaokun1@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500020.china.huawei.com (7.185.36.88)
X-CFilter-Loop: Reflected
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH -next v2] drm/amdgpu: use list_move instead
 of list_del/list_add in amdgpu_vm.c
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
 yuehaibing@huawei.com, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, yangjihong1@huawei.com, libaokun1@huawei.com,
 dri-devel@lists.freedesktop.org, yukuai3@huawei.com, weiyongjun1@huawei.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Using list_move() instead of list_del() + list_add() in amdgpu_vm.c.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Baokun Li <libaokun1@huawei.com>
---
V1->V2:
	CC mailist

 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
index 9e3ab3b6c105..684c13aae4d0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
@@ -2518,8 +2518,7 @@ int amdgpu_vm_bo_clear_mappings(struct amdgpu_device *adev,
 			list_add(&after->list, &tmp->bo_va->invalids);
 		}
 
-		list_del(&tmp->list);
-		list_add(&tmp->list, &removed);
+		list_move(&tmp->list, &removed);
 
 		tmp = amdgpu_vm_it_iter_next(tmp, saddr, eaddr);
 	}

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
