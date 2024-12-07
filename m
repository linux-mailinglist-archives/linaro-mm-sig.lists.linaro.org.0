Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 914059E80D9
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Dec 2024 17:18:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF10F4043F
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Dec 2024 16:18:55 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by lists.linaro.org (Postfix) with ESMTPS id 1B84744628
	for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Dec 2024 16:18:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=GLiYDLNW;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.182 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-724e14b90cfso3085046b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 07 Dec 2024 08:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733588290; x=1734193090; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IyIQTPEzZRAeS1qQla708q/4zgKpLleeCQ9ko3M4emo=;
        b=GLiYDLNWfLfrP4jUIMDhclKqFCfYmGQudDLRovoRkCmkIQ4lHu83tCpw9c4prSvB3E
         tHsbh5of6erc6DrROhSh8lvNujHqJdeFq2ABJGHj87mE+zBWwltZ2lXTEaPfWgXbd4kD
         Wh0Xy3bfig12hQoUeCPGmt28LwPASq5472bVbSa3QPUn9hbK4bt4Qmjrq+2g3IC7ACpj
         TU0zJrmLCmCUJZSQgRt4Gy/ZbiXa/vpXt3h/hkyazT0+o/MjR/Hp7MYFOTmU92bPs1qK
         tFc88xMcC4qVz5iCFwa0xmnJ3OGoNR7o29BD4k/2x+KEdz3m7l1BnxN2lqMC9EWR//YD
         GDIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733588290; x=1734193090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IyIQTPEzZRAeS1qQla708q/4zgKpLleeCQ9ko3M4emo=;
        b=wUzO32tLySKXnMUVBeWsklLKyrTsNLBMJjgCgxMhS2I3P3EetOhN75VFF+NZ6bbam+
         kQ4H0Ca/mgPq6Lpl4zZdLBLABgqa5QHhGiFXZHUdL0N0x4DaEAY3vy6QzAIWys5kiHE6
         ApkItvXPrFiIgG9bRBb2kXzcWrazrRV51iFDW+4oPhD+CdITMnn9Xi+G9o9DaOcrmRIJ
         GNyvIWfHB4y/adw9RCqdfMXZW0NRUFWLPbvBOevk8mkNret5Ayb1ri47Pjrk+Wf7oOjI
         3pbRSbJXentHcphpzOTLeVMDAIw2/K5HS5nCyN/rRWWK10RGFcOywKFyNPK3zk5HtTQj
         S3Sg==
X-Forwarded-Encrypted: i=1; AJvYcCXzPMrjj1TLGXoXzm5uo1jPuIMRoHcrZJoc2o1JbEHe6MZM0u76uZPkF3Zc8nug7jyZ121iygzoxB0j3enF@lists.linaro.org
X-Gm-Message-State: AOJu0YzcT4i7oLVnsw2cagt7rsLEhUgP9XYPTd6UfDQizhY3gmCvqr8Y
	b34fmqTVI4SKKItXR9XucLynwyY9KNbcND2oG6RUlsFDY5bcdlCj
X-Gm-Gg: ASbGncv2toNhfwYostye6bAYzSpowOe/r0zYN3OjaHj3ZJeaJFjElKyuuyQh6SfMvPR
	XEGBqU88d20FCWZWNyjZsXylSOUUkqeblHHPY+XFfFL//O7vO+7YkSijtpAilv6x1Q4QZKjAbW5
	3SEs0rCzGtAoXh24G6C2Bej7MwdGyGef6lrxEbuKW1fROceHqRJTsqn7rdWRT+BgW3UD7R3Lp2x
	z5+/Ggxm2vjXLUgg68M5Bm2Wri5T+xtobCj0KvNs1GpZDg8OdWuYGHjNflQI5lGMA3Cz+zfxpkX
	rs+3QzQI
X-Google-Smtp-Source: AGHT+IH4HL1U3hdxxpSBUgHr8euIo6pL350TQqGVjNEoKJJrUHlPQJvlC5hz1/gTOJO0CknwxlmDkg==
X-Received: by 2002:a05:6a20:6a07:b0:1d8:a9c0:8853 with SMTP id adf61e73a8af0-1e1870c78e5mr9414508637.23.1733588290215;
        Sat, 07 Dec 2024 08:18:10 -0800 (PST)
Received: from localhost (c-73-37-105-206.hsd1.or.comcast.net. [73.37.105.206])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725a2ca671asm4650775b3a.153.2024.12.07.08.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 08:18:09 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat,  7 Dec 2024 08:15:18 -0800
Message-ID: <20241207161651.410556-19-robdclark@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241207161651.410556-1-robdclark@gmail.com>
References: <20241207161651.410556-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 1B84744628
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.182:from];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,quicinc.com,chromium.org,linaro.org,poorly.run,somainline.org,ffwll.ch,kernel.org,linux.intel.com,suse.de,amd.com,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.210.182:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R34Y72AGYUX6BBRZ2A5APN5VQPXSDGRQ
X-Message-ID-Hash: R34Y72AGYUX6BBRZ2A5APN5VQPXSDGRQ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Akhil P Oommen <quic_akhilpo@quicinc.com>, Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Simona Vetter <simona@ffwll.ch>, Konrad Dybcio <konradybcio@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC 18/24] drm/msm: Add _NO_SHARE flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R34Y72AGYUX6BBRZ2A5APN5VQPXSDGRQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Buffers that are not shared between contexts can share a single resv
object.  This way drm_gpuvm will not track them as external objects, and
submit-time validating overhead will be O(1) for all N non-shared BOs,
instead of O(n).

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_drv.h       |  1 +
 drivers/gpu/drm/msm/msm_gem.c       | 23 +++++++++++++++++++++++
 drivers/gpu/drm/msm/msm_gem_prime.c | 15 +++++++++++++++
 include/uapi/drm/msm_drm.h          | 14 ++++++++++++++
 4 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_drv.h b/drivers/gpu/drm/msm/msm_drv.h
index 80582c0c2bf7..4c7ff83a0a20 100644
--- a/drivers/gpu/drm/msm/msm_drv.h
+++ b/drivers/gpu/drm/msm/msm_drv.h
@@ -246,6 +246,7 @@ int msm_gem_prime_vmap(struct drm_gem_object *obj, struct iosys_map *map);
 void msm_gem_prime_vunmap(struct drm_gem_object *obj, struct iosys_map *map);
 struct drm_gem_object *msm_gem_prime_import_sg_table(struct drm_device *dev,
 		struct dma_buf_attachment *attach, struct sg_table *sg);
+struct dma_buf *msm_gem_prime_export(struct drm_gem_object *obj, int flags);
 int msm_gem_prime_pin(struct drm_gem_object *obj);
 void msm_gem_prime_unpin(struct drm_gem_object *obj);
 
diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index 66332481c4c3..c21e1284f289 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -511,6 +511,9 @@ static int get_and_pin_iova_range_locked(struct drm_gem_object *obj,
 
 	msm_gem_assert_locked(obj);
 
+	if (to_msm_bo(obj)->flags & MSM_BO_NO_SHARE)
+		return -EINVAL;
+
 	vma = get_vma_locked(obj, vm, range_start, range_end);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
@@ -1026,6 +1029,16 @@ static void msm_gem_free_object(struct drm_gem_object *obj)
 		put_iova_vmas(obj);
 	}
 
+	if (msm_obj->flags & MSM_BO_NO_SHARE) {
+		struct drm_gem_object *r_obj =
+			container_of(obj->resv, struct drm_gem_object, _resv);
+
+		BUG_ON(obj->resv == &obj->_resv);
+
+		/* Drop reference we hold to shared resv obj: */
+		drm_gem_object_put(r_obj);
+	}
+
 	drm_gem_object_release(obj);
 
 	kfree(msm_obj->metadata);
@@ -1058,6 +1071,15 @@ int msm_gem_new_handle(struct drm_device *dev, struct drm_file *file,
 	if (name)
 		msm_gem_object_set_name(obj, "%s", name);
 
+	if (flags & MSM_BO_NO_SHARE) {
+		struct msm_context *ctx = file->driver_priv;
+		struct drm_gem_object *r_obj = drm_gpuvm_resv_obj(ctx->vm);
+
+		drm_gem_object_get(r_obj);
+
+		obj->resv = r_obj->resv;
+	}
+
 	ret = drm_gem_handle_create(file, obj, handle);
 
 	/* drop reference from allocate - handle holds it now */
@@ -1090,6 +1112,7 @@ static const struct drm_gem_object_funcs msm_gem_object_funcs = {
 	.free = msm_gem_free_object,
 	.open = msm_gem_open,
 	.close = msm_gem_close,
+	.export = msm_gem_prime_export,
 	.pin = msm_gem_prime_pin,
 	.unpin = msm_gem_prime_unpin,
 	.get_sg_table = msm_gem_prime_get_sg_table,
diff --git a/drivers/gpu/drm/msm/msm_gem_prime.c b/drivers/gpu/drm/msm/msm_gem_prime.c
index ee267490c935..1a6d8099196a 100644
--- a/drivers/gpu/drm/msm/msm_gem_prime.c
+++ b/drivers/gpu/drm/msm/msm_gem_prime.c
@@ -16,6 +16,9 @@ struct sg_table *msm_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	struct msm_gem_object *msm_obj = to_msm_bo(obj);
 	int npages = obj->size >> PAGE_SHIFT;
 
+	if (msm_obj->flags & MSM_BO_NO_SHARE)
+		return ERR_PTR(-EINVAL);
+
 	if (WARN_ON(!msm_obj->pages))  /* should have already pinned! */
 		return ERR_PTR(-ENOMEM);
 
@@ -45,6 +48,15 @@ struct drm_gem_object *msm_gem_prime_import_sg_table(struct drm_device *dev,
 	return msm_gem_import(dev, attach->dmabuf, sg);
 }
 
+
+struct dma_buf *msm_gem_prime_export(struct drm_gem_object *obj, int flags)
+{
+	if (to_msm_bo(obj)->flags & MSM_BO_NO_SHARE)
+		return ERR_PTR(-EPERM);
+
+	return drm_gem_prime_export(obj, flags);
+}
+
 int msm_gem_prime_pin(struct drm_gem_object *obj)
 {
 	struct page **pages;
@@ -53,6 +65,9 @@ int msm_gem_prime_pin(struct drm_gem_object *obj)
 	if (obj->import_attach)
 		return 0;
 
+	if (to_msm_bo(obj)->flags & MSM_BO_NO_SHARE)
+		return -EINVAL;
+
 	pages = msm_gem_pin_pages_locked(obj);
 	if (IS_ERR(pages))
 		ret = PTR_ERR(pages);
diff --git a/include/uapi/drm/msm_drm.h b/include/uapi/drm/msm_drm.h
index 39b55c8d7413..a7e48ee1dd95 100644
--- a/include/uapi/drm/msm_drm.h
+++ b/include/uapi/drm/msm_drm.h
@@ -138,6 +138,19 @@ struct drm_msm_param {
 
 #define MSM_BO_SCANOUT       0x00000001     /* scanout capable */
 #define MSM_BO_GPU_READONLY  0x00000002
+/* Private buffers do not need to be explicitly listed in the SUBMIT
+ * ioctl, unless referenced by a drm_msm_gem_submit_cmd.  Private
+ * buffers may NOT be imported/exported or used for scanout (or any
+ * other situation where buffers can be indefinitely pinned, but
+ * cases other than scanout are all kernel owned BOs which are not
+ * visible to userspace).
+ *
+ * In exchange for those constraints, all private BOs associated with
+ * a single context (drm_file) share a single dma_resv, and if there
+ * has been no eviction since the last submit, there are no per-BO
+ * bookeeping to do, significantly cutting the SUBMIT overhead.
+ */
+#define MSM_BO_NO_SHARE      0x00000004
 #define MSM_BO_CACHE_MASK    0x000f0000
 /* cache modes */
 #define MSM_BO_CACHED        0x00010000
@@ -147,6 +160,7 @@ struct drm_msm_param {
 
 #define MSM_BO_FLAGS         (MSM_BO_SCANOUT | \
                               MSM_BO_GPU_READONLY | \
+                              MSM_BO_NO_SHARE | \
                               MSM_BO_CACHE_MASK)
 
 struct drm_msm_gem_new {
-- 
2.47.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
