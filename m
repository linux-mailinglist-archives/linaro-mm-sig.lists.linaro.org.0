Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAE379A94B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 17:00:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 067543EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 15:00:13 +0000 (UTC)
Received: from out203-205-221-233.mail.qq.com (out203-205-221-233.mail.qq.com [203.205.221.233])
	by lists.linaro.org (Postfix) with ESMTPS id B88413EAB4
	for <linaro-mm-sig@lists.linaro.org>; Sat, 26 Aug 2023 10:03:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=foxmail.com header.s=s201512 header.b=T9CuCMua;
	spf=pass (lists.linaro.org: domain of zhang_shurong@foxmail.com designates 203.205.221.233 as permitted sender) smtp.mailfrom=zhang_shurong@foxmail.com;
	dmarc=pass (policy=none) header.from=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1693044179;
	bh=E32l48gh74u0wKPcn5axJaB36BSlQqywiLukbAdXIo0=;
	h=From:To:Cc:Subject:Date;
	b=T9CuCMuaWJWAE5jgkyzVpwBaBlJb9691forIK4V8t9qhY39dktPTz9OUkCyDJS6oo
	 DoOB6pG9VdWy0Q76u0koP31kb5Z6Rb0VSPlKHLcL3oLJ0YXiqeB8pK1SkNGE7o84oq
	 WcoYx4CtWKm083z36Ot+y+IcPbmiVGwN4pKXCl6o=
Received: from KernelDevBox.byted.org ([180.184.49.4])
	by newxmesmtplogicsvrszb1-0.qq.com (NewEsmtp) with SMTP
	id B702291; Sat, 26 Aug 2023 18:02:55 +0800
X-QQ-mid: xmsmtpt1693044175tknomh8m9
Message-ID: <tencent_73FCC06A3D1C14EE5175253C6FB46A07B709@qq.com>
X-QQ-XMAILINFO: NMGzQWUSIfvTZp3i9LCvKYDbI9UtNovodc1zIJP/gvVV0C9AiP/tkwAKzErV5Z
	 875prIgdlkbQpLlKuuDWJuSxiNTe9ZpBCF6bvFBCPFOYAQEqYccrDWb4p4UIUKm2SJbS2L7BCwaT
	 aoVnREjC45OyNfRG5LdTdi2S6Sj8kgyNIvuq5tdodzK1sZv+ovLK1ct+MfiqkEqQZ2F5LSgZPe7P
	 VRSTirdwNI0Xr6j6ZCEK3iE0U4PUChNDVVd26cGBOdWBh6/kjJG/URi+TIt57uVcwSg1fwZ5KGRq
	 zg4881cK67nDMhzeVGvxsq/sWPLIAv5zUrO+Zu/h4Q+xcAKy7FCBuJaBEtQux0Y2MYCCQcZ+71CO
	 49nIUnRSRUsASYy9w0tb78mXeHeSiSe75vFhx63/JDOhGY2t/jvAFioCZgg85EKQsZvcPplEKQGX
	 Dd9YGOmaibSR3xNvjFYq1mfq2X23vAp8SrMxlDvVP2LCc/wrN7R4Zb9V6BEtMEYvzrF0sc6jqwlk
	 C1hEvrPG1k7yblUPaW5Eafvgp5naHYNqr4ezrlcXyGHHZEMd0+rhi3CV0ewzxqm4/V6+WcIrihao
	 rdoY7D4lSPlCF9YPzcXm896zLv5AXU0aNfIbLaBlW7LyKJVKeG6gLVywVx3ROtFoXEFLerSX1fCY
	 NXtsngpac08po6cZhVWu8HwL33gWUOyfDP5DoOO7jZ950JRf39/DXdu/CdaT3jQykKVE2rPbXSQm
	 TTBxOU0tNz4p+LL+ovIRisVZXr1qWadcmoiVegik36K3YAoZGfM0XuJLfxh//8LoRTIhYG85P9oR
	 bpqqvbp+uzSRPUh9cfJXUkbbl2bVXBK+h5Gs+D/cKn3s1Ds+pB94TUjFOnF8fR3QJILE4axHRcKs
	 OmWWj85kO/riG3TJQ0AyGoT/r+sboldviGFALGxtnsNJ9UA4OKrbS2ViJOBG7vHkJHsm6yE+x1im
	 F8sxgLGCb1a0DMBZ82MDtEspBUhtVJ51bruqFEHr5UbCEGYe8TD2si4XQWpQizhWNDDL4OnHI=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
From: Zhang Shurong <zhang_shurong@foxmail.com>
To: ldewangan@nvidia.com
Date: Sat, 26 Aug 2023 18:02:54 +0800
X-OQ-MSGID: <20230826100254.2197256-1-zhang_shurong@foxmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Rspamd-Queue-Id: B88413EAB4
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[foxmail.com,none];
	R_DKIM_ALLOW(-0.20)[foxmail.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip4:203.205.221.128/25];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[foxmail.com];
	ASN(0.00)[asn:132203, ipnet:203.205.220.0/23, country:CN];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.943];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,nvidia.com,pengutronix.de,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,foxmail.com];
	FREEMAIL_ENVFROM(0.00)[foxmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[foxmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: zhang_shurong@foxmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5QKGZGLLR357DDIDJE3JXX4FDX3QVRYG
X-Message-ID-Hash: 5QKGZGLLR357DDIDJE3JXX4FDX3QVRYG
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:59:30 +0000
CC: broonie@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com, p.zabel@pengutronix.de, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-spi@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Zhang Shurong <zhang_shurong@foxmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] spi: tegra: Fix missing IRQ check in tegra_slink_probe()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5QKGZGLLR357DDIDJE3JXX4FDX3QVRYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This func misses checking for platform_get_irq()'s call and may passes the
negative error codes to request_irq(), which takes unsigned IRQ #,
causing it to fail with -EINVAL, overriding an original error code.

Fix this by stop calling request_irq() with invalid IRQ #s.

Fixes: dc4dc3605639 ("spi: tegra: add spi driver for SLINK controller")
Signed-off-by: Zhang Shurong <zhang_shurong@foxmail.com>
---
 drivers/spi/spi-tegra20-slink.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/spi/spi-tegra20-slink.c b/drivers/spi/spi-tegra20-slink.c
index 4d6db6182c5e..f5cd365c913a 100644
--- a/drivers/spi/spi-tegra20-slink.c
+++ b/drivers/spi/spi-tegra20-slink.c
@@ -1086,6 +1086,8 @@ static int tegra_slink_probe(struct platform_device *pdev)
 	reset_control_deassert(tspi->rst);
 
 	spi_irq = platform_get_irq(pdev, 0);
+	if (spi_irq < 0)
+		return spi_irq;
 	tspi->irq = spi_irq;
 	ret = request_threaded_irq(tspi->irq, tegra_slink_isr,
 				   tegra_slink_isr_thread, IRQF_ONESHOT,
-- 
2.30.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
