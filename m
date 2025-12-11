Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A6054CB5D7F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:28:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C70693F99F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:28:30 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id AB5B13F9AD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=P2oZ7lrO;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso58295e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455865; x=1766060665; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ORLHz2w3HN7577WYeRBNKkUA0nS4mT9h86Mtx8Nxokw=;
        b=P2oZ7lrOKBUAKnS3RYDUMfLVeKvjwlG2P0GKeSMruC1gMbwpQsD1c6dkAV0aUsbHfh
         YxlsU20y+jZrZOk0QIafPwsfE92+UVwH+WsKpx8Uu1tL8gEFRxjCteRXaUDWv8bO+O1j
         b27/rVWuAorEkeQlYu15hCQ0h7lIvJmi5uxvkYaexBGPocV2XUxcXGOsN7JZT/I2MKuT
         IIOo2UxtbTR1bQcxxbkEQK14s1QE79QUjYE8QzyDwRgRGiTNiKFgExcM49PGyCjgsDyi
         bou47GTPEC/Avv/w3mnE875VB8DciD+mi8C7tttX3ffUPEWh4mXC0eXyud8aW2nAkvo6
         DFWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455865; x=1766060665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ORLHz2w3HN7577WYeRBNKkUA0nS4mT9h86Mtx8Nxokw=;
        b=BUH0NKd8ZMc8f0HGcu0O3ghmn+bO5DxY0M47v/kXKrC0x2tYCQRkpUi0IJFadlrQ+Z
         wbdD3K8GT6m6fdLgq25Webyacfwd20JwoYLMmnCfKXmNPWDqPbDYfO5fh0DCD1i7etH9
         9Fp0yK7Og/A8y6OLdLxzZiizf/yeV0hEWgtxh+D8oLIl5nvx65YcKjGEgap2i1fDX6k0
         FGhCHq6024pQW3GJrYYHRRQQWurMvi7r0rc+tHIiVjLkcTilgPNMP9OgTaSANBd5YWyp
         I9+d1M02UzVc3ldR1gyaCN2vog/V3hH5s4dwbnWHhsJOVId4waMYZL+KHxgw+rAPUKRH
         wdSA==
X-Forwarded-Encrypted: i=1; AJvYcCXaoXwtqyKQENwBCpnBt3gUpCGv2nocTWX86ot+4CMGfFpFeW1nrEzBmrCmr0fQLYoSdtwqMhMtzR7DQfoI@lists.linaro.org
X-Gm-Message-State: AOJu0YzPjaZCn/r1/B8ywo1E/WcmD5TqJtm/2J+snMraTIqPdrKKMysB
	LMRsTjSl3oP5w7cxNxDtUDbppM4+7Lr1O65JzxU8+X59enmgIFkARzDQ
X-Gm-Gg: AY/fxX44cAkNmEl05UMgbT7K81F7C0/t6Mf7YzF6Cusgnw4oYLQb6OqNIhZ4aK3v2fS
	e2WS7IgBNOrhNH/VIEWunxcOpPvJBrW3yG/UVoE2TtscmAmq47Vll0xWJ7hG2dKUmpejfJkHJo/
	lgKg0eMJGz0DwkaXPWjQjNcYh+t1AZpIpi8ctcqd2PmbNrgboCEVkR6vWlYXRMmuPHX7Y1TxKNC
	PmdZkI/OWt/OvQ6XQvZ0SReVBWlz7347xwdGvJ11o8eNr2P1hBoB9j2k4DIPF0o4FwS8VRXao/E
	mLUozG5K/9vLOR40bP/m2LXKczNF+YBYqZ8X6HtYrwuZh3eZ3xnsnHw+fnTHieitRIoVRJMl6hY
	3TUYdiqZfEmVGs6dxHQJBdCGdxvKfNdqmnWsiggU3YsNg/1k516EuIyOdB4Il2cjb1oFWS7Utx3
	QO9ZjWylDojKBBbU/ECp1ikE5I
X-Google-Smtp-Source: AGHT+IHQf20MGdezP6xuUeOkiQD2QK3yNI8WJQHWSFA0RgATAjf6yJa3ioXgk/P4Upq2VpMN45CmyA==
X-Received: by 2002:a05:600c:3b24:b0:477:a289:d854 with SMTP id 5b1f17b1804b1-47a8bd020d8mr12351965e9.5.1765455864578;
        Thu, 11 Dec 2025 04:24:24 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:24 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:48 +0100
Message-ID: <20251211122407.1709-18-christian.koenig@amd.com>
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:152a:9f00:dc26:feac:12f7:4088:server fail];
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
X-Rspamd-Queue-Id: AB5B13F9AD
X-Spamd-Bar: ---
Message-ID-Hash: LEUHM6YACY6NGNQ7XGNJVGK74QKQJFOJ
X-Message-ID-Hash: LEUHM6YACY6NGNQ7XGNJVGK74QKQJFOJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 17/19] drm/xe: Drop HW fence slab
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LEUHM6YACY6NGNQ7XGNJVGK74QKQJFOJ/>
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
index 3d89c660ea73..86bd554bba3e 100644
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
