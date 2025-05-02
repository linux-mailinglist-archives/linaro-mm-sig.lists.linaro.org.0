Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6789FAA783C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 19:09:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82EB745F7C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 17:09:15 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by lists.linaro.org (Postfix) with ESMTPS id ADCF043CF9
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 17:09:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=GZ3r2aey;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.43 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-30572effb26so2334835a91.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 10:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746205742; x=1746810542; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MtDpB0PTtkYXhtnhSwYfqz5Rac+7v9V6aZ5T1mp1bHo=;
        b=GZ3r2aeyF+3PUJAl3ZZDgNfufs+fEyDoh2X+3TMGTCwrKUk87kX/jxkVr6DpzJ6Y0W
         Nmg1R8NsRnQXs5WD3uElCjoakxgn8kzPUYfD13HYPZ4UUXZWC5skq7K5epotmX3vRHwI
         XpuerkQPqJwd/nz18FqledHbQ81yZwvTZ6c4lT8rOhihhXNHn4Zxt4GjPEDnbH4zGrku
         afN75PDyZQY7Q2S3E1kvR4yniE8bw7t9bNmehNMmr3UO8FmIVbG+7k4SzlU2rTgXvwgR
         Y5aDPBHpenQwS/M1VvDoRM9O6LXHXB+UdUx5ofOfh0Z/9xM2cejxMsvbGQeJq4lPTVu2
         JR2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746205742; x=1746810542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MtDpB0PTtkYXhtnhSwYfqz5Rac+7v9V6aZ5T1mp1bHo=;
        b=vsHB7l8KCjgwKRzC36g8VlZ0VeBE8FUhB7At9LsY2+wlruNIkXieo57UOq91PVn7m7
         xyBgXCmEYij5oQmFgEwZr9p7d5rdr1+73U0Sc1iMmknbwByayWi/NnqkUwNGWQk3I86o
         LzRJyxMEnFNb0yHJW9hpWc6hQ7sT3b2qOCm5jZF3NcmZx1SMpJOPQqkaqI3D/4atcrmh
         2crZ6u/2BVmywbD8XZ8xMewXseVE/Zv8dOpEMrRTuOENFqRIWiqZ9fRQFunoUawudQyp
         aZMIwQGefqRjEVENMqoM5vseLoiOsQZcpvOSLbCrY2h+bxcI8BpsH6ikXIe8EVKx5sSR
         NBsg==
X-Forwarded-Encrypted: i=1; AJvYcCU8u3dzFoOZ4AUFdqmqF6y5Ziq3F+D+CTfjfIDakCIhIK1FgopnYvCu7t2CaVeG+/GfKzZTd/bjbXKmO8ql@lists.linaro.org
X-Gm-Message-State: AOJu0YyAcLkBKnCIXPRbrscSO+RUh5eJ4x8aArrW5s+k/8O1FqoW+uR6
	hHAW09x1SCqgK67Yzx7Rhr0C77qnZvkt4wwirf6m2AZ6g688FkiO
X-Gm-Gg: ASbGncss2DCD3csGZst3ylnxFnMR8zpOAyZ75MSryQ+Q0uoraHixHzsYACNhJamlR6D
	mmOwdhPWZnDUhZ5XxkUONUP2/F7w2huzNzKV6M5IGAaP4+kaY02Otbgh87DVWcZrD3i0TAiybWt
	SpcFanZZk0bGWH5syD4YyfTCL3ul6LrPlKTLJgRQYMwutXbeG4y4vu98DycNVbfECbixsJeDLyg
	xz4e+ikKKMqKBSlF8J9cUxmPq2AkJTzGyI+lhheYUV8Ww175KeG10ddkuCrwKrwJwz7jvKjzaUi
	tCqIASzhq4sVeeOMrVsJ9N91m7FH6348qboRYhm922oEWlruGTdbTSkJSporyGRgeJq0DOsTnUe
	fB2fWmqsdkZjjgwc=
X-Google-Smtp-Source: AGHT+IGLzKtYhNPQcCcQ2sZuQ0mQkyBKqT6pl2xwj7tGeCiuCY8O4svTaB6TFce8aGq4JdBMzo4gEQ==
X-Received: by 2002:a17:90b:1dc7:b0:308:5273:4df8 with SMTP id 98e67ed59e1d1-30a4e5a57e5mr6927234a91.10.1746205741705;
        Fri, 02 May 2025 10:09:01 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30a3478093csm5941045a91.29.2025.05.02.10.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 10:09:01 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  2 May 2025 09:56:48 -0700
Message-ID: <20250502165831.44850-22-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250502165831.44850-1-robdclark@gmail.com>
References: <20250502165831.44850-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ADCF043CF9
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.43:from];
	MIME_GOOD(-0.10)[text/plain];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[chromium.org:email,mail-pj1-f43.google.com:helo,mail-pj1-f43.google.com:rdns];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,kernel.org,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,linaro.org,amd.com,lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.216.43:from]
X-Rspamd-Action: no action
Message-ID-Hash: JD5MOQNCXE3DGC242HQNCVMNQYVV2BC3
X-Message-ID-Hash: JD5MOQNCXE3DGC242HQNCVMNQYVV2BC3
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Simona Vetter <simona@ffwll.ch>, Konrad Dybcio <konradybcio@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 21/33] drm/msm: Add _NO_SHARE flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JD5MOQNCXE3DGC242HQNCVMNQYVV2BC3/>
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
index b77fd2c531c3..b0add236cbb3 100644
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
index 3708d4579203..d0f44c981351 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -532,6 +532,9 @@ static int get_and_pin_iova_range_locked(struct drm_gem_object *obj,
 
 	msm_gem_assert_locked(obj);
 
+	if (to_msm_bo(obj)->flags & MSM_BO_NO_SHARE)
+		return -EINVAL;
+
 	vma = get_vma_locked(obj, vm, range_start, range_end);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
@@ -1060,6 +1063,16 @@ static void msm_gem_free_object(struct drm_gem_object *obj)
 		put_pages(obj);
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
@@ -1092,6 +1105,15 @@ int msm_gem_new_handle(struct drm_device *dev, struct drm_file *file,
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
@@ -1124,6 +1146,7 @@ static const struct drm_gem_object_funcs msm_gem_object_funcs = {
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
index b974f5a24dbc..1bccc347945c 100644
--- a/include/uapi/drm/msm_drm.h
+++ b/include/uapi/drm/msm_drm.h
@@ -140,6 +140,19 @@ struct drm_msm_param {
 
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
@@ -149,6 +162,7 @@ struct drm_msm_param {
 
 #define MSM_BO_FLAGS         (MSM_BO_SCANOUT | \
                               MSM_BO_GPU_READONLY | \
+                              MSM_BO_NO_SHARE | \
                               MSM_BO_CACHE_MASK)
 
 struct drm_msm_gem_new {
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
