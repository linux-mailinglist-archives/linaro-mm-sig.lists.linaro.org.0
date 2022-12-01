Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E07B63F3A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:20:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B1963F2E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:20:25 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id C6A4B3F4DA
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="b K0iwdz";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="K LzmyAH";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id A9F4A580393;
	Thu,  1 Dec 2022 10:15:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 01 Dec 2022 10:15:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907718; x=
	1669914918; bh=OPZtFmICAZDaotQJfYVYj2Mc2BM8AJuMeB1uvS7Otxw=; b=b
	K0iwdzyNNL6MN3t0X+/9czdtJbY2/I80GtOtV19IsuquCeru9yxktuVpyqIMJJuy
	YYGhWm3niAhYWUIqTG98oOgsWdcjldeUbtgVibrdBod+/hGSkR8JH8PwW6tUeDu1
	NPSoN1+3La4v4Bfyj8PfpLYY4My5BZR4mDdUAdB00DvQ24tquZm8javkEM0Aoj4s
	tdPmfP5BXrUaGHsrsiS+k7LSreglFXH6kDNaUp9xAVADgE1gP4GigUe5BkiwVw7R
	GWeCG54Z3RUa8q2sn35aAB8HpEWoJdFHSmbBi96ygsVE+wkH0CR8e99xkwmfb92x
	FGB7TXLFz648tMp0OeKYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907718; x=
	1669914918; bh=OPZtFmICAZDaotQJfYVYj2Mc2BM8AJuMeB1uvS7Otxw=; b=K
	LzmyAHcqzQJGChVRsahJhwf4EI29MpHyiYN37BlyvLkpV7UjxhVFMO4LI7exWv1Q
	KuRWke2DXAVRchM6hfd41ZIzMcOTOoAEypp7gChsrd7cwMDZodRuG5NUJXPWyrAz
	erbPxisuvJUe/AwiHqI/eca8GKVmBHj6e8yr3OwCFRivrXfZVwUvl9eF+4FXjrcE
	EX59hOnDV/5EdKoUl4bDzg1zOQKA0lPoDv7BHzUcHDEexpSG5H+10wp7dJJ5Jx7A
	IPReib7Eex5GpkO/Zj3qYmgTWRQbOr4aMXm2DzS76PZB5evC874O5DFbwFq3kl+J
	/ytrqdgZk5bcDJPVBxEzg==
X-ME-Sender: <xms:BsWIYwoTdWcFF9J5sue8rjMjsdxTUHKngJFAfzfiCnUjA8dZeW6Cow>
    <xme:BsWIY2ozIr3TsGS-fi8HFReh4yXL7dIZ3_OVfnBb30XTuoGpkXP0aOgcNd05Lkueh
    3k2NT4uqBfU7-3IQzY>
X-ME-Received: <xmr:BsWIY1N42YpszkM79GRwUyr2mT9hjgbtmXXYoNPcAxRSPzEJG5XmzrxWhBRDpH6wPFh09H2ntXpz6Auvjpc8PImc5BaGNdXoi0AN8TGKim0qcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:BsWIY345Gqxq64z5r8SnzIBAZER5rZu7_HvQXjbOqn0sTIscmFVhAQ>
    <xmx:BsWIY_5yPVcOwVaA8n1jueQ3LE9uraiGeNXTryuhRerWlEHZWccH-Q>
    <xmx:BsWIY3jGiCFo7f8Il9LjQI6PfdQb6OiY8Jk3-s6p7_mvXWqG53b3_A>
    <xmx:BsWIY1b96ggLtNLbyFZaJbu4vZhuZY4Nq6MD5fs0fc0S7bNPR5nT7g>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:17 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:47 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v3-16-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4865; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=rAjH1UCTVUXKe04OlfyA+ZChf1nvgVjHU4Eg7dBUSh0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzS8HGIi3n5db1+w/c3K9Pr8rK1ii6/v7Mm1OSRtcNZz
 YpxHRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACbS3snI0LckLXu5pMTC1tqOi+3WbA
 slNjolrCsOswz/4K1+7eHmNEaG261su57PjPP1nJqw0IwxUPvv6rcy+ycLP+uxW1zQPNuKDQA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: C6A4B3F4DA
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6V6C7FKNFZZUSHQ3GOMSXGOAEHFIM3AZ
X-Message-ID-Hash: 6V6C7FKNFZZUSHQ3GOMSXGOAEHFIM3AZ
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 16/20] drm/vc4: hvs: Provide a function to initialize the HVS structure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6V6C7FKNFZZUSHQ3GOMSXGOAEHFIM3AZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We'll need to initialize the HVS structure without a backing device to
create a mock we'll use for testing.

Split the structure initialization part into a separate function.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h |  1 +
 drivers/gpu/drm/vc4/vc4_hvs.c | 81 +++++++++++++++++++++++++------------------
 2 files changed, 48 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 54352db48476..e0be7a81a24a 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -1009,6 +1009,7 @@ void vc4_irq_reset(struct drm_device *dev);
 
 /* vc4_hvs.c */
 extern struct platform_driver vc4_hvs_driver;
+struct vc4_hvs *__vc4_hvs_alloc(struct vc4_dev *vc4, struct platform_device *pdev);
 void vc4_hvs_stop_channel(struct vc4_hvs *hvs, unsigned int output);
 int vc4_hvs_get_fifo_from_output(struct vc4_hvs *hvs, unsigned int output);
 u8 vc4_hvs_get_fifo_frame_count(struct vc4_hvs *hvs, unsigned int fifo);
diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index c4453a5ae163..94c29f8547bb 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -768,22 +768,60 @@ int vc4_hvs_debugfs_init(struct drm_minor *minor)
 	return 0;
 }
 
-static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
+struct vc4_hvs *__vc4_hvs_alloc(struct vc4_dev *vc4, struct platform_device *pdev)
 {
-	struct platform_device *pdev = to_platform_device(dev);
-	struct drm_device *drm = dev_get_drvdata(master);
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
-	struct vc4_hvs *hvs = NULL;
-	int ret;
-	u32 dispctrl;
-	u32 reg;
+	struct drm_device *drm = &vc4->base;
+	struct vc4_hvs *hvs;
 
 	hvs = drmm_kzalloc(drm, sizeof(*hvs), GFP_KERNEL);
 	if (!hvs)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
+
 	hvs->vc4 = vc4;
 	hvs->pdev = pdev;
 
+	spin_lock_init(&hvs->mm_lock);
+
+	/* Set up the HVS display list memory manager.  We never
+	 * overwrite the setup from the bootloader (just 128b out of
+	 * our 16K), since we don't want to scramble the screen when
+	 * transitioning from the firmware's boot setup to runtime.
+	 */
+	drm_mm_init(&hvs->dlist_mm,
+		    HVS_BOOTLOADER_DLIST_END,
+		    (SCALER_DLIST_SIZE >> 2) - HVS_BOOTLOADER_DLIST_END);
+
+	/* Set up the HVS LBM memory manager.  We could have some more
+	 * complicated data structure that allowed reuse of LBM areas
+	 * between planes when they don't overlap on the screen, but
+	 * for now we just allocate globally.
+	 */
+	if (!vc4->is_vc5)
+		/* 48k words of 2x12-bit pixels */
+		drm_mm_init(&hvs->lbm_mm, 0, 48 * 1024);
+	else
+		/* 60k words of 4x12-bit pixels */
+		drm_mm_init(&hvs->lbm_mm, 0, 60 * 1024);
+
+	vc4->hvs = hvs;
+
+	return hvs;
+}
+
+static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct drm_device *drm = dev_get_drvdata(master);
+	struct vc4_dev *vc4 = to_vc4_dev(drm);
+	struct vc4_hvs *hvs = NULL;
+	int ret;
+	u32 dispctrl;
+	u32 reg;
+
+	hvs = __vc4_hvs_alloc(vc4, NULL);
+	if (IS_ERR(hvs))
+		return PTR_ERR(hvs);
+
 	hvs->regs = vc4_ioremap_regs(pdev, 0);
 	if (IS_ERR(hvs->regs))
 		return PTR_ERR(hvs->regs);
@@ -835,29 +873,6 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 	else
 		hvs->dlist = hvs->regs + SCALER5_DLIST_START;
 
-	spin_lock_init(&hvs->mm_lock);
-
-	/* Set up the HVS display list memory manager.  We never
-	 * overwrite the setup from the bootloader (just 128b out of
-	 * our 16K), since we don't want to scramble the screen when
-	 * transitioning from the firmware's boot setup to runtime.
-	 */
-	drm_mm_init(&hvs->dlist_mm,
-		    HVS_BOOTLOADER_DLIST_END,
-		    (SCALER_DLIST_SIZE >> 2) - HVS_BOOTLOADER_DLIST_END);
-
-	/* Set up the HVS LBM memory manager.  We could have some more
-	 * complicated data structure that allowed reuse of LBM areas
-	 * between planes when they don't overlap on the screen, but
-	 * for now we just allocate globally.
-	 */
-	if (!vc4->is_vc5)
-		/* 48k words of 2x12-bit pixels */
-		drm_mm_init(&hvs->lbm_mm, 0, 48 * 1024);
-	else
-		/* 60k words of 4x12-bit pixels */
-		drm_mm_init(&hvs->lbm_mm, 0, 60 * 1024);
-
 	/* Upload filter kernels.  We only have the one for now, so we
 	 * keep it around for the lifetime of the driver.
 	 */
@@ -867,8 +882,6 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	vc4->hvs = hvs;
-
 	reg = HVS_READ(SCALER_DISPECTRL);
 	reg &= ~SCALER_DISPECTRL_DSP2_MUX_MASK;
 	HVS_WRITE(SCALER_DISPECTRL,

-- 
b4 0.10.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
