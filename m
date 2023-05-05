Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB468703146
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 May 2023 17:16:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0560E44242
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 May 2023 15:16:36 +0000 (UTC)
Received: from mxct.zte.com.cn (mxct.zte.com.cn [183.62.165.209])
	by lists.linaro.org (Postfix) with ESMTPS id 568033ED8E
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 May 2023 03:03:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of ye.xingchen@zte.com.cn designates 183.62.165.209 as permitted sender) smtp.mailfrom=ye.xingchen@zte.com.cn;
	dmarc=pass (policy=none) header.from=zte.com.cn
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4QCFrN1bVGz4y3Zj;
	Fri,  5 May 2023 11:03:48 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.99.176])
	by mse-fl2.zte.com.cn with SMTP id 34533ca6093308;
	Fri, 5 May 2023 11:03:38 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Fri, 5 May 2023 11:03:39 +0800 (CST)
Date: Fri, 5 May 2023 11:03:39 +0800 (CST)
X-Zmail-TransId: 2afa6454720b650-79091
X-Mailer: Zmail v1.0
Message-ID: <202305051103396748797@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <sumit.semwal@linaro.org>
X-MAIL: mse-fl2.zte.com.cn 34533ca6093308
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 64547213.000/4QCFrN1bVGz4y3Zj
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUBJ_EXCESS_BASE64(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zte.com.cn,none];
	MV_CASE(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[183.62.165.209:from];
	R_SPF_ALLOW(-0.20)[+ip4:183.62.165.209:c];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[zte.com.cn:email];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_SPAM(0.00)[0.966];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 568033ED8E
X-Spamd-Bar: --
X-MailFrom: ye.xingchen@zte.com.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6XYEN5C5JOP5O27Y7FSSJF7F4GBUDVVC
X-Message-ID-Hash: 6XYEN5C5JOP5O27Y7FSSJF7F4GBUDVVC
X-Mailman-Approved-At: Mon, 15 May 2023 15:16:22 +0000
CC: gustavo@padovan.org, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/sync_file: Use fdget()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6XYEN5C5JOP5O27Y7FSSJF7F4GBUDVVC/>
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
 drivers/dma-buf/sync_file.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index af57799c86ce..222b13b1bdb8 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -78,18 +78,18 @@ EXPORT_SYMBOL(sync_file_create);

 static struct sync_file *sync_file_fdget(int fd)
 {
-	struct file *file = fget(fd);
+	struct struct fd f = fdget(fd);

-	if (!file)
+	if (!f.file)
 		return NULL;

-	if (file->f_op != &sync_file_fops)
+	if (f.file->f_op != &sync_file_fops)
 		goto err;

-	return file->private_data;
+	return f.file->private_data;

 err:
-	fput(file);
+	fdput(f);
 	return NULL;
 }

-- 
2.25.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
