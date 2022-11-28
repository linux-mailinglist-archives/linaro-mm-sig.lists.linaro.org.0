Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A423263ABDA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 16:01:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B59013EE14
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:01:31 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id D1E5A3EE32
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:57:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="j 272ltK";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="A 5RteGb";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.west.internal (Postfix) with ESMTP id F32AF2B05E69;
	Mon, 28 Nov 2022 09:57:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 28 Nov 2022 09:57:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647472; x=
	1669654672; bh=ALCpw0tX2T5BpWRxRBPWpY1UKtTqJKMoiBeHHzVHve8=; b=j
	272ltKBO63MLYAt10TM7Nn0HpVZhGJCu6CPaoG+fn0Z6Is641l6k0IBxvpR3cDMv
	33sW5XIAjygyycgPzU8Y57dHh5mXUUnQruekO4kJWFeg/OJxN+FUWBQ8IykCOqep
	n+ElTKJQ2lm1Y63YtZ/lJFb3Q40ejBmPgNDQMR/nqFjP4lztimSZpLXDhPSy50kW
	UCOD8elwhfypxtUj5O+kYvn27TurQptwMb6ejmmgQO/MDTk2XL5nwO+WVkHmWpox
	nROVUCKjcRVe4EUpSAEAn8Kw/6odnUiaTEFj8Go3xDr2l5lRbaCKk3MLvHIOzIL5
	uEkPd/di0NZBeDMWlfJqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647472; x=
	1669654672; bh=ALCpw0tX2T5BpWRxRBPWpY1UKtTqJKMoiBeHHzVHve8=; b=A
	5RteGbs9BDCr7P8lJwiYnfMKWX0Jt9nC5/I738aAM72M8LhV3FUIEVxELDDUrCFB
	SVbs4fTHYRtoN5ID0ZEqUNireqgbENT465SEvhTRF22/E1rDdwrojTqUbPxII7eo
	wP4YjAvNpbJl08J8m4ZXK/LB0YlNAx62MsYMIGHQ6vj9tgOflt5oncqatLdza3Op
	2CtPpiwdMHoMaR2rh1ze+Zrn5Ga6BBOIlFU3znGwqtYugJKgzuzT0nUh4nQ8pmWG
	7BSL1F/uU+UPkX1yaMLGef20gFB7T/qqmI1a0oe6KTZqRwnGu8e1Zr4CUIfluwaz
	xYQOx8sJZ0RWHSrEKJInw==
X-ME-Sender: <xms:b8yEYwU9B9tT7-7jbPPs-uVhOdfFYm4mE0R6n-_expfZThqRwvtwzg>
    <xme:b8yEY0mVeaFJDneAw857C5ng_ZOGQ_CpF7MtawGhyxv8MtOrchaUskEDSZWjZgXSE
    jWjNSLKQ7l2asF_rQs>
X-ME-Received: <xmr:b8yEY0Z-kOEz-sN_XgoVj_I0P2HPKYKQ5eAW-ga5NaWLLkUY0Tpv3j8Lx_IvFlHAE9iBKhz3fQYYn3uGF8Mcz703fRZcxVqfSdMQGVYM7kPM-g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:b8yEY_UTZD1skQ3uT3n6OyGUYhDJU6Ikplhc73mV-TPK3CrqbJvz1A>
    <xmx:b8yEY6lhqiUEckw4PB9I3BwoSckF1CP_FlnxQX67Y8xtNZrCx92uKA>
    <xmx:b8yEY0cH_DP1n85l8Plx_S5U7ANsUlgSD3xKn705liQ2FJYsGgMN0g>
    <xmx:cMyEY9Helzx8Z8Z61YMcpObN3En-oD9deIy4NmXQWD5CmHPloUHmD9dxnXc>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:57:50 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:42 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-13-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2334; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=B/iFxdgq+IghrpDSUPgXqZo9+No8IkiLg57IZCE6I2Y=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp8s+CnY+e371eIrQnQrJKLugpvPR339eOJP3aJOYVXN9
 Rtf3jlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEyk7BrD/xpTXvNvbqvu/n3x6WqgxE
 Hx+M7Kc22Od/+4rf4WItdrZ8zwz1J94ZrPjTFX7O+vnDcn0vHn2XCZroBNAizuH1lW6O97wAsA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: D1E5A3EE32
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,messagingengine.com:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[64.147.123.26:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: J2UDV5VZGVPDOKE4D4NNAIIRPOEF4JF2
X-Message-ID-Hash: J2UDV5VZGVPDOKE4D4NNAIIRPOEF4JF2
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 13/17] drm/vc4: crtc: Make encoder lookup helper public
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J2UDV5VZGVPDOKE4D4NNAIIRPOEF4JF2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We'll need a function that looks up an encoder by its vc4_encoder_type.
Such a function is already present in the CRTC code, so let's make it
public so that we can reuse it in the unit tests.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 17 +----------------
 drivers/gpu/drm/vc4/vc4_drv.h  | 16 ++++++++++++++++
 2 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 7a2c54efecb0..59e473059fa2 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -486,21 +486,6 @@ static int vc4_crtc_disable(struct drm_crtc *crtc,
 	return 0;
 }
 
-static struct drm_encoder *vc4_crtc_get_encoder_by_type(struct drm_crtc *crtc,
-							enum vc4_encoder_type type)
-{
-	struct drm_encoder *encoder;
-
-	drm_for_each_encoder(encoder, crtc->dev) {
-		struct vc4_encoder *vc4_encoder = to_vc4_encoder(encoder);
-
-		if (vc4_encoder->type == type)
-			return encoder;
-	}
-
-	return NULL;
-}
-
 int vc4_crtc_disable_at_boot(struct drm_crtc *crtc)
 {
 	struct drm_device *drm = crtc->dev;
@@ -536,7 +521,7 @@ int vc4_crtc_disable_at_boot(struct drm_crtc *crtc)
 
 	pv_data = vc4_crtc_to_vc4_pv_data(vc4_crtc);
 	encoder_type = pv_data->encoder_types[encoder_sel];
-	encoder = vc4_crtc_get_encoder_by_type(crtc, encoder_type);
+	encoder = vc4_find_encoder_by_type(drm, encoder_type);
 	if (WARN_ON(!encoder))
 		return 0;
 
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index cd2002fff115..54352db48476 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -495,6 +495,22 @@ to_vc4_encoder(const struct drm_encoder *encoder)
 	return container_of(encoder, struct vc4_encoder, base);
 }
 
+static inline
+struct drm_encoder *vc4_find_encoder_by_type(struct drm_device *drm,
+					     enum vc4_encoder_type type)
+{
+	struct drm_encoder *encoder;
+
+	drm_for_each_encoder(encoder, drm) {
+		struct vc4_encoder *vc4_encoder = to_vc4_encoder(encoder);
+
+		if (vc4_encoder->type == type)
+			return encoder;
+	}
+
+	return NULL;
+}
+
 struct vc4_crtc_data {
 	const char *name;
 

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
