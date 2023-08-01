Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7536276B633
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 15:48:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EF7E43E2A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 13:48:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C18B83F0B4
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 13:48:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=LEOsTFaP;
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=conor@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 56B9A615AB;
	Tue,  1 Aug 2023 13:48:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21CBCC433C7;
	Tue,  1 Aug 2023 13:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690897709;
	bh=yBCVhMlvIlShUF7vexVldIJJJDKdGoCO+kY/QWgk+y4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LEOsTFaPuSkOXKXis4cSvPwJH4oJS/olSV3RAfl00cz/5RO/7LBToy5zGVrRhlAoJ
	 cPuFKLfu5NIYRCpeX30pbTJOBHfhmdYGqgdxFWqVJ69/eLbsHmH2UVAZrUAebgxi7M
	 CKCfWsxFSIhn1QOpieuRHDJiXfN49DhTCP8JMq8oEFIw0TJk/y6pmCwRhPfmnI9tKM
	 QieJVJ290CaLDW/b1nVjqLG+NMheNvZSmhtq18m01j+/6uwuDEyO/M2HF3kHU+iJe2
	 RXOkSQCDn1E44ny2XzbvN/XsadqL+c9c8KqdtjpqteAhxkd7FlfyBoZVk8sLJpVmfr
	 vhmpuZH4v4JIw==
Date: Tue, 1 Aug 2023 14:48:21 +0100
From: Conor Dooley <conor@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Message-ID: <20230801-reviver-clip-5d1a8d22edab@spud>
References: <20230801101030.2040-1-keith.zhao@starfivetech.com>
 <20230801101030.2040-2-keith.zhao@starfivetech.com>
MIME-Version: 1.0
In-Reply-To: <20230801101030.2040-2-keith.zhao@starfivetech.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C18B83F0B4
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[30];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com]
Message-ID-Hash: 4I5QLFBBHKV5JRR53S65QNHRNO47XLXG
X-Message-ID-Hash: 4I5QLFBBHKV5JRR53S65QNHRNO47XLXG
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivete
 ch.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 v1 1/7] MAINTAINERS: Update starfive maintainers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4I5QLFBBHKV5JRR53S65QNHRNO47XLXG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1642337193982079212=="


--===============1642337193982079212==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IVqccmOPnJ1WnFlO"
Content-Disposition: inline


--IVqccmOPnJ1WnFlO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 01, 2023 at 06:10:24PM +0800, Keith Zhao wrote:
> update starfive maintainers
>=20
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>

Why is this a standalone patch, before you've even added any of the
files in question?

> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3be1bdfe8..daadd1707 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6760,6 +6760,13 @@ S:	Supported
>  T:	git git://anongit.freedesktop.org/drm/drm-misc
>  F:	drivers/gpu/drm/udl/
> =20
> +DRM DRIVERS FOR STARFIVE
> +M:	Keith Zhao <keith.zhao@starfivetech.com>
> +L:	dri-devel@lists.freedesktop.org
> +S:	Maintained
> +T:	git git://anongit.freedesktop.org/drm/drm-misc
> +F:	Documentation/devicetree/bindings/display/starfive/
> +
>  DRM DRIVER FOR VIRTUAL KERNEL MODESETTING (VKMS)
>  M:	Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
>  M:	Melissa Wen <melissa.srw@gmail.com>
> --=20
> 2.34.1
>=20

--IVqccmOPnJ1WnFlO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMkNJQAKCRB4tDGHoIJi
0lC7AP0fuE7TbAcoI8Ol6wcV1gi8Wbfl+gmu5cTOS7xJbEy+PgD+IEg0kjZSlNlt
PYRMDt5Lz1ZoFzNdZ8Dew5xtfjk8oAY=
=0VQt
-----END PGP SIGNATURE-----

--IVqccmOPnJ1WnFlO--

--===============1642337193982079212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1642337193982079212==--
