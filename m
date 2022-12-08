Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D1C646B37
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Dec 2022 09:58:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0E673E968
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Dec 2022 08:58:40 +0000 (UTC)
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com [66.111.4.230])
	by lists.linaro.org (Postfix) with ESMTPS id 0C47B3E95B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Dec 2022 08:58:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm3 header.b="u g6R88x";
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="Z DPRAE5";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.230 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.nyi.internal (Postfix) with ESMTP id C9280580400;
	Thu,  8 Dec 2022 03:58:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 08 Dec 2022 03:58:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1670489910; x=
	1670497110; bh=tooDwlIC7AZxevGK2gsaN582jvPWJq/aK8UKAGTQaI0=; b=u
	g6R88x4QZk3vqHrpUoXGXedl8X7JuAmNReet3tdhc3FFeJZw1cQ6E646JhIrgNt+
	i4hKeQbUB/bn9+IXYsxKvCytJDIHs0nq8UmjjDwI3NPPgLqT03jrixVWuEu0zDhU
	HZ8XS9mwXwmTVnFAY4mK6WGRIQoPcOB6LPzo6uqnkUnC6+xHF9DsKmt5trstb3pU
	GpTkUGtbVf/bkWCpk1fSEExjbQ7z4HqGmr2JwA+mLoR0jN7AMdwPFstAKmeNebjo
	Bl5C3k+1ync5c+fDdEro1y0fRbxnGjDhcTi2eyb3GSQ3gbAGutd4BMXBxi9jTPu6
	u0q/NSb2XYXRv+mXASCoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1670489910; x=
	1670497110; bh=tooDwlIC7AZxevGK2gsaN582jvPWJq/aK8UKAGTQaI0=; b=Z
	DPRAE5xrL2xPGwvJMx8NCyQuX0ELUDFSfV8N9CXWVrH5pNmAS5k2QuckZfuLack3
	OzAxEdzlc5HE3vaxr9Enef8P+xNgrPCy2MOqtfrbnAWGLPj/+ExDf6CeH9uXHIe0
	v/WXYqVMu3PogTKM+6UkyUAUhkg1lw8aDYPdHQQp65TQ0pvjTwTBmvyX5Tt55qWp
	ztkcRN4+HTcp3dHzaLod6OgacNS9M8JiqNyHX9zYCxHzsl3CBEBPxvUMjWCShe78
	yK1uhjrMop/c3XoaIUPBtx7GglM+hkYqjvHjnwI0YKEqkjinI3H6SwQM0q4kRB6S
	lnRjZIWD/R2iwFI55UR8g==
X-ME-Sender: <xms:NqeRYwnU-9XkJjEkgKK508K0hMs6wojm9cMw-4MYyPnU7VJzEj1YPQ>
    <xme:NqeRY_15--qZGc_GV9W9ww_7f2U7VNDM0v28xF5loCuV4aFeLPSRn-qgZMLFZ-vAl
    sUcLKyCmeCREOU1V5M>
X-ME-Received: <xmr:NqeRY-qWSM8gWsSNB56-FPskdt_SJbePxpflvIsg9UvnkGxQj0veZOFykVdS26u-xFYaHr9cBlGg0kDzJON4k80IKFbY49ycywsLa3YDxwdK5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudelgdduvdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvegjfhfukfffgggtgffosehtkeertdertdejnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepieefieeglefhheekledtteejteeuleetueevkeeuveffudehffefhffh
    hefgheeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NqeRY8npGcqOKarzHYTUKfm9Zg9AqJ4UhSXD7x0LZXk8_CY9r1CBXQ>
    <xmx:NqeRY-3komStJyir3q-tDoywZsAm2I-Kvzm9fj1YbHJfxFqhHJIkJg>
    <xmx:NqeRYzsDa0QIaUiChF3izjSKefejmpklrWduWXG821saM2PATj-PBQ>
    <xmx:NqeRY70Hjayo4kyZ4PCAHMCSW_Lkj7sWP6IIYf8bDgaD0pGrFYd65w>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 8 Dec 2022 03:58:29 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
Message-Id: <167048988433.2773435.3606690338900284199.b4-ty@cerno.tech>
Date: Thu, 08 Dec 2022 09:58:04 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-Rspamd-Queue-Id: 0C47B3E95B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	RCVD_IN_DNSWL_HI(-0.50)[66.111.4.230:from];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.230];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm3,messagingengine.com:s=fm2];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,gmail.com,ffwll.ch,cerno.tech,kernel.org,suse.de];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: E3AB3J5HDRZU5JSYDWXUJKARXJXJARZO
X-Message-ID-Hash: E3AB3J5HDRZU5JSYDWXUJKARXJXJARZO
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?b?TWHvv73vv73vv73vv73vv73vv71yYSBDYW5hbA==?= <mairacanal@riseup.net>, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Dave Stevenson <dave.stevenson@raspberrypi.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, =?utf-8?b?TWHvv73vv73vv73vv73vv73vv71yYSBDYW5hbA==?= <mcanal@igalia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Javier Martinez Canillas <javierm@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/20] drm: Introduce Kunit Tests to VC4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E3AB3J5HDRZU5JSYDWXUJKARXJXJARZO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 01 Dec 2022 16:11:31 +0100, Maxime Ripard wrote:
> This series introduce Kunit tests to the vc4 KMS driver, but unlike what we
> have been doing so far in KMS, it actually tests the atomic modesetting code.
> 
> In order to do so, I've had to improve a fair bit on the Kunit helpers already
> found in the tree in order to register a full blown and somewhat functional KMS
> driver.
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
