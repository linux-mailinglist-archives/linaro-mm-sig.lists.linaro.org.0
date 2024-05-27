Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C258D02B9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 May 2024 16:07:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 135563F3AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 May 2024 14:07:15 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 791543EE64
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2024 14:07:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ehx7Rqti;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3CA69CE0F0F;
	Mon, 27 May 2024 14:07:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EFFEC2BBFC;
	Mon, 27 May 2024 14:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818820;
	bh=n1BDsmlQwhdu8pSjqXWApM0rUAlRIrsJQgYV+C9j7cA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ehx7RqtiTvj5UM2EojGrpqHk52rXrmmpEwVgxNg4ez3WeVXuEJpLRg8XVEvdmrbIi
	 XZAuJRh1npz3bYbtsjUh/YnyDryXBLknjyAH+2fnXiAC3o/uXlZj+MxC6TJhl7+uQu
	 PNp3arxQctgWDfxJzJmYskrpp10Ann7gjf6LGKvmumNN0sRXDK8mX7Ay4UhZKU4P+E
	 bXZQEzvWmyGDXC6wpSvzHeGalmiojKSz0HI41qiC1/HaX6fLB4hQWA6jDLPwwXUNFN
	 0r/wqkaGHE9Bn/1GP+O0/xpnM6KIWVr16Fp7YGyNxdmY4Zc79BAHjTImWXTmD2Xa2x
	 tIqnw7GJC01tQ==
Date: Mon, 27 May 2024 16:06:58 +0200
From: Maxime Ripard <mripard@kernel.org>
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Message-ID: <20240527-determined-sage-piculet-bfec4a@houat>
References: <20240525232928.5524-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20240525232928.5524-1-jason-jh.lin@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 791543EE64
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,gmail.com,ffwll.ch,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,mediatek.com,google.com,mediatek.corp-partner.google.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: WHFACPKQKNLG4N34MBQ4ERHGUABJCN4W
X-Message-ID-Hash: WHFACPKQKNLG4N34MBQ4ERHGUABJCN4W
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Chun-Kuang Hu <chunkuang.hu@kernel.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>, Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 0/7] Add mediate-drm secure flow for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WHFACPKQKNLG4N34MBQ4ERHGUABJCN4W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7622469348804490711=="


--===============7622469348804490711==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="lkrd7n7cfhfphpnl"
Content-Disposition: inline


--lkrd7n7cfhfphpnl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, May 26, 2024 at 07:29:21AM GMT, Jason-JH.Lin wrote:
> From: Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>
>=20
> Memory Definitions:
> secure memory - Memory allocated in the TEE (Trusted Execution
> Environment) which is inaccessible in the REE (Rich Execution
> Environment, i.e. linux kernel/userspace).
> secure handle - Integer value which acts as reference to 'secure
> memory'. Used in communication between TEE and REE to reference
> 'secure memory'.
> secure buffer - 'secure memory' that is used to store decrypted,
> compressed video or for other general purposes in the TEE.
> secure surface - 'secure memory' that is used to store graphic buffers.
>=20
> Memory Usage in SVP:
> The overall flow of SVP starts with encrypted video coming in from an
> outside source into the REE. The REE will then allocate a 'secure
> buffer' and send the corresponding 'secure handle' along with the
> encrypted, compressed video data to the TEE. The TEE will then decrypt
> the video and store the result in the 'secure buffer'. The REE will
> then allocate a 'secure surface'. The REE will pass the 'secure
> handles' for both the 'secure buffer' and 'secure surface' into the
> TEE for video decoding. The video decoder HW will then decode the
> contents of the 'secure buffer' and place the result in the 'secure
> surface'. The REE will then attach the 'secure surface' to the overlay
> plane for rendering of the video.
>=20
> Everything relating to ensuring security of the actual contents of the
> 'secure buffer' and 'secure surface' is out of scope for the REE and
> is the responsibility of the TEE.
>=20
> DRM driver handles allocation of gem objects that are backed by a 'secure
> surface' and for displaying a 'secure surface' on the overlay plane.
> This introduces a new flag for object creation called
> DRM_MTK_GEM_CREATE_RESTRICTED which indicates it should be a 'secure
> surface'. All changes here are in MediaTek specific code.
> ---
> TODO:
> 1) Drop MTK_DRM_IOCTL_GEM_CREATE and use DMA_HEAP_IOCTL_ALLOC in userspace
> 2) DRM driver use secure mailbox channel to handle normal and secure flow
> 3) Implement setting mmsys routing table in the secure world series

I'm not sure what you mean here. Why are you trying to upstream
something that still needs to be removed from your patch series?

Also, I made some comments on the previous version that have been
entirely ignored and still apply on this version:
https://lore.kernel.org/dri-devel/20240415-guppy-of-perpetual-current-3a797=
4@houat/

Maxime

--lkrd7n7cfhfphpnl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZlSTgQAKCRAnX84Zoj2+
dhjrAYDF6bR4iF7gYsP2hmqjPJbIPGkYuq7u09k5+hu3sX7JKhq1g9n5v5hX7VH6
mU5WwlwBgN4eDfGwGhtYaDZJA62JTLpJVnIl2BS0XO5+OiU6EzKrzRJluNKcWPpS
+8EyU4dfAQ==
=0kUw
-----END PGP SIGNATURE-----

--lkrd7n7cfhfphpnl--

--===============7622469348804490711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7622469348804490711==--
