Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A0F63F397
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:18:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F33793F485
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:18:38 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id AE7893F4C3
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="g O6+d6c";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="M jp6s3D";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.nyi.internal (Postfix) with ESMTP id 928A1580381;
	Thu,  1 Dec 2022 10:15:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 01 Dec 2022 10:15:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907705; x=
	1669914905; bh=8I+/ZXcrOwtZ6aT56122EZfyx0RdtQIuyJk2JiaCaEE=; b=g
	O6+d6caRB2RTL0nlimsGsAb+FZt938xD1rFe7O5UgVRHAry00zQQagQdBv6wm3o5
	F1axcrjFsbWHIXVEAbQ4WNo8kErJBYCV5ZQTbSyG2N6Ldp785Vt2yo42e455ZM3/
	SKxhrkuDeL3wm5mwmapE2FWXu4EWPXtrQtaS1MUZcRzCoWVaG3wfhoisVLMaEbEM
	VApp+RmVWJ4Hy+CcRDU0sfyknZ2MYAqnH67PqMAoKp37e6lrSC/rV+f38FEYonJO
	t00YLgtm8sMzuPuU2PGy1mpCr+W1INLBQPCuhhdACUkuX8q49t2m7hYmKrGnUdRo
	vBdQfWXsb7AO9euLPuWSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907705; x=
	1669914905; bh=8I+/ZXcrOwtZ6aT56122EZfyx0RdtQIuyJk2JiaCaEE=; b=M
	jp6s3DEcehr8GBNB+UtIfdn97lqL3GZep3t+9c1as1o8eTcZWR5A7idomh5BYU0U
	0kqxr8BhYubO7JL+jGrPkU4up+tnQnI2BW48HWF2qXwjbOSDof1J3kSlGtseGVQ7
	fFLYA0FIwcIQZkwkdpsNTzsDjbviVLCE8WzEwqAz8ag+52ywhH5alTfmPpRUiw+1
	oF4MO//LlWaRutF0c+hmD3qesEXolanBQHepzAu2v5Uzk0naCFz/2mzd3o0Po/Fx
	tN6KIG/b+fIrlfq+s0XiU0SGjjdWO1fezy0QWyWW6Hz5sYQz2BpBCKptkM8PlEE2
	YcfkYn1LvzhezNEPKk6pw==
X-ME-Sender: <xms:-cSIY3qv4k28xApNdSEadX9-ZCFgXVjtKmUnAUhXicIf1nXikV7paw>
    <xme:-cSIYxpvmquZEoeWJ535S5hQVNozqm1Ao-oYyBtkTAWpwo63ZCXXP9xGF6Ih5PqgN
    A9Y8gRSk6rqZiKJ8GY>
X-ME-Received: <xmr:-cSIY0MC67-4KY25WoTajEGDMuXfL9MAQJXTgKw34qmu_rC4E6uVEPfr6bjIcWp-vPHM6vu_lbIGQAY5TzGGXMiTSNDW-xB-a2c7TNf49ZWApQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:-cSIY66Uv0_zgD62Vq3hghnKeiyc4vXidffDNZo0tNttswz4B-XkWg>
    <xmx:-cSIY25m0kQQvx2v3KnA0EbvSTV3c57Q9iBOfUYphPhnrxfG3acfqQ>
    <xmx:-cSIYygN66c-zUQppG1BOviViR3SNXNeJveeEy8FE2RuaJJwc0q2PA>
    <xmx:-cSIY0acR-FCYOhqcb798wlcqc1VvMX7chLJeVnFWfOiZwWle7ZeZw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:04 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:42 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v3-11-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4409; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=lKGppXJtIgfAIQmRxfttebo2P8+x0JIWOh78Al1HX2c=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzRquwMsTgnFvVwivrwxo2BhoPdVjdv7NOPyqh8vqrle
 yfm3o5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABPp92RkONdSW7Hce6vbkZizxQv+7Z
 qZffPIwuNeDeuW/Lr4+cxGs4mMDEt/rdTc+Z3D2vTOvoJPa5YVdlZzpq61l05bvajn+o2op3wA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: AE7893F4C3
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
Message-ID-Hash: S2B3SMCRNTYESXRO5KRPQGU3ULWLJ2L5
X-Message-ID-Hash: S2B3SMCRNTYESXRO5KRPQGU3ULWLJ2L5
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 11/20] drm/tests: helpers: Allow to pass a custom drm_driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S2B3SMCRNTYESXRO5KRPQGU3ULWLJ2L5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Some tests will need to provide their own drm_driver instead of relying
on the dumb one in the helpers, so let's create a helper that allows to
do so.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 15 +++------
 include/drm/drm_kunit_helpers.h           | 51 +++++++++++++++++++++++++++++--
 2 files changed, 54 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index b5485ab8fbf9..e98b4150f556 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -82,20 +82,15 @@ void drm_kunit_helper_free_device(struct kunit *test, struct device *dev)
 EXPORT_SYMBOL_GPL(drm_kunit_helper_free_device);
 
 struct drm_device *
-__drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
-				    size_t size, size_t offset,
-				    u32 features)
+__drm_kunit_helper_alloc_drm_device_with_driver(struct kunit *test,
+						struct device *dev,
+						size_t size, size_t offset,
+						const struct drm_driver *driver)
 {
 	struct drm_device *drm;
-	struct drm_driver *driver;
 	void *container;
 	int ret;
 
-	driver = kunit_kzalloc(test, sizeof(*driver), GFP_KERNEL);
-	if (!driver)
-		return ERR_PTR(-ENOMEM);
-
-	driver->driver_features = features;
 	container = __devm_drm_dev_alloc(dev, driver, size, offset);
 	if (IS_ERR(container))
 		return ERR_CAST(container);
@@ -109,7 +104,7 @@ __drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
 
 	return drm;
 }
-EXPORT_SYMBOL_GPL(__drm_kunit_helper_alloc_drm_device);
+EXPORT_SYMBOL_GPL(__drm_kunit_helper_alloc_drm_device_with_driver);
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");
diff --git a/include/drm/drm_kunit_helpers.h b/include/drm/drm_kunit_helpers.h
index df99fda95e89..ed013fdcc1ff 100644
--- a/include/drm/drm_kunit_helpers.h
+++ b/include/drm/drm_kunit_helpers.h
@@ -3,6 +3,8 @@
 #ifndef DRM_KUNIT_HELPERS_H_
 #define DRM_KUNIT_HELPERS_H_
 
+#include <kunit/test.h>
+
 struct drm_device;
 struct kunit;
 
@@ -10,9 +12,54 @@ struct device *drm_kunit_helper_alloc_device(struct kunit *test);
 void drm_kunit_helper_free_device(struct kunit *test, struct device *dev);
 
 struct drm_device *
-__drm_kunit_helper_alloc_drm_device(struct kunit *test, struct device *dev,
+__drm_kunit_helper_alloc_drm_device_with_driver(struct kunit *test,
+						struct device *dev,
+						size_t size, size_t offset,
+						const struct drm_driver *driver);
+
+/**
+ * drm_kunit_helper_alloc_drm_device_with_driver - Allocates a mock DRM device for KUnit tests
+ * @_test: The test context object
+ * @_dev: The parent device object
+ * @_type: the type of the struct which contains struct &drm_device
+ * @_member: the name of the &drm_device within @_type.
+ * @_drv: Mocked DRM device driver features
+ *
+ * This function creates a struct &drm_device from @_dev and @_drv.
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
+#define drm_kunit_helper_alloc_drm_device_with_driver(_test, _dev, _type, _member, _drv)	\
+	((_type *)__drm_kunit_helper_alloc_drm_device_with_driver(_test, _dev,			\
+						       sizeof(_type),				\
+						       offsetof(_type, _member),		\
+						       _drv))
+
+static inline struct drm_device *
+__drm_kunit_helper_alloc_drm_device(struct kunit *test,
+				    struct device *dev,
 				    size_t size, size_t offset,
-				    u32 features);
+				    u32 features)
+{
+	struct drm_driver *driver;
+
+	driver = kunit_kzalloc(test, sizeof(*driver), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_NULL(test, driver);
+
+	driver->driver_features = features;
+
+	return __drm_kunit_helper_alloc_drm_device_with_driver(test, dev,
+							       size, offset,
+							       driver);
+}
 
 /**
  * drm_kunit_helper_alloc_drm_device - Allocates a mock DRM device for KUnit tests

-- 
b4 0.10.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
