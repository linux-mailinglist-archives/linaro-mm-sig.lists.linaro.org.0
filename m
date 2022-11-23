Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 795D563A151
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:36:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EDD53EF7B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:36:51 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id BECEC3EDA2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:29:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="U TObc4f";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="V vdUI8D";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.west.internal (Postfix) with ESMTP id 830B42B069B3;
	Wed, 23 Nov 2022 10:29:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 23 Nov 2022 10:29:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669217355; x=
	1669224555; bh=E+F6j3rDHAg7el7OBdKDoKd9QAC9lnirKzZ7wgoZYxo=; b=U
	TObc4fpZjWo5ok4o4QSnl0a94+ZNKsFwwNIeGrLfNZnlJSgmqnSnef6jQjE/F5tq
	owSCKNRxz0FeWDSeuqHyw/ON94ZvBzIji+vktVj1hMI0A4po4JSbMzTx/x3/Zck+
	4j1F8UFoVmIt+Z5E/GqCO3fNfwg5VL0DqX18QyQqadzG1eMYAWNbFtHDy+PJs3V/
	oFpRtKrO49ravdZMrsChgEZD0hwzNKDrwg7ScNJsN3W6cBXwMiEVWoGN8JDH5aW8
	vIKUza8QpJb1V4LZUdX5/H/XNv0xskm5o++jj8zsgTlXUq8BFdbhdrmQLADy0iEZ
	ShahpsRyUpQI2UuoCwqoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669217355; x=
	1669224555; bh=E+F6j3rDHAg7el7OBdKDoKd9QAC9lnirKzZ7wgoZYxo=; b=V
	vdUI8DhZx2z/VaNFF4uW23IozVvv4FAxUf+SDWyIrKL73OJoR49jlEUHe88Ckgbc
	IiQjhEf+0GYsvWpLtInUmLEtFFyZeOVMTYF691fV8htC8N+8RngGyPHP/j6X6wJx
	aH4JW1Y/TrAz/qCZCRGgPU5GEIt14fnOxOB/LA85i70vzbOUOfUccXGgqZZFJm7I
	qxmLp++k3splfYh1AaBx/uJ5SPfFzdUBs812xnXGDwS84Lal/vOh1Gc2k1EjGbtl
	XKMRJt/lBHSODagQ20hwBGkpxtK2xNuEL8uFnsah+cnTUZH0kFgfm772YwD3qmzh
	FOcfNvo3F104lCbso8lfQ==
X-ME-Sender: <xms:Sjx-Y8Q2SxPuggVCz2WB7zA44oIyMRMSjGjO4DWzZ6cqezwASJ8OVA>
    <xme:Sjx-Y5yF4IbXe2xuvrVyh0NN-Iid9cpyG69AGoHxG_U_ytiEo57mRJeZOcOmGKlYB
    IgN_rwL6iJdEDXHnpk>
X-ME-Received: <xmr:Sjx-Y51j05CHQYNrxQAcK6Jey3Y58lZgq2McJpUsOsb3Ja8NHUXo5zrywaZHYjLf8OatVOdCKKhPgoaCKkLu1qgJRGm5qaZboPN_LK-UGiZLbQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Szx-YwDkH9XwO_7_AEsk14D_Z7d6GInnEw4lA2l9MsKxBLrfHO-H5A>
    <xmx:Szx-Y1jYr9GkA35anFI4MssXYppaZ7EUdxouyY39vgwv4jQQbNtyuQ>
    <xmx:Szx-Y8rJRIZgf5JpDUMmeRqHxQdtUOAfXHU4TNm_kcLRbVJ2OMKZOw>
    <xmx:Szx-Y-DPfky-Nc7WFF1YyydEB5wVPqD39veWup823ovPBMBqy-Kc8IOxOIs>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:29:14 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:25:50 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v1-8-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2796; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=txZGu5YsKfJXUp6BjWwvlIBYY88sSzl4HbGo87GOweA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11tX7GDz3OcW9a14j8XxSlt37RwVR3x7U5EpVfrtZLSIe
 /GxhRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACYSJcDw38tk7QsdTuavoRH/dmRP4n
 qy/5T2e+au63ernCW4Iq+5bmX4Z3J3lxFDUoxNdMePD/MazXl+V+qLfmG4t7D15mePz5dnMAMA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: BECEC3EDA2
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.27:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim,wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo,messagingengine.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[cerno.tech:email,cerno.tech:dkim,wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo,messagingengine.com:dkim];
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
Message-ID-Hash: QUG7ZINK5SFMEKZM64CN6WU2IFFYHPVQ
X-Message-ID-Hash: QUG7ZINK5SFMEKZM64CN6WU2IFFYHPVQ
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:51 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/24] drm/tests: Add a test for DRM managed actions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QUG7ZINK5SFMEKZM64CN6WU2IFFYHPVQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

DRM-managed actions are supposed to be ran whenever the device is
released. Let's introduce a basic unit test to make sure it happens.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/Makefile           |  1 +
 drivers/gpu/drm/tests/drm_managed_test.c | 68 ++++++++++++++++++++++++++++++++
 2 files changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/tests/Makefile b/drivers/gpu/drm/tests/Makefile
index b29ef1085cad..35962c6ef0c4 100644
--- a/drivers/gpu/drm/tests/Makefile
+++ b/drivers/gpu/drm/tests/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_DRM_KUNIT_TEST) += \
 	drm_format_test.o \
 	drm_framebuffer_test.o \
 	drm_kunit_helpers.o \
+	drm_managed_test.o \
 	drm_mm_test.o \
 	drm_plane_helper_test.o \
 	drm_rect_test.o
diff --git a/drivers/gpu/drm/tests/drm_managed_test.c b/drivers/gpu/drm/tests/drm_managed_test.c
new file mode 100644
index 000000000000..4fc11b289d9e
--- /dev/null
+++ b/drivers/gpu/drm/tests/drm_managed_test.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <drm/drm_drv.h>
+#include <drm/drm_managed.h>
+
+#include <kunit/resource.h>
+
+#include <linux/device.h>
+
+#include "drm_kunit_helpers.h"
+
+#define TEST_TIMEOUT_MS	100
+
+struct managed_test_priv {
+	bool action_done;
+	wait_queue_head_t action_wq;
+};
+
+static void drm_action(struct drm_device *drm, void *ptr)
+{
+	struct managed_test_priv *priv = ptr;
+
+	priv->action_done = true;
+	wake_up_interruptible(&priv->action_wq);
+}
+
+static void drm_test_managed_run_action(struct kunit *test)
+{
+	struct managed_test_priv *priv;
+	struct drm_device *drm;
+	struct device *dev;
+	int ret;
+
+	priv = kunit_kzalloc(test, sizeof(*priv), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv);
+	init_waitqueue_head(&priv->action_wq);
+
+	dev = drm_kunit_helper_alloc_device(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, dev);
+
+	drm = __drm_kunit_helper_alloc_drm_device(test, dev, sizeof(*drm), 0, DRIVER_MODESET);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, drm);
+
+	ret = drmm_add_action_or_reset(drm, drm_action, priv);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+
+	ret = drm_dev_register(drm, 0);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	drm_dev_unregister(drm);
+	drm_kunit_helper_free_device(test, dev);
+
+	ret = wait_event_interruptible_timeout(priv->action_wq, priv->action_done,
+					       msecs_to_jiffies(TEST_TIMEOUT_MS));
+	KUNIT_EXPECT_GT(test, ret, 0);
+}
+
+static struct kunit_case drm_managed_tests[] = {
+	KUNIT_CASE(drm_test_managed_run_action),
+	{}
+};
+
+static struct kunit_suite drm_managed_test_suite = {
+	.name = "drm-test-managed",
+	.test_cases = drm_managed_tests
+};
+
+kunit_test_suite(drm_managed_test_suite);

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
