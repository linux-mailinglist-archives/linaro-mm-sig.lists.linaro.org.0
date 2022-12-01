Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7DF63F36D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:15:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46C4D3F4D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:15:11 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id B41473F2E7
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:14:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="f hD5VKW";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="P A2UjeB";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 94772580381;
	Thu,  1 Dec 2022 10:14:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 01 Dec 2022 10:14:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907683; x=
	1669914883; bh=Seytm3E54vm5uiAPJ8YQfeJK4Kc6nPLPIVaWpWj5UWo=; b=f
	hD5VKW+4f7Rs0Bm+x+IYvEON0Y5ZTcBdPAMLPUHcDs6VfwjTb+CMuw4sz0Jnqx1y
	i5NlKoYmTCsLM0OaULrITjsvPSCl58FgLHiTjzggs5A6amzXviKasCa3vMICZJRW
	zAjVv+pctlmcA3aCjVVsSDMSt877duES2hJWdUepteoFl2X9flUYHlpQhzxw13XU
	O+mfjyOkyln3Z0SfIjNsl/EWM/mNkn7MPHLDIF1R2yuIUOh6uUZ+bssbc/l8gkZF
	j6655wc4YCJerrQ43xq8XwNVXbcyyY1CEnQa+yO24V8xpkxU+/42J2jlbsfsdp/H
	Tlm7WfKUqY2u9A6aNoqMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907683; x=
	1669914883; bh=Seytm3E54vm5uiAPJ8YQfeJK4Kc6nPLPIVaWpWj5UWo=; b=P
	A2UjeB9el/63kmQoW3fMKt/KsfBLV9omdIydr2THQIzTNGgfTPtOA5UKyYpxUc3J
	q+T/MVXxX1PWRKi3a/oXPGUK1iaHPgk5vFEM14kBqsIK+oBM9rFaHtFIfGwDRVRE
	RbxkFNtUgtanPTNlnQMhgTf6oyYM8gENXr7MCtfGoMm3sPEdh3SQ7LOKcR56PSao
	rL4OaTiuIMVPPn/SYfNX8PPj0wI6b5qyOjuo05Ha3WvaAG5kd3U44vMAJKV9Puqw
	IQRwhzKcdxJdmFkbtOds+wKzbsFHStEOt38sQ3KSbSYWFNVfqovHHjilaJOSDC66
	zqxpCUqcUKf8WhbySiS1g==
X-ME-Sender: <xms:4sSIY6LoEfioK9-d8sVJqTPUmbZMLuS5HADydnbRVY-E_fK4ssDFNg>
    <xme:4sSIYyK17-_J3LXwq3746z66-oSpAl1WFxtUuFzLHjYCk79RVS2FNYf6I-hUbwki1
    O7No6T_hIHQSd5dye4>
X-ME-Received: <xmr:4sSIY6sDhfTLogS2Q8oICPA9ryXjymH9K7gU03ZQXU1GBASBpfzFssxnvY3qFXjXh1L-BIvq2IsMpOviX-oDJ6AncLfKoYDQZophVjcbbpLITg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:4sSIY_addY6F33LHgDZiy8-R8A2Z8HT5s7IWP4g8DjIbcsHmovd9cg>
    <xmx:4sSIYxYKC4PgvkT1QT0ANSgKEmiF0Ue3VW_hdUMZjDz95MaM0bjK7A>
    <xmx:4sSIY7Cr8Zfr9SIch701AU1Zw46bS966Fb9JeEUbnskn82oLjiXHpA>
    <xmx:48SIYy71MpT8QAomtEgr7Iso2LX-4RpAWOW3hVLOHkxbmywagYJCMw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:14:41 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:32 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v3-1-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3244; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=KaSpnNpaFWR9iVnSLj9upU+0HsWU0upINR9jaKM9ROI=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdR9S3qP43Cam9lqpUfFk5btLHx5P9z002PhP+qF3urv9+
 Z3v5jlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEwkr5HhD4/DxSt3E4wE/n+/cKJx9k
 ymBWKPE24vL9yjV+syfeN+gUKG/2HLjVvv685h1bO2l5mw/WVbYVrd8SjFvbs1guJea2v/ZwYA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: B41473F2E7
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.60 / 15.00];
	DWL_DNSWL_HI(-3.50)[messagingengine.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.230:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	RCVD_IN_DNSWL_LOW(-0.10)[66.111.4.230:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,ffwll.ch,suse.de,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,cerno.tech:email,cerno.tech:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RIFJJENS3SI2LNCRYEGN2RLL4PUPP6L7
X-Message-ID-Hash: RIFJJENS3SI2LNCRYEGN2RLL4PUPP6L7
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 01/20] drm/tests: helpers: Move the helper header to include/drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RIFJJENS3SI2LNCRYEGN2RLL4PUPP6L7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We'll need to use those helpers from drivers too, so let's move it to a
more visible location.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_client_modeset_test.c            | 3 +--
 drivers/gpu/drm/tests/drm_kunit_helpers.c                  | 3 +--
 drivers/gpu/drm/tests/drm_modes_test.c                     | 3 +--
 drivers/gpu/drm/tests/drm_probe_helper_test.c              | 3 +--
 {drivers/gpu/drm/tests => include/drm}/drm_kunit_helpers.h | 0
 5 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/tests/drm_client_modeset_test.c b/drivers/gpu/drm/tests/drm_client_modeset_test.c
index 52929536a158..ed2f62e92fea 100644
--- a/drivers/gpu/drm/tests/drm_client_modeset_test.c
+++ b/drivers/gpu/drm/tests/drm_client_modeset_test.c
@@ -8,12 +8,11 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_kunit_helpers.h>
 #include <drm/drm_modes.h>
 #include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
 
-#include "drm_kunit_helpers.h"
-
 struct drm_client_modeset_test_priv {
 	struct drm_device *drm;
 	struct drm_connector connector;
diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 8c738384a992..6600a4db3158 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -1,14 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <drm/drm_drv.h>
+#include <drm/drm_kunit_helpers.h>
 #include <drm/drm_managed.h>
 
 #include <kunit/resource.h>
 
 #include <linux/device.h>
 
-#include "drm_kunit_helpers.h"
-
 struct kunit_dev {
 	struct drm_device base;
 };
diff --git a/drivers/gpu/drm/tests/drm_modes_test.c b/drivers/gpu/drm/tests/drm_modes_test.c
index 9358a885c58b..3953e478c4d0 100644
--- a/drivers/gpu/drm/tests/drm_modes_test.c
+++ b/drivers/gpu/drm/tests/drm_modes_test.c
@@ -4,14 +4,13 @@
  */
 
 #include <drm/drm_drv.h>
+#include <drm/drm_kunit_helpers.h>
 #include <drm/drm_modes.h>
 
 #include <kunit/test.h>
 
 #include <linux/units.h>
 
-#include "drm_kunit_helpers.h"
-
 struct drm_test_modes_priv {
 	struct drm_device *drm;
 };
diff --git a/drivers/gpu/drm/tests/drm_probe_helper_test.c b/drivers/gpu/drm/tests/drm_probe_helper_test.c
index 7e938258c742..1f3941c150ae 100644
--- a/drivers/gpu/drm/tests/drm_probe_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_probe_helper_test.c
@@ -7,6 +7,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_kunit_helpers.h>
 #include <drm/drm_mode.h>
 #include <drm/drm_modes.h>
 #include <drm/drm_modeset_helper_vtables.h>
@@ -14,8 +15,6 @@
 
 #include <kunit/test.h>
 
-#include "drm_kunit_helpers.h"
-
 struct drm_probe_helper_test_priv {
 	struct drm_device *drm;
 	struct drm_connector connector;
diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.h b/include/drm/drm_kunit_helpers.h
similarity index 100%
rename from drivers/gpu/drm/tests/drm_kunit_helpers.h
rename to include/drm/drm_kunit_helpers.h

-- 
b4 0.10.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
