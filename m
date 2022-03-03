Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A54A4EACDE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:08:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 812043EC04
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:08:43 +0000 (UTC)
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
	by lists.linaro.org (Postfix) with ESMTPS id B74C93ECC0
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Mar 2022 16:17:31 +0000 (UTC)
Received: from mwalle01.kontron.local. (unknown [213.135.10.150])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ssl.serverraum.org (Postfix) with ESMTPSA id 49F902223B;
	Thu,  3 Mar 2022 17:17:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
	t=1646324250;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PFcCtGt63rBp0kucxIHsntg/HdnJkcA4oD5l63d9a3E=;
	b=JbU6lT9gA0vzBY0dz3e94kJ/OGyeZJZSJbYWL+9fPmX7eKB6GJwz6P+MsJyn2SN0XoS1vF
	hr9Jc10NWzX5jilTfcOPebKpTC9S9c47WGfEPHwdX5E+uvK6La+F+gZp2x7b7mgH2aBxBX
	95jxKtw4oDFeZ1hQ1aEF6AlUXePndvw=
From: Michael Walle <michael@walle.cc>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu,  3 Mar 2022 17:17:24 +0100
Message-Id: <20220303161724.3324948-1-michael@walle.cc>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-MailFrom: michael@walle.cc
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z4C6DENBMCTRTEYOHTHN4F4QME6QPUQQ
X-Message-ID-Hash: Z4C6DENBMCTRTEYOHTHN4F4QME6QPUQQ
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:08:28 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Michael Walle <michael@walle.cc>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] i2c: at91: use dma safe buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z4C6DENBMCTRTEYOHTHN4F4QME6QPUQQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The supplied buffer might be on the stack and we get the following error
message:
[    3.312058] at91_i2c e0070600.i2c: rejecting DMA map of vmalloc memory

Use i2c_{get,put}_dma_safe_msg_buf() to get a DMA-able memory region if
necessary.

Cc: stable@vger.kernel.org
Signed-off-by: Michael Walle <michael@walle.cc>
---

I'm not sure if or which Fixes: tag I should add to this patch. The issue
seems to be since a very long time, but nobody seem to have triggered it.
FWIW, I'm using the sff,sfp driver, which triggers this.

 drivers/i2c/busses/i2c-at91-master.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index b0eae94909f4..a7a22fedbaba 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -656,6 +656,7 @@ static int at91_twi_xfer(struct i2c_adapter *adap, struct i2c_msg *msg, int num)
 	unsigned int_addr_flag = 0;
 	struct i2c_msg *m_start = msg;
 	bool is_read;
+	u8 *dma_buf;
 
 	dev_dbg(&adap->dev, "at91_xfer: processing %d messages:\n", num);
 
@@ -703,7 +704,18 @@ static int at91_twi_xfer(struct i2c_adapter *adap, struct i2c_msg *msg, int num)
 	dev->msg = m_start;
 	dev->recv_len_abort = false;
 
+	if (dev->use_dma) {
+		dma_buf = i2c_get_dma_safe_msg_buf(m_start, 1);
+		if (!dma_buf) {
+			ret = -ENOMEM;
+			goto out;
+		}
+		dev->buf = dma_buf;
+	}
+
+
 	ret = at91_do_twi_transfer(dev);
+	i2c_put_dma_safe_msg_buf(dma_buf, m_start, !ret);
 
 	ret = (ret < 0) ? ret : num;
 out:
-- 
2.30.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
