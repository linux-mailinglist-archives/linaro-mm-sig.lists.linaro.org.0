Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0884B6AC0BB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 14:24:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B403E3F06E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 13:24:25 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id 05A583EE32
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Mar 2023 11:59:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:46066.54360919
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id 64F83100248;
	Thu,  2 Mar 2023 19:59:24 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-698c9d7bb7-jn5ln with ESMTP id 9652da7c70eb49d3b926ac93c6c405e9 for sumit.semwal@linaro.org;
	Thu, 02 Mar 2023 19:59:27 CST
X-Transaction-ID: 9652da7c70eb49d3b926ac93c6c405e9
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
From: suijingfeng <15330273260@189.cn>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu,  2 Mar 2023 19:59:23 +0800
Message-Id: <20230302115923.327852-1-15330273260@189.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 05A583EE32
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.996];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[189.cn];
	RCPT_COUNT_FIVE(0.00)[6];
	DMARC_NA(0.00)[189.cn];
	ARC_NA(0.00)[]
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3UX5SEV2MJHDKI6FIAMXD2ICFR4IA4YA
X-Message-ID-Hash: 3UX5SEV2MJHDKI6FIAMXD2ICFR4IA4YA
X-Mailman-Approved-At: Mon, 06 Mar 2023 13:24:07 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma-buf.c: add a blank line between the two adjoining functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3UX5SEV2MJHDKI6FIAMXD2ICFR4IA4YA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Signed-off-by: suijingfeng <15330273260@189.cn>
---
 drivers/dma-buf/dma-buf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 757c0fb77a6c..45d56aa4319c 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -777,10 +777,10 @@ static void mangle_sg_table(struct sg_table *sg_table)
 	for_each_sgtable_sg(sg_table, sg, i)
 		sg->page_link ^= ~0xffUL;
 #endif
-
 }
-static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,
-				       enum dma_data_direction direction)
+
+static struct sg_table *__map_dma_buf(struct dma_buf_attachment *attach,
+				      enum dma_data_direction direction)
 {
 	struct sg_table *sg_table;
 	signed long ret;
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
