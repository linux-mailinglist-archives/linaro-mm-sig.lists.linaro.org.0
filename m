Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0E3625049
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Nov 2022 03:34:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 392BA3F5F7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Nov 2022 02:34:28 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 8A72F3F517
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Nov 2022 02:34:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BlVwVg4k;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A23D7B823CA;
	Fri, 11 Nov 2022 02:34:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFD91C43143;
	Fri, 11 Nov 2022 02:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668134046;
	bh=uKIU1CJtuWD1BtfjIRTB7YVoax7aTeNSNtkCVCL5NYY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BlVwVg4k+hM7J3gA8+1rQqKzkBRMZ6ynelNCiEFGhEX0a8ZlZphkPA5IzpDdnfguH
	 vCYVZU1v14591Rg0+0SLHUyVxvzyj+D0gFbIqrHlB/mz5dCk3a/0veug/Jjrm8QRiy
	 nuC+a/b5DYW6Ue2iXivw4RDuarob1w/9l1qx4vbYurtnsXFMEqL2zkqlFyifNJIc7X
	 0SvHqa+TAV42o87svbYUu7e/ZeQpVRaeKCSbf8pkqqaep5gJJSUoiSqRGeBGfZTjp+
	 a2gc/ybw/zEuXF6ZPwy6fx97v0poOiNQ+UNrwCK24LiZeN5asIUM3gCH0dOgWdEKyK
	 ZQaoY/iGG4GuQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 10 Nov 2022 21:33:22 -0500
Message-Id: <20221111023340.227279-14-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221111023340.227279-1-sashal@kernel.org>
References: <20221111023340.227279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----------
X-Rspamd-Queue-Id: 8A72F3F517
X-Spamd-Result: default: False [-10.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,145.40.68.75:from];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,nvidia.com:email];
	FREEMAIL_CC(0.00)[nvidia.com,arm.com,kernel.org,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 6OMIEDVU7R75DPE4CT6PBC2RKDPDV4D6
X-Message-ID-Hash: 6OMIEDVU7R75DPE4CT6PBC2RKDPDV4D6
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thierry Reding <treding@nvidia.com>, Robin Murphy <robin.murphy@arm.com>, Wolfram Sang <wsa@kernel.org>, Sasha Levin <sashal@kernel.org>, ldewangan@nvidia.com, thierry.reding@gmail.com, jonathanh@nvidia.com, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-i2c@vger.kernel.org, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.0 14/30] i2c: tegra: Allocate DMA memory for DMA engine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6OMIEDVU7R75DPE4CT6PBC2RKDPDV4D6/>
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
index 031c78ac42e6..a24cc413c89b 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -284,6 +284,7 @@ struct tegra_i2c_dev {
 	struct dma_chan *tx_dma_chan;
 	struct dma_chan *rx_dma_chan;
 	unsigned int dma_buf_size;
+	struct device *dma_dev;
 	dma_addr_t dma_phys;
 	void *dma_buf;
 
@@ -420,7 +421,7 @@ static int tegra_i2c_dma_submit(struct tegra_i2c_dev *i2c_dev, size_t len)
 static void tegra_i2c_release_dma(struct tegra_i2c_dev *i2c_dev)
 {
 	if (i2c_dev->dma_buf) {
-		dma_free_coherent(i2c_dev->dev, i2c_dev->dma_buf_size,
+		dma_free_coherent(i2c_dev->dma_dev, i2c_dev->dma_buf_size,
 				  i2c_dev->dma_buf, i2c_dev->dma_phys);
 		i2c_dev->dma_buf = NULL;
 	}
@@ -467,10 +468,13 @@ static int tegra_i2c_init_dma(struct tegra_i2c_dev *i2c_dev)
 
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
@@ -1267,7 +1271,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
 
 	if (i2c_dev->dma_mode) {
 		if (i2c_dev->msg_read) {
-			dma_sync_single_for_device(i2c_dev->dev,
+			dma_sync_single_for_device(i2c_dev->dma_dev,
 						   i2c_dev->dma_phys,
 						   xfer_size, DMA_FROM_DEVICE);
 
@@ -1275,7 +1279,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
 			if (err)
 				return err;
 		} else {
-			dma_sync_single_for_cpu(i2c_dev->dev,
+			dma_sync_single_for_cpu(i2c_dev->dma_dev,
 						i2c_dev->dma_phys,
 						xfer_size, DMA_TO_DEVICE);
 		}
@@ -1288,7 +1292,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
 			memcpy(i2c_dev->dma_buf + I2C_PACKET_HEADER_SIZE,
 			       msg->buf, msg->len);
 
-			dma_sync_single_for_device(i2c_dev->dev,
+			dma_sync_single_for_device(i2c_dev->dma_dev,
 						   i2c_dev->dma_phys,
 						   xfer_size, DMA_TO_DEVICE);
 
@@ -1339,7 +1343,7 @@ static int tegra_i2c_xfer_msg(struct tegra_i2c_dev *i2c_dev,
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
