Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 789EB70F2CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:32:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B3C14141D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:32:13 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 494E2411B4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 14:52:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=uP94VE8F;
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-30626f4d74aso632463f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 07:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684335165; x=1686927165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=53yQ5WAlsgSKbKfPAJNRS0Vf8Mhg/M9EmPqqwDtVX7Y=;
        b=uP94VE8FRaeKi54S5wqD9ZoflKuQ97i4LxQN2rLaTlvpXkjiHzQZvTiILoc945VCvG
         EkvSyXfYBdYIbxrcK6Er6nXn9Rzhu53yIjnCpySHYihhSORMT2hkYMUNZZ8EBGzUlIsG
         jbbp5H2bZz2x/PTZpzW7GvEBJEClwCzasxSck2jBqjY8l8rWfMD2OQ7+ddDlM87K0vZZ
         AmBzb9YNhiP2MlNHEYbVnXbx0ZuTHT0qr+VdBkKYOCk6Z5SyxuvSH10wt7KxFYR9dB0X
         kyeu8l0gqKeO/If723w61vT9W8TFQvgaohDAscMVAslU/H4PFjpigrFC+5ffLqZI2xm5
         465g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684335165; x=1686927165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=53yQ5WAlsgSKbKfPAJNRS0Vf8Mhg/M9EmPqqwDtVX7Y=;
        b=eUM0xJjbpck4M6Jt1Pq5aFVWDDAqzW7LmgxWB8oK+Z8hrhF2k5M6BxCK/CFW7haM/I
         JbZ0ZQuWJQ8Yj7xHezyRRsz1BQyka1Z/RNDE3709nrwTvSy6HA/RVFa2xvyOgPw31L5t
         cmx1rA4PgZHR7FUTNEmE+vPqKfu9gjGjG9e5pAvGAshtUflruLEdN8kdwaydTdjfbdot
         qZa1hzJq5clW1dMDNixJIZFQzG0IK7ZufIB3WPDyDcrY/3NnMV5qy0tZffiFVpTgH5RS
         dAJe9G9kIuLSJ2NhQqtaCQXfq/2y/xLXwAoklVB8ajNjWHSFg/lVejb2TVeVGhtvLVSm
         YiqQ==
X-Gm-Message-State: AC+VfDz1ETkGqZHND1FXRKAqGtBsU/tcPsfQ/GTrZ8RdtA37vdcIR+Fn
	2NTQeLjWAIBVbiPdIwNkprUn3Q==
X-Google-Smtp-Source: ACHHUZ7m6fs008rRX4GnYew3Bs5IbiZ+LTVWrGeG8VJEU+HTH+tD3errRQp3lrkI3GLvMjQRVqqLFA==
X-Received: by 2002:a5d:591a:0:b0:309:3df3:8e0f with SMTP id v26-20020a5d591a000000b003093df38e0fmr997547wrd.51.1684335165200;
        Wed, 17 May 2023 07:52:45 -0700 (PDT)
Received: from blaptop.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d678b000000b002f7780eee10sm2979098wru.59.2023.05.17.07.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 07:52:44 -0700 (PDT)
From: Alexandre Bailon <abailon@baylibre.com>
To: airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Date: Wed, 17 May 2023 16:52:31 +0200
Message-Id: <20230517145237.295461-2-abailon@baylibre.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517145237.295461-1-abailon@baylibre.com>
References: <20230517145237.295461-1-abailon@baylibre.com>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[baylibre.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.49:from];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[mail-wr1-f49.google.com:rdns,mail-wr1-f49.google.com:helo];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 494E2411B4
X-Spamd-Bar: /
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZWCEL653BZ7YFXYFU2TDXEBOIREDZAPZ
X-Message-ID-Hash: ZWCEL653BZ7YFXYFU2TDXEBOIREDZAPZ
X-Mailman-Approved-At: Wed, 24 May 2023 09:31:59 +0000
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com, Alexandre Bailon <abailon@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/7] drm: Add support of AI Processor Unit (APU)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZWCEL653BZ7YFXYFU2TDXEBOIREDZAPZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Many AI Processur Unit (APU) have a similar architecture.
This driver intends helping supporting them.
This relies on DRM and provides some abstractions useful
for AI accelerators.
Currently, this provides the infrastructure to alloc an APU
device and register one or many cores.
The driver will takes care to register itself to DRM.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Reviewed-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/gpu/drm/Kconfig            |   2 +
 drivers/gpu/drm/Makefile           |   1 +
 drivers/gpu/drm/apu/Kconfig        |  12 ++
 drivers/gpu/drm/apu/Makefile       |   5 +
 drivers/gpu/drm/apu/apu_drv.c      | 272 +++++++++++++++++++++++++++++
 drivers/gpu/drm/apu/apu_internal.h |  68 ++++++++
 include/uapi/drm/apu_drm.h         |  28 +++
 7 files changed, 388 insertions(+)
 create mode 100644 drivers/gpu/drm/apu/Kconfig
 create mode 100644 drivers/gpu/drm/apu/Makefile
 create mode 100644 drivers/gpu/drm/apu/apu_drv.c
 create mode 100644 drivers/gpu/drm/apu/apu_internal.h
 create mode 100644 include/uapi/drm/apu_drm.h

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index ba3fb04bb691..32ffa66a8b54 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -371,6 +371,8 @@ source "drivers/gpu/drm/solomon/Kconfig"
 
 source "drivers/gpu/drm/sprd/Kconfig"
 
+source "drivers/gpu/drm/apu/Kconfig"
+
 config DRM_HYPERV
 	tristate "DRM Support for Hyper-V synthetic video device"
 	depends on DRM && PCI && MMU && HYPERV
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index a33257d2bc7f..7cd8c0f3936a 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -191,6 +191,7 @@ obj-$(CONFIG_DRM_MCDE) += mcde/
 obj-$(CONFIG_DRM_TIDSS) += tidss/
 obj-y			+= xlnx/
 obj-y			+= gud/
+obj-$(CONFIG_DRM_APU) += apu/
 obj-$(CONFIG_DRM_HYPERV) += hyperv/
 obj-y			+= solomon/
 obj-$(CONFIG_DRM_SPRD) += sprd/
diff --git a/drivers/gpu/drm/apu/Kconfig b/drivers/gpu/drm/apu/Kconfig
new file mode 100644
index 000000000000..226dcf072115
--- /dev/null
+++ b/drivers/gpu/drm/apu/Kconfig
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+
+config DRM_APU
+	tristate "APU (AI Processor Unit)"
+	select DRM_GEM_DMA_HELPER
+	select DRM_KMS_HELPER
+	help
+	  This provides a DRM driver that provides some facilities to
+	  communicate with an AI Processor Unit (APU).
+	  The driver intends to provide a common infrastructure that may be
+	  used to support many different APU.
diff --git a/drivers/gpu/drm/apu/Makefile b/drivers/gpu/drm/apu/Makefile
new file mode 100644
index 000000000000..ad85b88a8b52
--- /dev/null
+++ b/drivers/gpu/drm/apu/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
+drm_apu-y += apu_drv.o
+
+obj-$(CONFIG_DRM_APU) += drm_apu.o
diff --git a/drivers/gpu/drm/apu/apu_drv.c b/drivers/gpu/drm/apu/apu_drv.c
new file mode 100644
index 000000000000..b420b13a9ffd
--- /dev/null
+++ b/drivers/gpu/drm/apu/apu_drv.c
@@ -0,0 +1,272 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright 2020 BayLibre SAS
+
+#include <linux/list.h>
+#include <linux/module.h>
+
+#include <drm/apu_drm.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_gem_dma_helper.h>
+#include <drm/drm_probe_helper.h>
+
+#include "apu_internal.h"
+
+static LIST_HEAD(apu_devices);
+
+static int ioctl_apu_state(struct drm_device *dev, void *data,
+			   struct drm_file *file_priv);
+
+static const struct drm_ioctl_desc ioctls[] = {
+	DRM_IOCTL_DEF_DRV(APU_STATE, ioctl_apu_state,
+			  DRM_RENDER_ALLOW),
+};
+
+DEFINE_DRM_GEM_DMA_FOPS(apu_drm_ops);
+
+static struct drm_driver apu_drm_driver = {
+	.driver_features = DRIVER_GEM | DRIVER_SYNCOBJ,
+	.name = "drm_apu",
+	.desc = "APU DRM driver",
+	.date = "20210319",
+	.major = 1,
+	.minor = 0,
+	.patchlevel = 0,
+	.ioctls = ioctls,
+	.num_ioctls = ARRAY_SIZE(ioctls),
+	.fops = &apu_drm_ops,
+	DRM_GEM_DMA_DRIVER_OPS_WITH_DUMB_CREATE(drm_gem_dma_dumb_create),
+};
+
+/**
+ * apu_dev_alloc() - Allocate a new APU device
+ *
+ * @dev: Pointer to the device instance.
+
+ * This allocate an APU device.
+ * The APU describe a hardware accelerator that may have one or more
+ * core (or unit).
+ *
+ * Returns: A pointer or NULL in case of failure.
+ */
+struct apu_drm *apu_dev_alloc(struct device *dev)
+{
+	struct drm_device *drm;
+	struct apu_drm *apu;
+
+	apu = devm_drm_dev_alloc(dev, &apu_drm_driver, typeof(*apu), base);
+	if (IS_ERR(apu))
+		return NULL;
+	INIT_LIST_HEAD(&apu->cores);
+
+	apu->dev = dev;
+	ida_init(&apu->ida);
+	drm = &apu->base;
+	drm->dev_private = apu;
+
+	dev_set_drvdata(dev, drm);
+
+	return apu;
+}
+EXPORT_SYMBOL_GPL(apu_dev_alloc);
+
+/**
+ * apu_dev_register() - Register the APU to DRM
+ *
+ * @apu: Pointer to APU device
+ *
+ * Register an APU device to DRM.
+ * On success, this creates everything required to use the APU.
+ * Note that at this step, the cores (or units) have not been
+ * registered so we can't yet perform any operations.
+ *
+ * Returns: Zero on success, non-zero value on failure.
+ */
+int apu_dev_register(struct apu_drm *apu)
+{
+	struct drm_device *drm = &apu->base;
+	int ret;
+
+	ret = drm_dev_register(drm, 0);
+	if (ret)
+		return ret;
+
+	list_add(&apu->node, &apu_devices);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(apu_dev_register);
+
+/**
+ * apu_dev_unregister() - Unregister the APU
+ *
+ * @apu: Pointer to APU device
+ *
+ * This undo what has been done by apu_dev_register();
+ */
+void apu_dev_unregister(struct apu_drm *apu)
+{
+	struct drm_device *drm = &apu->base;
+
+	list_del(&apu->node);
+	drm_dev_unregister(drm);
+}
+EXPORT_SYMBOL_GPL(apu_dev_unregister);
+
+/**
+ * apu_core_alloc() - Allocate an APU core
+ *
+ * @apu: Pointer to APU device
+ * @ops: The operation callbacks to use for this core
+ * @priv:
+ *
+ * Allocate an APU core. This represents a computing unit that could
+ * execute a job. The APU may be composed of different units that doesn't
+ * accept same kind of jobs so we may to use differents callbacks for each
+ * core.
+ *
+ * Returns: A pointer or NULL in case of failure.
+ */
+struct apu_core *apu_core_alloc(struct apu_drm *apu, struct apu_core_ops *ops,
+				void *priv)
+{
+	struct apu_core *core;
+
+	if (!ops || !ops->is_ready)
+		return NULL;
+
+	core = devm_kzalloc(apu->dev, sizeof(*core), GFP_KERNEL);
+	if (!core)
+		return NULL;
+
+	core->device_id = ida_alloc(&apu->ida, GFP_KERNEL);
+	if (core->device_id < 0)
+		return NULL;
+
+	core->apu = apu;
+	core->priv = priv;
+	core->ops = ops;
+
+	list_add(&core->node, &apu->cores);
+
+	return core;
+}
+EXPORT_SYMBOL_GPL(apu_core_alloc);
+
+/**
+ * apu_core_free() - Free an APU core allocated using apu_core_alloc()
+ *
+ * @core: The APU core to release
+ */
+void apu_core_free(struct apu_core *core)
+{
+	ida_free(&core->apu->ida, core->device_id);
+	list_del(&core->node);
+}
+EXPORT_SYMBOL_GPL(apu_core_free);
+
+/**
+ * apu_core_register() - Register a core to APU device
+ *
+ * @dev: Pointer to APU device
+ * @core: Pointer to APU core to register
+ * @priv: Private data attached to this core
+ *
+ * Register an APU core and make it available for computing.
+ * On success, userspace can start using this core.
+ *
+ * Returns: Zero on success, non-zero value on failure.
+ */
+int apu_core_register(struct device *dev, struct apu_core *core, void *priv)
+{
+	int ret;
+
+	core->dev_priv = priv;
+	core->dev = dev;
+
+	if (core->ops->register_core) {
+		ret = core->ops->register_core(core);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(apu_core_register);
+
+/**
+ * apu_core_remove() - Remove a core from the APU device
+ *
+ * @core: Pointer to APU core to remove
+ */
+void apu_core_remove(struct apu_core *core)
+{
+	core->dev_priv = NULL;
+}
+EXPORT_SYMBOL_GPL(apu_core_remove);
+
+/**
+ * apu_find_core_by_priv() - Find a core allocated by apu_core_alloc()
+ *
+ * @priv: The pointer used to allocate the core
+ *
+ * All core allocated using apu_core_alloc() is registered to a list.
+ * This goes through the list to find the core using the @priv field.
+ *
+ * Returns: A pointer or NULL if no core has been found.
+ */
+struct apu_core *apu_find_core_by_priv(void *priv)
+{
+	struct apu_drm *apu;
+	struct apu_core *core;
+
+	list_for_each_entry(apu, &apu_devices, node) {
+		list_for_each_entry(core, &apu->cores, node) {
+			if (core->priv == priv)
+				return core;
+		}
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(apu_find_core_by_priv);
+
+static struct apu_core *get_apu_core(struct apu_drm *apu, int device_id)
+{
+	struct apu_core *core;
+
+	list_for_each_entry(core, &apu->cores, node) {
+		if (core->device_id == device_id)
+			return core;
+	}
+
+	return NULL;
+}
+
+static void apu_core_update_state(struct apu_core *core)
+{
+	if (!core->ops->is_ready(core))
+		core->flags &= ~APU_ONLINE;
+}
+
+static int ioctl_apu_state(struct drm_device *dev, void *data,
+			   struct drm_file *file_priv)
+{
+	struct apu_drm *apu = dev->dev_private;
+	struct drm_apu_state *args = data;
+	struct apu_core *core;
+
+	args->flags = 0;
+
+	core = get_apu_core(apu, args->device);
+	if (!core)
+		return -ENODEV;
+
+	apu_core_update_state(core);
+	args->flags |= core->flags;
+
+	return 0;
+}
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Alexandre Bailon");
diff --git a/drivers/gpu/drm/apu/apu_internal.h b/drivers/gpu/drm/apu/apu_internal.h
new file mode 100644
index 000000000000..58d93a16c68f
--- /dev/null
+++ b/drivers/gpu/drm/apu/apu_internal.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __APU_INTERNAL_H__
+#define __APU_INTERNAL_H__
+
+#include <drm/drm_drv.h>
+
+struct apu_core {
+	int device_id;
+	struct device *dev;
+	struct apu_core_ops *ops;
+	struct apu_drm *apu;
+
+	struct list_head node;
+	void *priv;
+	void *dev_priv;
+
+	u32 flags;
+};
+
+struct apu_drm {
+	struct drm_device base;
+	struct device *dev;
+
+	struct list_head cores;
+	struct list_head node;
+
+	struct ida ida;
+};
+
+/**
+ * @apu_core_ops: Provides platform specific callbacks
+ */
+struct apu_core_ops {
+	/**
+	 * @register_core:
+	 *
+	 * Optional. Platform specific APU core registration.
+	 */
+	int (*register_core)(struct apu_core *core);
+
+	/**
+	 * @is_ready:
+	 *
+	 * Implements platform specific code to test if APU is ready to receive
+	 * commands.
+	 * Basically, an APU core may be running but not be ready to handle
+	 * commands. This allows checking if APU is ready and start executing
+	 * requests.
+	 *
+	 * Returns:
+	 *
+	 * One if the APU is ready or zero.
+	 */
+	int (*is_ready)(struct apu_core *core);
+};
+
+struct apu_drm *apu_dev_alloc(struct device *dev);
+int apu_dev_register(struct apu_drm *apu);
+void apu_dev_unregister(struct apu_drm *apu);
+
+struct apu_core *apu_core_alloc(struct apu_drm *apu, struct apu_core_ops *ops,
+				void *priv);
+void apu_core_free(struct apu_core *core);
+int apu_core_register(struct device *dev, struct apu_core *core, void *priv);
+void apu_core_remove(struct apu_core *core);
+struct apu_core *apu_find_core_by_priv(void *priv);
+
+#endif /* __APU_INTERNAL_H__ */
diff --git a/include/uapi/drm/apu_drm.h b/include/uapi/drm/apu_drm.h
new file mode 100644
index 000000000000..d50c63d1b813
--- /dev/null
+++ b/include/uapi/drm/apu_drm.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note*/
+
+#ifndef __UAPI_APU_DRM_H__
+#define __UAPI_APU_DRM_H__
+
+#include "drm.h"
+
+#if defined(__cplusplus)
+extern "C" {
+#endif
+
+#define APU_ONLINE		BIT(0)
+
+struct drm_apu_state {
+	__u32 device;
+	__u32 flags;
+};
+
+#define DRM_APU_STATE			0x00
+#define DRM_APU_NUM_IOCTLS		0x01
+
+#define DRM_IOCTL_APU_STATE		DRM_IOWR(DRM_COMMAND_BASE + DRM_APU_STATE, struct drm_apu_state)
+
+#if defined(__cplusplus)
+}
+#endif
+
+#endif /* __UAPI_APU_DRM_H__ */
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
