Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAD248DDA0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 19:25:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0ACA73ED9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 18:25:31 +0000 (UTC)
Received: from out30-132.freemail.mail.aliyun.com (out30-132.freemail.mail.aliyun.com [115.124.30.132])
	by lists.linaro.org (Postfix) with ESMTPS id 112083ED1D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Jan 2022 12:33:42 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04357;MF=xianting.tian@linux.alibaba.com;NM=1;PH=DS;RN=13;SR=0;TI=SMTPD_---0V1elThZ_1641990816;
Received: from localhost(mailfrom:xianting.tian@linux.alibaba.com fp:SMTPD_---0V1elThZ_1641990816)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 12 Jan 2022 20:33:37 +0800
From: Xianting Tian <xianting.tian@linux.alibaba.com>
To: robdclark@gmail.com,
	sean@poorly.run,
	airlied@linux.ie,
	daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Wed, 12 Jan 2022 20:33:34 +0800
Message-Id: <20220112123334.749776-1-xianting.tian@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
X-MailFrom: xianting.tian@linux.alibaba.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MZ3X7OQUBKREWYEUTIZWBZUH6OAXKZ4X
X-Message-ID-Hash: MZ3X7OQUBKREWYEUTIZWBZUH6OAXKZ4X
X-Mailman-Approved-At: Thu, 13 Jan 2022 18:25:27 +0000
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Xianting Tian <xianting.tian@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/msm: Fix wrong size calculation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MZ3X7OQUBKREWYEUTIZWBZUH6OAXKZ4X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For example, memory-region in .dts as below,
	reg = <0x0 0x50000000 0x0 0x20000000>

We can get below values,
struct resource r;
r.start = 0x50000000;
r.end	= 0x6fffffff;

So the size should be:
size = r.end - r.start + 1 = 0x20000000

Signed-off-by: Xianting Tian <xianting.tian@linux.alibaba.com>
---
 drivers/gpu/drm/msm/msm_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
index 892c04365..f04a2337d 100644
--- a/drivers/gpu/drm/msm/msm_drv.c
+++ b/drivers/gpu/drm/msm/msm_drv.c
@@ -466,7 +466,7 @@ static int msm_init_vram(struct drm_device *dev)
 		of_node_put(node);
 		if (ret)
 			return ret;
-		size = r.end - r.start;
+		size = r.end - r.start + 1;
 		DRM_INFO("using VRAM carveout: %lx@%pa\n", size, &r.start);
 
 		/* if we have no IOMMU, then we need to use carveout allocator.
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
