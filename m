Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4852063F380
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:16:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 578873F44B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:16:14 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 6344F3F30D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:14:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="J Ehex2J";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="H d8uMRx";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.nyi.internal (Postfix) with ESMTP id 474735803A1;
	Thu,  1 Dec 2022 10:14:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Thu, 01 Dec 2022 10:14:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907690; x=
	1669914890; bh=bJIvvHiLeABH8d8wIBGmnmY9ZtpGn7hdSaZpEfkpmRU=; b=J
	Ehex2J9NCT+Hh8Z7M5O13TcFk9ckx3mKhIPdPb7FgrXwoydogfws3pL0UMZg2GnQ
	TsfCp8i5PU1dXAXSWtjdes/Lwlt3p+pkURgnYs0IeAYdrIg3ANwnVfGqehxIghrm
	oDrFCkL+J108nd52yQkC2wzLxoXE8ST6SIzXbO9eICeHlZM/Ad6rkcp5KE+wEZll
	1NECwHqpeDFb004UskNpfEho/lJ7gHxhdD5fcDpJI6dkmxj77QZAstcqhC3L3jgZ
	ZJ3mspKHblZPw4JI+WFMF2MiSud8KaHwFx33RA0sd0Lvmp4+WjyYBvsy0Vjnx7QM
	fE6M6W0KpAzAISY+G8Myg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907690; x=
	1669914890; bh=bJIvvHiLeABH8d8wIBGmnmY9ZtpGn7hdSaZpEfkpmRU=; b=H
	d8uMRx8DQ3JXMdF6mNq0o5g/ntNh326u++JgvWQN8OtELhVivPBA0VqJI3hJ/o4u
	B2BzytMd2FVm+58bTeFQSaxqH8R8sSGygxL6FZO9wzrOggcf5QJGhzD8CREiytbK
	QTEciytBYtg8Qy3qTPZLB0fa7mioBo6C6PWrgwGRRrfuheODw1BLSlmXY6NA3Kq0
	+EzzpzoyFiUErAj56WhkNEILREaMwbRzOzSnzNLekvWk7J0xquKOUYe1uccyDFsg
	HGG4nU9YpwAKKLjr/9dWhNsW7Foeu2YePC2Cdzyt+1igFTn5DVVC0pstjakqNthf
	iyqdRQUqxAENNTnoyYjHA==
X-ME-Sender: <xms:6sSIY7gD9LQz9OK27KNSQPQXoswyRHX3F6iUlA0ezIA_WiGYGmhoNQ>
    <xme:6sSIY4AB04xaZWmkgf4s7_8iAd18_sTZLXGjT2-yZPKFYM7uKUVgFFOQjTPto7qlj
    oG80oNA-qcOYodLMdk>
X-ME-Received: <xmr:6sSIY7H7kOJV5qq7We8GxlbQhKXLd_jND6yJRDUnWYETfbgac5zLV8Fxtqw0LGRPIVQuIcOFhpgETo0tiSsboYLZERmpXQtO7ALLq_KL78URsQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6sSIY4Sc64PIl_c8yOCwGyUOzw_S9ku_wzYmWdqCESdvmsvoXdxV1A>
    <xmx:6sSIY4wA5Nd_og3r5OTm7IinMzHBQNOHvVIUwmQcmbJs6cAV0MF94w>
    <xmx:6sSIY-6fiC4j55qJCsnhXU5Qy747t8eYeDm64CdaWFNpSSMeweYp8w>
    <xmx:6sSIY1TZI_ZVsKKh9R055MPmzWjdUyqnzra-ILzTabdCtRUBJw15Kg>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:14:49 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:35 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v3-4-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1023; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=eDJIRO+Lw8Q0MMEtybR0/9DGh9xo+z4qDJy/dJwWLNo=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzROHvN0fmEZbve/XtBt1bXGxXI2Ss8NO77H7XoiZV44
 pcGmo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABNpjGL4X/HTcJ54+TsLjdvJxtnr1p
 3/IDdBhq9R/qCY9m6zjKMv8xn+l2/7lqTksuTKhIh7GjoyL7RW5Qq+Olg8UV2dgeHx2bVXWQE=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 6344F3F30D
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WNPXJ5BBSUYQ4YYVELQPGWYE6PJO4KN4
X-Message-ID-Hash: WNPXJ5BBSUYQ4YYVELQPGWYE6PJO4KN4
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 04/20] drm/tests: helpers: Switch to EXPORT_SYMBOL_GPL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WNPXJ5BBSUYQ4YYVELQPGWYE6PJO4KN4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

drm_kunit_device_init() among other things will allocate a device and
wrap around root_device_register. This function is exported with
EXPORT_SYMBOL_GPL, so we can't really change the license.

Fixes: 199557fab925 ("drm/tests: helpers: Add missing export")
Suggested-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 9ed3cfc2ac03..4fe131141718 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -82,7 +82,7 @@ struct drm_device *drm_kunit_device_init(struct kunit *test, u32 features, char
 
 	return drm;
 }
-EXPORT_SYMBOL(drm_kunit_device_init);
+EXPORT_SYMBOL_GPL(drm_kunit_device_init);
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");

-- 
b4 0.10.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
