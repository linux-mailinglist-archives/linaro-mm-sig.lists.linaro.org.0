Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE7463A172
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 07:43:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEE1C3EF89
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Nov 2022 06:43:40 +0000 (UTC)
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com [66.111.4.224])
	by lists.linaro.org (Postfix) with ESMTPS id 2060A3EF12
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 14:33:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b=P6EcLVbn;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=j9jhcO81;
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.224 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id DB89C5803E5;
	Fri, 25 Nov 2022 09:33:41 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Fri, 25 Nov 2022 09:33:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1669386821; x=1669394021; bh=M6MnU6LmiA
	YmvlmzIoIefG1FuwFoAznyitukgUEcknw=; b=P6EcLVbnBM2XgS0pzWCe/1rIDW
	LJpD0QMQb7FEm85MnUCRx0OIT/NTT0Iat6SeNrZQ33egH5CGd3JqkVO8TYdYlwJQ
	vrAZjZTditwnXo9fRTQXz2sZJjZIuKiBmW3+jT06X9mylNcQCwaFiizcn8pK927+
	PowVQgWtPcog16wDBa1OOVLvLoiTkSaujr/rs1lPblFCvGihAIYdCmtb7fXtD0P2
	md8BrtBzQsGth02UVxQVwjifyrfoMwhQ9gHoqyPmbKx4ITw69RjgPiUz6/SeWqg7
	MDTATCC27wthxBtYdMPsSjzxlEqeCUCq5KXEgiQBJA4DeHMWGiQEaeFpLgzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1669386821; x=1669394021; bh=M6MnU6LmiAYmvlmzIoIefG1FuwFo
	AznyitukgUEcknw=; b=j9jhcO81ZwRz1HzwCBRYdFInEE4Gu0n/iVzAkl1gjRN+
	VGRNi0+3J29Zh/qZpFG0ZehU//Zf4eNGkPVyK7LvyTaAeql+jtWGuTm0U5zSF2TJ
	I65Ug05FVmOx5AlurbYPPQOKTwdeTr+ZHTfMhIGV1y7VLu7Ihqu0BCUJnUlPbg8j
	D/KC6mWK1oSrLQOzn/SIPpgfHvIWpMohK0dcPjC8x8UCP7T9nBmF3yUQc/DvUFTc
	IW9etyFO5LVMrPdBpIjlfbK+kkny5z1BZkuqY1aO7eePY4sUV10ZVoM/LXWihz1E
	4tu0RokOn3atFsFWacXh+3KO8yLTeoM0cMPbbDCe1g==
X-ME-Sender: <xms:RNKAY91dPIvOopiSBkTlZTlsBtawKib3krM6hYQ2iK4L1lPTo4bPeQ>
    <xme:RNKAY0Ghuvp2N3Ox1NHKS_kkb5iP2fd-5EB0veQZR2dWgDOzLvHtnkp5wY50-6lTx
    cKgosbve5HIzDWdblY>
X-ME-Received: <xmr:RNKAY95mo2uSj7_xUAsiyOQQj3g5DtI5TMSGg_THRkHo-yUYGuzRKxShcXnMxm73TUjElj81GR6SIYFJf9XEEKdmovwouFEz8PfeQsIKJpALtg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrieehgdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepjeevfeehfeekieffgeevleevtefgffefkedtfeeuhfettdegjeehgfegudff
    ffdunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:RNKAY62siUBO6VQir3UrNe22QwYWPBDHPrGpfl_P707sZD7N330bJg>
    <xmx:RNKAYwG4gZ0CkAhklQIb1FQHTdJwtcroegQS-7D3xsd2MhrWUEgb-A>
    <xmx:RNKAY7_aXptjD05fY78X0D8c9xuodR2S7HsyxLzHSB3A8wwTGHyjCA>
    <xmx:RdKAY2R83jecd_63_yfenloFGvhBQCg2ePMGaB9yA5U_fVvwXbOMyg>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 25 Nov 2022 09:33:39 -0500 (EST)
Date: Fri, 25 Nov 2022 15:33:37 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?TWHDrXJh?= Canal <mairacanal@riseup.net>
Message-ID: <20221125143337.edzn53n6ackomhv5@houat>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-1-051a0bb60a16@cerno.tech>
 <6a817cad-df46-42ac-3c14-dbdce681cde6@riseup.net>
MIME-Version: 1.0
In-Reply-To: <6a817cad-df46-42ac-3c14-dbdce681cde6@riseup.net>
X-Rspamd-Queue-Id: 2060A3EF12
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[66.111.4.224:from];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.224];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	FREEMAIL_CC(0.00)[linux.intel.com,ffwll.ch,gmail.com,suse.de,google.com,linux.dev,linuxfoundation.org,raspberrypi.com,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,googlegroups.com];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim,messagingengine.com:dkim];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BEG5OJNCRX7ZCISUR23OQCPA2RNQOEGQ
X-Message-ID-Hash: BEG5OJNCRX7ZCISUR23OQCPA2RNQOEGQ
X-Mailman-Approved-At: Mon, 28 Nov 2022 06:34:02 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, David Gow <davidgow@google.com>, Brendan Higgins <brendan.higgins@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/24] drm/tests: helpers: Rename the device init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BEG5OJNCRX7ZCISUR23OQCPA2RNQOEGQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0845695117375837242=="


--===============0845695117375837242==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="acmx5lmtcx2n462u"
Content-Disposition: inline


--acmx5lmtcx2n462u
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 25, 2022 at 11:10:02AM -0300, Ma=EDra Canal wrote:
> On 11/23/22 12:25, Maxime Ripard wrote:
> > The name doesn't really fit the conventions for the other helpers in
> > DRM/KMS, so let's rename it to make it obvious that we allocate a new
> > DRM device.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Although I believe using "drm_device" on the function name is a bit
> redundant (maybe drm_kunit_helper_alloc_dev or drm_kunit_helper_alloc_dev=
ice
> would be cleaner),

Yeah, I don't quite like the name either, but we'll need to also
allocate a struct device in the next few patches so we need to make the
distinction between a struct drm_device and a struct device.

Maxime

--acmx5lmtcx2n462u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCY4DSQQAKCRDj7w1vZxhR
xeGkAPkBFLa3lV36E2W1jTknr7iiJBV/Zjt6EB2CqXA8txhT8AD/TvavUqFz4lG/
jgViwFq+5i24QHZJ/YlXq5ZvEZ09pAI=
=52Ai
-----END PGP SIGNATURE-----

--acmx5lmtcx2n462u--

--===============0845695117375837242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0845695117375837242==--
