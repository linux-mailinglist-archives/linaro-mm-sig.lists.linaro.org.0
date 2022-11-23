Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DAA63A15D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:39:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C94013EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:39:42 +0000 (UTC)
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com [64.147.123.27])
	by lists.linaro.org (Postfix) with ESMTPS id 3FC163EDA2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:29:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="I oIxyIj";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="t OXWuwr";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.27 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.west.internal (Postfix) with ESMTP id F3FA12B06A7A;
	Wed, 23 Nov 2022 10:29:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 23 Nov 2022 10:29:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669217395; x=
	1669224595; bh=xa2Xr2XPoRVUUkfnytxj0Crl7ldzQeXde8zWUWNPEc8=; b=I
	oIxyIj72uCvm/XjjJENT3wqIDO6NxuUF4Fz81i2dPW1PJLibP2AdgKufei1FMdpu
	5gcyFC/q9+abuEkgOn/AfrjsEN1nJf8JpSuxTeBQ+eAa+HCiJkJY72z8MhadfDHn
	nzUzM+EGqYEzeHjDxqtMdJVxr5VzBKd6A8pI7+hD3OJDJCnuPbeM4PGm130pBW9T
	I7Xt31qTJ/ias/KN37RxkLRz3epuXEmGjR/tk+LEFQ2qDvps1WoOTmJf3lWZJ+55
	/iCPQ0qNqIx510B+xgpa1lgbg7Xfqx3UbTGoQ8fsl792+T7p/m6T/DH0SGyfTJuH
	5lobAtvOfJ2XiKuXUDcwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669217395; x=
	1669224595; bh=xa2Xr2XPoRVUUkfnytxj0Crl7ldzQeXde8zWUWNPEc8=; b=t
	OXWuwrUE36xuza4nA/00BWxCwgo7A0skuCWcP5x7iNQerc0WhfihX3C9MvY54fc+
	Kfyv2bszolIZ5Wcbhg8HYPkLE2myzbXIJ1PgAHIV1bVJ4zVn+jhmqMFf6gzAVi1Q
	t4NFJgsjhgz+RQXsFiXCuxaNZPdb7ZixBRIBE6WgFVvMCHtlxofyXpU0/jYLk8bZ
	1I37nmtb6YXt4VxA4e0Q6sel4AC/L6daN1QYo82NETae+bjzkLrEg0KCP61dpxcB
	ycllPU9srbacvrxh/nTIOnl/c2afnpAeH4XazK6N7q2c3SI8f9C5Sq6gitNWq0LK
	KZplW40hF8VLzrGyq+kZw==
X-ME-Sender: <xms:czx-YwQShn4eeqEAgBQ8cqQHN6UczS133vk65w5LHEbykN8lEDDLiQ>
    <xme:czx-Y9xf664-vRcRmcpgq4BYE6Fbt1Wtfkl2LNzWtyWhzdG0-7sPq6TYaewtld_-H
    ymn-6BP9JsjUpfc4a4>
X-ME-Received: <xmr:czx-Y93QhxBdD8n8ykaeGPnQ6e6zWJz5qc6ji_hRksR-Lk8XZ1ER0yay7XyjDQNefiQBSWH1h7bgLkAjScD7c03qmlaxs-b5YerfcLCCU2XTBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedriedugdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:czx-Y0DoGYav10OrIvKlenqCdA_vyYrKvhiUDQgGM3hlLrWvM23a4w>
    <xmx:czx-Y5gn9TbtuUMo1McKrDELtZ6HOPPhEKVRe4L_LVoo34LEGSDYCQ>
    <xmx:czx-YwoI-3iBArWo0LrzH4NdbuMDJ_H2XOgLC28tDGyYZDYavjhJtw>
    <xmx:czx-YyBnc1SupCF6-1WnzqAiGzc1_o13Q4WgIeE0eRVs_DW6dM_wVxG1VUs>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Nov 2022 10:29:54 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Wed, 23 Nov 2022 16:25:58 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v1-16-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1254; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=aR4vqMsUMqYTxLScBcRnhlhUq2A/EuG6aDorDcg05no=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMl11tU63QpH/qj+5+FbXf2IYUnBZ5MOxpM/Fee/usTrN/VR
 hZFRRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACZygpOR4WLw/1nOmtv67GcvZEtzXP
 5wyXrNbPelz18+3WgtcFBL4yojw7RvWb35hwvml97aspj35jPfU//91fd3mjRYZ4kLHV6gxQUA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 3FC163EDA2
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
Message-ID-Hash: VQENB3K5HOD6CWZRZEBQ3SLHK64XOWD4
X-Message-ID-Hash: VQENB3K5HOD6CWZRZEBQ3SLHK64XOWD4
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:33:53 +0000
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 16/24] drm/vc4: txp: Initialise the CRTC before the encoder and connector
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VQENB3K5HOD6CWZRZEBQ3SLHK64XOWD4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It makes more sense to register the CRTC before the encoder and
connectors, so let's move our call around.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_txp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 0bb8e97d7891..c2a6bea6fd96 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -516,6 +516,11 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	vc4_crtc->regset.regs = txp_regs;
 	vc4_crtc->regset.nregs = ARRAY_SIZE(txp_regs);
 
+	ret = vc4_crtc_init(drm, vc4_crtc,
+			    &vc4_txp_crtc_funcs, &vc4_txp_crtc_helper_funcs);
+	if (ret)
+		return ret;
+
 	vc4_encoder = &txp->encoder;
 	txp->encoder.type = VC4_ENCODER_TYPE_TXP;
 
@@ -537,11 +542,6 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	ret = vc4_crtc_init(drm, vc4_crtc,
-			    &vc4_txp_crtc_funcs, &vc4_txp_crtc_helper_funcs);
-	if (ret)
-		return ret;
-
 	ret = devm_request_irq(dev, irq, vc4_txp_interrupt, 0,
 			       dev_name(dev), txp);
 	if (ret)

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
