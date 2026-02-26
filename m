Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8D8sHCQV4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:58:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E1D412301
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:58:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29B4E4543F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:11 +0000 (UTC)
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	by lists.linaro.org (Postfix) with ESMTPS id 7D9F93F962
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 13:41:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=nxp.com;
	spf=pass (lists.linaro.org: domain of ruxandra.radulescu@nxp.com designates 92.121.34.21 as permitted sender) smtp.mailfrom=ruxandra.radulescu@nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9980D2014FB;
	Thu, 26 Feb 2026 14:41:04 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8C9952005B7;
	Thu, 26 Feb 2026 14:41:04 +0100 (CET)
Received: from lsv15149.swis.ro-buh01.nxp.com (lsv15149.swis.ro-buh01.nxp.com [10.162.246.145])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D65BA2035B;
	Thu, 26 Feb 2026 14:41:02 +0100 (CET)
From: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
Date: Thu, 26 Feb 2026 15:40:45 +0200
MIME-Version: 1.0
Message-Id: <20260226-neutron-v1-6-46eccb3bb50a@nxp.com>
References: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
In-Reply-To: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
To: Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772113256; l=4796;
 i=ruxandra.radulescu@nxp.com; s=20260204; h=from:subject:message-id;
 bh=Jty6B0ytRRom/v7JJudk9QB5erW8GFmasf1vl2KeMcs=;
 b=knwxwSZo92Y/ebknfNXmi9yLBr7eb8/1HCXPEScLpQ6wM5aaZLAAtYJu/wZLqRyi+1MStjbEc
 grMwI3JbDuyBCUE5VQW/aFoLGvspo9gHCKoeBei1j8yMwK3pmkMliCi
X-Developer-Key: i=ruxandra.radulescu@nxp.com; a=ed25519;
 pk=zoq4b4OYR0c4faAH97xoTxdr6vfR8OvPbS+Cx0XhIBY=
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Bar: ---
X-MailFrom: ruxandra.radulescu@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K74QB6Z3TWJZFSYSRBV2OBYNSK4N6LWW
X-Message-ID-Hash: K74QB6Z3TWJZFSYSRBV2OBYNSK4N6LWW
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>, Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/9] accel/neutron: Add mailbox support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K74QB6Z3TWJZFSYSRBV2OBYNSK4N6LWW/>
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
	NEURAL_HAM(-0.00)[-0.996];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:mid,nxp.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 13E1D412301
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The driver communicates with the Neutron firmware via eight
register-backed mailboxes. A subset of the mailbox registers are
used to pass commands from driver to Neutron, while the rest are
written by Neutron firmware with status/ack info.

Signed-off-by: Jiwei Fu <jiwei.fu@nxp.com>
Signed-off-by: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
---
 drivers/accel/neutron/Makefile          |  3 ++-
 drivers/accel/neutron/neutron_device.c  |  4 +++
 drivers/accel/neutron/neutron_mailbox.c | 47 +++++++++++++++++++++++++++++++++
 drivers/accel/neutron/neutron_mailbox.h | 42 +++++++++++++++++++++++++++++
 4 files changed, 95 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/neutron/Makefile b/drivers/accel/neutron/Makefile
index d4298c7a8535..192ed896a9f9 100644
--- a/drivers/accel/neutron/Makefile
+++ b/drivers/accel/neutron/Makefile
@@ -5,4 +5,5 @@ obj-$(CONFIG_DRM_ACCEL_NXP_NEUTRON) := neutron.o
 neutron-y := \
 	neutron_driver.o \
 	neutron_device.o \
-	neutron_gem.o
+	neutron_gem.o \
+	neutron_mailbox.o
diff --git a/drivers/accel/neutron/neutron_device.c b/drivers/accel/neutron/neutron_device.c
index 61b3c96b4996..e5c09105be99 100644
--- a/drivers/accel/neutron/neutron_device.c
+++ b/drivers/accel/neutron/neutron_device.c
@@ -7,6 +7,7 @@
 #include <linux/iopoll.h>
 
 #include "neutron_device.h"
+#include "neutron_mailbox.h"
 
 void neutron_enable_irq(struct neutron_device *ndev)
 {
@@ -148,6 +149,9 @@ int neutron_boot(struct neutron_device *ndev)
 	if (ret)
 		return ret;
 
+	/* Prepare device to receive jobs */
+	neutron_mbox_reset_state(ndev);
+
 	ndev->flags |= NEUTRON_BOOTED;
 
 	return 0;
diff --git a/drivers/accel/neutron/neutron_mailbox.c b/drivers/accel/neutron/neutron_mailbox.c
new file mode 100644
index 000000000000..327ef2e8081d
--- /dev/null
+++ b/drivers/accel/neutron/neutron_mailbox.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Copyright 2023, 2025-2026 NXP */
+
+#include <linux/iopoll.h>
+
+#include "neutron_device.h"
+#include "neutron_mailbox.h"
+
+#define NEUTRON_MBOX_FW_STATUS(dev)	NEUTRON_REG(dev, MBOX0)
+#define NEUTRON_MBOX_FW_ERRCODE(dev)	NEUTRON_REG(dev, MBOX1)
+#define NEUTRON_MBOX_CMD_ID(dev)	NEUTRON_REG(dev, MBOX3)
+#define NEUTRON_MBOX_CMD_ARG_BASE(dev)	NEUTRON_REG(dev, MBOX4)
+#define NEUTRON_MBOX_CMD_ARG(dev, i)	(NEUTRON_MBOX_CMD_ARG_BASE(dev) + (i) * 4)
+
+int neutron_mbox_send_cmd(struct neutron_device *ndev, struct neutron_mbox_cmd *cmd)
+{
+	u32 status;
+	int i;
+
+	/* Make sure Neutron is ready to receive commands */
+	status = readl_relaxed(NEUTRON_MBOX_FW_STATUS(ndev));
+	if (status != NEUTRON_FW_STATUS_RESET)
+		return -EBUSY;
+
+	for (i = 0; i < NEUTRON_MBOX_MAX_CMD_ARGS; i++)
+		writel_relaxed(cmd->args[i], NEUTRON_MBOX_CMD_ARG(ndev, i));
+	writel(cmd->id, NEUTRON_MBOX_CMD_ID(ndev));
+
+	return 0;
+}
+
+int neutron_mbox_reset_state(struct neutron_device *ndev)
+{
+	u32 status;
+
+	writel_relaxed(NEUTRON_CMD_RESET_STATE, NEUTRON_MBOX_CMD_ID(ndev));
+
+	return readl_poll_timeout(NEUTRON_MBOX_FW_STATUS(ndev), status,
+				  status == NEUTRON_FW_STATUS_RESET,
+				  100, 100 * USEC_PER_MSEC);
+}
+
+void neutron_mbox_read_state(struct neutron_device *ndev, struct neutron_mbox_state *state)
+{
+	state->status = readl_relaxed(NEUTRON_MBOX_FW_STATUS(ndev));
+	state->err_code = readl_relaxed(NEUTRON_MBOX_FW_ERRCODE(ndev));
+}
diff --git a/drivers/accel/neutron/neutron_mailbox.h b/drivers/accel/neutron/neutron_mailbox.h
new file mode 100644
index 000000000000..4fe40a2f6a0c
--- /dev/null
+++ b/drivers/accel/neutron/neutron_mailbox.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* Copyright 2023, 2025-2026 NXP */
+
+#ifndef __NEUTRON_MAILBOX_H__
+#define __NEUTRON_MAILBOX_H__
+
+#include <linux/types.h>
+
+struct neutron_device;
+
+/* Device (firmware) status magic values */
+enum neutron_mbox_fwstat {
+	NEUTRON_FW_STATUS_RESET		= 0,
+	NEUTRON_FW_STATUS_ACK		= 0xA3,
+	NEUTRON_FW_STATUS_DONE		= 0xAD0,
+};
+
+/* Firmware command opcodes */
+enum neutron_mbox_cmdid {
+	NEUTRON_CMD_INFERENCE		= 0x269,
+	NEUTRON_CMD_RESET_STATE		= 0x23637,
+};
+
+#define NEUTRON_MBOX_MAX_CMD_ARGS	4
+
+/* Firmware command */
+struct neutron_mbox_cmd {
+	enum neutron_mbox_cmdid id;
+	u32 args[NEUTRON_MBOX_MAX_CMD_ARGS];
+};
+
+/* Device state */
+struct neutron_mbox_state {
+	enum neutron_mbox_fwstat status;
+	u32 err_code;
+};
+
+int neutron_mbox_send_cmd(struct neutron_device *ndev, struct neutron_mbox_cmd *cmd);
+void neutron_mbox_read_state(struct neutron_device *ndev, struct neutron_mbox_state *state);
+int neutron_mbox_reset_state(struct neutron_device *ndev);
+
+#endif /* __NEUTRON_MAILBOX_H__ */

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
