Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFFB5575C1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 10:44:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0EB83F45D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 08:44:09 +0000 (UTC)
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com [115.124.30.56])
	by lists.linaro.org (Postfix) with ESMTPS id 8BABB3EA51
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 08:44:05 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R911e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046060;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=15;SR=0;TI=SMTPD_---0VHAjc-P_1655973829;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VHAjc-P_1655973829)
          by smtp.aliyun-inc.com;
          Thu, 23 Jun 2022 16:44:00 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: neal_liu@aspeedtech.com
Date: Thu, 23 Jun 2022 16:43:47 +0800
Message-Id: <20220623084347.38207-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Message-ID-Hash: GWC4X4FRKZHLZD7Q6TJ66X4CQKV5TJIF
X-Message-ID-Hash: GWC4X4FRKZHLZD7Q6TJ66X4CQKV5TJIF
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: balbi@kernel.org, gregkh@linuxfoundation.org, andrew@aj.id.au, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] usb: gadget: Fix unsigned comparison with less than zero
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GWC4X4FRKZHLZD7Q6TJ66X4CQKV5TJIF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This was found by coccicheck:

./drivers/usb/gadget/udc/aspeed_udc.c:496:8-13: WARNING: Unsigned expression compared with zero: chunk >= 0.

Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/usb/gadget/udc/aspeed_udc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed_udc.c b/drivers/usb/gadget/udc/aspeed_udc.c
index 1fc15228ff15..387a7abdcee4 100644
--- a/drivers/usb/gadget/udc/aspeed_udc.c
+++ b/drivers/usb/gadget/udc/aspeed_udc.c
@@ -476,8 +476,8 @@ static int ast_dma_descriptor_setup(struct ast_udc_ep *ep, u32 dma_buf,
 {
 	struct ast_udc_dev *udc = ep->udc;
 	struct device *dev = &udc->pdev->dev;
-	u32 offset, chunk;
-	int count, last;
+	u32 offset;
+	int count, last, chunk;
 
 	if (!ep->descs) {
 		dev_warn(dev, "%s: Empty DMA descs list failure\n",
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
