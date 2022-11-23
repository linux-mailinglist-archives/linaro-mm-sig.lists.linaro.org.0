Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D44B363A147
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:34:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E565C3F044
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:34:20 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id DAD7D3ED90
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:28:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="f QZ+c3I";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="K I01EeL";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.west.internal (Postfix) with ESMTP id 9DBA22B069BF;
	Wed, 23 Nov 2022 10:28:38 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 23 Nov 2022 10:28:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669217318; x=
	1669224518; bh=HaSsDv5d/FPLIwy4xz9F2XhZn0I1igKf8Qt5jLSTjc4=; b=f
	QZ+c3IojUQz4sEAxDt3ITDsH5qUbzjFnFiVOujWFjlRxPW+fmnkWLX1D7YhtvzXP
	NzkFPOwKXkLEttLyPEW9JXLBtGdNYwyOnnH5DvhdPwsfROf+tFv/5zoCTkJbTQSQ
	dRYzmFniX/sMya5LT43d+UgVcTzOIkPdGCJoOfG2fDj7R7lrM7bk7F9X0ms+sNjG
	6S+g9o9sBQbP6gTE5rqh3e7+vI7l3ga0U+1mu0i9b3SzbBGQ2lLLYG8llrlGVVvR
	A2Oas7Q1lo/GDm5U0Rr5NsfA/7v7JQ1wK6JCV7LQCXwGcHxQEiENplj/62jnjV9A
	r/eDMfuZz1dXytpcJPTUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669217318; x=
	1669224518; bh=HaSsDv5d/FPLIwy4xz9F2XhZn0I1igKf8Qt5jLSTjc4=; b=K
	I01EeLGqfTFeYOPvSpj1Zic/UXhHAL6Yp+91sRKjCyYIoSfArFTjsOCLibqlRBnI
	HddWBDCZkPRT2aEaqPUs8e4h0+nVCv1jmn0WZ98Lea2TsfJgodc8H39PaH7wltzX
	UmB/ADJ1/yLb2oh92JLx8kXavn01gMz2XHJWiBdKYVzKm2NlsfYTxxZR4lbjPRxw
	2Hl4SGYP/P6NSelbm/dXDmKgtLA1W4krmrvQtU+eHlEms6atDyD1Tfln3nRQ4CXO
	jGCjxX0ypIGFEVIKKvUlcmttf1IuBRdxaTmhg/snrUGFJk/BpExFR4r2hZGpDcFo
	SVP/Hfae/nrVb7q0wVaOg==
X-ME-Sender: <xms:Jjx-Y1nlCsG9gOJ4d2rueqAP8vzWY7yjl461n8WvVEcBvccDf76OJw>
    <xme:Jjx-Yw25s9_zW4FoSIiwsuz1GKzymvgf1fmHWbeQkisA6ULfbT_XbM7ix3FHkQZFg
    Pk0qTi-lhuNZKTHko4>
X-ME-Received: <xmr:Jjx-Y7rQI42fiHSNaGMr-AZQKSJFL90k6vabRGSpoXyk8C7mkIJFlLy-k12Mx6LI5re_w2nPZvBW_r10S7LsAJ_ZnydnfLh8iLMSim0L8alFkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Jjx-Y1lnIkLhHzO-7SSzrNP6wyADe_TR9oPoqFdQVRsEzQ8YHIBjMA>
    <xmx:Jjx-Yz27z8G0QIKObN4wE6wUbq7ixhkCU27HA8SyfbNPGNoN1_49OQ>
    <xmx:Jjx-Y0sjziqQNL5z5sIlGGVjGZmCWRfuwGuomlYQSYfyZTb1-SSkbA>
    <xmx:Jjx-Y-XwECL9Hg9eQj7D5nFxpdo31ozyVS3lmU2b-8sRiJvy3BJrD4FGyfo>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:28:37 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:25:43 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v1-1-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2290; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=+rmCI9pAbapeYT85w8cED6RZFZiyY+8wIFJWQAoU8uo=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11lWz7u8IZOvcvFPnYE1enPvc6zapuWmnFt06Gsl28pfK
 xii9jlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEyE9xcjw47q/s28coGT1xqcLDnNf2
 FO48VbRwpvNa1pFjeTT2V61MrI8F3zVfS/NfxfXAJ/di5iOG9X9uPWL/47eV8nyd4NDmeIYAUA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: DAD7D3ED90
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.27:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wnew2-smtp.messagingengine.com:rdns,wnew2-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
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
Message-ID-Hash: NOS4ZXRUIL37A5P5GTNUUVUUTZKN4PYN
X-Message-ID-Hash: NOS4ZXRUIL37A5P5GTNUUVUUTZKN4PYN
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:50 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 01/24] drm/tests: helpers: Rename the device init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NOS4ZXRUIL37A5P5GTNUUVUUTZKN4PYN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The name doesn't really fit the conventions for the other helpers in
DRM/KMS, so let's rename it to make it obvious that we allocate a new
DRM device.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_client_modeset_test.c | 2 +-
 drivers/gpu/drm/tests/drm_kunit_helpers.c       | 4 +++-
 drivers/gpu/drm/tests/drm_kunit_helpers.h       | 5 ++++-
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/tests/drm_client_modeset_test.c b/drivers/gpu/drm/tests/drm_client_modeset_test.c
index 362a5fbd82f5..e469d1634e2d 100644
--- a/drivers/gpu/drm/tests/drm_client_modeset_test.c
+++ b/drivers/gpu/drm/tests/drm_client_modeset_test.c
@@ -41,7 +41,7 @@ static int drm_client_modeset_test_init(struct kunit *test)
 
 	test->priv = priv;
 
-	priv->drm = drm_kunit_device_init(test, DRIVER_MODESET, "drm-client-modeset-test");
+	priv->drm = drm_kunit_helper_alloc_drm_device(test, DRIVER_MODESET, "drm-client-modeset-test");
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
 
 	ret = drmm_connector_init(priv->drm, &priv->connector,
diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index f1662091f250..a4ad030ed101 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -36,7 +36,9 @@ static void dev_free(struct kunit_resource *res)
 	root_device_unregister(dev);
 }
 
-struct drm_device *drm_kunit_device_init(struct kunit *test, u32 features, char *name)
+struct drm_device *
+drm_kunit_helper_alloc_drm_device(struct kunit *test,
+				  u32 features, char *name)
 {
 	struct kunit_dev *kdev;
 	struct drm_device *drm;
diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.h b/drivers/gpu/drm/tests/drm_kunit_helpers.h
index 20ab6eec4c89..e9870c7911fe 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.h
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.h
@@ -6,6 +6,9 @@
 struct drm_device;
 struct kunit;
 
-struct drm_device *drm_kunit_device_init(struct kunit *test, u32 features, char *name);
+struct drm_device *
+drm_kunit_helper_alloc_drm_device(struct kunit *test,
+				  u32 features,
+				  char *name);
 
 #endif // DRM_KUNIT_HELPERS_H_

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
