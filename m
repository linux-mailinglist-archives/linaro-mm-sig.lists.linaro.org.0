Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C9263A6BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:06:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B7BA3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:06:57 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 809293ED82
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="j ZzauxK";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="G zO358g";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.nyi.internal (Postfix) with ESMTP id 592BD5803D8;
	Mon, 28 Nov 2022 06:05:17 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 28 Nov 2022 06:05:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633517; x=
	1669640717; bh=HGNA+mHj/3wrFiqggGiI6SdDBIAzNFhQQeizXQV556A=; b=j
	ZzauxK33nvq3erVwAHB0njU8/xBZnnc8GESS+FAEBR6Cb9aRJ5vhBtsF4+vyI0Yr
	ke4J0pa0mRPNGsdhc1vw2KX8ijgGgysOooB6+apBodZRDdNZOiu2awAhy/X7B5n4
	gBRyNpG5LbTrixNu+lBjmY1UuyTuPNSF/VxO6mmXbAbDOinO+tYVZ2NajF8b5GkV
	QujzpxBt1uu9JUoQqFf3ZYBmoZR5dUXtvC4ksgP6h8KBBKJeTrkLSmGmtGIqJbuT
	+Bciz/o4WFvlCv+rqfF4+cZ5B/r9l99ejbRB5eBdR7JKKsEtSye5o92KoJj8VKw8
	fKzzphXd5Cc/gPYX2EiYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633517; x=
	1669640717; bh=HGNA+mHj/3wrFiqggGiI6SdDBIAzNFhQQeizXQV556A=; b=G
	zO358g8yyQw9DAqp3T3H1x95Yr21NxKCp1sIYaV6YNbwFM3KD3kUY217wciCvq4c
	FZ5okVG3IALaVU1HfnnLYVvOlN5lesKcsbmPQyyquWkxyDHz6IWUYRr5MAZCFDRJ
	xPcNSmGBQLF0HztzAcyX1XvsXWPOt37j8lRETIZ7Cvhx8a8zyHPuQUGsDCRYPbJE
	2u/MUGjNenATkuciYTzkKnWt1gQRYGoBhkiWO3jHptdHGBtQNEfLSJ1LR56ZJYU3
	5QdDezNaXOhR0yvNlAtuqco/Q32kzHL1hiAtm17YIaZjx8h9l80+1bhb+RK+fP+f
	oMtsr2SZDGxILP8IjHZnA==
X-ME-Sender: <xms:7ZWEY2vnqWWeXvWbG1JXXNDv2e-dSNnYFmKIEIcuQOCfkNsqXLox2g>
    <xme:7ZWEY7fG21cGPSDnExRidQaUU_JtxR_PozNZ8lRwhJP9lZR5OIebpGE9kyxwNg7z3
    55VgF4RsxxtXv7VvRI>
X-ME-Received: <xmr:7ZWEYxxeMLe6gSmb0ISFGA5KijO5Y6HnV4aC8e7mwcfPmpyL9SWhRU9B8OV8BH8plqyeQUu99GExfr6rB30YcgtNYzPlu0dWPv_1hxh1Xaf_-g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7ZWEYxOm2MKVWIxZkI8GXQbUWAOy-rQeo_1hICgAzuPLTKHJQ7b7_A>
    <xmx:7ZWEY2-MO2sSY2_4dOataSSmsq8PjK9XxPepRLCGrexWcHG37FXnXA>
    <xmx:7ZWEY5UhwWHt4Gi0zTsP2KOdRelCpUxYIcjBruIx4rCifHdYAUw81g>
    <xmx:7ZWEY1eXGFji9Qx3taPTPvG-3kTbbM4x5XdCcIpyda1iR_77Rbxq9w>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:16 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:04:58 +0100
Message-Id: <166963342297.56696.9898276346017786478.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-15-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-15-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 809293ED82
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
Message-ID-Hash: ZTMJ6LB4DAYXCZRSVKEFIIPWZOUTUT6R
X-Message-ID-Hash: ZTMJ6LB4DAYXCZRSVKEFIIPWZOUTUT6R
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 15/24] drm/vc4: Add TXP encoder type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZTMJ6LB4DAYXCZRSVKEFIIPWZOUTUT6R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:57 +0100, Maxime Ripard wrote:
> The TXP is integrated as a separate CRTC/Encoder/Connector combo, but
> for some reason doesn't rely on the vc4_encoder type and it's associated
> type.
> 
> Let's create a type to make it consistent with the other encoders.
> 
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
