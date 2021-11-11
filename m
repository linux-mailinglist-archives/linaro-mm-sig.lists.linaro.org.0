Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DAB44DC1D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Nov 2021 20:20:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C37F60D3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Nov 2021 19:20:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3D11F60BF5; Thu, 11 Nov 2021 19:20:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C74060767;
	Thu, 11 Nov 2021 19:20:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B6DCB60BC6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Nov 2021 19:20:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 50DB460C2D; Thu, 11 Nov 2021 19:19:58 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by lists.linaro.org (Postfix) with ESMTPS id 7DE1760AB6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Nov 2021 19:19:56 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id e65so5990173pgc.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Nov 2021 11:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gll+pgQtBYECeJn/RU0NsPRmZk9ALD2l3W41Hro7yLE=;
 b=AtiOD3Rcv6buPs1m+tSPfQKVgnN8eBsb6zxBDTpFTJiTJa1rOCDgBu2nBWCV69MtAP
 sJtFzHofUFf9nnVgS3EmRlb9Dw6DxhyBWHFO14tzbnh6bm6AP8i0hnpdShokxj2CIt4u
 TVJ/w7J3RniL9Cn4w3vFshZFd6otTyw2Ia2k0Uh8BzIr5g21HmuAdQaGS8b+yFAxE0XZ
 VpwAkoKqEIhWvWsuG/8yDKwbSkmrWaSQzz9iuZ7dV42x86dxdXKlQJgd68O/AE9eF3bw
 gACUE9IDKAVj2nimLwRUE8+KClA8AYb6CW/o0F+rJpwSz1VNsbgRPYjTUlEEKNZ6C4Na
 +ZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gll+pgQtBYECeJn/RU0NsPRmZk9ALD2l3W41Hro7yLE=;
 b=QiT+Ewgdt9Xla7oo8JqB41uJ0ptM9IUDmUN1qnMz2hCJWWxmIA7sbn2f37PXjrsmE8
 jhTIOZ0kJ6bNG+5q5dtoidER1S13zMxHgFaQ5610BXD11zSDMP7qnsNoqlIz2j5uA9BE
 QEUd/ghWymheYgsUIVeTw3GXJ1XwCKI6hKRiAW0NPV3XPs7HpkC9Bj6Dbi7GtSeN1ZNp
 w7edC0zb7rYJ35nnBY5jh9o+M0/h0PNM4uMHRsm/YporZZIbnN1r0IDC0VTYiZB6CUSU
 aue4RBFDnyBP5QDwmbMEj+mpQ2lcnHcrjZOxSN0A7gY8rmVJipoRAZHX5f4+3zdBO/ee
 Hk1Q==
X-Gm-Message-State: AOAM532B9V1M1QAuSBmuJisb0yejxPqVWPNzLXmFwQPDXY3YDBUSECA8
 mhb2VFzAolSl0D27Tl1M9+A=
X-Google-Smtp-Source: ABdhPJx+lfYqAWYFGx0tk1yaXqVXH2LpwuOrESzXjHIuYrmwylZZLkLUOPKxleNWssUAHd9SngzmYw==
X-Received: by 2002:a63:5a63:: with SMTP id k35mr6119632pgm.230.1636658395706; 
 Thu, 11 Nov 2021 11:19:55 -0800 (PST)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 m9sm3588886pff.43.2021.11.11.11.19.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Nov 2021 11:19:54 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 11 Nov 2021 11:24:56 -0800
Message-Id: <20211111192457.747899-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211111192457.747899-1-robdclark@gmail.com>
References: <20211111192457.747899-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/2] drm/msm: Restore error return on
 invalid fence
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
 linux-arm-msm@vger.kernel.org, Akhil P Oommen <akhilpo@codeaurora.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sean Paul <sean@poorly.run>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

When converting to use an idr to map userspace fence seqno values back
to a dma_fence, we lost the error return when userspace passes seqno
that is larger than the last submitted fence.  Restore this check.

Reported-by: Akhil P Oommen <akhilpo@codeaurora.org>
Fixes: a61acbbe9cf8 ("drm/msm: Track "seqno" fences by idr")
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
Note: I will rebase "drm/msm: Handle fence rollover" on top of this,
to simplify backporting this patch to stable kernels

 drivers/gpu/drm/msm/msm_drv.c        | 6 ++++++
 drivers/gpu/drm/msm/msm_gem_submit.c | 1 +
 drivers/gpu/drm/msm/msm_gpu.h        | 3 +++
 3 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
index cb14d997c174..56500eb5219e 100644
--- a/drivers/gpu/drm/msm/msm_drv.c
+++ b/drivers/gpu/drm/msm/msm_drv.c
@@ -967,6 +967,12 @@ static int wait_fence(struct msm_gpu_submitqueue *queue, uint32_t fence_id,
 	struct dma_fence *fence;
 	int ret;
 
+	if (fence_id > queue->last_fence) {
+		DRM_ERROR_RATELIMITED("waiting on invalid fence: %u (of %u)\n",
+				      fence_id, queue->last_fence);
+		return -EINVAL;
+	}
+
 	/*
 	 * Map submitqueue scoped "seqno" (which is actually an idr key)
 	 * back to underlying dma-fence
diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index 151d19e4453c..a38f23be497d 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -911,6 +911,7 @@ int msm_ioctl_gem_submit(struct drm_device *dev, void *data,
 	drm_sched_entity_push_job(&submit->base, queue->entity);
 
 	args->fence = submit->fence_id;
+	queue->last_fence = submit->fence_id;
 
 	msm_reset_syncobjs(syncobjs_to_reset, args->nr_in_syncobjs);
 	msm_process_post_deps(post_deps, args->nr_out_syncobjs,
diff --git a/drivers/gpu/drm/msm/msm_gpu.h b/drivers/gpu/drm/msm/msm_gpu.h
index bd4e0024033e..e73a5bb03544 100644
--- a/drivers/gpu/drm/msm/msm_gpu.h
+++ b/drivers/gpu/drm/msm/msm_gpu.h
@@ -376,6 +376,8 @@ static inline int msm_gpu_convert_priority(struct msm_gpu *gpu, int prio,
  * @ring_nr:   the ringbuffer used by this submitqueue, which is determined
  *             by the submitqueue's priority
  * @faults:    the number of GPU hangs associated with this submitqueue
+ * @last_fence: the sequence number of the last allocated fence (for error
+ *             checking)
  * @ctx:       the per-drm_file context associated with the submitqueue (ie.
  *             which set of pgtables do submits jobs associated with the
  *             submitqueue use)
@@ -391,6 +393,7 @@ struct msm_gpu_submitqueue {
 	u32 flags;
 	u32 ring_nr;
 	int faults;
+	uint32_t last_fence;
 	struct msm_file_private *ctx;
 	struct list_head node;
 	struct idr fence_idr;
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
