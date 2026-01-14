Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE3EOOIL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:18:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F41C4118FC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:18:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92C823F823
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:18:41 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 3C0AD3E90F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 10:15:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of tomeu.vizoso@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=tomeu.vizoso@gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64b921d9e67so14714697a12.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 02:15:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385732; x=1768990532;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4p0sdNT2Xct0sFlRUulsSXGJ37uEAZBd7wIarn1FlMs=;
        b=gSGD92CRziLJtLow4ZDEcLnT6m+ftoleB824eE6OEsWY2wZGatDBAJi5FpdgW1GpHD
         PZxXNV94fS2tRaNzlWB1NCWQwxU611pHyWxlcwh82ebtQLqW/efYiGe4iiVAf7bhnGb1
         N4MBn4c17euJ78ltXpIYA+RO9+LcONyhN1+ZSVdRbipzlaIl/zB6gRNCISQ+YqJorDwL
         gRhEIqXb2JR+YST7eviL7+akiIGwWfiEb+3zm2WJeHB7AfIAYe1F87nKqf3L+4ofFR2l
         6hB9uKGwQgSVcE6lzu0YgNGC+THIYARoiNYEtkq7HaZkxQXgQt04BqGxV183tRWU8uKm
         FUZg==
X-Forwarded-Encrypted: i=1; AJvYcCUR6mL2ESUgbL8D16Sjis0uwkSLtuzXBolMymgYhGyLQiOfj3D3Mb+r0P7QLcVcqMcyQz/LgPRz36p94pWT@lists.linaro.org
X-Gm-Message-State: AOJu0YwyUmYY0K8uIFaJqB1+7bV6jC+uihyrHhTEeig2GcZYhhqUu6bV
	tTtqiMyAYHt/hMQH6WvSgEvafpygR6IwhxFJFMtomrZi/trzM4oY1Q73X3DTYQ==
X-Gm-Gg: AY/fxX6gdIBWdIqjGwRCWHzFxfiZgAuh6h87tFrNZJJ6XPaTemOZKu6w2AseEaBwt9A
	X8VTiV01UDn05GFYweGASE8M/VDrHJlx+xNfvlXx6lXEh9d4LR48q4IRxLwdYl7DX2ZEVc/aLAh
	k1dGw42wcaOwrCQA41x05dd3rYfHgj/YG0z4Qbv0d6pbYiZPHPKnxgMb/zlhzIK+5ul6hDEsIAk
	MJuAz2MzUIOBWqQCYYd3NbXKcVNy0IrhgGLfjSijqsNqJghZlbxZgC5/1LazUbEcQZ8CbRbmgV9
	o9JAbVSMtEvWW9SBZ+S8+i2Rt26d3+9pRPSE1d3GwFZSwHIjoU71TFowHryDcEo9z5jHnTbP4Z0
	wCG8A9WdRz1N6UwEk+t5X52n10+sDYTeR37jhnOpycS8zNsXeZZRYzlrH0DREc8R329TntaX1Tx
	xiBhJxcoh4MSfVaEbZp8r5he/jUxij59PoVXddsOepGHGdRA==
X-Received: by 2002:a17:907:971c:b0:b87:1cfb:33c3 with SMTP id a640c23a62f3a-b87612bca40mr179008366b.56.1768380440308;
        Wed, 14 Jan 2026 00:47:20 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5d4sm22379136a12.32.2026.01.14.00.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 00:47:19 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 14 Jan 2026 09:46:50 +0100
MIME-Version: 1.0
Message-Id: <20260114-thames-v2-3-e94a6636e050@tomeuvizoso.net>
References: <20260114-thames-v2-0-e94a6636e050@tomeuvizoso.net>
In-Reply-To: <20260114-thames-v2-0-e94a6636e050@tomeuvizoso.net>
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>,
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Robert Nelson <robertcnelson@gmail.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.14.2
X-Spamd-Bar: ---
X-MailFrom: tomeu.vizoso@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KXHSP43J5WB7K77GEDPXHNKI7RKMYEIT
X-Message-ID-Hash: KXHSP43J5WB7K77GEDPXHNKI7RKMYEIT
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:01 +0000
CC: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/5] accel/thames: Add IOCTLs for BO creation and mapping
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KXHSP43J5WB7K77GEDPXHNKI7RKMYEIT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2215];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[tomeuvizoso.net];
	FREEMAIL_TO(0.00)[ti.com,kernel.org,lwn.net,linaro.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tomeuvizoso.net:mid,tomeuvizoso.net:email,linaro.org:email,ti.com:url,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7F41C4118FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Uses the SHMEM DRM helpers, mapping on creation to the device as all
created buffers are expected to be accessed by the DSPs. We map to all
DSPs because we cannot know upfront what DSP cores will run a given job.

Buffers are mapped for the device by the DSPs themselves, as each
contains a MMU.

Buffers belong to a context, which is used by the DSP to switch to the
page table that mapped the buffers for the user of the job to execute.

v2:
- Add thames_accel.h UAPI header (Robert Nelson).

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 drivers/accel/thames/Makefile       |   1 +
 drivers/accel/thames/thames_drv.c   |   6 +-
 drivers/accel/thames/thames_gem.c   | 353 ++++++++++++++++++++++++++++++++++++
 drivers/accel/thames/thames_gem.h   |  41 +++++
 drivers/accel/thames/thames_rpmsg.c |  69 +++++++
 include/uapi/drm/thames_accel.h     | 104 +++++++++++
 6 files changed, 573 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/thames/Makefile b/drivers/accel/thames/Makefile
index 7ccd8204f0f5ea800f30e84b319f355be948109d..0051e319f2e4966de72bc342d5b6e40b2890c006 100644
--- a/drivers/accel/thames/Makefile
+++ b/drivers/accel/thames/Makefile
@@ -6,4 +6,5 @@ thames-y := \
 	thames_core.o \
 	thames_device.o \
 	thames_drv.o \
+	thames_gem.o \
 	thames_rpmsg.o
diff --git a/drivers/accel/thames/thames_drv.c b/drivers/accel/thames/thames_drv.c
index 473498dd6f0135f346b0986a2a17fc4411417f52..d9ea2cab80e89cd13b1422a17635a15b7f16fa4f 100644
--- a/drivers/accel/thames/thames_drv.c
+++ b/drivers/accel/thames/thames_drv.c
@@ -5,6 +5,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_ioctl.h>
+#include <uapi/drm/thames_accel.h>
 #include <linux/err.h>
 #include <linux/platform_device.h>
 #include <linux/remoteproc.h>
@@ -12,6 +13,7 @@
 
 #include "thames_drv.h"
 #include "thames_core.h"
+#include "thames_gem.h"
 #include "thames_ipc.h"
 
 static struct platform_device *drm_dev;
@@ -53,7 +55,8 @@ static void thames_postclose(struct drm_device *dev, struct drm_file *file)
 
 static const struct drm_ioctl_desc thames_drm_driver_ioctls[] = {
 #define THAMES_IOCTL(n, func) DRM_IOCTL_DEF_DRV(THAMES_##n, thames_ioctl_##func, 0)
-
+	THAMES_IOCTL(BO_CREATE, bo_create),
+	THAMES_IOCTL(BO_MMAP_OFFSET, bo_mmap_offset),
 };
 
 DEFINE_DRM_ACCEL_FOPS(thames_accel_driver_fops);
@@ -62,6 +65,7 @@ static const struct drm_driver thames_drm_driver = {
 	.driver_features = DRIVER_COMPUTE_ACCEL | DRIVER_GEM,
 	.open = thames_open,
 	.postclose = thames_postclose,
+	.gem_create_object = thames_gem_create_object,
 	.ioctls = thames_drm_driver_ioctls,
 	.num_ioctls = ARRAY_SIZE(thames_drm_driver_ioctls),
 	.fops = &thames_accel_driver_fops,
diff --git a/drivers/accel/thames/thames_gem.c b/drivers/accel/thames/thames_gem.c
new file mode 100644
index 0000000000000000000000000000000000000000..5a01ddaeb2448117d400a79e53d2c6123ecb5390
--- /dev/null
+++ b/drivers/accel/thames/thames_gem.c
@@ -0,0 +1,353 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright 2026 Texas Instruments Incorporated - https://www.ti.com/ */
+
+#include "drm/drm_gem_shmem_helper.h"
+#include <drm/drm_device.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_print.h>
+#include <drm/drm_utils.h>
+#include <drm/thames_accel.h>
+#include <linux/dma-mapping.h>
+#include <linux/idr.h>
+
+#include "thames_gem.h"
+#include "thames_device.h"
+#include "thames_drv.h"
+#include "thames_rpmsg.h"
+
+/*
+ * DSP MMU permission flags for buffer object mappings.
+ * These control read/write/execute permissions in the DSP's address space.
+ */
+#define THAMES_BO_PERM_READ (1 << 0)
+#define THAMES_BO_PERM_WRITE (1 << 1)
+#define THAMES_BO_PERM_EXEC (1 << 2)
+#define THAMES_BO_PERM_RWX (THAMES_BO_PERM_READ | THAMES_BO_PERM_WRITE | THAMES_BO_PERM_EXEC)
+
+static u64 thames_alloc_vaddr(struct thames_device *tdev, struct thames_gem_object *bo, size_t size)
+{
+	int ret;
+
+	size = ALIGN(size, SZ_1M);
+
+	mutex_lock(&tdev->mm_lock);
+	ret = drm_mm_insert_node(&tdev->mm, &bo->mm, size);
+	mutex_unlock(&tdev->mm_lock);
+
+	if (ret)
+		return 0;
+
+	return bo->mm.start;
+}
+
+static void thames_free_vaddr(struct thames_device *tdev, struct thames_gem_object *bo)
+{
+	if (!drm_mm_node_allocated(&bo->mm))
+		return;
+
+	mutex_lock(&tdev->mm_lock);
+	drm_mm_remove_node(&bo->mm);
+	mutex_unlock(&tdev->mm_lock);
+}
+
+static int thames_context_destroy_on_core(struct thames_file_priv *priv, struct thames_core *core)
+{
+	struct thames_device *tdev = priv->tdev;
+	int ret;
+
+	ret = thames_rpmsg_send_destroy_context(core, priv->context_id);
+	if (ret)
+		dev_warn(tdev->ddev.dev, "Failed to destroy context on core %d: %d", core->index,
+			 ret);
+
+	return ret;
+}
+
+static int thames_context_create_on_core(struct thames_file_priv *priv, struct thames_core *core)
+{
+	struct thames_device *tdev = priv->tdev;
+	int ret;
+
+	ret = thames_rpmsg_send_create_context(core, priv->context_id);
+	if (ret)
+		dev_warn(tdev->ddev.dev, "Failed to create context on core %d: %d", core->index,
+			 ret);
+
+	return ret;
+}
+
+int thames_context_create(struct thames_file_priv *priv)
+{
+	struct thames_device *tdev = priv->tdev;
+	int i, ret;
+
+	ret = ida_alloc_min(&tdev->ctx_ida, 1, GFP_KERNEL);
+	if (ret < 0)
+		return ret;
+
+	priv->context_id = ret;
+	priv->context_valid = false;
+
+	if (!tdev->num_cores) {
+		dev_err(tdev->ddev.dev, "No cores available\n");
+		ret = -ENODEV;
+		goto err_free_id;
+	}
+
+	for (i = 0; i < tdev->num_cores; i++) {
+		ret = thames_context_create_on_core(priv, &tdev->cores[i]);
+		if (ret) {
+			dev_err(tdev->ddev.dev, "Failed to create context on core %d: %d\n", i,
+				ret);
+			goto err_destroy_contexts;
+		}
+	}
+
+	priv->context_valid = true;
+	return 0;
+
+err_destroy_contexts:
+	for (i = i - 1; i >= 0; i--)
+		thames_context_destroy_on_core(priv, &tdev->cores[i]);
+err_free_id:
+	ida_free(&tdev->ctx_ida, priv->context_id);
+	return ret;
+}
+
+void thames_context_destroy(struct thames_file_priv *priv)
+{
+	struct thames_device *tdev = priv->tdev;
+	int i;
+
+	if (!priv->context_valid)
+		return;
+
+	for (i = 0; i < tdev->num_cores; i++)
+		thames_context_destroy_on_core(priv, &tdev->cores[i]);
+
+	ida_free(&tdev->ctx_ida, priv->context_id);
+	priv->context_valid = false;
+}
+
+static int thames_bo_map_to_core(struct thames_gem_object *bo, struct thames_file_priv *file_priv,
+				 struct thames_core *core, u64 vaddr, u64 paddr, u64 size,
+				 u32 flags)
+{
+	struct thames_device *tdev = file_priv->tdev;
+	int ret;
+
+	ret = thames_rpmsg_send_map_bo(core, file_priv->context_id, bo->id, vaddr, paddr, size);
+	if (ret)
+		dev_warn(tdev->ddev.dev, "Failed to map buffer on core %d: %d", core->index, ret);
+
+	return ret;
+}
+
+static int thames_bo_map_to_device(struct thames_gem_object *bo, struct thames_file_priv *file_priv)
+{
+	struct thames_device *tdev = file_priv->tdev;
+	struct sg_table *sgt;
+	dma_addr_t dma_addr;
+	int i, ret;
+
+	if (bo->iova)
+		return 0;
+
+	if (!file_priv->context_valid)
+		return -EINVAL;
+
+	if (!tdev->num_cores)
+		return -ENODEV;
+
+	sgt = drm_gem_shmem_get_pages_sgt(&bo->base);
+	if (IS_ERR(sgt))
+		return PTR_ERR(sgt);
+
+	dma_addr = sg_dma_address(sgt->sgl);
+	if (!dma_addr) {
+		ret = -EINVAL;
+		goto err_put_pages;
+	}
+
+	bo->iova = thames_alloc_vaddr(tdev, bo, bo->base.base.size);
+	if (!bo->iova) {
+		ret = -ENOMEM;
+		goto err_put_pages;
+	}
+
+	bo->context_id = file_priv->context_id;
+
+	for (i = 0; i < tdev->num_cores; i++) {
+		ret = thames_bo_map_to_core(bo, file_priv, &tdev->cores[i], bo->iova, dma_addr,
+					    bo->base.base.size, THAMES_BO_PERM_RWX);
+		if (ret) {
+			while (--i >= 0)
+				thames_rpmsg_send_unmap_bo(&tdev->cores[i], bo->context_id, bo->id);
+			goto err_free_vaddr;
+		}
+	}
+
+	return 0;
+
+err_free_vaddr:
+	thames_free_vaddr(tdev, bo);
+	bo->iova = 0;
+err_put_pages:
+	dma_resv_lock(bo->base.base.resv, NULL);
+	drm_gem_shmem_put_pages_locked(&bo->base);
+	dma_resv_unlock(bo->base.base.resv);
+	return ret;
+}
+
+static void thames_bo_unmap_from_device(struct thames_gem_object *bo, struct thames_device *tdev)
+{
+	int i, ret, failed_unmaps = 0;
+
+	if (!bo->iova)
+		return;
+
+	for (i = 0; i < tdev->num_cores; i++) {
+		ret = thames_rpmsg_send_unmap_bo(&tdev->cores[i], bo->context_id, bo->id);
+		if (ret) {
+			dev_err(tdev->ddev.dev, "Failed to unmap BO %u from core %d: %d\n", bo->id,
+				i, ret);
+			failed_unmaps++;
+		}
+	}
+
+	if (failed_unmaps)
+		drm_WARN(&tdev->ddev, failed_unmaps > 0,
+			 "BO %u: %d core(s) failed unmap, potential DSP-side leak\n", bo->id,
+			 failed_unmaps);
+
+	thames_free_vaddr(tdev, bo);
+	bo->iova = 0;
+
+	dma_resv_lock(bo->base.base.resv, NULL);
+	drm_gem_shmem_put_pages_locked(&bo->base);
+	dma_resv_unlock(bo->base.base.resv);
+}
+
+static void thames_gem_bo_free(struct drm_gem_object *obj)
+{
+	struct thames_gem_object *bo = to_thames_bo(obj);
+	struct thames_device *tdev = to_thames_device(obj->dev);
+
+	drm_WARN_ON(obj->dev, refcount_read(&bo->base.pages_use_count) > 1);
+
+	if (bo->iova)
+		thames_bo_unmap_from_device(bo, tdev);
+
+	ida_free(&tdev->bo_ida, bo->id);
+
+	drm_gem_free_mmap_offset(&bo->base.base);
+	drm_gem_shmem_free(&bo->base);
+}
+
+static const struct drm_gem_object_funcs thames_gem_funcs = {
+	.free = thames_gem_bo_free,
+	.print_info = drm_gem_shmem_object_print_info,
+	.pin = drm_gem_shmem_object_pin,
+	.unpin = drm_gem_shmem_object_unpin,
+	.get_sg_table = drm_gem_shmem_object_get_sg_table,
+	.vmap = drm_gem_shmem_object_vmap,
+	.vunmap = drm_gem_shmem_object_vunmap,
+	.mmap = drm_gem_shmem_object_mmap,
+	.vm_ops = &drm_gem_shmem_vm_ops,
+};
+
+struct drm_gem_object *thames_gem_create_object(struct drm_device *dev, size_t size)
+{
+	struct thames_device *tdev = to_thames_device(dev);
+	struct thames_gem_object *obj;
+	int bo_id;
+
+	obj = kzalloc(sizeof(*obj), GFP_KERNEL);
+	if (!obj)
+		return ERR_PTR(-ENOMEM);
+
+	obj->base.base.funcs = &thames_gem_funcs;
+
+	bo_id = ida_alloc_min(&tdev->bo_ida, 1, GFP_KERNEL);
+	if (bo_id < 0) {
+		kfree(obj);
+		return ERR_PTR(bo_id);
+	}
+	obj->id = bo_id;
+
+	return &obj->base.base;
+}
+
+int thames_ioctl_bo_create(struct drm_device *ddev, void *data, struct drm_file *file)
+{
+	struct thames_file_priv *file_priv = file->driver_priv;
+	struct drm_thames_bo_create *args = data;
+	struct drm_gem_shmem_object *mem;
+	struct thames_gem_object *bo;
+	int cookie, ret;
+
+	if (!drm_dev_enter(ddev, &cookie))
+		return -ENODEV;
+
+	if (args->handle || args->iova) {
+		ret = -EINVAL;
+		goto err_exit;
+	}
+
+	if (!args->size) {
+		ret = -EINVAL;
+		goto err_exit;
+	}
+
+	mem = drm_gem_shmem_create(ddev, args->size);
+	if (IS_ERR(mem))
+		return PTR_ERR(mem);
+
+	bo = to_thames_bo(&mem->base);
+
+	ret = drm_gem_handle_create(file, &mem->base, &args->handle);
+	drm_gem_object_put(&mem->base);
+	if (ret) {
+		dev_err(ddev->dev, "Failed to create gem handle: %d", ret);
+		goto err_free;
+	}
+
+	ret = thames_bo_map_to_device(bo, file_priv);
+	if (ret) {
+		dev_err(ddev->dev, "Failed to map buffer to DSP on creation: %d", ret);
+		goto err_free;
+	}
+
+	args->size = bo->base.base.size;
+	args->iova = bo->iova;
+
+	drm_dev_exit(cookie);
+
+	return 0;
+
+err_free:
+	drm_gem_shmem_object_free(&mem->base);
+
+err_exit:
+	drm_dev_exit(cookie);
+
+	return ret;
+}
+
+int thames_ioctl_bo_mmap_offset(struct drm_device *ddev, void *data, struct drm_file *file)
+{
+	struct drm_thames_bo_mmap_offset *args = data;
+	struct drm_gem_object *obj;
+
+	if (args->pad)
+		return -EINVAL;
+
+	obj = drm_gem_object_lookup(file, args->handle);
+	if (!obj)
+		return -ENOENT;
+
+	args->offset = drm_vma_node_offset_addr(&obj->vma_node);
+	drm_gem_object_put(obj);
+
+	return 0;
+}
diff --git a/drivers/accel/thames/thames_gem.h b/drivers/accel/thames/thames_gem.h
new file mode 100644
index 0000000000000000000000000000000000000000..785843c40a89a9e84ab634aad77e9ec46111693e
--- /dev/null
+++ b/drivers/accel/thames/thames_gem.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2026 Texas Instruments Incorporated - https://www.ti.com/ */
+
+#ifndef __THAMES_GEM_H__
+#define __THAMES_GEM_H__
+
+#include <drm/drm_gem_shmem_helper.h>
+#include <drm/drm_mm.h>
+
+struct thames_device;
+
+struct thames_gem_object {
+	struct drm_gem_shmem_object base;
+
+	struct thames_file_priv *driver_priv;
+
+	struct drm_mm_node mm;
+
+	u32 id;
+	u32 context_id;
+	u64 iova;
+	size_t size;
+	size_t offset;
+};
+
+struct drm_gem_object *thames_gem_create_object(struct drm_device *dev, size_t size);
+
+int thames_ioctl_bo_create(struct drm_device *ddev, void *data, struct drm_file *file);
+
+int thames_ioctl_bo_mmap_offset(struct drm_device *ddev, void *data, struct drm_file *file);
+
+int thames_context_create(struct thames_file_priv *priv);
+
+void thames_context_destroy(struct thames_file_priv *priv);
+
+static inline struct thames_gem_object *to_thames_bo(struct drm_gem_object *obj)
+{
+	return container_of(to_drm_gem_shmem_obj(obj), struct thames_gem_object, base);
+}
+
+#endif
diff --git a/drivers/accel/thames/thames_rpmsg.c b/drivers/accel/thames/thames_rpmsg.c
index ebc34f49353e5e7959734da8e8a935573c130e79..a25465295a177877c5ca2b3c93f52d8288863797 100644
--- a/drivers/accel/thames/thames_rpmsg.c
+++ b/drivers/accel/thames/thames_rpmsg.c
@@ -63,6 +63,14 @@ static int thames_rpmsg_callback(struct rpmsg_device *rpdev, void *data, int len
 		break;
 	}
 
+	case THAMES_MSG_CONTEXT_OP_RESPONSE:
+		ida_free(&core->tdev->ipc_seq_ida, hdr->seq);
+		break;
+
+	case THAMES_MSG_BO_OP_RESPONSE:
+		ida_free(&core->tdev->ipc_seq_ida, hdr->seq);
+		break;
+
 	default:
 		dev_warn(&rpdev->dev, "Unknown message type: %u\n", hdr->type);
 		break;
@@ -122,6 +130,67 @@ int thames_rpmsg_send_ping(struct thames_core *core, u32 ping_data, u32 *sequenc
 	return thames_rpmsg_send_raw(core, &ping_msg, sizeof(ping_msg));
 }
 
+int thames_rpmsg_send_create_context(struct thames_core *core, u32 context_id)
+{
+	struct thames_msg_context_op msg = {};
+
+	msg.hdr.type = THAMES_MSG_CONTEXT_OP;
+	msg.hdr.seq = ida_alloc(&core->tdev->ipc_seq_ida, GFP_KERNEL);
+	msg.hdr.len = sizeof(msg);
+	msg.op = THAMES_CONTEXT_CREATE;
+	msg.context_id = context_id;
+
+	return thames_rpmsg_send_raw(core, &msg, sizeof(msg));
+}
+
+int thames_rpmsg_send_destroy_context(struct thames_core *core, u32 context_id)
+{
+	struct thames_msg_context_op msg = {};
+
+	msg.hdr.type = THAMES_MSG_CONTEXT_OP;
+	msg.hdr.seq = ida_alloc(&core->tdev->ipc_seq_ida, GFP_KERNEL);
+	msg.hdr.len = sizeof(msg);
+	msg.op = THAMES_CONTEXT_DESTROY;
+	msg.context_id = context_id;
+
+	return thames_rpmsg_send_raw(core, &msg, sizeof(msg));
+}
+
+int thames_rpmsg_send_map_bo(struct thames_core *core, u32 context_id, u32 bo_id, u64 vaddr,
+			     u64 paddr, u64 size)
+{
+	struct thames_msg_bo_op msg = {};
+
+	msg.hdr.type = THAMES_MSG_BO_OP;
+	msg.hdr.seq = ida_alloc(&core->tdev->ipc_seq_ida, GFP_KERNEL);
+	msg.hdr.len = sizeof(msg);
+	msg.op = THAMES_BO_MAP;
+	msg.context_id = context_id;
+	msg.bo_id = bo_id;
+	msg.vaddr = vaddr;
+	msg.paddr = paddr;
+	msg.size = size;
+
+	return thames_rpmsg_send_raw(core, &msg, sizeof(msg));
+}
+
+int thames_rpmsg_send_unmap_bo(struct thames_core *core, u32 context_id, u32 bo_id)
+{
+	struct thames_msg_bo_op msg = {};
+
+	msg.hdr.type = THAMES_MSG_BO_OP;
+	msg.hdr.seq = ida_alloc(&core->tdev->ipc_seq_ida, GFP_KERNEL);
+	msg.hdr.len = sizeof(msg);
+	msg.op = THAMES_BO_UNMAP;
+	msg.context_id = context_id;
+	msg.bo_id = bo_id;
+	msg.vaddr = 0;
+	msg.paddr = 0;
+	msg.size = 0;
+
+	return thames_rpmsg_send_raw(core, &msg, sizeof(msg));
+}
+
 int thames_rpmsg_ping_test(struct thames_core *core)
 {
 	const u32 test_data = THAMES_PING_TEST_PATTERN;
diff --git a/include/uapi/drm/thames_accel.h b/include/uapi/drm/thames_accel.h
new file mode 100644
index 0000000000000000000000000000000000000000..0a5a5e5f6637ab474e9effbb6db29c1dd95e56b5
--- /dev/null
+++ b/include/uapi/drm/thames_accel.h
@@ -0,0 +1,104 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright (C) 2026 Texas Instruments Incorporated - https://www.ti.com/ */
+#ifndef _THAMES_DRM_H_
+#define _THAMES_DRM_H_
+
+#include "drm.h"
+
+#if defined(__cplusplus)
+extern "C" {
+#endif
+
+/**
+ * DOC: IOCTL IDs
+ *
+ * enum drm_thames_ioctl_id - IOCTL IDs
+ *
+ * Place new ioctls at the end, don't re-order, don't replace or remove entries.
+ *
+ * These IDs are not meant to be used directly. Use the DRM_IOCTL_THAMES_xxx
+ * definitions instead.
+ */
+enum drm_thames_ioctl_id {
+	/** @DRM_THAMES_BO_CREATE: Create a buffer object. */
+	DRM_THAMES_BO_CREATE,
+
+	/**
+	 * @DRM_THAMES_BO_MMAP_OFFSET: Get the file offset to pass to
+	 * mmap to map a GEM object.
+	 */
+	DRM_THAMES_BO_MMAP_OFFSET,
+};
+
+/**
+ * DOC: IOCTL arguments
+ */
+
+/**
+ * struct drm_thames_bo_create - Arguments passed to DRM_IOCTL_THAMES_BO_CREATE.
+ */
+struct drm_thames_bo_create {
+	/**
+	 * @size: Requested size for the object
+	 *
+	 * The (page-aligned) allocated size for the object will be returned.
+	 */
+	__u64 size;
+
+	/**
+	 * @iova: Returned IOVA for the object, in the DSPs' address space.
+	 */
+	__u64 iova;
+
+	/**
+	 * @handle: Returned handle for the object.
+	 *
+	 * Object handles are nonzero.
+	 */
+	__u32 handle;
+
+	/** @pad: MBZ. */
+	__u32 pad;
+};
+
+/**
+ * struct drm_thames_bo_mmap_offset - Arguments passed to DRM_IOCTL_THAMES_BO_MMAP_OFFSET.
+ */
+struct drm_thames_bo_mmap_offset {
+	/** @handle: Handle of the object we want an mmap offset for. */
+	__u32 handle;
+
+	/** @pad: MBZ. */
+	__u32 pad;
+
+	/** @offset: The fake offset to use for subsequent mmap calls. */
+	__u64 offset;
+};
+
+/**
+ * DRM_IOCTL_THAMES() - Build a thames IOCTL number
+ * @__access: Access type. Must be R, W or RW.
+ * @__id: One of the DRM_THAMES_xxx id.
+ * @__type: Suffix of the type being passed to the IOCTL.
+ *
+ * Don't use this macro directly, use the DRM_IOCTL_THAMES_xxx
+ * values instead.
+ *
+ * Return: An IOCTL number to be passed to ioctl() from userspace.
+ */
+#define DRM_IOCTL_THAMES(__access, __id, __type) \
+	DRM_IO ## __access(DRM_COMMAND_BASE + DRM_THAMES_ ## __id, \
+			   struct drm_thames_ ## __type)
+
+enum {
+	DRM_IOCTL_THAMES_BO_CREATE =
+		DRM_IOCTL_THAMES(WR, BO_CREATE, bo_create),
+	DRM_IOCTL_THAMES_BO_MMAP_OFFSET =
+		DRM_IOCTL_THAMES(WR, BO_MMAP_OFFSET, bo_mmap_offset),
+};
+
+#if defined(__cplusplus)
+}
+#endif
+
+#endif /* _THAMES_DRM_H_ */

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
