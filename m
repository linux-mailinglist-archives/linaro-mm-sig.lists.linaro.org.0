Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF6276B427
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 13:59:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E68E3F0B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 11:59:26 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 2B1C03F0B4
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 11:59:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bvKF6P7N;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C429C61576;
	Tue,  1 Aug 2023 11:59:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB31EC433C8;
	Tue,  1 Aug 2023 11:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690891160;
	bh=6AHpkW+1Vl/pIzsm+KzIZOLB+nxZCt4ZJydu7QiZDjE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bvKF6P7N0m3zB0nnePyxPnqDHStcVAcph1SwLx0+grePPtgnTZkfrH+Fplm7rCBKp
	 h3n0nQ/UsSvLX8Plk1e3UVqTo8ZwD+N+zyEellIcLUP9sD8c8+x6xNeZhcXv62Tu7Q
	 KSMbKT2G3GaS+fnhS5MrjdxtvBM4fyxEZQuJNPoR2prZrNgo0D2Y/WtFiOQP0q0oby
	 AOUofNC93tdVQ4juvzFjTgPfP6pDdobkv8ule29qz6CY95lirubFicboI7WUE7QY6Q
	 D8FR7qkTgvU+bULj8KDUb/Y7T0Qrl+01Zo/MrswIU5jeQ4pzh7JkVzjcMnmWlDSxoE
	 vg8kR/Vw1bvOg==
Date: Tue, 1 Aug 2023 13:59:17 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Message-ID: <gkavtc4qkwwgpre5to4sjvd3e6s3a2mo6qoychxid6buiu2c2v@xx47v5erxsvn>
References: <20230801101030.2040-1-keith.zhao@starfivetech.com>
 <20230801101030.2040-8-keith.zhao@starfivetech.com>
MIME-Version: 1.0
In-Reply-To: <20230801101030.2040-8-keith.zhao@starfivetech.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2B1C03F0B4
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	RCPT_COUNT_TWELVE(0.00)[29];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[starfivetech.com:email];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: YRJGWDXFVWZ67IWE6ISNWD2IEXS3GMXS
X-Message-ID-Hash: YRJGWDXFVWZ67IWE6ISNWD2IEXS3GMXS
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuan
 g.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 v1 7/7] drm/vs: Add hdmi
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRJGWDXFVWZ67IWE6ISNWD2IEXS3GMXS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4870333942256129047=="


--===============4870333942256129047==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xwzbtwdfjoxzmbg"
Content-Disposition: inline


--3xwzbtwdfjoxzmbg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 01, 2023 at 06:10:30PM +0800, Keith Zhao wrote:
> add hdmi driver as encoder and connect
>=20
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>

You've ignored most of the comments I made on the previous version, so
please go back to that mail and fix everything you've ignored.

https://lore.kernel.org/dri-devel/ayygsdwzogu4ygkobs7zkroxicxtixtp5bxayn5vz=
k4qlkwt6x@yo5s2qwt77mo/

Maxime

--3xwzbtwdfjoxzmbg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZMjzlQAKCRDj7w1vZxhR
xW+vAP9NEuZQurYGyBDJt6E4rkErtbkDJOx6fO0bKpk2+IjzDwD/eSkZ7tV0bwjK
r1MKgVz2slSLf3AktsOtIlI162uxrQ4=
=9TvY
-----END PGP SIGNATURE-----

--3xwzbtwdfjoxzmbg--

--===============4870333942256129047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4870333942256129047==--
