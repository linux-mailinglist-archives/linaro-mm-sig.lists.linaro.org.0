Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OcXBrn34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A30D840FD9D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1D15404DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:52:39 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id C876B3F74C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Oct 2025 18:07:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ABsRIyUf;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of neil.armstrong@linaro.org designates 209.85.128.43 as permitted sender) smtp.mailfrom=neil.armstrong@linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so1216025e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Oct 2025 11:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761761269; x=1762366069; darn=lists.linaro.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KNwV3kIKfmFe80QZSUe0lDX9k4qYiLpxE6LgR+ZybE0=;
        b=ABsRIyUfnx60rWV2/nSWw0SINBFOm28XbHAPPNPOjfigNuWOven8a6lPhTF6h+2Tkd
         TQRiLgP7WDnwPpg2kWmH+NX/xDKcfQhSRKTBT1q0kgI4RHcEL+BFAQgOUYTI7omKw0XX
         LHZoNggdT2XYQKYsIpEmdv/KM8ytq11Q7+oQ+MnuKXfzNyMsrQoks5/ULnRP7IOwjNMW
         Zrf4ESZgABh045O4DKLjXmLyXONfCkbVT/8ZlvVGXwgLkQVgwni6cdKjizUEkc9YXC6K
         C0foSe0obb0twT4ovvQEGqhueOk0ctMo/auY12b70x0tauy8+aBQtW5iXVFt9L3QB5cq
         KHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761761269; x=1762366069;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KNwV3kIKfmFe80QZSUe0lDX9k4qYiLpxE6LgR+ZybE0=;
        b=QsJ1GiHitG2Dv06OA9ao2348K07FZQwOnv8y9lbTYVTF5MQ9g/UcTH5gw0OW9Ov+OO
         pTXe0+VlnFb8+qA8YKoeU88w2UTyZzb9bHZg4CP8qX0ZQoAj0+Sb39STkrVuBfpn+XlR
         DKkJegxfxXbomP0gfvXNA4rdcACdH7m1IuTyxCPpSePdLHJXPsLmb78ywOMHJiVSQyB2
         ikTf1PAR9aahgKWCuwJ+9RlUUXRS4GsxgaiLuEkR+76EVolpZWrZqD+h06NEVH6q2Cig
         ipi8dDpHMnzMXqmmkZuWSC/IFUOU4ADLzmXz8nXo5cwHl51L1tYMlnknhKmkUfRNriPE
         ikwg==
X-Forwarded-Encrypted: i=1; AJvYcCXqTiKDRY4Oq4NDt9v50j1/oybSt4a5GAfAstjRGLnZc+NWYnnY4BYOQtVNlo6BTZjQFX8QqrzEj2qB554a@lists.linaro.org
X-Gm-Message-State: AOJu0YwDiWxvJ9iqGQo+znkLA8GOcNb78qXgqYQik1Pg6VA23HZwZ+RF
	kDKdAefx8qJNzpcI7zaiwenQPphbgVNAgKW8O0RIMW8vwG3lKMDNWagPRl75swnkZknQKg==
X-Gm-Gg: ASbGncv3y9zorV1JisXfGKAMMhd2t4bBBsAecnkvA8lZ8cMsLkVvSFTjXSd3Jfbtbg7
	cMxy0oPdIc7Gi5vqzDyNY8iFA+n/2SbFmxzJM4aO4Ph/OxUaCZ5IPN4XpFYuun9YFO6HWLWJLX7
	r2pKAcqE1i5bDsVDOp6kW7xIvCXwb21CIQS0MkRiBXm/4ls5oMl5WDnL0MXL28KLdyG5MoQ0264
	QVeKyF7RMTDW+bg7ED7qnzdDou6gp+EZvYhE/JW3J1ieKslRfmMzC6Ud5NM33H9lE0DGuQH1XVx
	4MvwYM0uavL0sEtQFP71NEGmFIArrOyPqvJr3sDalvkFEEEwogMo2necD6hn+JeOa5Ye/ZNuHwm
	uRqC5ZmNfETrCpmJSQKvskNgfxPqnNAWDtZQJohdqGutpKTmhK4wNl0vFreOjyu6g8ZYfVzX9ew
	MrY4UjgwKKTlyP5j4US4g7
X-Google-Smtp-Source: AGHT+IEtMPjVh9Zcm+7C9F/ERY97bz/iXjm8g8W+QKNDx62F94FG9cv5Huxi+liF2AyMpIvvFbv2hA==
X-Received: by 2002:a05:600c:4707:b0:475:dd04:128a with SMTP id 5b1f17b1804b1-4771e1e10b2mr35660565e9.31.1761761268523;
        Wed, 29 Oct 2025 11:07:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47718427409sm49662015e9.1.2025.10.29.11.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 11:07:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 29 Oct 2025 19:07:42 +0100
MIME-Version: 1.0
Message-Id: <20251029-topic-sm8x50-geni-i2c-hub-no-dma-v1-1-5e264258a5bd@linaro.org>
X-B4-Tracking: v=1; b=H4sIAO1XAmkC/x3NQQqDMBBG4avIrPtDMhBNe5XSRYyjzsJEkrYI4
 t0buvw2751UpahUenQnFflq1Zwa7K2juIa0CHRqJjbsrOE73nnXiLr5wxkskhTKEetnRMqYtgD
 vLbuhD72LI7XMXmTW4794vq7rB/dzaxxyAAAA
X-Change-ID: 20251029-topic-sm8x50-geni-i2c-hub-no-dma-8812576a65cb
To: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
 Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
 Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Wolfram Sang <wsa@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2132;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=UJ2DT1Tiu56DrBbBEh0/iWktyI9wRry2MbdlaBokZTE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpAlfz8LKSj8+mAZ1QksgODZDbo1w7yGU4iVg2tYA9
 VBEcFOKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaQJX8wAKCRB33NvayMhJ0S2wD/
 sFxj0QkeV/duZgx4BgvFB456VI+EtWZMBJ3QVO9ZgwzJOGzQJplBMPxpyNBxWiRt1hSl5e/nOBUmXE
 R/tv8d5Na4+kXHgxezaH2dDB9hBVX8+7mKi6KJtH4KQChVQ5fsEwqPVeO6/dg5DTELvu6mDm+O3OF9
 Kzn2e3FgP2wbPrGCao5up8PR/wRUCP6zAbdYCWgf+D54nNkdZqLW90pRZxk8FGSPIW4AmSOs15Cc2R
 Te996h007PCHLoEEfRf0bAt5lweueUCL/vnRMNIArrJ2noAoclVA7YJ5NyRaJtJ1+p3DDzVAVbCgPT
 QxLDlvYyzc10fmx9aGlhqpRKmmrFjrI4RSO0swEpScsFdOGdnplAWs2lOKxKRhu3V65e5gIu0jNlBW
 keYbmpfQZ+vvPBlPwzL6AK3KDHuAEaRniwekbixKVm62NNXHPwyz3sBPnoNnsfI5qIP31l3I9/3cLR
 m/ywztQaFH3AWrdoSzWJrQkJueG2NgK7JveuZjlM4W0efx0ps8OIMbRnBcCg0k436Yt8tUspx8KZzw
 qVetRqhHG/LSK4XVa5fceQfGqVhLkJ+/8INRV4Mxji7EqSg63no5xELxabQZTg2RHF4edYk1rOSQrZ
 LmS4OPAo0UyyWqA3ZZ1hx2RX6tFe5s7yybh4qXJjkw0WzLOo2OswA6dki/aQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spamd-Bar: ---
X-MailFrom: neil.armstrong@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XPM43GAXUQPONVNKD6PFPUDMYDYCOHS5
X-Message-ID-Hash: XPM43GAXUQPONVNKD6PFPUDMYDYCOHS5
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:32 +0000
CC: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] i2c: qcom-geni: make sure I2C hub controllers can't use SE DMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XPM43GAXUQPONVNKD6PFPUDMYDYCOHS5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.01 / 15.00];
	DATE_IN_PAST(1.00)[4052];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.554];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: A30D840FD9D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The I2C Hub controller is a simpler GENI I2C variant that doesn't
support DMA at all, add a no_dma flag to make sure it nevers selects
the SE DMA mode with mappable 32bytes long transfers.

Fixes: cacd9643eca7 ("i2c: qcom-geni: add support for I2C Master Hub variant")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 43fdd89b8beb..bfb352b04902 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -97,6 +97,7 @@ struct geni_i2c_dev {
 	dma_addr_t dma_addr;
 	struct dma_chan *tx_c;
 	struct dma_chan *rx_c;
+	bool no_dma;
 	bool gpi_mode;
 	bool abort_done;
 };
@@ -425,7 +426,7 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 	size_t len = msg->len;
 	struct i2c_msg *cur;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	dma_buf = gi2c->no_dma ? NULL : i2c_get_dma_safe_msg_buf(msg, 32);
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
@@ -464,7 +465,7 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 	size_t len = msg->len;
 	struct i2c_msg *cur;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	dma_buf = gi2c->no_dma ? NULL : i2c_get_dma_safe_msg_buf(msg, 32);
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
@@ -880,10 +881,12 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		goto err_resources;
 	}
 
-	if (desc && desc->no_dma_support)
+	if (desc && desc->no_dma_support) {
 		fifo_disable = false;
-	else
+		gi2c->no_dma = true;
+	} else {
 		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
+	}
 
 	if (fifo_disable) {
 		/* FIFO is disabled, so we can only use GPI DMA */

---
base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa
change-id: 20251029-topic-sm8x50-geni-i2c-hub-no-dma-8812576a65cb

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
