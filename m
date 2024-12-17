Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D39D9F487F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Dec 2024 11:08:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EBE7434D8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Dec 2024 10:08:42 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by lists.linaro.org (Postfix) with ESMTPS id EE2BB445C4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Dec 2024 10:08:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=qek7XRxN;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.171 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30227ccf803so54963241fa.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Dec 2024 02:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734430100; x=1735034900; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2IiLNztLge/7mPeLoAYdjs6WFP+3KauW2En9frT1u1k=;
        b=qek7XRxN5TqHYQmnGF2OdlE5ZPtR6Tb8HQITrCyDmR7GTrTu71yZMAkTQcaST5hPWI
         MlTGDwNZkZ94UqUlacwzHJdXADFZUACJWzQkhNiIkZQOWbWrWGDWBEXy4qSuOl53aLTp
         1ZCYVImaMg6rYLt8S6kL790FbZUGzH2QnVeTK8SpDkNsZXHvnmwiOMDW+v/gnwPs/5uF
         Mt3y3gLOeG3fpgMErccvcnCLnJUSdXolA5FNWF9qLUqjnAqyxWnY57jM9TEXmqfIcpKA
         VjIXiDcb722ayrFrD1Nb7FgeJ9Sp/p9frRyDbi+qUfEyfMo45q/w11e7iVdn/BWbX2bq
         k93g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734430100; x=1735034900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2IiLNztLge/7mPeLoAYdjs6WFP+3KauW2En9frT1u1k=;
        b=PQzSR6zGo0sbx8/uu6Yll8ArKk7RCH1LUkAuQUXklBoZTgr73jGcVMwTyxqFyNpbwE
         R+jhaKJpRrngcSuQtoY6o7DzgSGgoib8xD4gje35JrlE9B9aQBTKmSA2tZHmZP+4RbEA
         QvOs4U5j+M3GTYWFOXe52qKExuZ6aZcWQSC5O5EmujSB7uzaBy3cKXhp2GHO6vAhSbdu
         eO/If70ERrCC6CWQd8wawJAr/0E3t0TaT8ADRIe7vF4JiIRPLMfEnB0PguVr0YEEoXQv
         w0MGms5h24V8edxBkijYsDOX5O9iznlzY130H6EbsBXKtLZP+ozxI9zDi24l7FZMSchZ
         zmnw==
X-Forwarded-Encrypted: i=1; AJvYcCV0uQ7tO+yGHwswqokJqL6/5jqVzsAryGY8CWSfsDfHgPDvsZfhpGjcfaqlD6Q3611+gqUZ3sYIwy4T8F2U@lists.linaro.org
X-Gm-Message-State: AOJu0YxEwRIz2M6DQq9QqpFxy4uyE4K/FmhA/iw2TbFvUz/p1DrNm1hW
	26anlYSzg1Ig+xNxQ6MnGAePxq4JupQ8hpys2DmJsq5zHbrJP9F5yQIgTqvwNBYgkg==
X-Gm-Gg: ASbGncvxM9IwQBOM2mDODbapHSdJJY8fKZbB+e4OQaR3BqjNQlMHWXNT8ae2MlpWV6D
	zrHC5qhV0YzwP5T+SwQXMW48igbT3i0EuSNnnALEWz29kNeRTZOUiigYQPqSatKYadpxh0bvgHn
	1pQ1iqiPCh3jQiPcQotHqlO5je+K4/BkGvvqTGgal64llDjVAepL8Wo7Tk+1PBqfcb5tfq6e3hv
	JdrqBXUWW7Me8M0HvTJQJqLnIPJ2qUUgKD6hhxpLx/Z33kW1MOKEuGT6RahzEZW4QziXpEkB/++
	viZ+fvu6v7UPkeieOYxfmoEF2nBdBlYhZA==
X-Google-Smtp-Source: AGHT+IGjoYhwJDEBzL7RNi9lgXdtTGS7WYe+ik+5VtosepiQhp57q39f/w5czUgUny5HgnWrY2Ec0A==
X-Received: by 2002:a2e:beac:0:b0:302:1d24:8db7 with SMTP id 38308e7fff4ca-302545504e8mr56509501fa.19.1734430099599;
        Tue, 17 Dec 2024 02:08:19 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-303441a69ecsm12122681fa.111.2024.12.17.02.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 02:08:18 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 17 Dec 2024 11:07:37 +0100
Message-ID: <20241217100809.3962439-2-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241217100809.3962439-1-jens.wiklander@linaro.org>
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: EE2BB445C4
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.208.171:from];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.171:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FS665SZPQFWITC2PGHIU7DAK3CJST4Y7
X-Message-ID-Hash: FS665SZPQFWITC2PGHIU7DAK3CJST4Y7
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 1/6] tee: add restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FS665SZPQFWITC2PGHIU7DAK3CJST4Y7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add restricted memory allocation to the TEE subsystem.

Restricted memory refers to memory buffers behind a hardware enforced
firewall. It is not accessible to the kernel during normal circumstances
but rather only accessible to certain hardware IPs or CPUs executing in
higher privileged mode than the kernel itself. This interface allows to
allocate and manage such restricted memory buffers via interaction with
a TEE implementation.

A new ioctl TEE_IOC_RSTMEM_ALLOC is added to allocate these restricted
memory buffers.

The restricted memory is allocated for a specific use-case, like Secure
Video Playback, Trusted UI, or Secure Video Recording where certain
hardware devices can access the memory.

More use-cases can be added in userspace ABI, but it's up to the backend
drivers to provide the implementation.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/Makefile       |   1 +
 drivers/tee/tee_core.c     |  38 ++++++-
 drivers/tee/tee_private.h  |   2 +
 drivers/tee/tee_rstmem.c   | 201 +++++++++++++++++++++++++++++++++++++
 drivers/tee/tee_shm.c      |   2 +
 drivers/tee/tee_shm_pool.c |  69 ++++++++++++-
 include/linux/tee_core.h   |  15 +++
 include/linux/tee_drv.h    |   2 +
 include/uapi/linux/tee.h   |  44 +++++++-
 9 files changed, 370 insertions(+), 4 deletions(-)
 create mode 100644 drivers/tee/tee_rstmem.c

diff --git a/drivers/tee/Makefile b/drivers/tee/Makefile
index 5488cba30bd2..a4c6b55444b9 100644
--- a/drivers/tee/Makefile
+++ b/drivers/tee/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_TEE) += tee.o
 tee-objs += tee_core.o
 tee-objs += tee_shm.o
 tee-objs += tee_shm_pool.o
+tee-objs += tee_rstmem.o
 obj-$(CONFIG_OPTEE) += optee/
 obj-$(CONFIG_AMDTEE) += amdtee/
 obj-$(CONFIG_ARM_TSTEE) += tstee/
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index d113679b1e2d..f4a45b77753b 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -1,12 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (c) 2015-2016, Linaro Limited
+ * Copyright (c) 2015-2022, 2024, Linaro Limited
  */
 
 #define pr_fmt(fmt) "%s: " fmt, __func__
 
 #include <linux/cdev.h>
 #include <linux/cred.h>
+#include <linux/dma-buf.h>
 #include <linux/fs.h>
 #include <linux/idr.h>
 #include <linux/module.h>
@@ -815,6 +816,38 @@ static int tee_ioctl_supp_send(struct tee_context *ctx,
 	return rc;
 }
 
+static int
+tee_ioctl_rstmem_alloc(struct tee_context *ctx,
+		       struct tee_ioctl_rstmem_alloc_data __user *udata)
+{
+	struct tee_ioctl_rstmem_alloc_data data;
+	struct dma_buf *dmabuf;
+	int id;
+	int fd;
+
+	if (copy_from_user(&data, udata, sizeof(data)))
+		return -EFAULT;
+
+	if (data.use_case == TEE_IOC_UC_RESERVED)
+		return -EINVAL;
+
+	dmabuf = tee_rstmem_alloc(ctx, data.flags, data.use_case, data.size,
+				  &id);
+	if (IS_ERR(dmabuf))
+		return PTR_ERR(dmabuf);
+	if (put_user(id, &udata->id)) {
+		fd = -EFAULT;
+		goto err;
+	}
+	fd = dma_buf_fd(dmabuf, O_CLOEXEC);
+	if (fd < 0)
+		goto err;
+	return fd;
+err:
+	dma_buf_put(dmabuf);
+	return fd;
+}
+
 static long tee_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
 	struct tee_context *ctx = filp->private_data;
@@ -839,6 +872,8 @@ static long tee_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		return tee_ioctl_supp_recv(ctx, uarg);
 	case TEE_IOC_SUPPL_SEND:
 		return tee_ioctl_supp_send(ctx, uarg);
+	case TEE_IOC_RSTMEM_ALLOC:
+		return tee_ioctl_rstmem_alloc(ctx, uarg);
 	default:
 		return -EINVAL;
 	}
@@ -1286,3 +1321,4 @@ MODULE_AUTHOR("Linaro");
 MODULE_DESCRIPTION("TEE Driver");
 MODULE_VERSION("1.0");
 MODULE_LICENSE("GPL v2");
+MODULE_IMPORT_NS("DMA_BUF");
diff --git a/drivers/tee/tee_private.h b/drivers/tee/tee_private.h
index 9bc50605227c..bf97796909c0 100644
--- a/drivers/tee/tee_private.h
+++ b/drivers/tee/tee_private.h
@@ -23,5 +23,7 @@ void teedev_ctx_put(struct tee_context *ctx);
 struct tee_shm *tee_shm_alloc_user_buf(struct tee_context *ctx, size_t size);
 struct tee_shm *tee_shm_register_user_buf(struct tee_context *ctx,
 					  unsigned long addr, size_t length);
+struct dma_buf *tee_rstmem_alloc(struct tee_context *ctx, u32 flags,
+				 u32 use_case, size_t size, int *shm_id);
 
 #endif /*TEE_PRIVATE_H*/
diff --git a/drivers/tee/tee_rstmem.c b/drivers/tee/tee_rstmem.c
new file mode 100644
index 000000000000..536bca2901e2
--- /dev/null
+++ b/drivers/tee/tee_rstmem.c
@@ -0,0 +1,201 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Linaro Limited
+ */
+#include <linux/device.h>
+#include <linux/dma-buf.h>
+#include <linux/genalloc.h>
+#include <linux/scatterlist.h>
+#include <linux/slab.h>
+#include <linux/tee_core.h>
+#include "tee_private.h"
+
+struct tee_rstmem_attachment {
+	struct sg_table table;
+	struct device *dev;
+};
+
+static int rstmem_dma_attach(struct dma_buf *dmabuf,
+			     struct dma_buf_attachment *attachment)
+{
+	struct tee_shm *shm = dmabuf->priv;
+	struct tee_rstmem_attachment *a;
+	int rc;
+
+	a = kzalloc(sizeof(*a), GFP_KERNEL);
+	if (!a)
+		return -ENOMEM;
+
+	if (shm->pages) {
+		rc = sg_alloc_table_from_pages(&a->table, shm->pages,
+					       shm->num_pages, 0,
+					       shm->num_pages * PAGE_SIZE,
+					       GFP_KERNEL);
+		if (rc)
+			goto err;
+	} else {
+		rc = sg_alloc_table(&a->table, 1, GFP_KERNEL);
+		if (rc)
+			goto err;
+		sg_set_page(a->table.sgl, phys_to_page(shm->paddr), shm->size,
+			    0);
+	}
+
+	a->dev = attachment->dev;
+	attachment->priv = a;
+
+	return 0;
+err:
+	kfree(a);
+	return rc;
+}
+
+static void rstmem_dma_detach(struct dma_buf *dmabuf,
+			      struct dma_buf_attachment *attachment)
+{
+	struct tee_rstmem_attachment *a = attachment->priv;
+
+	sg_free_table(&a->table);
+	kfree(a);
+}
+
+static struct sg_table *
+rstmem_dma_map_dma_buf(struct dma_buf_attachment *attachment,
+		       enum dma_data_direction direction)
+{
+	struct tee_rstmem_attachment *a = attachment->priv;
+	int ret;
+
+	ret = dma_map_sgtable(attachment->dev, &a->table, direction,
+			      DMA_ATTR_SKIP_CPU_SYNC);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &a->table;
+}
+
+static void rstmem_dma_unmap_dma_buf(struct dma_buf_attachment *attachment,
+				     struct sg_table *table,
+				     enum dma_data_direction direction)
+{
+	struct tee_rstmem_attachment *a = attachment->priv;
+
+	WARN_ON(&a->table != table);
+
+	dma_unmap_sgtable(attachment->dev, table, direction,
+			  DMA_ATTR_SKIP_CPU_SYNC);
+}
+
+static int rstmem_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
+					   enum dma_data_direction direction)
+{
+	return -EPERM;
+}
+
+static int rstmem_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
+					 enum dma_data_direction direction)
+{
+	return -EPERM;
+}
+
+static int rstmem_dma_buf_mmap(struct dma_buf *dmabuf,
+			       struct vm_area_struct *vma)
+{
+	return -EPERM;
+}
+
+static void rstmem_dma_buf_free(struct dma_buf *dmabuf)
+{
+	struct tee_shm *shm = dmabuf->priv;
+
+	tee_shm_put(shm);
+}
+
+static const struct dma_buf_ops rstmem_generic_buf_ops = {
+	.attach = rstmem_dma_attach,
+	.detach = rstmem_dma_detach,
+	.map_dma_buf = rstmem_dma_map_dma_buf,
+	.unmap_dma_buf = rstmem_dma_unmap_dma_buf,
+	.begin_cpu_access = rstmem_dma_buf_begin_cpu_access,
+	.end_cpu_access = rstmem_dma_buf_end_cpu_access,
+	.mmap = rstmem_dma_buf_mmap,
+	.release = rstmem_dma_buf_free,
+};
+
+struct dma_buf *tee_rstmem_alloc(struct tee_context *ctx, u32 flags,
+				 u32 use_case, size_t size, int *shm_id)
+{
+	struct tee_device *teedev = ctx->teedev;
+	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
+	struct dma_buf *dmabuf;
+	struct tee_shm *shm;
+	void *ret;
+	int rc;
+
+	if (!tee_device_get(teedev))
+		return ERR_PTR(-EINVAL);
+
+	if (!teedev->desc->ops->rstmem_alloc ||
+	    !teedev->desc->ops->rstmem_free) {
+		dmabuf = ERR_PTR(-EINVAL);
+		goto err;
+	}
+
+	shm = kzalloc(sizeof(*shm), GFP_KERNEL);
+	if (!shm) {
+		dmabuf = ERR_PTR(-ENOMEM);
+		goto err;
+	}
+
+	refcount_set(&shm->refcount, 1);
+	shm->flags = TEE_SHM_RESTRICTED;
+	shm->use_case = use_case;
+	shm->ctx = ctx;
+
+	mutex_lock(&teedev->mutex);
+	shm->id = idr_alloc(&teedev->idr, NULL, 1, 0, GFP_KERNEL);
+	mutex_unlock(&teedev->mutex);
+	if (shm->id < 0) {
+		dmabuf = ERR_PTR(shm->id);
+		goto err_kfree;
+	}
+
+	rc = teedev->desc->ops->rstmem_alloc(ctx, shm, flags, use_case, size);
+	if (rc) {
+		dmabuf = ERR_PTR(rc);
+		goto err_idr_remove;
+	}
+
+	mutex_lock(&teedev->mutex);
+	ret = idr_replace(&teedev->idr, shm, shm->id);
+	mutex_unlock(&teedev->mutex);
+	if (IS_ERR(ret)) {
+		dmabuf = ret;
+		goto err_rstmem_free;
+	}
+	teedev_ctx_get(ctx);
+
+	exp_info.ops = &rstmem_generic_buf_ops;
+	exp_info.size = shm->size;
+	exp_info.priv = shm;
+	dmabuf = dma_buf_export(&exp_info);
+	if (IS_ERR(dmabuf)) {
+		tee_shm_put(shm);
+		return dmabuf;
+	}
+
+	*shm_id = shm->id;
+	return dmabuf;
+
+err_rstmem_free:
+	teedev->desc->ops->rstmem_free(ctx, shm);
+err_idr_remove:
+	mutex_lock(&teedev->mutex);
+	idr_remove(&teedev->idr, shm->id);
+	mutex_unlock(&teedev->mutex);
+err_kfree:
+	kfree(shm);
+err:
+	tee_device_put(teedev);
+	return dmabuf;
+}
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index daf6e5cfd59a..416f7f25d885 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -55,6 +55,8 @@ static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 				"unregister shm %p failed: %d", shm, rc);
 
 		release_registered_pages(shm);
+	} else if (shm->flags & TEE_SHM_RESTRICTED) {
+		teedev->desc->ops->rstmem_free(shm->ctx, shm);
 	}
 
 	teedev_ctx_put(shm->ctx);
diff --git a/drivers/tee/tee_shm_pool.c b/drivers/tee/tee_shm_pool.c
index 80004b55628d..ee57ef157a77 100644
--- a/drivers/tee/tee_shm_pool.c
+++ b/drivers/tee/tee_shm_pool.c
@@ -1,9 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (c) 2015, 2017, 2022 Linaro Limited
+ * Copyright (c) 2015, 2017, 2022, 2024 Linaro Limited
  */
 #include <linux/device.h>
-#include <linux/dma-buf.h>
 #include <linux/genalloc.h>
 #include <linux/slab.h>
 #include <linux/tee_core.h>
@@ -90,3 +89,69 @@ struct tee_shm_pool *tee_shm_pool_alloc_res_mem(unsigned long vaddr,
 	return ERR_PTR(rc);
 }
 EXPORT_SYMBOL_GPL(tee_shm_pool_alloc_res_mem);
+
+static int rstmem_pool_op_gen_alloc(struct tee_shm_pool *pool,
+				    struct tee_shm *shm, size_t size,
+				    size_t align)
+{
+	size_t sz = ALIGN(size, PAGE_SIZE);
+	phys_addr_t pa;
+
+	pa = gen_pool_alloc(pool->private_data, sz);
+	if (!pa)
+		return -ENOMEM;
+
+	shm->size = sz;
+	shm->paddr = pa;
+
+	return 0;
+}
+
+static void rstmem_pool_op_gen_free(struct tee_shm_pool *pool,
+				    struct tee_shm *shm)
+{
+	gen_pool_free(pool->private_data, shm->paddr, shm->size);
+	shm->paddr = 0;
+}
+
+static struct tee_shm_pool_ops rstmem_pool_ops_generic = {
+	.alloc = rstmem_pool_op_gen_alloc,
+	.free = rstmem_pool_op_gen_free,
+	.destroy_pool = pool_op_gen_destroy_pool,
+};
+
+struct tee_shm_pool *tee_rstmem_gen_pool_alloc(phys_addr_t paddr, size_t size)
+{
+	const size_t page_mask = PAGE_SIZE - 1;
+	struct tee_shm_pool *pool;
+	int rc;
+
+	/* Check it's page aligned */
+	if ((paddr | size) & page_mask)
+		return ERR_PTR(-EINVAL);
+
+	pool = kzalloc(sizeof(*pool), GFP_KERNEL);
+	if (!pool)
+		return ERR_PTR(-ENOMEM);
+
+	pool->private_data = gen_pool_create(PAGE_SHIFT, -1);
+	if (!pool->private_data) {
+		rc = -ENOMEM;
+		goto err_free;
+	}
+
+	rc = gen_pool_add(pool->private_data, paddr, size, -1);
+	if (rc)
+		goto err_free_pool;
+
+	pool->ops = &rstmem_pool_ops_generic;
+	return pool;
+
+err_free_pool:
+	gen_pool_destroy(pool->private_data);
+err_free:
+	kfree(pool);
+
+	return ERR_PTR(rc);
+}
+EXPORT_SYMBOL_GPL(tee_rstmem_gen_pool_alloc);
diff --git a/include/linux/tee_core.h b/include/linux/tee_core.h
index a38494d6b5f4..608302f494fe 100644
--- a/include/linux/tee_core.h
+++ b/include/linux/tee_core.h
@@ -26,6 +26,7 @@
 #define TEE_SHM_USER_MAPPED	BIT(1)  /* Memory mapped in user space */
 #define TEE_SHM_POOL		BIT(2)  /* Memory allocated from pool */
 #define TEE_SHM_PRIV		BIT(3)  /* Memory private to TEE driver */
+#define TEE_SHM_RESTRICTED	BIT(4)  /* Restricted memory */
 
 #define TEE_DEVICE_FLAG_REGISTERED	0x1
 #define TEE_MAX_DEV_NAME_LEN		32
@@ -76,6 +77,8 @@ struct tee_device {
  * @supp_send:		called for supplicant to send a response
  * @shm_register:	register shared memory buffer in TEE
  * @shm_unregister:	unregister shared memory buffer in TEE
+ * @rstmem_alloc:	allocate restricted memory
+ * @rstmem_free:	free restricted memory
  */
 struct tee_driver_ops {
 	void (*get_version)(struct tee_device *teedev,
@@ -99,6 +102,9 @@ struct tee_driver_ops {
 			    struct page **pages, size_t num_pages,
 			    unsigned long start);
 	int (*shm_unregister)(struct tee_context *ctx, struct tee_shm *shm);
+	int (*rstmem_alloc)(struct tee_context *ctx, struct tee_shm *shm,
+			    u32 flags, u32 use_case, size_t size);
+	void (*rstmem_free)(struct tee_context *ctx, struct tee_shm *shm);
 };
 
 /**
@@ -229,6 +235,15 @@ static inline void tee_shm_pool_free(struct tee_shm_pool *pool)
 	pool->ops->destroy_pool(pool);
 }
 
+/**
+ * tee_rstmem_gen_pool_alloc() - Create a restricted memory manager
+ * @paddr:	Physical address of start of pool
+ * @size:	Size in bytes of the pool
+ *
+ * @returns pointer to a 'struct tee_shm_pool' or an ERR_PTR on failure.
+ */
+struct tee_shm_pool *tee_rstmem_gen_pool_alloc(phys_addr_t paddr, size_t size);
+
 /**
  * tee_get_drvdata() - Return driver_data pointer
  * @returns the driver_data pointer supplied to tee_register().
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index a54c203000ed..cba067715d14 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -55,6 +55,7 @@ struct tee_context {
  * @pages:	locked pages from userspace
  * @num_pages:	number of locked pages
  * @refcount:	reference counter
+ * @use_case:	defined by TEE_IOC_UC_* in tee.h
  * @flags:	defined by TEE_SHM_* in tee_core.h
  * @id:		unique id of a shared memory object on this device, shared
  *		with user space
@@ -71,6 +72,7 @@ struct tee_shm {
 	struct page **pages;
 	size_t num_pages;
 	refcount_t refcount;
+	u32 use_case;
 	u32 flags;
 	int id;
 	u64 sec_world_id;
diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
index d0430bee8292..88834448debb 100644
--- a/include/uapi/linux/tee.h
+++ b/include/uapi/linux/tee.h
@@ -1,5 +1,5 @@
 /*
- * Copyright (c) 2015-2016, Linaro Limited
+ * Copyright (c) 2015-2017, 2020, 2024, Linaro Limited
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -48,6 +48,7 @@
 #define TEE_GEN_CAP_PRIVILEGED	(1 << 1)/* Privileged device (for supplicant) */
 #define TEE_GEN_CAP_REG_MEM	(1 << 2)/* Supports registering shared memory */
 #define TEE_GEN_CAP_MEMREF_NULL	(1 << 3)/* NULL MemRef support */
+#define TEE_GEN_CAP_RSTMEM	(1 << 4)/* Supports restricted memory */
 
 #define TEE_MEMREF_NULL		(__u64)(-1) /* NULL MemRef Buffer */
 
@@ -389,6 +390,47 @@ struct tee_ioctl_shm_register_data {
  */
 #define TEE_IOC_SHM_REGISTER   _IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 9, \
 				     struct tee_ioctl_shm_register_data)
+
+#define TEE_IOC_UC_RESERVED		0
+#define TEE_IOC_UC_SECURE_VIDEO_PLAY	1
+#define TEE_IOC_UC_TRUSTED_UI		2
+#define TEE_IOC_UC_SECURE_VIDEO_RECORD	3
+
+/**
+ * struct tee_ioctl_rstmem_alloc_data - Restricted memory allocate argument
+ * @size:	[in/out] Size of restricted memory to allocate
+ * @flags:	[in/out] Flags to/from allocate
+ * @use_case	[in] Restricted memory use case, TEE_IOC_UC_*
+ * @id:		[out] Identifier of the restricted memory
+ */
+struct tee_ioctl_rstmem_alloc_data {
+	__u64 size;
+	__u32 flags;
+	__u32 use_case;
+	__s32 id;
+};
+
+/**
+ * TEE_IOC_RSTMEM_ALLOC - allocate restricted memory
+ *
+ * Allocates restricted physically memory normally not accessible by the
+ * kernel.
+ *
+ * Restricted memory refers to memory buffers behind a hardware enforced
+ * firewall. It is not accessible to the kernel during normal circumstances
+ * but rather only accessible to certain hardware IPs or CPUs executing in
+ * higher privileged mode than the kernel itself. This interface allows to
+ * allocate and manage such restricted memory buffers via interaction with
+ * a TEE implementation.
+ *
+ * Returns a file descriptor on success or < 0 on failure
+ *
+ * The returned file descriptor is a dma-buf that can be attached and
+ * mapped for device with permission to access the physical memory.
+ */
+#define TEE_IOC_RSTMEM_ALLOC     _IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 10, \
+				       struct tee_ioctl_rstmem_alloc_data)
+
 /*
  * Five syscalls are used when communicating with the TEE driver.
  * open(): opens the device associated with the driver
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
