Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 002F763A6BA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 12:06:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11B213EF90
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 11:06:38 +0000 (UTC)
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com [66.111.4.221])
	by lists.linaro.org (Postfix) with ESMTPS id 858A93EF50
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 11:05:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b="I fAaNNf";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="K FI4IYy";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.221 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailnew.nyi.internal (Postfix) with ESMTP id 691B35803D4;
	Mon, 28 Nov 2022 06:05:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 28 Nov 2022 06:05:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1669633515; x=
	1669640715; bh=rhwIVol0Sw9gpOfzp/VchLhtTbcBkSg5YY1nD1OY/Y0=; b=I
	fAaNNf/Ef5obt1WjL1rcO0wkbnH5ou9NWy9lQ5vHpXIoFW51S2E795GfW3hLTURe
	WYMQJHqaBqdeFe4cRvAExACljwQFHM4Dj4aKWesxP/DhEkqKabCRKiIx8ITflCE3
	o+QT8OOzlXa1YO+B8D2yeXL6aXfTuOKgjHj0jJvD/K7MfmaDjlin9K07P9mx0GVy
	M46yvrP2EAJeZZIpiU8mhENrZD/f/VPiIoXKNDa5Rp4EoBH1h7xWewQd7jSsdw2t
	LgalR0h39AMEgtMoFhTERMNgRZOpqrYb3LrtL0divLBHrOg3GLb/wW1qlmJMB+Ow
	fD8sHJ30O5t49l0wco95A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1669633515; x=
	1669640715; bh=rhwIVol0Sw9gpOfzp/VchLhtTbcBkSg5YY1nD1OY/Y0=; b=K
	FI4IYy/OCS2UJhwJPvZUAKfAIA1K+E6SuiUNpqIijQkdYq+jQU0cLBLRXii97iod
	sJWIb4PMVSLvjQIz/0B2J805pt46OLJy8gc57DaEpMj7MJDIM3jbz/6/zVxwbawc
	hKQ2hC3hTbmjYbwQUNMTwYKeWLTAPQ2zyA4NXdDnTSDlh3YxSfcOGnXPXg5mI8Hs
	aHo4yU1/413NOhQi4IR3MvAQkyVl9mKVzvNLGV//yuWKAkE79h6GwI4jKIdeFv6r
	ANJ79dneKZlwxDGwmcCPkhBzi0r9nW/2+naVaVCwfE7KdgEgfJh41Q8P3Ph0IClf
	8dn1W/UN0aUnxmelM1eng==
X-ME-Sender: <xms:65WEY8waubcY4rq4NYMJkogoZpmk5u5Bjt0Pd2y_w4zhiPybi9h1qA>
    <xme:65WEYwTN6WuE6HVuJxbcwJPyLjFHF6m6RDPJJQP3FCNI-EljYydsc4fbM-mL-5m5s
    vWf_rTjuezAnRy7178>
X-ME-Received: <xmr:65WEY-U6zm8aIYjyHN1CUHYYYfyOZpgRSN1M5Xz57tfG3fPgrUvqh7-KoFV7hEQl521mZYk9CE2vyfpMGDs3A3FoduF6rhEPbCtVVtlB0AOqtg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
    udefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:65WEY6g9uAn8lwfasBHS8hFqkFhko5n_lG_J9v827hzf1mGjdhbkNA>
    <xmx:65WEY-D0-m3BtI9_6s4j5mktw7SCB14WM6CKnaXj6FOVWfE4PAcZ-A>
    <xmx:65WEY7IfQstyv8qxp1pUrQAStJki-qU_rLCneuBDLxWEBFy5xUBsTA>
    <xmx:65WEY2hZ9_WglFIzUlQnUBSdS2DnnvHVtIBt-eMOiBtog0NlZWrR1A>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 06:05:14 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime@cerno.tech>,
	Maxime Ripard <mripard@kernel.org>
Date: Mon, 28 Nov 2022 12:04:57 +0100
Message-Id: <166963342297.56696.10895622968661502205.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123-rpi-kunit-tests-v1-14-051a0bb60a16@cerno.tech>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech> <20221123-rpi-kunit-tests-v1-14-051a0bb60a16@cerno.tech>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 858A93EF50
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
Message-ID-Hash: KI4D2X4KTVQGWMD3T6EWWCPQ2LETWY4K
X-Message-ID-Hash: KI4D2X4KTVQGWMD3T6EWWCPQ2LETWY4K
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Javier Martinez Canillas <javierm@redhat.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>, linux-media@vger.kernel.org, =?UTF-8?q?Ma=EF=BF=BD=EF=BF=BDra=20Canal?= <mairacanal@riseup.net>, linux-kselftest@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Brendan Higgins <brendan.higgins@linux.dev>, kunit-dev@googlegroups.com, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH 14/24] drm/vc4: txp: Reorder the variable assignments
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KI4D2X4KTVQGWMD3T6EWWCPQ2LETWY4K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 16:25:56 +0100, Maxime Ripard wrote:
> The current order of variable assignments is unneccessarily complex,
> let's make it simpler.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
