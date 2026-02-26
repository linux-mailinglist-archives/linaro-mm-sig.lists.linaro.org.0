Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM/9JvkU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 348804122AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37A28453E0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:28 +0000 (UTC)
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	by lists.linaro.org (Postfix) with ESMTPS id D40283F7E4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 13:40:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=nxp.com;
	spf=pass (lists.linaro.org: domain of ruxandra.radulescu@nxp.com designates 92.121.34.13 as permitted sender) smtp.mailfrom=ruxandra.radulescu@nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 05E7A1A14A6;
	Thu, 26 Feb 2026 14:40:58 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EBD211A2549;
	Thu, 26 Feb 2026 14:40:57 +0100 (CET)
Received: from lsv15149.swis.ro-buh01.nxp.com (lsv15149.swis.ro-buh01.nxp.com [10.162.246.145])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3F2952035B;
	Thu, 26 Feb 2026 14:40:56 +0100 (CET)
From: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
Date: Thu, 26 Feb 2026 15:40:39 +0200
Message-Id: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFhNoGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyMz3bzU0pKi/DzdZBNj01RjyxRDM/M0JaDqgqLUtMwKsEnRsbW1AOD
 Yn/tZAAAA
X-Change-ID: 20260226-neutron-c435e39d167f
To: Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772113256; l=3577;
 i=ruxandra.radulescu@nxp.com; s=20260204; h=from:subject:message-id;
 bh=/7MY8hy5jQlEhxj9eGiR1iRl0W6znJ9KfDclM2QxDN8=;
 b=XoBoTREGvNXkcj74Qdwpy1rPE9Srk5uacOSO9MTQQEa59XXxIe2u/tWgmnYx+T7BKj7G+iZtI
 ZjQy748HLl7D6BMVVeD4pa/vQ8RKwzMN3ApPcTl7A9vLaek1BrNL4df
X-Developer-Key: i=ruxandra.radulescu@nxp.com; a=ed25519;
 pk=zoq4b4OYR0c4faAH97xoTxdr6vfR8OvPbS+Cx0XhIBY=
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Bar: ---
X-MailFrom: ruxandra.radulescu@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VRFBWEX3PJ3AQBBSKLLW6HTZ4TUUHEZD
X-Message-ID-Hash: VRFBWEX3PJ3AQBBSKLLW6HTZ4TUUHEZD
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:24 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>, Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/9] accel: New driver for NXP's Neutron NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VRFBWEX3PJ3AQBBSKLLW6HTZ4TUUHEZD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1179];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ruxandra.radulescu@nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.898];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:mid,nxp.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 348804122AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a new accel driver for the Neutron Neural Processing Unit
(NPU), along with associated dt-bindings and DTS node.

The first patch extends the GEM DMA helper APIs to allow bidirectional
mapping of non-coherent DMA buffers. While not part of the Neutron
driver, it's a prerequisite allowing us to use the GEM DMA helper.

Neutron is a Neural Processing Unit from NXP, providing machine
learning (ML) acceleration for edge AI applications. Neutron is
integrated on NXP SoCs such as the i.MX95.

The NPU consists of the following:
- RISC-V core running a proprietary firmware
- One or more Neutron cores, representing the main computation
  engine performing ML operations
- Dedicated fast memory (TCM)
- DMA engine that handles data transfers between DDR and TCM

The firmware is closed source and distributed as a binary here [1].

The Neutron software stack also contains a userspace library [1] and
a LiteRT custom delegate [2] that allow integration with standard
LiteRT tools.

[1] https://github.com/nxp-upstream/neutron/tree/upstream
[2] https://github.com/nxp-imx/tflite-neutron-delegate

Signed-off-by: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
---
Ioana Ciocoi-Radulescu (9):
      drm/gem-dma: Add flag for bidirectional mapping of non-coherent GEM DMA buffers
      accel/neutron: Add documentation for NXP Neutron accelerator driver
      dt-bindings: npu: Add bindings for NXP Neutron
      accel/neutron: Add driver for NXP Neutron NPU
      accel/neutron: Add GEM buffer object support
      accel/neutron: Add mailbox support
      accel/neutron: Add job submission IOCTL
      accel/neutron: Add logging support
      arm64: dts: imx95: Add Neutron node

 Documentation/accel/index.rst                      |   1 +
 Documentation/accel/neutron/index.rst              |  12 +
 Documentation/accel/neutron/neutron.rst            | 131 ++++++++
 .../devicetree/bindings/npu/nxp,imx95-neutron.yaml |  95 ++++++
 MAINTAINERS                                        |  10 +
 arch/arm64/boot/dts/freescale/imx95.dtsi           |  28 ++
 drivers/accel/Kconfig                              |   1 +
 drivers/accel/Makefile                             |   3 +-
 drivers/accel/neutron/Kconfig                      |  16 +
 drivers/accel/neutron/Makefile                     |  12 +
 drivers/accel/neutron/neutron_debugfs.c            |  34 ++
 drivers/accel/neutron/neutron_debugfs.h            |  15 +
 drivers/accel/neutron/neutron_device.c             | 239 ++++++++++++++
 drivers/accel/neutron/neutron_device.h             | 158 +++++++++
 drivers/accel/neutron/neutron_driver.c             | 262 +++++++++++++++
 drivers/accel/neutron/neutron_driver.h             |  16 +
 drivers/accel/neutron/neutron_gem.c                | 115 +++++++
 drivers/accel/neutron/neutron_gem.h                |  14 +
 drivers/accel/neutron/neutron_job.c                | 367 +++++++++++++++++++++
 drivers/accel/neutron/neutron_job.h                |  45 +++
 drivers/accel/neutron/neutron_mailbox.c            |  47 +++
 drivers/accel/neutron/neutron_mailbox.h            |  42 +++
 drivers/gpu/drm/drm_gem_dma_helper.c               |   6 +-
 include/drm/drm_gem_dma_helper.h                   |   3 +
 include/uapi/drm/neutron_accel.h                   | 130 ++++++++
 25 files changed, 1799 insertions(+), 3 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260226-neutron-c435e39d167f

Best regards,
-- 
Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
