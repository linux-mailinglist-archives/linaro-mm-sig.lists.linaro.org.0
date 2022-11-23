Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A9063A158
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:39:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C1FA43EECC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:39:18 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id 478F43ED34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:29:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="k m6T1IJ";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="b MK+gG1";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id 0C9182B06A3D;
	Wed, 23 Nov 2022 10:29:50 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 23 Nov 2022 10:29:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669217390; x=
	1669224590; bh=hfaVFo38lriAGgJI1dbgMK2S3fYuU2KwWAQdbGjgo9E=; b=k
	m6T1IJfE5/tmryfw/tFueC1+6iEyl8Cte1rI0q1WKwUhc2VqEKtbXFFfEmZlXiX6
	vtMXFxJUS2Pi/qkFhF3r4WiHsIUMn3SfgrOOHbanbmbZqI4wQOEnf3kSHUKqlZFH
	9OmF+n152JHxSnp192sn/wdRuEtOdU1qV4phWEykmDlTOX8GAi7UYEupZuGdtIgr
	ZtL4fgjEFNLvPNyItizfJgRsdcOpgeckpgSJHgmSkSoCbCTD8i4CXfrOKBRt6AV8
	yO7/W4TfyBB5axml2zOElc2eUElOWYApC++JeZIx8bzyqfbNi9lwHvkrRvkaOfCx
	ZjbqOvd4t4HXWrEY1v7lA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669217390; x=
	1669224590; bh=hfaVFo38lriAGgJI1dbgMK2S3fYuU2KwWAQdbGjgo9E=; b=b
	MK+gG1M8M/eG0Rqyj+ZvnonE4/iG6w4CyU0mO+0Pvbqj5sI4+GPGT6uj55J+HSuu
	fzBF4g3Jop6XP02HyxmXuqZBNPndJfvi4VpCxkLGGC2VmgreGpESdMREjzBR+rrC
	5Ul3h7tSn4EPiDwe7bWSMG2NybgyBDSjmq7c9Q02ofBPnM7q+lkiflFkeNWlfJYJ
	wN0U/cQOQ9Yz5u9g2eO5aUJ3FGnVTmRpD3maEp8019eXns6I6+T9MUv0XRm1ES8U
	pQIAD+XvWELryiu42bNNxFkK7+RXfRfLDacuYQY3KqeBMN6Vf9DAcg36CfD+gmTp
	zuSZX5VIbuOdbWLvmG8dg==
X-ME-Sender: <xms:bjx-Y4dEiJzxDDMexadG05CfVJ416dW9OWkTnjAeF6wXRdtiZDtitQ>
    <xme:bjx-Y6OTAJob1SYItYAlHJRjqAeWqJ9pBXqyyGO9tVBYFK_oXa-rBIJlRSCqauWtS
    a0667S4FMChkLmr7xs>
X-ME-Received: <xmr:bjx-Y5imh4IBw0uIuLO7UljenbYnp3sdfGyxsZsW2R9p7KNAn1R89AQWQM4r0bMKgfU_pJkPveqmem2SArFwJEL6q0e7be3dzrGlfOgQ-NdMMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:bjx-Y9_qcRwQ6IL_nop5pM1dJYTg5HpIHatZL1Hjn0LKGYkuuzKsaQ>
    <xmx:bjx-Y0sfXZm7tHi5UX9XPHmLOISPyJE9Y2j5IojiflRQq2Uq9mpABA>
    <xmx:bjx-Y0FRzlqJ3RtZKWO1kOLGRgZt6VzFLxV-Cf2esvUzAH9AbHKlAg>
    <xmx:bjx-Y7OHUwiE41f2f5IxRM_CYHpGYUGr7aqbEw9I9ARr47IJZOTYPw_CSWM>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:29:49 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:25:57 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v1-15-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=3354; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=D7jJxqAaTpOyDhDbfieClybVb+HI0s/oGcPVDjdEpCk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11tVdBjd+zfdhLJqvrvVouojzFrcLs5/seJV51W/6Hp57
 V8T3dJSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAi34oYGd7KhnTv6ztSytyb+n916K
 Z+j6prv7YueFc7u2W177IVOyQZ/vu9tPrtMLlnmlZv7pYj+rlt+upv7XJPvzZaIXyIQ85tAw8A
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 478F43ED34
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.27:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.996];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[messagingengine.com:dkim,wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,encoder.base:url];
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
Message-ID-Hash: 74RWDFCVQ3I7C2LS7LGYAOP2UDTWZQ7U
X-Message-ID-Hash: 74RWDFCVQ3I7C2LS7LGYAOP2UDTWZQ7U
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:53 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 15/24] drm/vc4: Add TXP encoder type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/74RWDFCVQ3I7C2LS7LGYAOP2UDTWZQ7U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The TXP is integrated as a separate CRTC/Encoder/Connector combo, but
for some reason doesn't rely on the vc4_encoder type and it's associated
type.

Let's create a type to make it consistent with the other encoders.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h |  1 +
 drivers/gpu/drm/vc4/vc4_txp.c | 30 ++++++++++++++++++++----------
 2 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 855207c07e2e..31228d4cf080 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -473,6 +473,7 @@ enum vc4_encoder_type {
 	VC4_ENCODER_TYPE_DSI1,
 	VC4_ENCODER_TYPE_SMI,
 	VC4_ENCODER_TYPE_DPI,
+	VC4_ENCODER_TYPE_TXP,
 };
 
 struct vc4_encoder {
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index b00c6fae972f..0bb8e97d7891 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -153,6 +153,7 @@ struct vc4_txp {
 
 	struct platform_device *pdev;
 
+	struct vc4_encoder encoder;
 	struct drm_writeback_connector connector;
 
 	void __iomem *regs;
@@ -160,7 +161,7 @@ struct vc4_txp {
 
 static inline struct vc4_txp *encoder_to_vc4_txp(struct drm_encoder *encoder)
 {
-	return container_of(encoder, struct vc4_txp, connector.encoder);
+	return container_of(encoder, struct vc4_txp, encoder.base);
 }
 
 static inline struct vc4_txp *connector_to_vc4_txp(struct drm_connector *conn)
@@ -488,9 +489,10 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = dev_get_drvdata(master);
+	struct vc4_encoder *vc4_encoder;
+	struct drm_encoder *encoder;
 	struct vc4_crtc *vc4_crtc;
 	struct vc4_txp *txp;
-	struct drm_encoder *encoder;
 	int ret, irq;
 
 	irq = platform_get_irq(pdev, 0);
@@ -514,13 +516,24 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	vc4_crtc->regset.regs = txp_regs;
 	vc4_crtc->regset.nregs = ARRAY_SIZE(txp_regs);
 
+	vc4_encoder = &txp->encoder;
+	txp->encoder.type = VC4_ENCODER_TYPE_TXP;
+
+	encoder = &vc4_encoder->base;
+	encoder->possible_crtcs = drm_crtc_mask(&vc4_crtc->base);
+
+	drm_encoder_helper_add(encoder, &vc4_txp_encoder_helper_funcs);
+
+	ret = drmm_encoder_init(drm, encoder, NULL, DRM_MODE_ENCODER_VIRTUAL, NULL);
+	if (ret)
+		return ret;
+
 	drm_connector_helper_add(&txp->connector.base,
 				 &vc4_txp_connector_helper_funcs);
-	ret = drm_writeback_connector_init(drm, &txp->connector,
-					   &vc4_txp_connector_funcs,
-					   &vc4_txp_encoder_helper_funcs,
-					   drm_fmts, ARRAY_SIZE(drm_fmts),
-					   0);
+	ret = drm_writeback_connector_init_with_encoder(drm, &txp->connector,
+							encoder,
+							&vc4_txp_connector_funcs,
+							drm_fmts, ARRAY_SIZE(drm_fmts));
 	if (ret)
 		return ret;
 
@@ -529,9 +542,6 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	encoder = &txp->connector.encoder;
-	encoder->possible_crtcs = drm_crtc_mask(&vc4_crtc->base);
-
 	ret = devm_request_irq(dev, irq, vc4_txp_interrupt, 0,
 			       dev_name(dev), txp);
 	if (ret)

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
