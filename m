Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D9C7D7E18
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Oct 2023 10:08:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE18140202
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Oct 2023 08:07:58 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 40FF73EA1B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Oct 2023 08:07:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=h4BZUaWN;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 99C1561C54;
	Thu, 26 Oct 2023 08:07:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3C32C433C8;
	Thu, 26 Oct 2023 08:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698307663;
	bh=MRgZsiUVmIfZKqCwNfNZ0a7KfMg57CWlHCRug7dRYiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h4BZUaWNpPw0JlhG/Aqlkb6iJ3x6gBmrkWVdvfMKm1Vcpsx5D2OFmlCecVVOI60pS
	 MPEMTlRIOMTF+mBiaE1Kkjwm6SPOPTJzk7p18x/eSJOtErkRe986WGLnOOiT7j42No
	 J2WvuZscQ3o9v89HAWZpvH+SRgCprj9P55k1XTNCKICa39ZENF+0lFSwT3IISmBi7H
	 pkL87DzM9AOHRtDt5HgVxkXv74Q2K8zYYnRCc107VAY40bm/myYUM3IqHF/9GfYBtZ
	 RJ0YUxhTJdrGN8uP0MC3FE+Rt/4/7h6yprElSn+8KGiRYr2g/JfZ3LHj7wusiScWrG
	 zEUttswk1AJJg==
Date: Thu, 26 Oct 2023 10:07:40 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-7-keith.zhao@starfivetech.com>
 <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
MIME-Version: 1.0
In-Reply-To: <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 40FF73EA1B
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[starfivetech.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[139.178.84.217:server fail];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: D6WC4622ZM2JQVYGEYGWGY53UHD5QC7P
X-Message-ID-Hash: D6WC4622ZM2JQVYGEYGWGY53UHD5QC7P
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/6] drm/vs: Add hdmi driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D6WC4622ZM2JQVYGEYGWGY53UHD5QC7P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2246952910173929569=="


--===============2246952910173929569==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2pgpleihh7nbgyu"
Content-Disposition: inline


--l2pgpleihh7nbgyu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 26, 2023 at 01:23:53AM +0300, Dmitry Baryshkov wrote:
> > +static int starfive_hdmi_register(struct drm_device *drm, struct starf=
ive_hdmi *hdmi)
> > +{
> > +	struct drm_encoder *encoder =3D &hdmi->encoder;
> > +	struct device *dev =3D hdmi->dev;
> > +
> > +	encoder->possible_crtcs =3D drm_of_find_possible_crtcs(drm, dev->of_n=
ode);
> > +
> > +	/*
> > +	 * If we failed to find the CRTC(s) which this encoder is
> > +	 * supposed to be connected to, it's because the CRTC has
> > +	 * not been registered yet.  Defer probing, and hope that
> > +	 * the required CRTC is added later.
> > +	 */
> > +	if (encoder->possible_crtcs =3D=3D 0)
> > +		return -EPROBE_DEFER;
> > +
> > +	drm_encoder_helper_add(encoder, &starfive_hdmi_encoder_helper_funcs);
> > +
> > +	hdmi->connector.polled =3D DRM_CONNECTOR_POLL_HPD;
> > +
> > +	drm_connector_helper_add(&hdmi->connector,
> > +				 &starfive_hdmi_connector_helper_funcs);
> > +	drmm_connector_init(drm, &hdmi->connector,
> > +			    &starfive_hdmi_connector_funcs,
> > +			    DRM_MODE_CONNECTOR_HDMIA,
>=20
> On an embedded device one can not be so sure. There can be MHL or HDMI
> Alternative Mode. Usually we use drm_bridge here and drm_bridge_connector.

On an HDMI driver, it's far from being a requirement, especially given
the limitations bridges have.

Maxime

--l2pgpleihh7nbgyu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZToeTAAKCRDj7w1vZxhR
xQohAPsE2kzpXlr9RqQPDtJRNj8AtNNrqzpApALpLI553biaLgD/RpyXbzEyRIo3
cDu23rmpQ4eOQdldwjqobLYIqhayago=
=B4HD
-----END PGP SIGNATURE-----

--l2pgpleihh7nbgyu--

--===============2246952910173929569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2246952910173929569==--
