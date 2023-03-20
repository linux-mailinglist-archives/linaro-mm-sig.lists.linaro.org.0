Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7542F6C1541
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 15:45:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 861F73F0BF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 14:45:24 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by lists.linaro.org (Postfix) with ESMTPS id EADCE441C7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 14:44:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=XoB4+mM4;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.182 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id u5so12653012plq.7
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 07:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679323487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=weYL3fqvUQCe/MGsBiphMuUm7IiUfAgwOkX0hsG5azI=;
        b=XoB4+mM4oASSRnco8nkZwARRG9zcXJcuiyLTtkB1/Em3LEQ2A1GcFBX4c9QpNQQF1j
         NODZTXwBb1ZsRgqzzncmT68xS+JsVOMXu4/yL4tqZacnngCN5gnrIyIgLpg67GCQaWu2
         3RGsxmBtiA8aCU5oOdtb6AigAsxMRRyYT/P3Xh3WrVDvz6jvLttylpc7USgWWQ44GVqe
         rYzg55l+AaLbimu//o2q7VRZZJ2UA2rlR+D7WRutg8GbWIEPrBcIPRitI3OqhFoohqaA
         20Pha7DZD60SGbvPicWbg+l+r5k+WAzhnRYWrhfrBafJ9eHbu4hwWd94ZwQX/0whZg/7
         88jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679323487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=weYL3fqvUQCe/MGsBiphMuUm7IiUfAgwOkX0hsG5azI=;
        b=dApGX0vxPhHkK4wgqmDlbdfHPKPb9SS5fcalxXSMGA5xK3tgXLRSkFNiZBMcunxrxj
         MLcLMKpFs8pV1z2o2DAx0unH4Y9enES/k3A9gzpfAnRSkfalCv14YZW+HB9Qzqexlt4X
         9Rv0sKpQnedaMkZLC+k7NnBw26muia6DWelCTHt9vO3s4sB388aiyLXnJ6y2bIym0lA0
         15j4TzT5OZj/CrZLywB9GLClOC1sNEkMQZlGZpSa2VjN6ZrtpxCHIWgT/B/6jPnVkzjt
         5IN2/M4r+65fKoksyfwNu4nu89DeNLm94DiEsAK2ocOTC2AbqJOB7s9RBghucq+oYMGw
         vpJw==
X-Gm-Message-State: AO0yUKVzYLe06dc4L3Vy15PkrFo0eAg4EsESi1z5K2fFJZBxplHJjm9b
	zkdFWSSS0tksxiLt004+AfQ=
X-Google-Smtp-Source: AK7set/q6mxFL2SNpoyCJqlGoIsp6zXx5THF6Tar0/8ALnqXrSzyWxWyrmITe8Cih+IgIxzET11mjA==
X-Received: by 2002:a17:902:d2ca:b0:19d:1c6e:d31e with SMTP id n10-20020a170902d2ca00b0019d1c6ed31emr21226848plc.60.1679323487099;
        Mon, 20 Mar 2023 07:44:47 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id g7-20020a170902934700b0019d397b0f18sm6777259plp.214.2023.03.20.07.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 07:44:46 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 20 Mar 2023 07:43:31 -0700
Message-Id: <20230320144356.803762-10-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320144356.803762-1-robdclark@gmail.com>
References: <20230320144356.803762-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EADCE441C7
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.182:from];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[ffwll.ch,lists.freedesktop.org,vger.kernel.org,chromium.org,gmail.com,quicinc.com,linaro.org,poorly.run,amd.com,lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: KEHQUZUT43A6VQFICOWBMO7GKEYUFGJU
X-Message-ID-Hash: KEHQUZUT43A6VQFICOWBMO7GKEYUFGJU
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 09/23] drm/msm/gem: Avoid obj lock in job_run()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KEHQUZUT43A6VQFICOWBMO7GKEYUFGJU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Now that everything that controls which LRU an obj lives in *except* the
backing pages is protected by the LRU lock, add a special path to unpin
in the job_run() path, we we are assured that we already have backing
pages and will not be racing against eviction (because the GEM object's
dma_resv contains the fence that will be signaled when the submit/job
completes).

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_gem.c        | 44 +++++++++++++++++++++++-----
 drivers/gpu/drm/msm/msm_gem.h        |  1 +
 drivers/gpu/drm/msm/msm_ringbuffer.c |  4 +--
 3 files changed, 39 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index d0ac3e704b66..9628e8d8dd02 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -61,18 +61,14 @@ static void sync_for_cpu(struct msm_gem_object *msm_obj)
 	dma_unmap_sgtable(dev, msm_obj->sgt, DMA_BIDIRECTIONAL, 0);
 }
 
-static void update_lru_locked(struct drm_gem_object *obj)
+static void update_lru_active(struct drm_gem_object *obj)
 {
 	struct msm_drm_private *priv = obj->dev->dev_private;
 	struct msm_gem_object *msm_obj = to_msm_bo(obj);
 
-	msm_gem_assert_locked(&msm_obj->base);
-
-	if (!msm_obj->pages) {
-		GEM_WARN_ON(msm_obj->pin_count);
+	GEM_WARN_ON(!msm_obj->pages);
 
-		drm_gem_lru_move_tail_locked(&priv->lru.unbacked, obj);
-	} else if (msm_obj->pin_count) {
+	if (msm_obj->pin_count) {
 		drm_gem_lru_move_tail_locked(&priv->lru.pinned, obj);
 	} else if (msm_obj->madv == MSM_MADV_WILLNEED) {
 		drm_gem_lru_move_tail_locked(&priv->lru.willneed, obj);
@@ -83,6 +79,22 @@ static void update_lru_locked(struct drm_gem_object *obj)
 	}
 }
 
+static void update_lru_locked(struct drm_gem_object *obj)
+{
+	struct msm_drm_private *priv = obj->dev->dev_private;
+	struct msm_gem_object *msm_obj = to_msm_bo(obj);
+
+	msm_gem_assert_locked(&msm_obj->base);
+
+	if (!msm_obj->pages) {
+		GEM_WARN_ON(msm_obj->pin_count);
+
+		drm_gem_lru_move_tail_locked(&priv->lru.unbacked, obj);
+	} else {
+		update_lru_active(obj);
+	}
+}
+
 static void update_lru(struct drm_gem_object *obj)
 {
 	struct msm_drm_private *priv = obj->dev->dev_private;
@@ -489,6 +501,24 @@ void msm_gem_unpin_locked(struct drm_gem_object *obj)
 	mutex_unlock(&priv->lru.lock);
 }
 
+/* Special unpin path for use in fence-signaling path, avoiding the need
+ * to hold the obj lock by only depending on things that a protected by
+ * the LRU lock.  In particular we know that that we already have backing
+ * and and that the object's dma_resv has the fence for the current
+ * submit/job which will prevent us racing against page eviction.
+ */
+void msm_gem_unpin_active(struct drm_gem_object *obj)
+{
+	struct msm_drm_private *priv = obj->dev->dev_private;
+	struct msm_gem_object *msm_obj = to_msm_bo(obj);
+
+	mutex_lock(&priv->lru.lock);
+	msm_obj->pin_count--;
+	GEM_WARN_ON(msm_obj->pin_count < 0);
+	update_lru_active(obj);
+	mutex_unlock(&priv->lru.lock);
+}
+
 struct msm_gem_vma *msm_gem_get_vma_locked(struct drm_gem_object *obj,
 					   struct msm_gem_address_space *aspace)
 {
diff --git a/drivers/gpu/drm/msm/msm_gem.h b/drivers/gpu/drm/msm/msm_gem.h
index 0057e8e8fa13..2bd6846c83a9 100644
--- a/drivers/gpu/drm/msm/msm_gem.h
+++ b/drivers/gpu/drm/msm/msm_gem.h
@@ -128,6 +128,7 @@ struct msm_gem_object {
 uint64_t msm_gem_mmap_offset(struct drm_gem_object *obj);
 int msm_gem_pin_vma_locked(struct drm_gem_object *obj, struct msm_gem_vma *vma);
 void msm_gem_unpin_locked(struct drm_gem_object *obj);
+void msm_gem_unpin_active(struct drm_gem_object *obj);
 struct msm_gem_vma *msm_gem_get_vma_locked(struct drm_gem_object *obj,
 					   struct msm_gem_address_space *aspace);
 int msm_gem_get_iova(struct drm_gem_object *obj,
diff --git a/drivers/gpu/drm/msm/msm_ringbuffer.c b/drivers/gpu/drm/msm/msm_ringbuffer.c
index 31b4fbf96c36..b60199184409 100644
--- a/drivers/gpu/drm/msm/msm_ringbuffer.c
+++ b/drivers/gpu/drm/msm/msm_ringbuffer.c
@@ -24,9 +24,7 @@ static struct dma_fence *msm_job_run(struct drm_sched_job *job)
 		struct drm_gem_object *obj = &submit->bos[i].obj->base;
 
 		msm_gem_vma_unpin_fenced(submit->bos[i].vma, fctx);
-		msm_gem_lock(obj);
-		msm_gem_unpin_locked(obj);
-		msm_gem_unlock(obj);
+		msm_gem_unpin_active(obj);
 		submit->bos[i].flags &= ~(BO_VMA_PINNED | BO_OBJ_PINNED);
 	}
 
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
