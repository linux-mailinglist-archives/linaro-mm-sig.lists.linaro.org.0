Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F093763ABD6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 16:00:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03C483EECC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:00:47 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id 195863EF33
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:57:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="F v+iH9J";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="w LWYvp0";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id 41C3B2B05E69;
	Mon, 28 Nov 2022 09:57:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Nov 2022 09:57:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647459; x=
	1669654659; bh=nwkXJOIEr4234kWVYt7EEM9GP5U1EsRNZUcPzK0CrkM=; b=F
	v+iH9J8gH48LPpdFepRnEG/H9hvPh2JvygdM56Lm3sRTwLuV3wO6DdS5ZHtyDZaJ
	B/41wWw7q1Zm8ba4GwDdTW0t3ZvW5eswkiUMwDlxg4pwkK+NcCbRe+PWUuDut0cw
	nRjjDCMadtmTTG2xczlO+oEsvqITnEqYS2czKsXbKNyWeonIJ/cI1l14mvbn1P1B
	zeamkojiAFaAfu0WklLss7yzqFxVLgF544eWs4i8tDJluM97J7fuzovcxr6773wF
	zQmQcFFyNy2kwjXIraxXZTKm0qQsFniHtQv0lcEUHZPGrbDa3SFjvGVcARD4pFcO
	5ga2dMNcbTCcnCERVpuXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647459; x=
	1669654659; bh=nwkXJOIEr4234kWVYt7EEM9GP5U1EsRNZUcPzK0CrkM=; b=w
	LWYvp0lupPcPaFwmJqYbcOEnBGarfmSCvc/Jhob/KWlfEqFGU5Lsf1gvqUCd1Xpx
	IZSS2SjuoC1DFkdaNgUpojdIXsYgXLiRZOF6it7aKeWwLaGh7xZDIH13GmZBrjzu
	5yEqLYgwO7Mz57tkwHY+jWOsAswCQomcQ31MR7JgUPJnu15GQYlisN7Dg0McYuv6
	o4Hjx5cz7nixrZgduoqMFnPI++Jr5PmZWcPGk2K/mBDYUpoP/aPscDt5TN+nJrbw
	WZD/LNYwHm/ACg2nazJgQAf6PAtgBHF2psqXuLNb/1eqkIp4iWTe2BntCQaow6Gc
	Tdvwp8sL21RPszx2AswNQ==
X-ME-Sender: <xms:Y8yEY_qGS3aFosOwG_u8Uq8gH2R5TaE-qBsl8oSOQjRnd0-bZXiR8Q>
    <xme:Y8yEY5ow27sP4IEueXOgdhUHmdRZiCENsKfIxMPKa3-gGxEoH1oXAkAFS0vn4RgPz
    wILT22loNvz7iQAr6k>
X-ME-Received: <xmr:Y8yEY8NlVjs5xZ2Qg_GQv9DL_PivCLJvpIcYfElyRovyaWEIeyWH1S0A2z2jioi_hJBSPgAo-ov8pkKJ_obDtTPEtVo9Ly3Pvvr8I6T0qB9Jqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Y8yEYy7y3RGK7NWTMDXHXiXkBe0ee_nbQ0HLHN2gHmAwddowpZSKTQ>
    <xmx:Y8yEY-41wWUpoIBqGo4ipI9F624k_OA1SK0jgztvDNiywoqQf0s4nA>
    <xmx:Y8yEY6hmBoZRW15COoeo6bMCqS0rQqAjLh4wAQ1Zv9WCi3HxuqtWyg>
    <xmx:Y8yEYzbtU6ARUrtUJp39qKkE3cQJGgojFweYj5DsHg6jBvn9Di1gqRqTRn8>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:57:38 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:40 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-11-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=3534; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=pJKRYNepa8dk4BTaY5U5nlonxbfgkVNLNF3TRFqQE+w=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp8sOTX349OMrucMqS25P+bD961GGdrFAx9ccdtZvU1aK
 tp7Y1VHKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJJPUz/C+5UHlszlxxUXGnTsGOq9
 6iEZrVn+M+uDbk3Xugu71+xSFGhkb5VWuCnyQt3sI4jde6/NXLL7GnC2Q3nn/4PJt3zbHKaTwA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 195863EF33
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.26:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,messagingengine.com:dkim,cerno.tech:email,cerno.tech:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,messagingengine.com:dkim,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[64.147.123.26:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6YSSXBXTXTRBI6E367INFVSCOUUFR7HG
X-Message-ID-Hash: 6YSSXBXTXTRBI6E367INFVSCOUUFR7HG
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 11/17] drm/vc4: Move HVS state to main header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6YSSXBXTXTRBI6E367INFVSCOUUFR7HG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In order to introduce unit tests for the HVS state computation, we'll
need access to the vc4_hvs_state struct definition and its associated
helpers.

Let's move them in our driver header.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 23 +++++++++++++++++++++++
 drivers/gpu/drm/vc4/vc4_kms.c | 25 +++----------------------
 2 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 6af615c2eb65..051c2e3b6d43 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -355,6 +355,29 @@ struct vc4_hvs {
 	bool vc5_hdmi_enable_4096by2160;
 };
 
+#define HVS_NUM_CHANNELS 3
+
+struct vc4_hvs_state {
+	struct drm_private_state base;
+	unsigned long core_clock_rate;
+
+	struct {
+		unsigned in_use: 1;
+		unsigned long fifo_load;
+		struct drm_crtc_commit *pending_commit;
+	} fifo_state[HVS_NUM_CHANNELS];
+};
+
+static inline struct vc4_hvs_state *
+to_vc4_hvs_state(const struct drm_private_state *priv)
+{
+	return container_of(priv, struct vc4_hvs_state, base);
+}
+
+struct vc4_hvs_state *vc4_hvs_get_global_state(struct drm_atomic_state *state);
+struct vc4_hvs_state *vc4_hvs_get_old_global_state(const struct drm_atomic_state *state);
+struct vc4_hvs_state *vc4_hvs_get_new_global_state(const struct drm_atomic_state *state);
+
 struct vc4_plane {
 	struct drm_plane base;
 };
diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 7282545c54a1..53d9f30460cf 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -25,8 +25,6 @@
 #include "vc4_drv.h"
 #include "vc4_regs.h"
 
-#define HVS_NUM_CHANNELS 3
-
 struct vc4_ctm_state {
 	struct drm_private_state base;
 	struct drm_color_ctm *ctm;
@@ -39,23 +37,6 @@ to_vc4_ctm_state(const struct drm_private_state *priv)
 	return container_of(priv, struct vc4_ctm_state, base);
 }
 
-struct vc4_hvs_state {
-	struct drm_private_state base;
-	unsigned long core_clock_rate;
-
-	struct {
-		unsigned in_use: 1;
-		unsigned long fifo_load;
-		struct drm_crtc_commit *pending_commit;
-	} fifo_state[HVS_NUM_CHANNELS];
-};
-
-static struct vc4_hvs_state *
-to_vc4_hvs_state(const struct drm_private_state *priv)
-{
-	return container_of(priv, struct vc4_hvs_state, base);
-}
-
 struct vc4_load_tracker_state {
 	struct drm_private_state base;
 	u64 hvs_load;
@@ -191,7 +172,7 @@ vc4_ctm_commit(struct vc4_dev *vc4, struct drm_atomic_state *state)
 		  VC4_SET_FIELD(ctm_state->fifo, SCALER_OLEDOFFS_DISPFIFO));
 }
 
-static struct vc4_hvs_state *
+struct vc4_hvs_state *
 vc4_hvs_get_new_global_state(const struct drm_atomic_state *state)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(state->dev);
@@ -204,7 +185,7 @@ vc4_hvs_get_new_global_state(const struct drm_atomic_state *state)
 	return to_vc4_hvs_state(priv_state);
 }
 
-static struct vc4_hvs_state *
+struct vc4_hvs_state *
 vc4_hvs_get_old_global_state(const struct drm_atomic_state *state)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(state->dev);
@@ -217,7 +198,7 @@ vc4_hvs_get_old_global_state(const struct drm_atomic_state *state)
 	return to_vc4_hvs_state(priv_state);
 }
 
-static struct vc4_hvs_state *
+struct vc4_hvs_state *
 vc4_hvs_get_global_state(struct drm_atomic_state *state)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(state->dev);

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
