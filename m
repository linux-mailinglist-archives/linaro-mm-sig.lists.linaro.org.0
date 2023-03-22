Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EADB56C598A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 23:44:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4C193EF88
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 22:44:28 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id 578913E96A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Mar 2023 22:44:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=d0r7ofq5;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id q102so5355907pjq.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Mar 2023 15:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679525056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u7IFLnv2wp+6+M4RDOrDXlUdlj/4yQHYPm5exES9iSg=;
        b=d0r7ofq5hY83b1KFqtk/khmAPHfvgWyeyA3MONIOqMO+HDlgKrSCSYHRBu9oUUxNh0
         j4EqAQFrGaB9BN7ZmZnfRLFB26ZpAiJMEJnoQxyJHli0iP9bAT/iH7DVxyRFGD+bJPKJ
         SLBipXnpy6bZPQzbq/pKSi5ySkL0ewxUDi0/JHUXGcSOfS9ASAUCHoG5N3dKZR5lmYBn
         8pDDQWpd8Og5i0XCV/oMlJ/mbTeh2P7zzsGjJeagqUcCa97pbKfSObAs2UtIl33p5/EE
         GHfsN5IyZuIzig3G4q4KZLyOfHa48jwasgb2TM9tordUu7H8Qafj78GDSaI4JfkXej/f
         28qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679525056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u7IFLnv2wp+6+M4RDOrDXlUdlj/4yQHYPm5exES9iSg=;
        b=uLySpx2r2fVORE63Hm2B9t0nW2tsG8rV9W9zG/vGWegOGKktyupeXZT+SRUGYA+VEI
         cL8fnamRzVxvDoOJtFfoXt5h1zUv1f+C+WpMk4mNvcx0YF+tJIQLh+FtwgRnKfvyzoQ6
         AYNBZ1Jvk7Sm3vhZ82PDSKuNXr8/Qxh06GEPBJAv7fT1KjeAGakMzoHbWE9BX9HP8krg
         158sx6aKxAy+WUVvilPcYqjxsqvLiVW8vG/8JyKdpv7pEAobqLNQctiGWm8ZEf9dh+Kl
         o7zYMdF+gU3qqrKoFp8c41eYtRcxU2AfDNHTG+lfMaNBT/ma1MJ4ap+YEq9r0sjL9dqI
         GA4g==
X-Gm-Message-State: AO0yUKVp5qRtRjxZW3Yu0AuNlkx/ZKCKke6uGj3HMtnM/7QysTgJj8TR
	0yUQKih8C3cvSHxzBZl5ZRY=
X-Google-Smtp-Source: AK7set/xDVFAvIS+FUJS6LFPnzBnvslEhWBhH930+MmTO6iZlkSX7t7YHlarHpTIx2aAUAoJOtOaRQ==
X-Received: by 2002:a17:90b:3803:b0:234:a9df:db96 with SMTP id mq3-20020a17090b380300b00234a9dfdb96mr5338431pjb.33.1679525056271;
        Wed, 22 Mar 2023 15:44:16 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id p5-20020a1709026b8500b001a1aeb3a7a9sm9798689plk.137.2023.03.22.15.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 15:44:15 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 22 Mar 2023 15:44:03 -0700
Message-Id: <20230322224403.35742-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 578913E96A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.47:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-pj1-f47.google.com:helo,mail-pj1-f47.google.com:rdns,chromium.org:email];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.47:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: GOMNQFMAA5YQ2DHMXYZLYAQLVTHZVBB4
X-Message-ID-Hash: GOMNQFMAA5YQ2DHMXYZLYAQLVTHZVBB4
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GOMNQFMAA5YQ2DHMXYZLYAQLVTHZVBB4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Container fences have burner contexts, which makes the trick to store at
most one fence per context somewhat useless if we don't unwrap array or
chain fences.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
tbh, I'm not sure why we weren't doing this already, unless there is
something I'm overlooking

 drivers/gpu/drm/scheduler/sched_main.c | 43 +++++++++++++++++---------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index c2ee44d6224b..f59e5335afbb 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -41,20 +41,21 @@
  * 4. Entities themselves maintain a queue of jobs that will be scheduled on
  *    the hardware.
  *
  * The jobs in a entity are always scheduled in the order that they were pushed.
  */
 
 #include <linux/kthread.h>
 #include <linux/wait.h>
 #include <linux/sched.h>
 #include <linux/completion.h>
+#include <linux/dma-fence-unwrap.h>
 #include <linux/dma-resv.h>
 #include <uapi/linux/sched/types.h>
 
 #include <drm/drm_print.h>
 #include <drm/drm_gem.h>
 #include <drm/gpu_scheduler.h>
 #include <drm/spsc_queue.h>
 
 #define CREATE_TRACE_POINTS
 #include "gpu_scheduler_trace.h"
@@ -665,41 +666,27 @@ void drm_sched_job_arm(struct drm_sched_job *job)
 	sched = entity->rq->sched;
 
 	job->sched = sched;
 	job->s_priority = entity->rq - sched->sched_rq;
 	job->id = atomic64_inc_return(&sched->job_id_count);
 
 	drm_sched_fence_init(job->s_fence, job->entity);
 }
 EXPORT_SYMBOL(drm_sched_job_arm);
 
-/**
- * drm_sched_job_add_dependency - adds the fence as a job dependency
- * @job: scheduler job to add the dependencies to
- * @fence: the dma_fence to add to the list of dependencies.
- *
- * Note that @fence is consumed in both the success and error cases.
- *
- * Returns:
- * 0 on success, or an error on failing to expand the array.
- */
-int drm_sched_job_add_dependency(struct drm_sched_job *job,
-				 struct dma_fence *fence)
+static int _add_dependency(struct drm_sched_job *job, struct dma_fence *fence)
 {
 	struct dma_fence *entry;
 	unsigned long index;
 	u32 id = 0;
 	int ret;
 
-	if (!fence)
-		return 0;
-
 	/* Deduplicate if we already depend on a fence from the same context.
 	 * This lets the size of the array of deps scale with the number of
 	 * engines involved, rather than the number of BOs.
 	 */
 	xa_for_each(&job->dependencies, index, entry) {
 		if (entry->context != fence->context)
 			continue;
 
 		if (dma_fence_is_later(fence, entry)) {
 			dma_fence_put(entry);
@@ -709,20 +696,46 @@ int drm_sched_job_add_dependency(struct drm_sched_job *job,
 		}
 		return 0;
 	}
 
 	ret = xa_alloc(&job->dependencies, &id, fence, xa_limit_32b, GFP_KERNEL);
 	if (ret != 0)
 		dma_fence_put(fence);
 
 	return ret;
 }
+
+/**
+ * drm_sched_job_add_dependency - adds the fence as a job dependency
+ * @job: scheduler job to add the dependencies to
+ * @fence: the dma_fence to add to the list of dependencies.
+ *
+ * Note that @fence is consumed in both the success and error cases.
+ *
+ * Returns:
+ * 0 on success, or an error on failing to expand the array.
+ */
+int drm_sched_job_add_dependency(struct drm_sched_job *job,
+				 struct dma_fence *fence)
+{
+	struct dma_fence_unwrap iter;
+	struct dma_fence *f;
+	int ret = 0;
+
+	dma_fence_unwrap_for_each (f, &iter, fence) {
+		ret = _add_dependency(job, f);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
 EXPORT_SYMBOL(drm_sched_job_add_dependency);
 
 /**
  * drm_sched_job_add_resv_dependencies - add all fences from the resv to the job
  * @job: scheduler job to add the dependencies to
  * @resv: the dma_resv object to get the fences from
  * @usage: the dma_resv_usage to use to filter the fences
  *
  * This adds all fences matching the given usage from @resv to @job.
  * Must be called with the @resv lock held.
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
