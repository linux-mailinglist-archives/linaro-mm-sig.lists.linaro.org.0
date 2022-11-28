Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CFF63A6AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:05:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 097CC3ED82
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:05:40 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 662D43EE32
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="S zoy7dC";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="J MQCIX1";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id 48CBF5803D8;
	Mon, 28 Nov 2022 06:05:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Nov 2022 06:05:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633509; x=
	1669640709; bh=9KW+v1Zm5o9jjtnNYe44GqrcuqH32RH+LlZRtrF9EjQ=; b=S
	zoy7dCAbEgNDEoprk0rxTCle5W8dBL+z+rgWZBVCTk+sxJC78+AO5cXciRIkKswK
	y44AJlhRGG0VCxXd4bDql4i43YVW0iRCy3CbGJBG0ij8MoKqO052fbNoBAKmEriH
	FVSJa/O8qNbAOhtCswoJIfyDxy4vONgyPy4jzZ6cWu4uKWkrWWLNmMSKtJII4YzM
	az8EcxBjsXTDU3kD8wKLwKJBoHXdvhX67oCAVCpeJmmrq6Q5U4NGRabUm763U73n
	xmAWrgj2VNT2IAuX2nX1P+oJ1P139pJldzq5aP3ycrNwT1EigB5Xr8WozGlWNExu
	dbpH98UUCorLXNvEw+LUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633509; x=
	1669640709; bh=9KW+v1Zm5o9jjtnNYe44GqrcuqH32RH+LlZRtrF9EjQ=; b=J
	MQCIX1rYkxoh7A7rTmuzz6YS3sJohkGT2B6vYJciK4iBwP20YhftyZckv/Xnpvfr
	P89sOYQgv+J2M7veayfvThJtl0jwJ8JteTNjHinpkc8Caf98ej+8G/0j6R2H+DCA
	6ijhf/1Jp6rI62orFswQf3V6hpR7frNK/7T+Pmri2y4L70PH83bVns6CwsJzrpzJ
	E3HinWqu0FccDhFdFA8zxHK9A/gQgpdmscD836x+iZ63/rimfonoMLfi9ojfmmKK
	8QCLi6OvHv7mhSy9Sl3b9iGUkHK9FQvYSBb5qcKx3EO3wXnL8C5snWguw91vGKWc
	q+ZW2caaC7Cx0RO7RuSsA==
X-ME-Sender: <xms:5JWEY6JToVv9hCJyDpW64NjhSEG5pxTegaf7kiQYmJvqCgSUEuwx3w>
    <xme:5JWEYyJEItKI6PIDhH30nj_aMFSrAReCE3lypORUdQeaC_uMTXFiTaye_fKH-vD89
    eqzgSRJjqmdDUO92Jw>
X-ME-Received: <xmr:5JWEY6vmhYSax2sMv3MexNTtp32j8M2crZcWmgU_qeVsb3NsL9repanFc0B4nyOGchdYdzG4hto_g7gp2_nRfRr6alxpBLkGF-g1NJp8xfZaOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:5JWEY_ZEyO5Kbizi7oZVgSg__5DEr0xlNzSyvfyKopgUUCjFrEQAfQ>
    <xmx:5JWEYxYlRrxYbQOMTl53zA-gIOHWhzHsEIkobPIUyQUyaPEH3k_Ldw>
    <xmx:5JWEY7AqXvSAgbOg8Ssd3ugceraRvIIt2eGCjzNimVccp-aagzHfGQ>
    <xmx:5ZWEY17NmQnxgziJTIvGBWLzeWnIvXv-AlA3dfr9zb0nNI8OpdmYZQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:08 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:04:54 +0100
Message-Id: <166963342297.56696.14963100604547824820.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-10-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-10-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 662D43EE32
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
Message-ID-Hash: T6MVRHQNBHSGYZYVD4246I6SSGVWBZZS
X-Message-ID-Hash: T6MVRHQNBHSGYZYVD4246I6SSGVWBZZS
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 10/24] drm/vc4: kms: Sort the CRTCs by output before assigning them
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T6MVRHQNBHSGYZYVD4246I6SSGVWBZZS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:52 +0100, Maxime Ripard wrote:
> On the vc4 devices (and later), the blending is done by a single device
> called the HVS. The HVS has three FIFO that can operate in parallel, and
> route their output to 6 CRTCs and 7 encoders on the BCM2711.
> 
> Each of these CRTCs and encoders have some contraints on which FIFO they
> can feed from, so we need some code to take all those constraints into
> account and assign FIFOs to CRTCs.
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
