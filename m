Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6C263ABC0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:58:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 737CB3EF8B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 14:58:35 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id E946A3EF17
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:57:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="U 67dtHn";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="g II7rdc";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id 169832B05E69;
	Mon, 28 Nov 2022 09:57:02 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 28 Nov 2022 09:57:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647421; x=
	1669654621; bh=qhCyg/SHYRJwSZuSmyp9xIcIWpxAdHsMft/ZEfxXBRI=; b=U
	67dtHngK/G+2KACPEkDbN+HBH15Ennr0KiLY9/Zv+XjxG6lPB/MalYC/czTPNUYL
	JjqThEXOyhaR60CBBGZhO7G0boDgUO6hQfsZ7U3ec0uzp52KBkkcU9YIMMvRnatu
	Psae3IETnoxWVeT7GZL3LNM2soMQ4F/5/UKNUxuILDgIDjgWh4fzrfO5i4XjA6ig
	Y6Npnba63AtMlNLFUMU6aRog7LGdpSJKsf9aGmW+ZAbwFFjAQeKP6muEcRfOxUZv
	j4rb1i3rAlmftOMqgUaJ9IyjoPUQkxNDcA+157wPwTafcRcqesGngd+JbUDRixJY
	qIFTYlyUgbgplTdqqaDLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647421; x=
	1669654621; bh=qhCyg/SHYRJwSZuSmyp9xIcIWpxAdHsMft/ZEfxXBRI=; b=g
	II7rdcEXaAqyFcgeoxw22UAbzZlU0m1QV4wtXzU58rq+5FPbhDhn+ekgROvAzR/H
	hMyCCvSWYz05znBf2ZkKlhu09Jde1Y6ZFmNCztSxTg7X6Sivmc6DQLr8eI/HAvFt
	FIxt9bUtQzvYA+qMiOcQF22xldyb17P7OTXlksH7Pg1j1Tb0qLzAfVIi63GL46LF
	neJUVF759L0gelGwq+I/p4b+MpbEo/dwfw/3224wSGpWzfdUwJJqRtq/BwG68gNN
	Mk3I67EWTMYRupFjC5SAktDu4Jnb7bcun7AIZCgab8np1lN29Y6H4stzxFZ5S5B3
	CBMrE1lItgBy3CdiL5Q7Q==
X-ME-Sender: <xms:PcyEY4pHp5NCRYIcXui7PRKDWa50nVjoc5BxzWns0sy5vcJoprQw3w>
    <xme:PcyEY-qNrQ9oQY-Q6GT4IOCNbBdf-8FKX0PFCdTJsbiS_hCFAGcqlouCCdKpDY4n9
    7WFtufOm1vZPBh_nB4>
X-ME-Received: <xmr:PcyEY9MAflFKZHYGnMeVYU2mbmqvxhYRmhnO0h55SY8ADEQmYfFevtJ4NFMj4QC374bQttv1BdPn8hL778yWz3Q3A3vmf7k3V-LxFZuhkfEXYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PcyEY_5Xy-hbNgQPxSl3nohGCC3mL4g6iuYJtllXzgXISVcJjB42-w>
    <xmx:PcyEY35vDm7keWRkpohISkWgCtltwLKPiysbzltE-GTODgi0KAcmag>
    <xmx:PcyEY_hIX2HKMk5DssGNFakzTxpOWoWsmXtf2vNhi6ywNuLHBIckmw>
    <xmx:PcyEY8bQvfLm9qto0niSiJErYXQjGULyIWzrbzlAlRts2SRO--6FslJdpxY>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:57:00 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:34 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-5-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=9343; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=6fxyjm+vgttM+bwcgCD47HnPgYTxjIRgA7OzAZvvqJg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp8vyrl+/PUF+kdFBdoMVEUGMH7eLXvk4T7lod+ye+VZP
 Npdt7ChlYRDjYpAVU2SJETZfEndq1utONr55MHNYmUCGMHBxCsBEZjox/M/kUBYR054xd2awcM6HqQ
 XKocVHG63SX8wt5ft/84JaTjHD/+heM1OedeEp+RUrZOvucv1MVl/azPd6T7tXpBezF8s0fgA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: E946A3EF17
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo];
	FREEMAIL_TO(0.00)[ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[messagingengine.com:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NT6IL4MY3YKRHYGT5IEW3VXRUKJUN7ZP
X-Message-ID-Hash: NT6IL4MY3YKRHYGT5IEW3VXRUKJUN7ZP
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 05/17] drm/tests: helpers: Create the device in another function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NT6IL4MY3YKRHYGT5IEW3VXRUKJUN7ZP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We'll need in some tests to control when the device needs to be added
and removed, so let's split the device creation from the DRM device
creation function.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_client_modeset_test.c | 14 ++++++-
 drivers/gpu/drm/tests/drm_kunit_helpers.c       | 56 +++++++++++++++----------
 drivers/gpu/drm/tests/drm_modes_test.c          | 15 ++++++-
 drivers/gpu/drm/tests/drm_probe_helper_test.c   | 14 ++++++-
 include/drm/drm_kunit_helpers.h                 |  5 ++-
 5 files changed, 77 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/tests/drm_client_modeset_test.c b/drivers/gpu/drm/tests/drm_client_modeset_test.c
index 4d475ae6dbb6..053dbc0106d9 100644
--- a/drivers/gpu/drm/tests/drm_client_modeset_test.c
+++ b/drivers/gpu/drm/tests/drm_client_modeset_test.c
@@ -15,6 +15,7 @@
 
 struct drm_client_modeset_test_priv {
 	struct drm_device *drm;
+	struct device *dev;
 	struct drm_connector connector;
 };
 
@@ -59,7 +60,10 @@ static int drm_client_modeset_test_init(struct kunit *test)
 
 	test->priv = priv;
 
-	priv->drm = drm_kunit_helper_alloc_drm_device(test, DRIVER_MODESET);
+	priv->dev = drm_kunit_helper_alloc_device(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->dev);
+
+	priv->drm = drm_kunit_helper_alloc_drm_device(test, priv->dev, DRIVER_MODESET);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
 
 	ret = drmm_connector_init(priv->drm, &priv->connector,
@@ -76,6 +80,13 @@ static int drm_client_modeset_test_init(struct kunit *test)
 	return 0;
 }
 
+static void drm_client_modeset_test_exit(struct kunit *test)
+{
+	struct drm_client_modeset_test_priv *priv = test->priv;
+
+	drm_kunit_helper_free_device(test, priv->dev);
+}
+
 static void drm_test_pick_cmdline_res_1920_1080_60(struct kunit *test)
 {
 	struct drm_client_modeset_test_priv *priv = test->priv;
@@ -175,6 +186,7 @@ static struct kunit_case drm_test_pick_cmdline_tests[] = {
 static struct kunit_suite drm_test_pick_cmdline_test_suite = {
 	.name = "drm_test_pick_cmdline",
 	.init = drm_client_modeset_test_init,
+	.exit = drm_client_modeset_test_exit,
 	.test_cases = drm_test_pick_cmdline_tests
 };
 
diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 16c7926d83c2..9fb045fa685f 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -17,36 +17,51 @@ struct kunit_dev {
 static const struct drm_mode_config_funcs drm_mode_config_funcs = {
 };
 
-static int dev_init(struct kunit_resource *res, void *ptr)
+/**
+ * drm_kunit_helper_alloc_device - Allocate a mock device for a KUnit test
+ * @test: The test context object
+ *
+ * This allocates a fake struct &device to create a mock for a Kunit
+ * test.
+ *
+ * Callers need to make sure drm_kunit_helper_free_device() on the
+ * device when done.
+ *
+ * Returns:
+ * A pointer to the new device, or an ERR_PTR() otherwise.
+ */
+struct device *drm_kunit_helper_alloc_device(struct kunit *test)
 {
-	char *name = ptr;
-	struct device *dev;
-
-	dev = root_device_register(name);
-	if (IS_ERR(dev))
-		return PTR_ERR(dev);
-
-	res->data = dev;
-	return 0;
+	return root_device_register(KUNIT_DEVICE_NAME);
 }
+EXPORT_SYMBOL(drm_kunit_helper_alloc_device);
 
-static void dev_free(struct kunit_resource *res)
+/**
+ * drm_kunit_helper_free_device - Frees a mock device
+ * @test: The test context object
+ * @dev: The device to free
+ *
+ * Frees a device allocated with drm_kunit_helper_alloc_device().
+ */
+void drm_kunit_helper_free_device(struct kunit *test, struct device *dev)
 {
-	struct device *dev = res->data;
-
 	root_device_unregister(dev);
 }
+EXPORT_SYMBOL(drm_kunit_helper_free_device);
 
 /**
  * drm_kunit_helper_alloc_drm_device - Allocates a mock DRM device for Kunit tests
  * @test: The test context object
+ * @dev: The parent device object
  * @features: Mocked DRM device driver features
  *
- * This function allocates a new struct &device, creates a struct
- * &drm_driver and will create a struct &drm_device using both.
+ * This function creates a struct &drm_driver and will create a struct
+ * &drm_device from @dev and that driver.
  *
- * The device and driver are tied to the @test context and will get
- * cleaned at the end of the test. The drm_device is allocated through
+ * @dev should be allocated using drm_kunit_helper_alloc_device().
+ *
+ * The driver is tied to the @test context and will get cleaned at the
+ * end of the test. The drm_device is allocated through
  * devm_drm_dev_alloc() and will thus be freed through a device-managed
  * resource.
  *
@@ -54,19 +69,14 @@ static void dev_free(struct kunit_resource *res)
  * A pointer to the new drm_device, or an ERR_PTR() otherwise.
  */
 struct drm_device *
-drm_kunit_helper_alloc_drm_device(struct kunit *test,
+drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
 				  u32 features)
 {
 	struct kunit_dev *kdev;
 	struct drm_device *drm;
 	struct drm_driver *driver;
-	struct device *dev;
 	int ret;
 
-	dev = kunit_alloc_resource(test, dev_init, dev_free, GFP_KERNEL, KUNIT_DEVICE_NAME);
-	if (!dev)
-		return ERR_PTR(-ENOMEM);
-
 	driver = kunit_kzalloc(test, sizeof(*driver), GFP_KERNEL);
 	if (!driver)
 		return ERR_PTR(-ENOMEM);
diff --git a/drivers/gpu/drm/tests/drm_modes_test.c b/drivers/gpu/drm/tests/drm_modes_test.c
index 35965ad86188..d1e9f3c0433a 100644
--- a/drivers/gpu/drm/tests/drm_modes_test.c
+++ b/drivers/gpu/drm/tests/drm_modes_test.c
@@ -13,6 +13,7 @@
 
 struct drm_test_modes_priv {
 	struct drm_device *drm;
+	struct device *dev;
 };
 
 static int drm_test_modes_init(struct kunit *test)
@@ -22,7 +23,11 @@ static int drm_test_modes_init(struct kunit *test)
 	priv = kunit_kzalloc(test, sizeof(*priv), GFP_KERNEL);
 	KUNIT_ASSERT_NOT_NULL(test, priv);
 
-	priv->drm = drm_kunit_helper_alloc_drm_device(test, DRIVER_MODESET);
+	priv->dev = drm_kunit_helper_alloc_device(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->dev);
+
+	priv->drm = drm_kunit_helper_alloc_drm_device(test, priv->dev,
+						      DRIVER_MODESET);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
 
 	test->priv = priv;
@@ -30,6 +35,13 @@ static int drm_test_modes_init(struct kunit *test)
 	return 0;
 }
 
+static void drm_test_modes_exit(struct kunit *test)
+{
+	struct drm_test_modes_priv *priv = test->priv;
+
+	drm_kunit_helper_free_device(test, priv->dev);
+}
+
 static void drm_test_modes_analog_tv_ntsc_480i(struct kunit *test)
 {
 	struct drm_test_modes_priv *priv = test->priv;
@@ -135,6 +147,7 @@ static struct kunit_case drm_modes_analog_tv_tests[] = {
 static struct kunit_suite drm_modes_analog_tv_test_suite = {
 	.name = "drm_modes_analog_tv",
 	.init = drm_test_modes_init,
+	.exit = drm_test_modes_exit,
 	.test_cases = drm_modes_analog_tv_tests,
 };
 
diff --git a/drivers/gpu/drm/tests/drm_probe_helper_test.c b/drivers/gpu/drm/tests/drm_probe_helper_test.c
index be61a92b79d2..438b1d42b843 100644
--- a/drivers/gpu/drm/tests/drm_probe_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_probe_helper_test.c
@@ -17,6 +17,7 @@
 
 struct drm_probe_helper_test_priv {
 	struct drm_device *drm;
+	struct device *dev;
 	struct drm_connector connector;
 };
 
@@ -39,7 +40,10 @@ static int drm_probe_helper_test_init(struct kunit *test)
 	KUNIT_ASSERT_NOT_NULL(test, priv);
 	test->priv = priv;
 
-	priv->drm = drm_kunit_helper_alloc_drm_device(test,
+	priv->dev = drm_kunit_helper_alloc_device(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->dev);
+
+	priv->drm = drm_kunit_helper_alloc_drm_device(test, priv->dev,
 						      DRIVER_MODESET | DRIVER_ATOMIC);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
 
@@ -55,6 +59,13 @@ static int drm_probe_helper_test_init(struct kunit *test)
 	return 0;
 }
 
+static void drm_probe_helper_test_exit(struct kunit *test)
+{
+	struct drm_probe_helper_test_priv *priv = test->priv;;
+
+	drm_kunit_helper_free_device(test, priv->dev);
+}
+
 typedef struct drm_display_mode *(*expected_mode_func_t)(struct drm_device *);
 
 struct drm_connector_helper_tv_get_modes_test {
@@ -195,6 +206,7 @@ static struct kunit_case drm_test_connector_helper_tv_get_modes_tests[] = {
 static struct kunit_suite drm_test_connector_helper_tv_get_modes_suite = {
 	.name = "drm_connector_helper_tv_get_modes",
 	.init = drm_probe_helper_test_init,
+	.exit = drm_probe_helper_test_exit,
 	.test_cases = drm_test_connector_helper_tv_get_modes_tests,
 };
 
diff --git a/include/drm/drm_kunit_helpers.h b/include/drm/drm_kunit_helpers.h
index 6c12b1426ba0..b4277fe92c38 100644
--- a/include/drm/drm_kunit_helpers.h
+++ b/include/drm/drm_kunit_helpers.h
@@ -6,8 +6,11 @@
 struct drm_device;
 struct kunit;
 
+struct device *drm_kunit_helper_alloc_device(struct kunit *test);
+void drm_kunit_helper_free_device(struct kunit *test, struct device *dev);
+
 struct drm_device *
-drm_kunit_helper_alloc_drm_device(struct kunit *test,
+drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
 				  u32 features);
 
 #endif // DRM_KUNIT_HELPERS_H_

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
