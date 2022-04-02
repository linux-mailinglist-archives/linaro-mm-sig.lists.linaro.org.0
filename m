Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F02BC50A196
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:08:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27C7647FCF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 14:08:29 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.104])
	by lists.linaro.org (Postfix) with ESMTP id 9CFF23EA5E
	for <linaro-mm-sig@lists.linaro.org>; Sat,  2 Apr 2022 13:44:19 +0000 (UTC)
HMM_SOURCE_IP: 10.64.8.31:55616.477137328
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id D041D1002A6;
	Sat,  2 Apr 2022 21:44:14 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-b7fbf7d79-bwdqx with ESMTP id b3a587eefe364da59d7e4dc97f1ad336 for sumit.semwal@linaro.org;
	Sat, 02 Apr 2022 21:44:15 CST
X-Transaction-ID: b3a587eefe364da59d7e4dc97f1ad336
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
From: Sui Jingfeng <15330273260@189.cn>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sat,  2 Apr 2022 21:44:13 +0800
Message-Id: <20220402134413.1705246-1-15330273260@189.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HBBJ6GRSY36XWYHYPKXC34S5PZ4ZQVGP
X-Message-ID-Hash: HBBJ6GRSY36XWYHYPKXC34S5PZ4ZQVGP
X-Mailman-Approved-At: Thu, 21 Apr 2022 14:08:24 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drivers/dma-buf: dma-buf.c: fix a typo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HBBJ6GRSY36XWYHYPKXC34S5PZ4ZQVGP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Signed-off-by: Sui Jingfeng <15330273260@189.cn>
---
 drivers/dma-buf/dma-buf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index df23239b04fc..775d3afb4169 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -443,7 +443,7 @@ static struct file *dma_buf_getfile(struct dma_buf *dmabuf, int flags)
  *    as a file descriptor by calling dma_buf_fd().
  *
  * 2. Userspace passes this file-descriptors to all drivers it wants this buffer
- *    to share with: First the filedescriptor is converted to a &dma_buf using
+ *    to share with: First the file descriptor is converted to a &dma_buf using
  *    dma_buf_get(). Then the buffer is attached to the device using
  *    dma_buf_attach().
  *
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
