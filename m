Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFC562D573
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 09:49:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 508603F592
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 08:49:52 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lists.linaro.org (Postfix) with ESMTPS id B304A3F23A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 06:21:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of cuigaosheng1@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=cuigaosheng1@huawei.com;
	dmarc=pass (policy=quarantine) header.from=huawei.com
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NCV9J2bx9zJnpN;
	Thu, 17 Nov 2022 14:18:44 +0800 (CST)
Received: from cgs.huawei.com (10.244.148.83) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 14:21:53 +0800
From: Gaosheng Cui <cuigaosheng1@huawei.com>
To: <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
	<tjmercier@google.com>, <quic_charante@quicinc.com>,
	<cuigaosheng1@huawei.com>
Date: Thu, 17 Nov 2022 14:21:52 +0800
Message-ID: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.244.148.83]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: B304A3F23A
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[45.249.212.189:from];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:45.249.212.187/29];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:134543, ipnet:45.249.212.0/24, country:CN];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.819];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[szxga03-in.huawei.com:helo,szxga03-in.huawei.com:rdns];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: cuigaosheng1@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 22IZL5GGZ3PSS6TLUL4VTTDPQEQXDNB7
X-Message-ID-Hash: 22IZL5GGZ3PSS6TLUL4VTTDPQEQXDNB7
X-Mailman-Approved-At: Thu, 17 Nov 2022 08:49:35 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/22IZL5GGZ3PSS6TLUL4VTTDPQEQXDNB7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Smatch report warning as follows:

drivers/dma-buf/dma-buf.c:681 dma_buf_export() warn:
  '&dmabuf->list_node' not removed from list

If dma_buf_stats_setup() fails in dma_buf_export(), goto err_sysfs
and dmabuf will be freed, but dmabuf->list_node will not be removed
from db_list.head, then list traversal may cause UAF.

Fix by removeing it from db_list.head before free().

Fixes: ef3a6b70507a ("dma-buf: call dma_buf_stats_setup after dmabuf is in valid list")
Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
---
 drivers/dma-buf/dma-buf.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index b809513b03fe..6848f50226d5 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -675,6 +675,9 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 	return dmabuf;
 
 err_sysfs:
+	mutex_lock(&db_list.lock);
+	list_del(&dmabuf->list_node);
+	mutex_unlock(&db_list.lock);
 	/*
 	 * Set file->f_path.dentry->d_fsdata to NULL so that when
 	 * dma_buf_release() gets invoked by dentry_ops, it exits
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
