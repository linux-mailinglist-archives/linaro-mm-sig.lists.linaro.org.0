Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B24A4EAD04
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:21:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D231A3EC0A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:21:15 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	by lists.linaro.org (Postfix) with ESMTPS id EB6453EEA1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Mar 2022 16:52:36 +0000 (UTC)
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-2dd2c5ef10eso18977837b3.14
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Mar 2022 08:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=UmU6sI76GZbXk6wC8vwHaoIhH+sqK51YaZKa3zn+yg0=;
        b=L6RrUUg6AleHliPPCSb/Og6BCcO+9ZzZi0gcaKY0umFXOat44tvD7z/jU9mqR7Ings
         PgFRGbbdu8fru49qpAi97DKO2y8ZDu+JlEJ8xgJtSTkw+DXs968vNir6XXQ1FxAt957m
         QHncNNeJMj2PtwXp5OQ6PnIsLjsx7Tu4BXeI6WjTsRmH7gK2gEw1PQCXDSLg7TJAP6K4
         ZJ598TwhS889TkJPlJAuT9QjtKlxSaH5rOQdrlSOXCFWyl1uc9DV4hZSPg6YJVBvAkVS
         qJG3a3EgY37YyECjlfQEaz4wC7yuU5plA9DnUCIi9jjebE7Ib+RQ630qh/lf2/+WxxRM
         3efg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=UmU6sI76GZbXk6wC8vwHaoIhH+sqK51YaZKa3zn+yg0=;
        b=Ddz4wbm/XLu45g7UbEiA/gQsjV4yoiQ3vsgi+8qZzBfnSNCQ+6lNeB4j++FklZenPy
         OE25ekJNkScl1fmwklfqXzgM1h8J/S2PXVs3j3EyEr/YtTLIKxyi27e+e8V5tX8AYNPb
         ZLJV5Ag0mBjXRap5azk1yGscVM4KXxzkebxZlZLOwqqKdiPAsJ7tGOuRtLLGppDPJtxG
         voa4rTHs4f+B3qlLNzvEgFoTFQgwVx+WMrWHaSabwFZlgs0DR4SZanCD934nth9eMGZU
         bJ6CEQZd3qu9pc0uD14gvdyWmlwa4odsPPc9jYTszMCLBvXSFVydJImHgP/B2XmSrCBa
         rIcQ==
X-Gm-Message-State: AOAM5306t74J4FC8yDYZSumO0YGC2ORALdWcwlRUotSSfo+RzYgViyWw
	/0dm2fNDMpQVByHRUO3NqFc3OEM9WFE8O7E=
X-Google-Smtp-Source: ABdhPJz4v8Nl1z6VFTztlW3DgRgbu30AKkGbzRNMpCuN3WpXl4uwiSk23B71cFgXYinRlhL8WjIvp+XoXSM3+7g=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a0d:c283:0:b0:2db:c5f9:b519 with SMTP id
 e125-20020a0dc283000000b002dbc5f9b519mr563142ywd.171.1646844756481; Wed, 09
 Mar 2022 08:52:36 -0800 (PST)
Date: Wed,  9 Mar 2022 16:52:12 +0000
In-Reply-To: <20220309165222.2843651-1-tjmercier@google.com>
Message-Id: <20220309165222.2843651-3-tjmercier@google.com>
Mime-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 3VNsoYgkKDcU4uxp2ntp2rzzrwp.nzxwtyl2z-xx-3trwt343.wtyl2z.z2r@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AEQMQ3XBUDE33YGGOIQ223ATI5DR3Q2A
X-Message-ID-Hash: AEQMQ3XBUDE33YGGOIQ223ATI5DR3Q2A
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:20:52 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v3 2/8] cgroup: gpu: Add a cgroup controller for allocator attribution of GPU memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AEQMQ3XBUDE33YGGOIQ223ATI5DR3Q2A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Hridya Valsaraju <hridya@google.com>

The cgroup controller provides accounting for GPU and GPU-related
memory allocations. The memory being accounted can be device memory or
memory allocated from pools dedicated to serve GPU-related tasks.

This patch adds APIs to:
-allow a device to register for memory accounting using the GPU cgroup
controller.
-charge and uncharge allocated memory to a cgroup.

When the cgroup controller is enabled, it would expose information about
the memory allocated by each device(registered for GPU cgroup memory
accounting) for each cgroup.

The API/UAPI can be extended to set per-device/total allocation limits
in the future.

The cgroup controller has been named following the discussion in [1].

[1]: https://lore.kernel.org/amd-gfx/YCJp%2F%2FkMC7YjVMXv@phenom.ffwll.local/

Signed-off-by: Hridya Valsaraju <hridya@google.com>
Signed-off-by: T.J. Mercier <tjmercier@google.com>

---
v3 changes
Use more common dual author commit message format per John Stultz.

v2 changes
Fix incorrect Kconfig help section indentation per Randy Dunlap.
---
 include/linux/cgroup_gpu.h    | 127 ++++++++++++++
 include/linux/cgroup_subsys.h |   4 +
 init/Kconfig                  |   7 +
 kernel/cgroup/Makefile        |   1 +
 kernel/cgroup/gpu.c           | 304 ++++++++++++++++++++++++++++++++++
 5 files changed, 443 insertions(+)
 create mode 100644 include/linux/cgroup_gpu.h
 create mode 100644 kernel/cgroup/gpu.c

diff --git a/include/linux/cgroup_gpu.h b/include/linux/cgroup_gpu.h
new file mode 100644
index 000000000000..c5bc2b882783
--- /dev/null
+++ b/include/linux/cgroup_gpu.h
@@ -0,0 +1,127 @@
+/* SPDX-License-Identifier: MIT
+ * Copyright 2019 Advanced Micro Devices, Inc.
+ * Copyright (C) 2022 Google LLC.
+ */
+#ifndef _CGROUP_GPU_H
+#define _CGROUP_GPU_H
+
+#include <linux/cgroup.h>
+#include <linux/page_counter.h>
+
+#ifdef CONFIG_CGROUP_GPU
+ /* The GPU cgroup controller data structure */
+struct gpucg {
+	struct cgroup_subsys_state css;
+
+	/* list of all resource pools that belong to this cgroup */
+	struct list_head rpools;
+};
+
+struct gpucg_device {
+	/*
+	 * list  of various resource pools in various cgroups that the device is
+	 * part of.
+	 */
+	struct list_head rpools;
+
+	/* list of all devices registered for GPU cgroup accounting */
+	struct list_head dev_node;
+
+	/*
+	 * pointer to string literal to be used as identifier for accounting and
+	 * limit setting
+	 */
+	const char *name;
+};
+
+/**
+ * css_to_gpucg - get the corresponding gpucg ref from a cgroup_subsys_state
+ * @css: the target cgroup_subsys_state
+ *
+ * Returns: gpu cgroup that contains the @css
+ */
+static inline struct gpucg *css_to_gpucg(struct cgroup_subsys_state *css)
+{
+	return css ? container_of(css, struct gpucg, css) : NULL;
+}
+
+/**
+ * gpucg_get - get the gpucg reference that a task belongs to
+ * @task: the target task
+ *
+ * This increases the reference count of the css that the @task belongs to.
+ *
+ * Returns: reference to the gpu cgroup the task belongs to.
+ */
+static inline struct gpucg *gpucg_get(struct task_struct *task)
+{
+	if (!cgroup_subsys_enabled(gpu_cgrp_subsys))
+		return NULL;
+	return css_to_gpucg(task_get_css(task, gpu_cgrp_id));
+}
+
+/**
+ * gpucg_put - put a gpucg reference
+ * @gpucg: the target gpucg
+ *
+ * Put a reference obtained via gpucg_get
+ */
+static inline void gpucg_put(struct gpucg *gpucg)
+{
+	if (gpucg)
+		css_put(&gpucg->css);
+}
+
+/**
+ * gpucg_parent - find the parent of a gpu cgroup
+ * @cg: the target gpucg
+ *
+ * This does not increase the reference count of the parent cgroup
+ *
+ * Returns: parent gpu cgroup of @cg
+ */
+static inline struct gpucg *gpucg_parent(struct gpucg *cg)
+{
+	return css_to_gpucg(cg->css.parent);
+}
+
+int gpucg_try_charge(struct gpucg *gpucg, struct gpucg_device *device, u64 usage);
+void gpucg_uncharge(struct gpucg *gpucg, struct gpucg_device *device, u64 usage);
+void gpucg_register_device(struct gpucg_device *gpucg_dev, const char *name);
+#else /* CONFIG_CGROUP_GPU */
+
+struct gpucg;
+struct gpucg_device;
+
+static inline struct gpucg *css_to_gpucg(struct cgroup_subsys_state *css)
+{
+	return NULL;
+}
+
+static inline struct gpucg *gpucg_get(struct task_struct *task)
+{
+	return NULL;
+}
+
+static inline void gpucg_put(struct gpucg *gpucg) {}
+
+static inline struct gpucg *gpucg_parent(struct gpucg *cg)
+{
+	return NULL;
+}
+
+static inline int gpucg_try_charge(struct gpucg *gpucg,
+				   struct gpucg_device *device,
+				   u64 usage)
+{
+	return 0;
+}
+
+static inline void gpucg_uncharge(struct gpucg *gpucg,
+				  struct gpucg_device *device,
+				  u64 usage) {}
+
+static inline void gpucg_register_device(struct gpucg_device *gpucg_dev,
+					 const char *name) {}
+#endif /* CONFIG_CGROUP_GPU */
+#endif /* _CGROUP_GPU_H */
diff --git a/include/linux/cgroup_subsys.h b/include/linux/cgroup_subsys.h
index 445235487230..46a2a7b93c41 100644
--- a/include/linux/cgroup_subsys.h
+++ b/include/linux/cgroup_subsys.h
@@ -65,6 +65,10 @@ SUBSYS(rdma)
 SUBSYS(misc)
 #endif
 
+#if IS_ENABLED(CONFIG_CGROUP_GPU)
+SUBSYS(gpu)
+#endif
+
 /*
  * The following subsystems are not supported on the default hierarchy.
  */
diff --git a/init/Kconfig b/init/Kconfig
index e9119bf54b1f..43568472930a 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -980,6 +980,13 @@ config BLK_CGROUP
 
 	See Documentation/admin-guide/cgroup-v1/blkio-controller.rst for more information.
 
+config CGROUP_GPU
+	bool "gpu cgroup controller (EXPERIMENTAL)"
+	select PAGE_COUNTER
+	help
+	  Provides accounting and limit setting for memory allocations by the GPU and
+	  GPU-related subsystems.
+
 config CGROUP_WRITEBACK
 	bool
 	depends on MEMCG && BLK_CGROUP
diff --git a/kernel/cgroup/Makefile b/kernel/cgroup/Makefile
index 12f8457ad1f9..be95a5a532fc 100644
--- a/kernel/cgroup/Makefile
+++ b/kernel/cgroup/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_CGROUP_RDMA) += rdma.o
 obj-$(CONFIG_CPUSETS) += cpuset.o
 obj-$(CONFIG_CGROUP_MISC) += misc.o
 obj-$(CONFIG_CGROUP_DEBUG) += debug.o
+obj-$(CONFIG_CGROUP_GPU) += gpu.o
diff --git a/kernel/cgroup/gpu.c b/kernel/cgroup/gpu.c
new file mode 100644
index 000000000000..3e9bfb45c6af
--- /dev/null
+++ b/kernel/cgroup/gpu.c
@@ -0,0 +1,304 @@
+// SPDX-License-Identifier: MIT
+// Copyright 2019 Advanced Micro Devices, Inc.
+// Copyright (C) 2022 Google LLC.
+
+#include <linux/cgroup.h>
+#include <linux/cgroup_gpu.h>
+#include <linux/mm.h>
+#include <linux/page_counter.h>
+#include <linux/seq_file.h>
+#include <linux/slab.h>
+
+static struct gpucg *root_gpucg __read_mostly;
+
+/*
+ * Protects list of resource pools maintained on per cgroup basis
+ * and list of devices registered for memory accounting using the GPU cgroup
+ * controller.
+ */
+static DEFINE_MUTEX(gpucg_mutex);
+static LIST_HEAD(gpucg_devices);
+
+struct gpucg_resource_pool {
+	/* The device whose resource usage is tracked by this resource pool */
+	struct gpucg_device *device;
+
+	/* list of all resource pools for the cgroup */
+	struct list_head cg_node;
+
+	/*
+	 * list maintained by the gpucg_device to keep track of its
+	 * resource pools
+	 */
+	struct list_head dev_node;
+
+	/* tracks memory usage of the resource pool */
+	struct page_counter total;
+};
+
+static void free_cg_rpool_locked(struct gpucg_resource_pool *rpool)
+{
+	lockdep_assert_held(&gpucg_mutex);
+
+	list_del(&rpool->cg_node);
+	list_del(&rpool->dev_node);
+	kfree(rpool);
+}
+
+static void gpucg_css_free(struct cgroup_subsys_state *css)
+{
+	struct gpucg_resource_pool *rpool, *tmp;
+	struct gpucg *gpucg = css_to_gpucg(css);
+
+	// delete all resource pools
+	mutex_lock(&gpucg_mutex);
+	list_for_each_entry_safe(rpool, tmp, &gpucg->rpools, cg_node)
+		free_cg_rpool_locked(rpool);
+	mutex_unlock(&gpucg_mutex);
+
+	kfree(gpucg);
+}
+
+static struct cgroup_subsys_state *
+gpucg_css_alloc(struct cgroup_subsys_state *parent_css)
+{
+	struct gpucg *gpucg, *parent;
+
+	gpucg = kzalloc(sizeof(struct gpucg), GFP_KERNEL);
+	if (!gpucg)
+		return ERR_PTR(-ENOMEM);
+
+	parent = css_to_gpucg(parent_css);
+	if (!parent)
+		root_gpucg = gpucg;
+
+	INIT_LIST_HEAD(&gpucg->rpools);
+
+	return &gpucg->css;
+}
+
+static struct gpucg_resource_pool *find_cg_rpool_locked(
+	struct gpucg *cg,
+	struct gpucg_device *device)
+{
+	struct gpucg_resource_pool *pool;
+
+	lockdep_assert_held(&gpucg_mutex);
+
+	list_for_each_entry(pool, &cg->rpools, cg_node)
+		if (pool->device == device)
+			return pool;
+
+	return NULL;
+}
+
+static struct gpucg_resource_pool *init_cg_rpool(struct gpucg *cg,
+						 struct gpucg_device *device)
+{
+	struct gpucg_resource_pool *rpool = kzalloc(sizeof(*rpool),
+							GFP_KERNEL);
+	if (!rpool)
+		return ERR_PTR(-ENOMEM);
+
+	rpool->device = device;
+
+	page_counter_init(&rpool->total, NULL);
+	INIT_LIST_HEAD(&rpool->cg_node);
+	INIT_LIST_HEAD(&rpool->dev_node);
+	list_add_tail(&rpool->cg_node, &cg->rpools);
+	list_add_tail(&rpool->dev_node, &device->rpools);
+
+	return rpool;
+}
+
+/**
+ * get_cg_rpool_locked - find the resource pool for the specified device and
+ * specified cgroup. If the resource pool does not exist for the cg, it is
+ * created in a hierarchical manner in the cgroup and its ancestor cgroups who
+ * do not already have a resource pool entry for the device.
+ *
+ * @cg: The cgroup to find the resource pool for.
+ * @device: The device associated with the returned resource pool.
+ *
+ * Return: return resource pool entry corresponding to the specified device in
+ * the specified cgroup (hierarchically creating them if not existing already).
+ *
+ */
+static struct gpucg_resource_pool *
+get_cg_rpool_locked(struct gpucg *cg, struct gpucg_device *device)
+{
+	struct gpucg *parent_cg, *p, *stop_cg;
+	struct gpucg_resource_pool *rpool, *tmp_rpool;
+	struct gpucg_resource_pool *parent_rpool = NULL, *leaf_rpool = NULL;
+
+	rpool = find_cg_rpool_locked(cg, device);
+	if (rpool)
+		return rpool;
+
+	stop_cg = cg;
+	do {
+		rpool = init_cg_rpool(stop_cg, device);
+		if (IS_ERR(rpool))
+			goto err;
+
+		if (!leaf_rpool)
+			leaf_rpool = rpool;
+
+		stop_cg = gpucg_parent(stop_cg);
+		if (!stop_cg)
+			break;
+
+		rpool = find_cg_rpool_locked(stop_cg, device);
+	} while (!rpool);
+
+	/*
+	 * Re-initialize page counters of all rpools created in this invocation
+	 * to enable hierarchical charging.
+	 * stop_cg is the first ancestor cg who already had a resource pool for
+	 * the device. It can also be NULL if no ancestors had a pre-existing
+	 * resource pool for the device before this invocation.
+	 */
+	rpool = leaf_rpool;
+	for (p = cg; p != stop_cg; p = parent_cg) {
+		parent_cg = gpucg_parent(p);
+		if (!parent_cg)
+			break;
+		parent_rpool = find_cg_rpool_locked(parent_cg, device);
+		page_counter_init(&rpool->total, &parent_rpool->total);
+
+		rpool = parent_rpool;
+	}
+
+	return leaf_rpool;
+err:
+	for (p = cg; p != stop_cg; p = gpucg_parent(p)) {
+		tmp_rpool = find_cg_rpool_locked(p, device);
+		free_cg_rpool_locked(tmp_rpool);
+	}
+	return rpool;
+}
+
+/**
+ * gpucg_try_charge - charge memory to the specified gpucg and gpucg_device.
+ * Caller must hold a reference to @gpucg obtained through gpucg_get(). The size
+ * of the memory is rounded up to be a multiple of the page size.
+ *
+ * @gpucg: The gpu cgroup to charge the memory to.
+ * @device: The device to charge the memory to.
+ * @usage: size of memory to charge in bytes.
+ *
+ * Return: returns 0 if the charging is successful and otherwise returns an
+ * error code.
+ */
+int gpucg_try_charge(struct gpucg *gpucg, struct gpucg_device *device, u64 usage)
+{
+	struct page_counter *counter;
+	u64 nr_pages;
+	struct gpucg_resource_pool *rp;
+	int ret = 0;
+
+	mutex_lock(&gpucg_mutex);
+	rp = get_cg_rpool_locked(gpucg, device);
+	/*
+	 * gpucg_mutex can be unlocked here, rp will stay valid until gpucg is
+	 * freed and the caller is holding a reference to the gpucg.
+	 */
+	mutex_unlock(&gpucg_mutex);
+
+	if (IS_ERR(rp))
+		return PTR_ERR(rp);
+
+	nr_pages = PAGE_ALIGN(usage) >> PAGE_SHIFT;
+	if (page_counter_try_charge(&rp->total, nr_pages, &counter))
+		css_get_many(&gpucg->css, nr_pages);
+	else
+		ret = -ENOMEM;
+
+	return ret;
+}
+
+/**
+ * gpucg_uncharge - uncharge memory from the specified gpucg and gpucg_device.
+ * The caller must hold a reference to @gpucg obtained through gpucg_get().
+ *
+ * @gpucg: The gpu cgroup to uncharge the memory from.
+ * @device: The device to uncharge the memory from.
+ * @usage: size of memory to uncharge in bytes.
+ */
+void gpucg_uncharge(struct gpucg *gpucg, struct gpucg_device *device, u64 usage)
+{
+	u64 nr_pages;
+	struct gpucg_resource_pool *rp;
+
+	mutex_lock(&gpucg_mutex);
+	rp = find_cg_rpool_locked(gpucg, device);
+	/*
+	 * gpucg_mutex can be unlocked here, rp will stay valid until gpucg is
+	 * freed and there are active refs on gpucg.
+	 */
+	mutex_unlock(&gpucg_mutex);
+
+	if (unlikely(!rp)) {
+		pr_err("Resource pool not found, incorrect charge/uncharge ordering?\n");
+		return;
+	}
+
+	nr_pages = PAGE_ALIGN(usage) >> PAGE_SHIFT;
+	page_counter_uncharge(&rp->total, nr_pages);
+	css_put_many(&gpucg->css, nr_pages);
+}
+
+/**
+ * gpucg_register_device - Registers a device for memory accounting using the
+ * GPU cgroup controller.
+ *
+ * @device: The device to register for memory accounting.
+ * @name: Pointer to a string literal to denote the name of the device.
+ *
+ * Both @device andd @name must remain valid.
+ */
+void gpucg_register_device(struct gpucg_device *device, const char *name)
+{
+	if (!device)
+		return;
+
+	INIT_LIST_HEAD(&device->dev_node);
+	INIT_LIST_HEAD(&device->rpools);
+
+	mutex_lock(&gpucg_mutex);
+	list_add_tail(&device->dev_node, &gpucg_devices);
+	mutex_unlock(&gpucg_mutex);
+
+	device->name = name;
+}
+
+static int gpucg_resource_show(struct seq_file *sf, void *v)
+{
+	struct gpucg_resource_pool *rpool;
+	struct gpucg *cg = css_to_gpucg(seq_css(sf));
+
+	mutex_lock(&gpucg_mutex);
+	list_for_each_entry(rpool, &cg->rpools, cg_node) {
+		seq_printf(sf, "%s %lu\n", rpool->device->name,
+			   page_counter_read(&rpool->total) * PAGE_SIZE);
+	}
+	mutex_unlock(&gpucg_mutex);
+
+	return 0;
+}
+
+struct cftype files[] = {
+	{
+		.name = "memory.current",
+		.seq_show = gpucg_resource_show,
+	},
+	{ }     /* terminate */
+};
+
+struct cgroup_subsys gpu_cgrp_subsys = {
+	.css_alloc      = gpucg_css_alloc,
+	.css_free       = gpucg_css_free,
+	.early_init     = false,
+	.legacy_cftypes = files,
+	.dfl_cftypes    = files,
+};
-- 
2.35.1.616.g0bdcbb4464-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
