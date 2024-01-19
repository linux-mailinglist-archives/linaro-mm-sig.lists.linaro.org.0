Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FE2832D70
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 17:45:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A5EE3EF1D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 16:45:09 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id E7C483EC20
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 16:44:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CwrBjiJI;
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=conor@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6BDABCE22CB;
	Fri, 19 Jan 2024 16:44:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2CBBC433F1;
	Fri, 19 Jan 2024 16:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705682685;
	bh=QRRwKq5LqVnkhPlBmuRkLsTSp0aAGvhbAw+sw+G5rKE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CwrBjiJIY6u280JXIzDtHkBHRzWVPvj21WBA3CEh+/RxwVDkP1q76R9RcGOAEyyRK
	 as+ANa1c06TpMg4CSg3jgI/b6cHETC2nV29hrJr/oCc2F4jC0QyHxo5j3CW/6xeQS4
	 2/LhaIaaszvyl5bZLnRvvN3nLgKCAYbpZfcIFEEXQ350rEcRG2RgHKJCnZLeg/8v6w
	 JtuC7tca0XPKKcYmAMa1YjrUPxYJg22gsmy55XF+vjJIA79MEhx/IPY+PiDnwlW7H9
	 9O61Ux0CCCSlgDQ027Dydc5dIrvEJeStSAxt9wKgDpDsIe7mqT7guLB6toTJZZ90sQ
	 XVPPRdo7GkE3w==
Date: Fri, 19 Jan 2024 16:44:39 +0000
From: Conor Dooley <conor@kernel.org>
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Message-ID: <20240119-surrender-both-21c64f5149c4@spud>
References: <20240119063224.29671-1-jason-jh.lin@mediatek.com>
 <20240119063224.29671-3-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20240119063224.29671-3-jason-jh.lin@mediatek.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,mediatek.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E7C483EC20
X-Spamd-Bar: --------
Message-ID-Hash: X4EHARYJMRS4J6AB3X3UJSJSBJW6HFSY
X-Message-ID-Hash: X4EHARYJMRS4J6AB3X3UJSJSBJW6HFSY
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/3] dt-bindings: media: mediatek: mdp: Change mediatek,gce-events to reference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X4EHARYJMRS4J6AB3X3UJSJSBJW6HFSY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8752124917307988036=="


--===============8752124917307988036==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="R17Or0wU+thr7YJr"
Content-Disposition: inline


--R17Or0wU+thr7YJr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 19, 2024 at 02:32:23PM +0800, Jason-JH.Lin wrote:
> Change mediatek,gce-events property to reference mediatek,gce-props.yaml
> instead of defining itself.
>=20
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--R17Or0wU+thr7YJr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZaqm9wAKCRB4tDGHoIJi
0oxFAP426FO4m886BrM5F53nZ1cAx5WLgsXMYRGhDk8jJycBJAEA8wHMS3uLk1xV
EfgQYdDiX0aOUSswVeHTyrGZXsooNgA=
=xSy/
-----END PGP SIGNATURE-----

--R17Or0wU+thr7YJr--

--===============8752124917307988036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8752124917307988036==--
