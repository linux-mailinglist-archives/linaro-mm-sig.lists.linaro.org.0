Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5AD3D6A49
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 01:35:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E7C2634D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 23:35:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BF3E86049D; Mon, 26 Jul 2021 23:35:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 818356339C;
	Mon, 26 Jul 2021 23:35:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 37579634E1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:35:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AEB9E63E52; Mon, 26 Jul 2021 23:35:00 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by lists.linaro.org (Postfix) with ESMTPS id 5A3506350F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:34:57 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id
 m10-20020a17090a34cab0290176b52c60ddso2308894pjf.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 16:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oOCwRi9hxpNHgxPfLImA8XjRn0qGzkVI05nd0NTq6uk=;
 b=UMdDGkO5sH4beFwSPlOOtv6JRzN+gpzELhacSFi7vvaQQ1PwmNbkfYf44YSJQaBLpr
 vVV0beEQqJV0NuTrh3WVluml5kosYKXPr9U5iyNbGEHEnWPREtu7FUB2q7w+oJTefR1N
 nxhrxUsL/yhwl8fKcflbrIpY5obQR2TALxuMCayo8c8wDQO0eaI6GFbUCJf3pr8RanC3
 lpKxIhzu44oKfzHbedvRslZeVPkbiBMj0MBXvllJzc/2Ok4djmZsXBK3c9DbPUgVz+GT
 Ad5XrI/AMY80dotYjiTUCM0Zb4DP3NOJpJAs9lA+0Yu8rBP+Sisqs25ugYEbBPneZq4S
 A5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oOCwRi9hxpNHgxPfLImA8XjRn0qGzkVI05nd0NTq6uk=;
 b=B4PpPQYuIsjckUr2+YVlUpb7itPmZjLFoWEaO2ZE8wH2oiV9w5x1TxAFE6kfNG8GKl
 l0J9SNNz9AsdS/2cK1hx7oT+y68JbUaoYNEATxOskg9givrGoB82poGfot5kGW6v7O0v
 D7DZALa9J6BVQBsOpx3hanDpqdQlT2V7Uc7Yek0h/ONsnQzcpJc4+7ob+Mw45WuofL6M
 1LPvPbqsWr1L6fEzjRHjshCO12GjSgLx9+LvPQJheMQsX1rzvL1mH4pZaTPJqKuq+b9/
 DCzkiYRjF9+dSYpjNjXrukVnlx1dSSSSJ6ZjfPKq4LAiJ/9oc6bOXHBjYsDcNM1VL1ej
 b9+A==
X-Gm-Message-State: AOAM5322U6i5c5bP7RqD168O2PJX9okWk/ZA1GmiJAdrkS6KuE8q9fkS
 yKUjgN7av47kcYmykVVgG60=
X-Google-Smtp-Source: ABdhPJyKNvvOsVEx6SQdxLRvjXmblFnYyDE+d88dd2vCChknqQFuJLEJg/rykB5kBwIJAy520O/kiQ==
X-Received: by 2002:a63:3445:: with SMTP id b66mr20626420pga.141.1627342496218; 
 Mon, 26 Jul 2021 16:34:56 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id t205sm1171971pfc.32.2021.07.26.16.34.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 16:34:55 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 16:38:51 -0700
Message-Id: <20210726233854.2453899-5-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210726233854.2453899-1-robdclark@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC 4/4] drm/scheduler: Add fence deadline support
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
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>,
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
 drivers/gpu/drm/scheduler/sched_fence.c | 10 ++++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/scheduler/sched_fence.c b/drivers/gpu/drm/scheduler/sched_fence.c
index 69de2c76731f..3aa6351d2101 100644
--- a/drivers/gpu/drm/scheduler/sched_fence.c
+++ b/drivers/gpu/drm/scheduler/sched_fence.c
@@ -128,6 +128,15 @@ static void drm_sched_fence_release_finished(struct dma_fence *f)
 	dma_fence_put(&fence->scheduled);
 }
 
+static void drm_sched_fence_set_deadline_finished(struct dma_fence *f,
+						  ktime_t deadline)
+{
+	struct drm_sched_fence *fence = to_drm_sched_fence(f);
+
+	if (fence->parent)
+		dma_fence_set_deadline(fence->parent, deadline);
+}
+
 static const struct dma_fence_ops drm_sched_fence_ops_scheduled = {
 	.get_driver_name = drm_sched_fence_get_driver_name,
 	.get_timeline_name = drm_sched_fence_get_timeline_name,
@@ -138,6 +147,7 @@ static const struct dma_fence_ops drm_sched_fence_ops_finished = {
 	.get_driver_name = drm_sched_fence_get_driver_name,
 	.get_timeline_name = drm_sched_fence_get_timeline_name,
 	.release = drm_sched_fence_release_finished,
+	.set_deadline = drm_sched_fence_set_deadline_finished,
 };
 
 struct drm_sched_fence *to_drm_sched_fence(struct dma_fence *f)
diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index a2a953693b45..fcc601962e92 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -818,6 +818,9 @@ static int drm_sched_main(void *param)
 
 		if (!IS_ERR_OR_NULL(fence)) {
 			s_fence->parent = dma_fence_get(fence);
+			if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
+				     &s_fence->finished.flags))
+				dma_fence_set_deadline(fence, s_fence->finished.deadline);
 			r = dma_fence_add_callback(fence, &sched_job->cb,
 						   drm_sched_job_done_cb);
 			if (r == -ENOENT)
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
