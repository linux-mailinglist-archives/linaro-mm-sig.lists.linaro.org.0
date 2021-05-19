Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DA11138958A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 20:35:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8DE861199
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 18:35:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A061961158; Wed, 19 May 2021 18:35:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D62361146;
	Wed, 19 May 2021 18:35:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B28926114E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 18:35:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ABFBF6114C; Wed, 19 May 2021 18:35:18 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by lists.linaro.org (Postfix) with ESMTPS id 2ABA16118F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 18:35:16 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id s4so5991014plg.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 11:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n5uWZIfYNT9NU92iv+57nnURivFj6aDlrNkoAZSXV/w=;
 b=KOarvd9cHWYKgnPJf9nSyzfOesTFIXD7IGNVJ+du1Z0SHpY0Xm/EXFqN9HQCuRMAQv
 2kguO8VQtBzz6vByBahivwR4XUM3q8ulOI8YpSsXjpoEOvnn5Q8Agif1PURmqHLXabsp
 7ut0TDH/YxF+ybzk5eNjGyIgsd59xbXVTFbcLLxezlV9PYiC90gA5k4sHMSHYcE/eL71
 WDNWal+4Iwi/BnBVwN/Ro2dY2R06U35roeH5Zz9oUvtHgiLl40sNw1Oan98B2QWU9aFW
 27b1mG8mnUdeTGBpYRnPwm0j9hU/61yxlpITvDf8+bBkjQqHITe1Egm6dmEBdNCIeVEm
 1sag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n5uWZIfYNT9NU92iv+57nnURivFj6aDlrNkoAZSXV/w=;
 b=Nt3S/Uq9sx2wSBvIPe8yRUJFiwz5jC1FS4VBqD2eKk8Zy8RO6gW9eZx/alSncUfujL
 bbKgl6VY6UFLNvYSIgzbGSbZ0TsF5mkk5AZ4hGrzgHnAJItec93h4nooB3fMo4j3mhV5
 pXoS3cG7cpYjGjKLa7k8/suKNbwjUXm3yroDQs8C/e7u6nn7E+IIJrpYPvMGnyYjdr8a
 jqgQMbtn+DcRQwiHrirPSBMFgj4utTTytp/3gRVQCacEP/8VMGb9tzJDRit/yav+9s0r
 +M8EGROiEukON+TnJVyF43pbpms4mLqy/G17IfR92s9R8AwkyTBCdzKy8tSPDfw6Knpw
 Q/Uw==
X-Gm-Message-State: AOAM532c+wn/DXcmIA/gzZ6hOVqaReqvVFFExmJjg3f4RLJd+iYs955M
 +uRasnmppO/gp7MXixS4vRQ=
X-Google-Smtp-Source: ABdhPJx7j2+wCkNK1D1YUAjaIZNBYpRrQkfJ3sHGCatwOmy6egf6QrGebz1yZKbJJVE5Een+NF84FA==
X-Received: by 2002:a17:902:8e88:b029:ee:b947:d7df with SMTP id
 bg8-20020a1709028e88b02900eeb947d7dfmr1029276plb.48.1621449314588; 
 Wed, 19 May 2021 11:35:14 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 a24sm68148pgv.76.2021.05.19.11.35.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 11:35:13 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 19 May 2021 11:38:54 -0700
Message-Id: <20210519183855.1523927-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210519183855.1523927-1-robdclark@gmail.com>
References: <20210519183855.1523927-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC 3/3] drm/msm: Wire up gpu boost
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
Cc: Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 linux-arm-msm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sean Paul <sean@poorly.run>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Note, at this point I haven't given a lot of consideration into how much
we should boost, and for how long.  And perhaps we should only boost at
less than 50% utilization?  At this point, this is only an example of
dma_fence_boost() implementation.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_fence.c | 10 ++++++++++
 drivers/gpu/drm/msm/msm_gpu.c   | 13 +++++++++++++
 drivers/gpu/drm/msm/msm_gpu.h   |  2 ++
 3 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_fence.c b/drivers/gpu/drm/msm/msm_fence.c
index cd59a5918038..e58895603726 100644
--- a/drivers/gpu/drm/msm/msm_fence.c
+++ b/drivers/gpu/drm/msm/msm_fence.c
@@ -8,6 +8,7 @@
 
 #include "msm_drv.h"
 #include "msm_fence.h"
+#include "msm_gpu.h"
 
 
 struct msm_fence_context *
@@ -114,10 +115,19 @@ static bool msm_fence_signaled(struct dma_fence *fence)
 	return fence_completed(f->fctx, f->base.seqno);
 }
 
+static void msm_fence_boost(struct dma_fence *fence)
+{
+	struct msm_fence *f = to_msm_fence(fence);
+	struct msm_drm_private *priv = f->fctx->dev->dev_private;
+
+	msm_gpu_boost(priv->gpu);
+}
+
 static const struct dma_fence_ops msm_fence_ops = {
 	.get_driver_name = msm_fence_get_driver_name,
 	.get_timeline_name = msm_fence_get_timeline_name,
 	.signaled = msm_fence_signaled,
+	.boost = msm_fence_boost,
 };
 
 struct dma_fence *
diff --git a/drivers/gpu/drm/msm/msm_gpu.c b/drivers/gpu/drm/msm/msm_gpu.c
index 9dd1c58430ab..c90b79116500 100644
--- a/drivers/gpu/drm/msm/msm_gpu.c
+++ b/drivers/gpu/drm/msm/msm_gpu.c
@@ -62,6 +62,10 @@ static int msm_devfreq_get_dev_status(struct device *dev,
 	status->total_time = ktime_us_delta(time, gpu->devfreq.time);
 	gpu->devfreq.time = time;
 
+	if (atomic_dec_if_positive(&gpu->devfreq.boost) >= 0) {
+		status->busy_time = status->total_time;
+	}
+
 	return 0;
 }
 
@@ -84,6 +88,15 @@ static struct devfreq_dev_profile msm_devfreq_profile = {
 	.get_cur_freq = msm_devfreq_get_cur_freq,
 };
 
+void msm_gpu_boost(struct msm_gpu *gpu)
+{
+	if (!gpu->funcs->gpu_busy)
+		return;
+
+	/* Add three devfreq polling intervals worth of boost: */
+	atomic_add(3, &gpu->devfreq.boost);
+}
+
 static void msm_devfreq_init(struct msm_gpu *gpu)
 {
 	/* We need target support to do devfreq */
diff --git a/drivers/gpu/drm/msm/msm_gpu.h b/drivers/gpu/drm/msm/msm_gpu.h
index 18baf935e143..7a082a12d98f 100644
--- a/drivers/gpu/drm/msm/msm_gpu.h
+++ b/drivers/gpu/drm/msm/msm_gpu.h
@@ -150,6 +150,7 @@ struct msm_gpu {
 		struct devfreq *devfreq;
 		u64 busy_cycles;
 		ktime_t time;
+		atomic_t boost;
 	} devfreq;
 
 	uint32_t suspend_count;
@@ -295,6 +296,7 @@ static inline void gpu_write64(struct msm_gpu *gpu, u32 lo, u32 hi, u64 val)
 int msm_gpu_pm_suspend(struct msm_gpu *gpu);
 int msm_gpu_pm_resume(struct msm_gpu *gpu);
 void msm_gpu_resume_devfreq(struct msm_gpu *gpu);
+void msm_gpu_boost(struct msm_gpu *gpu);
 
 int msm_gpu_hw_init(struct msm_gpu *gpu);
 
-- 
2.30.2

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
