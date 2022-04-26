Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 499FC512AED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 07:30:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B5DC47FB9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 05:30:46 +0000 (UTC)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
	by lists.linaro.org (Postfix) with ESMTPS id 017D9402D7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 06:10:10 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1650953409;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iitKyA2BmOSsGyxho5Xaj7J6p8svsGj9CM08D3cPrDw=;
	b=pDf8Xdp8mG06STMNFr+MgjyhVeGDYweUdtAvMyJFG3qtkphI/3QCYOf1yYHU1uufXNfMd4
	sSd1ieV0d25+A3tU2uxUri7/FSjZtTHwACxigDRKsQ7pyc3DMnMMwA7FW7XcJaPnGQnKfg
	wJ0K3PRLYO7tnwMkNpYgxPs+9AR6RTI=
From: Cai Huoqing <cai.huoqing@linux.dev>
To: cai.huoqing@linux.dev
Date: Tue, 26 Apr 2022 14:08:01 +0800
Message-Id: <20220426060808.78225-5-cai.huoqing@linux.dev>
In-Reply-To: <20220426060808.78225-1-cai.huoqing@linux.dev>
References: <20220426060808.78225-1-cai.huoqing@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: linux.dev
X-MailFrom: cai.huoqing@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WDEE5IS2MXAPTT4TNCVLFTAPYJKY3O5S
X-Message-ID-Hash: WDEE5IS2MXAPTT4TNCVLFTAPYJKY3O5S
X-Mailman-Approved-At: Thu, 28 Apr 2022 05:30:24 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WDEE5IS2MXAPTT4TNCVLFTAPYJKY3O5S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The NVIDIA Deep Learning Accelerator (NVDLA) is an open source IP
which is integrated into NVIDIA Jetson AGX Xavier,
so add UAPI of this driver.

Signed-off-by: Cai Huoqing <cai.huoqing@linux.dev>
---
v1->v2:
*Rename nvdla_drm.[ch] to nvdla_drv.[ch] and rename nvdla_ioctl.h to nvdla_drm.h,
 move it to uapi.
 comments link: https://lore.kernel.org/lkml/20bac605-97e6-e5cd-c4e4-83a8121645d8@amd.com/

 include/uapi/drm/nvdla_drm.h | 99 ++++++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 include/uapi/drm/nvdla_drm.h

diff --git a/include/uapi/drm/nvdla_drm.h b/include/uapi/drm/nvdla_drm.h
new file mode 100644
index 000000000000..984635285525
--- /dev/null
+++ b/include/uapi/drm/nvdla_drm.h
@@ -0,0 +1,99 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
+/*
+ * Copyright (C) 2017-2018 NVIDIA CORPORATION.
+ * Copyright (C) 2022 Cai Huoqing
+ */
+
+#ifndef __LINUX_NVDLA_IOCTL_H
+#define __LINUX_NVDLA_IOCTL_H
+
+#include <linux/ioctl.h>
+#include <linux/types.h>
+
+#if !defined(__KERNEL__)
+#define __user
+#endif
+
+/**
+ * struct nvdla_mem_handle structure for memory handles
+ *
+ * @handle		handle to DMA buffer allocated in userspace
+ * @reserved		Reserved for padding
+ * @offset		offset in bytes from start address of buffer
+ *
+ */
+struct nvdla_mem_handle {
+	__u32 handle;
+	__u32 reserved;
+	__u64 offset;
+};
+
+/**
+ * struct nvdla_ioctl_submit_task structure for single task information
+ *
+ * @num_addresses		total number of entries in address_list
+ * @reserved			Reserved for padding
+ * @address_list		pointer to array of struct nvdla_mem_handle
+ *
+ */
+struct nvdla_ioctl_submit_task {
+#define NVDLA_MAX_BUFFERS_PER_TASK (6144)
+	__u32 num_addresses;
+#define NVDLA_NO_TIMEOUT    (0xffffffff)
+	__u32 timeout;
+	__u64 address_list;
+};
+
+/**
+ * struct nvdla_submit_args structure for task submit
+ *
+ * @tasks		pointer to array of struct nvdla_ioctl_submit_task
+ * @num_tasks		number of entries in tasks
+ * @flags		flags for task submit, no flags defined yet
+ * @version		version of task structure
+ *
+ */
+struct nvdla_submit_args {
+	__u64 tasks;
+	__u16 num_tasks;
+#define NVDLA_MAX_TASKS_PER_SUBMIT	24
+#define NVDLA_SUBMIT_FLAGS_ATOMIC	(1 << 0)
+	__u16 flags;
+	__u32 version;
+};
+
+/**
+ * struct nvdla_gem_create_args for allocating DMA buffer through GEM
+ *
+ * @handle		handle updated by kernel after allocation
+ * @flags		implementation specific flags
+ * @size		size of buffer to allocate
+ */
+struct nvdla_gem_create_args {
+	__u32 handle;
+	__u32 flags;
+	__u64 size;
+};
+
+/**
+ * struct nvdla_gem_map_offset_args for mapping DMA buffer
+ *
+ * @handle		handle of the buffer
+ * @reserved		reserved for padding
+ * @offset		offset updated by kernel after mapping
+ */
+struct nvdla_gem_map_offset_args {
+	__u32 handle;
+	__u32 reserved;
+	__u64 offset;
+};
+
+#define DRM_NVDLA_SUBMIT		0x00
+#define DRM_NVDLA_GEM_CREATE	0x01
+#define DRM_NVDLA_GEM_MMAP		0x02
+
+#define DRM_IOCTL_NVDLA_SUBMIT DRM_IOWR(DRM_COMMAND_BASE + DRM_NVDLA_SUBMIT, struct nvdla_submit_args)
+#define DRM_IOCTL_NVDLA_GEM_CREATE DRM_IOWR(DRM_COMMAND_BASE + DRM_NVDLA_GEM_CREATE, struct nvdla_gem_create_args)
+#define DRM_IOCTL_NVDLA_GEM_MMAP DRM_IOWR(DRM_COMMAND_BASE + DRM_NVDLA_GEM_MMAP, struct nvdla_gem_map_offset_args)
+
+#endif
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
