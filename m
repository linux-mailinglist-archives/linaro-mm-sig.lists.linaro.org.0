Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D16A3E36C5
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Aug 2021 20:34:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41CB46663F
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Aug 2021 18:34:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ACB4763280; Sat,  7 Aug 2021 18:34:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65A5163280;
	Sat,  7 Aug 2021 18:34:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 29F7466063
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Aug 2021 18:34:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 150A863514; Sat,  7 Aug 2021 18:34:08 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by lists.linaro.org (Postfix) with ESMTPS id 36B7763280
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Aug 2021 18:34:06 +0000 (UTC)
Received: by mail-pj1-f49.google.com with SMTP id l19so21654198pjz.0
 for <linaro-mm-sig@lists.linaro.org>; Sat, 07 Aug 2021 11:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2NTzpCEmB11w7qS1x4MIrtVSF1reU6VbijSDEPvmpk4=;
 b=h960OzqhuK0zQMf7LABN1/tdHcSRTExKJYRAhwSp2ta4D5lE/sI6VNkmcYCN692RYV
 XZINe5Dx90d1Mziuc/CHg4zthm5+CJYoOG3U9seL+QPnA20LCa7Gnd7pafzEzNyoZO5j
 Y74BTIHJWxhzwCtm56NXA+C+3qvCQXG10FOf6hs1CT8HjoTKWGfy9ql3dTTdPiIbHR9r
 yg90BCz09HRER/zMOR8fCiQ5Tvxyp4LHgTy9CmSUVaVBJ//my3jo3AD2F0IU3rae2Nf9
 sNarYeOM/xRNhajgytdG1MtXq0W9Qii74gJqtnrDvf/PWlwUqJF8oVCzF9HNduPDrh7i
 Uy9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2NTzpCEmB11w7qS1x4MIrtVSF1reU6VbijSDEPvmpk4=;
 b=hgG1jRB7jfIVDfTi3TQLus3rOFZSS2v70qRKbeNeWoDYh0qefg1eYTvzGZdcsux9tx
 eRU8q65P7jRxo76Qxl5fUS56XHs7u/xenU3wFhThUUdhtq61LxztqMUHIboifPBuAofq
 jU4xS/Z/i42+202X64W9hUOcXrUA4uGjZviRfYYnZ0E6KfE959ISUQmerUR7QIQhwyS0
 O6FPzq2Hy7kxXp/XLAYIyChmdp71+xfDrTPmie++2husk/xuEgzeV/rtdm/UrXYokd3C
 CIiRmizA1i0Bi2tIR815IA5ESddMK/aEvpq1nEAzErvxFIff0M9MPPX0+4CIfT+WPM4c
 qaUg==
X-Gm-Message-State: AOAM531cVURXUyd3hwDkLnWro9p+VGy0evkWQ8kV6Wpz3OWGiJ7y9b3z
 fiTr/juAeBp83gMU+/c4Jm0=
X-Google-Smtp-Source: ABdhPJx0WCrAA8EF14LEz1SjVVcI5rAReQnjs+gJx3CGV17tAEQ4ODGd5buKJU5LzlzZNSPUQL1wkA==
X-Received: by 2002:aa7:96fc:0:b029:3ab:8eff:ca39 with SMTP id
 i28-20020aa796fc0000b02903ab8effca39mr16634031pfq.62.1628361245263; 
 Sat, 07 Aug 2021 11:34:05 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 f10sm15109768pfa.17.2021.08.07.11.34.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Aug 2021 11:34:04 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat,  7 Aug 2021 11:37:58 -0700
Message-Id: <20210807183804.459850-5-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210807183804.459850-1-robdclark@gmail.com>
References: <20210807183804.459850-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v2 4/5] drm/scheduler: Add fence deadline
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
 Jack Zhang <Jack.Zhang1@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>, Steven Price <steven.price@arm.com>,
 freedreno@lists.freedesktop.org,
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

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/scheduler/sched_fence.c | 25 +++++++++++++++++++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  3 +++
 include/drm/gpu_scheduler.h             |  6 ++++++
 3 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/gpu/drm/scheduler/sched_fence.c
index 69de2c76731f..f389dca44185 100644
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
diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index a2a953693b45..3ab0900d3596 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -818,6 +818,9 @@ static int drm_sched_main(void *param)
 
 		if (!IS_ERR_OR_NULL(fence)) {
 			s_fence->parent = dma_fence_get(fence);
+			if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
+				     &s_fence->finished.flags))
+				dma_fence_set_deadline(fence, s_fence->deadline);
 			r = dma_fence_add_callback(fence, &sched_job->cb,
 						   drm_sched_job_done_cb);
 			if (r == -ENOENT)
diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
index d18af49fd009..0f08ade614ae 100644
--- a/include/drm/gpu_scheduler.h
+++ b/include/drm/gpu_scheduler.h
@@ -144,6 +144,12 @@ struct drm_sched_fence {
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
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
