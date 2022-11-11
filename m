Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C25625077
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Nov 2022 03:35:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BF163F5DF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Nov 2022 02:35:42 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A3FBC3EC30
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Nov 2022 02:35:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=k59DnB51;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4ADE561E87;
	Fri, 11 Nov 2022 02:35:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C038C433B5;
	Fri, 11 Nov 2022 02:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668134123;
	bh=upNkdi5O0O2ZCLZhuIgCzfblffSeZQe7x+ufoQQ0hg8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k59DnB51BbAVCPrK0KBtPlVOcbhW5uelRiQAZBsGcLTpfvc0+In8gPwSvc3eKA54x
	 2jFPSO6GZdHkZ8iwyGy9JAsaFdO0THp+YyC/w5Aqr/+RH1AmQuLPJ5u2sffkPu1krL
	 iHynQosorhi3dW/dG1c9WRTmJjTK0K1J9sqXO9txD1R19JS+x67QLpuk2E4ISnPuVg
	 Dqc7MRyAulV7wnyYEO+GuK/keuIHoxJCh0uxLxr/jAkkoJc3AfAbb2f8sCJ3BxmSh7
	 miTh5L6tH2Xbh4+aaJA0ZYVXeS6OrZMSQanlQNoKJSTNZ357kf3wSVJXoCPBnxm1Jq
	 UxkEjBm8kHNEQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 10 Nov 2022 21:35:06 -0500
Message-Id: <20221111023511.227800-6-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221111023511.227800-1-sashal@kernel.org>
References: <20221111023511.227800-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: A3FBC3EC30
X-Spamd-Result: default: False [-6.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,nvidia.com:email,dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,arm.com,kernel.org,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: BD5CIDVOGBIDY3LNZBKNRWAQLWC4MK7O
X-Message-ID-Hash: BD5CIDVOGBIDY3LNZBKNRWAQLWC4MK7O
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thierry Reding <treding@nvidia.com>, Robin Murphy <robin.murphy@arm.com>, Wolfram Sang <wsa@kernel.org>, Sasha Levin <sashal@kernel.org>, ldewangan@nvidia.com, thierry.reding@gmail.com, jonathanh@nvidia.com, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-i2c@vger.kernel.org, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.15 06/11] i2c: tegra: Allocate DMA memory for DMA engine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BD5CIDVOGBIDY3LNZBKNRWAQLWC4MK7O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

[ Upstream commit cdbf26251d3b35c4ccaea0c3a6de4318f727d3d2 ]

When the I2C controllers are running in DMA mode, it is the DMA engine
that performs the memory accesses rather than the I2C controller. Pass
the DMA engine's struct device pointer to the DMA API to make sure the
correct DMA operations are used.

This fixes an issue where the DMA engine's SMMU stream ID needs to be
misleadingly set for the I2C controllers in device tree.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
Signed-off-by: Wolfram Sang <wsa@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/i2c/busses/i2c-tegra.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index c883044715f3..444867cef682 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -283,6 +283,7 @@ struct tegra_i2c_dev {
 	struct dma_chan *tx_dma_chan;
 	struct dma_chan *rx_dma_chan;
 	unsigned int dma_buf_size;
+	struct device *dma_dev;
 	dma_addr_t dma_phys;
 	void *dma_buf;
 
@@ -419,7 +420,7 @@ static int tegra_i2c_dma_submit(struct tegra_i2c_dev *i2c_dev, size_t len)
 static void tegra_i2c_release_dma(struct tegra_i2c_dev *i2c_dev)
 {
 	if (i2c_dev->dma_buf) {
-		dma_free_coherent(i2c_dev->dev, i2c_dev->dma_buf_size,
+		dma_free_coherent(i2c_dev->dma_dev, i2c_dev->dma_buf_size,
 				  i2c_dev->dma_buf, i2c_dev->dma_phys);
 		i2c_dev->dma_buf = NULL;
 	}
@@ -466,10 +467,13 @@ static int tegra_i2c_init_dma(struct tegra_i2c_dev *i2c_dev)
 
 	i2c_dev->tx_dma_chan = chan;
 
+	WARN_ON(i2c_dev->tx_dma_chan->device != i2c_dev->rx_dma_chan->device);
+	i2c_dev->dma_dev = chan->device->dev;
+
 	i2c_dev->dma_buf_size = i2c_dev->hw->quirks->max_write_len +
 				I2C_PACKET_HEADER_SIZE;
 
-	dma_buf = dma_alloc_coherent(i2c_dev->dev, i2c_dev->dma_buf_size,
+	dma_buf = dma_alloc_coherent(i2c_dev->dma_dev, i2c_dev->dma_buf_size,
 				     &dma_phys, GFP_KERNEL | __GFP_NOWARN);
 	if (!dma_buf) {
 		dev_err(i2c_dev->dev, "failed to allocate DMA buffer\n");
@@ -1255,7 +1259,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
 
 	if (i2c_dev->dma_mode) {
 		if (i2c_dev->msg_read) {
-			dma_sync_single_for_device(i2c_dev->dev,
+			dma_sync_single_for_device(i2c_dev->dma_dev,
 						   i2c_dev->dma_phys,
 						   xfer_size, DMA_FROM_DEVICE);
 
@@ -1263,7 +1267,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
 			if (err)
 				return err;
 		} else {
-			dma_sync_single_for_cpu(i2c_dev->dev,
+			dma_sync_single_for_cpu(i2c_dev->dma_dev,
 						i2c_dev->dma_phys,
 						xfer_size, DMA_TO_DEVICE);
 		}
@@ -1276,7 +1280,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
 			memcpy(i2c_dev->dma_buf + I2C_PACKET_HEADER_SIZE,
 			       msg->buf, msg->len);
 
-			dma_sync_single_for_device(i2c_dev->dev,
+			dma_sync_single_for_device(i2c_dev->dma_dev,
 						   i2c_dev->dma_phys,
 						   xfer_size, DMA_TO_DEVICE);
 
@@ -1327,7 +1331,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
 		}
 
 		if (i2c_dev->msg_read && i2c_dev->msg_err == I2C_ERR_NONE) {
-			dma_sync_single_for_cpu(i2c_dev->dev,
+			dma_sync_single_for_cpu(i2c_dev->dma_dev,
 						i2c_dev->dma_phys,
 						xfer_size, DMA_FROM_DEVICE);
 
-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
