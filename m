Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8929760DC77
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Oct 2022 09:50:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94D6E3F58E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Oct 2022 07:50:23 +0000 (UTC)
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	by lists.linaro.org (Postfix) with ESMTPS id 1BF7F3ED72
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Oct 2022 03:08:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of zhangxincheng@uniontech.com designates 54.254.200.128 as permitted sender) smtp.mailfrom=zhangxincheng@uniontech.com;
	dmarc=none
X-QQ-mid: bizesmtp73t1666148898txwlkp7l
Received: from localhost.localdomain ( [113.57.152.160])
	by bizesmtp.qq.com (ESMTP) with
	id ; Wed, 19 Oct 2022 11:08:17 +0800 (CST)
X-QQ-SSF: 01400000000000D0I000000A0000000
X-QQ-FEAT: 7jw2iSiCazosd9fh5pCymvb/pMGe5xvT3aHl6VpPEThr/Rz6ye33ctZlSuRHp
	GeRaq5J+qgY58zlZpSh5CTU5cXW5RqWNmKrMM18yWc01NRKtrV2oxG8iA4LcMIeqeXGhYTG
	xDuTjhx7QqwVNvSY46RrtFGtxVnadsbE6qaNhuaRbIFSRBKJ4kj/ZVrW+8pgEje75m+S1P6
	/HfHGvzjucNyXs6cGju+BN1l1zIJKTmVa8W24+wmtFDtxoyV43Cj7Xsx52dhYfieGNy5FZj
	EHJDQYD6b0ca2Opg7DgSDyOdahyX+nJUBJmwJadZ5U7YSwCvwRygl9O22jwCDs7kyRIoyae
	DjI2cwtViAzgQlf0l20nTMUsAatBEY+vIwJkdO7pPxhc4kMr1pYCfP9aqAulvjc8KXLyGQ9
X-QQ-GoodBg: 1
From: Zhang Xincheng <zhangxincheng@uniontech.com>
To: sudipm.mukherjee@gmail.com
Date: Wed, 19 Oct 2022 11:07:59 +0800
Message-Id: <20221019030759.29506-1-zhangxincheng@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvr:qybglogicsvr6
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: /
X-Rspamd-Queue-Id: 1BF7F3ED72
X-Spamd-Result: default: False [-0.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:54.254.200.128];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:16509, ipnet:54.254.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.918];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[uniontech.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[54.254.200.128:from]
X-MailFrom: zhangxincheng@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JSJQHJHOVAEM37DRY64VKSNK3TPGI7UM
X-Message-ID-Hash: JSJQHJHOVAEM37DRY64VKSNK3TPGI7UM
X-Mailman-Approved-At: Wed, 26 Oct 2022 07:49:55 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Zhang Xincheng <zhangxincheng@uniontech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] parport_pc: Remove WCH CH382 PCI-E single parallel port card.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JSJQHJHOVAEM37DRY64VKSNK3TPGI7UM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

WCH CH382L PCI-E adapter with 1 parallel port has been included
inside parport_serial.

Signed-off-by: Zhang Xincheng <zhangxincheng@uniontech.com>
---
 drivers/parport/parport_pc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/parport/parport_pc.c b/drivers/parport/parport_pc.c
index 7c45927e2131..cf0cefe38e90 100644
--- a/drivers/parport/parport_pc.c
+++ b/drivers/parport/parport_pc.c
@@ -2613,7 +2613,6 @@ enum parport_pc_pci_cards {
 	netmos_9901,
 	netmos_9865,
 	quatech_sppxp100,
-	wch_ch382l,
 };
 
 
@@ -2677,7 +2676,6 @@ static struct parport_pc_pci {
 	/* netmos_9901 */               { 1, { { 0, -1 }, } },
 	/* netmos_9865 */               { 1, { { 0, -1 }, } },
 	/* quatech_sppxp100 */		{ 1, { { 0, 1 }, } },
-	/* wch_ch382l */		{ 1, { { 2, -1 }, } },
 };
 
 static const struct pci_device_id parport_pc_pci_tbl[] = {
@@ -2769,8 +2767,6 @@ static const struct pci_device_id parport_pc_pci_tbl[] = {
 	/* Quatech SPPXP-100 Parallel port PCI ExpressCard */
 	{ PCI_VENDOR_ID_QUATECH, PCI_DEVICE_ID_QUATECH_SPPXP_100,
 	  PCI_ANY_ID, PCI_ANY_ID, 0, 0, quatech_sppxp100 },
-	/* WCH CH382L PCI-E single parallel port card */
-	{ 0x1c00, 0x3050, 0x1c00, 0x3050, 0, 0, wch_ch382l },
 	{ 0, } /* terminate list */
 };
 MODULE_DEVICE_TABLE(pci, parport_pc_pci_tbl);
-- 
2.20.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
