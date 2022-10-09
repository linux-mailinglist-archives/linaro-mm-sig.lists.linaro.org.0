Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 766F55F9453
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Oct 2022 01:54:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2AE63F58B
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Oct 2022 23:54:54 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C275A3F459
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Oct 2022 23:54:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6060160D17;
	Sun,  9 Oct 2022 23:54:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 578B8C43142;
	Sun,  9 Oct 2022 23:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665359673;
	bh=a+sMAFLjX68L2kxSVMElN69vaO37Vkarqiw6jNLmAIs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W8/KGa16yoT0k6h0IbAF0jlZCycBbaRG0vhziVUzhMhzRyIXkkMbVXc8RtTM5Ppef
	 QMy0Y10oSVpAPuQNhQ2K2y0w0FXYoQ+DHvAL3bDQdlZ5kZk0P5RAGqiz5Jip0Kx6zU
	 A36DxT25K6NkxP8Og9NV+BwTSkx9FR0ALMR4gNuXa016cVIsLUdUPatNHqf75IKT/P
	 eVDgRiK3OQj83vtvxRWFJx/iFkJU/VbGpiyJbFwJJEL1MhViMF43i3X7DfVQzpxb0g
	 KIo+QA52P5gTnH6ZLl9ZIJ2SFeLTaiwnAQmI8E8oc/LAXF8ts295C1X27pMVGnuuko
	 RI4Mucvuv5Gqw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Oct 2022 19:54:04 -0400
Message-Id: <20221009235426.1231313-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221009235426.1231313-1-sashal@kernel.org>
References: <20221009235426.1231313-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: C275A3F459
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,kernel.org,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="W8/KGa16";
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Message-ID-Hash: LXXKFSFWGXHJQ64T6FHB5C6BAO2JYA5G
X-Message-ID-Hash: LXXKFSFWGXHJQ64T6FHB5C6BAO2JYA5G
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Liviu Dudau <liviu.dudau@arm.com>, Carsten Haitzler <carsten.haitzler@arm.com>, Sasha Levin <sashal@kernel.org>, james.qian.wang@arm.com, mihail.atanassov@arm.com, brian.starkey@arm.com, daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.15 04/25] drm/komeda: Fix handling of atomic commits in the atomic_commit_tail hook
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LXXKFSFWGXHJQ64T6FHB5C6BAO2JYA5G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Liviu Dudau <liviu.dudau@arm.com>

[ Upstream commit eaa225b6b52233d45457fd33730e1528c604d92d ]

Komeda driver relies on the generic DRM atomic helper functions to handle
commits. It only implements an atomic_commit_tail hook for the
mode_config_helper_funcs and even that one is pretty close to the generic
implementation with the exception of additional dma_fence signalling.

What the generic helper framework doesn't do is waiting for the actual
hardware to signal that the commit parameters have been written into the
appropriate registers. As we signal CRTC events only on the irq handlers,
we need to flush the configuration and wait for the hardware to respond.

Add the Komeda specific implementation for atomic_commit_hw_done() that
flushes and waits for flip done before calling drm_atomic_helper_commit_hw_done().

The fix was prompted by a patch from Carsten Haitzler where he was trying to
solve the same issue but in a different way that I think can lead to wrong
event signaling to userspace.

Reported-by: Carsten Haitzler <carsten.haitzler@arm.com>
Tested-by: Carsten Haitzler <carsten.haitzler@arm.com>
Reviewed-by: Carsten Haitzler <carsten.haitzler@arm.com>
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20220722122139.288486-1-liviu.dudau@arm.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../gpu/drm/arm/display/komeda/komeda_crtc.c  |  4 ++--
 .../gpu/drm/arm/display/komeda/komeda_kms.c   | 21 ++++++++++++++++++-
 .../gpu/drm/arm/display/komeda/komeda_kms.h   |  2 ++
 3 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
index 59172acb9738..292f533d8cf0 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
@@ -235,7 +235,7 @@ void komeda_crtc_handle_event(struct komeda_crtc   *kcrtc,
 			crtc->state->event = NULL;
 			drm_crtc_send_vblank_event(crtc, event);
 		} else {
-			DRM_WARN("CRTC[%d]: FLIP happen but no pending commit.\n",
+			DRM_WARN("CRTC[%d]: FLIP happened but no pending commit.\n",
 				 drm_crtc_index(&kcrtc->base));
 		}
 		spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
@@ -286,7 +286,7 @@ komeda_crtc_atomic_enable(struct drm_crtc *crtc,
 	komeda_crtc_do_flush(crtc, old);
 }
 
-static void
+void
 komeda_crtc_flush_and_wait_for_flip_done(struct komeda_crtc *kcrtc,
 					 struct completion *input_flip_done)
 {
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
index 93b7f09b96ca..327051bba5b6 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
@@ -69,6 +69,25 @@ static const struct drm_driver komeda_kms_driver = {
 	.minor = 1,
 };
 
+static void komeda_kms_atomic_commit_hw_done(struct drm_atomic_state *state)
+{
+	struct drm_device *dev = state->dev;
+	struct komeda_kms_dev *kms = to_kdev(dev);
+	int i;
+
+	for (i = 0; i < kms->n_crtcs; i++) {
+		struct komeda_crtc *kcrtc = &kms->crtcs[i];
+
+		if (kcrtc->base.state->active) {
+			struct completion *flip_done = NULL;
+			if (kcrtc->base.state->event)
+				flip_done = kcrtc->base.state->event->base.completion;
+			komeda_crtc_flush_and_wait_for_flip_done(kcrtc, flip_done);
+		}
+	}
+	drm_atomic_helper_commit_hw_done(state);
+}
+
 static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
 {
 	struct drm_device *dev = old_state->dev;
@@ -81,7 +100,7 @@ static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
 
 	drm_atomic_helper_commit_modeset_enables(dev, old_state);
 
-	drm_atomic_helper_commit_hw_done(old_state);
+	komeda_kms_atomic_commit_hw_done(old_state);
 
 	drm_atomic_helper_wait_for_flip_done(dev, old_state);
 
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
index 456f3c435719..bf6e8fba5061 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
@@ -182,6 +182,8 @@ void komeda_kms_cleanup_private_objs(struct komeda_kms_dev *kms);
 
 void komeda_crtc_handle_event(struct komeda_crtc   *kcrtc,
 			      struct komeda_events *evts);
+void komeda_crtc_flush_and_wait_for_flip_done(struct komeda_crtc *kcrtc,
+					      struct completion *input_flip_done);
 
 struct komeda_kms_dev *komeda_kms_attach(struct komeda_dev *mdev);
 void komeda_kms_detach(struct komeda_kms_dev *kms);
-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
