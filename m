Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2B163ABC6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:58:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5944B3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 14:58:55 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id A35B63EECC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:57:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="d VnpaZf";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="X j88QF+";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.west.internal (Postfix) with ESMTP id C33172B04FDA;
	Mon, 28 Nov 2022 09:57:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Mon, 28 Nov 2022 09:57:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647427; x=
	1669654627; bh=3jM1lFpUvid9dL8xbYzBjvihYXMZQEDhHtBPP0SyarI=; b=d
	VnpaZfinNiAH/tdfbeKg1gxVVl6mk3HeKH9W+u5ZMKfM1lNFVuJKEOG79mGzdL2k
	dDxLP27Ua2TBSA5Oz/BnDdbB2FVYEMTR5pYBVkHzMzpuqhmhtcAsVokdQLz8SrsZ
	gAVy2B1kfBbaufD/RqZw+1A+wyiCbgkhoQPG9HRXsEK2a1ZRDoIrASGZ29a13LIj
	p5H//H34wOeSSWUADeF9pd15Bc3nMWs5tG0f2ygMPddDNEVSDJu0CkZIoX46FAU6
	QzUO1Gh1ChW/wsJ00DgNGiVaVUabr3a64bcX5mc7FR43msRqDukHma5Jo0bazFrI
	yPAWydFqrja0c09MwW7oA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647427; x=
	1669654627; bh=3jM1lFpUvid9dL8xbYzBjvihYXMZQEDhHtBPP0SyarI=; b=X
	j88QF+w6o3q7D/akegJ4mlKIG0E6FJhRmmrAC/wktVBnzMLEUYGmCP6DhZqxBKvZ
	1jDzeouSYvgxEXnqNn0Ze4//1J2GkIDIrKQIH8K5Qnc7teEj4Yl7jKr0KSxoQktC
	NY66dUBM6RsLYA8TO2ktXDkGbJcIq3D1V3ekTfVwtcMbeXkMu2i9erK112vBi4lh
	DXHnuKrm3TAzlJ820wWaVvYrqt6FSqc4HPAL8atGKlDHUPCKWpSEyvrovIPhj9e8
	gsm+i6WsDLKL9Lrh4Y+PCF+FbfaaJmzmsq8JMF+VCbb2RPz2k82APN8aGAn6ykyV
	wKkRYCMu2wOQApH9Xqm2w==
X-ME-Sender: <xms:Q8yEY18s-ayChROu0BXe8GL5C4dI5i7p08u3MiYv_XWgDS1ACYaYCg>
    <xme:Q8yEY5tafxUQIz5gNLoxzTGCSAsGJTvzqLnXk-7KtlL0Jkh9Qqbv4Bb29KirkE_Q3
    K3ERDtRp0uHLZUyhBo>
X-ME-Received: <xmr:Q8yEYzAu5Xo2l9yO1Wn8m2afKWNgMJsx_BjuIdsDkDzMK2Hq8T68KqLg3g_qp9YTZ35zcOyc2LXhFrlUHxQFzutDXeNDJOBy5ZoZj2HCSpTHRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Q8yEY5c2N7QTnfEFxIw4aDeQM7dFnjy33GgK7PGScUF22QXIOSlHfA>
    <xmx:Q8yEY6OsBdhE8yqnpdiHpmI9wsSOpl85iUC1q3T5-EMApdggyRtKzg>
    <xmx:Q8yEY7mPrxTTxiMcG62gBqIEtQg1ryJoZbN17H5zsxfKJq-0xzSzrA>
    <xmx:Q8yEYwt0fk7g3twpBRaUzZEWMeSJCJmlbEEpdsxSkho6lIXhtEYK_6IDWX0>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:57:06 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:35 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-6-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1696; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=mqiACPZnDbOIQIFxcYqDVu9/u1XR2zsC5mwvrG+GQrs=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp8vSqzU0p7InMRZPvsOw3PHS19+lOWkHrBcGhL56sO//
 8WmzO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRaQyMDJs4uVpWvPO+8kmUmTVc8P
 LGxXz750VZ7OXtZt67vVF2/l1GhskW8wWX8t1RS/ww6Zv47YDZWc5snkwt6/Yr1Nfv8Q3qYAIA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: A35B63EECC
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.26:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
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
Message-ID-Hash: ZYSOMJI3NXQU3VWVMS3QKDTBQLGQ3YTK
X-Message-ID-Hash: ZYSOMJI3NXQU3VWVMS3QKDTBQLGQ3YTK
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 06/17] drm/tests: helpers: Switch to a platform_device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZYSOMJI3NXQU3VWVMS3QKDTBQLGQ3YTK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The device managed resources are ran if the device has bus, which is not
the case of a root_device.

Let's use a platform_device instead.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 9fb045fa685f..15678ab823b0 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -7,6 +7,7 @@
 #include <kunit/resource.h>
 
 #include <linux/device.h>
+#include <linux/platform_device.h>
 
 #define KUNIT_DEVICE_NAME	"drm-kunit-mock-device"
 
@@ -32,7 +33,16 @@ static const struct drm_mode_config_funcs drm_mode_config_funcs = {
  */
 struct device *drm_kunit_helper_alloc_device(struct kunit *test)
 {
-	return root_device_register(KUNIT_DEVICE_NAME);
+	struct platform_device *pdev;
+	int ret;
+
+	pdev = platform_device_alloc(KUNIT_DEVICE_NAME, PLATFORM_DEVID_NONE);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, pdev);
+
+	ret = platform_device_add(pdev);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	return &pdev->dev;
 }
 EXPORT_SYMBOL(drm_kunit_helper_alloc_device);
 
@@ -45,7 +55,9 @@ EXPORT_SYMBOL(drm_kunit_helper_alloc_device);
  */
 void drm_kunit_helper_free_device(struct kunit *test, struct device *dev)
 {
-	root_device_unregister(dev);
+	struct platform_device *pdev = to_platform_device(dev);
+
+	platform_device_unregister(pdev);
 }
 EXPORT_SYMBOL(drm_kunit_helper_free_device);
 

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
