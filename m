Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AAFC58171
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:57:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33F0B3F853
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:57:15 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 98F4C3F855
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PmevJaXo;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b403bb7843eso180248566b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045627; x=1763650427; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1vtve7xgnWRe/vOdHtoREn4DAu8sZ2mMOpzTrHCPaxI=;
        b=PmevJaXolC/P47ABtrUriYx339jNGItLi/xK0kTaeQVz7wY/ts1+DrGhzTQxc/66OK
         uf+3bT43nhMvdHNClgRvk3zeA7Tbn122nGlGXOiekvcIYNb3SeFNvlDqkmJCTCB/RFht
         p9I3jkVl5U8Is//P6t7RBGwRscevSFFLUpqN0D6QZMDu9sRWTnWK1/esfHEnpnag/47Q
         qzanBEb4kL7RpS+iDo+3THejrQjvB0aQiSD/3Rawwi+2OyxQUcK/RiG66BbDDA5FZhsU
         o9F5rp3+zHmH0pG84L+rNYA72SFCCuyfWYH1c+AG3p4wClPcBge2v8Xm/xUD75rRw1q6
         QzFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045627; x=1763650427;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1vtve7xgnWRe/vOdHtoREn4DAu8sZ2mMOpzTrHCPaxI=;
        b=oxiyJyRWhAfMNLfasH7EbU0Ct3OkRDfJ1Fcsq7PWqn6afx6yNLupnvLxoHA6QyLLK1
         NexA3NIrq6FYFU7T/GhK25unLLF8zKqSRIdjxuFIZy/fNpIGqQniV1JgPBRXpW3Qec25
         Up/xvAxoQg58p8Ezhk9C8ZtISevgz4S76TtGtuTtLi1GfqCtCXKTz4aPOG5hgI4VKhrw
         ijtH/q9rgOz39O/KWgB+4v/wKTaIeZ4vqUq4RX4LYMyJa0Ae+UA5x74KfNckOUnUtEmN
         ajWuy/60+OcxjAZ3TROIMZKPzbxtkLQ0VyEi9aRvN3d1LNcZ9i0gAj6qOuQodA+BOloS
         LSrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXEAiLpRY1U4cSV26CeaiGr868CzaS0JKdDa/Ra0dIkm2WiL5MM+ihJgwMCxcELJQKduALZcLroNvsb6Fq@lists.linaro.org
X-Gm-Message-State: AOJu0YxekBBqNqU1xNWp4xVFCUCwQBbKiG/pOIG55DKi2o/H0JguJ1H0
	AdAlSrmPFFwuNSX4SycLLH05PWU87q1p845tkw/kiXJwaIvwKHSJUMzZ
X-Gm-Gg: ASbGncuSaVzlIXxi426nDRpEq1ShlLr+tGgQGf0ZIFjoVK0SHxgnA419+THO1suzh4P
	8Wx+Y2S0RgJmp3e7QEJiHuE88NGsYHisVJroUwQYu4CDCelRGush3NN2rkfmBLT131LhYM2843d
	FUHfNZIKmTE8StK4nRLvLV+9/CKhISPexUo3+r51uUnFc/yKaOLtw2SA+hyDUNNYskN0o35E/jH
	7iZyBh6Vbjp0BOXxn601eQXsDvJPGy2qvYRCidphliRnGr7sjzLq/hk+6hiGN6O3LuCXUargP4H
	rzZUBLZFw7TBaSMabquv2wJPBDE1XIf7ZFqsyVUzCeBdkdcjdExL1oArxPJlx74/UEbb6L7wK+8
	pCGfMzE8RXQtDo8tdZtPWxfDpJWz6E6xdd5u7yV/XejoGgCBWeD6lSMrmRQJC7vmC6JVwTvFLQR
	DNCPq6HPzjOGs=
X-Google-Smtp-Source: AGHT+IGhN0BwuRz6xHS4a4rKQwJnNXuC7Dv18mVfD20rjR0xsbY2hGCz0+6Jk5TkTMzE1pREPfPY0Q==
X-Received: by 2002:a17:907:3e23:b0:b71:df18:9fd6 with SMTP id a640c23a62f3a-b7331aaac19mr727099166b.50.1763045627465;
        Thu, 13 Nov 2025 06:53:47 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.46
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
Date: Thu, 13 Nov 2025 15:51:53 +0100
Message-ID: <20251113145332.16805-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 98F4C3F855
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: OZRXRPBXFAXUEK3SNMTBHKXD5OURXCNQ
X-Message-ID-Hash: OZRXRPBXFAXUEK3SNMTBHKXD5OURXCNQ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 16/18] drm/xe: Drop HW fence slab
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OZRXRPBXFAXUEK3SNMTBHKXD5OURXCNQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Matthew Brost <matthew.brost@intel.com>

Helps with disconnecting fences from Xe module.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/xe/xe_hw_fence.c | 25 ++-----------------------
 drivers/gpu/drm/xe/xe_hw_fence.h |  3 ---
 drivers/gpu/drm/xe/xe_module.c   |  5 -----
 3 files changed, 2 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_hw_fence.c b/drivers/gpu/drm/xe/xe_hw_fence.c
index 3456bec93c70..5edcf057aceb 100644
--- a/drivers/gpu/drm/xe/xe_hw_fence.c
+++ b/drivers/gpu/drm/xe/xe_hw_fence.c
@@ -6,7 +6,6 @@
 #include "xe_hw_fence.h"
 
 #include <linux/device.h>
-#include <linux/slab.h>
 
 #include "xe_bo.h"
 #include "xe_device.h"
@@ -16,28 +15,9 @@
 #include "xe_map.h"
 #include "xe_trace.h"
 
-static struct kmem_cache *xe_hw_fence_slab;
-
-int __init xe_hw_fence_module_init(void)
-{
-	xe_hw_fence_slab = kmem_cache_create("xe_hw_fence",
-					     sizeof(struct xe_hw_fence), 0,
-					     SLAB_HWCACHE_ALIGN, NULL);
-	if (!xe_hw_fence_slab)
-		return -ENOMEM;
-
-	return 0;
-}
-
-void xe_hw_fence_module_exit(void)
-{
-	rcu_barrier();
-	kmem_cache_destroy(xe_hw_fence_slab);
-}
-
 static struct xe_hw_fence *fence_alloc(void)
 {
-	return kmem_cache_zalloc(xe_hw_fence_slab, GFP_KERNEL);
+	return kzalloc(sizeof(struct xe_hw_fence), GFP_KERNEL);
 }
 
 static void fence_free(struct rcu_head *rcu)
@@ -45,8 +25,7 @@ static void fence_free(struct rcu_head *rcu)
 	struct xe_hw_fence *fence =
 		container_of(rcu, struct xe_hw_fence, dma.rcu);
 
-	if (!WARN_ON_ONCE(!fence))
-		kmem_cache_free(xe_hw_fence_slab, fence);
+	kfree(fence);
 }
 
 static void hw_fence_irq_run_cb(struct irq_work *work)
diff --git a/drivers/gpu/drm/xe/xe_hw_fence.h b/drivers/gpu/drm/xe/xe_hw_fence.h
index f13a1c4982c7..96f34332fd8d 100644
--- a/drivers/gpu/drm/xe/xe_hw_fence.h
+++ b/drivers/gpu/drm/xe/xe_hw_fence.h
@@ -11,9 +11,6 @@
 /* Cause an early wrap to catch wrapping errors */
 #define XE_FENCE_INITIAL_SEQNO (-127)
 
-int xe_hw_fence_module_init(void);
-void xe_hw_fence_module_exit(void);
-
 void xe_hw_fence_irq_init(struct xe_hw_fence_irq *irq);
 void xe_hw_fence_irq_finish(struct xe_hw_fence_irq *irq);
 void xe_hw_fence_irq_run(struct xe_hw_fence_irq *irq);
diff --git a/drivers/gpu/drm/xe/xe_module.c b/drivers/gpu/drm/xe/xe_module.c
index d08338fc3bc1..32517bcd533c 100644
--- a/drivers/gpu/drm/xe/xe_module.c
+++ b/drivers/gpu/drm/xe/xe_module.c
@@ -12,7 +12,6 @@
 
 #include "xe_drv.h"
 #include "xe_configfs.h"
-#include "xe_hw_fence.h"
 #include "xe_pci.h"
 #include "xe_pm.h"
 #include "xe_observation.h"
@@ -114,10 +113,6 @@ static const struct init_funcs init_funcs[] = {
 		.init = xe_configfs_init,
 		.exit = xe_configfs_exit,
 	},
-	{
-		.init = xe_hw_fence_module_init,
-		.exit = xe_hw_fence_module_exit,
-	},
 	{
 		.init = xe_sched_job_module_init,
 		.exit = xe_sched_job_module_exit,
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
