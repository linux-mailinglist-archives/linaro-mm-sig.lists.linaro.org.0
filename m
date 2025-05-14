Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C45CFAB73AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 19:57:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D980D459B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 17:57:35 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id E5754459BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 17:57:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=a6xr32g4;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-22e45088d6eso1466945ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 10:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747245435; x=1747850235; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSLYVQjOTOZYiQMTrnfPyfZsaxnus9kkFYB9Wzg3Y0s=;
        b=a6xr32g4i50+XgBNhTjp5jmyJZAk4iM2ayg+vpdA+2Rl2wm1EDeNl2sMDhLY3H3R96
         gE4EGXUa3prZboG/F3lXpYHztlG9Q5TgzgxceiHE1nQWcs1zykBNdso47a8t9vY/b/Hh
         7lVv8obLNbVMfoq9oG0aFOeO92xge9UwTfgEbHQoUrsaxBCweBUvICGhS7VkBa7TvgQV
         ZcNmFg1eHlEtUc1792bK84YswtYlcO89bgQtzg89JakhxKRDC8UQUlU+yaS2v6wlSXHT
         OGZh5ZDQ3vvS4JHRq17uZ7nTCnqdyky8y/SkcfMOI1TdLJA3iuEfW5QBnsHjqscQm/gb
         zWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747245435; x=1747850235;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSLYVQjOTOZYiQMTrnfPyfZsaxnus9kkFYB9Wzg3Y0s=;
        b=X0W/cPbRyoo9cV0vO/ujPhMLdgUn8tQdZ+rlE2k5ZD944tfw4eJdMb3FmqfVE2JbxV
         TkTpZtsVJUQYiRXb1HRuf89dbSU5i5EktIM4eTcVuYNA1dqMV0SEEfcdy+qeMzDbHGSo
         X9O4cGIF9ah19ufC98Xi3lQxGDTk98JHF9lKdtPlOJ9hUF21beA8vKeuoORXlEGVPCJe
         GuI2zh5X8XKW3WY5J7QHVwfaJdAvMnMkrWTSXJSLmXX9Q654d2A5i83o2m4zgzOrW/Ul
         Ssrz0cjlj+Y1CuHDyxkVNO0OQ0CVVlDAOu4TPn68r8V+pXntuO0dI54ZqaEYHx5ZhWhV
         Hgvw==
X-Forwarded-Encrypted: i=1; AJvYcCWUa5e3VVIeQoKuZ0teiTWejc5dnwDMYIPJj6jf6X3uNYEkfyYzXJJA4CPZ+ow936GzBZ4awi3GOokAK4Jl@lists.linaro.org
X-Gm-Message-State: AOJu0Yyk2/fGuj28F6KIfpN0edtw9qEz6s4NtBGbpCgrN4IRoNLlO/Be
	7wBGmBFT4Xm+Y432PBbIywy4JDWYhxNakwlgxDvXcw764eCksBha
X-Gm-Gg: ASbGncvEmuiWwpKMMX7Z/ufoS0+w4UN/pATBNyViTs3gOIJsagcOGiABrOq9yM+Khhg
	yznZvkH8HepW7JO1XEMwjBWpwV63mTGghi4sgP30M+l0cOgdWC6fZ3Wcf/x2ymdLzAR9RpGGUsL
	hTwbODlZmypQrm8did7udRAPBlNsKaI187m2cQhWneuqP7sMe5DnOVy5c9pKW7NeLyUwXu8LPmx
	mURMcBWtMv0ouFUFHtIXjiMstdFwJFw0olgXG1W04alAKD5NLlM6jhcdxWpWEA9rykAHqym5h8+
	K8XKyRV72uwyxxcTVS3t2c5duL/FnspQuVQkJwpVFKGnqMYEmTFO+ZLRLyTeceljdP3qwyohJqr
	ODme1cqj/lV04Q5p4790LJb1rtQ==
X-Google-Smtp-Source: AGHT+IHR2Bb8YWMbOaKglfjJLimIcYf2uvEe3uKHnBQ6V2fnK1OCPtlYmrcPCkebR1P5QhHuoj0gxw==
X-Received: by 2002:a17:903:1b4d:b0:224:1935:d9a3 with SMTP id d9443c01a7336-231980d7453mr73238395ad.21.1747245434977;
        Wed, 14 May 2025 10:57:14 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc8271c43sm102965515ad.139.2025.05.14.10.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 10:57:14 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 14 May 2025 10:53:43 -0700
Message-ID: <20250514175527.42488-30-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250514175527.42488-1-robdclark@gmail.com>
References: <20250514175527.42488-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E5754459BD
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,kernel.org,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,linaro.org,amd.com,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.214.177:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: AYQGY2FXCAB4NFSKK44DVMFQZW5GJLIV
X-Message-ID-Hash: AYQGY2FXCAB4NFSKK44DVMFQZW5GJLIV
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Simona Vetter <simona@ffwll.ch>, Konrad Dybcio <konradybcio@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 29/40] drm/msm: Extract out syncobj helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AYQGY2FXCAB4NFSKK44DVMFQZW5GJLIV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

We'll be re-using these for the VM_BIND ioctl.

Also, rename a few things in the uapi header to reflect that syncobj use
is not specific to the submit ioctl.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/Makefile         |   1 +
 drivers/gpu/drm/msm/msm_gem_submit.c | 192 ++-------------------------
 drivers/gpu/drm/msm/msm_syncobj.c    | 172 ++++++++++++++++++++++++
 drivers/gpu/drm/msm/msm_syncobj.h    |  37 ++++++
 include/uapi/drm/msm_drm.h           |  26 ++--
 5 files changed, 235 insertions(+), 193 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/msm_syncobj.c
 create mode 100644 drivers/gpu/drm/msm/msm_syncobj.h

diff --git a/drivers/gpu/drm/msm/Makefile b/drivers/gpu/drm/msm/Makefile
index 5df20cbeafb8..8af34f87e0c8 100644
--- a/drivers/gpu/drm/msm/Makefile
+++ b/drivers/gpu/drm/msm/Makefile
@@ -128,6 +128,7 @@ msm-y += \
 	msm_rd.o \
 	msm_ringbuffer.o \
 	msm_submitqueue.o \
+	msm_syncobj.o \
 	msm_gpu_tracepoints.o \
 
 msm-$(CONFIG_DRM_FBDEV_EMULATION) += msm_fbdev.o
diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index f282d691087f..bfb8c5ac1f1e 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -16,6 +16,7 @@
 #include "msm_gpu.h"
 #include "msm_gem.h"
 #include "msm_gpu_trace.h"
+#include "msm_syncobj.h"
 
 /* For userspace errors, use DRM_UT_DRIVER.. so that userspace can enable
  * error msgs for debugging, but we don't spam dmesg by default
@@ -486,173 +487,6 @@ void msm_submit_retire(struct msm_gem_submit *submit)
 	}
 }
 
-struct msm_submit_post_dep {
-	struct drm_syncobj *syncobj;
-	uint64_t point;
-	struct dma_fence_chain *chain;
-};
-
-static struct drm_syncobj **msm_parse_deps(struct msm_gem_submit *submit,
-                                           struct drm_file *file,
-                                           uint64_t in_syncobjs_addr,
-                                           uint32_t nr_in_syncobjs,
-                                           size_t syncobj_stride)
-{
-	struct drm_syncobj **syncobjs = NULL;
-	struct drm_msm_gem_submit_syncobj syncobj_desc = {0};
-	int ret = 0;
-	uint32_t i, j;
-
-	syncobjs = kcalloc(nr_in_syncobjs, sizeof(*syncobjs),
-	                   GFP_KERNEL | __GFP_NOWARN | __GFP_NORETRY);
-	if (!syncobjs)
-		return ERR_PTR(-ENOMEM);
-
-	for (i = 0; i < nr_in_syncobjs; ++i) {
-		uint64_t address = in_syncobjs_addr + i * syncobj_stride;
-
-		if (copy_from_user(&syncobj_desc,
-			           u64_to_user_ptr(address),
-			           min(syncobj_stride, sizeof(syncobj_desc)))) {
-			ret = -EFAULT;
-			break;
-		}
-
-		if (syncobj_desc.point &&
-		    !drm_core_check_feature(submit->dev, DRIVER_SYNCOBJ_TIMELINE)) {
-			ret = SUBMIT_ERROR(EOPNOTSUPP, submit, "syncobj timeline unsupported");
-			break;
-		}
-
-		if (syncobj_desc.flags & ~MSM_SUBMIT_SYNCOBJ_FLAGS) {
-			ret = SUBMIT_ERROR(EINVAL, submit, "invalid syncobj flags: %x", syncobj_desc.flags);
-			break;
-		}
-
-		ret = drm_sched_job_add_syncobj_dependency(&submit->base, file,
-							   syncobj_desc.handle, syncobj_desc.point);
-		if (ret)
-			break;
-
-		if (syncobj_desc.flags & MSM_SUBMIT_SYNCOBJ_RESET) {
-			syncobjs[i] =
-				drm_syncobj_find(file, syncobj_desc.handle);
-			if (!syncobjs[i]) {
-				ret = SUBMIT_ERROR(EINVAL, submit, "invalid syncobj handle: %u", i);
-				break;
-			}
-		}
-	}
-
-	if (ret) {
-		for (j = 0; j <= i; ++j) {
-			if (syncobjs[j])
-				drm_syncobj_put(syncobjs[j]);
-		}
-		kfree(syncobjs);
-		return ERR_PTR(ret);
-	}
-	return syncobjs;
-}
-
-static void msm_reset_syncobjs(struct drm_syncobj **syncobjs,
-                               uint32_t nr_syncobjs)
-{
-	uint32_t i;
-
-	for (i = 0; syncobjs && i < nr_syncobjs; ++i) {
-		if (syncobjs[i])
-			drm_syncobj_replace_fence(syncobjs[i], NULL);
-	}
-}
-
-static struct msm_submit_post_dep *msm_parse_post_deps(struct drm_device *dev,
-                                                       struct drm_file *file,
-                                                       uint64_t syncobjs_addr,
-                                                       uint32_t nr_syncobjs,
-                                                       size_t syncobj_stride)
-{
-	struct msm_submit_post_dep *post_deps;
-	struct drm_msm_gem_submit_syncobj syncobj_desc = {0};
-	int ret = 0;
-	uint32_t i, j;
-
-	post_deps = kcalloc(nr_syncobjs, sizeof(*post_deps),
-			    GFP_KERNEL | __GFP_NOWARN | __GFP_NORETRY);
-	if (!post_deps)
-		return ERR_PTR(-ENOMEM);
-
-	for (i = 0; i < nr_syncobjs; ++i) {
-		uint64_t address = syncobjs_addr + i * syncobj_stride;
-
-		if (copy_from_user(&syncobj_desc,
-			           u64_to_user_ptr(address),
-			           min(syncobj_stride, sizeof(syncobj_desc)))) {
-			ret = -EFAULT;
-			break;
-		}
-
-		post_deps[i].point = syncobj_desc.point;
-
-		if (syncobj_desc.flags) {
-			ret = UERR(EINVAL, dev, "invalid syncobj flags");
-			break;
-		}
-
-		if (syncobj_desc.point) {
-			if (!drm_core_check_feature(dev,
-			                            DRIVER_SYNCOBJ_TIMELINE)) {
-				ret = UERR(EOPNOTSUPP, dev, "syncobj timeline unsupported");
-				break;
-			}
-
-			post_deps[i].chain = dma_fence_chain_alloc();
-			if (!post_deps[i].chain) {
-				ret = -ENOMEM;
-				break;
-			}
-		}
-
-		post_deps[i].syncobj =
-			drm_syncobj_find(file, syncobj_desc.handle);
-		if (!post_deps[i].syncobj) {
-			ret = UERR(EINVAL, dev, "invalid syncobj handle");
-			break;
-		}
-	}
-
-	if (ret) {
-		for (j = 0; j <= i; ++j) {
-			dma_fence_chain_free(post_deps[j].chain);
-			if (post_deps[j].syncobj)
-				drm_syncobj_put(post_deps[j].syncobj);
-		}
-
-		kfree(post_deps);
-		return ERR_PTR(ret);
-	}
-
-	return post_deps;
-}
-
-static void msm_process_post_deps(struct msm_submit_post_dep *post_deps,
-                                  uint32_t count, struct dma_fence *fence)
-{
-	uint32_t i;
-
-	for (i = 0; post_deps && i < count; ++i) {
-		if (post_deps[i].chain) {
-			drm_syncobj_add_point(post_deps[i].syncobj,
-			                      post_deps[i].chain,
-			                      fence, post_deps[i].point);
-			post_deps[i].chain = NULL;
-		} else {
-			drm_syncobj_replace_fence(post_deps[i].syncobj,
-			                          fence);
-		}
-	}
-}
-
 int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 		struct drm_file *file)
 {
@@ -663,7 +497,7 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 	struct msm_gpu *gpu = priv->gpu;
 	struct msm_gpu_submitqueue *queue;
 	struct msm_ringbuffer *ring;
-	struct msm_submit_post_dep *post_deps = NULL;
+	struct msm_syncobj_post_dep *post_deps = NULL;
 	struct drm_syncobj **syncobjs_to_reset = NULL;
 	struct sync_file *sync_file = NULL;
 	int out_fence_fd = -1;
@@ -740,10 +574,10 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 	}
 
 	if (args->flags & MSM_SUBMIT_SYNCOBJ_IN) {
-		syncobjs_to_reset = msm_parse_deps(submit, file,
-		                                   args->in_syncobjs,
-		                                   args->nr_in_syncobjs,
-		                                   args->syncobj_stride);
+		syncobjs_to_reset = msm_syncobj_parse_deps(dev, &submit->base,
+							   file, args->in_syncobjs,
+							   args->nr_in_syncobjs,
+							   args->syncobj_stride);
 		if (IS_ERR(syncobjs_to_reset)) {
 			ret = PTR_ERR(syncobjs_to_reset);
 			goto out_unlock;
@@ -751,10 +585,10 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 	}
 
 	if (args->flags & MSM_SUBMIT_SYNCOBJ_OUT) {
-		post_deps = msm_parse_post_deps(dev, file,
-		                                args->out_syncobjs,
-		                                args->nr_out_syncobjs,
-		                                args->syncobj_stride);
+		post_deps = msm_syncobj_parse_post_deps(dev, file,
+							args->out_syncobjs,
+							args->nr_out_syncobjs,
+							args->syncobj_stride);
 		if (IS_ERR(post_deps)) {
 			ret = PTR_ERR(post_deps);
 			goto out_unlock;
@@ -897,10 +731,8 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 	args->fence = submit->fence_id;
 	queue->last_fence = submit->fence_id;
 
-	msm_reset_syncobjs(syncobjs_to_reset, args->nr_in_syncobjs);
-	msm_process_post_deps(post_deps, args->nr_out_syncobjs,
-	                      submit->user_fence);
-
+	msm_syncobj_reset(syncobjs_to_reset, args->nr_in_syncobjs);
+	msm_syncobj_process_post_deps(post_deps, args->nr_out_syncobjs, submit->user_fence);
 
 out:
 	submit_cleanup(submit, !!ret);
diff --git a/drivers/gpu/drm/msm/msm_syncobj.c b/drivers/gpu/drm/msm/msm_syncobj.c
new file mode 100644
index 000000000000..4baa9f522c54
--- /dev/null
+++ b/drivers/gpu/drm/msm/msm_syncobj.c
@@ -0,0 +1,172 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2020 Google, Inc */
+
+#include "drm/drm_drv.h"
+
+#include "msm_drv.h"
+#include "msm_syncobj.h"
+
+struct drm_syncobj **
+msm_syncobj_parse_deps(struct drm_device *dev,
+		       struct drm_sched_job *job,
+		       struct drm_file *file,
+		       uint64_t in_syncobjs_addr,
+		       uint32_t nr_in_syncobjs,
+		       size_t syncobj_stride)
+{
+	struct drm_syncobj **syncobjs = NULL;
+	struct drm_msm_syncobj syncobj_desc = {0};
+	int ret = 0;
+	uint32_t i, j;
+
+	syncobjs = kcalloc(nr_in_syncobjs, sizeof(*syncobjs),
+	                   GFP_KERNEL | __GFP_NOWARN | __GFP_NORETRY);
+	if (!syncobjs)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < nr_in_syncobjs; ++i) {
+		uint64_t address = in_syncobjs_addr + i * syncobj_stride;
+
+		if (copy_from_user(&syncobj_desc,
+			           u64_to_user_ptr(address),
+			           min(syncobj_stride, sizeof(syncobj_desc)))) {
+			ret = -EFAULT;
+			break;
+		}
+
+		if (syncobj_desc.point &&
+		    !drm_core_check_feature(dev, DRIVER_SYNCOBJ_TIMELINE)) {
+			ret = UERR(EOPNOTSUPP, dev, "syncobj timeline unsupported");
+			break;
+		}
+
+		if (syncobj_desc.flags & ~MSM_SYNCOBJ_FLAGS) {
+			ret = UERR(EINVAL, dev, "invalid syncobj flags: %x", syncobj_desc.flags);
+			break;
+		}
+
+		ret = drm_sched_job_add_syncobj_dependency(job, file,
+						   syncobj_desc.handle,
+						   syncobj_desc.point);
+		if (ret)
+			break;
+
+		if (syncobj_desc.flags & MSM_SYNCOBJ_RESET) {
+			syncobjs[i] = drm_syncobj_find(file, syncobj_desc.handle);
+			if (!syncobjs[i]) {
+				ret = UERR(EINVAL, dev, "invalid syncobj handle: %u", i);
+				break;
+			}
+		}
+	}
+
+	if (ret) {
+		for (j = 0; j <= i; ++j) {
+			if (syncobjs[j])
+				drm_syncobj_put(syncobjs[j]);
+		}
+		kfree(syncobjs);
+		return ERR_PTR(ret);
+	}
+	return syncobjs;
+}
+
+void
+msm_syncobj_reset(struct drm_syncobj **syncobjs, uint32_t nr_syncobjs)
+{
+	uint32_t i;
+
+	for (i = 0; syncobjs && i < nr_syncobjs; ++i) {
+		if (syncobjs[i])
+			drm_syncobj_replace_fence(syncobjs[i], NULL);
+	}
+}
+
+struct msm_syncobj_post_dep *
+msm_syncobj_parse_post_deps(struct drm_device *dev,
+			    struct drm_file *file,
+			    uint64_t syncobjs_addr,
+			    uint32_t nr_syncobjs,
+			    size_t syncobj_stride)
+{
+	struct msm_syncobj_post_dep *post_deps;
+	struct drm_msm_syncobj syncobj_desc = {0};
+	int ret = 0;
+	uint32_t i, j;
+
+	post_deps = kcalloc(nr_syncobjs, sizeof(*post_deps),
+			    GFP_KERNEL | __GFP_NOWARN | __GFP_NORETRY);
+	if (!post_deps)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < nr_syncobjs; ++i) {
+		uint64_t address = syncobjs_addr + i * syncobj_stride;
+
+		if (copy_from_user(&syncobj_desc,
+			           u64_to_user_ptr(address),
+			           min(syncobj_stride, sizeof(syncobj_desc)))) {
+			ret = -EFAULT;
+			break;
+		}
+
+		post_deps[i].point = syncobj_desc.point;
+
+		if (syncobj_desc.flags) {
+			ret = UERR(EINVAL, dev, "invalid syncobj flags");
+			break;
+		}
+
+		if (syncobj_desc.point) {
+			if (!drm_core_check_feature(dev,
+			                            DRIVER_SYNCOBJ_TIMELINE)) {
+				ret = UERR(EOPNOTSUPP, dev, "syncobj timeline unsupported");
+				break;
+			}
+
+			post_deps[i].chain = dma_fence_chain_alloc();
+			if (!post_deps[i].chain) {
+				ret = -ENOMEM;
+				break;
+			}
+		}
+
+		post_deps[i].syncobj =
+			drm_syncobj_find(file, syncobj_desc.handle);
+		if (!post_deps[i].syncobj) {
+			ret = UERR(EINVAL, dev, "invalid syncobj handle");
+			break;
+		}
+	}
+
+	if (ret) {
+		for (j = 0; j <= i; ++j) {
+			dma_fence_chain_free(post_deps[j].chain);
+			if (post_deps[j].syncobj)
+				drm_syncobj_put(post_deps[j].syncobj);
+		}
+
+		kfree(post_deps);
+		return ERR_PTR(ret);
+	}
+
+	return post_deps;
+}
+
+void
+msm_syncobj_process_post_deps(struct msm_syncobj_post_dep *post_deps,
+			      uint32_t count, struct dma_fence *fence)
+{
+	uint32_t i;
+
+	for (i = 0; post_deps && i < count; ++i) {
+		if (post_deps[i].chain) {
+			drm_syncobj_add_point(post_deps[i].syncobj,
+			                      post_deps[i].chain,
+			                      fence, post_deps[i].point);
+			post_deps[i].chain = NULL;
+		} else {
+			drm_syncobj_replace_fence(post_deps[i].syncobj,
+			                          fence);
+		}
+	}
+}
diff --git a/drivers/gpu/drm/msm/msm_syncobj.h b/drivers/gpu/drm/msm/msm_syncobj.h
new file mode 100644
index 000000000000..bcaa15d01da0
--- /dev/null
+++ b/drivers/gpu/drm/msm/msm_syncobj.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2020 Google, Inc */
+
+#ifndef __MSM_GEM_SYNCOBJ_H__
+#define __MSM_GEM_SYNCOBJ_H__
+
+#include "drm/drm_device.h"
+#include "drm/drm_syncobj.h"
+#include "drm/gpu_scheduler.h"
+
+struct msm_syncobj_post_dep {
+	struct drm_syncobj *syncobj;
+	uint64_t point;
+	struct dma_fence_chain *chain;
+};
+
+struct drm_syncobj **
+msm_syncobj_parse_deps(struct drm_device *dev,
+		       struct drm_sched_job *job,
+		       struct drm_file *file,
+		       uint64_t in_syncobjs_addr,
+		       uint32_t nr_in_syncobjs,
+		       size_t syncobj_stride);
+
+void msm_syncobj_reset(struct drm_syncobj **syncobjs, uint32_t nr_syncobjs);
+
+struct msm_syncobj_post_dep *
+msm_syncobj_parse_post_deps(struct drm_device *dev,
+			    struct drm_file *file,
+			    uint64_t syncobjs_addr,
+			    uint32_t nr_syncobjs,
+			    size_t syncobj_stride);
+
+void msm_syncobj_process_post_deps(struct msm_syncobj_post_dep *post_deps,
+				   uint32_t count, struct dma_fence *fence);
+
+#endif /* __MSM_GEM_SYNCOBJ_H__ */
diff --git a/include/uapi/drm/msm_drm.h b/include/uapi/drm/msm_drm.h
index 1bccc347945c..2c2fc4b284d0 100644
--- a/include/uapi/drm/msm_drm.h
+++ b/include/uapi/drm/msm_drm.h
@@ -220,6 +220,17 @@ struct drm_msm_gem_cpu_fini {
  * Cmdstream Submission:
  */
 
+#define MSM_SYNCOBJ_RESET 0x00000001 /* Reset syncobj after wait. */
+#define MSM_SYNCOBJ_FLAGS ( \
+		MSM_SYNCOBJ_RESET | \
+		0)
+
+struct drm_msm_syncobj {
+	__u32 handle;     /* in, syncobj handle. */
+	__u32 flags;      /* in, from MSM_SUBMIT_SYNCOBJ_FLAGS */
+	__u64 point;      /* in, timepoint for timeline syncobjs. */
+};
+
 /* The value written into the cmdstream is logically:
  *
  *   ((relocbuf->gpuaddr + reloc_offset) << shift) | or
@@ -309,17 +320,6 @@ struct drm_msm_gem_submit_bo {
 		MSM_SUBMIT_FENCE_SN_IN   | \
 		0)
 
-#define MSM_SUBMIT_SYNCOBJ_RESET 0x00000001 /* Reset syncobj after wait. */
-#define MSM_SUBMIT_SYNCOBJ_FLAGS        ( \
-		MSM_SUBMIT_SYNCOBJ_RESET | \
-		0)
-
-struct drm_msm_gem_submit_syncobj {
-	__u32 handle;     /* in, syncobj handle. */
-	__u32 flags;      /* in, from MSM_SUBMIT_SYNCOBJ_FLAGS */
-	__u64 point;      /* in, timepoint for timeline syncobjs. */
-};
-
 /* Each cmdstream submit consists of a table of buffers involved, and
  * one or more cmdstream buffers.  This allows for conditional execution
  * (context-restore), and IB buffers needed for per tile/bin draw cmds.
@@ -333,8 +333,8 @@ struct drm_msm_gem_submit {
 	__u64 cmds;           /* in, ptr to array of submit_cmd's */
 	__s32 fence_fd;       /* in/out fence fd (see MSM_SUBMIT_FENCE_FD_IN/OUT) */
 	__u32 queueid;        /* in, submitqueue id */
-	__u64 in_syncobjs;    /* in, ptr to array of drm_msm_gem_submit_syncobj */
-	__u64 out_syncobjs;   /* in, ptr to array of drm_msm_gem_submit_syncobj */
+	__u64 in_syncobjs;    /* in, ptr to array of drm_msm_syncobj */
+	__u64 out_syncobjs;   /* in, ptr to array of drm_msm_syncobj */
 	__u32 nr_in_syncobjs; /* in, number of entries in in_syncobj */
 	__u32 nr_out_syncobjs; /* in, number of entries in out_syncobj. */
 	__u32 syncobj_stride; /* in, stride of syncobj arrays. */
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
