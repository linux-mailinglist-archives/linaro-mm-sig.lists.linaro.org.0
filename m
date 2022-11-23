Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8038663A15F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:40:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9097F3EC61
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:40:23 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id C72303ED34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:30:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="O PhnUmm";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="K q1uiow";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.west.internal (Postfix) with ESMTP id 893162B06A7A;
	Wed, 23 Nov 2022 10:30:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 23 Nov 2022 10:30:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669217406; x=
	1669224606; bh=LlEqWReXgYelNaQynNJoKq+p/J+M6VGW5u7ywWVNf90=; b=O
	PhnUmmObWB2Smpw9hTlKl0+gG+acUeDtyqL5zva6afe5CHZ6dqBKOnGwnEiSwee6
	wAwuVRu3oan6avZO2swX2HeeXkzzgIVGOFuWUSwDsXseFegZBDNbfWMmRn2qmmW3
	S+IWM7IK8eqPDw4VpQCC8O6ROl1n+C/6mgCb0WuddaU6nF0IQLrASfrC23e1rIqy
	4A5fO8NRKIZmgXD48xtniWvvnhZ3/YOvAYM958WVEDz3YGmMC7p+CVhs77HwMB3O
	PFXnFbCVWfT78mJLdZMDV5uO5XvK1biJ6Lie6jBw5RWK+uKQBxbhABCjZXkRZ1mg
	4vGtbRejkyl8HEuGfghvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669217406; x=
	1669224606; bh=LlEqWReXgYelNaQynNJoKq+p/J+M6VGW5u7ywWVNf90=; b=K
	q1uiowPzudo2bWceLx0Zk8x1qpfbYrwJLWwbaZDyYjWxe4I9zb2vYiH1q938ufl3
	+lpPoF09MyqJ07PDuD5BAJC3k3Ksk8aubrV+N6ImsqUaoCO4mNHArnIshmk/3kPP
	aV+RcGOBsjPoIE5Qco8rEQexWGz0uwgCDDg5NrY1nlMEUjgkE/tb189dJgpaxC4o
	/fiexJhSHz39ocSpcZv2GIPkZG1i2vCDvvoW7jzpZyojqAw02wbB5ibKU2jf1dK1
	4z85SC0EqJoNtsZIMpqXESazVSne9I9AP/P4gxzVz2fhBE2+EpKFOIfCOvTk0VQE
	sP/F6+xYzRMbFWHTYwR3A==
X-ME-Sender: <xms:fTx-Y-c9JoIijGq9cEyDb5NxplWcxranpHqMCJUPxr5oQlJ7hlFf1A>
    <xme:fTx-Y4MB0HAJDcD51LxjaUzKIYg82HmLxP3HERpknBJldFNmUNict9_psp4NdjryR
    JLFoPxTIqtWURw5nRs>
X-ME-Received: <xmr:fTx-Y_iuEOAnHsjeSiSvAyCTNS0-s6JEXtHEUco7kzYV0oJClki9C8D5jUeG3Srgni6SuFMpMvZkzDcjkEuI2ZS9g3vMEDy7tkzc2eHBdHNDrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:fjx-Y7-70AVLQsASm2RnWwaIwCYSdIdo-6TCQMlJK2Z5DIV2XtJQ0w>
    <xmx:fjx-Y6tO5fTXl_tgUYariEUCYnK0ONt0b6yuocLD1uY7BNOGrGoLAw>
    <xmx:fjx-YyG92poKXr1HCaHHWC9WhO3nXy1u4sG0LWOHvyGdkDbl3lpa2w>
    <xmx:fjx-YxNzD5_mN9YFibOSYxNIyrEdZAfdFArxuUdooEuorCwTn3u6dc5ivy0>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:30:05 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:26:00 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v1-18-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=4295; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=04Z0uBi+qWOZWjvOeTb+qQEOKCz2nCGugN1CpyNo2Ow=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11tU3dzgtrpy45HYjg9zT5Lmy6wQnKyf8z3sr/evZ2dsf
 DDmbOkpZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRn8GMDMfLTn7s2yrny/3d9/p3O1
 f2idrsp56U7Z/DzNmzJ/fAITWGX0xSE5osbrSfk2YItrl/gddR7GBrxXZe7zxJ/29pDK6bOQE=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: C72303ED34
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.27:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim,wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2EZPYH3GABBCDX7XFQARAX7R755BN26D
X-Message-ID-Hash: 2EZPYH3GABBCDX7XFQARAX7R755BN26D
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:54 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 18/24] drm/vc4: crtc: Introduce a lower-level crtc init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2EZPYH3GABBCDX7XFQARAX7R755BN26D/>
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

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 52 +++++++++++++++++++++++++++---------------
 drivers/gpu/drm/vc4/vc4_drv.h  |  6 +++++
 2 files changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 1ea190dffe87..340c39921bce 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1278,31 +1278,20 @@ static void vc4_set_crtc_possible_masks(struct drm_device *drm,
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
@@ -1334,6 +1323,31 @@ int vc4_crtc_init(struct drm_device *drm, struct platform_device *pdev,
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
index 599d24f1f55a..01ca2b25d2e3 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -886,6 +886,12 @@ int vc4_bo_debugfs_init(struct drm_minor *minor);
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
