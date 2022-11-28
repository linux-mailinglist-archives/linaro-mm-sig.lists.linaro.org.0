Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AC44063A6B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:06:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB13E3EF7B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:06:18 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 837213EF17
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="e z9KKqf";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="M mrCSqa";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 681995803DB;
	Mon, 28 Nov 2022 06:05:13 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 28 Nov 2022 06:05:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633513; x=
	1669640713; bh=7n/L8sWWtvZxkpRnLozsoGpUrXbwPv7SGpNu6V+FytI=; b=e
	z9KKqfFXWDtG8FSHcwfr+kZHFeYwRjX/68NYRhAEJQsJVcsrZpioKEsiovSa2MCo
	BC5dFy/SBSQwNEVK2QMU5Zr+yFNRzlxFfFRbH614QHDVqLH7HQxKpV81HiWdJZVr
	YnYPF2I1YAryBHCusoPG0JsT7X8vUa7uujcF9qa56i+evi5+AR0zADBsNKGEy1Kq
	ief/L0PL5Ymj8keLYIPtW1PaOz9DhYb1xFMcdyAsx3zM9C70UO+ya51cFU/9OYea
	2amXw/BbaWfZNu09wVm+gjSTjoL6PesUwxqeYVKR/iwpAWV8DjATwnx0VLbgdNxu
	EA5MwGCIcT9knCV7ft/Jw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633513; x=
	1669640713; bh=7n/L8sWWtvZxkpRnLozsoGpUrXbwPv7SGpNu6V+FytI=; b=M
	mrCSqaMry1j9O8Whe7oSZG/aOEqQJcJoLwontsT+GmXvUMeCDpT7ive+uP7waaS7
	VRi180tGjQ/GbQZlMsFUz2A3qWrMzqZh/iCG1oSRS/F/YBTEyredONDctMpKR0Ps
	0esZ/K1kdIDsSGQtBah3rcphq/1xmpdCtoT3S8VQLSV6wZqa5ibZ9TqCizGPk5aP
	tyR/1hAHVoY0TWazkplKmn7DzimA7q/BNriVkSX9xH8YyMCiHnGZMw8KWHfoeAWE
	XBWKWBwbZkKrONpcP6kcLJalYXI5zMVu03lz0WuboGJ7xaZ4QDyK1FL9iW6G4noT
	yzQINtaI8IgoSIe8fTViw==
X-ME-Sender: <xms:6ZWEYwgS7QrjOc0CGIm04crmYnZxApclp6Q8AB3JU90xnq0Dv--chg>
    <xme:6ZWEY5D5eXxzbwTTv3yr8i_3eBMSiY33ivNqPKAriKlDWUNpxF-fONuVaCw5uWFcA
    h1H9-Ji853o-D9dfw4>
X-ME-Received: <xmr:6ZWEY4H6Rn6i34orQ4DJzWkQMakUTeZC2Eznauw9qDU_C96ZrplkOMAJD18Rt5LquPk_u6OP3ro_YCyXDYoH8h5bCnHndHKUI1HglYf8w8FHww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6ZWEYxT7F5v1OHfM7XC3AGKlPsixR-KL9er9bzEh729XLVICiOj0hA>
    <xmx:6ZWEY9yjfZ_WStJ8Zem86bx_may0YGJFWDEm742S7CVPwnDB0rSPjQ>
    <xmx:6ZWEY_4IbSE2wRuZdikzUJuWuIKPC_44AYwQD8dQEYr5WR0Le_VK3w>
    <xmx:6ZWEY-RZsbyAfDcpp_5tvyHX4_AEs3KSotyzxj1eGsCPXPuJ2qjk3Q>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:12 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:04:56 +0100
Message-Id: <166963342297.56696.17736510274348505115.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-13-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-13-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 837213EF17
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
Message-ID-Hash: RWOGRG4JDJ6PQ6HAHQZSYBQS7BROMPTO
X-Message-ID-Hash: RWOGRG4JDJ6PQ6HAHQZSYBQS7BROMPTO
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, David Gow <davidgow@google.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 13/24] drm/vc4: kms: Constify the HVS old/new state helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RWOGRG4JDJ6PQ6HAHQZSYBQS7BROMPTO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:55 +0100, Maxime Ripard wrote:
> The vc4_hvs_get_(old|new)_global_state functions don't modify the
> drm_atomic_state passed as an argument, so let's make it const.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
