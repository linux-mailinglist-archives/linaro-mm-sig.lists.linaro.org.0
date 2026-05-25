Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iF2YMZvzE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:00:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 646D15C6D9A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:00:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77B783F829
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 07:00:42 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 0A3A43F7FA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2026 06:47:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UsRfe9Jo;
	spf=pass (lists.linaro.org: domain of devnull+webgeek1234.gmail.com@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=devnull+webgeek1234.gmail.com@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 69BE04340F;
	Mon, 25 May 2026 06:47:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3ED05C2BCB7;
	Mon, 25 May 2026 06:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779691676;
	bh=kj5kq9WD/UeIGGomDPvQJ5qz0l33I6XGMyKKg4VQXdc=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=UsRfe9JoPHyRpOhu0zxGGR0t97QML2dwoGLwM4dpJ8dWLCzm0m3q1kqwk6OW95e8S
	 B096Rb/bSoFz31uu4JPQDf4o7ShLNqvQbGjcz3j0dPWK+GSP4FGHVxZUrXK7aw7WT1
	 6bKX3n2UYWbMuGrUQSjSQdikX1YK0bI2qwF/O4KbHlLGRF14RIRGdaA8xr2c23JgXJ
	 dvHAp2niUkkqCC7GdVkpiy3ZhQk4b2VjNSEt4doOgon36BbwYrttI4cpBo9tz5Ua0q
	 T81REJt2CwjFSZ0IaUID/+IBQEeBsQI5V0nat4zSWwO6VqyCfRNPC9+ACCvDyaGGCp
	 7qAtMPPpy/sfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26BACCD5BC0;
	Mon, 25 May 2026 06:47:56 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 25 May 2026 01:47:43 -0500
Message-Id: <20260525-tegra194-qspi-iommu-v2-0-a11c53f804b2@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32NQQ6CMBBFr0Jm7RgKbY2uvIdhge0UJrEUW2w0h
 LtbOYDL95L//gqJIlOCS7VCpMyJw1SgOVRgxn4aCNkWhqZudK2EwoWG2IuzxGeaGTl4/0KSJLW
 UVjnroCznSI7fe/XWFR45LSF+9pMsfvZ/LwusUZ2su+vW2Nbq6+B7fhxN8NBt2/YFvaqvCLYAA
 AA=
X-Change-ID: 20260515-tegra194-qspi-iommu-e4e4644d5fdf
To: Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779691675; l=1598;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=kj5kq9WD/UeIGGomDPvQJ5qz0l33I6XGMyKKg4VQXdc=;
 b=FgtyycY/WO9UF+dLOgSpwlPMx83PaD2wpdDr/spM/8ugUqsL+0skVAlc7O0wcEJkKGlESI3Kw
 FBcCnN0pvl3BDr1dCFTbv6fFITPSScZWnGo/y30gVf/9lkMVfN50TJU
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-Spamd-Bar: -
X-MailFrom: devnull+webgeek1234.gmail.com@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K2UU2ZNHZEQIHAC3B6K2YNF2JC4SQ4M3
X-Message-ID-Hash: K2UU2ZNHZEQIHAC3B6K2YNF2JC4SQ4M3
X-Mailman-Approved-At: Mon, 25 May 2026 07:00:23 +0000
CC: linux-tegra@vger.kernel.org, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, devicetree@vger.kernel.org, Thierry Reding <treding@nvidia.com>, Aaron Kling <webgeek1234@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: webgeek1234@gmail.com
Subject: [Linaro-mm-sig] [PATCH v2 0/2] arm64: tegra: Enable DMA Support on Tegra194 QSPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K2UU2ZNHZEQIHAC3B6K2YNF2JC4SQ4M3/>
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
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,nvidia.com,gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,webgeek1234.gmail.com];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	NEURAL_SPAM(0.00)[0.058];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 646D15C6D9A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The reason for this is to properly support the spi nor chip on the
Jetson Xavier NX module. Prior to this, it would time out on all
transfers and sometimes even trigger a cbb fault, locking up the entire
unit. With this, reading and writing to the flash memory works as
expected.

This also fixes the tegra210-quad spi driver to properly use the dma
memory space instead of the spi controllers. Without this, enabling dma
on the controllers results in mmu faults.

The driver change has only been tested on tegra210 / p3450 and tegra194
/ p3518 as that is the only available test platforms. Tegra234 and
Tegra241 should also be verified. I have p3766 for tegra234, but the
qspi flash memory is firewalled by mb1 on all publicly available
bootloaders, and no other spi devices are part of the devkit.

---
Changes in v2:
- Drop bindings patches
- Add patch to use dma memory space instead of the spi controllers when
  dma is enabled.
- Drop iommu properties from final patch
- Link to v1: https://lore.kernel.org/r/20260515-tegra194-qspi-iommu-v1-0-57dfb63cd3d6@gmail.com

---
Aaron Kling (2):
      spi: tegra210-quad: Allocate DMA memory for DMA engine
      arm64: tegra: Enable DMA Support on Tegra194 QSPI

 arch/arm64/boot/dts/nvidia/tegra194.dtsi |  4 ++++
 drivers/spi/spi-tegra210-quad.c          | 29 ++++++++++++++++++-----------
 2 files changed, 22 insertions(+), 11 deletions(-)
---
base-commit: c1ecb239fa3456529a32255359fc78b69eb9d847
change-id: 20260515-tegra194-qspi-iommu-e4e4644d5fdf

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
