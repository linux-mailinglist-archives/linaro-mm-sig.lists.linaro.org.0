Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A557CB5D9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:29:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 435F23F99B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:29:11 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 49D363F9B6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="bSjrw/mu";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so93905e9.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455863; x=1766060663; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UzO56B2i2+8U9sOUzCIV38YVPug2eKaqoEQZTRXjhLU=;
        b=bSjrw/munmJ2VNVUDbStGvwQCUS72fybzXI+TxkDlkO/U3ZwdblafEg9Cn3c4ebn8Y
         ST4l/r8dFmVNqzkN4JVBM8QhCO8LsaedYYxSm5HqTNMnJHE15JbdbsSDKUZvfxQvA/0S
         MRjd3bjeYg/c5HDZ8P84Xli6x3HqwPAixc8z1O0HuhOCdIeepuY2c0FGxV99axq0qn9R
         x08qL2/lssiZxE3nDRTXMFNmihTQpuU2WDYpYGSFUAep4rKQNc9pzibqZbtZWbEPgidu
         kw0V0SrbaIZ2nrx3gBzqwDrU0R83wNo6sPYyqIkJNwUQ1T8GWRdL9bn36r2jjoZQiZLT
         17ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455863; x=1766060663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UzO56B2i2+8U9sOUzCIV38YVPug2eKaqoEQZTRXjhLU=;
        b=c4Fe8ijMZQaX0drZ7S5C6uYV+wNXZ3EosCvCJdsRPFIGGEhmuh764ruN7FaxvT5wTn
         /f7ozFzipdeTNwF8eZ8y2pv+5ULO26DdOsBVIQvzdwkbudUusfcEFwcKtWo7/diq8bZ5
         V23X/xliK4rGTqtUnAxAjL4Z6vk5zhKQnWHd4HPnAv15KvHNmnnX76APUNCj4Axs+MtM
         EGJV8bf1+VrHvA0KFHBOEyXgFG230acqXbuKmgJrYXRlVdCszgE0oPpXnosRr3TbAlLx
         yU2QTUYf99P2Nbk2xCuJLFIyjLqsnED6fcnqtwB9NfuOYnh22D1fLwseOaUf+nTA8K6K
         okJw==
X-Forwarded-Encrypted: i=1; AJvYcCWKJ/K8J/CCA5QCm2cnFiSEDMGqTv5h6RuGXMSc4hTK9BHc0uNDRPjkeyxZZYH1fXN6y3NSWCcgYNbSuw67@lists.linaro.org
X-Gm-Message-State: AOJu0YwJMN+5SBjLmqHGDgSM5S23xO31GaegKNEhh8T8l3Azh+HI+bxB
	/1n9ORq2Wl0eeWmC3dW1t/Rw49T2ApnLgpqYLKrgpYLX67JarEr7BLhA
X-Gm-Gg: AY/fxX4Z8sZ0D/Y9+fxwCauXYEFrL+n4A5YwrZoducIANy3TCTwztKsYHKX4X/VudA8
	dedAaY3Tx8+UNZZ/uriefBt6rbLBfCveCTO+gDbNgvJPVWexxZx4kqNQjors1vFHF7YLzafwv2P
	S8VMe+S1o+ULOCqiu6X0mj++5q8galoSW0GgUaGzJCixKP/Ma8/Z1APxQoBEyYodACzawJylKk9
	bD8e/t+bFhumLNbT2mtmvjx8BVyCY5LCcOiAdwsG29QcXL70sotuWTE2c3zgT55AynkjddlwR2q
	hnD2yIZwoDG8VBqS47ormrOTC1lLp+if0CTbeviINRhPJq82Jc1KTGz9udHtA18mf2pnX9IAYN2
	sQ9a+Z+cNYQVy1fBHQopmfR8kYn55jnYHv/NAVH2xXd9pYBF+Ak0r3cq9FU2GGQvKw4w0MBsONS
	/RHlx6FZVsMRvT47prt2oYE28w
X-Google-Smtp-Source: AGHT+IEggSQJyBno/a9Y783NmGqpQTVB69trRzaLUVJNX5b8bkWkJbnsFyZPi3TvY4+883g0wf5rdg==
X-Received: by 2002:a05:600c:6303:b0:477:9fcf:3ff9 with SMTP id 5b1f17b1804b1-47a838113admr54209315e9.27.1765455863239;
        Thu, 11 Dec 2025 04:24:23 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:22 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:47 +0100
Message-ID: <20251211122407.1709-17-christian.koenig@amd.com>
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.50:query timed out];
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
X-Rspamd-Queue-Id: 49D363F9B6
X-Spamd-Bar: ---
Message-ID-Hash: IVPNAWUGR7T3HXMPTPD6DI4YLFJDAYDB
X-Message-ID-Hash: IVPNAWUGR7T3HXMPTPD6DI4YLFJDAYDB
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 16/19] drm/xe: Disconnect the low hanging fences from Xe module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IVPNAWUGR7T3HXMPTPD6DI4YLFJDAYDB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Matthew Brost <matthew.brost@intel.com>

Preempt, tlb invalidation, and OA fences now use embedded fence lock.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/xe/xe_oa.c                  | 5 +----
 drivers/gpu/drm/xe/xe_preempt_fence.c       | 3 +--
 drivers/gpu/drm/xe/xe_preempt_fence_types.h | 2 --
 drivers/gpu/drm/xe/xe_tlb_inval.c           | 5 +----
 drivers/gpu/drm/xe/xe_tlb_inval_types.h     | 2 --
 5 files changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_oa.c b/drivers/gpu/drm/xe/xe_oa.c
index cc48663c2b48..2dc33f645bdd 100644
--- a/drivers/gpu/drm/xe/xe_oa.c
+++ b/drivers/gpu/drm/xe/xe_oa.c
@@ -112,8 +112,6 @@ struct xe_oa_config_bo {
 struct xe_oa_fence {
 	/* @base: dma fence base */
 	struct dma_fence base;
-	/* @lock: lock for the fence */
-	spinlock_t lock;
 	/* @work: work to signal @base */
 	struct delayed_work work;
 	/* @cb: callback to schedule @work */
@@ -1017,8 +1015,7 @@ static int xe_oa_emit_oa_config(struct xe_oa_stream *stream, struct xe_oa_config
 	}
 
 	/* Point of no return: initialize and set fence to signal */
-	spin_lock_init(&ofence->lock);
-	dma_fence_init(&ofence->base, &xe_oa_fence_ops, &ofence->lock, 0, 0);
+	dma_fence_init(&ofence->base, &xe_oa_fence_ops, NULL, 0, 0);
 
 	for (i = 0; i < stream->num_syncs; i++) {
 		if (stream->syncs[i].flags & DRM_XE_SYNC_FLAG_SIGNAL)
diff --git a/drivers/gpu/drm/xe/xe_preempt_fence.c b/drivers/gpu/drm/xe/xe_preempt_fence.c
index 7f587ca3947d..75f433aee747 100644
--- a/drivers/gpu/drm/xe/xe_preempt_fence.c
+++ b/drivers/gpu/drm/xe/xe_preempt_fence.c
@@ -145,9 +145,8 @@ xe_preempt_fence_arm(struct xe_preempt_fence *pfence, struct xe_exec_queue *q,
 {
 	list_del_init(&pfence->link);
 	pfence->q = xe_exec_queue_get(q);
-	spin_lock_init(&pfence->lock);
 	dma_fence_init(&pfence->base, &preempt_fence_ops,
-		      &pfence->lock, context, seqno);
+		       NULL, context, seqno);
 
 	return &pfence->base;
 }
diff --git a/drivers/gpu/drm/xe/xe_preempt_fence_types.h b/drivers/gpu/drm/xe/xe_preempt_fence_types.h
index ac125c697a41..a98de8d1c723 100644
--- a/drivers/gpu/drm/xe/xe_preempt_fence_types.h
+++ b/drivers/gpu/drm/xe/xe_preempt_fence_types.h
@@ -25,8 +25,6 @@ struct xe_preempt_fence {
 	struct xe_exec_queue *q;
 	/** @preempt_work: work struct which issues preemption */
 	struct work_struct preempt_work;
-	/** @lock: dma-fence fence lock */
-	spinlock_t lock;
 	/** @error: preempt fence is in error state */
 	int error;
 };
diff --git a/drivers/gpu/drm/xe/xe_tlb_inval.c b/drivers/gpu/drm/xe/xe_tlb_inval.c
index 918a59e686ea..5c23e76b0241 100644
--- a/drivers/gpu/drm/xe/xe_tlb_inval.c
+++ b/drivers/gpu/drm/xe/xe_tlb_inval.c
@@ -133,7 +133,6 @@ int xe_gt_tlb_inval_init_early(struct xe_gt *gt)
 	tlb_inval->seqno = 1;
 	INIT_LIST_HEAD(&tlb_inval->pending_fences);
 	spin_lock_init(&tlb_inval->pending_lock);
-	spin_lock_init(&tlb_inval->lock);
 	INIT_DELAYED_WORK(&tlb_inval->fence_tdr, xe_tlb_inval_fence_timeout);
 
 	err = drmm_mutex_init(&xe->drm, &tlb_inval->seqno_lock);
@@ -420,10 +419,8 @@ void xe_tlb_inval_fence_init(struct xe_tlb_inval *tlb_inval,
 {
 	xe_pm_runtime_get_noresume(tlb_inval->xe);
 
-	spin_lock_irq(&tlb_inval->lock);
-	dma_fence_init(&fence->base, &inval_fence_ops, &tlb_inval->lock,
+	dma_fence_init(&fence->base, &inval_fence_ops, NULL,
 		       dma_fence_context_alloc(1), 1);
-	spin_unlock_irq(&tlb_inval->lock);
 	INIT_LIST_HEAD(&fence->link);
 	if (stack)
 		set_bit(FENCE_STACK_BIT, &fence->base.flags);
diff --git a/drivers/gpu/drm/xe/xe_tlb_inval_types.h b/drivers/gpu/drm/xe/xe_tlb_inval_types.h
index 8f8b060e9005..80e893950099 100644
--- a/drivers/gpu/drm/xe/xe_tlb_inval_types.h
+++ b/drivers/gpu/drm/xe/xe_tlb_inval_types.h
@@ -104,8 +104,6 @@ struct xe_tlb_inval {
 	struct delayed_work fence_tdr;
 	/** @job_wq: schedules TLB invalidation jobs */
 	struct workqueue_struct *job_wq;
-	/** @tlb_inval.lock: protects TLB invalidation fences */
-	spinlock_t lock;
 };
 
 /**
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
