Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCCC63ABB5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:57:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDCE83EE32
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 14:57:30 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id 1704F3EF17
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:56:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="D 0CLvOr";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="w wIbc55";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.west.internal (Postfix) with ESMTP id D85892B04FDA;
	Mon, 28 Nov 2022 09:56:43 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 28 Nov 2022 09:56:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647403; x=
	1669654603; bh=bR9fIsm10MS5O+pzDM9Ri2oe+3Jilb/0tnPd4bxLFgk=; b=D
	0CLvOrtBphX47ypRLkLRwWwJubLgoi0ZzUrIHRZJhINsyWDT50Cl05Dp8gXkBcNl
	4qT0DdzI1SclQhpl8z3DJHM0hT7f8gdS27A4rvzeoMQpaKzCH3AUX8UT51Y+1QFM
	aROJfbJbzG8f0bfqLP1YxcjTWk36ZYx4bovZA7Jcqi8eSsXC6K/o5/GiG/sjZ4tL
	aH8e7r9DcXSgL+8oSGWHbcXcc6MqbTL7nAHhsHR1wHJ4euvXooV5IEJG8zBmrToP
	tQu/4QWNg8QkgXOtRIj/+Zi7hc6eR5yilXxgR1KzOXo41Bd3DdOG6m2s4UUpMrB8
	DTC61vgtVSTRetfu9cVMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647403; x=
	1669654603; bh=bR9fIsm10MS5O+pzDM9Ri2oe+3Jilb/0tnPd4bxLFgk=; b=w
	wIbc55G2fID3SU+U7tVxScuIBjDMwRFCYuP3uSs3YHEv6f/THPEs/YfwqINKFVFk
	S+lcM9Y32fo9roan8YxgXTVKbn1xy2Ag2NR4lr9q7SB9SqZjL/khSdf6U15CJRDb
	+fcvQ7SgWSXci6If37zkT7dd79F+sM5+ZF7MIAO913ZVVhXHoR31BJ1ctM5VBhBI
	BeU5IVHk5QkYodpFbOxP5PZzCx0dPheMMFQvJEuhn1VOSS7oT79TXRh1G90gCfQC
	W5YqO0XilOs4BLTFtG+iUxaTB0xUwEPiP9QsDI0sNWsxg6i35e1rix0hzoyOgFUU
	qplA/X0xPdpp4PU78YZBA==
X-ME-Sender: <xms:K8yEY8ehu3jn0GxHz3kntWF_5b9fJCEM4SKPGFmuQCTWDARnZhzofg>
    <xme:K8yEY-PHpvgQpDl0fFaFos06Sy0gmjNmWvVIHiqAHCBIZ3LdGZwqwyo8I2inVQ87p
    7nsyBttiawKLwvnnEs>
X-ME-Received: <xmr:K8yEY9hlPc2y5us4ecgxhxfRu7NnG-1HBY85fmT8ofm0bCbllih9VePbnTYrwXQBK481d3Xyibz93E3MUTJSHQkTPus70i9ODzWyFkrZ0gUi1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:K8yEYx_ZpwRVNyJt6b7Xe4Ovh1rEvUrc4HnX-0vs7pO7f0J0VgwqpQ>
    <xmx:K8yEY4sQYQ88Y9nXEx2CwH5moKziM5T7qP21Z3kzqUWhb9c3Nyd-vA>
    <xmx:K8yEY4GJOwyLdGB__hFOHlLzJCIGdT8eynYfkxC4pGlxA4QHqoiLgA>
    <xmx:K8yEY_MAkq3GjNWuLbvamdcgxNcx_JUacjd8cADDxlskce6z-qXtVNfl5NM>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:56:42 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:31 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-2-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1506; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=OBe11HrZ3kVuHpwrCmupAo/u8B+NBmoTDXYW339k0v0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp0sD0i50/c/btf6Eos0PC66UcJ6C656PPpfffvokjauc
 Y8nNjhIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEykSofhx5q5NlZCEjrKH9xfzzX8mb
 iPOzxjoeKyXWaMIUsipbn8GP6HCBTPOLlj09XlyZsSp7s9e/T2sDb3IYuec2rfe8x2FnLyAAA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 1704F3EF17
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:64.147.123.26:c];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo];
	FREEMAIL_TO(0.00)[ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[cerno.tech:email,cerno.tech:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,messagingengine.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VUAI7QK3V5BQXDH6FESELZJA4K2IOWC5
X-Message-ID-Hash: VUAI7QK3V5BQXDH6FESELZJA4K2IOWC5
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 02/17] drm/tests: helpers: Document drm_kunit_device_init()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VUAI7QK3V5BQXDH6FESELZJA4K2IOWC5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Commit 44a3928324e9 ("drm/tests: Add Kunit Helpers") introduced the
drm_kunit_device_init() function but didn't document it properly. Add
that documentation.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 6600a4db3158..46a68c2fd80c 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -35,6 +35,23 @@ static void dev_free(struct kunit_resource *res)
 	root_device_unregister(dev);
 }
 
+/**
+ * drm_kunit_device_init - Allocates a mock DRM device for Kunit tests
+ * @test: The test context object
+ * @features: Mocked DRM device driver features
+ * @name: Name of the struct &device to allocate
+ *
+ * This function allocates a new struct &device, creates a struct
+ * &drm_driver and will create a struct &drm_device using both.
+ *
+ * The device and driver are tied to the @test context and will get
+ * cleaned at the end of the test. The drm_device is allocated through
+ * devm_drm_dev_alloc() and will thus be freed through a device-managed
+ * resource.
+ *
+ * Returns:
+ * A pointer to the new drm_device, or an ERR_PTR() otherwise.
+ */
 struct drm_device *drm_kunit_device_init(struct kunit *test, u32 features, char *name)
 {
 	struct kunit_dev *kdev;

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
