Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D354E703143
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 May 2023 17:16:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8D7A44352
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 May 2023 15:16:16 +0000 (UTC)
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn [63.216.63.40])
	by lists.linaro.org (Postfix) with ESMTPS id ECC3F402B0
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 May 2023 02:18:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of ye.xingchen@zte.com.cn designates 63.216.63.40 as permitted sender) smtp.mailfrom=ye.xingchen@zte.com.cn;
	dmarc=pass (policy=none) header.from=zte.com.cn
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4QCDrc3Hn0z8RTWm;
	Fri,  5 May 2023 10:18:56 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl1.zte.com.cn with SMTP id 3452IkoU063354;
	Fri, 5 May 2023 10:18:46 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Fri, 5 May 2023 10:18:47 +0800 (CST)
Date: Fri, 5 May 2023 10:18:47 +0800 (CST)
X-Zmail-TransId: 2afa645467877be-c82af
X-Mailer: Zmail v1.0
Message-ID: <202305051018472856954@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <sumit.semwal@linaro.org>
X-MAIL: mse-fl1.zte.com.cn 3452IkoU063354
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 64546790.001/4QCDrc3Hn0z8RTWm
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUBJ_EXCESS_BASE64(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zte.com.cn,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:63.216.63.40];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:3491, ipnet:63.216.56.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.972];
	RCPT_COUNT_FIVE(0.00)[6];
	RWL_MAILSPIKE_POSSIBLE(0.00)[63.216.63.40:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ECC3F402B0
X-Spamd-Bar: -
X-MailFrom: ye.xingchen@zte.com.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 22ECAESHNAYPXEMYUPXCVININW7B6SLF
X-Message-ID-Hash: 22ECAESHNAYPXEMYUPXCVININW7B6SLF
X-Mailman-Approved-At: Mon, 15 May 2023 15:16:13 +0000
CC: christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Use fdget()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/22ECAESHNAYPXEMYUPXCVININW7B6SLF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Ye Xingchen <ye.xingchen@zte.com.cn>

convert the fget() use to fdget().

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/dma-buf/dma-buf.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index aa4ea8530cb3..bf4980b6f80c 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -729,19 +729,17 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_fd, DMA_BUF);
  */
 struct dma_buf *dma_buf_get(int fd)
 {
-	struct file *file;
-
-	file = fget(fd);
+	struct fd f = fdget(fd);

-	if (!file)
+	if (!f.file)
 		return ERR_PTR(-EBADF);

-	if (!is_dma_buf_file(file)) {
-		fput(file);
+	if (!is_dma_buf_file(f.file)) {
+		fdput(f);
 		return ERR_PTR(-EINVAL);
 	}

-	return file->private_data;
+	return f.file->private_data;
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_get, DMA_BUF);

-- 
2.25.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
