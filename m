Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F7F64C904
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:27:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 390FC3E973
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:27:26 +0000 (UTC)
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
	by lists.linaro.org (Postfix) with ESMTP id 664983E818
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Dec 2022 12:21:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiasheng@iscas.ac.cn designates 159.226.251.25 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn;
	dmarc=none
Received: from localhost.localdomain (unknown [124.16.138.125])
	by APP-05 (Coremail) with SMTP id zQCowAAXfuw9bphjbVvnBg--.1126S2;
	Tue, 13 Dec 2022 20:21:17 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: gregkh@linuxfoundation.org
Date: Tue, 13 Dec 2022 20:21:16 +0800
Message-Id: <20221213122116.43278-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAAXfuw9bphjbVvnBg--.1126S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKw4fKF45Zw17AF1UAr47urg_yoWftrgEkr
	4UWFs5Wryav393Kr1jq343Cryjk34ku3s5uF1vkr13Aay3Ga4xXryUXrWkGa17uFyxCFn8
	Aas8KrW7Xw47WjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbVkFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
	Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVWxJr
	0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc2xSY4AK67AK6ryUMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
	cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2Kf
	nxnUUI43ZEXa7VUbQeOJUUUUU==
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Rspamd-Queue-Id: 664983E818
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:159.226.251.0/25];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:7497, ipnet:159.226.0.0/16, country:CN];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp25.cstnet.cn:rdns];
	R_DKIM_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.959];
	DMARC_NA(0.00)[iscas.ac.cn];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: jiasheng@iscas.ac.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SLGQS2BZ2GPARWSFTMC4KE2BSWSOE5CF
X-Message-ID-Hash: SLGQS2BZ2GPARWSFTMC4KE2BSWSOE5CF
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:23:18 +0000
CC: neal_liu@aspeedtech.com, andrew@aj.id.au, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Jiasheng Jiang <jiasheng@iscas.ac.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] usb: gadget: aspeed_udc: Add check for dma_alloc_coherent
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SLGQS2BZ2GPARWSFTMC4KE2BSWSOE5CF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add the check for the return value of dma_alloc_coherent
in order to avoid NULL pointer dereference.

Fixes: 055276c13205 ("usb: gadget: add Aspeed ast2600 udc driver")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
Changelog:

v1 -> v2:

1. Add "goto err;" when allocation fails.
---
 drivers/usb/gadget/udc/aspeed_udc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/gadget/udc/aspeed_udc.c b/drivers/usb/gadget/udc/aspeed_udc.c
index 01968e2167f9..7dc2457c7460 100644
--- a/drivers/usb/gadget/udc/aspeed_udc.c
+++ b/drivers/usb/gadget/udc/aspeed_udc.c
@@ -1516,6 +1516,10 @@ static int ast_udc_probe(struct platform_device *pdev)
 					  AST_UDC_EP_DMA_SIZE *
 					  AST_UDC_NUM_ENDPOINTS,
 					  &udc->ep0_buf_dma, GFP_KERNEL);
+	if (!udc->ep0_buf) {
+		rc = -ENOMEM;
+		goto err;
+	}
 
 	udc->gadget.speed = USB_SPEED_UNKNOWN;
 	udc->gadget.max_speed = USB_SPEED_HIGH;
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
