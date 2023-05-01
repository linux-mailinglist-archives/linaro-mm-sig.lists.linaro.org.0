Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E636F5612
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:25:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 966F13F952
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:25:09 +0000 (UTC)
Received: from mx.sberdevices.ru (mx.sberdevices.ru [45.89.227.171])
	by lists.linaro.org (Postfix) with ESMTPS id 0A6983ED5E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 May 2023 13:15:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sberdevices.ru header.s=mail header.b=CKSDHDYI;
	spf=pass (lists.linaro.org: domain of AVKrasnov@sberdevices.ru designates 45.89.227.171 as permitted sender) smtp.mailfrom=AVKrasnov@sberdevices.ru;
	dmarc=pass (policy=quarantine) header.from=sberdevices.ru
Received: from s-lin-edge02.sberdevices.ru (localhost [127.0.0.1])
	by mx.sberdevices.ru (Postfix) with ESMTP id 526A65FD14;
	Mon,  1 May 2023 16:15:06 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sberdevices.ru;
	s=mail; t=1682946906;
	bh=CLzqYTcujARq4NJQtsx22VCX1wovz6DLx4a2PMX1RH8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
	b=CKSDHDYIbx0CfnsXKFUMJ5n8v+4d/FVIeHvuvwyL9N7UeFQgBDae/Hu5qkUcZ9LrI
	 vteyRI/tMxuH3ENgqFy3aoigHck4Pn2gFaxUKGG7hgnxNvW8HUB4ZbumbZHlRpR3q+
	 LCmtT8hbloPhJSGIWZMOpOm+RD7kG4vM2sKzXphpFYipJCf22WP9ZFWioRI1n07her
	 W6KZjpqxGI06GRKi5mLKCECRuz9WvZBa+cWhmpC6v+njFoo12ZUhk5LMPVUuTBcnfK
	 qgrsYTPeqFssXVu/zE4Wi/OKOs0EMaxvJ3yGiBSH8BGO/hQt2J4U3q0SXagupWL21s
	 73jyj1w6SNqtw==
Received: from S-MS-EXCH01.sberdevices.ru (S-MS-EXCH01.sberdevices.ru [172.16.1.4])
	by mx.sberdevices.ru (Postfix) with ESMTP;
	Mon,  1 May 2023 16:15:03 +0300 (MSK)
From: Arseniy Krasnov <AVKrasnov@sberdevices.ru>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
	<richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?=
	<christian.koenig@amd.com>, Arseniy Krasnov <AVKrasnov@sberdevices.ru>
Date: Mon, 1 May 2023 16:10:21 +0300
Message-ID: <20230501131025.754958-1-AVKrasnov@sberdevices.ru>
X-Mailer: git-send-email 2.35.0
MIME-Version: 1.0
X-Originating-IP: [172.16.1.6]
X-ClientProxiedBy: S-MS-EXCH02.sberdevices.ru (172.16.1.5) To
 S-MS-EXCH01.sberdevices.ru (172.16.1.4)
X-KSMG-Rule-ID: 4
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Status: not scanned, disabled by settings
X-KSMG-AntiSpam-Interceptor-Info: not scanned
X-KSMG-AntiPhishing: not scanned, disabled by settings
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 1.1.2.30, bases: 2023/05/01 09:34:00 #21199322
X-KSMG-AntiVirus-Status: Clean, skipped
X-Spamd-Result: default: False [3.00 / 15.00];
	RSPAMD_URIBL(4.50)[sberdevices.ru:email,sberdevices.ru:dkim];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_POLICY_ALLOW(0.00)[sberdevices.ru,quarantine];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:208677, ipnet:45.89.224.0/22, country:RU];
	FREEMAIL_CC(0.00)[gmail.com,sberdevices.ru,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[sberdevices.ru:+];
	RCVD_IN_DNSWL_FAIL(0.00)[45.89.227.171:server fail];
	NEURAL_SPAM(0.00)[0.882];
	HAS_XOIP(0.00)[];
	R_DKIM_ALLOW(0.00)[sberdevices.ru:s=mail];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:45.89.227.171];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mx.sberdevices.ru:rdns,mx.sberdevices.ru:helo,sberdevices.ru:email,sberdevices.ru:dkim,free-electrons.com:email];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ***
X-Rspamd-Queue-Id: 0A6983ED5E
X-Spamd-Bar: +++
X-MailFrom: AVKrasnov@sberdevices.ru
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 64DVLJIJ7WO2PSRUSIJEBXIUJOG3ZWCA
X-Message-ID-Hash: 64DVLJIJ7WO2PSRUSIJEBXIUJOG3ZWCA
X-Mailman-Approved-At: Wed, 03 May 2023 10:18:36 +0000
CC: oxffffaa@gmail.com, kernel@sberdevices.ru, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] mtd: rawnand: macronix: OTP access for MX30LFxG18AC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/64DVLJIJ7WO2PSRUSIJEBXIUJOG3ZWCA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This adds support for OTP area access on MX30LFxG18AC chip series.

Changelog:
  v1 -> v2:
  * Add slab.h include due to kernel test robot error.
  v2 -> v3:
  * Use 'uint64_t' as input argument for 'do_div()' instead
    of 'unsigned long' due to kernel test robot error.

Signed-off-by: Arseniy Krasnov <AVKrasnov@sberdevices.ru>
---
 drivers/mtd/nand/raw/nand_macronix.c | 213 +++++++++++++++++++++++++++
 1 file changed, 213 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 1472f925f386..2301f990678e 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -6,6 +6,7 @@
  * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
  */
 
+#include <linux/slab.h>
 #include "linux/delay.h"
 #include "internals.h"
 
@@ -31,6 +32,20 @@
 
 #define MXIC_CMD_POWER_DOWN 0xB9
 
+#define ONFI_FEATURE_ADDR_30LFXG18AC_OTP	0x90
+#define MACRONIX_30LFXG18AC_OTP_START_PAGE	0
+#define MACRONIX_30LFXG18AC_OTP_PAGES		30
+#define MACRONIX_30LFXG18AC_OTP_PAGE_SIZE	2112
+#define MACRONIX_30LFXG18AC_OTP_START_BYTE	\
+	(MACRONIX_30LFXG18AC_OTP_START_PAGE *	\
+	 MACRONIX_30LFXG18AC_OTP_PAGE_SIZE)
+#define MACRONIX_30LFXG18AC_OTP_SIZE_BYTES	\
+	(MACRONIX_30LFXG18AC_OTP_PAGES *	\
+	 MACRONIX_30LFXG18AC_OTP_PAGE_SIZE)
+
+#define MACRONIX_30LFXG18AC_OTP_EN		BIT(0)
+#define MACRONIX_30LFXG18AC_OTP_LOCKED		BIT(1)
+
 struct nand_onfi_vendor_macronix {
 	u8 reserved;
 	u8 reliability_func;
@@ -316,6 +331,203 @@ static void macronix_nand_deep_power_down_support(struct nand_chip *chip)
 	chip->ops.resume = mxic_nand_resume;
 }
 
+static int macronix_30lfxg18ac_get_otp_info(struct mtd_info *mtd, size_t len,
+					    size_t *retlen,
+					    struct otp_info *buf)
+{
+	if (len < sizeof(*buf))
+		return -EINVAL;
+
+	/* Don't know how to check that OTP is locked. */
+	buf->locked = 0;
+	buf->start = MACRONIX_30LFXG18AC_OTP_START_BYTE;
+	buf->length = MACRONIX_30LFXG18AC_OTP_SIZE_BYTES;
+
+	*retlen = sizeof(*buf);
+
+	return 0;
+}
+
+static int macronix_30lfxg18ac_otp_enable(struct nand_chip *nand)
+{
+	uint8_t feature_buf[ONFI_SUBFEATURE_PARAM_LEN] = { 0 };
+
+	feature_buf[0] = MACRONIX_30LFXG18AC_OTP_EN;
+	return nand_set_features(nand, ONFI_FEATURE_ADDR_30LFXG18AC_OTP,
+				 feature_buf);
+}
+
+static int macronix_30lfxg18ac_otp_disable(struct nand_chip *nand)
+{
+	uint8_t feature_buf[ONFI_SUBFEATURE_PARAM_LEN] = { 0 };
+
+	return nand_set_features(nand, ONFI_FEATURE_ADDR_30LFXG18AC_OTP,
+				 feature_buf);
+}
+
+static int __macronix_30lfxg18ac_rw_otp(struct mtd_info *mtd,
+					loff_t offs_in_flash,
+					size_t len, size_t *retlen,
+					u_char *buf, bool write)
+{
+	struct nand_chip *nand;
+	size_t bytes_handled;
+	off_t offs_in_page;
+	uint64_t page;
+	void *dma_buf;
+	int ret;
+
+	/* 'nand_prog/read_page_op()' may use 'buf' as DMA buffer,
+	 * so allocate properly aligned memory for it. This is
+	 * needed because cross page accesses may lead to unaligned
+	 * buffer address for DMA.
+	 */
+	dma_buf = kmalloc(MACRONIX_30LFXG18AC_OTP_PAGE_SIZE, GFP_KERNEL);
+	if (!dma_buf)
+		return -ENOMEM;
+
+	nand = mtd_to_nand(mtd);
+	nand_select_target(nand, 0);
+
+	ret = macronix_30lfxg18ac_otp_enable(nand);
+	if (ret)
+		goto out_otp;
+
+	page = offs_in_flash;
+	/* 'page' will be result of division. */
+	offs_in_page = do_div(page, MACRONIX_30LFXG18AC_OTP_PAGE_SIZE);
+	bytes_handled = 0;
+
+	while (bytes_handled < len &&
+	       page < MACRONIX_30LFXG18AC_OTP_PAGES) {
+		size_t bytes_to_handle;
+
+		bytes_to_handle = min_t(size_t, len - bytes_handled,
+					MACRONIX_30LFXG18AC_OTP_PAGE_SIZE -
+					offs_in_page);
+
+		if (write) {
+			memcpy(dma_buf, &buf[bytes_handled], bytes_to_handle);
+			ret = nand_prog_page_op(nand, page, offs_in_page,
+						dma_buf, bytes_to_handle);
+		} else {
+			ret = nand_read_page_op(nand, page, offs_in_page,
+						dma_buf, bytes_to_handle);
+			if (!ret)
+				memcpy(&buf[bytes_handled], dma_buf,
+				       bytes_to_handle);
+		}
+		if (ret)
+			goto out_otp;
+
+		bytes_handled += bytes_to_handle;
+		offs_in_page = 0;
+		page++;
+	}
+
+	*retlen = bytes_handled;
+
+out_otp:
+	if (ret)
+		dev_err(&mtd->dev, "failed to perform OTP IO: %i\n", ret);
+
+	ret = macronix_30lfxg18ac_otp_disable(nand);
+	WARN(ret, "failed to leave OTP mode after %s\n",
+	     write ? "write" : "read");
+	nand_deselect_target(nand);
+	kfree(dma_buf);
+
+	return ret;
+}
+
+static int macronix_30lfxg18ac_write_otp(struct mtd_info *mtd, loff_t to,
+					 size_t len, size_t *rlen,
+					 const u_char *buf)
+{
+	return __macronix_30lfxg18ac_rw_otp(mtd, to, len, rlen, (u_char *)buf,
+					    true);
+}
+
+static int macronix_30lfxg18ac_read_otp(struct mtd_info *mtd, loff_t from,
+					size_t len, size_t *rlen,
+					u_char *buf)
+{
+	return __macronix_30lfxg18ac_rw_otp(mtd, from, len, rlen, buf, false);
+}
+
+static int macronix_30lfxg18ac_lock_otp(struct mtd_info *mtd, loff_t from,
+					size_t len)
+{
+	uint8_t feature_buf[ONFI_SUBFEATURE_PARAM_LEN] = { 0 };
+	struct nand_chip *nand;
+	int ret;
+
+	if (from != MACRONIX_30LFXG18AC_OTP_START_BYTE ||
+	    len != MACRONIX_30LFXG18AC_OTP_SIZE_BYTES)
+		return -EINVAL;
+
+	dev_dbg(&mtd->dev, "locking OTP\n");
+
+	nand = mtd_to_nand(mtd);
+	nand_select_target(nand, 0);
+
+	feature_buf[0] = MACRONIX_30LFXG18AC_OTP_EN |
+			 MACRONIX_30LFXG18AC_OTP_LOCKED;
+	ret = nand_set_features(nand, ONFI_FEATURE_ADDR_30LFXG18AC_OTP,
+				feature_buf);
+	if (ret) {
+		dev_err(&mtd->dev,
+			"failed to lock OTP (set features): %i\n", ret);
+		nand_deselect_target(nand);
+		return ret;
+	}
+
+	/* Do dummy page prog with zero address. */
+	feature_buf[0] = 0;
+	ret = nand_prog_page_op(nand, 0, 0, feature_buf, 1);
+	if (ret)
+		dev_err(&mtd->dev,
+			"failed to lock OTP (page prog): %i\n", ret);
+
+	ret = macronix_30lfxg18ac_otp_disable(nand);
+	WARN(ret, "failed to leave OTP mode after lock\n");
+
+	nand_deselect_target(nand);
+
+	return ret;
+}
+
+static void macronix_nand_setup_otp(struct nand_chip *chip)
+{
+	static const char * const supported_otp_models[] = {
+		"MX30LF1G18AC",
+		"MX30LF2G18AC",
+		"MX30LF4G18AC",
+	};
+	struct mtd_info *mtd;
+
+	if (!chip->parameters.supports_set_get_features)
+		return;
+
+	if (match_string(supported_otp_models,
+			 ARRAY_SIZE(supported_otp_models),
+			 chip->parameters.model) < 0)
+		return;
+
+	bitmap_set(chip->parameters.get_feature_list,
+		   ONFI_FEATURE_ADDR_30LFXG18AC_OTP, 1);
+	bitmap_set(chip->parameters.set_feature_list,
+		   ONFI_FEATURE_ADDR_30LFXG18AC_OTP, 1);
+
+	mtd = nand_to_mtd(chip);
+	mtd->_get_fact_prot_info = macronix_30lfxg18ac_get_otp_info;
+	mtd->_read_fact_prot_reg = macronix_30lfxg18ac_read_otp;
+	mtd->_get_user_prot_info = macronix_30lfxg18ac_get_otp_info;
+	mtd->_read_user_prot_reg = macronix_30lfxg18ac_read_otp;
+	mtd->_write_user_prot_reg = macronix_30lfxg18ac_write_otp;
+	mtd->_lock_user_prot_reg = macronix_30lfxg18ac_lock_otp;
+}
+
 static int macronix_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -325,6 +537,7 @@ static int macronix_nand_init(struct nand_chip *chip)
 	macronix_nand_onfi_init(chip);
 	macronix_nand_block_protection_support(chip);
 	macronix_nand_deep_power_down_support(chip);
+	macronix_nand_setup_otp(chip);
 
 	return 0;
 }
-- 
2.35.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
