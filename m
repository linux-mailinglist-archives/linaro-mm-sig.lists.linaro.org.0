Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C91F5634FC2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 06:45:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 759093ECED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 05:45:33 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lists.linaro.org (Postfix) with ESMTPS id 5EE983EA28
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 09:57:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of wangyufen@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=wangyufen@huawei.com;
	dmarc=pass (policy=quarantine) header.from=huawei.com
Received: from canpemm500010.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NG2mR018CzFqS7;
	Mon, 21 Nov 2022 17:54:30 +0800 (CST)
Received: from localhost.localdomain (10.175.112.70) by
 canpemm500010.china.huawei.com (7.192.105.118) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 17:57:39 +0800
From: Wang Yufen <wangyufen@huawei.com>
To: <agross@kernel.org>, <andersson@kernel.org>,
	<konrad.dybcio@somainline.org>, <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>
Date: Mon, 21 Nov 2022 18:17:52 +0800
Message-ID: <1669025872-44226-1-git-send-email-wangyufen@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.70]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 canpemm500010.china.huawei.com (7.192.105.118)
X-CFilter-Loop: Reflected
X-Rspamd-Queue-Id: 5EE983EA28
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:45.249.212.187/29];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:134543, ipnet:45.249.212.0/24, country:CN];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[45.249.212.189:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: wangyufen@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XRX4VWVAGF6CF7YAV5VPCYY4GNBEY4OI
X-Message-ID-Hash: XRX4VWVAGF6CF7YAV5VPCYY4GNBEY4OI
X-Mailman-Approved-At: Wed, 23 Nov 2022 05:45:01 +0000
CC: vkoul@kernel.org, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Wang Yufen <wangyufen@huawei.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] i2c: qcom-geni: fix error return code in geni_i2c_gpi_xfer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRX4VWVAGF6CF7YAV5VPCYY4GNBEY4OI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Fix to return a negative error code from the gi2c->err instead of
0.

Fixes: d8703554f4de ("i2c: qcom-geni: Add support for GPI DMA")
Signed-off-by: Wang Yufen <wangyufen@huawei.com>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 84a7751..8fce98b 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -626,7 +626,6 @@ static int geni_i2c_gpi_xfer(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[], i
 			dev_err(gi2c->se.dev, "I2C timeout gpi flags:%d addr:0x%x\n",
 				gi2c->cur->flags, gi2c->cur->addr);
 			gi2c->err = -ETIMEDOUT;
-			goto err;
 		}
 
 		if (gi2c->err) {
-- 
1.8.3.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
