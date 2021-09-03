Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4224400527
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D5916322E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BE42E63426; Fri,  3 Sep 2021 18:44:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70C4361179;
	Fri,  3 Sep 2021 18:44:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1AC8B62D34
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED07462166; Fri,  3 Sep 2021 18:44:10 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by lists.linaro.org (Postfix) with ESMTPS id ED7EB62EA6
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:07 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id 2so191970pfo.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cSCNJkR9V6raam7Le5SSEi0f1yOJhVw/gdH+2wLQ7eE=;
 b=DYJBiQVkX93WaSJ4W7BfYts1uK4po2qitkNdbPZBac1eMDeI9wgw34HGarDstiePLx
 XyrGkdeLiIr2IK7uSQNhq0+x/0RRUjHsGaNHMJk4wdMyAvmio28Vfoqhk2Tehao+WBRn
 mr9uVKZLlvKL3iIcGQ2bd5iI/On7d88mpI3KmPLHW2pvwIhWqYHEVkDujvHhStvvl8sF
 MpfXyLsy+1Xp6PS0Gnl5Ru89iwl+el0dhV+9iXkc5tD+I23iBuyqjWpH8Fc6t82qGhOT
 jKwC0ddXF6szUn2FOA/QpGgBwdhShbjY8IP++bvJg5eHMO4JWUV6OV7RIJF3tEvKEdJ7
 ooEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cSCNJkR9V6raam7Le5SSEi0f1yOJhVw/gdH+2wLQ7eE=;
 b=cbk+68BNIWIXI75sOt1Y0sPRvW/949Oe3dvDqntf74xjXr0WW26mzv6+MidgsoNPMG
 dxlcKAFZwIO6LuW297xGnItEBRFCJcIZ6SA2z94SimfMYs1MPI1XSQfQneNhHnx8WngF
 +CADF3dago7b59FaBQFu+MV25Qsxa5Vf3RUmEJvqLZbMdySJZ/7UPf8Ey9jGSQyV7OPY
 CaMdVRk7MFi4h4an9gGk+C1L3wsl/yZZHddNZuCpLJers2VvXLTtRxt/f3xr3v2j5f58
 37GqqpiSfKKjVPlFVxqyubuOVfBcSsugU0QGmDbBRNejbTtk5BhEk6GXHyXlw6wKirEs
 KPgA==
X-Gm-Message-State: AOAM533DbK53w4Ec6BfVu/NuiPf/2zXWU9fz3Wfv4uHHV5u5kcTTxZlW
 q23s9WuhoDC2Itifeetcv4Y=
X-Google-Smtp-Source: ABdhPJyigIiNAB8BtDmDh/qK7OSsffWeFcfu4PJL/ieFiTjF0teQrB8CoJp3e6ZiEM5k4dcyNEJqPw==
X-Received: by 2002:a63:4c0e:: with SMTP id z14mr357640pga.427.1630694646866; 
 Fri, 03 Sep 2021 11:44:06 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id j1sm21218pjz.36.2021.09.03.11.44.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:44:05 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:54 -0700
Message-Id: <20210903184806.1680887-4-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210903184806.1680887-1-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 3/9] drm/atomic-helper: Set fence
 deadline for vblank
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

For an atomic commit updating a single CRTC (ie. a pageflip) calculate
the next vblank time, and inform the fence(s) of that deadline.

v2: Comment typo fix (danvet)

Signed-off-by: Rob Clark <robdclark@chromium.org>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_atomic_helper.c | 36 +++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 2c0c6ec92820..3322dafd675f 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1407,6 +1407,40 @@ void drm_atomic_helper_commit_modeset_enables(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_atomic_helper_commit_modeset_enables);
 
+/*
+ * For atomic updates which touch just a single CRTC, calculate the time of the
+ * next vblank, and inform all the fences of the deadline.
+ */
+static void set_fence_deadline(struct drm_device *dev,
+			       struct drm_atomic_state *state)
+{
+	struct drm_crtc *crtc, *wait_crtc = NULL;
+	struct drm_crtc_state *new_crtc_state;
+	struct drm_plane *plane;
+	struct drm_plane_state *new_plane_state;
+	ktime_t vbltime;
+	int i;
+
+	for_each_new_crtc_in_state (state, crtc, new_crtc_state, i) {
+		if (wait_crtc)
+			return;
+		wait_crtc = crtc;
+	}
+
+	/* If no CRTCs updated, then nothing to do: */
+	if (!wait_crtc)
+		return;
+
+	if (drm_crtc_next_vblank_time(wait_crtc, &vbltime))
+		return;
+
+	for_each_new_plane_in_state (state, plane, new_plane_state, i) {
+		if (!new_plane_state->fence)
+			continue;
+		dma_fence_set_deadline(new_plane_state->fence, vbltime);
+	}
+}
+
 /**
  * drm_atomic_helper_wait_for_fences - wait for fences stashed in plane state
  * @dev: DRM device
@@ -1436,6 +1470,8 @@ int drm_atomic_helper_wait_for_fences(struct drm_device *dev,
 	struct drm_plane_state *new_plane_state;
 	int i, ret;
 
+	set_fence_deadline(dev, state);
+
 	for_each_new_plane_in_state(state, plane, new_plane_state, i) {
 		if (!new_plane_state->fence)
 			continue;
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
