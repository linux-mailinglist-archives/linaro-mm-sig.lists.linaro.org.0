Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJufOMJmHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:14:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C536628766
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:14:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BC30404AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:14:40 +0000 (UTC)
Received: from outbound.baidu.com (mx22.baidu.com [220.181.50.185])
	by lists.linaro.org (Postfix) with SMTP id F2B393FDAE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 10:45:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baidu.com header.s=selector1 header.b=TaYc9YRm;
	spf=pass (lists.linaro.org: domain of "prvs=md1601170BF1=lirongqing@baidu.com" designates 220.181.50.185 as permitted sender) smtp.mailfrom="prvs=md1601170BF1=lirongqing@baidu.com";
	dmarc=pass (policy=quarantine) header.from=baidu.com
X-MD-Sfrom: lirongqing@baidu.com
X-MD-SrcIP: 172.31.50.47
From: lirongqing <lirongqing@baidu.com>
To: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?=
	<christian.koenig@amd.com>, <linux-media@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linaro-mm-sig@lists.linaro.org>,
	<linux-kernel@vger.kernel.org>
Date: Wed, 27 May 2026 06:44:49 -0400
Message-ID: <20260527104449.2350-1-lirongqing@baidu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: bjkjy-exc2.internal.baidu.com (172.31.50.46) To
 bjkjy-exc3.internal.baidu.com (172.31.50.47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=baidu.com;
	s=selector1; t=1779878699;
	bh=8wxiXP655DLDne+j37kjUbGvhP71Q5D+Jw5Sn2qPwtM=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type;
	b=TaYc9YRm50UTB3PERjLWE9PFLf2rUKjf6YsOz++tHMhErOOBfr8yKMCvsuMDlcgHh
	 WjQ92PnYmoK6my3wLAUVW2vdj35v3uNbpjxV6UQOc008dKZCTkTUWTNi6HbaomhtK2
	 9Ksis3y3oHGNoDd3pThW2Q4R8+V5NtnNAlq9w6N3wBGa2Rnq4yHklSwlC5nOtAOfTy
	 1o5XRmiIusLKuqcu7oMJsy3UpqpupBhjwj4l8EZypZKKKWR+OuBJ2BSKUnyFbPg95r
	 Pav5xlHwVP2j+FoVhJLHJLdmV9PyPXKVY6zT+ujJf5G0FkMmUNDZu/2XRvw0P2U5m9
	 EgDhAmGcs5iww==
X-Spamd-Bar: --
X-MailFrom: prvs=md1601170BF1=lirongqing@baidu.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6MR6TGAOBES6WKJWD7JU6LACYDUF55WV
X-Message-ID-Hash: 6MR6TGAOBES6WKJWD7JU6LACYDUF55WV
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:14:33 +0000
CC: Li RongQing <lirongqing@baidu.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Move dma_resv_assert_held() after input validation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MR6TGAOBES6WKJWD7JU6LACYDUF55WV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[baidu.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[baidu.com:s=selector1];
	DATE_IN_PAST(1.00)[138];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[baidu.com:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[lirongqing@baidu.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.455];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: 2C536628766
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Li RongQing <lirongqing@baidu.com>

Move dma_resv_assert_held() after the validation of 'attach' and
'attach->dmabuf' to avoid a potential null pointer dereference if
the function is ever called with invalid arguments.

Signed-off-by: Li RongQing <lirongqing@baidu.com>
---
 drivers/dma-buf/dma-buf-mapping.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff..e6ecd6c 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -102,12 +102,12 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
 	size_t i;
 	int ret;
 
-	dma_resv_assert_held(attach->dmabuf->resv);
-
 	if (WARN_ON(!attach || !attach->dmabuf || !provider))
 		/* This function is supposed to work on MMIO memory only */
 		return ERR_PTR(-EINVAL);
 
+	dma_resv_assert_held(attach->dmabuf->resv);
+
 	dma = kzalloc_obj(*dma);
 	if (!dma)
 		return ERR_PTR(-ENOMEM);
-- 
2.9.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
