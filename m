Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2587C70F2CF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A68041416
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:32:34 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 38B04411BB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 14:52:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=mvPAtFy7;
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-3f450815d02so6418145e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 07:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684335166; x=1686927166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6JUprTNR2AYUu5r4ykuSp6iVwLiXEOaF7GCdZkfyl4I=;
        b=mvPAtFy7apBepnb2BTkYGHlvdW8gzOsxkpjwMwkUvaUINN6vA6MJIgQbwok/QGlH8E
         hz+s2kr8iExnopHTUw8gL7llJFGaxST1HFeU3DvVO9ESvMAddRIW+HC3j7N42WTeU5kT
         uZD9jfR/Pe2bewmosqEXRDxYaOYyI6CGXVK8844+SddYPyX67Qpy6g+pAUY4J3rdMsrp
         NE77iiXnU8al++6TcHl6lxTCA1TFe9oGKXnNiQ/eVddXIdFIHf/md3w1N9dCAbRBrjXS
         xWnuZut8s3j43s0yWg5jT4VJgQRpIaO+nsd/OF++k3Rp0erxFbNkeiWQgiXorBrbFPE1
         nEIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684335166; x=1686927166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6JUprTNR2AYUu5r4ykuSp6iVwLiXEOaF7GCdZkfyl4I=;
        b=GKsIJbDhtLJJWrvHNe073KtxGFOMZUl9WLxosBsxtJyiH/77MUDe1Vn5v6Jz8lb6GL
         8RDKP+bQD4RJp8v+1CMwc7u3ngfxPdOoK+rZxeDC0BRprAvxRdSpEV4NrqSDbjXuq/fq
         y7k50ZPsD4ju1XONEQa82sRm5mpE+WfnlqNX2e6uAmuKP1ycgLUDtXApxQpbo7aADkfC
         +RQHZ6NNwy+0TfRg9BEvc5ciIRmN43oOLRuPs4Po+5Q+NMuMcYUZb31FMbcNL41s0CdQ
         TMfWKUpbQtnynACYHEj70afOwWvdKD6VASGbzGg8RVugXsGich48DiwYJ3BJPpWVtiDm
         RXnQ==
X-Gm-Message-State: AC+VfDyuhUSORp+mlzAxDy9kl8+H4Yf649LiQFg5WZMtkbSVNbn1o6GQ
	LNgp4lm4433KIgIfZeKBndwa6A==
X-Google-Smtp-Source: ACHHUZ7uV59fB+OW0baGaDbzIBdg1HfxU+jbrYxN5WEdFry9HrBC7HW5wsz8930CXaIqsQmv/54a7g==
X-Received: by 2002:a1c:7c0f:0:b0:3f4:219f:5b7a with SMTP id x15-20020a1c7c0f000000b003f4219f5b7amr23742232wmc.30.1684335166168;
        Wed, 17 May 2023 07:52:46 -0700 (PDT)
Received: from blaptop.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d678b000000b002f7780eee10sm2979098wru.59.2023.05.17.07.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 07:52:45 -0700 (PDT)
From: Alexandre Bailon <abailon@baylibre.com>
To: airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Date: Wed, 17 May 2023 16:52:32 +0200
Message-Id: <20230517145237.295461-3-abailon@baylibre.com>
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
	RCPT_COUNT_TWELVE(0.00)[24];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 38B04411BB
X-Spamd-Bar: /
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: G3UMVKXDFJ2GP6KT3UFD4YPFM6U2YZFK
X-Message-ID-Hash: G3UMVKXDFJ2GP6KT3UFD4YPFM6U2YZFK
X-Mailman-Approved-At: Wed, 24 May 2023 09:32:00 +0000
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com, Alexandre Bailon <abailon@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/7] drm/apu: Add memory allocator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G3UMVKXDFJ2GP6KT3UFD4YPFM6U2YZFK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This adds a new ioctl to allocate GEM object.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Reviewed-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/gpu/drm/apu/Makefile       |  1 +
 drivers/gpu/drm/apu/apu_drv.c      |  2 ++
 drivers/gpu/drm/apu/apu_gem.c      | 56 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/apu/apu_internal.h | 30 ++++++++++++++++
 include/uapi/drm/apu_drm.h         | 16 ++++++++-
 5 files changed, 104 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/apu/apu_gem.c

diff --git a/drivers/gpu/drm/apu/Makefile b/drivers/gpu/drm/apu/Makefile
index ad85b88a8b52..91894250d4c1 100644
--- a/drivers/gpu/drm/apu/Makefile
+++ b/drivers/gpu/drm/apu/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
 drm_apu-y += apu_drv.o
+drm_apu-y += apu_gem.o
 
 obj-$(CONFIG_DRM_APU) += drm_apu.o
diff --git a/drivers/gpu/drm/apu/apu_drv.c b/drivers/gpu/drm/apu/apu_drv.c
index b420b13a9ffd..323e267b0f53 100644
--- a/drivers/gpu/drm/apu/apu_drv.c
+++ b/drivers/gpu/drm/apu/apu_drv.c
@@ -20,6 +20,8 @@ static int ioctl_apu_state(struct drm_device *dev, void *data,
 static const struct drm_ioctl_desc ioctls[] = {
 	DRM_IOCTL_DEF_DRV(APU_STATE, ioctl_apu_state,
 			  DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(APU_GEM_NEW, ioctl_gem_new,
+			  DRM_RENDER_ALLOW),
 };
 
 DEFINE_DRM_GEM_DMA_FOPS(apu_drm_ops);
diff --git a/drivers/gpu/drm/apu/apu_gem.c b/drivers/gpu/drm/apu/apu_gem.c
new file mode 100644
index 000000000000..0e7b3b27942c
--- /dev/null
+++ b/drivers/gpu/drm/apu/apu_gem.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright 2020 BayLibre SAS
+
+#include <drm/drm_gem_dma_helper.h>
+
+#include <uapi/drm/apu_drm.h>
+
+#include "apu_internal.h"
+
+struct drm_gem_object *apu_gem_create_object(struct drm_device *dev,
+					     size_t size)
+{
+	struct drm_gem_dma_object *dma_obj;
+
+	dma_obj = drm_gem_dma_create(dev, size);
+	if (!dma_obj)
+		return NULL;
+
+	return &dma_obj->base;
+}
+
+int ioctl_gem_new(struct drm_device *dev, void *data,
+		  struct drm_file *file_priv)
+{
+	struct drm_apu_gem_new *args = data;
+	struct drm_gem_dma_object *dma_obj;
+	struct apu_gem_object *apu_obj;
+	struct drm_gem_object *gem_obj;
+	int ret;
+
+	dma_obj = drm_gem_dma_create(dev, args->size);
+	if (IS_ERR(dma_obj))
+		return PTR_ERR(dma_obj);
+
+	gem_obj = &dma_obj->base;
+	apu_obj = to_apu_bo(gem_obj);
+
+	/*
+	 * Save the size of buffer expected by application instead of the
+	 * aligned one.
+	 */
+	apu_obj->size = args->size;
+	apu_obj->offset = 0;
+	mutex_init(&apu_obj->mutex);
+
+	ret = drm_gem_handle_create(file_priv, gem_obj, &args->handle);
+	drm_gem_object_put(gem_obj);
+	if (ret) {
+		drm_gem_dma_object_free(gem_obj);
+		return ret;
+	}
+	args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/apu/apu_internal.h b/drivers/gpu/drm/apu/apu_internal.h
index 58d93a16c68f..203aadc58b72 100644
--- a/drivers/gpu/drm/apu/apu_internal.h
+++ b/drivers/gpu/drm/apu/apu_internal.h
@@ -3,6 +3,14 @@
 #define __APU_INTERNAL_H__
 
 #include <drm/drm_drv.h>
+#include <drm/drm_gem_dma_helper.h>
+
+struct apu_gem_object {
+	struct drm_gem_dma_object base;
+	struct mutex mutex;
+	size_t size;
+	u32 offset;
+};
 
 struct apu_core {
 	int device_id;
@@ -54,6 +62,17 @@ struct apu_core_ops {
 	int (*is_ready)(struct apu_core *core);
 };
 
+static inline struct apu_gem_object *to_apu_bo(struct drm_gem_object *obj)
+{
+	return container_of(to_drm_gem_dma_obj(obj), struct apu_gem_object,
+			    base);
+}
+
+static inline void *apu_drm_priv(struct apu_core *apu_core)
+{
+	return apu_core->dev_priv;
+}
+
 struct apu_drm *apu_dev_alloc(struct device *dev);
 int apu_dev_register(struct apu_drm *apu);
 void apu_dev_unregister(struct apu_drm *apu);
@@ -65,4 +84,15 @@ int apu_core_register(struct device *dev, struct apu_core *core, void *priv);
 void apu_core_remove(struct apu_core *core);
 struct apu_core *apu_find_core_by_priv(void *priv);
 
+struct apu_gem_object *to_apu_bo(struct drm_gem_object *obj);
+struct drm_gem_object *apu_gem_create_object(struct drm_device *dev,
+					     size_t size);
+
+int ioctl_gem_new(struct drm_device *dev, void *data,
+		  struct drm_file *file_priv);
+int ioctl_gem_user_new(struct drm_device *dev, void *data,
+		       struct drm_file *file_priv);
+struct dma_buf *apu_gem_prime_export(struct drm_gem_object *gem,
+				     int flags);
+
 #endif /* __APU_INTERNAL_H__ */
diff --git a/include/uapi/drm/apu_drm.h b/include/uapi/drm/apu_drm.h
index d50c63d1b813..14fc478f45dc 100644
--- a/include/uapi/drm/apu_drm.h
+++ b/include/uapi/drm/apu_drm.h
@@ -9,6 +9,18 @@
 extern "C" {
 #endif
 
+/*
+ * Please note that modifications to all structs defined here are
+ * subject to backwards-compatibility constraints.
+ */
+
+struct drm_apu_gem_new {
+	__u32 size;			/* in */
+	__u32 flags;			/* in */
+	__u32 handle;			/* out */
+	__u64 offset;			/* out */
+};
+
 #define APU_ONLINE		BIT(0)
 
 struct drm_apu_state {
@@ -17,9 +29,11 @@ struct drm_apu_state {
 };
 
 #define DRM_APU_STATE			0x00
-#define DRM_APU_NUM_IOCTLS		0x01
+#define DRM_APU_GEM_NEW			0x01
+#define DRM_APU_NUM_IOCTLS		0x02
 
 #define DRM_IOCTL_APU_STATE		DRM_IOWR(DRM_COMMAND_BASE + DRM_APU_STATE, struct drm_apu_state)
+#define DRM_IOCTL_APU_GEM_NEW		DRM_IOWR(DRM_COMMAND_BASE + DRM_APU_GEM_NEW, struct drm_apu_gem_new)
 
 #if defined(__cplusplus)
 }
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
