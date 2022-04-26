Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C133512AEF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 07:30:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F4D047FB4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 05:30:55 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
	by lists.linaro.org (Postfix) with ESMTPS id 4CD9B401E8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 08:37:39 +0000 (UTC)
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.57])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4KnZx46pw4z1JBpb;
	Tue, 26 Apr 2022 16:36:40 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 26 Apr 2022 16:37:33 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 26 Apr
 2022 16:37:32 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>
Date: Tue, 26 Apr 2022 16:49:11 +0800
Message-ID: <20220426084913.4021868-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-MailFrom: yangyingliang@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VEXG6AHXGMDMKNWMCCBH5JYTF3OHFTXQ
X-Message-ID-Hash: VEXG6AHXGMDMKNWMCCBH5JYTF3OHFTXQ
X-Mailman-Approved-At: Thu, 28 Apr 2022 05:30:29 +0000
CC: miquel.raynal@bootlin.com, richard@nod.at
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/3] mtd: rawnand: cadence: fix possible null-ptr-deref in cadence_nand_dt_probe()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VEXG6AHXGMDMKNWMCCBH5JYTF3OHFTXQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It will cause null-ptr-deref when using 'res', if platform_get_resource()
returns NULL, so move using 'res' after devm_ioremap_resource() that
will check it to avoid null-ptr-deref.
And use devm_platform_get_and_ioremap_resource() to simplify code.

Fixes: ec4ba01e894d ("mtd: rawnand: Add new Cadence NAND driver to MTD subsystem")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/mtd/nand/raw/cadence-nand-controller.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index 7eec60ea9056..0d72672f8b64 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -2983,11 +2983,10 @@ static int cadence_nand_dt_probe(struct platform_device *ofdev)
 	if (IS_ERR(cdns_ctrl->reg))
 		return PTR_ERR(cdns_ctrl->reg);
 
-	res = platform_get_resource(ofdev, IORESOURCE_MEM, 1);
-	cdns_ctrl->io.dma = res->start;
-	cdns_ctrl->io.virt = devm_ioremap_resource(&ofdev->dev, res);
+	cdns_ctrl->io.virt = devm_platform_get_and_ioremap_resource(ofdev, 1, &res);
 	if (IS_ERR(cdns_ctrl->io.virt))
 		return PTR_ERR(cdns_ctrl->io.virt);
+	cdns_ctrl->io.dma = res->start;
 
 	dt->clk = devm_clk_get(cdns_ctrl->dev, "nf_clk");
 	if (IS_ERR(dt->clk))
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
