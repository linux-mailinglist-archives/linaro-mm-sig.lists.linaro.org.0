Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AD50F8395A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 18:01:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51AEF43F87
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 17:01:31 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 8D6E53EFCF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 17:01:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="EkGZ+/og";
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=conor@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B5D03CE2EDC;
	Tue, 23 Jan 2024 17:01:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B2FBC433F1;
	Tue, 23 Jan 2024 17:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706029279;
	bh=V+pi3c5KR+NexGtTEkvtMJ8NNNixuoR/P6ynDkGNHog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EkGZ+/ogS6+hCHS8WHjmlSxTgntXLY5/EvV7KM/I0UJQsFIvfYFISudTysjnMMAtm
	 XBN8NJ1rWx0kgM3kDM3ITGf+2vNTRV5P70FmMznXtyuaO/VZVvKJy/EIPztnP4fY8b
	 fMhzPv3e/J8qlgnYBt5k9wMH2ZqDGtqkCuEeOgOZf4E+zdf7KQeLHXyAoLVbHeyuy7
	 ypaKJbkV6koOWVdtRSWwXeybmQyzWHpyqUVXZQBJLlid3iUCUsGSaQgDjp2VLEpDjc
	 NTH3uZG2rSC8dWPP2DSbD5Jd3wsbUr2TeN6Lp/ysx/0OjMe71Z7r7VpGpddE9Hn3bJ
	 MI4xI7Pgdt9lw==
Date: Tue, 23 Jan 2024 17:01:13 +0000
From: Conor Dooley <conor@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Message-ID: <20240123-powwow-drainable-77dfd6158b05@spud>
References: <20240119063224.29671-1-jason-jh.lin@mediatek.com>
 <20240119063224.29671-2-jason-jh.lin@mediatek.com>
 <20240119-demote-fragment-624a35367a87@spud>
 <9c447297-2738-4b63-9da9-0d004660e65d@collabora.com>
MIME-Version: 1.0
In-Reply-To: <9c447297-2738-4b63-9da9-0d004660e65d@collabora.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8D6E53EFCF
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
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: LO34OCRZFM7XHSYHVMHRNF2YUMQAMOXI
X-Message-ID-Hash: LO34OCRZFM7XHSYHVMHRNF2YUMQAMOXI
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/3] dt-bindings: mailbox: Add mediatek,gce-props.yaml
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LO34OCRZFM7XHSYHVMHRNF2YUMQAMOXI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8768248496241702258=="


--===============8768248496241702258==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2CTCg0wQKdRlifcE"
Content-Disposition: inline


--2CTCg0wQKdRlifcE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 22, 2024 at 11:38:15AM +0100, AngeloGioacchino Del Regno wrote:
> Il 19/01/24 17:44, Conor Dooley ha scritto:
> > Rob,
> >=20
> > On Fri, Jan 19, 2024 at 02:32:22PM +0800, Jason-JH.Lin wrote:
> > > Add mediatek,gce-props.yaml for common GCE properties that is used for
> > > both mailbox providers and consumers. We place the common property
> > > "mediatek,gce-events" in this binding currently.
> > >=20
> > > The property "mediatek,gce-events" is used for GCE event ID correspon=
ding
> > > to a hardware event signal sent by the hardware or a sofware driver.
> > > If the mailbox providers or consumers want to manipulate the value of
> > > the event ID, they need to know the specific event ID.
> > >=20
> > > Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> > > ---
> > >   .../bindings/mailbox/mediatek,gce-props.yaml  | 52 ++++++++++++++++=
+++
> >=20
> > Is bindings/mailbox the correct directory to put this in?
> >=20
>=20
> Well, the GCE is a mailbox :-)
>=20
> ...but I get why you're asking... and I don't think that this should go to
> arm/mediatek/ as it's really just only referring to extra properties for =
kind of
> "special" mailbox client events...

gce is a mailbox, but this isn't a binding for the mailbox itself, hence
me wondering. I haven't been able to think of something better though,
so
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--2CTCg0wQKdRlifcE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZa/w2QAKCRB4tDGHoIJi
0mVkAQD1E1YROaciJvV15+DoVLqDPd5wy0CwA0/B+tXa1nnLGAEAx7CXc/CtIrWm
h/V9z3ZETpXmdBl0DoEl6myfpxb9pgc=
=/QkO
-----END PGP SIGNATURE-----

--2CTCg0wQKdRlifcE--

--===============8768248496241702258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8768248496241702258==--
