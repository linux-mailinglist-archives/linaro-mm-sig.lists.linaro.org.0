Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D07C58177
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:57:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7E423F87F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:57:26 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id 7C6C23F84A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=fvt+WDjj;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-640b4a52950so1336085a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045628; x=1763650428; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TQQWYpV9Zou9tzyWqIRvulxHoyXxl7YO7YooFTRLgAA=;
        b=fvt+WDjjoEGzVNCTU105NG1Y9FGivsOaYiVUhiOV9Wg/32NfkOkyjLRfPnVSo54WT2
         pxXvD4uqRkFa551C03JmSOn7IwQli6s0IAz/xNJCUqtKm41xR+UgHo+3kXXseYOCW+F/
         JgL0Pojok1vpbGUQknYXOY3nwBbHVNGdB7ithnYvHOotnhnmcDvAZOlVT6KkdFFA329K
         89Kv52GTdCy6+o8qJUxjjBpDMW+BluMB8Nd70dI/CKPWql4LzrzY7u3cyMSYP4Wk3abQ
         kOYQgbodzwMPH48kgsyalpkhdYgKCaFOdsYgEpLXLA870s8cG0WUVBRN6roCij1nxGv3
         OOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045628; x=1763650428;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TQQWYpV9Zou9tzyWqIRvulxHoyXxl7YO7YooFTRLgAA=;
        b=VQ9/B0cY3oSVq6DWQ5iW4o4ZxgEV2OdsoU7p2UoDpZznG9U5K/GNt8N71ioFStqL2M
         AJdHB501+kEv0A2qic+u0OZj9iElvCzjK2uTxVzoaBpKt8oWjqC5wamaPd8NGhGsBLyl
         T2zW1FS1yvkhPl4XuwdkbTWYMFlg+Twj4aFd+AIun9vBzKV1r6Q9iNWB/4ZwRIM3y8Xn
         /IZGm+oFIlvb7wTNGWDMmxKUSHxgu+sxY6jddfbPrjEUY4mnoKcAjh89dNapT2/y8CCf
         2Wx1aMglyVYAzyMY3gBc69vtQ12eDC8SSx5zWF1jsTmq8wJ+Af5l2fiRJyDPpRXyxUU8
         nqMg==
X-Forwarded-Encrypted: i=1; AJvYcCX2Jl4C47emidnwnM3pwMDH5pHNbODnb+7bIrl/GS2FEhNRrAhWvuTOBCIQCZWTv84JKBX+1lFq5dZpq93m@lists.linaro.org
X-Gm-Message-State: AOJu0YxogwNZkw3St6uoaJ5XOvvM8PBSqNmYWUDMACSacUs3+DBpPUTl
	5E3nkBW9Bg8WpMUUNpdmokx1f6N8bd3Anxu8VRgaB+qbl/in/b6Mmbk6
X-Gm-Gg: ASbGncvIB2y/Wvw/Ta/1+86T3qaYvJSGi+mSsWgZ7envPRwaS9ZxK0BEHOedOfuxMLN
	CwaqW+YGsdgR92rY8RzrWjxpqAD/C5mCJeeKf9MNC5hMy5ksHz3jABAiaeYcU39QtVgiLUZYKgV
	LQnSmFKWE55ZWqLquh+3UELpO5YxvrzMN1LagJsViMxJ37W/C4kK2BTdAVzsnf98F+nad1X1ru5
	UI2NGEbCiMrWBZiRvittMEryjPQ7sJl500Ste5eapNd2NtnClV8BuPGjHgr1+VPAhp281axKDPf
	T0hlolJjUaE+UCX+XzeTsV2a9PHQlqD1MmP0CwcnL2pZrhyipx0DIa5WlTZ/AjXct1JPcHzhyG/
	dkWxdbrP7OjI4Z6x4C6hFa71s347P1i4jeGOWQzBiMrqIbseuiQviCclmb66NTeTXazknXSua+O
	zS4oXrUHk4qcTc11jrzHe44A==
X-Google-Smtp-Source: AGHT+IFha4cmY1W5rI1Cy3tZWueXlKP3/AVtT/vUUsiD2FLG/O5uEWJLHKaViU9gQTa0MqRzBSX/Hw==
X-Received: by 2002:a17:906:f597:b0:b72:d2df:641c with SMTP id a640c23a62f3a-b7331ace22amr657711666b.49.1763045628271;
        Thu, 13 Nov 2025 06:53:48 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:47 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:54 +0100
Message-ID: <20251113145332.16805-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7C6C23F84A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2QCTRJ3LKTTKSX3ABPJPCU2YL7IEBQKI
X-Message-ID-Hash: 2QCTRJ3LKTTKSX3ABPJPCU2YL7IEBQKI
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 17/18] drm/xe: Promote xe_hw_fence_irq to an ref counted object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2QCTRJ3LKTTKSX3ABPJPCU2YL7IEBQKI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Matthew Brost <matthew.brost@intel.com>

Help disconnect fences from the Xe module.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/xe/xe_exec_queue.c     |  2 +-
 drivers/gpu/drm/xe/xe_gt.c             |  7 ++++--
 drivers/gpu/drm/xe/xe_gt_types.h       |  2 +-
 drivers/gpu/drm/xe/xe_hw_engine.c      |  2 +-
 drivers/gpu/drm/xe/xe_hw_fence.c       | 35 ++++++++++++++++++++++++--
 drivers/gpu/drm/xe/xe_hw_fence.h       |  2 +-
 drivers/gpu/drm/xe/xe_hw_fence_types.h |  4 +++
 7 files changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_exec_queue.c b/drivers/gpu/drm/xe/xe_exec_queue.c
index 8724f8de67e2..68ec3ba4b995 100644
--- a/drivers/gpu/drm/xe/xe_exec_queue.c
+++ b/drivers/gpu/drm/xe/xe_exec_queue.c
@@ -140,7 +140,7 @@ static struct xe_exec_queue *__xe_exec_queue_alloc(struct xe_device *xe,
 	q->width = width;
 	q->msix_vec = XE_IRQ_DEFAULT_MSIX;
 	q->logical_mask = logical_mask;
-	q->fence_irq = &gt->fence_irq[hwe->class];
+	q->fence_irq = gt->fence_irq[hwe->class];
 	q->ring_ops = gt->ring_ops[hwe->class];
 	q->ops = gt->exec_queue_ops;
 	INIT_LIST_HEAD(&q->lr.link);
diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index 6d479948bf21..e0461a36771d 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -615,7 +615,8 @@ static void xe_gt_fini(void *arg)
 		xe_pm_runtime_put(gt_to_xe(gt));
 
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i)
-		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
+		if (gt->fence_irq[i])
+			xe_hw_fence_irq_finish(gt->fence_irq[i]);
 
 	xe_gt_disable_host_l2_vram(gt);
 }
@@ -629,7 +630,9 @@ int xe_gt_init(struct xe_gt *gt)
 
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i) {
 		gt->ring_ops[i] = xe_ring_ops_get(gt, i);
-		xe_hw_fence_irq_init(&gt->fence_irq[i]);
+		gt->fence_irq[i] = xe_hw_fence_irq_init();
+		if (!gt->fence_irq[i])
+			return -ENOMEM;
 	}
 
 	err = devm_add_action_or_reset(gt_to_xe(gt)->drm.dev, xe_gt_fini, gt);
diff --git a/drivers/gpu/drm/xe/xe_gt_types.h b/drivers/gpu/drm/xe/xe_gt_types.h
index 0a728180b6fe..88a05edab51b 100644
--- a/drivers/gpu/drm/xe/xe_gt_types.h
+++ b/drivers/gpu/drm/xe/xe_gt_types.h
@@ -240,7 +240,7 @@ struct xe_gt {
 	const struct xe_ring_ops *ring_ops[XE_ENGINE_CLASS_MAX];
 
 	/** @fence_irq: fence IRQs (1 per engine class) */
-	struct xe_hw_fence_irq fence_irq[XE_ENGINE_CLASS_MAX];
+	struct xe_hw_fence_irq *fence_irq[XE_ENGINE_CLASS_MAX];
 
 	/** @default_lrc: default LRC state */
 	void *default_lrc[XE_ENGINE_CLASS_MAX];
diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw_engine.c
index 6a9e2a4272dd..480972c3da84 100644
--- a/drivers/gpu/drm/xe/xe_hw_engine.c
+++ b/drivers/gpu/drm/xe/xe_hw_engine.c
@@ -524,7 +524,7 @@ static void hw_engine_init_early(struct xe_gt *gt, struct xe_hw_engine *hwe,
 		info->irq_offset;
 	hwe->domain = info->domain;
 	hwe->name = info->name;
-	hwe->fence_irq = &gt->fence_irq[info->class];
+	hwe->fence_irq = gt->fence_irq[info->class];
 	hwe->engine_id = id;
 
 	hwe->eclass = &gt->eclass[hwe->class];
diff --git a/drivers/gpu/drm/xe/xe_hw_fence.c b/drivers/gpu/drm/xe/xe_hw_fence.c
index 5edcf057aceb..f5fad4426729 100644
--- a/drivers/gpu/drm/xe/xe_hw_fence.c
+++ b/drivers/gpu/drm/xe/xe_hw_fence.c
@@ -15,6 +15,25 @@
 #include "xe_map.h"
 #include "xe_trace.h"
 
+static void xe_hw_fence_irq_destroy(struct kref *ref)
+{
+	struct xe_hw_fence_irq *irq = container_of(ref, typeof(*irq), refcount);
+
+	kfree(irq);
+}
+
+static void xe_hw_fence_irq_put(struct xe_hw_fence_irq *irq)
+{
+	if (irq)
+		kref_put(&irq->refcount, xe_hw_fence_irq_destroy);
+}
+
+static struct xe_hw_fence_irq *xe_hw_fence_irq_get(struct xe_hw_fence_irq *irq)
+{
+	kref_get(&irq->refcount);
+	return irq;
+}
+
 static struct xe_hw_fence *fence_alloc(void)
 {
 	return kzalloc(sizeof(struct xe_hw_fence), GFP_KERNEL);
@@ -25,6 +44,7 @@ static void fence_free(struct rcu_head *rcu)
 	struct xe_hw_fence *fence =
 		container_of(rcu, struct xe_hw_fence, dma.rcu);
 
+	xe_hw_fence_irq_put(fence->irq);
 	kfree(fence);
 }
 
@@ -52,12 +72,20 @@ static void hw_fence_irq_run_cb(struct irq_work *work)
 	dma_fence_end_signalling(tmp);
 }
 
-void xe_hw_fence_irq_init(struct xe_hw_fence_irq *irq)
+struct xe_hw_fence_irq *xe_hw_fence_irq_init(void)
 {
+	struct xe_hw_fence_irq *irq = kzalloc(sizeof(*irq), GFP_KERNEL);
+
+	if (!irq)
+		return NULL;
+
+	kref_init(&irq->refcount);
 	spin_lock_init(&irq->lock);
 	init_irq_work(&irq->work, hw_fence_irq_run_cb);
 	INIT_LIST_HEAD(&irq->pending);
 	irq->enabled = true;
+
+	return irq;
 }
 
 void xe_hw_fence_irq_finish(struct xe_hw_fence_irq *irq)
@@ -82,6 +110,8 @@ void xe_hw_fence_irq_finish(struct xe_hw_fence_irq *irq)
 
 	/* Safe release of the irq->lock used in dma_fence_init. */
 	synchronize_rcu();
+
+	xe_hw_fence_irq_put(irq);
 }
 
 void xe_hw_fence_irq_run(struct xe_hw_fence_irq *irq)
@@ -233,13 +263,14 @@ void xe_hw_fence_free(struct dma_fence *fence)
 void xe_hw_fence_init(struct dma_fence *fence, struct xe_hw_fence_ctx *ctx,
 		      struct iosys_map seqno_map)
 {
-	struct  xe_hw_fence *hw_fence =
+	struct xe_hw_fence *hw_fence =
 		container_of(fence, typeof(*hw_fence), dma);
 
 	hw_fence->xe = gt_to_xe(ctx->gt);
 	snprintf(hw_fence->name, sizeof(hw_fence->name), "%s", ctx->name);
 	hw_fence->seqno_map = seqno_map;
 	INIT_LIST_HEAD(&hw_fence->irq_link);
+	hw_fence->irq = xe_hw_fence_irq_get(ctx->irq);
 
 	dma_fence_init(fence, &xe_hw_fence_ops, &ctx->irq->lock,
 		       ctx->dma_fence_ctx, ctx->next_seqno++);
diff --git a/drivers/gpu/drm/xe/xe_hw_fence.h b/drivers/gpu/drm/xe/xe_hw_fence.h
index 96f34332fd8d..fa1620203b90 100644
--- a/drivers/gpu/drm/xe/xe_hw_fence.h
+++ b/drivers/gpu/drm/xe/xe_hw_fence.h
@@ -11,7 +11,7 @@
 /* Cause an early wrap to catch wrapping errors */
 #define XE_FENCE_INITIAL_SEQNO (-127)
 
-void xe_hw_fence_irq_init(struct xe_hw_fence_irq *irq);
+struct xe_hw_fence_irq *xe_hw_fence_irq_init(void);
 void xe_hw_fence_irq_finish(struct xe_hw_fence_irq *irq);
 void xe_hw_fence_irq_run(struct xe_hw_fence_irq *irq);
 void xe_hw_fence_irq_stop(struct xe_hw_fence_irq *irq);
diff --git a/drivers/gpu/drm/xe/xe_hw_fence_types.h b/drivers/gpu/drm/xe/xe_hw_fence_types.h
index 58a8d09afe5c..0682c12520e9 100644
--- a/drivers/gpu/drm/xe/xe_hw_fence_types.h
+++ b/drivers/gpu/drm/xe/xe_hw_fence_types.h
@@ -28,6 +28,8 @@ struct xe_hw_fence_irq {
 	struct irq_work work;
 	/** @pending: list of pending xe_hw_fences */
 	struct list_head pending;
+	/** @refcount: ref count of this exec queue */
+	struct kref refcount;
 	/** @enabled: fence signaling enabled */
 	bool enabled;
 };
@@ -62,6 +64,8 @@ struct xe_hw_fence_ctx {
 struct xe_hw_fence {
 	/** @dma: base dma fence for hardware fence context */
 	struct dma_fence dma;
+	/** @irq: fence irq handler */
+	struct xe_hw_fence_irq *irq;
 	/** @xe: Xe device for hw fence driver name */
 	struct xe_device *xe;
 	/** @name: name of hardware fence context */
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
