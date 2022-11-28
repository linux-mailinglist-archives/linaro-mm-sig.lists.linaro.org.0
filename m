Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6287463A6B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:06:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 741B93EF94
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:05:59 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 6D0B03ED82
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="Y LhvGao";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="l kURNat";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 42FBF5803DA;
	Mon, 28 Nov 2022 06:05:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 28 Nov 2022 06:05:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633511; x=
	1669640711; bh=n7MXFL9CidPfBtwAJuLJLGulzgpAqtA68nQIGwSX5U0=; b=Y
	LhvGaoW+idR9a0NMekJf3035vwPAzcTE0qbgvcqtju0C2Y7RqPCbPcWMn8HxAb3h
	WgAQtCjnLWbPOIw/55j6BP1Jnl61HT8spx1G5ixDXwexWpRGaBvH665tUiXoLb6v
	QyCMmO/wdGygZnsw+M/Mrt7iIQyPpA7jcZQTDW0sx5/Oyl0nCPBYDaw3Ugu/eSfK
	r+vra/2owmHvWeX0gIj1drk//+5wAQVLZLtnQ/cInByRdKW+mQVMBjEcWqNfpbxS
	f+0Xm2hPw2fcD/FIoUsz4DpYnD7EVM1yDiTinmJn4WhVK8//weVaTWVGbqueKIt2
	ZZK48JPSFYPE4dhe9krfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633511; x=
	1669640711; bh=n7MXFL9CidPfBtwAJuLJLGulzgpAqtA68nQIGwSX5U0=; b=l
	kURNatGt/+nUJY6JCHV/dLWlrqmdPO1uj8vGG8bj7EgElGirj8zxWdbmJ7Hj5YwB
	uG9MvDDW2Si4/NdZ3Ldra2i5i6AsE32MwB8KaRZfhxy0CIYFG7dsPmIcfcB+Y/Rx
	XeTfc5+9zwTeJlJaZ44Qcon40vFcRL6sAjTuDsNhuhR2mty/Dl42cqu3ErZBlMEP
	iBEF+Xi+vEfxyP6dCbo7+im6MrbkCRnOYnTWLYcStt/MXLtcdfXa0zmEC/3+dHdk
	/yQDTWxv1xydgXYYgwr+BDDloUGKwfU4LtA4R9C8TQhfDoUgWouhSEMJsVt+s48v
	S6JwCUQe9Flkf4ItWtwtQ==
X-ME-Sender: <xms:55WEY1RAQA0p-YRenusxfENmGOsaiAbJO0izM13zDUbwpJ2cAIDi4w>
    <xme:55WEY-z3jMuJzM0SnrOeFYjmI8dN-nk6EOUdPWFBKUtzm42LdI0DggsbhuY6hvzYU
    Na8k8470JCbFJfOn0E>
X-ME-Received: <xmr:55WEY63vs37113DYZ4A1totcpBt2wnnGHvUGcIDjDHydJkwRTtDQSuVoH4eTtUPgsmdyNGUyg1cJXVCuOBtjw2A6Nqlcn1Qh4JsqvBQBf-sJ5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:55WEY9DmUdplkV_omtyXS_HCDtURWgL02-0BjmqLVXgJaG7b0kvnbw>
    <xmx:55WEY-jqQe7cf-cBWrHVsLWNWqbfK0iXBh20QJ7OSZyOB2tou_PC6g>
    <xmx:55WEYxoR5Omz3Mo-gga9VOGGjMWbZIrCgkex48dnY0Wa61JMqWpD5A>
    <xmx:55WEY3AsgD_JGCj3YT3gRi4a-C9X_panRLzaqbQMsVkSSZ0P6GqaLQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:10 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:04:55 +0100
Message-Id: <166963342297.56696.14557106661575377639.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-11-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-11-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 6D0B03ED82
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4T2YVBCBH6ARLO73PMDEOCZ2RYMFHISI
X-Message-ID-Hash: 4T2YVBCBH6ARLO73PMDEOCZ2RYMFHISI
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 11/24] drm/vc4: Constify container_of wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4T2YVBCBH6ARLO73PMDEOCZ2RYMFHISI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:53 +0100, Maxime Ripard wrote:
> None of our wrappers around container_of to access our objects from the
> DRM object pointer actually modify the latter.
> 
> Let's make them const.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
