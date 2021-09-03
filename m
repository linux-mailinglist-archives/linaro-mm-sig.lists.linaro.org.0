Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB7940051A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE1E862630
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B5E1261F45; Fri,  3 Sep 2021 18:44:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 563ED610CB;
	Fri,  3 Sep 2021 18:44:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 985286323B
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 671E161A49; Fri,  3 Sep 2021 18:44:07 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by lists.linaro.org (Postfix) with ESMTPS id 7642361145
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:05 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id d5so172057pjx.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eyojo/FU7HpdjFjjRk2IuNM8ZY2w6msCme6CI+gvloQ=;
 b=Jle+57j4upGPRjXNbaEqSztuj0f6Yb89G5etD5eu/MWSmTzSQLdcY9aSC4bvk9NgF1
 B73EHMp0Pq7oYRsGNjDHPw27q+AI884CvvWC9p7jgUJcDTgzICaum4nZtaMd7MrbRNea
 hwgSWjuXA6KaCHKFiRnoUs+GUO6C9k6BT5orBOzn5SO5tto3pQT6b6agrUIu5x84yjFI
 F+wSTLgiGfh/I9GRW99gmnjgXWe0cZ9mKY7t0dgwIRXzT324T1DgHgmlKMqjqG10hwq2
 4T3tIo8j6hkFjRsimIoWtUyCohrZr7uuZDfMDRa3lfpsHhz252Bt1AQqnT/Sh6IuUmbH
 vrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eyojo/FU7HpdjFjjRk2IuNM8ZY2w6msCme6CI+gvloQ=;
 b=Ln5p7HN04Ss+1/hnd3kGzQrePMw4kxSrBZ0wRjO48PlXoMA4MXaCzqRl19es0hsBwn
 ey9sqx50YWRXvEhdACyXC1divcy5vCT2YQQ8St2oz8wh20MCHHIEmdQOqqhhlxJF2BPq
 KFLbSr3I7/SnN/xWpzqDaaO2+s7iCyPDQLE1X/C3sUWFcTmdDTy2VPtysRAJbjjPDBYH
 hjcElZSH2zILM8btQOQLnqKuFBd9IjW0ERmOwvK187qQbxB0vAcfRHgYpFk+2o2BWIXh
 1v2aRsoPVhlysDuukkJIuFf0dpC/iS9MtaK93P1df1O5aHz6s54Dk5jb1u90ajHL7SFt
 EQmA==
X-Gm-Message-State: AOAM531qwuvGlfCMfJMv8BiztKAg3r/qk0JLfBI/6F3IkNWHpq/W6AuC
 gAlSM3oM3uvQbkBIPPv3s4o=
X-Google-Smtp-Source: ABdhPJw0FDzWhJ8bPwVk6QAaf2B4P6pM+LmBb405l9ks0Yxi7fG1rOZqawLmXuTs57n84BGKHaKfOA==
X-Received: by 2002:a17:902:7611:b029:12c:b602:5820 with SMTP id
 k17-20020a1709027611b029012cb6025820mr302389pll.6.1630694644565; 
 Fri, 03 Sep 2021 11:44:04 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 10sm110948pgd.12.2021.09.03.11.44.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:44:03 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:53 -0700
Message-Id: <20210903184806.1680887-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210903184806.1680887-1-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 2/9] drm/vblank: Add helper to get next
 vblank time
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
Cc: Rob Clark <robdclark@chromium.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_vblank.c | 32 ++++++++++++++++++++++++++++++++
 include/drm/drm_vblank.h     |  1 +
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index b701cda86d0c..ec2732664b95 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -980,6 +980,38 @@ u64 drm_crtc_vblank_count_and_time(struct drm_crtc *crtc,
 }
 EXPORT_SYMBOL(drm_crtc_vblank_count_and_time);
 
+/**
+ * drm_crtc_next_vblank_time - calculate the time of the next vblank
+ * @crtc: the crtc for which to calculate next vblank time
+ * @vblanktime: pointer to time to receive the next vblank timestamp.
+ *
+ * Calculate the expected time of the next vblank based on time of previous
+ * vblank and frame duration
+ */
+int drm_crtc_next_vblank_time(struct drm_crtc *crtc, ktime_t *vblanktime)
+{
+	unsigned int pipe = drm_crtc_index(crtc);
+	struct drm_vblank_crtc *vblank = &crtc->dev->vblank[pipe];
+	u64 count;
+
+	if (!vblank->framedur_ns)
+		return -EINVAL;
+
+	count = drm_vblank_count_and_time(crtc->dev, pipe, vblanktime);
+
+	/*
+	 * If we don't get a valid count, then we probably also don't
+	 * have a valid time:
+	 */
+	if (!count)
+		return -EINVAL;
+
+	*vblanktime = ktime_add(*vblanktime, ns_to_ktime(vblank->framedur_ns));
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_crtc_next_vblank_time);
+
 static void send_vblank_event(struct drm_device *dev,
 		struct drm_pending_vblank_event *e,
 		u64 seq, ktime_t now)
diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
index 733a3e2d1d10..a63bc2c92f3c 100644
--- a/include/drm/drm_vblank.h
+++ b/include/drm/drm_vblank.h
@@ -230,6 +230,7 @@ bool drm_dev_has_vblank(const struct drm_device *dev);
 u64 drm_crtc_vblank_count(struct drm_crtc *crtc);
 u64 drm_crtc_vblank_count_and_time(struct drm_crtc *crtc,
 				   ktime_t *vblanktime);
+int drm_crtc_next_vblank_time(struct drm_crtc *crtc, ktime_t *vblanktime);
 void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
 			       struct drm_pending_vblank_event *e);
 void drm_crtc_arm_vblank_event(struct drm_crtc *crtc,
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
