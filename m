Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANcOEKbzE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:00:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6D75C6DA3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:00:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B6913F821
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 07:00:52 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 375DB3F8E7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2026 06:47:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=RRBlGGd9;
	spf=pass (lists.linaro.org: domain of devnull+webgeek1234.gmail.com@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=devnull+webgeek1234.gmail.com@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F9B140279;
	Mon, 25 May 2026 06:47:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57C58C2BCC7;
	Mon, 25 May 2026 06:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779691676;
	bh=rQtWtz9PaBC5kO/YmeSFs1AL2c5xXsa62gy6hOf0BC4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RRBlGGd926Pbz+gVLIdJH4aGYLYZwwKI7u8T3BTGNle1QfFTLqka6n4G2dsp7L8mx
	 hpZsA4p28dw687ygsK42fuR/qdNpFMO44tD9Uiyp4+hk0JDUcK7tToDVkEYlXo1H1Z
	 RXrruj6o07PvEGWpLeCuJsK4MDUubpcIXQttrQsjcl6+nUSq+YHtM/U4lcXv2sfBax
	 GLhYtvvvhMTdPL2PuB2fpVDgnohZ1FXbVuP12iuHwSbhLyWXJDSKprrxH7yYfY7RVr
	 VMRNo9ZtBAdFejzhKSoSUPKTe4GZ1HUM4aO5aD3PSnKS+G9/LTAbgXt1A3ZFerT5LV
	 nOJ6iNGfTNQ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44221CD5BCE;
	Mon, 25 May 2026 06:47:56 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 25 May 2026 01:47:45 -0500
MIME-Version: 1.0
Message-Id: <20260525-tegra194-qspi-iommu-v2-2-a11c53f804b2@gmail.com>
References: <20260525-tegra194-qspi-iommu-v2-0-a11c53f804b2@gmail.com>
In-Reply-To: <20260525-tegra194-qspi-iommu-v2-0-a11c53f804b2@gmail.com>
To: Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779691675; l=1118;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=KjSbPkVlCYH0lmqUb9TdWBRiwbc5n5A4wUaKdi0Q4ak=;
 b=PBjXCsxlPIs64wXAC3rv9Jl/iDRaXY0pG7TZaawi+0P9HpR2fOtGfRnlvlgqjKFs1D5MLuduh
 dV+Gq/kPkXYA63Uajrq8p3bL7jiD7BePTNcpBzrltxNxMjBOVFAbTfp
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-Spamd-Bar: --
X-MailFrom: devnull+webgeek1234.gmail.com@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SJ5QTICLQPXGBA6BY4PFFBSYE6MN34EP
X-Message-ID-Hash: SJ5QTICLQPXGBA6BY4PFFBSYE6MN34EP
X-Mailman-Approved-At: Mon, 25 May 2026 07:00:23 +0000
CC: linux-tegra@vger.kernel.org, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, devicetree@vger.kernel.org, Aaron Kling <webgeek1234@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: webgeek1234@gmail.com
Subject: [Linaro-mm-sig] [PATCH v2 2/2] arm64: tegra: Enable DMA Support on Tegra194 QSPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SJ5QTICLQPXGBA6BY4PFFBSYE6MN34EP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.49 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,webgeek1234.gmail.com];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	HAS_REPLYTO(0.00)[webgeek1234@gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	NEURAL_SPAM(0.00)[0.495];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.50.90.160:email,lists.linaro.org:rdns,lists.linaro.org:helo,0.49.229.112:email]
X-Rspamd-Queue-Id: 4A6D75C6DA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Aaron Kling <webgeek1234@gmail.com>

Without dma enabled pio mode is used and flash storage such as the one
on the p3668 module times out and cannot complete any transfers. In some
cases, these timeouts cause hangs and cbb faults.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 1d659454a6f9fe..e2ddbc6715d5e8 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -923,6 +923,8 @@ spi@3270000 {
 				 <&bpmp TEGRA194_CLK_QSPI0_PM>;
 			clock-names = "qspi", "qspi_out";
 			resets = <&bpmp TEGRA194_RESET_QSPI0>;
+			dmas = <&gpcdma 5>, <&gpcdma 5>;
+			dma-names = "rx", "tx";
 			status = "disabled";
 		};
 
@@ -1013,6 +1015,8 @@ spi@3300000 {
 				 <&bpmp TEGRA194_CLK_QSPI1_PM>;
 			clock-names = "qspi", "qspi_out";
 			resets = <&bpmp TEGRA194_RESET_QSPI1>;
+			dmas = <&gpcdma 6>, <&gpcdma 6>;
+			dma-names = "rx", "tx";
 			status = "disabled";
 		};
 

-- 
2.53.0


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
