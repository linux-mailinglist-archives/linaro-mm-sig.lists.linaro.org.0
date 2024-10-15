Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF78399E39C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 12:18:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBBC43F3DF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 10:18:22 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id C223C3F4C7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 10:17:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=eLP4KpD9;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.50 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5c903f5bd0eso7867351a12.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 03:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728987456; x=1729592256; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVkO7CVZuye2Tf6mwomFLsl9zDZUwDg68Z9TUoTexmY=;
        b=eLP4KpD9EZI/eUquVHTj8P9ENuMxE1asBgeyS5cKaV5vpUHVBu/ogeOIy+M2tEsPWb
         ybV1d3HJ0UZ5GQMHU9InfK1s6Ye3EROTPJCYXSAwiFBgm+7GF1FUx8zcBi+Y/kTj1FQY
         7vnuiOR75i/83RbQyjbNGq8rkQ+1eXuJFlSpirVy/12LQjIQ5nx/+hQr8oFrvaT0gQL/
         4vZ2eH46VhDGaPn0+MYcsSBoQHaNjuZ3mU3HNgY7ny811L2SGzwGy0KMYHqVRjg8fcIH
         kzS9LCLeDTwiuAYdK6dyLQ3BI/vW8SCRekIcpj0eMTPO82/s/eUFcchLANvwbHZMWBty
         QxgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728987456; x=1729592256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sVkO7CVZuye2Tf6mwomFLsl9zDZUwDg68Z9TUoTexmY=;
        b=Hxmv0ieEJMgjGac7ON2gqiIRf0HrK6KtGfUNV+Lod3iZgbUhPToCzxsZrODUvEyPRr
         2109n9YreNRCTSK4IC6+no+h0g9uFYkNO43QJB2r38cQ+6IrAZRtFQfhW/Y2aEyYm24W
         G1FGGXku5dC2opcMu5Wsutnv6R2DreagL+ejz7r8MDvSPRg6s+d80ID6wMLdStNEqsMQ
         7zymJNfHX5vMwiz/JkglhcGplqe6s5Ear/+MF+e0DtCX+H7+eB7GfzAM4mnL3gmjlnec
         d4Ynbyasg2zUSgcB/Udp8iY4P0QlsOt4nudxfX/o8MJUp4QaEijhDm+MMFNgLDVUoqp+
         mTxw==
X-Forwarded-Encrypted: i=1; AJvYcCXXb8406/dhWON5AQaJ9tTu1SXbOU6/bsmn8YPobF7chfH+Dah9HPbOk7rYevZGVEdYpEYFK8n9SmLE847U@lists.linaro.org
X-Gm-Message-State: AOJu0YysWhF9JZCNnN+nj12KyEJEdsjkCmACpTjBKCflOF88d9P0pU4z
	pA24iDPuTtbBO7Jm2hUDY3J8H5hhBZUn7JI0nj9KvJcUqNPSk/uDojiUCQFN5jXxJQ==
X-Google-Smtp-Source: AGHT+IHfiV0lhrpAnO4j2vYfH6+RAgFU/iELhWR7ZihOKRmJgbJzIlMrlCQfqbTmJ0oOAk9X4nZwBQ==
X-Received: by 2002:a05:6402:26ce:b0:5c9:7395:b9cf with SMTP id 4fb4d7f45d1cf-5c97395bbc9mr5889165a12.17.1728987455591;
        Tue, 15 Oct 2024 03:17:35 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c98d778b80sm519581a12.78.2024.10.15.03.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 03:17:34 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 15 Oct 2024 12:15:33 +0200
Message-ID: <20241015101716.740829-2-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241015101716.740829-1-jens.wiklander@linaro.org>
References: <20241015101716.740829-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C223C3F4C7
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,mail-ed1-f50.google.com:helo,mail-ed1-f50.google.com:rdns];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.50:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: TAZFX6CF5WJ3JKVSYUK5LSXIDB7B34D5
X-Message-ID-Hash: TAZFX6CF5WJ3JKVSYUK5LSXIDB7B34D5
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH v2 1/2] tee: add restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TAZFX6CF5WJ3JKVSYUK5LSXIDB7B34D5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add restricted memory allocation to the TEE subsystem. Restricted memory
is not be accessible by kernel during normal circumstances. A new ioctl
TEE_IOC_RSTMEM_ALLOC is added to allocate these restricted memory
buffers. The restricted memory is supposed to we used in special
use-cases like Secure Data Path or Trusted UI where certain hardware
devices can access the memory.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/Makefile       |   1 +
 drivers/tee/tee_core.c     |  33 +++++-
 drivers/tee/tee_private.h  |   2 +
 drivers/tee/tee_rstmem.c   | 200 +++++++++++++++++++++++++++++++++++++
 drivers/tee/tee_shm.c      |   2 +
 drivers/tee/tee_shm_pool.c |  69 ++++++++++++-
 include/linux/tee_core.h   |   6 ++
 include/linux/tee_drv.h    |   9 ++
 include/uapi/linux/tee.h   |  33 +++++-
 9 files changed, 351 insertions(+), 4 deletions(-)
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
index d52e879b204e..0f4eee05ab13 100644
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
@@ -818,6 +819,34 @@ static int tee_ioctl_supp_send(struct tee_context *ctx,
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
+	dmabuf = tee_rstmem_alloc(ctx, data.flags, data.size, &id);
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
@@ -842,6 +871,8 @@ static long tee_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		return tee_ioctl_supp_recv(ctx, uarg);
 	case TEE_IOC_SUPPL_SEND:
 		return tee_ioctl_supp_send(ctx, uarg);
+	case TEE_IOC_RSTMEM_ALLOC:
+		return tee_ioctl_rstmem_alloc(ctx, uarg);
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/tee/tee_private.h b/drivers/tee/tee_private.h
index 9bc50605227c..8eccbb4ce5f7 100644
--- a/drivers/tee/tee_private.h
+++ b/drivers/tee/tee_private.h
@@ -23,5 +23,7 @@ void teedev_ctx_put(struct tee_context *ctx);
 struct tee_shm *tee_shm_alloc_user_buf(struct tee_context *ctx, size_t size);
 struct tee_shm *tee_shm_register_user_buf(struct tee_context *ctx,
 					  unsigned long addr, size_t length);
+struct dma_buf *tee_rstmem_alloc(struct tee_context *ctx, u32 flags,
+				 size_t size, int *shm_id);
 
 #endif /*TEE_PRIVATE_H*/
diff --git a/drivers/tee/tee_rstmem.c b/drivers/tee/tee_rstmem.c
new file mode 100644
index 000000000000..948c8e8fe96c
--- /dev/null
+++ b/drivers/tee/tee_rstmem.c
@@ -0,0 +1,200 @@
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
+				 size_t size, int *shm_id)
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
+	rc = teedev->desc->ops->rstmem_alloc(ctx, shm, flags, size);
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
index efd16ed52315..8ffecddbbc4b 100644
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
+			    u32 flags, size_t size);
+	void (*rstmem_free)(struct tee_context *ctx, struct tee_shm *shm);
 };
 
 /**
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index a54c203000ed..71f40f2dbd98 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -174,6 +174,15 @@ static inline size_t tee_shm_get_page_offset(struct tee_shm *shm)
 	return shm->offset;
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
  * tee_client_open_context() - Open a TEE context
  * @start:	if not NULL, continue search after this context
diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
index d0430bee8292..c023d7cdbe49 100644
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
 
@@ -389,6 +390,36 @@ struct tee_ioctl_shm_register_data {
  */
 #define TEE_IOC_SHM_REGISTER   _IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 9, \
 				     struct tee_ioctl_shm_register_data)
+
+#define TEE_IOC_FLAG_SECURE_VIDEO	(1 << 0)
+#define TEE_IOC_FLAG_TRUSTED_UI		(1 << 1)
+
+/**
+ * struct tee_ioctl_rstmem_alloc_data - Restricted memory allocate argument
+ * @size:	[in/out] Size of restricted memory to allocate
+ * @flags:	[in/out] Flags to/from allocate
+ * @id:		[out] Identifier of the restricted memory
+ */
+struct tee_ioctl_rstmem_alloc_data {
+	__u64 size;
+	__u32 flags;
+	__s32 id;
+};
+
+/**
+ * TEE_IOC_RSTMEM_ALLOC - allocate restricted memory
+ *
+ * Allocates restricted physically memory normally not accessible by the
+ * kernel.
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
