Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 84772400526
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E81A63223
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C700163247; Fri,  3 Sep 2021 18:44:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C29D61179;
	Fri,  3 Sep 2021 18:44:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C4D6E61179
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A8934617A2; Fri,  3 Sep 2021 18:44:14 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by lists.linaro.org (Postfix) with ESMTPS id 6F30961B00
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:12 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id m17so73011plc.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kNd3pUa8VSDFpXZWbZznThqTaFkdBW02YtveOJexbvE=;
 b=el/Zyhzpq6C+lzW0KZNT3TFdyeQ8+s8DzNLce41glYYoXilPWJigLGAcl7Q7Qrvw0+
 UfNiy4xhac1Sy6WJfGwwpQwCh5/yED257sTorJ25yPS9uaoLuhbnAmyru+Jsj7EVtaLi
 s0lVN5ibn0UB6p0AaQvZBZAKsqXyuGcvYbTC0FVnQ1cNmOXytt8lxLINdFGk+hnBSUm3
 4qwVsmij7cAryCVADzufMgZanMMfWSLpAYleYs36ko4yROAW1BdK/XCbTc5ZEP15fBpv
 18HpjqyCQ5fuWY5oNpe8PAnz9tTgLP/0tN8iU85H1JiMPaQor8/5uPgvDsW2w7GrtVXn
 nvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kNd3pUa8VSDFpXZWbZznThqTaFkdBW02YtveOJexbvE=;
 b=KRNDnZjTN9+dhncGTCgrjtllGhPfcRo3wrNvtOQmQlm88o3ICR6g2kR9W4Hj3inBwK
 k7vK/fef2/6kM77gsCcpc32zHd3DCMp5N96NfP2S6o/YStzffpqDHS43Bs0AUN1AJy7h
 H0IojzfLtnh7nOoDAVRNEw2fg3mfxol6kNNfezjqfK52PfSo0yAQqnIuFjg8Pwc/iwlp
 5srGRfAfTSDnCI8nADkZay38fkcfDVu5BFFoumZbqA0rR1M8k+0bH5eOgXdjnCP+g7Zl
 ZMwUf/1p8ufq7LIGsrlJDkq+33ZboPJq1YgsShLt4SOx+8mRWEc4/i6Oc+FvzIm5UIHX
 HUfg==
X-Gm-Message-State: AOAM531DOQY/K6cI71rtVVzL7+AZfVZivV+UAz81wpEDbEyXeipORhCl
 +u95mu66aB4R8X2dfMM2MOC7lZsWSBM=
X-Google-Smtp-Source: ABdhPJx9HNwvwUsGKFTzFNKJfhQcPK7maQv1m8szkB9X9brPKTc5jjLVn0vz9WuNpr/OXk2o+TaAzg==
X-Received: by 2002:a17:90a:b389:: with SMTP id e9mr361971pjr.94.1630694651583; 
 Fri, 03 Sep 2021 11:44:11 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 u8sm105925pgc.69.2021.09.03.11.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:44:10 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:55 -0700
Message-Id: <20210903184806.1680887-5-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210903184806.1680887-1-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 4/9] drm/scheduler: Add fence deadline
 support
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Melissa Wen <mwen@igalia.com>, Pekka Paalanen <ppaalanen@gmail.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tian Tao <tiantao6@hisilicon.com>, Steven Price <steven.price@arm.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

As the finished fence is the one that is exposed to userspace, and
therefore the one that other operations, like atomic update, would
block on, we need to propagate the deadline from from the finished
fence to the actual hw fence.

v2: Split into drm_sched_fence_set_parent() (ckoenig)

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/scheduler/sched_fence.c | 34 +++++++++++++++++++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
 include/drm/gpu_scheduler.h             |  8 ++++++
 3 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/gpu/drm/scheduler/sched_fence.c
index bcea035cf4c6..4fc41a71d1c7 100644
--- a/drivers/gpu/drm/scheduler/sched_fence.c
+++ b/drivers/gpu/drm/scheduler/sched_fence.c
@@ -128,6 +128,30 @@ static void drm_sched_fence_release_finished(struct dma_fence *f)
 	dma_fence_put(&fence->scheduled);
 }
 
+static void drm_sched_fence_set_deadline_finished(struct dma_fence *f,
+						  ktime_t deadline)
+{
+	struct drm_sched_fence *fence = to_drm_sched_fence(f);
+	unsigned long flags;
+
+	spin_lock_irqsave(&fence->lock, flags);
+
+	/* If we already have an earlier deadline, keep it: */
+	if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &f->flags) &&
+	    ktime_before(fence->deadline, deadline)) {
+		spin_unlock_irqrestore(&fence->lock, flags);
+		return;
+	}
+
+	fence->deadline = deadline;
+	set_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &f->flags);
+
+	spin_unlock_irqrestore(&fence->lock, flags);
+
+	if (fence->parent)
+		dma_fence_set_deadline(fence->parent, deadline);
+}
+
 static const struct dma_fence_ops drm_sched_fence_ops_scheduled = {
 	.get_driver_name = drm_sched_fence_get_driver_name,
 	.get_timeline_name = drm_sched_fence_get_timeline_name,
@@ -138,6 +162,7 @@ static const struct dma_fence_ops drm_sched_fence_ops_finished = {
 	.get_driver_name = drm_sched_fence_get_driver_name,
 	.get_timeline_name = drm_sched_fence_get_timeline_name,
 	.release = drm_sched_fence_release_finished,
+	.set_deadline = drm_sched_fence_set_deadline_finished,
 };
 
 struct drm_sched_fence *to_drm_sched_fence(struct dma_fence *f)
@@ -152,6 +177,15 @@ struct drm_sched_fence *to_drm_sched_fence(struct dma_fence *f)
 }
 EXPORT_SYMBOL(to_drm_sched_fence);
 
+void drm_sched_fence_set_parent(struct drm_sched_fence *s_fence,
+				struct dma_fence *fence)
+{
+	s_fence->parent = dma_fence_get(fence);
+	if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
+		     &s_fence->finished.flags))
+		dma_fence_set_deadline(fence, s_fence->deadline);
+}
+
 struct drm_sched_fence *drm_sched_fence_alloc(struct drm_sched_entity *entity,
 					      void *owner)
 {
diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index 595e47ff7d06..27bf0ac0625f 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -978,7 +978,7 @@ static int drm_sched_main(void *param)
 		drm_sched_fence_scheduled(s_fence);
 
 		if (!IS_ERR_OR_NULL(fence)) {
-			s_fence->parent = dma_fence_get(fence);
+			drm_sched_fence_set_parent(s_fence, fence);
 			r = dma_fence_add_callback(fence, &sched_job->cb,
 						   drm_sched_job_done_cb);
 			if (r == -ENOENT)
diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
index 7f77a455722c..158ddd662469 100644
--- a/include/drm/gpu_scheduler.h
+++ b/include/drm/gpu_scheduler.h
@@ -238,6 +238,12 @@ struct drm_sched_fence {
          */
 	struct dma_fence		finished;
 
+	/**
+	 * @deadline: deadline set on &drm_sched_fence.finished which
+	 * potentially needs to be propagated to &drm_sched_fence.parent
+	 */
+	ktime_t				deadline;
+
         /**
          * @parent: the fence returned by &drm_sched_backend_ops.run_job
          * when scheduling the job on hardware. We signal the
@@ -505,6 +511,8 @@ void drm_sched_entity_set_priority(struct drm_sched_entity *entity,
 				   enum drm_sched_priority priority);
 bool drm_sched_entity_is_ready(struct drm_sched_entity *entity);
 
+void drm_sched_fence_set_parent(struct drm_sched_fence *s_fence,
+				struct dma_fence *fence);
 struct drm_sched_fence *drm_sched_fence_alloc(
 	struct drm_sched_entity *s_entity, void *owner);
 void drm_sched_fence_init(struct drm_sched_fence *fence,
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
