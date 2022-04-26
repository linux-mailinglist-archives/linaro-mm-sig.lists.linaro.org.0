Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE058512AE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 07:29:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0A8C47FC5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 05:29:43 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by lists.linaro.org (Postfix) with ESMTPS id 109AE47FFE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 08:37:39 +0000 (UTC)
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KnZv63Q9qzGpRP;
	Tue, 26 Apr 2022 16:34:58 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 26 Apr 2022 16:37:34 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 26 Apr
 2022 16:37:33 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>
Date: Tue, 26 Apr 2022 16:49:13 +0800
Message-ID: <20220426084913.4021868-3-yangyingliang@huawei.com>
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
Message-ID-Hash: XBO5BYJ4O2AUOQVRZTLTNBBP7KRJURLN
X-Message-ID-Hash: XBO5BYJ4O2AUOQVRZTLTNBBP7KRJURLN
X-Mailman-Approved-At: Thu, 28 Apr 2022 05:29:39 +0000
CC: miquel.raynal@bootlin.com, richard@nod.at
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/3] mtd: rawnand: tmio: check return value after calling platform_get_resource()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XBO5BYJ4O2AUOQVRZTLTNBBP7KRJURLN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It will cause null-ptr-deref if platform_get_resource() returns NULL,
we need check the return value.

Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/mtd/nand/raw/tmio_nand.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/nand/raw/tmio_nand.c b/drivers/mtd/nand/raw/tmio_nand.c
index de8e919d0ebe..8f1a42bf199c 100644
--- a/drivers/mtd/nand/raw/tmio_nand.c
+++ b/drivers/mtd/nand/raw/tmio_nand.c
@@ -390,6 +390,9 @@ static int tmio_probe(struct platform_device *dev)
 	if (data == NULL)
 		dev_warn(&dev->dev, "NULL platform data!\n");
 
+	if (!ccr || !fcr)
+		return -EINVAL;
+
 	tmio = devm_kzalloc(&dev->dev, sizeof(*tmio), GFP_KERNEL);
 	if (!tmio)
 		return -ENOMEM;
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
