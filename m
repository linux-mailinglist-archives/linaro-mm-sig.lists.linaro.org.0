Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D24396E395F
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Apr 2023 16:38:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7344C3F656
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Apr 2023 14:38:56 +0000 (UTC)
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
	by lists.linaro.org (Postfix) with ESMTP id 16EC03E944
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Apr 2023 14:38:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of suijingfeng@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=suijingfeng@loongson.cn;
	dmarc=none
Received: from loongson.cn (unknown [10.20.42.43])
	by gateway (Coremail) with SMTP id _____8AxUU95CDxkSYEdAA--.34046S3;
	Sun, 16 Apr 2023 22:38:49 +0800 (CST)
Received: from openarena.loongson.cn (unknown [10.20.42.43])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8Dxxrx5CDxkX4ApAA--.46181S2;
	Sun, 16 Apr 2023 22:38:49 +0800 (CST)
From: Sui Jingfeng <suijingfeng@loongson.cn>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Christian Konig <christian.koenig@amd.com>,
	David Airlie <airlied@gmail.com>,
	Sui Jingfeng <suijingfeng@loongson.cn>,
	Li Yi <liyi@loongson.cn>
Date: Sun, 16 Apr 2023 22:38:49 +0800
Message-Id: <20230416143849.1142779-1-suijingfeng@loongson.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: AQAAf8Dxxrx5CDxkX4ApAA--.46181S2
X-CM-SenderInfo: xvxlyxpqjiv03j6o00pqjv00gofq/
X-Coremail-Antispam: 1Uk129KBjvdXoWrZw1Utw1rtry7CF15JrW3Awb_yoW3Zrg_K3
	WkJrW7WayvyF17Gr4UZwn8Cry7Kay8uF18W3Z2qF9xGa43Aa45G340qrWUuFyUXw1xu393
	Xr43JrWfAw4xWjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8wcxFpf9Il3svdxBIdaVrn0
	xqx4xG64xvF2IEw4CE5I8CrVC2j2Jv73VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUY
	j7kC6x804xWl14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3w
	AFIxvE14AKwVWUGVWUXwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK
	6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r1j6r4UM28EF7
	xvwVC2z280aVAFwI0_Cr0_Gr1UM28EF7xvwVC2z280aVCY1x0267AKxVW8JVW8Jr1le2I2
	62IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4
	CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvj
	eVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCF04k20xvY0x0EwIxGrwCFx2IqxV
	CFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r10
	6r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxV
	WUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG
	6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_Gr
	UvcSsGvfC2KfnxnUUI43ZEXa7IU1EksDUUUUU==
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:114.242.206.163];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4808, ipnet:114.242.192.0/18, country:CN];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,loongson.cn];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[loongson.cn];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 16EC03E944
X-Spamd-Bar: -
Message-ID-Hash: TMRRSVJI2SVXC35PCKGRRMKCDTYCIRKY
X-Message-ID-Hash: TMRRSVJI2SVXC35PCKGRRMKCDTYCIRKY
X-MailFrom: suijingfeng@loongson.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma-resv.c: fix a typo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TMRRSVJI2SVXC35PCKGRRMKCDTYCIRKY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The dma_resv_wait_timeout() function return a value greater than zero
on success.

Signed-off-by: Sui Jingfeng <suijingfeng@loongson.cn>
---
 drivers/dma-buf/dma-resv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 2a594b754af1..b6f71eb00866 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -660,7 +660,7 @@ EXPORT_SYMBOL_GPL(dma_resv_get_singleton);
  * dma_resv_lock() already
  * RETURNS
  * Returns -ERESTARTSYS if interrupted, 0 if the wait timed out, or
- * greater than zer on success.
+ * greater than zero on success.
  */
 long dma_resv_wait_timeout(struct dma_resv *obj, enum dma_resv_usage usage,
 			   bool intr, unsigned long timeout)
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
