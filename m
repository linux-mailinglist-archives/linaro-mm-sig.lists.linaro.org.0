Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E0870F2CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:31:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65F2C41406
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:31:52 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 44F783E940
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 17:28:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=RD5m7lY8;
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=conor@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D88DB6347B;
	Wed, 17 May 2023 17:28:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3619C4339B;
	Wed, 17 May 2023 17:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684344523;
	bh=C3rhU6ql3cfx2nqHQAamUs5eDbPSPa+ws3rxF+aWa1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RD5m7lY8p7R/XOcqyBVFFZfqAIWQot+4Wz9y1pVEPguZz2/zJZLnuJutREWwZWyNY
	 8dvbV1paGoF2P0cxi6Uhrp5PFkO1JcmumAbu0u+pR+SmGiC96WQYfYVph3FNqAyNJO
	 g8+KA1tA0og4KZkEz20nLQ6lUA4RKKJ6JKWYCuSSoKkLOb7jU/skUjv2Sq9R7JC12Y
	 k6wrrngs03G61v7aIAMQsOHNgQxLFr/Av1eu2qQt6F99nsjB89kk8KazKnTkI3+bzA
	 0ttHn01LOdkGQ/rvn9VobAo0bcVV9/GLcaQWQ0AhBh8CG/27P16Ji+ywYPDyAASVPX
	 W5hLvuK5Yeb2w==
Date: Wed, 17 May 2023 18:28:36 +0100
From: Conor Dooley <conor@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Message-ID: <20230517-deceptive-filtrate-9acd07071371@spud>
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-8-abailon@baylibre.com>
 <c32f0c3f-b43a-7045-38cc-2c11c7bb571e@collabora.com>
MIME-Version: 1.0
In-Reply-To: <c32f0c3f-b43a-7045-38cc-2c11c7bb571e@collabora.com>
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[139.178.84.217:server fail];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	URIBL_BLOCKED(0.00)[baylibre.com:email,dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 44F783E940
X-Spamd-Bar: --------
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6MGCKEE6J2KYQKVISL33WAQYJ7KR2E6V
X-Message-ID-Hash: 6MGCKEE6J2KYQKVISL33WAQYJ7KR2E6V
X-Mailman-Approved-At: Wed, 24 May 2023 09:31:49 +0000
CC: Alexandre Bailon <abailon@baylibre.com>, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MGCKEE6J2KYQKVISL33WAQYJ7KR2E6V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8220620756294356024=="


--===============8220620756294356024==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DPep3TX9ZmccIKnm"
Content-Disposition: inline


--DPep3TX9ZmccIKnm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 17, 2023 at 05:04:00PM +0200, AngeloGioacchino Del Regno wrote:
> Il 17/05/23 16:52, Alexandre Bailon ha scritto:
> > This adds the device tree bindings for the APU DRM driver.
> >=20
> > Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> > Reviewed-by: Julien Stephan <jstephan@baylibre.com>
> > ---
> >   .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++
>=20
> mediatek,mt(model)-apu.yaml
>=20
> >   1 file changed, 38 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.=
yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml b/D=
ocumentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> > new file mode 100644
> > index 000000000000..6f432d3ea478
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> > @@ -0,0 +1,38 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/gpu/mediatek,apu-drm.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: AI Processor Unit DRM
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,apu-drm
>=20
> const: mediatek,mt8195-apu (or whatever else).

Aye, and drop the references to DRM in the title field too (and add the
vendor name?).

>=20
> ...besides, I don't think that this patch even belongs to this series? :-)
> Spoiler alert! :-)

Well, I do not know what this means - but if it is being respun as part
of some other work, a description field should be added to the binding.

Cheers,
Conor.


--DPep3TX9ZmccIKnm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGUOxAAKCRB4tDGHoIJi
0tq/AQCEx0ykFfDTB4Fn6jIhxnkBk2YlIWinWZykIWz+PlyIaQD7B+GkFiVdN1GH
F6vvIFXtMcll02nyunl0Xx5gYXvbzAQ=
=+2H9
-----END PGP SIGNATURE-----

--DPep3TX9ZmccIKnm--

--===============8220620756294356024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8220620756294356024==--
