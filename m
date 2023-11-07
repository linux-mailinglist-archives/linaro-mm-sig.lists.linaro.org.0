Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEB07E375D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Nov 2023 10:19:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1AC63EA4D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Nov 2023 09:19:43 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D985F3EA4D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Nov 2023 09:19:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NYHtnTJn;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4A83C61171;
	Tue,  7 Nov 2023 09:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CE03C433C8;
	Tue,  7 Nov 2023 09:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699348767;
	bh=VDrXsVNkm+N8iNlJC3ZwEH4c+vJY+PF2deM4StXlHO8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NYHtnTJnvG6VbnZXS27Xlyz8fAbAUOKKK+C0hD/yaEtP3hsK1Ft/lHn10pWx8x1ar
	 lvK7xSDqD7EuZfakWhLeb+ssDHh2t/ywB0jfMWGhw0gQ7PD0kmMLqM52eTbYssUDAU
	 0b+6+E6otlZyPvBUDvMpMsvMC80povFl+2nQNBvX7nCWH+5ucojPZNMfaeK1Z076i8
	 Mk3Y3AaVvEcXbmZ1safxJou7RShM8a6rP+ur+hRMrkOU4u4ojoBlei0eTHmSOB9+eG
	 PxF2bIabLg/DSeV0GPKgiGapHIOaZLvAViYf+VDWadCax+CBHM6PCRQZyguJRXGzRG
	 b8tJ6WJhB2NUA==
Date: Tue, 7 Nov 2023 10:19:24 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <rx7oxrxs6dgwdkdu4l7y74yek4656jejixzccryml6jl6t5elp@jvk7agdcljwg>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-7-keith.zhao@starfivetech.com>
 <70805ff2-56a8-45e1-a31c-ffb0e84749e5@linaro.org>
 <3twc4zoohon7uujypgjtlnryfmebx4osvpykagnwr5nemmqz2w@w4vw55uswebh>
 <CAA8EJppxQ7J8DEDFsWzPL8bDpNW-KY0nhUA++zDBRpMCpP-bkA@mail.gmail.com>
 <344veqjvvwlo7vls2kdlgjggf77of2ijxwc2hmk7tarm75ugcs@bmozk23uqxqr>
 <CAA8EJpomaDoJVkq+_NhcxqOs6X-dFd=Vo9Wtqnp8egNaWzDH2Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA8EJpomaDoJVkq+_NhcxqOs6X-dFd=Vo9Wtqnp8egNaWzDH2Q@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D985F3EA4D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[starfivetech.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: TTGZUYRCYMTXRE5VQSFZC4TMOW2OGVBZ
X-Message-ID-Hash: TTGZUYRCYMTXRE5VQSFZC4TMOW2OGVBZ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/6] drm/vs: Add hdmi driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TTGZUYRCYMTXRE5VQSFZC4TMOW2OGVBZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3251594130506947498=="


--===============3251594130506947498==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sx3kokd2nvv34uc7"
Content-Disposition: inline


--sx3kokd2nvv34uc7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Oct 29, 2023 at 06:52:24PM +0200, Dmitry Baryshkov wrote:
> On Thu, 26 Oct 2023 at 14:53, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Thu, Oct 26, 2023 at 11:57:22AM +0300, Dmitry Baryshkov wrote:
> > > On Thu, 26 Oct 2023 at 11:07, Maxime Ripard <mripard@kernel.org> wrot=
e:
> > > >
> > > > On Thu, Oct 26, 2023 at 01:23:53AM +0300, Dmitry Baryshkov wrote:
> > > > > > +static int starfive_hdmi_register(struct drm_device *drm, stru=
ct starfive_hdmi *hdmi)
> > > > > > +{
> > > > > > +   struct drm_encoder *encoder =3D &hdmi->encoder;
> > > > > > +   struct device *dev =3D hdmi->dev;
> > > > > > +
> > > > > > +   encoder->possible_crtcs =3D drm_of_find_possible_crtcs(drm,=
 dev->of_node);
> > > > > > +
> > > > > > +   /*
> > > > > > +    * If we failed to find the CRTC(s) which this encoder is
> > > > > > +    * supposed to be connected to, it's because the CRTC has
> > > > > > +    * not been registered yet.  Defer probing, and hope that
> > > > > > +    * the required CRTC is added later.
> > > > > > +    */
> > > > > > +   if (encoder->possible_crtcs =3D=3D 0)
> > > > > > +           return -EPROBE_DEFER;
> > > > > > +
> > > > > > +   drm_encoder_helper_add(encoder, &starfive_hdmi_encoder_help=
er_funcs);
> > > > > > +
> > > > > > +   hdmi->connector.polled =3D DRM_CONNECTOR_POLL_HPD;
> > > > > > +
> > > > > > +   drm_connector_helper_add(&hdmi->connector,
> > > > > > +                            &starfive_hdmi_connector_helper_fu=
ncs);
> > > > > > +   drmm_connector_init(drm, &hdmi->connector,
> > > > > > +                       &starfive_hdmi_connector_funcs,
> > > > > > +                       DRM_MODE_CONNECTOR_HDMIA,
> > > > >
> > > > > On an embedded device one can not be so sure. There can be MHL or=
 HDMI
> > > > > Alternative Mode. Usually we use drm_bridge here and drm_bridge_c=
onnector.
> > > >
> > > > On an HDMI driver, it's far from being a requirement, especially gi=
ven
> > > > the limitations bridges have.
> > >
> > > It's a blessing that things like MHL / HDMI-in-USB-C / HDMI-to-MyDP
> > > are not widely used in the wild and are mostly non-existing except
> > > several phones that preate wide DP usage.
> >
> > And those can be supported without relying on bridges.
>=20
> Yes, they likely can, in the way that nouveau handles I2C TV encoders.
> But I don't think this can scale. We can have different devices
> attached to the DSI, LVDS, HDMI and even DP image sources. I don't see
> a scalable solution for either of them. E.g. by switching drm/msm to
> use panel bridges for DSI panels we were able to significantly unify
> and simplify code paths.

I'm glad it worked fine for drm/msm, but what I don't really like is the
current dogma that *everything* should be a bridge, and that's just a
poor guideline.

> > > Using drm_connector directly prevents one from handling possible
> > > modifications on the board level. For example, with the DRM connector
> > > in place, handling a separate HPD GPIO will result in code duplication
> > > from the hdmi-connector driver. Handling any other variations in the
> > > board design (which are pretty common in the embedded world) will also
> > > require changing the driver itself. drm_bridge / drm_bridge_connector
> > > save us from those issues.
> >
> > And we have other solutions there too. Like, EDIDs are pretty much in
> > the same spot with a lot of device variations, but it also works without
> > a common driver. I'd really wish we were having less bridges and more
> > helpers, but here we are.
> >
> > > BTW: what are the limitations of the drm_bridge wrt. HDMI output? I'm
> > > asking because we heavily depend on the bridge infrastructure for HDMI
> > > output. Maybe we are missing something there, which went unnoticed to
> > > me and my colleagues.
> >
> > A bridge cannot extend the connector state or use properties, for
> > example. It works for basic stuff but falls apart as soon as you're
> > trying to do something slightly advanced.
>=20
> Ack. I agree, we didn't have a necessity to implement properties up to
> now. But that sounds like an interesting topic for DSI-to-HDMI bridges
> and HDCP support. I'll need to check if any of the RB3/RB5/Dragonboard
> bridges are programmed with the HDCP keys.

Aside from HDCP, the current color management work will also require to
expose properties on the connectors.

Maxime

--sx3kokd2nvv34uc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZUoBHAAKCRDj7w1vZxhR
xWiBAP4sevvTIl4u+we2L7l/PqToVfQ/nXueZ0RTUgw/AJ/I1wEA+wM7mB5NCTiB
uAat91IEFc4bWWOTLkkDTh9pBOjkfwg=
=28g0
-----END PGP SIGNATURE-----

--sx3kokd2nvv34uc7--

--===============3251594130506947498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3251594130506947498==--
