Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2EF63ABDB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 16:01:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC5D33EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 15:01:51 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com [64.147.123.26])
	by lists.linaro.org (Postfix) with ESMTPS id 788F03EF52
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 14:58:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="f gubKwx";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="T UkuyTC";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 64.147.123.26 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.west.internal (Postfix) with ESMTP id 95C772B05E77;
	Mon, 28 Nov 2022 09:57:59 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Nov 2022 09:58:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669647479; x=
	1669654679; bh=kCi4h++2OktpFKfkD3x9KAijsoO3R0kc8j58jJM3F4Y=; b=f
	gubKwxHblt45zDHJz+Lh4lcE4E8xMxjSUZrJzV48hfykSJaLxIcSdqyYyL5iNBnB
	G8McUGP1keZABP1KhwYoL5h+K9FY/SQvanI28cOJmbUt1TKS/+6wJ91YSNtLtcMN
	Rur3gAsBNwBRR6W+A6qyZF+Djly9x6gPGoqshI81hdjXTlTb36e377XHCjJgAS+c
	neq23rWZ0pEpzE2FFjVQTwUjI2SXylxFtJgJLOm0gHOUgXv56Sto4Q7EF6iVsQ5Y
	lS3HePS+FnVrdHxe5B2g9n0I9+ufW3Fhy5PgfpdPCh+I9/phF5OkAl4CjWPenR1P
	RDY6AEVyW3IVqJLLChKpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669647479; x=
	1669654679; bh=kCi4h++2OktpFKfkD3x9KAijsoO3R0kc8j58jJM3F4Y=; b=T
	UkuyTCXk+KSxAtUhMfePxFy9h9QZm2820fpeAZtowXi0HZBXJNA1RW4uROTU1gw5
	fqSqOXdbBUMq8P6RjzaySGTkICEy1LGPvezi/rmv21Zx01SADOIp/zc13xeteBUW
	ET5OPFVR3VQmRliwL815waQ+w+HNMlMd838AOqBN95gQVxJShrup8R7dx1HnwfCE
	IBlc4Q/VOJXsK0/JJp2bIkZicIGHM/MwjzEXVBkQxeolsemev7ky9vbUpIJnixfM
	wE/ne4sGMUaCzdzXutVga0/OUjic+zFxdb2/yin9+IQi3bFPAirz6FUvq53HMVN1
	qayUWp4waEvvWL1K9U/Ww==
X-ME-Sender: <xms:dsyEY5PHR00CyLzJQWqvRRdHv-qQnKnjOUXbg2E2WfxiwvqTymPj8w>
    <xme:dsyEY78nWCIgBKzlxi-wU0LcVqbks51pljUSfGuB4seinkfWAFCM7KQtOOLk6CKPM
    8SBj2gqhQMmlh0_Zow>
X-ME-Received: <xmr:dsyEY4TeshAcdiuMeGbhmL0axBradWXKl67tjGaCpOxd29HI-EL5M6p_8O-iVE4Uuz-wdwHRbdCgXcJbHwmVlt58MB8XgsZVrl9wlwnNPVzK_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgdejvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:dsyEY1vCpq7qcxs8RWSN1gfm-rr8BUbBnPp7An4kc8Kwb77wEs2tmA>
    <xmx:dsyEYxdHxoEBsZsh7PW3w21TouR2sasPkLhCjsj-viirS7ISr3RFCQ>
    <xmx:dsyEYx2LZWESeQcT8lb4MU6gNHMTSebw3aoSpHwNYNnFubMBE8u4LQ>
    <xmx:d8yEY__yBTcsfei_mWOa7Qvvtcv7u5JrFatIGqv6pK-PE5EBexIzjfK_fH4>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 09:57:57 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 28 Nov 2022 15:53:43 +0100
MIME-Version: 1.0
Message-Id: <20221123-rpi-kunit-tests-v2-14-efe5ed518b63@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
In-Reply-To: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.11.0-dev-d416f
X-Developer-Signature: v=1; a=openpgp-sha256; l=4882; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=K3fPT2Wx30DSyf7JggJ/P79AlwfAolsjp39FdXf/CRY=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMktp8ueX9F78FPi45Fsj7kigc9vv3H1erGM7cH/Qx/ZJ5x7
 MjVlcUcpC4MYF4OsmCJLjLD5krhTs153svHNg5nDygQyhIGLUwAmct6PkWGJ8n9GwwWTfPkWXFwol/
 d3knRGj+n8OQG1p2+5Mq9bMZ+b4b+zrbZ08lU9460fWaeoBbYdse64uPbHzIstNZmzpkz/YMQIAA==
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 788F03EF52
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:29838, ipnet:64.147.123.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[messagingengine.com:dkim,wnew1-smtp.messagingengine.com:rdns,wnew1-smtp.messagingengine.com:helo,cerno.tech:email,cerno.tech:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[64.147.123.26:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HKIXEIZDCHGPNUTDCEJNY26YIN5RGIKV
X-Message-ID-Hash: HKIXEIZDCHGPNUTDCEJNY26YIN5RGIKV
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Maxime Ripard <maxime@cerno.tech>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 14/17] drm/vc4: hvs: Provide a function to initialize the HVS structure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HKIXEIZDCHGPNUTDCEJNY26YIN5RGIKV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We'll need to initialize the HVS structure without a backing device to
create a mock we'll use for testing.

Split the structure initialization part into a separate function.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h |  1 +
 drivers/gpu/drm/vc4/vc4_hvs.c | 81 +++++++++++++++++++++++++------------------
 2 files changed, 48 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 54352db48476..e0be7a81a24a 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -1009,6 +1009,7 @@ void vc4_irq_reset(struct drm_device *dev);
 
 /* vc4_hvs.c */
 extern struct platform_driver vc4_hvs_driver;
+struct vc4_hvs *__vc4_hvs_alloc(struct vc4_dev *vc4, struct platform_device *pdev);
 void vc4_hvs_stop_channel(struct vc4_hvs *hvs, unsigned int output);
 int vc4_hvs_get_fifo_from_output(struct vc4_hvs *hvs, unsigned int output);
 u8 vc4_hvs_get_fifo_frame_count(struct vc4_hvs *hvs, unsigned int fifo);
diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index c4453a5ae163..94c29f8547bb 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -768,22 +768,60 @@ int vc4_hvs_debugfs_init(struct drm_minor *minor)
 	return 0;
 }
 
-static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
+struct vc4_hvs *__vc4_hvs_alloc(struct vc4_dev *vc4, struct platform_device *pdev)
 {
-	struct platform_device *pdev = to_platform_device(dev);
-	struct drm_device *drm = dev_get_drvdata(master);
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
-	struct vc4_hvs *hvs = NULL;
-	int ret;
-	u32 dispctrl;
-	u32 reg;
+	struct drm_device *drm = &vc4->base;
+	struct vc4_hvs *hvs;
 
 	hvs = drmm_kzalloc(drm, sizeof(*hvs), GFP_KERNEL);
 	if (!hvs)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
+
 	hvs->vc4 = vc4;
 	hvs->pdev = pdev;
 
+	spin_lock_init(&hvs->mm_lock);
+
+	/* Set up the HVS display list memory manager.  We never
+	 * overwrite the setup from the bootloader (just 128b out of
+	 * our 16K), since we don't want to scramble the screen when
+	 * transitioning from the firmware's boot setup to runtime.
+	 */
+	drm_mm_init(&hvs->dlist_mm,
+		    HVS_BOOTLOADER_DLIST_END,
+		    (SCALER_DLIST_SIZE >> 2) - HVS_BOOTLOADER_DLIST_END);
+
+	/* Set up the HVS LBM memory manager.  We could have some more
+	 * complicated data structure that allowed reuse of LBM areas
+	 * between planes when they don't overlap on the screen, but
+	 * for now we just allocate globally.
+	 */
+	if (!vc4->is_vc5)
+		/* 48k words of 2x12-bit pixels */
+		drm_mm_init(&hvs->lbm_mm, 0, 48 * 1024);
+	else
+		/* 60k words of 4x12-bit pixels */
+		drm_mm_init(&hvs->lbm_mm, 0, 60 * 1024);
+
+	vc4->hvs = hvs;
+
+	return hvs;
+}
+
+static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct drm_device *drm = dev_get_drvdata(master);
+	struct vc4_dev *vc4 = to_vc4_dev(drm);
+	struct vc4_hvs *hvs = NULL;
+	int ret;
+	u32 dispctrl;
+	u32 reg;
+
+	hvs = __vc4_hvs_alloc(vc4, NULL);
+	if (IS_ERR(hvs))
+		return PTR_ERR(hvs);
+
 	hvs->regs = vc4_ioremap_regs(pdev, 0);
 	if (IS_ERR(hvs->regs))
 		return PTR_ERR(hvs->regs);
@@ -835,29 +873,6 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 	else
 		hvs->dlist = hvs->regs + SCALER5_DLIST_START;
 
-	spin_lock_init(&hvs->mm_lock);
-
-	/* Set up the HVS display list memory manager.  We never
-	 * overwrite the setup from the bootloader (just 128b out of
-	 * our 16K), since we don't want to scramble the screen when
-	 * transitioning from the firmware's boot setup to runtime.
-	 */
-	drm_mm_init(&hvs->dlist_mm,
-		    HVS_BOOTLOADER_DLIST_END,
-		    (SCALER_DLIST_SIZE >> 2) - HVS_BOOTLOADER_DLIST_END);
-
-	/* Set up the HVS LBM memory manager.  We could have some more
-	 * complicated data structure that allowed reuse of LBM areas
-	 * between planes when they don't overlap on the screen, but
-	 * for now we just allocate globally.
-	 */
-	if (!vc4->is_vc5)
-		/* 48k words of 2x12-bit pixels */
-		drm_mm_init(&hvs->lbm_mm, 0, 48 * 1024);
-	else
-		/* 60k words of 4x12-bit pixels */
-		drm_mm_init(&hvs->lbm_mm, 0, 60 * 1024);
-
 	/* Upload filter kernels.  We only have the one for now, so we
 	 * keep it around for the lifetime of the driver.
 	 */
@@ -867,8 +882,6 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	vc4->hvs = hvs;
-
 	reg = HVS_READ(SCALER_DISPECTRL);
 	reg &= ~SCALER_DISPECTRL_DSP2_MUX_MASK;
 	HVS_WRITE(SCALER_DISPECTRL,

-- 
2.38.1-b4-0.11.0-dev-d416f
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
