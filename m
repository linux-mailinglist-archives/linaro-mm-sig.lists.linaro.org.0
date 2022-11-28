Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBCD63A6C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:08:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EEB93EF17
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:07:59 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 007DE3EF94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="N 4VI1Kd";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="n XYlnvk";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.nyi.internal (Postfix) with ESMTP id D97545803D8;
	Mon, 28 Nov 2022 06:05:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 28 Nov 2022 06:05:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633523; x=
	1669640723; bh=BN0GhcUCuc6Kbhxsw+Pvuo+MIowS4/NAxgbzxGS28lY=; b=N
	4VI1KdUXlGsPgEsCvyBFHW+MZ37GaxUI6lzE+jwB7yIlsBGi6Sh2Bsg0suQg4lmP
	nmF/Zqg2yG8VbDg38/jJ0pxf0RD3B6/esq9U/ywyHS+PChJ3a3xR1E5+8lpejxKv
	C0eXqOIXW0KSuxRG5ey3eKv9mIwbkm3wmtNcBcdv8p8V+a+eRZbgrms46spjy6gm
	c2CDqVoM2P5QOoVTTKTM7Z1RHNitCzOCTiX3/Pl5IXC/vilag6TmktOmBV56FrBw
	pbkMfHkboU7gUEE08JEpLSCDzZYpRqacZcckV/GiTQG00vOU8wqZDSIWUhBbyLqU
	+oiLo+je6ty7feN/oEzHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633523; x=
	1669640723; bh=BN0GhcUCuc6Kbhxsw+Pvuo+MIowS4/NAxgbzxGS28lY=; b=n
	XYlnvkpP4AKpQiNhBOV5M+WN8a6kSBnWj1mOkQUZM8oi63crVX/2V4MxGP7Cvjwh
	seHKJyk1hlGJeRS5IvSKyG5uzg47TFK1GNcW3nT0NF0wkQ1KtuqEpL9LYhkBRFCS
	UsomFR5aPDTeSvFKr7jt1IXklGys4IOY2X6d3FbMKHn9Cfs7n71e/46Dl7HOqgir
	PoEsuZkOijBsx7IT/AsntH7E0UlH7JcjE7BS4xtWs8RMjk4OOw4249ufmNkfmrBb
	CAMggXwlMeqarPAAJGnNAgK444n3VDDbi5O0xulXe3qP6VSopckvb5ZnZNJFkFcs
	MzUMAz/lw2fjTu8ku+MIw==
X-ME-Sender: <xms:85WEY0ETm6arca3Hf2AZDglBsUut_rXSTz9A7ExfMHTT_xpsm35lPg>
    <xme:85WEY9W0NalDpUiI5f55Au61ryHo2erSA_QfovAbNqgCdyk3G0O-08pvUQ-t-6l2q
    9EJutmiZMWNX00WXOY>
X-ME-Received: <xmr:85WEY-K0Ea44QYLrKExUK6QVN9HbnyB89XNdZo0rW6WYTdONBAso36YpauS3IlytWKm0RCGASFNlrwwes2yyYoo0ZekYvcD93HRX3fH74d_dZg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:85WEY2F8SAdYTA5Yxpi4ToRlXu8pGvUP2yF1xmTWj8_H3YPuRwXmoA>
    <xmx:85WEY6XfSz28hejieWrGmWfMABm2O3EM2Mu2ol-onsBQsOOwyL2Ylg>
    <xmx:85WEY5MTPwfHY7auQTUjOTFcfczxccrycpZzb4XWy7N1Oi1IIa3hsA>
    <xmx:85WEY00OX0Q46igfqU9mgdrohlsiLKFOKdP_dNlDV8jizBCyDQCpaQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:22 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:05:01 +0100
Message-Id: <166963342298.56696.16356568683060608437.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-20-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-20-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 007DE3EF94
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,new1-smtp.messagingengine.com:rdns,new1-smtp.messagingengine.com:helo];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: W466NAQOU6HVRTOP5ILO7SC26S2UC5PH
X-Message-ID-Hash: W466NAQOU6HVRTOP5ILO7SC26S2UC5PH
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Javier Martinez Canillas <javierm@redhat.com>, David Gow <davidgow@google.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 20/24] drm/vc4: crtc: Provide a CRTC name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W466NAQOU6HVRTOP5ILO7SC26S2UC5PH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:26:02 +0100, Maxime Ripard wrote:
> It's fairly hard to figure out the instance of the CRTC affected by an
> atomic change using the default name.
> 
> Since we can provide our own to the CRTC initialization functions, let's
> do so to make the debugging sessions easier.
> 
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
