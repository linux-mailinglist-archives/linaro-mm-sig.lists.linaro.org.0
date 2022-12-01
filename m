Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6F63F3AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 16:21:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91F403F457
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 15:21:51 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id BA16A3F441
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 15:15:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="K C7BM25";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="l DisUi/";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 9F1D158026A;
	Thu,  1 Dec 2022 10:15:28 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 01 Dec 2022 10:15:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669907728; x=
	1669914928; bh=NaCw9Fr6pSpkzjRoXsdCfXuua8dhqN7Ciz6QGBhxAzM=; b=K
	C7BM25kRsiydqse/CE3BYvHlPRO8RaOTXOjDLZg5F6XtGWTfuZXgETTtsU6W2gws
	ZCmRvQIyUzbT30fn0KZPHzzP1L5QzMoeQyPn8YmnJEDccB8Dr9YjVKxYr9aFhzyY
	fC/ekarNJAc9Yrsd98lyLwmCYGQCfpn9kYRuuPCxzZzv42AaBFDUec0LoDs5gobs
	CdsPHa0pmfXHc0yLOpIOJy6PfUImqb7kuaQfugVn5SmRqa77vZCP4HsA3IuiWQMZ
	ULQZicTigK4B3lW75H0LMC0U2hXKjYkwhnmEW+0RUFGE92Ib7c3zt06HlNBxNSv6
	AR3dsvTSfQe6+9KeG3Aew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669907728; x=
	1669914928; bh=NaCw9Fr6pSpkzjRoXsdCfXuua8dhqN7Ciz6QGBhxAzM=; b=l
	DisUi/Q0FoYcpz9VbhxuEPW5FPbMeqt5Bb+y1N0ysKwkWj7i82GAHQrHqJt5HYcR
	xPa5NOqJxRNe+8prB26u7ZSYEuAcN+tFEOwdYGTgec1tUSKE7V8Q2Cgwr7y4tJMY
	MwUQZ8zxzDkqoI3tLWdpIIw+TP+iZFwoCaqhCbziILc3HcTf+9WoEEE3mA4D8boS
	NVQx947qMvFoW8z2LoQTGDpYuOyEdM6sNmkbv8STAOP2q01t02ZxyKDe3eaQmudu
	iafwsx157HkvfHrL9bz3vBQme02DEGeSzhZ1NnXbbd0U98JeaHrrjinjCrFJaTbe
	HrgK1AR8dhcdvi0fsnWiQ==
X-ME-Sender: <xms:EMWIY3AtGE-CECK0-0WZtPV-bKHMaoV468yTLHrzTBPSlHy4EZb98g>
    <xme:EMWIY9gUVLGiBVPCFO_NZzc3F9NvXcOlPzk7dAH-SOPG2UVCN8NE0u9U5xQOYef7f
    QYXWOVb_0fJpClRoHA>
X-ME-Received: <xmr:EMWIYylIB4pa8tQVaWPYJtiNrwUvJk3829rzuRCSfkxzOjyPnbG4DLzfHSEfMR7a16AAH9Ru9qCfN_YmFYIV9bZbUYMkoWGods-iZ8GKivD-rw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:EMWIY5z7najSmLDw6hAq6u28AZ2YVURNXWB0Namiacs9EkYJ1sHdVw>
    <xmx:EMWIY8QNZjOxq1Yj6uWj2ICDLPHqbAKV2D50KDpJhcp6pynciCui2A>
    <xmx:EMWIY8aQaLyqqvaM0_PDBUzNxG5XYA66HJh20XBhZ5exfJ_OgQ5e9Q>
    <xmx:EMWIY0zYjqn9jdZwNKEScpBVCnmkYhEecAnoSIw3wxuuvBBD2exjMA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 10:15:27 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 01 Dec 2022 16:11:51 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v3-20-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1141; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=bocV9VlxTxUPDdVQN4VBYfcx8Ovy2f31hGxs9yT/h2s=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMkdRzRuhj5J6g1Ybdd24ljFtOZU/pUnpOOMyntOSb+1NT4x
 4RJTRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACZiM53hf6SAdEjDnxO2HEH+d3K+XW
 4PuqPs9Mo3VCBZkzvin8zjOIb/Nb7Tn5i/4F3q923OPTXB6z3rZ5txvZupv7HE7f1Cxr1hPAA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: BA16A3F441
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new4-smtp.messagingengine.com:rdns,new4-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: P5Q5JH4RQOIWBIVGY355FVPLWRXCK5VX
X-Message-ID-Hash: P5Q5JH4RQOIWBIVGY355FVPLWRXCK5VX
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-media@vger.kernel.org, David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, kunit-dev@googlegroups.com, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 20/20] Documentation: gpu: vc4: Add KUnit Tests Section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P5Q5JH4RQOIWBIVGY355FVPLWRXCK5VX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Now that we have VC4-specific tests in place, let's document them
properly.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/gpu/vc4.rst | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/gpu/vc4.rst b/Documentation/gpu/vc4.rst
index 5df1d98b9544..a2375f1584e6 100644
--- a/Documentation/gpu/vc4.rst
+++ b/Documentation/gpu/vc4.rst
@@ -54,6 +54,22 @@ VEC (Composite TV out) encoder
 .. kernel-doc:: drivers/gpu/drm/vc4/vc4_vec.c
    :doc: VC4 SDTV module
 
+KUnit Tests
+===========
+
+The VC4 Driver uses KUnit to perform driver-specific unit and
+integration tests.
+
+These tests are using a mock driver and can be ran using the
+command::
+	./tools/testing/kunit/kunit.py run \
+		--kunitconfig=drivers/gpu/drm/vc4/tests/.kunitconfig \
+		--cross_compile aarch64-linux-gnu- --arch arm64
+
+Parts of the driver that are currently covered by tests are:
+ * The HVS to PixelValve dynamic FIFO assignment, for the BCM2835-7
+   and BCM2711.
+
 Memory Management and 3D Command Submission
 ===========================================
 

-- 
b4 0.10.1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
