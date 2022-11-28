Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B203863A6C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:07:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C04E43EF82
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:07:20 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 9BEE23EFA4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="V fBDtmz";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="E +lleZZ";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id 7E6815803D8;
	Mon, 28 Nov 2022 06:05:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Nov 2022 06:05:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633519; x=
	1669640719; bh=iBPrSVFAFsgtvDN1oy2ObGoqar4ThwUCtePKmIE8jEE=; b=V
	fBDtmzq/0uO9A63pEtvJFOSvUCmWPNz6ZGN3hMMOWgdGk5mWNOXtRYWKFfFvz0ST
	0aob+k9/WZ4MAfHj7oMddj6yZQ+tMrT6FMneeAGPsdkR+YEvfjEFx3QTjek/DcXt
	/h9epo9Pr3zaaphoL+k4xtq9j6oRWlTPX6OovQjEBVN4qlysuwCbLi2bCTECgwuJ
	TFz/tZ4i3WM9vl1keQBfHEf2Lf6GrQOAWG4BYEGDulP8aiPQAVL92RNhjqBkXVl8
	AimtjCKWTrrebpG843TyRN0wpAOlqQBbfz9qGhzXFPkCVtvWA0UcTObgS3plAVHp
	D7HakpbyFQ8iCappgTSiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633519; x=
	1669640719; bh=iBPrSVFAFsgtvDN1oy2ObGoqar4ThwUCtePKmIE8jEE=; b=E
	+lleZZiSunrHqGvmz/ZLI4R1U3h40tpGkpmGdplVoaUSrSFUEh89EkretORqHsbY
	nS49++cBa1z2X1KtHSs6BR2uNB7KK/t2LC+elSdKkGXVGRw1myociGMhjs0hbrbc
	Mc2+oRPth1NnObyzsY+uCal/ugawOBTAcmXZJ+0012pWMsEwgcLjeyzD9znD+Ja1
	Aa4x0C6jGkyCl0oEpjK3ipB0TjUSX2anG09NnNQF4ugKzZ+0bQNoEA1L3FVqY7CF
	tg3aH/gUlfmAYCYgkXhyLJr/QikPD1AANKsFeesEbRJLtBhdtNvAGY+5LqnL5qce
	I386h/AAEVKJkmQT/RHeQ==
X-ME-Sender: <xms:75WEYyZg43DvXLHryKVPXajPD84nl0zM8C3VrE6fBa32Id-Rr5vVNg>
    <xme:75WEY1YwMDivzZt_pu9IavOhTHXYjA9605KHTVVcxI0bsmgbAlQrT4D68ZtShyYxV
    N1h08A6BiJBarhtNMU>
X-ME-Received: <xmr:75WEY88wmlKUaT2GVKmeqBkCO1CS4s6P-_Fg9SFshXMUamtzkbFMWS-tJyW35XJwjcqcz_MOYqIneYSX8x26RRdAleDQUSiiGxwxJDvOuoa3iA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:75WEY0ouOHk3Fx3qasYwdPYtr7v6t1ZnXJs66BTbUjRu9zO4uK8Sgg>
    <xmx:75WEY9r1_SosKzuNa0WcUZ3DPVcaa3Si5xYE39m_vTBGgPbNUqfJPg>
    <xmx:75WEYyQm4qq9-CJYyVgWqdJFo-ui4bBpHTVx6x5T4FEQsOqjSiq8-w>
    <xmx:75WEY6Jk-Rr5Vk_H0vnh0qZ6IKaKBJ132B70LwMQjm0VWLAzRr3oJg>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:18 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:04:59 +0100
Message-Id: <166963342298.56696.9364312621338205407.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-16-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-16-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 9BEE23EFA4
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.43 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.83)[99.29%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[66.111.4.221:from];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.221:c];
	RWL_MAILSPIKE_GOOD(-0.10)[66.111.4.221:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,suse.de,linux.intel.com,cerno.tech,kernel.org];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NA5TBL3HPUAWMH4CF3KRXCJFVKUUKPLT
X-Message-ID-Hash: NA5TBL3HPUAWMH4CF3KRXCJFVKUUKPLT
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, David Gow <davidgow@google.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 16/24] drm/vc4: txp: Initialise the CRTC before the encoder and connector
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NA5TBL3HPUAWMH4CF3KRXCJFVKUUKPLT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:58 +0100, Maxime Ripard wrote:
> It makes more sense to register the CRTC before the encoder and
> connectors, so let's move our call around.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
