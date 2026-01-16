Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B41D3855E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 20:05:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4663D401BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 19:05:54 +0000 (UTC)
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	by lists.linaro.org (Postfix) with ESMTPS id D7BF53F7FD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 19:05:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=fRAPJDEs;
	spf=pass (lists.linaro.org: domain of 3CoxqaQkKDR8OEH9M7D9MBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--tjmercier.bounces.google.com designates 209.85.210.202 as permitted sender) smtp.mailfrom=3CoxqaQkKDR8OEH9M7D9MBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-81e6ec1da28so1941277b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 11:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1768590347; x=1769195147; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/+J+USbCUwLKnGpjF9FWwwq2oHpJVzFZ1Dj2VUFFUcI=;
        b=fRAPJDEsPivr6h5uYa8OlUYSSke68DaOJwGfKW4XEMUTn6WKSYTBroF96aiQLT+J6U
         dphRdyZvWZmRubJHBeZs7MeMfo8Tntin4BOrO7W2jQL4w/qB/Pf4re8UrELuyP+fTOnb
         YWw50aMFboJDvFKLnUqIlzPV5qTyAMSJOVszo8SlOtNUrSJ9Kd2gEDuCLI4dTOXlNsEX
         b700ahcP3ad+93B9VNNlXwrSvkDicf6sBd4GjYFtfBY7IfmglIlb0EU/JZCVag68m/ts
         7j/tMVlIyLAOAylk1Z8T5o0d6uUyT9dAsW2hnN3sgoHve8ZHIw4mVpthlgsUgn81wVhi
         hUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768590347; x=1769195147;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/+J+USbCUwLKnGpjF9FWwwq2oHpJVzFZ1Dj2VUFFUcI=;
        b=pGGk3NRWCPNwVCeFSupaZ+FJqjIh8h/Dw62CgXww1bR/tVOHY2ebhEmKOYYLDu9gE5
         Oq0D2CytMIEFt5SrrRRDkuj8c4Nfc/VxRvTgT0qFY3p4/05i1o/ZWAbHUxu1MfyrtOJG
         9ko+EFkAGrrwGZw2n8u5RxzRyOBGlRrsCuQTln8npXNWOQhdJ3jLpID5OlTztnuxMnn4
         LGu6YNghQGsRu52yWp5Vj99H5ZHobobwOXpNfflIcnepDtZpJRcTHfCzcQu8RJeT/SeA
         uk2snDfn72zjjmZQSh0Cm2oAgzwobMTtuKDlChbDDfInTKCpJ7eZ3HbqfIP2IFFHXRgQ
         nrSA==
X-Forwarded-Encrypted: i=1; AJvYcCXiRE6qnk9k3L0EzptKMjJzW193dyWXTb96kNenqks65eOi3p1yE078bvS7fVn74VGY+dYiwCtY1f6ru0HW@lists.linaro.org
X-Gm-Message-State: AOJu0YzLO3GPcd2JUroyhuPn6+oOqnH3kXQSh+MRmI0vuqZEfjg1/enB
	jwkCT4Q2l75pITbC/Dz3zZAINO/SDMMoV0vSEwIUkBf+KuMmDP9i+8xyumqy+W5wXGX/8Ut3kfH
	JwwmZvXWwLcoNwMEHSw==
X-Received: from pfbln22.prod.google.com ([2002:a05:6a00:3cd6:b0:7a5:20e6:4185])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:6c94:b0:81b:bfd5:1bce with SMTP id d2e1a72fcca58-81fa184db58mr3153618b3a.56.1768590346800;
 Fri, 16 Jan 2026 11:05:46 -0800 (PST)
Date: Fri, 16 Jan 2026 11:05:12 -0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260116190517.3268458-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>
X-Rspamd-Queue-Id: D7BF53F7FD
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3CoxqaQkKDR8OEH9M7D9MBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.202:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3CoxqaQkKDR8OEH9M7D9MBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--tjmercier.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZBNGNCRAD6ZSRTUDBBKGRN73VK7T6CUH
X-Message-ID-Hash: ZBNGNCRAD6ZSRTUDBBKGRN73VK7T6CUH
X-MailFrom: 3CoxqaQkKDR8OEH9M7D9MBJJBG9.7JHGDI5MJ-HH-NDBGDNON.GDI5MJ.JMB@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Remove DMA-BUF sysfs stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBNGNCRAD6ZSRTUDBBKGRN73VK7T6CUH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Commit bdb8d06dfefd ("dmabuf: Add the capability to expose DMA-BUF stats
in sysfs") added dmabuf statistics to sysfs in 2021 under
CONFIG_DMABUF_SYSFS_STATS. After being used in production, performance
problems were discovered leading to its deprecation in 2022 in commit
e0a9f1fe206a ("dma-buf: deprecate DMABUF_SYSFS_STATS"). Some of the
problems with this interface were discussed in my LPC 2025 talk. [1][2]

Android was probably the last user of the interface, which has since
been migrated to use the dmabuf BPF iterator [3] to obtain the same
information more cheaply. As promised in that series, now that the
longterm stable 6.18 kernel has been released let's remove the sysfs
dmabuf statistics from the kernel.

[1] https://www.youtube.com/watch?v=D83qygudq9c
[2] https://lpc.events/event/19/contributions/2118/
[3] https://lore.kernel.org/all/20250522230429.941193-1-tjmercier@google.com/

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 .../ABI/testing/sysfs-kernel-dmabuf-buffers   |  24 ---
 Documentation/driver-api/dma-buf.rst          |   5 -
 drivers/dma-buf/Kconfig                       |  15 --
 drivers/dma-buf/Makefile                      |   1 -
 drivers/dma-buf/dma-buf-sysfs-stats.c         | 202 ------------------
 drivers/dma-buf/dma-buf-sysfs-stats.h         |  35 ---
 drivers/dma-buf/dma-buf.c                     |  18 --
 include/linux/dma-buf.h                       |  12 --
 8 files changed, 312 deletions(-)
 delete mode 100644 Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers
 delete mode 100644 drivers/dma-buf/dma-buf-sysfs-stats.c
 delete mode 100644 drivers/dma-buf/dma-buf-sysfs-stats.h

diff --git a/Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers b/Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers
deleted file mode 100644
index 5d3bc997dc64..000000000000
--- a/Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers
+++ /dev/null
@@ -1,24 +0,0 @@
-What:		/sys/kernel/dmabuf/buffers
-Date:		May 2021
-KernelVersion:	v5.13
-Contact:	Hridya Valsaraju <hridya@google.com>
-Description:	The /sys/kernel/dmabuf/buffers directory contains a
-		snapshot of the internal state of every DMA-BUF.
-		/sys/kernel/dmabuf/buffers/<inode_number> will contain the
-		statistics for the DMA-BUF with the unique inode number
-		<inode_number>
-Users:		kernel memory tuning/debugging tools
-
-What:		/sys/kernel/dmabuf/buffers/<inode_number>/exporter_name
-Date:		May 2021
-KernelVersion:	v5.13
-Contact:	Hridya Valsaraju <hridya@google.com>
-Description:	This file is read-only and contains the name of the exporter of
-		the DMA-BUF.
-
-What:		/sys/kernel/dmabuf/buffers/<inode_number>/size
-Date:		May 2021
-KernelVersion:	v5.13
-Contact:	Hridya Valsaraju <hridya@google.com>
-Description:	This file is read-only and specifies the size of the DMA-BUF in
-		bytes.
diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/driver-api/dma-buf.rst
index 29abf1eebf9f..2f36c21d9948 100644
--- a/Documentation/driver-api/dma-buf.rst
+++ b/Documentation/driver-api/dma-buf.rst
@@ -125,11 +125,6 @@ Implicit Fence Poll Support
 .. kernel-doc:: drivers/dma-buf/dma-buf.c
    :doc: implicit fence polling
 
-DMA-BUF statistics
-~~~~~~~~~~~~~~~~~~
-.. kernel-doc:: drivers/dma-buf/dma-buf-sysfs-stats.c
-   :doc: overview
-
 DMA Buffer ioctls
 ~~~~~~~~~~~~~~~~~
 
diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
index fdd823e446cc..012d22e941d6 100644
--- a/drivers/dma-buf/Kconfig
+++ b/drivers/dma-buf/Kconfig
@@ -75,21 +75,6 @@ menuconfig DMABUF_HEAPS
 	  allows userspace to allocate dma-bufs that can be shared
 	  between drivers.
 
-menuconfig DMABUF_SYSFS_STATS
-	bool "DMA-BUF sysfs statistics (DEPRECATED)"
-	depends on DMA_SHARED_BUFFER
-	help
-	   Choose this option to enable DMA-BUF sysfs statistics
-	   in location /sys/kernel/dmabuf/buffers.
-
-	   /sys/kernel/dmabuf/buffers/<inode_number> will contain
-	   statistics for the DMA-BUF with the unique inode number
-	   <inode_number>.
-
-	   This option is deprecated and should sooner or later be removed.
-	   Android is the only user of this and it turned out that this resulted
-	   in quite some performance problems.
-
 source "drivers/dma-buf/heaps/Kconfig"
 
 endmenu
diff --git a/drivers/dma-buf/Makefile b/drivers/dma-buf/Makefile
index 2008fb7481b3..7a85565d906b 100644
--- a/drivers/dma-buf/Makefile
+++ b/drivers/dma-buf/Makefile
@@ -6,7 +6,6 @@ obj-$(CONFIG_DMABUF_HEAPS)	+= heaps/
 obj-$(CONFIG_SYNC_FILE)		+= sync_file.o
 obj-$(CONFIG_SW_SYNC)		+= sw_sync.o sync_debug.o
 obj-$(CONFIG_UDMABUF)		+= udmabuf.o
-obj-$(CONFIG_DMABUF_SYSFS_STATS) += dma-buf-sysfs-stats.o
 
 dmabuf_selftests-y := \
 	selftest.o \
diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.c b/drivers/dma-buf/dma-buf-sysfs-stats.c
deleted file mode 100644
index b5b62e40ccc1..000000000000
--- a/drivers/dma-buf/dma-buf-sysfs-stats.c
+++ /dev/null
@@ -1,202 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * DMA-BUF sysfs statistics.
- *
- * Copyright (C) 2021 Google LLC.
- */
-
-#include <linux/dma-buf.h>
-#include <linux/dma-resv.h>
-#include <linux/kobject.h>
-#include <linux/printk.h>
-#include <linux/slab.h>
-#include <linux/sysfs.h>
-
-#include "dma-buf-sysfs-stats.h"
-
-#define to_dma_buf_entry_from_kobj(x) container_of(x, struct dma_buf_sysfs_entry, kobj)
-
-/**
- * DOC: overview
- *
- * ``/sys/kernel/debug/dma_buf/bufinfo`` provides an overview of every DMA-BUF
- * in the system. However, since debugfs is not safe to be mounted in
- * production, procfs and sysfs can be used to gather DMA-BUF statistics on
- * production systems.
- *
- * The ``/proc/<pid>/fdinfo/<fd>`` files in procfs can be used to gather
- * information about DMA-BUF fds. Detailed documentation about the interface
- * is present in Documentation/filesystems/proc.rst.
- *
- * Unfortunately, the existing procfs interfaces can only provide information
- * about the DMA-BUFs for which processes hold fds or have the buffers mmapped
- * into their address space. This necessitated the creation of the DMA-BUF sysfs
- * statistics interface to provide per-buffer information on production systems.
- *
- * The interface at ``/sys/kernel/dmabuf/buffers`` exposes information about
- * every DMA-BUF when ``CONFIG_DMABUF_SYSFS_STATS`` is enabled.
- *
- * The following stats are exposed by the interface:
- *
- * * ``/sys/kernel/dmabuf/buffers/<inode_number>/exporter_name``
- * * ``/sys/kernel/dmabuf/buffers/<inode_number>/size``
- *
- * The information in the interface can also be used to derive per-exporter
- * statistics. The data from the interface can be gathered on error conditions
- * or other important events to provide a snapshot of DMA-BUF usage.
- * It can also be collected periodically by telemetry to monitor various metrics.
- *
- * Detailed documentation about the interface is present in
- * Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers.
- */
-
-struct dma_buf_stats_attribute {
-	struct attribute attr;
-	ssize_t (*show)(struct dma_buf *dmabuf,
-			struct dma_buf_stats_attribute *attr, char *buf);
-};
-#define to_dma_buf_stats_attr(x) container_of(x, struct dma_buf_stats_attribute, attr)
-
-static ssize_t dma_buf_stats_attribute_show(struct kobject *kobj,
-					    struct attribute *attr,
-					    char *buf)
-{
-	struct dma_buf_stats_attribute *attribute;
-	struct dma_buf_sysfs_entry *sysfs_entry;
-	struct dma_buf *dmabuf;
-
-	attribute = to_dma_buf_stats_attr(attr);
-	sysfs_entry = to_dma_buf_entry_from_kobj(kobj);
-	dmabuf = sysfs_entry->dmabuf;
-
-	if (!dmabuf || !attribute->show)
-		return -EIO;
-
-	return attribute->show(dmabuf, attribute, buf);
-}
-
-static const struct sysfs_ops dma_buf_stats_sysfs_ops = {
-	.show = dma_buf_stats_attribute_show,
-};
-
-static ssize_t exporter_name_show(struct dma_buf *dmabuf,
-				  struct dma_buf_stats_attribute *attr,
-				  char *buf)
-{
-	return sysfs_emit(buf, "%s\n", dmabuf->exp_name);
-}
-
-static ssize_t size_show(struct dma_buf *dmabuf,
-			 struct dma_buf_stats_attribute *attr,
-			 char *buf)
-{
-	return sysfs_emit(buf, "%zu\n", dmabuf->size);
-}
-
-static struct dma_buf_stats_attribute exporter_name_attribute =
-	__ATTR_RO(exporter_name);
-static struct dma_buf_stats_attribute size_attribute = __ATTR_RO(size);
-
-static struct attribute *dma_buf_stats_default_attrs[] = {
-	&exporter_name_attribute.attr,
-	&size_attribute.attr,
-	NULL,
-};
-ATTRIBUTE_GROUPS(dma_buf_stats_default);
-
-static void dma_buf_sysfs_release(struct kobject *kobj)
-{
-	struct dma_buf_sysfs_entry *sysfs_entry;
-
-	sysfs_entry = to_dma_buf_entry_from_kobj(kobj);
-	kfree(sysfs_entry);
-}
-
-static const struct kobj_type dma_buf_ktype = {
-	.sysfs_ops = &dma_buf_stats_sysfs_ops,
-	.release = dma_buf_sysfs_release,
-	.default_groups = dma_buf_stats_default_groups,
-};
-
-void dma_buf_stats_teardown(struct dma_buf *dmabuf)
-{
-	struct dma_buf_sysfs_entry *sysfs_entry;
-
-	sysfs_entry = dmabuf->sysfs_entry;
-	if (!sysfs_entry)
-		return;
-
-	kobject_del(&sysfs_entry->kobj);
-	kobject_put(&sysfs_entry->kobj);
-}
-
-
-/* Statistics files do not need to send uevents. */
-static int dmabuf_sysfs_uevent_filter(const struct kobject *kobj)
-{
-	return 0;
-}
-
-static const struct kset_uevent_ops dmabuf_sysfs_no_uevent_ops = {
-	.filter = dmabuf_sysfs_uevent_filter,
-};
-
-static struct kset *dma_buf_stats_kset;
-static struct kset *dma_buf_per_buffer_stats_kset;
-int dma_buf_init_sysfs_statistics(void)
-{
-	dma_buf_stats_kset = kset_create_and_add("dmabuf",
-						 &dmabuf_sysfs_no_uevent_ops,
-						 kernel_kobj);
-	if (!dma_buf_stats_kset)
-		return -ENOMEM;
-
-	dma_buf_per_buffer_stats_kset = kset_create_and_add("buffers",
-							    &dmabuf_sysfs_no_uevent_ops,
-							    &dma_buf_stats_kset->kobj);
-	if (!dma_buf_per_buffer_stats_kset) {
-		kset_unregister(dma_buf_stats_kset);
-		return -ENOMEM;
-	}
-
-	return 0;
-}
-
-void dma_buf_uninit_sysfs_statistics(void)
-{
-	kset_unregister(dma_buf_per_buffer_stats_kset);
-	kset_unregister(dma_buf_stats_kset);
-}
-
-int dma_buf_stats_setup(struct dma_buf *dmabuf, struct file *file)
-{
-	struct dma_buf_sysfs_entry *sysfs_entry;
-	int ret;
-
-	if (!dmabuf->exp_name) {
-		pr_err("exporter name must not be empty if stats needed\n");
-		return -EINVAL;
-	}
-
-	sysfs_entry = kzalloc(sizeof(struct dma_buf_sysfs_entry), GFP_KERNEL);
-	if (!sysfs_entry)
-		return -ENOMEM;
-
-	sysfs_entry->kobj.kset = dma_buf_per_buffer_stats_kset;
-	sysfs_entry->dmabuf = dmabuf;
-
-	dmabuf->sysfs_entry = sysfs_entry;
-
-	/* create the directory for buffer stats */
-	ret = kobject_init_and_add(&sysfs_entry->kobj, &dma_buf_ktype, NULL,
-				   "%lu", file_inode(file)->i_ino);
-	if (ret)
-		goto err_sysfs_dmabuf;
-
-	return 0;
-
-err_sysfs_dmabuf:
-	kobject_put(&sysfs_entry->kobj);
-	dmabuf->sysfs_entry = NULL;
-	return ret;
-}
diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.h b/drivers/dma-buf/dma-buf-sysfs-stats.h
deleted file mode 100644
index 7a8a995b75ba..000000000000
--- a/drivers/dma-buf/dma-buf-sysfs-stats.h
+++ /dev/null
@@ -1,35 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * DMA-BUF sysfs statistics.
- *
- * Copyright (C) 2021 Google LLC.
- */
-
-#ifndef _DMA_BUF_SYSFS_STATS_H
-#define _DMA_BUF_SYSFS_STATS_H
-
-#ifdef CONFIG_DMABUF_SYSFS_STATS
-
-int dma_buf_init_sysfs_statistics(void);
-void dma_buf_uninit_sysfs_statistics(void);
-
-int dma_buf_stats_setup(struct dma_buf *dmabuf, struct file *file);
-
-void dma_buf_stats_teardown(struct dma_buf *dmabuf);
-#else
-
-static inline int dma_buf_init_sysfs_statistics(void)
-{
-	return 0;
-}
-
-static inline void dma_buf_uninit_sysfs_statistics(void) {}
-
-static inline int dma_buf_stats_setup(struct dma_buf *dmabuf, struct file *file)
-{
-	return 0;
-}
-
-static inline void dma_buf_stats_teardown(struct dma_buf *dmabuf) {}
-#endif
-#endif // _DMA_BUF_SYSFS_STATS_H
diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index a4d8f2ff94e4..8e23580f1754 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -33,8 +33,6 @@
 #include <uapi/linux/dma-buf.h>
 #include <uapi/linux/magic.h>
 
-#include "dma-buf-sysfs-stats.h"
-
 #define CREATE_TRACE_POINTS
 #include <trace/events/dma_buf.h>
 
@@ -184,7 +182,6 @@ static void dma_buf_release(struct dentry *dentry)
 	 */
 	BUG_ON(dmabuf->cb_in.active || dmabuf->cb_out.active);
 
-	dma_buf_stats_teardown(dmabuf);
 	dmabuf->ops->release(dmabuf);
 
 	if (dmabuf->resv == (struct dma_resv *)&dmabuf[1])
@@ -765,10 +762,6 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 		dmabuf->resv = resv;
 	}
 
-	ret = dma_buf_stats_setup(dmabuf, file);
-	if (ret)
-		goto err_dmabuf;
-
 	file->private_data = dmabuf;
 	file->f_path.dentry->d_fsdata = dmabuf;
 	dmabuf->file = file;
@@ -779,10 +772,6 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 
 	return dmabuf;
 
-err_dmabuf:
-	if (!resv)
-		dma_resv_fini(dmabuf->resv);
-	kfree(dmabuf);
 err_file:
 	fput(file);
 err_module:
@@ -1802,12 +1791,6 @@ static inline void dma_buf_uninit_debugfs(void)
 
 static int __init dma_buf_init(void)
 {
-	int ret;
-
-	ret = dma_buf_init_sysfs_statistics();
-	if (ret)
-		return ret;
-
 	dma_buf_mnt = kern_mount(&dma_buf_fs_type);
 	if (IS_ERR(dma_buf_mnt))
 		return PTR_ERR(dma_buf_mnt);
@@ -1821,6 +1804,5 @@ static void __exit dma_buf_deinit(void)
 {
 	dma_buf_uninit_debugfs();
 	kern_unmount(dma_buf_mnt);
-	dma_buf_uninit_sysfs_statistics();
 }
 __exitcall(dma_buf_deinit);
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 0bc492090237..91f4939db89b 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -429,18 +429,6 @@ struct dma_buf {
 
 		__poll_t active;
 	} cb_in, cb_out;
-#ifdef CONFIG_DMABUF_SYSFS_STATS
-	/**
-	 * @sysfs_entry:
-	 *
-	 * For exposing information about this buffer in sysfs. See also
-	 * `DMA-BUF statistics`_ for the uapi this enables.
-	 */
-	struct dma_buf_sysfs_entry {
-		struct kobject kobj;
-		struct dma_buf *dmabuf;
-	} *sysfs_entry;
-#endif
 };
 
 /**

base-commit: 26b4309a3ab82a0697751cde52eb336c29c19035
-- 
2.52.0.457.g6b5491de43-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
