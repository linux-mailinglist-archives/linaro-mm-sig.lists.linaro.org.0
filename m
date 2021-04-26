Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD136BC5C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Apr 2021 01:50:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A202160A5F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Apr 2021 23:50:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 80F2460A86; Mon, 26 Apr 2021 23:50:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9772160A63;
	Mon, 26 Apr 2021 23:50:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6674B60A59
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Apr 2021 23:50:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 63F4F60A63; Mon, 26 Apr 2021 23:50:01 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by lists.linaro.org (Postfix) with ESMTPS id 5BFCF60A59
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Apr 2021 23:49:59 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id q10so41094745pgj.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Apr 2021 16:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Kj0SXA9vsOtoPJRmbl9kO6maA5cV9sB7CgScAwXMzI=;
 b=PFvUwvqW69maGIZ5IE53RvvUM+/kvn8XSEdtYOjbhbPlzT0Riuw8w7Ts1JFVxIDqpQ
 hkN+WE+9gKJKaxtoiRgHMpvs9sljBPxeoFTD8nkotwJ/goVrvSwQUvwMUdX0MB/hLWnu
 MHDlhhg8N/JbcQAJZ2Db5qaoK6tdTEf1BouwU/gi3Jg6UZCryIRDm9+uZZRvWjQ+QUb2
 +OMRwFtjC+RQpFVbk6gyUexFskpIjmkRZODzFO+vpHsN+PWjGIOYxdVwKcYgAWrvOR92
 EyGQlT0paeIxMRnpQ59hRd6/qHmCbR/KDJxaMA02Q6ibFopq2uKIiC6xQzJoLcSwHQ+0
 bIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Kj0SXA9vsOtoPJRmbl9kO6maA5cV9sB7CgScAwXMzI=;
 b=ksoyPA1MWREr32r+lyx+w893oNQvR8fJpxsgmbm/uG4OhWlNVIxxZOElBvlrMjrVhR
 EDj6ZuDdh18xkG67VKfElcRZ/u9l+e/xvIrOL50Bv43RHDr/TDsRHHMvrd4nkCpSfM1t
 mt3jGBE4M7aDc2zSeKHRGDqPSvqlgvMlVnsCwhcnrA0vwJ20THhUxCFBSCtC5M5NknRL
 ppT9cX4VRq88i5jbxtfvWe3744T+7dSqq5qIcjPDLIuxGIME0PwNnc29Azzii3aAIazY
 YmvLb1X3CZXMJ/Af73oFzC97DCR03bMcyBfmbFZ7F/Ks72Bu75kNRP3Yp9kVvohh+aOS
 i5AA==
X-Gm-Message-State: AOAM531Wr9RYYSpuYCYrzEugrHD8KZIhK3S3DCfEJVJRo6OBOJc/UPns
 Nim1tGsWSVtZtmFGchLuFfw=
X-Google-Smtp-Source: ABdhPJzlJCZjMw1AMpMrqCCtVcFtp5ga8BJTa2+1W/jHgDQCNHWITvuZXAkIlz5HiSTjiD6+Kb+v/A==
X-Received: by 2002:a63:eb46:: with SMTP id b6mr4060320pgk.199.1619480998570; 
 Mon, 26 Apr 2021 16:49:58 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id w189sm646315pfc.31.2021.04.26.16.49.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 16:49:57 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 26 Apr 2021 16:53:25 -0700
Message-Id: <20210426235326.1230125-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] drm/msm: Do not unpin/evict exported
 dma-buf's
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
Cc: Rob Clark <robdclark@chromium.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU"
 <freedreno@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Our initial logic for excluding dma-bufs was not quite right.  In
particular we want msm_gem_get/put_pages() path used for exported
dma-bufs to increment/decrement the pin-count.

Also, in case the importer is vmap'ing the dma-buf, we need to be
sure to update the object's status, because it is now no longer
potentially evictable.

Fixes: 63f17ef83428 drm/msm: Support evicting GEM objects to swap
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_gem.c | 16 +++++++++++++++-
 drivers/gpu/drm/msm/msm_gem.h |  4 ++--
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index 09ef4ec6eb34..17f85d2f23ab 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -190,13 +190,25 @@ struct page **msm_gem_get_pages(struct drm_gem_object *obj)
 	}
 
 	p = get_pages(obj);
+
+	if (!IS_ERR(p)) {
+		msm_obj->pin_count++;
+		update_inactive(msm_obj);
+	}
+
 	msm_gem_unlock(obj);
 	return p;
 }
 
 void msm_gem_put_pages(struct drm_gem_object *obj)
 {
-	/* when we start tracking the pin count, then do something here */
+	struct msm_gem_object *msm_obj = to_msm_bo(obj);
+
+	msm_gem_lock(obj);
+	msm_obj->pin_count--;
+	GEM_WARN_ON(msm_obj->pin_count < 0);
+	update_inactive(msm_obj);
+	msm_gem_unlock(obj);
 }
 
 int msm_gem_mmap_obj(struct drm_gem_object *obj,
@@ -646,6 +658,8 @@ static void *get_vaddr(struct drm_gem_object *obj, unsigned madv)
 			ret = -ENOMEM;
 			goto fail;
 		}
+
+		update_inactive(msm_obj);
 	}
 
 	return msm_obj->vaddr;
diff --git a/drivers/gpu/drm/msm/msm_gem.h b/drivers/gpu/drm/msm/msm_gem.h
index 1b519fcd8418..66fb40b87122 100644
--- a/drivers/gpu/drm/msm/msm_gem.h
+++ b/drivers/gpu/drm/msm/msm_gem.h
@@ -228,7 +228,7 @@ static inline bool is_active(struct msm_gem_object *msm_obj)
 /* imported/exported objects are not purgeable: */
 static inline bool is_unpurgeable(struct msm_gem_object *msm_obj)
 {
-	return msm_obj->base.dma_buf && msm_obj->base.import_attach;
+	return msm_obj->base.import_attach || msm_obj->pin_count;
 }
 
 static inline bool is_purgeable(struct msm_gem_object *msm_obj)
@@ -278,7 +278,7 @@ static inline void mark_unpurgeable(struct msm_gem_object *msm_obj)
 
 static inline bool is_unevictable(struct msm_gem_object *msm_obj)
 {
-	return is_unpurgeable(msm_obj) || msm_obj->pin_count || msm_obj->vaddr;
+	return is_unpurgeable(msm_obj) || msm_obj->vaddr;
 }
 
 static inline void mark_evictable(struct msm_gem_object *msm_obj)
-- 
2.30.2

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
