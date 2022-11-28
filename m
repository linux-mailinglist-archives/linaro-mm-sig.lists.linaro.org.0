Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E0D63ABD8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 16:01:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 969573EF8B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:01:07 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id C95A13ED1C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:57:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="j iPI92h";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="b VG9uTj";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.west.internal (Postfix) with ESMTP id E63E42B04FDA;
	Mon, 28 Nov 2022 09:57:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 28 Nov 2022 09:57:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647465; x=
	1669654665; bh=N2VjRC2UgL+usKzzMaSyx3RNmOTFU/BJM899W5fcW/c=; b=j
	iPI92h1G6n9g9QnExFYv8h/bXswUWeP6jXYh/j3JlOZ+cO/3+RJiGFh0aV+Fxrzv
	IXmHnKIaZgihqNUwkcqN7Wj0LzFcJoFuMlR8Aym6leuAwk18EpPWTGuIMCtY+G1q
	2oJLg3BFGrpOWSvGeXw6IarmFNZ+hfqU6ty1nnXm0gHi6o4ed7P11tZHj6jA25Ru
	cUkVkvnalrnDZ4xVLaGEBl/KyAhD9Kqmve67NZ1I0Vkf2nappmygiGvEe3qxJKo7
	0yPI7EBQYSF3vf23WaAIBtM62DuvKaF9ksUvRusFEg8gjiJOnIyq40NQcO5EV7Rm
	oEJIhCnn8b6jpccVgWNHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647465; x=
	1669654665; bh=N2VjRC2UgL+usKzzMaSyx3RNmOTFU/BJM899W5fcW/c=; b=b
	VG9uTjgpNaen04+kPkLAAQFGXrme+Sry3EZgf+4WEZkczohIN0z+0PFtuw1I+Glm
	HSjxqYrOFcv5l23PIH932HazFF4iDLkwYdV7nDhBatYNJztoXtY+8rKkEcY/9Zqi
	6Zp/9HMzFxOgQUOLhIMmCcJQhtANYfTC+0PzORMpecJFLSlwkxW6qlMuCvm5sc7n
	ljqA0jCax3pYvFPgZRrLyQahqSxlvPdZB2UmT3cDxAetTa6hpbFpwJW1JIQsHRbF
	7z9e8y7c31fEONt3lyFzQxNyeDBviWKdafiN88PUsKBygqIVgpcIdN87ltTfIGX8
	X7PiyoINpUOG6lzbJyHDg==
X-ME-Sender: <xms:acyEY1YzCoarMkzzH8EZdSBYvakywJZdwIY_Tbui_iqhSAMuQS3VnA>
    <xme:acyEY8Y7tWsB6yo5PRKkjmYblvTFAu6gyZo7Iot2UQNeMLedkhXvkYryBSg58dcHR
    FBmqoIn3WNtOI7H1fA>
X-ME-Received: <xmr:acyEY3-vxnXy7-bHQW_m2L_qp5GaN8R31nAfr9WxfLP3HdSlDZuUxGQCwIs1uh_xDAadHdHbZ2E0wXzq6NbbJnvZX5odVJIOteCLNd3PHpr5lA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:acyEYzo_PNf53f14kEq3C6NMi2TdvmbJgdYfOq7U7QEXAnXMfXEmdA>
    <xmx:acyEYwrMMJd8CaUwmu-w6cUOw-NnxRXsB10vTPMBWcJ26dG_9g-Udg>
    <xmx:acyEY5R4Nn1DxBtQBGwAJ4BJJITdE0At2kuUKe9TlzE8ozMNg_DPEA>
    <xmx:acyEY9KoGB0o5DL8LjWoLljGfhFHqLPlyjEZ3mSuX1UyjiL0Y62s98ug-MI>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:57:44 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:41 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-12-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=4355; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=X1wR0Xop41xE94wd7/UKbatS5srbkdhy0TAMoUqsHJA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp8uMTjj+NZzKymJkdvnD7Aalha+mZeqmWSsw1+tuMn5W
 HGfdUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIlkRzIyzHrKe65xj+a8sqVv3wZe5b
 k1ffLhVfz9UdXp2ZosTU2H/Rj++5hbGvMU58vqKSRyZO75Uhu2srhz+h3tcyrLbr4rWN3DCAA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: C95A13ED1C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.26:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[messagingengine.com:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[64.147.123.26:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TIM5IRGG5PP7EWAHKZA3SEURTHBJBKTO
X-Message-ID-Hash: TIM5IRGG5PP7EWAHKZA3SEURTHBJBKTO
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 12/17] drm/vc4: crtc: Introduce a lower-level crtc init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TIM5IRGG5PP7EWAHKZA3SEURTHBJBKTO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The current vc4_crtc_init() helper assumes that we will be using
hardware planes and calls vc4_plane_init().

While it's a reasonable assumption, we'll want to mock the plane and
thus provide our own. Let's create a helper that will take the plane as
an argument.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 52 +++++++++++++++++++++++++++---------------
 drivers/gpu/drm/vc4/vc4_drv.h  |  6 +++++
 2 files changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 333529ed3a0d..7a2c54efecb0 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1286,31 +1286,20 @@ static void vc4_set_crtc_possible_masks(struct drm_device *drm,
 	}
 }
 
-int vc4_crtc_init(struct drm_device *drm, struct platform_device *pdev,
-		  struct vc4_crtc *vc4_crtc,
-		  const struct vc4_crtc_data *data,
-		  const struct drm_crtc_funcs *crtc_funcs,
-		  const struct drm_crtc_helper_funcs *crtc_helper_funcs,
-		  bool feeds_txp)
+int __vc4_crtc_init(struct drm_device *drm,
+		    struct platform_device *pdev,
+		    struct vc4_crtc *vc4_crtc,
+		    const struct vc4_crtc_data *data,
+		    struct drm_plane *primary_plane,
+		    const struct drm_crtc_funcs *crtc_funcs,
+		    const struct drm_crtc_helper_funcs *crtc_helper_funcs,
+		    bool feeds_txp)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	struct drm_crtc *crtc = &vc4_crtc->base;
-	struct drm_plane *primary_plane;
 	unsigned int i;
 	int ret;
 
-	/* For now, we create just the primary and the legacy cursor
-	 * planes.  We should be able to stack more planes on easily,
-	 * but to do that we would need to compute the bandwidth
-	 * requirement of the plane configuration, and reject ones
-	 * that will take too much.
-	 */
-	primary_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_PRIMARY, 0);
-	if (IS_ERR(primary_plane)) {
-		dev_err(drm->dev, "failed to construct primary plane\n");
-		return PTR_ERR(primary_plane);
-	}
-
 	vc4_crtc->data = data;
 	vc4_crtc->pdev = pdev;
 	vc4_crtc->feeds_txp = feeds_txp;
@@ -1342,6 +1331,31 @@ int vc4_crtc_init(struct drm_device *drm, struct platform_device *pdev,
 	return 0;
 }
 
+int vc4_crtc_init(struct drm_device *drm, struct platform_device *pdev,
+		  struct vc4_crtc *vc4_crtc,
+		  const struct vc4_crtc_data *data,
+		  const struct drm_crtc_funcs *crtc_funcs,
+		  const struct drm_crtc_helper_funcs *crtc_helper_funcs,
+		  bool feeds_txp)
+{
+	struct drm_plane *primary_plane;
+
+	/* For now, we create just the primary and the legacy cursor
+	 * planes.  We should be able to stack more planes on easily,
+	 * but to do that we would need to compute the bandwidth
+	 * requirement of the plane configuration, and reject ones
+	 * that will take too much.
+	 */
+	primary_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_PRIMARY, 0);
+	if (IS_ERR(primary_plane)) {
+		dev_err(drm->dev, "failed to construct primary plane\n");
+		return PTR_ERR(primary_plane);
+	}
+
+	return __vc4_crtc_init(drm, pdev, vc4_crtc, data, primary_plane,
+			       crtc_funcs, crtc_helper_funcs, feeds_txp);
+}
+
 static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 051c2e3b6d43..cd2002fff115 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -888,6 +888,12 @@ int vc4_bo_debugfs_init(struct drm_minor *minor);
 /* vc4_crtc.c */
 extern struct platform_driver vc4_crtc_driver;
 int vc4_crtc_disable_at_boot(struct drm_crtc *crtc);
+int __vc4_crtc_init(struct drm_device *drm, struct platform_device *pdev,
+		    struct vc4_crtc *vc4_crtc, const struct vc4_crtc_data *data,
+		    struct drm_plane *primary_plane,
+		    const struct drm_crtc_funcs *crtc_funcs,
+		    const struct drm_crtc_helper_funcs *crtc_helper_funcs,
+		    bool feeds_txp);
 int vc4_crtc_init(struct drm_device *drm, struct platform_device *pdev,
 		  struct vc4_crtc *vc4_crtc, const struct vc4_crtc_data *data,
 		  const struct drm_crtc_funcs *crtc_funcs,

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
