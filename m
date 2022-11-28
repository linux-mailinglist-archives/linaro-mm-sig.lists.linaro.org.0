Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B309A63ABCF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:59:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3CAB3EF52
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 14:59:39 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id 55D703EF50
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:57:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="V DDW41w";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="H p+qJNK";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id 7C1D62B04FDA;
	Mon, 28 Nov 2022 09:57:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Nov 2022 09:57:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647440; x=
	1669654640; bh=2Q7Vw5kwKfT5sYQ4wveDn9mxA54cp1RTja7qVgN+ur4=; b=V
	DDW41wa6mYCA+M62kdo75xfgJkoDgPSmR8J0TeXcrR8CYHil+shUUtoahbvRfXn/
	csih+MPEI2IH35IqdCi38YoOKktouEsyeBpWjdC5/gxImcMdB4aovTUi7oD571nO
	tvp/YSW3xAIvtLGCiKAUZASJV+Lunqk1gLyHZIlck9Ra1b7jUaM+g934mqjnnuUh
	1TszVMRbfycDB5o4inqPaUgkf2NTNVQX8XKoAOjgCUriosSTZAtxaDLRIs+Kg8bw
	VzjSVTsLIYOHcIMhnmqXTxR3c+ZpR6BpcLAJpneZXPWSXFwDJNz1O7gIXgcjP4gP
	CCaZ6xl6JDHjuVAeXyPoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647440; x=
	1669654640; bh=2Q7Vw5kwKfT5sYQ4wveDn9mxA54cp1RTja7qVgN+ur4=; b=H
	p+qJNKJjaED69DXRm8R4RzWGO8ymCS2ZMOoR9BnlxilG63Fkdjwxou8Ac4Vfb+Hj
	LxQLhG/PsDKkIq2k3JjSiVeFF6BoFipR/FoyxJRtms3TPhkmQ5pQqF/yyOKntyKq
	jWbyIxRocCt3LEoGjnXv3UBlU+Y8muBuZPCZczpEhyBgETupEOIY3anlmhpcXtBy
	oTBHZARlJSSA/fU6oHbtgcwS1tjV6FXkUY3UxFNIUjBnjl8BhgHNygu4KZxytDwb
	slI6x2bK+ecrUSlG3j9/IN4+8u861xYnUYuotYAcrtfoReppLu5HtR3Ne1lO+Fwc
	WnzCBfNVy1VTD+0/Y62/w==
X-ME-Sender: <xms:T8yEY1mCYDlhoccW1dMAT04fiwBN7VrzMkI_r9sLARAp0_LTb23YZw>
    <xme:T8yEYw2SNcNB0rMRGk_lB7xz0WNtDMdOBNIbSLxWi5kxcKHfL2V9N4UN9dl5LJmdy
    dZ1YJfqcS3uKf6KniE>
X-ME-Received: <xmr:T8yEY7o1YyDsCuQwcdgGKISlrHceevBgotZE0qYJqmkN4_Z0P_dOMgYvwukID-ku3_zi2ZQSqxbTpFPRhxvQvaEqmNLG9jOESDSM9JZwRRiR7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:T8yEY1lo3gRgCqng_UKV9yehQOF4SDhKT4K5-Nturd-nIBoa-jT6LA>
    <xmx:T8yEYz0owoBMMkwUlphiCWfyHgDUSMgHxEeNCDkC-rx2jm_3HoTA8g>
    <xmx:T8yEY0uM9MEnHyfuRgLBuiSrtVOriawkCjYKgIhoSnfCvNW-YOjs1Q>
    <xmx:UMyEY-V9jhHt53RvLcy67Gj_gZ56o6_nTL_0SCPHq_u6ck2pkuDrCs_-hkc>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:57:18 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:37 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-8-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=7435; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=XQqHcE+0zWhiyurPuARLwRPIgaqkqU0tpwBMDkwF3ds=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp8t2yV68cfmEob7prF/lUw6ueF9yLpqVc3EoT3L2osYi
 uzvCHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZhI0BJGhp98n9d7hcZ/6Xm90UQlzX
 7Hngf+2l0NM52uOAWoVnMqNDL8jysvXGdkdCo3K3TD7cuC8TZe7TdmfeXaIe/arfvYXcCfCwA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 55D703EF50
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.26:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,messagingengine.com:dkim,cerno.tech:email,cerno.tech:dkim];
	FREEMAIL_TO(0.00)[ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,messagingengine.com:dkim,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3LNUST4QBZWTDCDHVL6DGLMNHTQNF3N4
X-Message-ID-Hash: 3LNUST4QBZWTDCDHVL6DGLMNHTQNF3N4
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 08/17] drm/tests: helpers: Allow for a custom device struct to be allocated
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3LNUST4QBZWTDCDHVL6DGLMNHTQNF3N4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The current helper to allocate a DRM device doesn't allow for any
subclassing by drivers, which is going to be troublesome as we work on
getting some kunit testing on atomic modesetting code.

Let's use a similar pattern to the other allocation helpers by providing
the structure size and offset as arguments.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_client_modeset_test.c |  4 ++-
 drivers/gpu/drm/tests/drm_kunit_helpers.c       | 40 ++++++-------------------
 drivers/gpu/drm/tests/drm_modes_test.c          |  5 ++--
 drivers/gpu/drm/tests/drm_probe_helper_test.c   |  5 ++--
 include/drm/drm_kunit_helpers.h                 | 32 ++++++++++++++++++--
 5 files changed, 48 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/tests/drm_client_modeset_test.c b/drivers/gpu/drm/tests/drm_client_modeset_test.c
index 053dbc0106d9..416a279b6dae 100644
--- a/drivers/gpu/drm/tests/drm_client_modeset_test.c
+++ b/drivers/gpu/drm/tests/drm_client_modeset_test.c
@@ -63,7 +63,9 @@ static int drm_client_modeset_test_init(struct kunit *test)
 	priv->dev = drm_kunit_helper_alloc_device(test);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->dev);
 
-	priv->drm = drm_kunit_helper_alloc_drm_device(test, priv->dev, DRIVER_MODESET);
+	priv->drm = __drm_kunit_helper_alloc_drm_device(test, priv->dev,
+							sizeof(*priv->drm), 0,
+							DRIVER_MODESET);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
 
 	ret = drmm_connector_init(priv->drm, &priv->connector,
diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 5d3e29353d1a..47a4a7752bb7 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -11,10 +11,6 @@
 
 #define KUNIT_DEVICE_NAME	"drm-kunit-mock-device"
 
-struct kunit_dev {
-	struct drm_device base;
-};
-
 static const struct drm_mode_config_funcs drm_mode_config_funcs = {
 };
 
@@ -85,32 +81,14 @@ void drm_kunit_helper_free_device(struct kunit *test, struct device *dev)
 }
 EXPORT_SYMBOL(drm_kunit_helper_free_device);
 
-/**
- * drm_kunit_helper_alloc_drm_device - Allocates a mock DRM device for Kunit tests
- * @test: The test context object
- * @dev: The parent device object
- * @features: Mocked DRM device driver features
- *
- * This function creates a struct &drm_driver and will create a struct
- * &drm_device from @dev and that driver.
- *
- * @dev should be allocated using drm_kunit_helper_alloc_device().
- *
- * The driver is tied to the @test context and will get cleaned at the
- * end of the test. The drm_device is allocated through
- * devm_drm_dev_alloc() and will thus be freed through a device-managed
- * resource.
- *
- * Returns:
- * A pointer to the new drm_device, or an ERR_PTR() otherwise.
- */
 struct drm_device *
-drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
-				  u32 features)
+__drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
+				    size_t size, size_t offset,
+				    u32 features)
 {
-	struct kunit_dev *kdev;
 	struct drm_device *drm;
 	struct drm_driver *driver;
+	void *container;
 	int ret;
 
 	driver = kunit_kzalloc(test, sizeof(*driver), GFP_KERNEL);
@@ -118,11 +96,11 @@ drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
 		return ERR_PTR(-ENOMEM);
 
 	driver->driver_features = features;
-	kdev = devm_drm_dev_alloc(dev, driver, struct kunit_dev, base);
-	if (IS_ERR(kdev))
-		return ERR_CAST(kdev);
+	container = __devm_drm_dev_alloc(dev, driver, size, offset);
+	if (IS_ERR(container))
+		return ERR_CAST(container);
 
-	drm = &kdev->base;
+	drm = container + offset;
 	drm->mode_config.funcs = &drm_mode_config_funcs;
 
 	ret = drmm_mode_config_init(drm);
@@ -131,7 +109,7 @@ drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
 
 	return drm;
 }
-EXPORT_SYMBOL(drm_kunit_helper_alloc_drm_device);
+EXPORT_SYMBOL(__drm_kunit_helper_alloc_drm_device);
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");
diff --git a/drivers/gpu/drm/tests/drm_modes_test.c b/drivers/gpu/drm/tests/drm_modes_test.c
index d1e9f3c0433a..bc4aa2ce78be 100644
--- a/drivers/gpu/drm/tests/drm_modes_test.c
+++ b/drivers/gpu/drm/tests/drm_modes_test.c
@@ -26,8 +26,9 @@ static int drm_test_modes_init(struct kunit *test)
 	priv->dev = drm_kunit_helper_alloc_device(test);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->dev);
 
-	priv->drm = drm_kunit_helper_alloc_drm_device(test, priv->dev,
-						      DRIVER_MODESET);
+	priv->drm = __drm_kunit_helper_alloc_drm_device(test, priv->dev,
+							sizeof(*priv->drm), 0,
+							DRIVER_MODESET);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
 
 	test->priv = priv;
diff --git a/drivers/gpu/drm/tests/drm_probe_helper_test.c b/drivers/gpu/drm/tests/drm_probe_helper_test.c
index 438b1d42b843..0dc8fb594c5c 100644
--- a/drivers/gpu/drm/tests/drm_probe_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_probe_helper_test.c
@@ -43,8 +43,9 @@ static int drm_probe_helper_test_init(struct kunit *test)
 	priv->dev = drm_kunit_helper_alloc_device(test);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->dev);
 
-	priv->drm = drm_kunit_helper_alloc_drm_device(test, priv->dev,
-						      DRIVER_MODESET | DRIVER_ATOMIC);
+	priv->drm = __drm_kunit_helper_alloc_drm_device(test, priv->dev,
+							sizeof(*priv->drm), 0,
+							DRIVER_MODESET | DRIVER_ATOMIC);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
 
 	connector = &priv->connector;
diff --git a/include/drm/drm_kunit_helpers.h b/include/drm/drm_kunit_helpers.h
index b4277fe92c38..7908c516f2ab 100644
--- a/include/drm/drm_kunit_helpers.h
+++ b/include/drm/drm_kunit_helpers.h
@@ -10,7 +10,35 @@ struct device *drm_kunit_helper_alloc_device(struct kunit *test);
 void drm_kunit_helper_free_device(struct kunit *test, struct device *dev);
 
 struct drm_device *
-drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
-				  u32 features);
+__drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
+				    size_t size, size_t offset,
+				    u32 features);
+
+/**
+ * drm_kunit_helper_alloc_drm_device - Allocates a mock DRM device for Kunit tests
+ * @_test: The test context object
+ * @_dev: The parent device object
+ * @_type: the type of the struct which contains struct &drm_device
+ * @_member: the name of the &drm_device within @_type.
+ * @_features: Mocked DRM device driver features
+ *
+ * This function creates a struct &drm_driver and will create a struct
+ * &drm_device from @_dev and that driver.
+ *
+ * @_dev should be allocated using drm_kunit_helper_alloc_device().
+ *
+ * The driver is tied to the @_test context and will get cleaned at the
+ * end of the test. The drm_device is allocated through
+ * devm_drm_dev_alloc() and will thus be freed through a device-managed
+ * resource.
+ *
+ * Returns:
+ * A pointer to the new drm_device, or an ERR_PTR() otherwise.
+ */
+#define drm_kunit_helper_alloc_drm_device(_test, _dev, _type, _member, _feat)	\
+	((_type *)__drm_kunit_helper_alloc_drm_device(_test, _dev,		\
+						      sizeof(_type),		\
+						      offsetof(_type, _member),	\
+						      _feat))
 
 #endif // DRM_KUNIT_HELPERS_H_

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
