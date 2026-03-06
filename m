Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGIgFjZe5mm3vQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 29566430B19
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 918B840511
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:03:59 +0000 (UTC)
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	by lists.linaro.org (Postfix) with ESMTPS id 85BC63F6B6
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Mar 2026 13:28:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of ruxandra.radulescu@nxp.com designates 92.121.34.21 as permitted sender) smtp.mailfrom=ruxandra.radulescu@nxp.com;
	dmarc=pass (policy=none) header.from=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A387D200107;
	Fri,  6 Mar 2026 14:28:02 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 936D32000ED;
	Fri,  6 Mar 2026 14:28:02 +0100 (CET)
Received: from lsv15149.swis.ro-buh01.nxp.com (lsv15149.swis.ro-buh01.nxp.com [10.162.246.145])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2506920270;
	Fri,  6 Mar 2026 14:28:01 +0100 (CET)
From: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
Date: Fri, 06 Mar 2026 15:27:17 +0200
Message-Id: <20260306-neutron-v2-0-3019bd8c91ef@nxp.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADbWqmkC/2XMyw6CMBCF4Vchs7amF6jRle9hWNAyyCxsyRQbD
 Om7W9m6/E9Ovh0SMmGCW7MDY6ZEMdTQpwb8PIQnChprg5baSq2tCPheOQbhW9OhuY7KXiao74V
 xou2QHn3tmdIa+XPAWf3WfyMrIUVr0XtnnOvkcA/bcvbxBX0p5QtclHlwnAAAAA==
X-Change-ID: 20260226-neutron-c435e39d167f
To: Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Frank Li <Frank.Li@nxp.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772803680; l=3871;
 i=ruxandra.radulescu@nxp.com; s=20260204; h=from:subject:message-id;
 bh=lqDoB7KMfku/0vKx1ILRlUdtCxtORssmxE6KB556SDo=;
 b=V73PbnYRt98K55aGU8OUY1dj8IbWgXlGFZl2PZsf6CgHZeuSfNzvuj/0xYl/hbV+zvlAGXdWU
 35pD+XnIjslC7+hPa20BGk9IzTbp9DzuaSabrpNmw5xuAjy3fj0ZcOj
X-Developer-Key: i=ruxandra.radulescu@nxp.com; a=ed25519;
 pk=zoq4b4OYR0c4faAH97xoTxdr6vfR8OvPbS+Cx0XhIBY=
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Bar: ---
X-MailFrom: ruxandra.radulescu@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AXFILKMHFRPJMUAB3DYBK7GOB65T5FV6
X-Message-ID-Hash: AXFILKMHFRPJMUAB3DYBK7GOB65T5FV6
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:02:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>, Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/9] accel: New driver for NXP's Neutron NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AXFILKMHFRPJMUAB3DYBK7GOB65T5FV6/>
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
	DATE_IN_PAST(1.00)[1083];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com];
	RCPT_COUNT_TWELVE(0.00)[26];
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
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nxp.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 29566430B19
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
Changes in v2:
- rebase on newer drm-misc-next 
- dt bindings: clock fixes and renames
- update DTS to match new names
- remove unnecessary fields from neutron_job structure
- fix use of uninitialized variable

- Link to v1: https://lore.kernel.org/r/20260226-neutron-v1-0-46eccb3bb50a@nxp.com

---
Ioana Ciocoi-Radulescu (9):
      drm/gem-dma: Add flag for bidirectional mapping of non-coherent GEM DMA buffers
      accel/neutron: Add documentation for NXP Neutron accelerator driver
      dt-bindings: npu: Add NXP Neutron
      accel/neutron: Add driver for NXP Neutron NPU
      accel/neutron: Add GEM buffer object support
      accel/neutron: Add mailbox support
      accel/neutron: Add job submission IOCTL
      accel/neutron: Add logging support
      arm64: dts: imx95: Add Neutron node

 Documentation/accel/index.rst                      |   1 +
 Documentation/accel/neutron/index.rst              |  12 +
 Documentation/accel/neutron/neutron.rst            | 131 ++++++++
 .../devicetree/bindings/npu/nxp,imx95-neutron.yaml |  96 ++++++
 MAINTAINERS                                        |  10 +
 arch/arm64/boot/dts/freescale/imx95.dtsi           |  28 ++
 drivers/accel/Kconfig                              |   1 +
 drivers/accel/Makefile                             |   3 +-
 drivers/accel/neutron/Kconfig                      |  16 +
 drivers/accel/neutron/Makefile                     |  12 +
 drivers/accel/neutron/neutron_debugfs.c            |  34 ++
 drivers/accel/neutron/neutron_debugfs.h            |  15 +
 drivers/accel/neutron/neutron_device.c             | 239 +++++++++++++
 drivers/accel/neutron/neutron_device.h             | 155 +++++++++
 drivers/accel/neutron/neutron_driver.c             | 262 +++++++++++++++
 drivers/accel/neutron/neutron_driver.h             |  16 +
 drivers/accel/neutron/neutron_gem.c                | 116 +++++++
 drivers/accel/neutron/neutron_gem.h                |  14 +
 drivers/accel/neutron/neutron_job.c                | 372 +++++++++++++++++++++
 drivers/accel/neutron/neutron_job.h                |  43 +++
 drivers/accel/neutron/neutron_mailbox.c            |  47 +++
 drivers/accel/neutron/neutron_mailbox.h            |  42 +++
 drivers/gpu/drm/drm_gem_dma_helper.c               |   6 +-
 include/drm/drm_gem_dma_helper.h                   |   3 +
 include/uapi/drm/neutron_accel.h                   | 130 +++++++
 25 files changed, 1801 insertions(+), 3 deletions(-)
---
base-commit: 6716101ae42949e98ad4b9e71eeba08c055be410
change-id: 20260226-neutron-c435e39d167f

Best regards,
-- 
Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
