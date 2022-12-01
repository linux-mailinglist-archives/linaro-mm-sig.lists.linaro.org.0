Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5501B63F395
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:18:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 635363F2E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:18:19 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 80A163F493
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="U s/Aa4q";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="t /3nDy/";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 61B895803A4;
	Thu,  1 Dec 2022 10:15:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 01 Dec 2022 10:15:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907703; x=
	1669914903; bh=o1GxoIy9tIGkpYGQd3V+71hjw8YMfiHPDUsOz+6prAk=; b=U
	s/Aa4qSPGjjBYQdUKZyywumcGXy7JUyGiCv2AMO76R/rdRRwR9oG4ZmwGxms97bn
	R6ISVlofR2V6X1TZWfKfDJRTPlKUdWp9ZAv8O5UCen3kSn5oK//rDAlHaVYC+Lt6
	VJsETGXyOElL8Y5nmcSx3d6pmgkNGTiu6kVMT42mcgW+P+q+Zh4uy6SQl3yT4yOP
	G5WBO52JJ7Fds2t9t/WWjJsySZgF1+xDpzllQw8XfF2+vKN64MDPwSJH1jFIo65T
	uFhSfFH50Saq0akHWnBloyltnfAiYVko99StoA9j9fh5LApzQi4om89jgrsYmmC6
	AdwP+y2gCTC4+SCxxDolQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907703; x=
	1669914903; bh=o1GxoIy9tIGkpYGQd3V+71hjw8YMfiHPDUsOz+6prAk=; b=t
	/3nDy/nVrRe6MR8Nebexr396fs72petQEmb4sWrmzxBQIjbEil2WN0Le4NRg8z1g
	4a5nvUbyX1DIPxd3ee2lvPZUzjdgIjRu/UYb55sdkjrUQhRDMeoGUEhaFf3c1i1h
	aLHkLbk28ca0xIPA4Up7CPW18Hr7+4ZtTLA1087YwHr5k38yp4FkfxkvHuPATAUN
	8JNeNfl4dhSqHK7OY3GaEeoGArmi76ve2RimiBkRtESox22PBY0dMZev+badhbkz
	Bwc/bksNcrG7KVbxeboRLEFNT4oUiJDA94v60vI560m5UZwRCKDSJmN5qOLR8TVp
	dNhrtRTGNvOMgUIySm2wA==
X-ME-Sender: <xms:98SIY9D1MKOoVd3_zMdyRtlDWJf_89zF_O1zZ14yxdYXo_s3QwHdDQ>
    <xme:98SIY7ilZ7y5xPbWP1WoRGiFtZCmoKTJ4eL5jvNFU1AYiMX0GGzn11wW00XjKxbSf
    we2dR0CLcXM3RaOY5s>
X-ME-Received: <xmr:98SIY4k3BaQAc3W8jHzbHyaaG5qWAxYriCm8QtxuGYmALX2HRGD2Y3hEwvyL4A3rd7xMZrAACxRwow3J5pPZ6Op4LCJtEzONo8kDNY-cr8Xu0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:98SIY3wnTcuQAo9462LxxpV1fgqBldr4GVGlsR2JRGNPVCLDS_f6_Q>
    <xmx:98SIYyT85gt-pzMuL1IataCMiljsJwaRRpZelHTlNFN-6-N8BIhn4w>
    <xmx:98SIY6ZP-MGwiP-Rpc49wylQnFPDRSdJ9NqqMwEBJmpzbpBYg9GbnA>
    <xmx:98SIY6zZS2XLU3L8ntV_f1izkSOubqyhPan5pMRn7cWhYUweFecqHw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:02 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:41 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v3-10-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=7490; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=oWQyHlFlEMO6tU/Tk/1H5+OEylpKqL1EgYaUned7kZA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzQcza8sTFjCvvxt9JkzU5ddn1W+bGVLxU33kwbqbqkT
 70o1dJSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAi+6czMrS0r5lrvS32vMuP22Up5W
 6ffsiYfhR4WXlI2nehsbbt+TmMDGtXTw6v3eqbwy+SLuoi8KVhienlXCfVT8v/aTezf45vZQcA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 80A163F493
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
	URIBL_BLOCKED(0.00)[cerno.tech:email,cerno.tech:dkim,new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,messagingengine.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7Y4MPAURBR7367AZKQBHX56U7VFL2RE6
X-Message-ID-Hash: 7Y4MPAURBR7367AZKQBHX56U7VFL2RE6
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 10/20] drm/tests: helpers: Allow for a custom device struct to be allocated
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7Y4MPAURBR7367AZKQBHX56U7VFL2RE6/>
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

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
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
index 9bfd3cb9cde1..b5485ab8fbf9 100644
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
 EXPORT_SYMBOL_GPL(drm_kunit_helper_free_device);
 
-/**
- * drm_kunit_helper_alloc_drm_device - Allocates a mock DRM device for KUnit tests
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
-EXPORT_SYMBOL_GPL(drm_kunit_helper_alloc_drm_device);
+EXPORT_SYMBOL_GPL(__drm_kunit_helper_alloc_drm_device);
 
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
index 63a3bd1a6e4d..e5bd967fe8af 100644
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
index b4277fe92c38..df99fda95e89 100644
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
+ * drm_kunit_helper_alloc_drm_device - Allocates a mock DRM device for KUnit tests
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
b4 0.10.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
