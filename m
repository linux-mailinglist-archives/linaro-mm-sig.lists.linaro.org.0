Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF87410556
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Sep 2021 11:13:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1F3963391
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Sep 2021 09:13:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AB0A263213; Sat, 18 Sep 2021 09:13:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA11D62423;
	Sat, 18 Sep 2021 09:13:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5C045623DC
 for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Sep 2021 09:13:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 50AF762423; Sat, 18 Sep 2021 09:13:50 +0000 (UTC)
Received: from out30-45.freemail.mail.aliyun.com
 (out30-45.freemail.mail.aliyun.com [115.124.30.45])
 by lists.linaro.org (Postfix) with ESMTPS id CB3D9623DC
 for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Sep 2021 09:13:47 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R151e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=16; SR=0;
 TI=SMTPD_---0Uom.Rp3_1631956417; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0Uom.Rp3_1631956417) by smtp.aliyun-inc.com(127.0.0.1);
 Sat, 18 Sep 2021 17:13:43 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: robh@kernel.org
Date: Sat, 18 Sep 2021 17:13:34 +0800
Message-Id: <1631956414-85412-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] panfrost: make mediatek_mt8183_supplies and
 mediatek_mt8183_pm_domains static
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, tomeu.vizoso@collabora.com,
 christian.koenig@amd.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, steven.price@arm.com,
 linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org,
 alyssa.rosenzweig@collabora.com, daniel@ffwll.ch, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

This symbol is not used outside of panfrost_drv.c, so marks it static.

Fix the following sparse warning:

drivers/gpu/drm/panfrost/panfrost_drv.c:641:12: warning: symbol
'mediatek_mt8183_supplies' was not declared. Should it be static?

drivers/gpu/drm/panfrost/panfrost_drv.c:642:12: warning: symbol
'mediatek_mt8183_pm_domains' was not declared. Should it be static?

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 077cbbf..82ad9a6 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -638,8 +638,8 @@ static int panfrost_remove(struct platform_device *pdev)
 	.vendor_quirk = panfrost_gpu_amlogic_quirk,
 };
 
-const char * const mediatek_mt8183_supplies[] = { "mali", "sram" };
-const char * const mediatek_mt8183_pm_domains[] = { "core0", "core1", "core2" };
+static const char * const mediatek_mt8183_supplies[] = { "mali", "sram" };
+static const char * const mediatek_mt8183_pm_domains[] = { "core0", "core1", "core2" };
 static const struct panfrost_compatible mediatek_mt8183_data = {
 	.num_supplies = ARRAY_SIZE(mediatek_mt8183_supplies),
 	.supply_names = mediatek_mt8183_supplies,
-- 
1.8.3.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
