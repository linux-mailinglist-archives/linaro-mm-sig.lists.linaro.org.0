Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F287747E87
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jul 2023 09:48:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36C5341206
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jul 2023 07:48:27 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lists.linaro.org (Postfix) with ESMTPS id D9F613F06F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Jul 2023 07:48:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b=oIZjXfDG;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="n/vtpbHy";
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.28 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 947075C01A1;
	Wed,  5 Jul 2023 03:48:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 05 Jul 2023 03:48:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1688543291; x=1688629691; bh=KF
	LNRV6qIyqwAD5yG3l02YxSxy2zFT/Mrid+n8DZyEw=; b=oIZjXfDGcWPaXU8zA9
	UNDTRrZX9Ud9Z0LlOrS1RgBs2fLTKLZ3KS3A+//mmYOp4Or4ZkaZ7zj4LQ6MmSDy
	3hs961nwu0pDbadJxg38tSahgZbUdpzWkAFIY2b89hWzQ886ZbVDqEzK2v0sHkb/
	mGu74J9Y/rI+K5DjvBGeap6VWXK6HD+tAAzL4gZqY+NwdYoV2UDPy35K9Bd2HOPL
	VPoTH1gPAh3mJX0dpjM+KuM3fcRWT1y+lqzNJ+U/kU8Cl4GefEHxo0y6twfnlBAO
	4OKzcc2b5/O+yByBI4yBtlBIF3ysGSMQ1WzPot6Ca4m132tsMkhcjCvYJdFcW/rW
	KMIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1688543291; x=1688629691; bh=KFLNRV6qIyqwA
	D5yG3l02YxSxy2zFT/Mrid+n8DZyEw=; b=n/vtpbHyrHd3DUNG8ekLGrMqj8Wnq
	J2Iq+cpyrw4AH0TGn6uhpMrCoGMEs8kmANyZiWCCCWVP6IScR16YwGynWon1fbwb
	sN2ldPSyQ0Rcl5WI37k8lgF+6GXFXv9tiHdPePSPXXjQikLy5fjrxHb/WnoX4NEY
	8i71qbK+cxXgSHx61oeID1i/2G5TfaDmRhaaIY/hVVY5x6zG7RgYALVwEBUn24x+
	zEy8NDwy8A1pZW/rG25BZEPK+YB2Ku9bCkFbNIxBWHYV9x4vrnFELnMd9X/KBwRy
	uElWAP5s8t4Lvl1AcR6N5k+c4PJh6N5PiTo1WLDmAUIcUoBXHgrK+Dcug==
X-ME-Sender: <xms:OiClZJ_d81rLK3R_I-ADFvXNRfu-TD1G9cdqgr4bPpiQhdPAdIP4xw>
    <xme:OiClZNtSfEuov3VeT4qg_Ks0VlsQ6Y8Z-XOQwX355iQ61h6_WiGAANUpJGoy945Tg
    -22wJNYmfv0Y2BjVqY>
X-ME-Received: <xmr:OiClZHBhpBmV-zRZYsHHkIEF1rmdgOhIb6c0fT7VFZzBh4q28UIefx0SPfen8kg1gCrn1y1mb07qhY064XD6GA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudehgdduvddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtsfertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeeuveduheeutdekvefgudevjeeufedvvdevhfejgfelgfdtkeevueegteek
    gfelfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:OiClZNeIq9I_973ZRtPv2NfSUtmYgjcdRq4lA3nvmBxPAiAFsEV9qA>
    <xmx:OiClZOMxcqRBwfAT9M0qQg3hcbp10tAG3QtKS7xNRIq1SXLhXnC7ZA>
    <xmx:OiClZPnLm_XPgYKBvi4LsXzQQbvLdoDDMufVVGrp9_E3UeQ7ZE9c_A>
    <xmx:OyClZDe3clP6zT98o_xsrNbGdwVpFJkYhyivnMfVrgsPzgB-HRAMnA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jul 2023 03:48:10 -0400 (EDT)
Date: Wed, 5 Jul 2023 09:48:07 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Message-ID: <gmzb7lja2lfciu5m7ggxkftacaa6fbui45icwerabqad3lwrcn@nhdxug7fvh6u>
References: <20230705060719.14700-1-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20230705060719.14700-1-yongqiang.niu@mediatek.com>
X-Spamd-Result: default: False [-8.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm2];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.28];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[66.111.4.28:from];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[cerno.tech:dkim];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	FREEMAIL_CC(0.00)[kernel.org,mediatek.com,pengutronix.de,gmail.com,ffwll.ch,collabora.com,linaro.org,suse.de,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,chromium.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D9F613F06F
X-Spamd-Bar: --------
Message-ID-Hash: NQWYV22VGKKA4PSVSYCW2RNVKTA2FJ6O
X-Message-ID-Hash: NQWYV22VGKKA4PSVSYCW2RNVKTA2FJ6O
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com, Hsin-Yi Wang <hsinyi@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v5, PATCH] drm/mediatek: add dma buffer control for drm plane disable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NQWYV22VGKKA4PSVSYCW2RNVKTA2FJ6O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4184604421855377418=="


--===============4184604421855377418==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ezt5bj6i4x32plog"
Content-Disposition: inline


--ezt5bj6i4x32plog
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 05, 2023 at 02:07:18PM +0800, Yongqiang Niu wrote:
> dma buffer release before overlay disable, that will cause
> m4u translation fault warning.
>=20
> add dma buffer control flow in mediatek driver:
> get dma buffer when drm plane disable
> put dma buffer when overlay really disable
>=20
> Fixes: 41016fe1028e ("drm: Rename plane->state variables in atomic update=
 and disable")
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>

I think we need more details in the commit message about what the issue
is exactly and how it's fixed.

This definitely feels like it's not something drivers should have to do.

Maxime

--ezt5bj6i4x32plog
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZKUgNwAKCRDj7w1vZxhR
xV9gAQCAWEWYfF2KLjV9WKYKh0fUDFpBhF7eQHAc8CjPAuRs2wD7BD2SfZEq8/6J
HC9N7/Gkq8EGh2R3CfWFFDxJBgqxawo=
=zLuL
-----END PGP SIGNATURE-----

--ezt5bj6i4x32plog--

--===============4184604421855377418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4184604421855377418==--
