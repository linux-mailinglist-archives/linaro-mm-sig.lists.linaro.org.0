Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D1972DC7B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 10:30:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 887E643CA9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 08:30:20 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 16A453EBD6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 08:30:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=U7nb8VHi;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9607D60D3A;
	Tue, 13 Jun 2023 08:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81900C433D2;
	Tue, 13 Jun 2023 08:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686645004;
	bh=6d42DbKgu8Ei2jLZ7JrS4wpOmLl2weh1xU1RAzLXuv0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U7nb8VHi1M/V+P+7RhyqjKOtaDVctjbsdOhMSOSeZdtpmUzwbZW43X1xR/GFCmu9D
	 Pb9Y/x+vCtAK8U7dGFQPF9Y7qfMJwP/nvxojlCUh1AOGKywoxSlil/bK8jSpuCeRVr
	 77xOHM9NSqVxSSxU1R2Rwu1eUDlCfD6icKD4mM26GSezBtoJ2/ZgCUCgpnpnEiXIcz
	 1412f1T/WfxFCq3J1fcM0kqYpzfpZ10ycBhQSuKDs9oRvJxRZjpgbdKVuoL6lHQMp/
	 fcxq1alrDVAJj1RpDQWpoWJPbrjcZLU+FKoEn+2fu2cynGpCjD2SV9P5DlpZdVX/AY
	 T8mGvcH1F/ZEw==
Date: Tue, 13 Jun 2023 10:30:01 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sui Jingfeng <suijingfeng@loongson.cn>
Message-ID: <a23d6mgl4fbfa4ucgjvwgw7l3somxo4tkhit7ygy55fldlum56@vm3tyjdsx24l>
References: <20230520105718.325819-1-15330273260@189.cn>
 <d4e647d8-294c-abd7-40c6-37381796203d@loongson.cn>
MIME-Version: 1.0
In-Reply-To: <d4e647d8-294c-abd7-40c6-37381796203d@loongson.cn>
X-Rspamd-Queue-Id: 16A453EBD6
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[139.178.84.217:server fail,52.25.139.140:server fail];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[189.cn,linux.intel.com,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.loongnix.cn];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JCVPGSB7YAR3M3CXR2XB4U4SHB7FZBXP
X-Message-ID-Hash: JCVPGSB7YAR3M3CXR2XB4U4SHB7FZBXP
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sui Jingfeng <15330273260@189.cn>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 0/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JCVPGSB7YAR3M3CXR2XB4U4SHB7FZBXP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3127801145255016159=="


--===============3127801145255016159==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6kkkzeylcfa5wg45"
Content-Disposition: inline


--6kkkzeylcfa5wg45
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 12, 2023 at 10:58:54PM +0800, Sui Jingfeng wrote:
> Hi,
>=20
>=20
> Any ideas for this trivial DC driver? Sorry about my broken English.
>=20
> What to do next? Send a new version?

Thomas already told you to merge it in the previous version:
https://lore.kernel.org/dri-devel/7b77020f-d543-13bf-e178-bc416bcc728d@suse=
=2Ede/

So.. do that?

Maxime

--6kkkzeylcfa5wg45
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZIgpCQAKCRDj7w1vZxhR
xaX9AP98NAUeUldG+9TkOuUCTTK2w4Lhn+TkARbi5tstE7HcyAEAyXSOV9A0A5k7
xuUxndGdKHR5Al+XvMPG/pYoL0jt9w0=
=kRkF
-----END PGP SIGNATURE-----

--6kkkzeylcfa5wg45--

--===============3127801145255016159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3127801145255016159==--
