Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F120C6C1528
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 15:45:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EF733E963
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 14:45:03 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by lists.linaro.org (Postfix) with ESMTPS id B74723EBCF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 14:44:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=QL9SfnfK;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.52 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id p3-20020a17090a74c300b0023f69bc7a68so8144518pjl.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 07:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679323473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNjAC1W4XZsf7RJ1ht9dOafT/e4zZ1svNLwVwT9eWII=;
        b=QL9SfnfKe7vTCJV52lAJ686yvUOxF/rLlremOL5Qb6MW7Zsh0KJ/GgqaYK8pebbydx
         vF1Lc+1gbXAStMSGtRkkkxah0yQu08ARfmQ94EXGPMrGCKMXRcTABiOs+lt/zkfTgL6f
         yLZfQaUJ1YJ59CTS72s0zdYI2Ebb1olYHarl6C66ZoBfakQ7yhKUbvS/1L0qKqIqOlg+
         CJoi9k7HRW9wu7NvxyMnKJMYuNe5z0JzuR7ie0oxF6v+Al0H1P7flXjQDbziH1WFm8/r
         rBDRjHjPEz0rRFxmiGI8wqKQGiAXJg/O2qadKGBij1YrgtkZullrMuktIvJH0ILPOAU+
         JkPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679323473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNjAC1W4XZsf7RJ1ht9dOafT/e4zZ1svNLwVwT9eWII=;
        b=rKrgf3VNr/6ej3IYithpxMjVIrR3PgEyUcKXwOlAOrNjpxhgYaJXBxJvJ/Izv11gUG
         +gZqq0QaH2H3dfDgb9Ryw0W3Ns9pX+WFRoUDyY8mTkfU/UG96HmqoHu3HmK6XcHl4L4u
         iyIiO+wNrcma5cpNzPWiIeCIONggS6PrdmBjlNzx3+wdV5LpCeT/08MBBrtBUWqwBQpX
         6eav0Gaqa1ba0XtMF/9B6mrNHTuBB1W1B/mwJ95jLk1c6ujzurTV8GnXS1JPYwjPxNpQ
         N8kWANpnQQ3IqOUveWTpYZCqvkwOxoT4OZ4uVPESf7w7G8yvq8NleZyiYxd8Bloqy6sk
         UTMw==
X-Gm-Message-State: AO0yUKV7/E/1nhX9Q9/iudE7dpsVrcozl/wp41883vCibG7KGa1cTMYa
	QXdnqxsN4wjMhwxzzao4z0E=
X-Google-Smtp-Source: AK7set88CXDkILKcokVTNL34lJkgh03yV1DadcHHZqKAL59RTe92k7k4c3vIOtp3mC5f+zQfkcU19w==
X-Received: by 2002:a05:6a20:2098:b0:d9:dd69:47e3 with SMTP id b24-20020a056a20209800b000d9dd6947e3mr1884104pza.23.1679323472839;
        Mon, 20 Mar 2023 07:44:32 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id m26-20020aa78a1a000000b005a8a5be96b2sm3028068pfa.104.2023.03.20.07.44.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 07:44:32 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 20 Mar 2023 07:43:23 -0700
Message-Id: <20230320144356.803762-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320144356.803762-1-robdclark@gmail.com>
References: <20230320144356.803762-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B74723EBCF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.52:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[ffwll.ch,lists.freedesktop.org,vger.kernel.org,chromium.org,gmail.com,quicinc.com,linaro.org,poorly.run,amd.com,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: WJ57EGU7MZQ25HCVSGFYZRWAVH6IV6UH
X-Message-ID-Hash: WJ57EGU7MZQ25HCVSGFYZRWAVH6IV6UH
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 01/23] drm/msm: Pre-allocate hw_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WJ57EGU7MZQ25HCVSGFYZRWAVH6IV6UH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Avoid allocating memory in job_run() by pre-allocating the hw_fence.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_fence.c      | 12 +++++++++---
 drivers/gpu/drm/msm/msm_fence.h      |  3 ++-
 drivers/gpu/drm/msm/msm_gem_submit.c |  7 +++++++
 drivers/gpu/drm/msm/msm_ringbuffer.c |  2 +-
 4 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_fence.c b/drivers/gpu/drm/msm/msm_fence.c
index 56641408ea74..bab3d84f1686 100644
--- a/drivers/gpu/drm/msm/msm_fence.c
+++ b/drivers/gpu/drm/msm/msm_fence.c
@@ -99,7 +99,7 @@ static const struct dma_fence_ops msm_fence_ops = {
 };
 
 struct dma_fence *
-msm_fence_alloc(struct msm_fence_context *fctx)
+msm_fence_alloc(void)
 {
 	struct msm_fence *f;
 
@@ -107,10 +107,16 @@ msm_fence_alloc(struct msm_fence_context *fctx)
 	if (!f)
 		return ERR_PTR(-ENOMEM);
 
+	return &f->base;
+}
+
+void
+msm_fence_init(struct dma_fence *fence, struct msm_fence_context *fctx)
+{
+	struct msm_fence *f = to_msm_fence(fence);
+
 	f->fctx = fctx;
 
 	dma_fence_init(&f->base, &msm_fence_ops, &fctx->spinlock,
 		       fctx->context, ++fctx->last_fence);
-
-	return &f->base;
 }
diff --git a/drivers/gpu/drm/msm/msm_fence.h b/drivers/gpu/drm/msm/msm_fence.h
index 7f1798c54cd1..f913fa22d8fe 100644
--- a/drivers/gpu/drm/msm/msm_fence.h
+++ b/drivers/gpu/drm/msm/msm_fence.h
@@ -61,7 +61,8 @@ void msm_fence_context_free(struct msm_fence_context *fctx);
 bool msm_fence_completed(struct msm_fence_context *fctx, uint32_t fence);
 void msm_update_fence(struct msm_fence_context *fctx, uint32_t fence);
 
-struct dma_fence * msm_fence_alloc(struct msm_fence_context *fctx);
+struct dma_fence * msm_fence_alloc(void);
+void msm_fence_init(struct dma_fence *fence, struct msm_fence_context *fctx);
 
 static inline bool
 fence_before(uint32_t a, uint32_t b)
diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index be4bf77103cd..2570c018b0cb 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -41,6 +41,13 @@ static struct msm_gem_submit *submit_create(struct drm_device *dev,
 	if (!submit)
 		return ERR_PTR(-ENOMEM);
 
+	submit->hw_fence = msm_fence_alloc();
+	if (IS_ERR(submit->hw_fence)) {
+		ret = PTR_ERR(submit->hw_fence);
+		kfree(submit);
+		return ERR_PTR(ret);
+	}
+
 	ret = drm_sched_job_init(&submit->base, queue->entity, queue);
 	if (ret) {
 		kfree(submit);
diff --git a/drivers/gpu/drm/msm/msm_ringbuffer.c b/drivers/gpu/drm/msm/msm_ringbuffer.c
index 57a8e9564540..a62b45e5a8c3 100644
--- a/drivers/gpu/drm/msm/msm_ringbuffer.c
+++ b/drivers/gpu/drm/msm/msm_ringbuffer.c
@@ -18,7 +18,7 @@ static struct dma_fence *msm_job_run(struct drm_sched_job *job)
 	struct msm_gpu *gpu = submit->gpu;
 	int i;
 
-	submit->hw_fence = msm_fence_alloc(fctx);
+	msm_fence_init(submit->hw_fence, fctx);
 
 	for (i = 0; i < submit->nr_bos; i++) {
 		struct drm_gem_object *obj = &submit->bos[i].obj->base;
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
