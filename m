Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EA45CB240FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 08:05:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11059455C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 06:05:25 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id 60AC045D7D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Aug 2025 06:04:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=LxMUepGs;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.48 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-605b9488c28so10767787a12.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 23:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755065039; x=1755669839; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4djoMlBKpvP5y+awagdmFpNKd0vy1SIylF/MMIK4ZMo=;
        b=LxMUepGsd8jNTXw8uKCd2lVI6fgmcaQQnKBzqkdzBdrY27d8ubeAvWFg2fZYHMkMvU
         e96ZK7sYeYYaYzV2wzX9v4kgspHwOk0+2sGhs7UovPugOi4nLk7gX1Vr3Sk0uVyfq93v
         tK/McnugMS6+uBTBA/T2vlJHKNmUfH0a/hr+4rt0+Ucfn/+D/FVN/pf0TiGTGT8TFVDI
         wjPGgyRRVOgG8EIkPGIMJRWZmNQq+BWXsPFPAMP5mNTebP9FmFgeplSlNk+dkErcxYgm
         tVrXvYwdWsME1IMYfAAePDCnfieG3eoLwye1SCzZeEqtPinLtiE+2zsGW6G5rPxur7a8
         hogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755065039; x=1755669839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4djoMlBKpvP5y+awagdmFpNKd0vy1SIylF/MMIK4ZMo=;
        b=Q8GlbvzdovZ575A6ybATxRM+dRobMGKeoPLFsmW47Uxnk4jL5Cj1V2EYEhOF9tFt87
         xWqeiu1OJjwO1Wt5A0rRXMu6BUBQApBhb+ZztD2y+NF2wLyvXzbqCQDjssKAGVCvV/yy
         +YGwKsErNzrHPbfTTOfiGcUXf30O9n7IYBDOuSuPDu1FgxAc7B9QU8KVXdqmScgNAHyP
         gDuIrn+Arcz3fsl5QeG4tO4qQRofPJx+Z/kx86gPH0991kKOHTP+0fQE9Qhlqe0+FkgK
         hYQxws0jcZL1OVeNodw2dI6QU5msqYRuSi2y78h7M7q63Tosrz9eRv7mYfwB4hQ0qWxU
         IBjg==
X-Forwarded-Encrypted: i=1; AJvYcCXLDWfOIVx9ui0D4+4kAssm+XhuLb/EB/Q7wxngDnR/lnbYBB6ERT4NZPHceYrtNbndVGDE4EjmoYJA/qwN@lists.linaro.org
X-Gm-Message-State: AOJu0Yyr+fFrFDpjhSiiEWykMSHvDn64XfG6t8d1kTfWsoeQkkkavaNl
	1ftSLvwwHBN1L8G5Xfd96+0P6q+yNEYRgwU5xRYiG1Xgk0X1FiqwevxtsiHQhFevPGUqxQ==
X-Gm-Gg: ASbGnctsx1l8378g2kjCvHeG0JC2Ww8mzv8/bgS2tlMgaIXT4bsOQJDKSNhPTC8cr2f
	6VQQJwEopG1BW/EilK7/MgDvvvC0K62SzjmggT4cO/y8/JqwEqmeSIfe0bdwsAOPmij77kcGqyp
	SvimicrZupZimYbB3AIkPyixRJLg+JFMbSb0oId1Dmm0XG5FMVJk2t8MDabIHoEJZ5g/IqiKlru
	Q2CX4ifg0OMKC+EhAoSUgDMMelvnJJA2LhKDoeVu9N1VOqhrO5oN8hUrK2y1EtMEDepfa/Xy4Yv
	Zg+gzllcbftVXE/bi9OVIbN3qsHfDzXo46OeYxpvdcNKXhIjPFQchzdb/XtXi5sEq9kAA48Tt27
	dgCf3ulp/LPJca13wMA5s3/bd5rlrIaZv6Yy34QH2zj27nZ9anrfjtIEAW+PxcFhxjX/4XP9oql
	Y=
X-Google-Smtp-Source: AGHT+IGr1N+6OZeiUGN2vRdvw56ounKBMi6RzHQ8Frg9hueStqKxU0w7ZfoAyf+vVOL9Y+a5V0ngGw==
X-Received: by 2002:a50:a401:0:b0:618:3bc5:88a9 with SMTP id 4fb4d7f45d1cf-6186b78c05emr951599a12.5.1755065039207;
        Tue, 12 Aug 2025 23:03:59 -0700 (PDT)
Received: from rayden.urgonet (h-37-123-177-177.A175.priv.bahnhof.se. [37.123.177.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f2b892sm21498679a12.25.2025.08.12.23.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 23:03:58 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed, 13 Aug 2025 08:02:54 +0200
Message-ID: <20250813060339.2977604-6-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250813060339.2977604-1-jens.wiklander@linaro.org>
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,foss.st.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.208.48:from];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.48:from];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 60AC045D7D
X-Spamd-Bar: -
Message-ID-Hash: YYBIYNDUKJZA6EVZYAVMDF7WAZCUO6JB
X-Message-ID-Hash: YYBIYNDUKJZA6EVZYAVMDF7WAZCUO6JB
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Etienne Carriere <etienne.carriere@foss.st.com>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v11 5/9] tee: new ioctl to a register tee_shm from a dmabuf file descriptor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YYBIYNDUKJZA6EVZYAVMDF7WAZCUO6JB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Etienne Carriere <etienne.carriere@foss.st.com>

Add a userspace API to create a tee_shm object that refers to a dmabuf
reference.

Userspace registers the dmabuf file descriptor as in a tee_shm object.
The registration is completed with a tee_shm returned file descriptor.

Userspace is free to close the dmabuf file descriptor after it has been
registered since all the resources are now held via the new tee_shm
object.

Closing the tee_shm file descriptor will eventually release all
resources used by the tee_shm object when all references are released.

The new IOCTL, TEE_IOC_SHM_REGISTER_FD, supports dmabuf references to
physically contiguous memory buffers. Dmabuf references acquired from
the TEE DMA-heap can be used as protected memory for Secure Video Path
and such use cases. It depends on the TEE and the TEE driver if dmabuf
references acquired by other means can be used.

A new tee_shm flag is added to identify tee_shm objects built from a
registered dmabuf, TEE_SHM_DMA_BUF.

Signed-off-by: Etienne Carriere <etienne.carriere@foss.st.com>
Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_core.c    | 63 ++++++++++++++++++++++++++++++++-
 drivers/tee/tee_private.h |  8 +++++
 drivers/tee/tee_shm.c     | 74 +++++++++++++++++++++++++++++++++++++--
 include/linux/tee_core.h  |  1 +
 include/linux/tee_drv.h   | 10 ++++++
 include/uapi/linux/tee.h  | 31 ++++++++++++++++
 6 files changed, 183 insertions(+), 4 deletions(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index b89f93b1f8f2..fe414595fc2c 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -354,11 +354,49 @@ tee_ioctl_shm_register(struct tee_context *ctx,
 	return ret;
 }
 
+static int
+tee_ioctl_shm_register_fd(struct tee_context *ctx,
+			  struct tee_ioctl_shm_register_fd_data __user *udata)
+{
+	struct tee_ioctl_shm_register_fd_data data;
+	struct tee_shm *shm;
+	long ret;
+
+	if (copy_from_user(&data, udata, sizeof(data)))
+		return -EFAULT;
+
+	/* Currently no input flags are supported */
+	if (data.flags)
+		return -EINVAL;
+
+	shm = tee_shm_register_fd(ctx, data.fd);
+	if (IS_ERR(shm))
+		return -EINVAL;
+
+	data.id = shm->id;
+	data.flags = shm->flags;
+	data.size = shm->size;
+
+	if (copy_to_user(udata, &data, sizeof(data)))
+		ret = -EFAULT;
+	else
+		ret = tee_shm_get_fd(shm);
+
+	/*
+	 * When user space closes the file descriptor the shared memory
+	 * should be freed or if tee_shm_get_fd() failed then it will
+	 * be freed immediately.
+	 */
+	tee_shm_put(shm);
+	return ret;
+}
+
 static int param_from_user_memref(struct tee_context *ctx,
 				  struct tee_param_memref *memref,
 				  struct tee_ioctl_param *ip)
 {
 	struct tee_shm *shm;
+	size_t offs = 0;
 
 	/*
 	 * If a NULL pointer is passed to a TA in the TEE,
@@ -389,6 +427,26 @@ static int param_from_user_memref(struct tee_context *ctx,
 			tee_shm_put(shm);
 			return -EINVAL;
 		}
+
+		if (shm->flags & TEE_SHM_DMA_BUF) {
+			struct tee_shm_dmabuf_ref *ref;
+
+			ref = container_of(shm, struct tee_shm_dmabuf_ref, shm);
+			if (ref->parent_shm) {
+				/*
+				 * The shm already has one reference to
+				 * ref->parent_shm so we are clear of 0.
+				 * We're getting another reference since
+				 * this shm will be used in the parameter
+				 * list instead of the shm we got with
+				 * tee_shm_get_from_id() above.
+				 */
+				refcount_inc(&ref->parent_shm->refcount);
+				tee_shm_put(shm);
+				shm = ref->parent_shm;
+				offs = ref->offset;
+			}
+		}
 	} else if (ctx->cap_memref_null) {
 		/* Pass NULL pointer to OP-TEE */
 		shm = NULL;
@@ -396,7 +454,7 @@ static int param_from_user_memref(struct tee_context *ctx,
 		return -EINVAL;
 	}
 
-	memref->shm_offs = ip->a;
+	memref->shm_offs = ip->a + offs;
 	memref->size = ip->b;
 	memref->shm = shm;
 
@@ -842,6 +900,8 @@ static long tee_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		return tee_ioctl_shm_alloc(ctx, uarg);
 	case TEE_IOC_SHM_REGISTER:
 		return tee_ioctl_shm_register(ctx, uarg);
+	case TEE_IOC_SHM_REGISTER_FD:
+		return tee_ioctl_shm_register_fd(ctx, uarg);
 	case TEE_IOC_OPEN_SESSION:
 		return tee_ioctl_open_session(ctx, uarg);
 	case TEE_IOC_INVOKE:
@@ -1303,3 +1363,4 @@ MODULE_AUTHOR("Linaro");
 MODULE_DESCRIPTION("TEE Driver");
 MODULE_VERSION("1.0");
 MODULE_LICENSE("GPL v2");
+MODULE_IMPORT_NS("DMA_BUF");
diff --git a/drivers/tee/tee_private.h b/drivers/tee/tee_private.h
index 6c6ff5d5eed2..a9b5e4a6a8f7 100644
--- a/drivers/tee/tee_private.h
+++ b/drivers/tee/tee_private.h
@@ -13,6 +13,14 @@
 #include <linux/mutex.h>
 #include <linux/types.h>
 
+/* extra references appended to shm object for registered shared memory */
+struct tee_shm_dmabuf_ref {
+	struct tee_shm shm;
+	size_t offset;
+	struct dma_buf *dmabuf;
+	struct tee_shm *parent_shm;
+};
+
 int tee_shm_get_fd(struct tee_shm *shm);
 
 bool tee_device_get(struct tee_device *teedev);
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index daf6e5cfd59a..76195a398c89 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -4,6 +4,7 @@
  */
 #include <linux/anon_inodes.h>
 #include <linux/device.h>
+#include <linux/dma-buf.h>
 #include <linux/idr.h>
 #include <linux/io.h>
 #include <linux/mm.h>
@@ -45,7 +46,15 @@ static void release_registered_pages(struct tee_shm *shm)
 
 static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 {
-	if (shm->flags & TEE_SHM_POOL) {
+	void *p = shm;
+
+	if (shm->flags & TEE_SHM_DMA_BUF) {
+		struct tee_shm_dmabuf_ref *ref;
+
+		ref = container_of(shm, struct tee_shm_dmabuf_ref, shm);
+		p = ref;
+		dma_buf_put(ref->dmabuf);
+	} else if (shm->flags & TEE_SHM_POOL) {
 		teedev->pool->ops->free(teedev->pool, shm);
 	} else if (shm->flags & TEE_SHM_DYNAMIC) {
 		int rc = teedev->desc->ops->shm_unregister(shm->ctx, shm);
@@ -59,7 +68,7 @@ static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 
 	teedev_ctx_put(shm->ctx);
 
-	kfree(shm);
+	kfree(p);
 
 	tee_device_put(teedev);
 }
@@ -169,7 +178,7 @@ struct tee_shm *tee_shm_alloc_user_buf(struct tee_context *ctx, size_t size)
  * tee_client_invoke_func(). The memory allocated is later freed with a
  * call to tee_shm_free().
  *
- * @returns a pointer to 'struct tee_shm'
+ * @returns a pointer to 'struct tee_shm' on success, and ERR_PTR on failure
  */
 struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size)
 {
@@ -179,6 +188,62 @@ struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size)
 }
 EXPORT_SYMBOL_GPL(tee_shm_alloc_kernel_buf);
 
+struct tee_shm *tee_shm_register_fd(struct tee_context *ctx, int fd)
+{
+	struct tee_shm_dmabuf_ref *ref;
+	int rc;
+
+	if (!tee_device_get(ctx->teedev))
+		return ERR_PTR(-EINVAL);
+
+	teedev_ctx_get(ctx);
+
+	ref = kzalloc(sizeof(*ref), GFP_KERNEL);
+	if (!ref) {
+		rc = -ENOMEM;
+		goto err_put_tee;
+	}
+
+	refcount_set(&ref->shm.refcount, 1);
+	ref->shm.ctx = ctx;
+	ref->shm.id = -1;
+	ref->shm.flags = TEE_SHM_DMA_BUF;
+
+	ref->dmabuf = dma_buf_get(fd);
+	if (IS_ERR(ref->dmabuf)) {
+		rc = PTR_ERR(ref->dmabuf);
+		goto err_kfree_ref;
+	}
+
+	rc = tee_heap_update_from_dma_buf(ctx->teedev, ref->dmabuf,
+					  &ref->offset, &ref->shm,
+					  &ref->parent_shm);
+	if (rc)
+		goto err_put_dmabuf;
+
+	mutex_lock(&ref->shm.ctx->teedev->mutex);
+	ref->shm.id = idr_alloc(&ref->shm.ctx->teedev->idr, &ref->shm,
+				1, 0, GFP_KERNEL);
+	mutex_unlock(&ref->shm.ctx->teedev->mutex);
+	if (ref->shm.id < 0) {
+		rc = ref->shm.id;
+		goto err_put_dmabuf;
+	}
+
+	return &ref->shm;
+
+err_put_dmabuf:
+	dma_buf_put(ref->dmabuf);
+err_kfree_ref:
+	kfree(ref);
+err_put_tee:
+	teedev_ctx_put(ctx);
+	tee_device_put(ctx->teedev);
+
+	return ERR_PTR(rc);
+}
+EXPORT_SYMBOL_GPL(tee_shm_register_fd);
+
 /**
  * tee_shm_alloc_priv_buf() - Allocate shared memory for a privately shared
  *			      kernel buffer
@@ -442,6 +507,9 @@ static int tee_shm_fop_mmap(struct file *filp, struct vm_area_struct *vma)
 	/* Refuse sharing shared memory provided by application */
 	if (shm->flags & TEE_SHM_USER_MAPPED)
 		return -EINVAL;
+	/* Refuse sharing registered DMA_bufs with the application */
+	if (shm->flags & TEE_SHM_DMA_BUF)
+		return -EINVAL;
 
 	/* check for overflowing the buffer's size */
 	if (vma->vm_pgoff + vma_pages(vma) > shm->size >> PAGE_SHIFT)
diff --git a/include/linux/tee_core.h b/include/linux/tee_core.h
index 28b65010b9ed..b6c54b34a8b5 100644
--- a/include/linux/tee_core.h
+++ b/include/linux/tee_core.h
@@ -28,6 +28,7 @@
 #define TEE_SHM_USER_MAPPED	BIT(1)  /* Memory mapped in user space */
 #define TEE_SHM_POOL		BIT(2)  /* Memory allocated from pool */
 #define TEE_SHM_PRIV		BIT(3)  /* Memory private to TEE driver */
+#define TEE_SHM_DMA_BUF		BIT(4)	/* Memory with dma-buf handle */
 
 #define TEE_DEVICE_FLAG_REGISTERED	0x1
 #define TEE_MAX_DEV_NAME_LEN		32
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index a54c203000ed..824f1251de60 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -116,6 +116,16 @@ struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size);
 struct tee_shm *tee_shm_register_kernel_buf(struct tee_context *ctx,
 					    void *addr, size_t length);
 
+/**
+ * tee_shm_register_fd() - Register shared memory from file descriptor
+ *
+ * @ctx:	Context that allocates the shared memory
+ * @fd:		Shared memory file descriptor reference
+ *
+ * @returns a pointer to 'struct tee_shm' on success, and ERR_PTR on failure
+ */
+struct tee_shm *tee_shm_register_fd(struct tee_context *ctx, int fd);
+
 /**
  * tee_shm_free() - Free shared memory
  * @shm:	Handle to shared memory to free
diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
index d0430bee8292..d843cf980d98 100644
--- a/include/uapi/linux/tee.h
+++ b/include/uapi/linux/tee.h
@@ -378,6 +378,37 @@ struct tee_ioctl_shm_register_data {
 	__s32 id;
 };
 
+/**
+ * struct tee_ioctl_shm_register_fd_data - Shared memory registering argument
+ * @fd:		[in] File descriptor identifying dmabuf reference
+ * @size:	[out] Size of referenced memory
+ * @flags:	[in] Flags to/from allocation.
+ * @id:		[out] Identifier of the shared memory
+ *
+ * The flags field should currently be zero as input. Updated by the call
+ * with actual flags as defined by TEE_IOCTL_SHM_* above.
+ * This structure is used as argument for TEE_IOC_SHM_REGISTER_FD below.
+ */
+struct tee_ioctl_shm_register_fd_data {
+	__s64 fd;
+	__u64 size;
+	__u32 flags;
+	__s32 id;
+};
+
+/**
+ * TEE_IOC_SHM_REGISTER_FD - register a shared memory from a file descriptor
+ *
+ * Returns a file descriptor on success or < 0 on failure
+ *
+ * The returned file descriptor refers to the shared memory object in the
+ * kernel. The supplied file deccriptor can be closed if it's not needed
+ * for other purposes. The shared memory is freed when the descriptor is
+ * closed.
+ */
+#define TEE_IOC_SHM_REGISTER_FD	_IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 8, \
+				     struct tee_ioctl_shm_register_fd_data)
+
 /**
  * TEE_IOC_SHM_REGISTER - Register shared memory argument
  *
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
