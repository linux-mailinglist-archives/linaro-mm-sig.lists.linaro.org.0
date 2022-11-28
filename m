Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A8263A6C6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:07:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25E213EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:07:40 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id C1E9A3F0C8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="Y Yxl8Rr";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="J a9Vcjo";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id A60545803D8;
	Mon, 28 Nov 2022 06:05:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Nov 2022 06:05:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633521; x=
	1669640721; bh=qsrWX3Nsc6xrZmfvFqVcrxeyHOkj7NwZOz92SRZBu4E=; b=Y
	Yxl8Rrsbsbbgmo3rbA3077oUI+KHyEJ8pU9edXTkfRXV7g7Y3TCkmBcaIuWE0abb
	hCWgrIZDpLx8r7SUBMdB77paUDuzLl3oMG8Dq5XUNCXTNkSHa5cDuP4PCP7zNgUa
	ACV/Jt1xeNs+Ops3vkxwp+7qrUD+rwXKNtMuGOJykO6IKRi1oOZYvANvVNmp2Nd6
	7dLkLRPV2hqcbRHBIXtdvmCp608QDUV9cTBpUrte8HEVNlaCxqjDDn8DAVrdxEBe
	rVlWqsWTZjTElgekW3nAnqngbUqjBdFF2EDZW8uBChWvktwRLHUewY9HwAb1T7ju
	UYfRM4ArNKoRIAWPl07Ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633521; x=
	1669640721; bh=qsrWX3Nsc6xrZmfvFqVcrxeyHOkj7NwZOz92SRZBu4E=; b=J
	a9VcjoR9rAf5y1unYux2VUW5o0M97nPQbnvTvCm+zMmOoDJpt9UTWzmPCM0tFBEF
	qb7qEAl4L6YxVzOhtlDYt+fhXJR9Kdsh0G62IE4OacT8+sNagoAr5E1nBxYH1xLe
	joN3FxSljhQNdz7EONgKBLw2gmktRBeknbrEvXRBP0gHYNwbOWfOXFi8GJnia+bv
	JCgliRI716WvbvJayjR08pjafSjV3rmoNq47wvOCSBpLLhBKQsQSZ+r+beQ05PN9
	VnE3DC88jD+JJg4OR64cD8oEKgSzC/OmTqBRRqRXVoWeaIrvOwsW68SD7xbKcyMY
	AKoPSDk+OdOgQy+8eQ3bQ==
X-ME-Sender: <xms:8ZWEY6YjfL2XxVNkhaqyEjyISvQ0SdT0Ox-X2QJRrjFlca4JNUFohg>
    <xme:8ZWEY9Zt4E5uOtwPj0NGYMKJQ01P4SoYT32Rw0JQhUkW58ql0f4qY5cmsaLPyxfQZ
    M6G8j17RCvBHmBmtl8>
X-ME-Received: <xmr:8ZWEY09g5QQMyS4EKbs50NAX4e9E8nkasZ4BlSZAN1U_IuEjPALE_5-dGnqhDjvP17dKgVqNZsk7pvxlfbCknx_dJJ5DYNL8mbhl5qVjca-0Bw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:8ZWEY8pn6LnL2i3J6DRnTZlSFI3s_dJLIlQ9oAzAm90A5F3VWE-oXA>
    <xmx:8ZWEY1pxrwt-gdlEB8kRw_voHaGDQ8ytqJN011lUtz-hwQiYjqZykA>
    <xmx:8ZWEY6S7aKXM07rNqJFzP5B2oRvd2d1cf8nCjKVLCn8TpAsbAadpvQ>
    <xmx:8ZWEYyKQquNyewlWlrgaCQxgRydfwh9c6lCG7Mf0JemdKqcw6mrv_Q>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:20 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:05:00 +0100
Message-Id: <166963342298.56696.8558903264811333945.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-17-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-17-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: C1E9A3F0C8
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
Message-ID-Hash: H7RNMXT3ZA5JZUAHH4WCLVUO5T4YUG5A
X-Message-ID-Hash: H7RNMXT3ZA5JZUAHH4WCLVUO5T4YUG5A
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Javier Martinez Canillas <javierm@redhat.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, David Gow <davidgow@google.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 17/24] drm/vc4: crtc: Pass the device and data in vc4_crtc_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7RNMXT3ZA5JZUAHH4WCLVUO5T4YUG5A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:59 +0100, Maxime Ripard wrote:
> Both users of vc4_crtc_init need the same extra initialization to set
> the pointer to the platform_device and the CRTC data. Since it's
> mandatory, let's make them both arguments of vc4_crtc_init().
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
