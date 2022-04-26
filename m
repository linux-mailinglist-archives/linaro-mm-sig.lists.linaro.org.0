Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A60512AF0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 07:31:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC3AF47FDB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 05:30:59 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by lists.linaro.org (Postfix) with ESMTPS id 3A2EE48002
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 08:37:42 +0000 (UTC)
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KnZxn0XKnzhYqG;
	Tue, 26 Apr 2022 16:37:17 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 26 Apr 2022 16:37:33 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 26 Apr
 2022 16:37:33 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>
Date: Tue, 26 Apr 2022 16:49:12 +0800
Message-ID: <20220426084913.4021868-2-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426084913.4021868-1-yangyingliang@huawei.com>
References: <20220426084913.4021868-1-yangyingliang@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-MailFrom: yangyingliang@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VWVLSEDRJXQTSSVBFRIE6S6CWCTXDLE6
X-Message-ID-Hash: VWVLSEDRJXQTSSVBFRIE6S6CWCTXDLE6
X-Mailman-Approved-At: Thu, 28 Apr 2022 05:30:31 +0000
CC: miquel.raynal@bootlin.com, richard@nod.at
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] mtd: rawnand: intel: fix possible null-ptr-deref in ebu_nand_probe()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VWVLSEDRJXQTSSVBFRIE6S6CWCTXDLE6/>
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

Fixes: 0b1039f016e8 ("mtd: rawnand: Add NAND controller support on Intel LGM SoC")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/mtd/nand/raw/intel-nand-controller.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/intel-nand-controller.c b/drivers/mtd/nand/raw/intel-nand-controller.c
index 7c1c80dae826..e91b879b32bd 100644
--- a/drivers/mtd/nand/raw/intel-nand-controller.c
+++ b/drivers/mtd/nand/raw/intel-nand-controller.c
@@ -619,9 +619,9 @@ static int ebu_nand_probe(struct platform_device *pdev)
 	resname = devm_kasprintf(dev, GFP_KERNEL, "nand_cs%d", cs);
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, resname);
 	ebu_host->cs[cs].chipaddr = devm_ioremap_resource(dev, res);
-	ebu_host->cs[cs].nand_pa = res->start;
 	if (IS_ERR(ebu_host->cs[cs].chipaddr))
 		return PTR_ERR(ebu_host->cs[cs].chipaddr);
+	ebu_host->cs[cs].nand_pa = res->start;
 
 	ebu_host->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(ebu_host->clk))
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
