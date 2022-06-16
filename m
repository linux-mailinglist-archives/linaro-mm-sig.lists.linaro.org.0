Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C2C54DDD4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Jun 2022 11:04:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81AA03F23A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Jun 2022 09:04:30 +0000 (UTC)
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com [115.124.30.56])
	by lists.linaro.org (Postfix) with ESMTPS id 2A42A3F23A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Jun 2022 09:04:24 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R851e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046051;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=15;SR=0;TI=SMTPD_---0VGZs4Mm_1655370252;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VGZs4Mm_1655370252)
          by smtp.aliyun-inc.com;
          Thu, 16 Jun 2022 17:04:20 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: neal_liu@aspeedtech.com
Date: Thu, 16 Jun 2022 17:04:10 +0800
Message-Id: <20220616090410.128483-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Message-ID-Hash: 47KBOQQDKSFF2XYZYV6PAR3RDYNTWEHC
X-Message-ID-Hash: 47KBOQQDKSFF2XYZYV6PAR3RDYNTWEHC
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: balbi@kernel.org, gregkh@linuxfoundation.org, andrew@aj.id.au, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] usb: gadget: Remove unnecessary print function dev_err()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/47KBOQQDKSFF2XYZYV6PAR3RDYNTWEHC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The print function dev_err() is redundant because platform_get_irq()
already prints an error.

This was found by coccicheck:

./drivers/usb/gadget/udc/aspeed_udc.c:1546:2-9: line 1546 is redundant because platform_get_irq() already prints an error.

Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/usb/gadget/udc/aspeed_udc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/aspeed_udc.c b/drivers/usb/gadget/udc/aspeed_udc.c
index 1fc15228ff15..2c3dc80d6b8c 100644
--- a/drivers/usb/gadget/udc/aspeed_udc.c
+++ b/drivers/usb/gadget/udc/aspeed_udc.c
@@ -1543,7 +1543,6 @@ static int ast_udc_probe(struct platform_device *pdev)
 	/* Find interrupt and install handler */
 	udc->irq = platform_get_irq(pdev, 0);
 	if (udc->irq < 0) {
-		dev_err(&pdev->dev, "Failed to get interrupt\n");
 		rc = udc->irq;
 		goto err;
 	}
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
