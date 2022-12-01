Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C132D63F3A8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:21:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D13C93F2F6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:21:08 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 6538C3F4EE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="S eeOZ3z";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="f WAT34X";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id 49A70580381;
	Thu,  1 Dec 2022 10:15:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 01 Dec 2022 10:15:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907724; x=
	1669914924; bh=hS1cJz249R0204RxeWYtZnqKhD+6QYB3RKnPUhySzAc=; b=S
	eeOZ3zQXV2obb8+7JtUuy2GapJHBopdDvcX2e926xYkM1S+x2mO0kSFMy75DpHfp
	aPSBhCosMi0QoUXJfuyWilRJoVCEiyn8mhIsTt1LlMWUxrfKWmdur5iiiCFAnJQh
	mbYzOxk4m2pnVGLbYUOA+uLMiJ6dW4mYSa18Dz1zAPteWeCGokxZjLSEOJiIWOJf
	Pflh+EILStjDa+VFBgR8BbIKm9/a4l78gp7A8IZBXZehw87IqKgobgmLi/aq3LWZ
	+NDzW379fu5Zcr27DIsVe7FqG8kDS1Xkrq1Hvi9ynzoS7piX9DP39odIOT8y5ZDc
	nH5hFjjekRHVJ8M6QJnxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907724; x=
	1669914924; bh=hS1cJz249R0204RxeWYtZnqKhD+6QYB3RKnPUhySzAc=; b=f
	WAT34Xq6O0vV9k9kST5g5j996gvj5g4FD8zFRXmkNkWqGazzHe0hpCdbFqzWE2HJ
	VgoqrvTrdlrE8YipHop9smnvOb/JGmvJopWMYLW5J4EVUrJA8QMpYD6WsSN4D+yQ
	7oJklBK6IFckdUXztbEi3gc5lieYaMGWss80zBFS7A1BNvGtM20te+1kNHoqoJbb
	ysxwK1bUEzDs1dD23X6WEfYxK/j2pe7HGH610Oi8YjCzOiajJKPYus0TmBVMI8Vu
	7gyjFBeEfLcodHdsVNynuY+OoMWrjaZ51dKurND25JBTwKTRJwyQuq7pFVyaPyid
	BqgAua8R6ydVwQ8MdA19Q==
X-ME-Sender: <xms:C8WIY5AeSYgyKQEM4RA7iJYYjbLdWOIsCIWoywv3edJUx39h4rftmg>
    <xme:C8WIY3h_TQ0-bp6gJbgHwlAilNrFfrJZSRiuZ6-4ovZkIai1SRjlYXWw6oxrgD_VY
    4Hk0r2hVW0uZqpdO18>
X-ME-Received: <xmr:C8WIY0luhdSEvqxK5-gA2VetysXSqHkoceLePhrEehAlUOpEgKbJ2q_xY-DigwtazrtRnlep89lPNpHNU8qJb0p1i0horzdWPyAeYnfMr7hEIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:C8WIYzz3FJyEf7hQEQiWBju4yHg6X5lpOd_ll8O7We_Fo8Ew4kbu0Q>
    <xmx:C8WIY-TwoHqaayfQiX0bAd6X94tEPfoHSq8DmLvex1ixKhGIqQ5rgA>
    <xmx:C8WIY2YFCho89dfYxOps7qQ87IxpDr405mQ6wYbeVBHr-IO4xxjXIg>
    <xmx:DMWIY2y05vytGAMzPsubDAe6TpA_2G3CHU7mTXB5IDtwiws2zU6wPA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:22 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:49 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v3-18-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=7697; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=S0E0kZEa+H9YNMfwa8e4b16rH6X6tDMB4VlRl+pRAPI=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzS4T9VPufjRxcFyenKexZLf/1JyZsqWP/75dQWHm4Ky
 DG9hRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACZSco7hf4LbbleBSs2+6f9r7zWt93
 I/onY2Sjf8wQFr10n3HCVqTRgZHr5jcuI4l78sf3cwZ8mT6qMPc3b6L7Lb+0XoQuXMnfJWnAA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 6538C3F4EE
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.60 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[messagingengine.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.230:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	RCVD_IN_DNSWL_LOW(-0.10)[66.111.4.230:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,ffwll.ch,suse.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[encoder.base:url,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim,new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LCJI5J647WREZZZYZTUEINDGHF26Y5JR
X-Message-ID-Hash: LCJI5J647WREZZZYZTUEINDGHF26Y5JR
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 18/20] drm/vc4: tests: Fail the current test if we access a register
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LCJI5J647WREZZZYZTUEINDGHF26Y5JR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Accessing a register when running under kunit is a bad idea since our
device is completely mocked.

Fail the current test if we ever access any of our hardware registers.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c      | 13 +++++++++++--
 drivers/gpu/drm/vc4/vc4_dpi.c       | 13 +++++++++++--
 drivers/gpu/drm/vc4/vc4_drv.h       | 29 +++++++++++++++++++++++++----
 drivers/gpu/drm/vc4/vc4_dsi.c       |  9 ++++++++-
 drivers/gpu/drm/vc4/vc4_hdmi_regs.h |  4 ++++
 drivers/gpu/drm/vc4/vc4_txp.c       | 13 +++++++++++--
 drivers/gpu/drm/vc4/vc4_vec.c       | 13 +++++++++++--
 7 files changed, 81 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 7d1a696477ce..a1a3465948c4 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -50,8 +50,17 @@
 
 #define HVS_FIFO_LATENCY_PIX	6
 
-#define CRTC_WRITE(offset, val) writel(val, vc4_crtc->regs + (offset))
-#define CRTC_READ(offset) readl(vc4_crtc->regs + (offset))
+#define CRTC_WRITE(offset, val)								\
+	do {										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		writel(val, vc4_crtc->regs + (offset));					\
+	} while (0)
+
+#define CRTC_READ(offset)								\
+	({										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		readl(vc4_crtc->regs + (offset));					\
+	})
 
 static const struct debugfs_reg32 crtc_regs[] = {
 	VC4_REG32(PV_CONTROL),
diff --git a/drivers/gpu/drm/vc4/vc4_dpi.c b/drivers/gpu/drm/vc4/vc4_dpi.c
index 1f8f44b7b5a5..0edf3c4c98c8 100644
--- a/drivers/gpu/drm/vc4/vc4_dpi.c
+++ b/drivers/gpu/drm/vc4/vc4_dpi.c
@@ -103,8 +103,17 @@ to_vc4_dpi(struct drm_encoder *encoder)
 	return container_of(encoder, struct vc4_dpi, encoder.base);
 }
 
-#define DPI_READ(offset) readl(dpi->regs + (offset))
-#define DPI_WRITE(offset, val) writel(val, dpi->regs + (offset))
+#define DPI_READ(offset)								\
+	({										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		readl(dpi->regs + (offset));						\
+	})
+
+#define DPI_WRITE(offset, val)								\
+	do {										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		writel(val, dpi->regs + (offset));					\
+	} while (0)
 
 static const struct debugfs_reg32 dpi_regs[] = {
 	VC4_REG32(DPI_C),
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 418f4f308e36..78fda5332cb3 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -19,6 +19,8 @@
 #include <drm/drm_mm.h>
 #include <drm/drm_modeset_lock.h>
 
+#include <kunit/test-bug.h>
+
 #include "uapi/drm/vc4_drm.h"
 
 struct drm_device;
@@ -645,10 +647,29 @@ to_vc4_crtc_state(const struct drm_crtc_state *crtc_state)
 	return container_of(crtc_state, struct vc4_crtc_state, base);
 }
 
-#define V3D_READ(offset) readl(vc4->v3d->regs + offset)
-#define V3D_WRITE(offset, val) writel(val, vc4->v3d->regs + offset)
-#define HVS_READ(offset) readl(hvs->regs + offset)
-#define HVS_WRITE(offset, val) writel(val, hvs->regs + offset)
+#define V3D_READ(offset)								\
+	({										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		readl(vc4->v3d->regs + (offset));						\
+	})
+
+#define V3D_WRITE(offset, val)								\
+	do {										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		writel(val, vc4->v3d->regs + (offset));					\
+	} while (0)
+
+#define HVS_READ(offset)								\
+	({										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		readl(hvs->regs + (offset));						\
+	})
+
+#define HVS_WRITE(offset, val)								\
+	do {										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		writel(val, hvs->regs + (offset));					\
+	} while (0)
 
 #define VC4_REG32(reg) { .name = #reg, .offset = reg }
 
diff --git a/drivers/gpu/drm/vc4/vc4_dsi.c b/drivers/gpu/drm/vc4/vc4_dsi.c
index 878e05d79e81..2c9cb27903a0 100644
--- a/drivers/gpu/drm/vc4/vc4_dsi.c
+++ b/drivers/gpu/drm/vc4/vc4_dsi.c
@@ -617,6 +617,8 @@ dsi_dma_workaround_write(struct vc4_dsi *dsi, u32 offset, u32 val)
 	dma_cookie_t cookie;
 	int ret;
 
+	kunit_fail_current_test("Accessing a register in a unit test!\n");
+
 	/* DSI0 should be able to write normally. */
 	if (!chan) {
 		writel(val, dsi->regs + offset);
@@ -645,7 +647,12 @@ dsi_dma_workaround_write(struct vc4_dsi *dsi, u32 offset, u32 val)
 		DRM_ERROR("Failed to wait for DMA: %d\n", ret);
 }
 
-#define DSI_READ(offset) readl(dsi->regs + (offset))
+#define DSI_READ(offset)								\
+	({										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		readl(dsi->regs + (offset));						\
+	})
+
 #define DSI_WRITE(offset, val) dsi_dma_workaround_write(dsi, offset, val)
 #define DSI_PORT_READ(offset) \
 	DSI_READ(dsi->variant->port ? DSI1_##offset : DSI0_##offset)
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
index 48db438550b1..b04b2fc8d831 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
@@ -456,6 +456,8 @@ static inline u32 vc4_hdmi_read(struct vc4_hdmi *hdmi,
 
 	WARN_ON(pm_runtime_status_suspended(&hdmi->pdev->dev));
 
+	kunit_fail_current_test("Accessing an HDMI register in a unit test!\n");
+
 	if (reg >= variant->num_registers) {
 		dev_warn(&hdmi->pdev->dev,
 			 "Invalid register ID %u\n", reg);
@@ -486,6 +488,8 @@ static inline void vc4_hdmi_write(struct vc4_hdmi *hdmi,
 
 	WARN_ON(pm_runtime_status_suspended(&hdmi->pdev->dev));
 
+	kunit_fail_current_test("Accessing an HDMI register in a unit test!\n");
+
 	if (reg >= variant->num_registers) {
 		dev_warn(&hdmi->pdev->dev,
 			 "Invalid register ID %u\n", reg);
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 2b69454b8534..ef5cab2a3aa9 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -145,8 +145,17 @@
 /* Number of lines received and committed to memory. */
 #define TXP_PROGRESS		0x10
 
-#define TXP_READ(offset) readl(txp->regs + (offset))
-#define TXP_WRITE(offset, val) writel(val, txp->regs + (offset))
+#define TXP_READ(offset)								\
+	({										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		readl(txp->regs + (offset));						\
+	})
+
+#define TXP_WRITE(offset, val)								\
+	do {										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		writel(val, txp->regs + (offset));					\
+	} while (0)
 
 struct vc4_txp {
 	struct vc4_crtc	base;
diff --git a/drivers/gpu/drm/vc4/vc4_vec.c b/drivers/gpu/drm/vc4/vc4_vec.c
index e270a4099be3..f589ab918f4d 100644
--- a/drivers/gpu/drm/vc4/vc4_vec.c
+++ b/drivers/gpu/drm/vc4/vc4_vec.c
@@ -207,8 +207,17 @@ struct vc4_vec {
 	struct debugfs_regset32 regset;
 };
 
-#define VEC_READ(offset) readl(vec->regs + (offset))
-#define VEC_WRITE(offset, val) writel(val, vec->regs + (offset))
+#define VEC_READ(offset)								\
+	({										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		readl(vec->regs + (offset));						\
+	})
+
+#define VEC_WRITE(offset, val)								\
+	do {										\
+		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
+		writel(val, vec->regs + (offset));					\
+	} while (0)
 
 static inline struct vc4_vec *
 encoder_to_vc4_vec(struct drm_encoder *encoder)

-- 
b4 0.10.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
