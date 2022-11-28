Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8346963A696
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:05:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39C1D3EFA4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:05:16 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 0EFA63EECC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="N KyQd8E";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="h UrX/Jh";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.nyi.internal (Postfix) with ESMTP id C39835803D4;
	Mon, 28 Nov 2022 06:05:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 28 Nov 2022 06:05:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633506; x=
	1669640706; bh=WRPoxqvq1slaZ94whCa6Kp30ZmhMsSXuWCZ/P62/9u4=; b=N
	KyQd8EEmYfyqxuGSm+JxAzjwvTwk79Hg5Drb3hRh0eGmoA5MvmRObQIgjOz9uEZj
	Mh7VBQ5XspvmnWxEi9EeWVNbPBekxRqpBa2v+VWAutxc9Bb2SLfOc9A4eQBa7DjO
	/RazSAeJgEOtyCoI4q3nCtl3czfhW2w9y0Q7NC1kFbKsEvWcmaSgSY2h97QjhDKj
	s4JOTwE3Kefy3cAZWmTQb1slyjzEmQNYt4wln++lK5PGapGAIqdDdz7MoDUDyPfy
	vBeI9nvIu4aS+kaOHa4Ahh0E9/YXIzjj/uQxA5+HvyXf3sgohEHKgd2B9Iis2z5l
	EWSwM3m61zO+tUO80FLpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633506; x=
	1669640706; bh=WRPoxqvq1slaZ94whCa6Kp30ZmhMsSXuWCZ/P62/9u4=; b=h
	UrX/JhfEsnC0G0ObofMPEW9u3ZHDUw2RDPJXmqPh9f1FzHTR6qQc3pdQyHLQH/Na
	MdIZR0Sqd23hGb87vkgAZW+ws8S1cFdxJpNRg83usMK3TlalM5AkUsGKAiFjv1We
	DTsr7ftsgdboYosASgTx0cZE7X56Kc6wz0jnOoWDB3+xKQxRXI1LApnlne8BkFof
	9qzHOVOFY9YLeqxCfvEXMA/2BK8KF775iFEnjW/ppdSA/BVfBtbVgrwPiLoUjiAn
	Ei2XCsqBiHH1WGkFAlX9HvmeyUajw+F0NeShDqQmYCn2XpakjYbKIokVGL35LeXA
	C14jT05GaxXw0mpsqZ6XA==
X-ME-Sender: <xms:4ZWEYydJUvuclFXdOmuf2CCopFyVAz9R8ZC_yXSNAlf906BMsysREA>
    <xme:4ZWEY8NLrHmKR1gMvW6nS8-fQqxVHG_DyHg9sQJeR3M9LZiQ3Hmg0eQvJKbZPhldu
    a-Pj1MNHvN1m5PUEcw>
X-ME-Received: <xmr:4ZWEYzjMkYPTgFEA5Phf-3C03DJ_EBZGEm9Qw4423_N9lTCJ_JL9CVb2U1GGgYhc7ByN4JgGku3rMSxyrI742iGBA8ud-K_GKGSHkn30izNNhA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:4pWEY_-vERustfYa2ipeEXJDgbiL17hI5LNNM9Pio_tWB4pT58aOKQ>
    <xmx:4pWEY-vN_gf4YAkzE30rwy9J1qgX-JhvE4W4ZMn-QpAfHWR2PcKxNw>
    <xmx:4pWEY2FrCXTx9wx-Cev3C4f9_zVPpzaSas-U5Qf-54qS9LlcldkeYA>
    <xmx:4pWEY1M6BppK9qF-csh24VqpPHvJ5QRR_x_z0hUZqLLQXujxleCRFg>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:05 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:04:53 +0100
Message-Id: <166963342297.56696.37811222160355559.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-9-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-9-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 0EFA63EECC
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	RCVD_IN_DNSWL_HI(-0.50)[66.111.4.221:from];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.221];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[66.111.4.221:from];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,suse.de,linux.intel.com,cerno.tech,kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: U34O7MTUOH5Q5VK3NP7EI5K7K7O2I3GO
X-Message-ID-Hash: U34O7MTUOH5Q5VK3NP7EI5K7K7O2I3GO
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 09/24] drm/atomic: Constify the old/new state accessors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U34O7MTUOH5Q5VK3NP7EI5K7K7O2I3GO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:51 +0100, Maxime Ripard wrote:
> The drm_atomic_get_(old|new)_*_state don't modify the passed
> drm_atomic_state, so we can make it const.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
