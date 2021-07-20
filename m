Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA353CFCDC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 17:03:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFBF361A07
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 15:03:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0390F61982; Tue, 20 Jul 2021 15:03:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDAD561824;
	Tue, 20 Jul 2021 15:03:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C646C6179C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 15:03:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C3C4961824; Tue, 20 Jul 2021 15:03:11 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by lists.linaro.org (Postfix) with ESMTPS id BAAC66179C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 15:03:09 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id
 v18-20020a17090ac912b0290173b9578f1cso2014651pjt.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 08:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YjsQqg/cyLrvH6AHlxUB+OYVHKKVa13wNGyeIOclLuU=;
 b=Bwya6iL1RBmmeGnDLmxE++cJ04phd36pitzI5Fg/6+79njD2oyBhzaQONWmikFuB3v
 sWOWXVU3XANaWQj6Mi6PD79h7wIzAVu1HT5fHWRFBtYKzK/VsiyBK8irALWIFOIiPfxe
 SumHHYYFE/6VlsrVL32MklAzmYQxlvTV8x+UX/RKxN55gzSmbxS8xlL4D7T69pZKCxbR
 3hYVNceHlNyb9ju3HO0FaWK5vUkOa2sK4hDRDzVTPA6C74H9YQRSKcZpzQ6vKkwD7Vc1
 wKRMpVzAniHaoAw89XEZFEc1YserHm/AzRtW2TvB5ztJbmXl6LqeWx5XcSyxPYcY6teZ
 VvQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YjsQqg/cyLrvH6AHlxUB+OYVHKKVa13wNGyeIOclLuU=;
 b=FjKYKIUm3rAkk0fGMv07AmgN7dtF3sdEsetiD5Q1BYCyBpu/7fzgDJeU6MWuARibhX
 R2mwIQlTbhWwd1byFrPfazBFJFmtW2t/da4TVfL1WdUxGWB7Ruo6O1sBuqZQV7Ue+eTf
 POSFJLG4MsSjIOg0C1B1XqOEjFvsS71aS4GPer5xw/RkQl6ybTu8psgPyFicO3nwFIYr
 FpTgmYELJJl30x/TFUOW4w6Njj/jX5dNEcmcZI98iTp50ZqgncujgaIqB1Awau48qx9M
 rlOCOHYujrQSIjc9gccLscz0S6XoUCOppI3ig2TNx/naUajgNbl7fQH9Ji2gwjX+osXU
 0xBA==
X-Gm-Message-State: AOAM532TtxRWd1ag0GBu7gh6KbFTSOz8xcdTLiNXzmnOexinl7gqj0iB
 MDUjIDppksIOueKDo4lMswM=
X-Google-Smtp-Source: ABdhPJwocdDotiRQoMrd8AmM4D5t8eT0K3LGBIo2EKCjfzv73zaEHoy2PrNocwn0na8156wCs4B80g==
X-Received: by 2002:a17:903:2309:b029:12a:965b:333 with SMTP id
 d9-20020a1709032309b029012a965b0333mr23822909plh.31.1626793388619; 
 Tue, 20 Jul 2021 08:03:08 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id k19sm20330779pji.32.2021.07.20.08.03.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 08:03:06 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 20 Jul 2021 08:07:15 -0700
Message-Id: <20210720150716.1213775-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] drm/msm: Add fence->wait() op
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
 "open list:DRM DRIVER FOR MSM ADRENO GPU"
 <freedreno@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Somehow we had neither ->wait() nor dma_fence_signal() calls, and no
one noticed.  Oops.

Note that this removes the !timeout case, which has not been used in
a long time.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_fence.c | 59 +++++++++++++++++++--------------
 1 file changed, 34 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_fence.c b/drivers/gpu/drm/msm/msm_fence.c
index cd59a5918038..8ee96b90ded6 100644
--- a/drivers/gpu/drm/msm/msm_fence.c
+++ b/drivers/gpu/drm/msm/msm_fence.c
@@ -38,11 +38,10 @@ static inline bool fence_completed(struct msm_fence_context *fctx, uint32_t fenc
 	return (int32_t)(fctx->completed_fence - fence) >= 0;
 }
 
-/* legacy path for WAIT_FENCE ioctl: */
-int msm_wait_fence(struct msm_fence_context *fctx, uint32_t fence,
-		ktime_t *timeout, bool interruptible)
+static signed long wait_fence(struct msm_fence_context *fctx, uint32_t fence,
+		signed long remaining_jiffies, bool interruptible)
 {
-	int ret;
+	signed long ret;
 
 	if (fence > fctx->last_fence) {
 		DRM_ERROR_RATELIMITED("%s: waiting on invalid fence: %u (of %u)\n",
@@ -50,33 +49,34 @@ int msm_wait_fence(struct msm_fence_context *fctx, uint32_t fence,
 		return -EINVAL;
 	}
 
-	if (!timeout) {
-		/* no-wait: */
-		ret = fence_completed(fctx, fence) ? 0 : -EBUSY;
+	if (interruptible) {
+		ret = wait_event_interruptible_timeout(fctx->event,
+			fence_completed(fctx, fence),
+			remaining_jiffies);
 	} else {
-		unsigned long remaining_jiffies = timeout_to_jiffies(timeout);
-
-		if (interruptible)
-			ret = wait_event_interruptible_timeout(fctx->event,
-				fence_completed(fctx, fence),
-				remaining_jiffies);
-		else
-			ret = wait_event_timeout(fctx->event,
-				fence_completed(fctx, fence),
-				remaining_jiffies);
-
-		if (ret == 0) {
-			DBG("timeout waiting for fence: %u (completed: %u)",
-					fence, fctx->completed_fence);
-			ret = -ETIMEDOUT;
-		} else if (ret != -ERESTARTSYS) {
-			ret = 0;
-		}
+		ret = wait_event_timeout(fctx->event,
+			fence_completed(fctx, fence),
+			remaining_jiffies);
+	}
+
+	if (ret == 0) {
+		DBG("timeout waiting for fence: %u (completed: %u)",
+				fence, fctx->completed_fence);
+		ret = -ETIMEDOUT;
+	} else if (ret != -ERESTARTSYS) {
+		ret = 0;
 	}
 
 	return ret;
 }
 
+/* legacy path for WAIT_FENCE ioctl: */
+int msm_wait_fence(struct msm_fence_context *fctx, uint32_t fence,
+		ktime_t *timeout, bool interruptible)
+{
+	return wait_fence(fctx, fence, timeout_to_jiffies(timeout), interruptible);
+}
+
 /* called from workqueue */
 void msm_update_fence(struct msm_fence_context *fctx, uint32_t fence)
 {
@@ -114,10 +114,19 @@ static bool msm_fence_signaled(struct dma_fence *fence)
 	return fence_completed(f->fctx, f->base.seqno);
 }
 
+static signed long msm_fence_wait(struct dma_fence *fence, bool intr,
+		signed long timeout)
+{
+	struct msm_fence *f = to_msm_fence(fence);
+
+	return wait_fence(f->fctx, fence->seqno, timeout, intr);
+}
+
 static const struct dma_fence_ops msm_fence_ops = {
 	.get_driver_name = msm_fence_get_driver_name,
 	.get_timeline_name = msm_fence_get_timeline_name,
 	.signaled = msm_fence_signaled,
+	.wait = msm_fence_wait,
 };
 
 struct dma_fence *
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
