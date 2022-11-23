Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 447F563A154
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:37:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 516DC3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:37:56 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id D7FE53ED34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:29:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="P vjbuFi";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="q A7qSEq";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.west.internal (Postfix) with ESMTP id 9A0482B069B4;
	Wed, 23 Nov 2022 10:29:30 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 23 Nov 2022 10:29:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669217370; x=
	1669224570; bh=ENPvCjbTKQNp0IxAJyu8Ic80LxswzXFuDpL3snnLP5U=; b=P
	vjbuFil6xuVjdBFy0l8Op5fX4tUYUGLqs5wspLWQWNShqAOXkOqu6cXuq1QzIR+i
	uN3XgunpPgeBmfZQ0c9HjqlwdlVaaSXNGtAR/M8NLwE7yDRrA0HurQZ1/uCwTrkq
	fgfYHJ1JBsIihjB6Hd7GwoB/moTruxZYlLbKyZYyyF7wx4z9E30W83o+AIfCP0hj
	LGUkDKqubt+rKxMaynredE4z0FafPzbbjoIw3YCLTRUyWsOPTEUFCPx+dfRKrH75
	0IkJkvj33ZZW46mvNUSKxghLjc74QqmOKXxZ2q6fv1MjK6zn7QftI/AJvZlizyYz
	l6jFx8t5GHRJj6zOe9Usw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669217370; x=
	1669224570; bh=ENPvCjbTKQNp0IxAJyu8Ic80LxswzXFuDpL3snnLP5U=; b=q
	A7qSEqWowB+ar9q/SlgN/AVqsKQ7pQZb/ZEObDLBEd98nSBkwm5b5ITgHir1zcyz
	TsnGf3TEuefAmPFmDLMGrIpefMel0HB0vNSkNGLBEzvVoRxmK2JsM1Qn2lfJub21
	A6VfE/A9oGJSuTS5tKIz2OWO6xEVsWwzpH6pRIXziXqVINkGa9YqTgReWWHraKKY
	32Uv2SKIuZZoVMvpXA4LQibdIbhE8mGEZ4blybg72EqSW5CsjJfWCM8pA0bNvpEM
	f4PHu9ivLjazYCNouxKcZnXbAbWx0RyspnaLhZWCDvYGn+1nGPDvGXIkQ+sFi72F
	Hm1kJBt5iOxKlZC8oZUeg==
X-ME-Sender: <xms:Wjx-YzAQ33H6GLAH4SIuqXgWaxXtbhVo1VZbij8lW6jUdP2Hgwyufg>
    <xme:Wjx-Y5ggu7ia7UXPoKPH8HbAgMmovhH6JGnSKUUatw8CTXKmYDbxZ9KO6nkuotiQx
    Hxs-QOpP-l33Hlaguk>
X-ME-Received: <xmr:Wjx-Y-nIdZqwmjHkSVBYJLyDwtFSw81tDYSkToo0KnQQnP1KgGDv5yR5IVF_pZahmpr5JX1t0sRVq8c7iJED8lmUJwUEVJTbt7kkCtwPiMGtCQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Wjx-Y1xNVyA2ejKH_gWt7NFav3_ajShd6r_F7dk8CzSlLHVUfaJv2Q>
    <xmx:Wjx-Y4RcwIlIMl1Rj1LIFAHBVQXgTYog3qAsVHwa5t_2PPpa9O91eQ>
    <xmx:Wjx-Y4aYnLxTgVeCRxn1QVsWEX-rxKlT-wuDlu_8KH0AnKUsVRRyHg>
    <xmx:Wjx-Y4xzzwhUIzfA7YVT-uwPnXRWLWDXtHH_gQASy15P6csOOY90aihipdc>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:29:29 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:25:53 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v1-11-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=2535; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=2lDLKdNqAKm3AKWrM9mx2AZvRSi4JD6qDtCu6O6xiPE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11tUcx06sczV4znbmsM+TiUbi5qdWK5vP8+Rpnnt044wf
 sS1TO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRhTYM/0N/3XvUMLOZ3/vMkTf18y
 +0BMd6qDHnCvqYzqzJeTqvcDfDb3aNY/dDQjdw1U6KnKHcGj015uGpzOSPfKflKzT6ri+5zgsA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: D7FE53ED34
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
Message-ID-Hash: LRB4WLY3X4GSFHTIWPW2MU6EOOWNZFXF
X-Message-ID-Hash: LRB4WLY3X4GSFHTIWPW2MU6EOOWNZFXF
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:52 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/24] drm/vc4: Constify container_of wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LRB4WLY3X4GSFHTIWPW2MU6EOOWNZFXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

None of our wrappers around container_of to access our objects from the
DRM object pointer actually modify the latter.

Let's make them const.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 515228682e8e..3ff56c1821ef 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -233,7 +233,7 @@ struct vc4_dev {
 };
 
 static inline struct vc4_dev *
-to_vc4_dev(struct drm_device *dev)
+to_vc4_dev(const struct drm_device *dev)
 {
 	return container_of(dev, struct vc4_dev, base);
 }
@@ -286,7 +286,7 @@ struct vc4_bo {
 };
 
 static inline struct vc4_bo *
-to_vc4_bo(struct drm_gem_object *bo)
+to_vc4_bo(const struct drm_gem_object *bo)
 {
 	return container_of(to_drm_gem_dma_obj(bo), struct vc4_bo, base);
 }
@@ -299,7 +299,7 @@ struct vc4_fence {
 };
 
 static inline struct vc4_fence *
-to_vc4_fence(struct dma_fence *fence)
+to_vc4_fence(const struct dma_fence *fence)
 {
 	return container_of(fence, struct vc4_fence, base);
 }
@@ -360,7 +360,7 @@ struct vc4_plane {
 };
 
 static inline struct vc4_plane *
-to_vc4_plane(struct drm_plane *plane)
+to_vc4_plane(const struct drm_plane *plane)
 {
 	return container_of(plane, struct vc4_plane, base);
 }
@@ -436,7 +436,7 @@ struct vc4_plane_state {
 };
 
 static inline struct vc4_plane_state *
-to_vc4_plane_state(struct drm_plane_state *state)
+to_vc4_plane_state(const struct drm_plane_state *state)
 {
 	return container_of(state, struct vc4_plane_state, base);
 }
@@ -466,7 +466,7 @@ struct vc4_encoder {
 };
 
 static inline struct vc4_encoder *
-to_vc4_encoder(struct drm_encoder *encoder)
+to_vc4_encoder(const struct drm_encoder *encoder)
 {
 	return container_of(encoder, struct vc4_encoder, base);
 }
@@ -539,7 +539,7 @@ struct vc4_crtc {
 };
 
 static inline struct vc4_crtc *
-to_vc4_crtc(struct drm_crtc *crtc)
+to_vc4_crtc(const struct drm_crtc *crtc)
 {
 	return container_of(crtc, struct vc4_crtc, base);
 }
@@ -584,7 +584,7 @@ struct vc4_crtc_state {
 #define VC4_HVS_CHANNEL_DISABLED ((unsigned int)-1)
 
 static inline struct vc4_crtc_state *
-to_vc4_crtc_state(struct drm_crtc_state *crtc_state)
+to_vc4_crtc_state(const struct drm_crtc_state *crtc_state)
 {
 	return container_of(crtc_state, struct vc4_crtc_state, base);
 }

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
