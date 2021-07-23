Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 291843D3A43
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 14:32:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B40C9632DE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 12:32:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4DC15632CB; Fri, 23 Jul 2021 12:32:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D824662EA6;
	Fri, 23 Jul 2021 12:32:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1C56F604C3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 12:32:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1833262EA6; Fri, 23 Jul 2021 12:32:00 +0000 (UTC)
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by lists.linaro.org (Postfix) with ESMTPS id B085D604C3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 12:31:48 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1627043517; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=wysabhsQt0sSAqX5dRirGa+wnwar64nTD29qqOFcFoM=;
 b=DKvJt3rIYINtt8Te7Qb4eOOQYqZp7WPDaO2mDpgVEyH66ZA688J/SVlgiFeeaPSMd6DjfOxT
 uPPfq+jREIcUf0DbI6yKQbSkOgVkCR8L6k9gh7A5OrAbx3t9rVnI3pvaeAVsEcQzSEsNu+XX
 qUo7TyYKzNGfGu0wcuAW1n9LGuM=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJjNDlhNSIsICJsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 60fab6974815712f3a6324f8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 23 Jul 2021 12:31:19
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 93238C433F1; Fri, 23 Jul 2021 12:31:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED, BAYES_00,
 SPF_FAIL, 
 URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from hu-charante-hyd.qualcomm.com (unknown [202.46.22.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: charante)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5A739C433F1;
 Fri, 23 Jul 2021 12:31:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5A739C433F1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=charante@codeaurora.org
From: Charan Teja Reddy <charante@codeaurora.org>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Fri, 23 Jul 2021 18:01:08 +0530
Message-Id: <1627043468-16381-1-git-send-email-charante@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] dma-buf: WARN on dmabuf release with
 pending attachments
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, vinmenon@codeaurora.org,
 Charan Teja Reddy <charante@codeaurora.org>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

It is expected from the clients to follow the below steps on an imported
dmabuf fd:
a) dmabuf = dma_buf_get(fd) // Get the dmabuf from fd
b) dma_buf_attach(dmabuf); // Clients attach to the dmabuf
   o Here the kernel does some slab allocations, say for
dma_buf_attachment and may be some other slab allocation in the
dmabuf->ops->attach().
c) Client may need to do dma_buf_map_attachment().
d) Accordingly dma_buf_unmap_attachment() should be called.
e) dma_buf_detach () // Clients detach to the dmabuf.
   o Here the slab allocations made in b) are freed.
f) dma_buf_put(dmabuf) // Can free the dmabuf if it is the last
reference.

Now say an erroneous client failed at step c) above thus it directly
called dma_buf_put(), step f) above. Considering that it may be the last
reference to the dmabuf, buffer will be freed with pending attachments
left to the dmabuf which can show up as the 'memory leak'. This should
at least be reported as the WARN().

Signed-off-by: Charan Teja Reddy <charante@codeaurora.org>
---
 drivers/dma-buf/dma-buf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 511fe0d..733c8b1 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -79,6 +79,7 @@ static void dma_buf_release(struct dentry *dentry)
 	if (dmabuf->resv == (struct dma_resv *)&dmabuf[1])
 		dma_resv_fini(dmabuf->resv);
 
+	WARN_ON(!list_empty(&dmabuf->attachments));
 	module_put(dmabuf->owner);
 	kfree(dmabuf->name);
 	kfree(dmabuf);
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
member of the Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
