Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC57AED7DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jun 2025 10:52:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA47C455AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jun 2025 08:52:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id BD3FA41420
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Jun 2025 08:52:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="Rnb7/Q99";
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 32FCB5C435C;
	Mon, 30 Jun 2025 08:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 676EBC4CEE3;
	Mon, 30 Jun 2025 08:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751273527;
	bh=Ahg7O8Gxk7QZFJYCUmSIfBJCpuOCz2nYvFMbHrP/2iY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rnb7/Q99npxt4+sy/4HSiKFvZo1MlJGgYUvd+KkLm835TKC5xc/yyut+O67fq3GGT
	 1n3VjxFgdQbvnJwr26mFQFA82wR2A5bWwo3gravRfVxm0WIQJqCJ491xxxn8troo/U
	 SZ85xtS3gtBB31B6Vmye7O4FpLEHEq2OtOrbySpB6U61gIO4LsTVJXm4FhugCHPOHH
	 1rQoedpYHAW0UEgGGlbRs4IDVJtyTJKTxRxBzlsBdVRFyQxDwt5Gmd+e3TMfBh8KG0
	 7GqmP5hVj7tfjNxzvm74MenTq7ZDeQFk0BsnPEoyOxcSVxTmeEaNZTO0XwFql1ZN3X
	 YwQldfgAN/3hQ==
Date: Mon, 30 Jun 2025 10:52:05 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20250630-sheep-of-fantastic-defiance-fb90c5@houat>
References: <20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@kernel.org>
 <20250617-dma-buf-ecc-heap-v5-2-0abdc5863a4f@kernel.org>
 <20250627192347.GA4032621-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250627192347.GA4032621-robh@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BD3FA41420
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: YOWA4O4F66WNMBXRT53ONE52RSPQA46O
X-Message-ID-Hash: YOWA4O4F66WNMBXRT53ONE52RSPQA46O
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] dma-buf: heaps: Introduce a new heap for reserved memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YOWA4O4F66WNMBXRT53ONE52RSPQA46O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3470432729598304524=="


--===============3470432729598304524==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="azr4p4pnlcb6447b"
Content-Disposition: inline


--azr4p4pnlcb6447b
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 2/2] dma-buf: heaps: Introduce a new heap for reserved
 memory
MIME-Version: 1.0

On Fri, Jun 27, 2025 at 02:23:47PM -0500, Rob Herring wrote:
> > +static int __init carveout_heap_init(void)
> > +{
> > +	struct device_node *rmem_node;
> > +	struct device_node *node;
> > +	int ret;
> > +
> > +	rmem_node =3D of_find_node_by_path("/reserved-memory");
> > +	if (!rmem_node)
> > +		return 0;
> > +
> > +	for_each_child_of_node(rmem_node, node) {
> > +		if (!of_device_is_compatible(node, "carved-out"))
> > +			continue;
> > +
> > +		ret =3D carveout_heap_setup(node);
> > +		if (ret)
> > +			return ret;
> > +	}
>=20
> /reserved-memory nodes get a platform_device, so why not make this a=20
> driver?

Because I never realised we could :)

Thanks, I'll fix it for the next version

Maxime

--azr4p4pnlcb6447b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaGJQNAAKCRAnX84Zoj2+
djLaAYD2EgQb4dg3meUoXBv7w6f/79iKVhck4zIqbs31UtjQyNcrVEBaEwjtBsNJ
YgB/3oQBgIY3V9gHlCVKbJ+ggP4KJRA02e5r9V6Jxeq9kBkBXfo5q+IgLtEti0vG
8D95b72b7w==
=eHPZ
-----END PGP SIGNATURE-----

--azr4p4pnlcb6447b--

--===============3470432729598304524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3470432729598304524==--
