Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8A863A14A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:35:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DB133ED82
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:35:23 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id 02D093ED90
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:28:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="i XtpDOs";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="R fSVazm";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id B8E8E2B069B3;
	Wed, 23 Nov 2022 10:28:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 23 Nov 2022 10:28:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669217334; x=
	1669224534; bh=OCPbhljzvk72Vfl4x08gLdtbrlb3aio1+U3w+NiS6bE=; b=i
	XtpDOspTj/uf3o4H/se2YK2nZmY2JAW/+hAWAefYhQU2dtgGkTg1LAhaGNBFWt5C
	9++vUh+iDUW5SrMyI2A/Uh8JPLASviaDAN4WN9Xtml1JJT0xsObrnJDBl8co9NHa
	tXnkVingUo3bCnF1xPAY1ZO5LCy5gFqbBiJ4BWwYZOuPDKMN2oviqLTML4fvs+ex
	pKfUYnB2e41zE2UnVfzOmHGE01GZYyfqBN4U0+njcs44rWt35Xmrx+97q8Bd1Fff
	hstuoL1eXy0ujivkGoJlTRCr7LoHMDYuWd33HKONz1neNgAgPJlQyTIsFDDT78vU
	2rxg0Z5mffBDk+ITSdDug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669217334; x=
	1669224534; bh=OCPbhljzvk72Vfl4x08gLdtbrlb3aio1+U3w+NiS6bE=; b=R
	fSVazmDyRB/twNEsqCPa0kI1RnNpY/8R+EBaANoPTDomjTSiubr2rcMaS0Gv+tUK
	KCp0EwNZEtRy3KkhCv9Bd3+0A4TmrfUUp30Vl7FxaZssRsaPNQ+tUhcozXsXre9s
	ejvxlXn6rKH8JrHbk5+4QhgU6i0ft9bgrWh6Dt7sSRMOW0rcJe08X5WVcYGpYjWJ
	PBcyrhDMJU6O4hSCW9UU2GvWIkTQmCBIRpcXdGPlIJBj18VF9bOlTEpCIPzCQenE
	9jFd02QuMd3FdNjyMSdLUG2M0H4MmAclrxeLnxz+sv36pL4oY8pBrZs1ldsh+suU
	NBs1bYu4Ev9cUx0DhrPIA==
X-ME-Sender: <xms:Njx-Y7d_PehQk9QKaFwV82-IMORrDzNkSbg0FOvOpiHNT5tN6i7Gqw>
    <xme:Njx-YxPnl9m8ck8hd7_YaNEuLbamBEO_CFbDqYz0nkHFKkWIMObLDKdlXwnNiuz9p
    myq6oZxyJbntnaKy0A>
X-ME-Received: <xmr:Njx-Y0jNLJbLcdskYv_HV22hej62WWxZGwRaZw9peaz7Ev7AaX9VD4g_6DMHzTpYXVX95mZmZksfy_MYkAVaNcVgFMO4Emn5Iq-AVoYZ0nUXxQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Njx-Y8-DxSSVdA3OrgoOVmj3Vjo2n9VinVD_P0b_qfmp9tkaYX6v5w>
    <xmx:Njx-Y3vdnF2jxtQB_DialBPAhdSNgYv937UPvfHj1L1t5dfsrxlbdQ>
    <xmx:Njx-Y7FrESPsf_NX2dNwSu97-7DFJZvOqinAHLnuhRnDJ0VmFGReVg>
    <xmx:Njx-Y-OzSL8weztsg0MiOTa8k8qlxKy8giqe1cM2gbAX-YgUnX02mr-Dk3I>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:28:53 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:25:46 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v1-4-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1567; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=vlL9ByCFVC14kkn7/3YFwUnuXrrOVTtvBOAlA7Jw1mE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11tW7wiZJPtgrY+UbnaanuOgR75KgVFHpCuOKRY/iTlYf
 nZveUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIm8mMvI8C2I0VrjvnPxCZO14d9+rp
 f2bJeqUmtYcLbL4o3FKf6tPAz/Ax7NvvSCO/HyFFWrCZ+FLZddtErQ3LfLkPHzoVP/n0rYcgEA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 02D093ED90
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
Message-ID-Hash: PDNGB3YL5MQOQ55WLUQO5RP2PNXK3BAG
X-Message-ID-Hash: PDNGB3YL5MQOQ55WLUQO5RP2PNXK3BAG
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:50 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 04/24] drm/tests: helpers: Switch to a platform_device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PDNGB3YL5MQOQ55WLUQO5RP2PNXK3BAG/>
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

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 2f974f45c5b4..651aa93a98a8 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -6,6 +6,7 @@
 #include <kunit/resource.h>
 
 #include <linux/device.h>
+#include <linux/platform_device.h>
 
 #include "drm_kunit_helpers.h"
 
@@ -20,12 +21,26 @@ static const struct drm_mode_config_funcs drm_mode_config_funcs = {
 
 struct device *drm_kunit_helper_alloc_device(struct kunit *test)
 {
-	return root_device_register(FAKE_DEVICE_NAME);
+	struct platform_device *pdev;
+	int ret;
+
+	ret = platform_driver_register(&fake_platform_driver);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	pdev = platform_device_alloc(FAKE_DEVICE_NAME, PLATFORM_DEVID_NONE);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, pdev);
+
+	ret = platform_device_add(pdev);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	return &pdev->dev;
 }
 
 void drm_kunit_helper_free_device(struct kunit *test, struct device *dev)
 {
-	root_device_unregister(dev);
+	struct platform_device *pdev = to_platform_device(dev);
+
+	platform_device_unregister(pdev);
 }
 
 struct drm_device *

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
