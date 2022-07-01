Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B5C57B7DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 15:49:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA0804796D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 13:49:20 +0000 (UTC)
Received: from jari.cn (unknown [218.92.28.120])
	by lists.linaro.org (Postfix) with ESMTP id C40673F04C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Jul 2022 11:31:38 +0000 (UTC)
Received: by ajax-webmail-localhost.localdomain (Coremail) ; Fri, 1 Jul 2022
 19:26:07 +0800 (GMT+08:00)
X-Originating-IP: [182.148.13.66]
Date: Fri, 1 Jul 2022 19:26:07 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "XueBing Chen" <chenxuebing@jari.cn>
To: sumit.semwal@linaro.org, christian.koenig@amd.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT6.0.1 build 20210329(c53f3fee)
 Copyright (c) 2002-2022 www.mailtech.cn
 mispb-4e503810-ca60-4ec8-a188-7102c18937cf-zhkzyfz.cn
MIME-Version: 1.0
Message-ID: <6aad3bff.d1a.181b982d1b1.Coremail.chenxuebing@jari.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: AQAAfwD3AG_P2b5i5PdFAA--.865W
X-CM-SenderInfo: hfkh05pxhex0nj6mt2flof0/1tbiAQAICmFEYxsvOAAQsZ
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VW7Jw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-MailFrom: chenxuebing@jari.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MUOMHUVKK3ZKBR6J6RCQSHEQGYHQBZGE
X-Message-ID-Hash: MUOMHUVKK3ZKBR6J6RCQSHEQGYHQBZGE
X-Mailman-Approved-At: Wed, 20 Jul 2022 13:49:17 +0000
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/sync_file: use strscpy to replace strlcpy
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MUOMHUVKK3ZKBR6J6RCQSHEQGYHQBZGE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


The strlcpy should not be used because it doesn't limit the source
length. Preferred is strscpy.

Signed-off-by: XueBing Chen <chenxuebing@jari.cn>
---
 drivers/dma-buf/sync_file.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index 3ebec19a8e02..af57799c86ce 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -132,7 +132,7 @@ EXPORT_SYMBOL(sync_file_get_fence);
 char *sync_file_get_name(struct sync_file *sync_file, char *buf, int len)
 {
 	if (sync_file->user_name[0]) {
-		strlcpy(buf, sync_file->user_name, len);
+		strscpy(buf, sync_file->user_name, len);
 	} else {
 		struct dma_fence *fence = sync_file->fence;
 
@@ -172,7 +172,7 @@ static struct sync_file *sync_file_merge(const char *name, struct sync_file *a,
 		return NULL;
 	}
 	sync_file->fence = fence;
-	strlcpy(sync_file->user_name, name, sizeof(sync_file->user_name));
+	strscpy(sync_file->user_name, name, sizeof(sync_file->user_name));
 	return sync_file;
 }
 
@@ -262,9 +262,9 @@ static long sync_file_ioctl_merge(struct sync_file *sync_file,
 static int sync_fill_fence_info(struct dma_fence *fence,
 				 struct sync_fence_info *info)
 {
-	strlcpy(info->obj_name, fence->ops->get_timeline_name(fence),
+	strscpy(info->obj_name, fence->ops->get_timeline_name(fence),
 		sizeof(info->obj_name));
-	strlcpy(info->driver_name, fence->ops->get_driver_name(fence),
+	strscpy(info->driver_name, fence->ops->get_driver_name(fence),
 		sizeof(info->driver_name));
 
 	info->status = dma_fence_get_status(fence);
-- 
2.25.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
