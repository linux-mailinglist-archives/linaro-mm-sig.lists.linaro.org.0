Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5753655F1E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 01:35:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45F8C3F479
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jun 2022 23:35:10 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by lists.linaro.org (Postfix) with ESMTPS id 9B0863EC7A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 23:35:04 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id m14-20020a17090a668e00b001ee6ece8368so8243024pjj.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 16:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vaT+UkiJ0ehVxWBX9B2xr4KFs7OszTBK9ROkHufIgOI=;
        b=KvgMfYwW6bO55xcTYS78EXDK4KyhYC0I79n7UFAiv2oN71X3dozvuw4IO/4buB8v+z
         jSY4/vmjn/YWkv1VA0fXbnAQ8lEnx7tzxW+7HBn965F1o0tFf5ZUvFesbqT0vQkbyfgC
         tBJUb8I3ZgWgRaKe7sHMwsCO7UKVz5NBGCP73L5pYPad6ZFcBPaMAa3U+LlTj6OIzvWI
         bJDParRTOMiCxmQC/w6Yo/mcsNeG4HsKfL/T8MMbsRZJ52L2/7BtP2kOoIWVgQpqyp+n
         pIN38FzDT4JnIUsO7w0zTxMFLJrnM+3J9CmsMpmTG//BhE//lVAi77BucSPj6qKp6qYu
         de8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vaT+UkiJ0ehVxWBX9B2xr4KFs7OszTBK9ROkHufIgOI=;
        b=ai689UU/a9mdEvMZgTxQWUT3XnWmwrfmwc87RD0Qm1fvXB3fe0Vqb9TDB5aiwTzj3K
         9LwrWk0QGbCkxBiNNT3HTrveZaDbEXbZwsCEgY8DBjLHp3mKosvh/EPUtqiYsi9iiccO
         hYmtbnwIlJ39VJAoyAQiHcIan6FTOfCwDSbT5F/TEXHzt+SrRM/0Q1jh942gavDg68Vp
         AsbfHnqygrpFpWO12Ug36OhZCAFCtegTaMtql8ut3ns/lt9/3vX9BlyLHBYaaFOw+xAJ
         qqqIvH2jbZ/K/P/JTC2g+a1Me8pIBhfZ7sMUvFOrv//7G7xeN+3nrkuJYE/Jk9biEWTe
         imOA==
X-Gm-Message-State: AJIora8AmsjvKTje8VNXd46qcW3W9/fprybrJcBSFjwJ47xdL+PLKt7A
	+FSaTIfYYewzoUb6VlY4N/4=
X-Google-Smtp-Source: AGRyM1sEQP7f8OdcQ+NHqVS+ZsMay7AZxS/jUEG5b2E5pTElpDRfM9aO52b21oP6lqw8UgauG19pog==
X-Received: by 2002:a17:903:1208:b0:16b:81f6:e992 with SMTP id l8-20020a170903120800b0016b81f6e992mr7409363plh.55.1656459303698;
        Tue, 28 Jun 2022 16:35:03 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
        by smtp.gmail.com with ESMTPSA id s12-20020a17090ad48c00b001e2ebcce5d5sm442323pju.37.2022.06.28.16.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 16:35:02 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Jun 2022 16:35:07 -0700
Message-Id: <20220628233512.439555-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Message-ID-Hash: IWXOLPQ4ZIK3JUVDEIUNY7JD63MJ26TY
X-Message-ID-Hash: IWXOLPQ4ZIK3JUVDEIUNY7JD63MJ26TY
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Matthew Auld <matthew.auld@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/i915: Remove __dma_fence_is_chain()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IWXOLPQ4ZIK3JUVDEIUNY7JD63MJ26TY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

drive-by cleanup

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 319936f91ac5..667841780514 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -73,11 +73,6 @@ static void fence_set_priority(struct dma_fence *fence,
 	rcu_read_unlock();
 }
 
-static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
-{
-	return fence->ops == &dma_fence_chain_ops;
-}
-
 void i915_gem_fence_wait_priority(struct dma_fence *fence,
 				  const struct i915_sched_attr *attr)
 {
@@ -93,7 +88,7 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
 
 		for (i = 0; i < array->num_fences; i++)
 			fence_set_priority(array->fences[i], attr);
-	} else if (__dma_fence_is_chain(fence)) {
+	} else if (dma_fence_is_chain(fence)) {
 		struct dma_fence *iter;
 
 		/* The chain is ordered; if we boost the last, we boost all */
-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
