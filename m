Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA52CB5D76
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:28:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AECD3F99B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:28:17 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 7E3D93F998
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ESwQfZQ+;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso545225e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455865; x=1766060665; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMYuPDtmjXtqqPqGsMLg3a2SP3kOvuGEttwg0EgR0nQ=;
        b=ESwQfZQ+mB28VIMrtM8N3T1dN5OIWKmhzNq64t9ZmxHErmvKLBQaoZdlp+q/FJjUDZ
         54XxfK2njxgvr694/YKb6kGGRb2f7UIIU85d1ot1oNFdqlTEqbEBiuOYoXVU2a+S/bQU
         hm4kJBfSMZS47FC5kJU7DIm7gQ6liAdlwdcIrJlPWgsE1dm12uyIg4E1mOs1UtzbjA8V
         7AVuNpXra8PG1c8fH/eFAHr3f0mW2LhISnZVISZfXw8/swqWq4BKsbeC3iocYnyyw2+r
         UQJVXTMz6OSgi40SmcYqyi6GnYIOXW1ZreVDaSaaW2HaWPqZQ5V/Qu80SWaBKI5VCJQp
         Ckig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455865; x=1766060665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uMYuPDtmjXtqqPqGsMLg3a2SP3kOvuGEttwg0EgR0nQ=;
        b=RE7t2DGZra1zH7TEIyYLLGBSmCO5jFeCJLh6T7zCc1E8KX3HUOXUULWJQex/PCnPef
         W/4VcsFRnAxnRybgMZfhpeOARe+dm1ADgcuqJy4PCSmtSAVHkwzeP0hnAu+yCowtipj1
         mWoOMF6hMkQNxkC4798M0Uu8zpVpn3QROO3coxH9dQxAxhjZWDw5T+ptVGOBZ5tzZpx3
         M2dX07ML2FQfPPjZJJ4PMx4vOw8ehYdEXSHKXvRgduLzrN8kK8wMgdFem3PwEpvARkvT
         mltKpeuDdexbrwCKOENHHn+i4GktnVbHX3jjCNelFr9eIGGrIGVjK3dEqMV56kWsu2Li
         CgOA==
X-Forwarded-Encrypted: i=1; AJvYcCWiGcsHl6Rn1pmale1c4o2wWgYQzyaTlIYYopLlCQkhAXnhU5uC85DafFNtksHCo0gZT0ER8ixDgPF6e/KS@lists.linaro.org
X-Gm-Message-State: AOJu0YyjxzJ6YFJiIQFcOe7NhGeIxep61jxTSyOFphplmWsDL44doJDo
	P3PDmYGk4uyR1SntEIQPyyVEmviivYFFGDh02swiEpq7ETiO1E2N8raV
X-Gm-Gg: AY/fxX6K9rWXSG5vvwZJSRjYIoOz1pRNvJScTEux6b6jenX3mJ5hJtqeqEpe+eC9FdO
	EeegHmZF/dZyFQGJ1PpU1Ov0oGscYR5bqmCY9KLk5FM8SHesBqGenbqR4yH54822JP81cZZH8CJ
	0Isf3/2vOBvxXAF0UhiTPryP2DOwVYfS7YbGiqkM01dRb4Z5zVFvUSWs63XO/mhrl3A6p3TeOOH
	p17geZ6ooTpYJKUbMuFCLRcmstwC8qtWLxEeKSevlT1CrzIXS4jhnxgUsnsOLiEjBxWGVfbS+cD
	6ez3qP2z/OUl1vt8em9ArQTzjr6S903x/x243QWNd3OoGR3E9au28Fw8GqYAGUFO3rZRBe2P/QF
	jeGHRMq3JQSrq7GSQyGdPYN6Pk44xWCxcMh6b+OPkF19Oc8Kt6NQROJSLRh46+abvbjjXQ2ry09
	223EbnYhPNyR3+9Dj8D5OueIqL
X-Google-Smtp-Source: AGHT+IG6+nOV63qeCdEopzFKBt1oJ6TK1Rr7sDrWjLn5EB5vLBTFoKrf5aWgbxkmnNGwMnKlLiWZwQ==
X-Received: by 2002:a05:600c:46d2:b0:477:b642:9dc6 with SMTP id 5b1f17b1804b1-47a838643d0mr54434515e9.34.1765455865348;
        Thu, 11 Dec 2025 04:24:25 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:24 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:49 +0100
Message-ID: <20251211122407.1709-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.41:server fail,2a00:e180:152a:9f00:dc26:feac:12f7:4088:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7E3D93F998
X-Spamd-Bar: ---
Message-ID-Hash: TIQGVEDPF6GL7H74D55NXRD7OHLMNAC4
X-Message-ID-Hash: TIQGVEDPF6GL7H74D55NXRD7OHLMNAC4
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 18/19] drm/xe: Promote xe_hw_fence_irq to an ref counted object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TIQGVEDPF6GL7H74D55NXRD7OHLMNAC4/>
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
index 226d07a3d852..a4cac728cb17 100644
--- a/drivers/gpu/drm/xe/xe_exec_queue.c
+++ b/drivers/gpu/drm/xe/xe_exec_queue.c
@@ -141,7 +141,7 @@ static struct xe_exec_queue *__xe_exec_queue_alloc(struct xe_device *xe,
 	q->width = width;
 	q->msix_vec = XE_IRQ_DEFAULT_MSIX;
 	q->logical_mask = logical_mask;
-	q->fence_irq = &gt->fence_irq[hwe->class];
+	q->fence_irq = gt->fence_irq[hwe->class];
 	q->ring_ops = gt->ring_ops[hwe->class];
 	q->ops = gt->exec_queue_ops;
 	INIT_LIST_HEAD(&q->lr.link);
diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index 7caf781ba9e8..3a3866f77a38 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -589,7 +589,8 @@ static void xe_gt_fini(void *arg)
 		xe_pm_runtime_put(gt_to_xe(gt));
 
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i)
-		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
+		if (gt->fence_irq[i])
+			xe_hw_fence_irq_finish(gt->fence_irq[i]);
 
 	xe_gt_disable_host_l2_vram(gt);
 }
@@ -603,7 +604,9 @@ int xe_gt_init(struct xe_gt *gt)
 
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
index 86bd554bba3e..d0508b855410 100644
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
@@ -80,6 +108,8 @@ void xe_hw_fence_irq_finish(struct xe_hw_fence_irq *irq)
 
 	/* Safe release of the irq->lock used in dma_fence_init. */
 	synchronize_rcu();
+
+	xe_hw_fence_irq_put(irq);
 }
 
 void xe_hw_fence_irq_run(struct xe_hw_fence_irq *irq)
@@ -231,13 +261,14 @@ void xe_hw_fence_free(struct dma_fence *fence)
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
