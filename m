Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B255D788553
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Aug 2023 13:03:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 612F843FE1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Aug 2023 11:03:35 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1F1113F03D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Aug 2023 11:03:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NSgBYasT;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AEACC648D2;
	Fri, 25 Aug 2023 11:03:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5F1BC433C8;
	Fri, 25 Aug 2023 11:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692961410;
	bh=PlBzCJRe8m65lt6EVWU83U+40jTlJi63qn6ZecOweZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NSgBYasTx1ZoO2TlIe5UVLBtr21lPZSAhlDLEjbnRW2RyK5r8CtV+P5cMgCVg+69o
	 2q0VGFXaTbZGss0/1u4CHsj8Lqryy0W++3BGJU5V9aeFiXrkY7YQZJzJlx416MhKpw
	 ZZ1nBKIbfNuZ503/ic6w9IERhRIAio1nUVY/eV1l/n0r8tDpxA05K9wbuvr/EL2q2x
	 6FyAi1CYZ9vmCK8ViwNO82FKdeeqjgUNdg2sZ8Vd2Zri3X6GZCmp10RmKuI2m6wpQH
	 eTq7gBdn8KwxL66XGwOc5TaHXRteKYmbqzN/vqaymHDw8U2IG5yeJiKAakqHkuSYiV
	 ITJss2Xl21Vzw==
Date: Fri, 25 Aug 2023 13:03:27 +0200
From: Maxime Ripard <mripard@kernel.org>
To: e.orlova@ispras.ru
Message-ID: <u366i76e3qhh3ra5oxrtngjtm2u5lterkekcz6y2jkndhuxzli@diujon4h7qwb>
References: <a830685d8b10a00cfe0a86db1ee9fb13@ispras.ru>
MIME-Version: 1.0
In-Reply-To: <a830685d8b10a00cfe0a86db1ee9fb13@ispras.ru>
X-Rspamd-Queue-Id: 1F1113F03D
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.10 / 15.00];
	DWL_DNSWL_HI(-3.50)[kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,linaro.org,amd.com,lists.linaro.org,linuxtesting.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IOXO6GY64OBQ7DRKADUNZGDLNVVPYXLL
X-Message-ID-Hash: IOXO6GY64OBQ7DRKADUNZGDLNVVPYXLL
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: p.zabel@pengutronix.de, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, lvc-project@linuxtesting.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [QUESTION] drm/crtc: precondition for drm_crtc_init_with_planes()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IOXO6GY64OBQ7DRKADUNZGDLNVVPYXLL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3188458524252298397=="


--===============3188458524252298397==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dd5jtdgzjs64ofvs"
Content-Disposition: inline


--dd5jtdgzjs64ofvs
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 25, 2023 at 01:18:46PM +0300, e.orlova@ispras.ru wrote:
> Documentation for drm_crtc_init_with_planes() in
> drivers/gpu/drm/drm_crtc.c states: =ABThe crtc structure should not be
> allocated with devm_kzalloc()=BB.
>=20
> However, in drivers/gpu/drm/stm/ltdc.c
> the 2nd argument of the function drm_crtc_init_with_planes()
> is a structure allocated with devm_kzalloc()
>=20
> Also, in
> drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c
> drivers/gpu/drm/logicvc/logicvc_crtc.c
> drivers/gpu/drm/meson/meson_crtc.c
> drivers/gpu/drm/mxsfb/lcdif_kms.c
> drivers/gpu/drm/mxsfb/mxsfb_kms.c
> drivers/gpu/drm/renesas/shmobile/shmob_drm_crtc.c
> drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> drivers/gpu/drm/sun4i/sun4i_crtc.c
> drivers/gpu/drm/tegra/dc.c
> drivers/gpu/drm/tilcdc/tilcdc_crtc.c
> the 2nd argument of the function drm_crtc_init_with_planes()
> is a field of the structure allocated with devm_kzalloc()
>=20
> Is it correct or can it lead to any problems?

It can lead to use-after-free issues, that's why there's that comment :)

Maxime

--dd5jtdgzjs64ofvs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZOiKfwAKCRDj7w1vZxhR
xVg5AP9VzNEiKZOgh4Ize9Wh5DKiSx1eSPouvE8JTEP/WJsy+QEA1C5l5XrIknkg
Dp1X3M5uO0U25bmLkDl1x7lgHcKMBQE=
=sPcz
-----END PGP SIGNATURE-----

--dd5jtdgzjs64ofvs--

--===============3188458524252298397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3188458524252298397==--
