Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDA8J85gBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CCA5324AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4645D3F91B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:30:21 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by lists.linaro.org (Postfix) with ESMTPS id 9EB143EC66
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:34:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AL7BPqrt;
	spf=pass (lists.linaro.org: domain of guoziyi114@gmail.com designates 209.85.222.174 as permitted sender) smtp.mailfrom=guoziyi114@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8f984bddf4eso387303785a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 01:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778488457; x=1779093257; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VJ1nt1raVmWGZpEel8fILUUX9Nl0Zn9ZJYTC5Z/rJck=;
        b=AL7BPqrti6IfC5z1lR14Y1TkmjvbgYabUHVBYGfZl1J19iAVtVWV6iwVo5evfAvj69
         dE7ZbjwgPRQ4/G06CcdluIJhIYwLc3RZL/ddPpF0kr9M1rKRi2dt6aMuoluFfrdwVxsg
         TBZzVAWxreUfIU0vcDoWqI2e5Z7TTxzR0z8iJgrLfZKBtlC+aKytcve3f99q7A8qCINm
         9mMx1XoN8B/VAxp3KZHmj6srKYBMy8FF5PSRWGc8Hyyan/a01n7Av5FvYDzwxHJICAri
         8eD0nXoDdKTxBzvdFz0q97OtRIOGcA8GLqVdkcRSE7xjSEKq8FHq5C3qC/9jZADQVXTC
         S2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778488457; x=1779093257;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJ1nt1raVmWGZpEel8fILUUX9Nl0Zn9ZJYTC5Z/rJck=;
        b=YN6BbicoeR9bXp7ucjPWOL+uxZPSSkHPGTQUGTLcZRWtfd97RijaKPB7QtFYqtumiY
         62T/U5VPAbVExuvyjqn5cbK7quWpXvWZavhduSqzM+FQnEji27tTNrA8+NIzsj00y4Pr
         EVTP5LZH+443WxBh0hVQbCtttJwWuL4DBT3EkGjWwKBLirj4mwWNnCBXjBAPgSIJCD+y
         P3eq6qxvcV3zGbh7o+bH/BNOkDvQaL3RfycGp2vvUcQxAHfyfoO5EoBkIp96VM6kzxPo
         GOGeFiVX02wQYlXCeOsmbYmZOVCmB8A0A0VqKW5ELN0JPjDwxofb+Q1a7/6ZL688cDJs
         37Vw==
X-Forwarded-Encrypted: i=1; AFNElJ+SIGt0eqgfdxoGLFuueV6Gh4gezeAfOPjbud2Uodfmxw0HDmW+hLkOXOH5gtND9EHvClk571FVIlTfdPQa@lists.linaro.org
X-Gm-Message-State: AOJu0YykN8cuVC+yYTgrGM7CdksOakji0RoMd32Ueb7qcUnBFySlr4UY
	DT+HTbcDWMlDXxPGq2b028disYs1GUGITDLHFH7MveGEZU1fhxtAfBTbBI7yuwhj
X-Gm-Gg: Acq92OF1XFJv34G5V/MgtbNCXy4WsIvW5qpQh1mdNIoKhlgaqPAxZpHp3BQtJHVKR2V
	cG8wFjXCLFlj3GW/ABMmLsfGOQ1Ch3H9Vb4jvtNsC8MGZ/BzAW1nVw2Rh3OzhXcrq9lF6mu1zJa
	zaPqXVGqCuPLR4heIxFR9MIAiMpF4VI4KwwZbXDx3ajehiBwS3Sf1J/3+0l52NQgO8bmLr6mT25
	5v7Xsfm5quP8AiVkq+xGyU2QGh9fM+qA+bPqG1V7E55eadGcypnZbzxBJrwWhrD0L6O2Qx7JT+u
	5BVcfdICDul0JE5DJm8kL55MqRmQxiqbY9y+TI+TAQ/LcZPU8DFXpIP5nWPXDazJMp1PuN9sGrV
	MYD0IGJwTrvkEjvl7XGMmR7ST3Mtu20lby3z24FJ4svQi3G09rqNsgK/Kwggc5nQ4Z/7/3lUhs3
	i1xIvrTwmPuIap2MjfaENq912TXOJ+4JE6dVLgiiqyXuxf6u9KXdXwExAIlSIscfeSUNkikCBQn
	rV2bw3RLPozpyEQcb8cjlcMTzYAfaHRlMM0OEdjRqU=
X-Received: by 2002:a05:6214:3f81:b0:89c:a2b2:8d44 with SMTP id 6a1803df08f44-8bc451770demr211625746d6.39.1778257738686;
        Fri, 08 May 2026 09:28:58 -0700 (PDT)
Received: from security.cs.northwestern.edu (security.cs.northwestern.edu. [165.124.184.136])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8bf3b0c4db9sm21343796d6.4.2026.05.08.09.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 09:28:58 -0700 (PDT)
From: Ziyi Guo <guoziyi114@gmail.com>
X-Google-Original-From: Ziyi Guo <n7l8m4@u.northwestern.edu>
To: maciej.falkowski@linux.intel.com,
	karol.wachowski@linux.intel.com
Date: Fri,  8 May 2026 16:28:56 +0000
Message-Id: <20260508162856.1131843-1-n7l8m4@u.northwestern.edu>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: ++
X-Spam-Level: **
X-MailFrom: guoziyi114@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JPRL5PJALCC2S3I7GDH4L6BPHWU2TYVN
X-Message-ID-Hash: JPRL5PJALCC2S3I7GDH4L6BPHWU2TYVN
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: ogabbay@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Ziyi Guo <n7l8m4@u.northwestern.edu>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] accel/ivpu: Reject PRIME export of userptr BOs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JPRL5PJALCC2S3I7GDH4L6BPHWU2TYVN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 37CCA5324AD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.39 / 15.00];
	SEM_URIBL(3.50)[northwestern.edu:email];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[115];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_NEQ_ENVFROM(0.00)[guoziyi114@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.304];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,u.northwestern.edu:mid]
X-Rspamd-Action: no action

  Userptr BOs wrap pinned user pages in a private dma-buf solely for
  internal use by the NPU driver. Allowing userspace to re-export such a
  BO via DRM_IOCTL_PRIME_HANDLE_TO_FD would expose those pages to other
  drivers through an interface that was never intended to be shared.

  Override the driver's prime_handle_to_fd callback to detect dma-bufs
  backed by ivpu_gem_userptr_dmabuf_ops and reject the export with
  -EINVAL.

Signed-off-by: Ziyi Guo <n7l8m4@u.northwestern.edu>
---
 drivers/accel/ivpu/ivpu_drv.c         |  1 +
 drivers/accel/ivpu/ivpu_gem.c         | 28 +++++++++++++++++++++++++++
 drivers/accel/ivpu/ivpu_gem.h         |  3 +++
 drivers/accel/ivpu/ivpu_gem_userptr.c |  5 +++++
 4 files changed, 37 insertions(+)

diff --git a/drivers/accel/ivpu/ivpu_drv.c b/drivers/accel/ivpu/ivpu_drv.c
index 2801378e3e19..086d4c769b33 100644
--- a/drivers/accel/ivpu/ivpu_drv.c
+++ b/drivers/accel/ivpu/ivpu_drv.c
@@ -545,6 +545,7 @@ static const struct drm_driver driver = {
 
 	.gem_create_object = ivpu_gem_create_object,
 	.gem_prime_import = ivpu_gem_prime_import,
+	.prime_handle_to_fd = ivpu_gem_prime_handle_to_fd,
 
 	.ioctls = ivpu_drm_ioctls,
 	.num_ioctls = ARRAY_SIZE(ivpu_drm_ioctls),
diff --git a/drivers/accel/ivpu/ivpu_gem.c b/drivers/accel/ivpu/ivpu_gem.c
index 4f2005a8d496..82079f372b39 100644
--- a/drivers/accel/ivpu/ivpu_gem.c
+++ b/drivers/accel/ivpu/ivpu_gem.c
@@ -12,6 +12,7 @@
 #include <drm/drm_cache.h>
 #include <drm/drm_debugfs.h>
 #include <drm/drm_file.h>
+#include <drm/drm_prime.h>
 #include <drm/drm_utils.h>
 
 #include "ivpu_drv.h"
@@ -249,6 +250,33 @@ struct drm_gem_object *ivpu_gem_prime_import(struct drm_device *dev,
 	return ERR_PTR(ret);
 }
 
+int ivpu_gem_prime_handle_to_fd(struct drm_device *dev, struct drm_file *file_priv,
+				u32 handle, u32 flags, int *prime_fd)
+{
+	struct ivpu_device *vdev = to_ivpu_device(dev);
+	struct dma_buf *dmabuf;
+	int fd;
+
+	dmabuf = drm_gem_prime_handle_to_dmabuf(dev, file_priv, handle, flags);
+	if (IS_ERR(dmabuf))
+		return PTR_ERR(dmabuf);
+
+	if (ivpu_gem_is_userptr_dma_buf(dmabuf)) {
+		ivpu_dbg(vdev, IOCTL, "Exporting userptr BO is not allowed\n");
+		dma_buf_put(dmabuf);
+		return -EINVAL;
+	}
+
+	fd = dma_buf_fd(dmabuf, flags);
+	if (fd < 0) {
+		dma_buf_put(dmabuf);
+		return fd;
+	}
+
+	*prime_fd = fd;
+	return 0;
+}
+
 static struct ivpu_bo *ivpu_bo_alloc(struct ivpu_device *vdev, u64 size, u32 flags)
 {
 	struct drm_gem_shmem_object *shmem;
diff --git a/drivers/accel/ivpu/ivpu_gem.h b/drivers/accel/ivpu/ivpu_gem.h
index 0c3350f22b55..bfd15ce02354 100644
--- a/drivers/accel/ivpu/ivpu_gem.h
+++ b/drivers/accel/ivpu/ivpu_gem.h
@@ -29,6 +29,9 @@ void ivpu_bo_unbind_all_bos_from_context(struct ivpu_device *vdev, struct ivpu_m
 
 struct drm_gem_object *ivpu_gem_create_object(struct drm_device *dev, size_t size);
 struct drm_gem_object *ivpu_gem_prime_import(struct drm_device *dev, struct dma_buf *dma_buf);
+int ivpu_gem_prime_handle_to_fd(struct drm_device *dev, struct drm_file *file_priv,
+				u32 handle, u32 flags, int *prime_fd);
+bool ivpu_gem_is_userptr_dma_buf(struct dma_buf *dma_buf);
 struct ivpu_bo *ivpu_bo_create(struct ivpu_device *vdev, struct ivpu_mmu_context *ctx,
 			       struct ivpu_addr_range *range, u64 size, u32 flags);
 struct ivpu_bo *ivpu_bo_create_runtime(struct ivpu_device *vdev, u64 addr, u64 size, u32 flags);
diff --git a/drivers/accel/ivpu/ivpu_gem_userptr.c b/drivers/accel/ivpu/ivpu_gem_userptr.c
index 7cbf3a4cdc73..45eabea5961e 100644
--- a/drivers/accel/ivpu/ivpu_gem_userptr.c
+++ b/drivers/accel/ivpu/ivpu_gem_userptr.c
@@ -61,6 +61,11 @@ static const struct dma_buf_ops ivpu_gem_userptr_dmabuf_ops = {
 	.release = ivpu_gem_userptr_dmabuf_release,
 };
 
+bool ivpu_gem_is_userptr_dma_buf(struct dma_buf *dma_buf)
+{
+	return dma_buf->ops == &ivpu_gem_userptr_dmabuf_ops;
+}
+
 static struct dma_buf *
 ivpu_create_userptr_dmabuf(struct ivpu_device *vdev, void __user *user_ptr,
 			   size_t size, uint32_t flags)
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
