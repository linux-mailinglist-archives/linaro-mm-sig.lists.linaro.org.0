Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D58805E46
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 20:02:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83D384416A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 19:02:48 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	by lists.linaro.org (Postfix) with ESMTPS id 7518540431
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Dec 2023 19:02:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=d2xJ11Vn;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.169 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6ce52d796d2so2314738b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Dec 2023 11:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701802958; x=1702407758; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gr71sNINRYPArpI+CNr5Fv+CLv1NDL4SnaWZ3f+C3cc=;
        b=d2xJ11VnKGvBzuhqVCL8VQ5WhnstcqN032f0Od8Q+1Snv26XJ6M8ECxABf65MIy2iV
         HVEJd/A+G+GpvxoS8y76WrHDFc1FK6WDRbQQH5/LxyiO/InJkFJxyZ/yCLvZDEioH9qG
         aG6AwxzMcxgxoPFVx62GlSOhErTbmUqB7fxwI/ZF0S2sjxwlw2peTUF7NnZ5KP8GPRlA
         CuZJrtN/TL/vomZLJ1luDRQFjDI9UsxWW4z/XXwfexNOdJ2NVKirZcwVKOahCsL3Ikdj
         6+Sownwp7mRmxYJYvDSHkrx2EWGm56PV6K4KmtA6uF9X+5Vjpqv6YX3YL+QomIAuAow4
         EYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802958; x=1702407758;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gr71sNINRYPArpI+CNr5Fv+CLv1NDL4SnaWZ3f+C3cc=;
        b=fIcM5dZsiP77B0W8VOAUVGS+y5rlapqXFY3kNI/Ih111H99cQmXWXG480BDZ/j+TVu
         xV4s9/KhXGKvDPBEGsGp+WC6wOiAl+FtE/PqDl1snYQZjfyorAShCAabLyyarxHs714r
         SuY0kv/Rn2cEegqBezNfAvnzGvUn5ZamlhP5zyjVpwX+Dy/gtVIoRB0Jykqf3Xp8+gKV
         C1YlZtYx3P2CQeUG4od7UO7K3IaXTd8ROG+LotW9+gvCSk7YKStnosvDPrAorOEGYQPg
         ++iy5ZVtN5+dXEO0ZqeqwzCAquIMLHTUA710XUC1IBAj9UQEBH1o2IGf5lRyDQS4JHIQ
         jmiA==
X-Gm-Message-State: AOJu0Yy0BhvDn1+g6C/eo0gILa2vaFcrU66+15hvEib+XDSaw3Uu9OMH
	VebQuzl8eDkdoXUiBNVOXZs=
X-Google-Smtp-Source: AGHT+IHU2ya8bSn4bAfwtnCaBXtL2UTM+QfuRrIn5PJLt281Wya4plXg44RgEht3EFWm/rTyANJk7g==
X-Received: by 2002:a05:6a00:1806:b0:6ce:3f02:10a3 with SMTP id y6-20020a056a00180600b006ce3f0210a3mr2331731pfa.8.1701802958385;
        Tue, 05 Dec 2023 11:02:38 -0800 (PST)
Received: from localhost ([2a00:79e1:2e00:1301:e1c5:6354:b45d:8ffc])
        by smtp.gmail.com with ESMTPSA id r14-20020aa7844e000000b006ce467a2489sm4867944pfn.175.2023.12.05.11.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 11:02:37 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  5 Dec 2023 11:02:33 -0800
Message-ID: <20231205190234.371322-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: 7518540431
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.169:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,amd.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: O7FSFCX4YZKDMWJBKAJ45AFPDPO6IP4B
X-Message-ID-Hash: O7FSFCX4YZKDMWJBKAJ45AFPDPO6IP4B
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Luben Tuikov <ltuikov89@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O7FSFCX4YZKDMWJBKAJ45AFPDPO6IP4B/>
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
 drivers/gpu/drm/scheduler/sched_main.c | 47 ++++++++++++++++++--------
 1 file changed, 32 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index 9762464e3f99..16b550949c57 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -52,6 +52,7 @@
 #include <linux/wait.h>
 #include <linux/sched.h>
 #include <linux/completion.h>
+#include <linux/dma-fence-unwrap.h>
 #include <linux/dma-resv.h>
 #include <uapi/linux/sched/types.h>
 
@@ -684,27 +685,14 @@ void drm_sched_job_arm(struct drm_sched_job *job)
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
+static int drm_sched_job_add_single_dependency(struct drm_sched_job *job,
+					       struct dma_fence *fence)
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
@@ -728,6 +716,35 @@ int drm_sched_job_add_dependency(struct drm_sched_job *job,
 
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
+		dma_fence_get(f);
+		ret = drm_sched_job_add_single_dependency(job, f);
+		if (ret)
+			break;
+	}
+
+	dma_fence_put(fence);
+
+	return ret;
+}
 EXPORT_SYMBOL(drm_sched_job_add_dependency);
 
 /**
-- 
2.42.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
