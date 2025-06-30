Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA85AEE4D0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jun 2025 18:41:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 244B945610
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jun 2025 16:41:52 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 363AD41420
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Jun 2025 16:41:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XWA673Ws;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E79B9A5353E;
	Mon, 30 Jun 2025 16:41:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49E12C4CEE3;
	Mon, 30 Jun 2025 16:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751301700;
	bh=+fzJq5ixdgdDsnkL9zpCdV4dSmtyoicJ975neBoN5dc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XWA673WsZi/9juIWGGOo2N0P7u/VnXFY70GIwq4ILqSo0txSgrnfrhwvMbi5EuxIg
	 HjEW2c/DnrBbLWdxkAOamPc82T8aeofo/G7Ne4oVWi4yLOFWVb2WkxwXmwVfrqGk8K
	 6i5rj1Vi8eNFPPn5u3ilSoIxOdZUluLG4AU/WmrLd63syv+OsN4nQifQuav+99BfZ1
	 3+66aCbMtVWr2QiS8fpTGd/FujkAd01dgEg8gZ8vbMP5hkYcBwFDzfd4h7U5CO2KFF
	 yKI925sbdHiKwYMV+VnQVcDc/CvZuPufZ9qilMn2d+7oGQCpA9tgFJ15Jt5oW4LvUv
	 InjlAXiwpavfA==
Date: Mon, 30 Jun 2025 18:41:38 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20250630-attentive-fortunate-turaco-2e36d2@houat>
References: <20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@kernel.org>
 <20250617-dma-buf-ecc-heap-v5-1-0abdc5863a4f@kernel.org>
 <20250627193132.GB4032621-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250627193132.GB4032621-robh@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 363AD41420
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[devicetree.org:url];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: JEQDV2GN5WMTMSRRNIJFHOW74DUOUD3W
X-Message-ID-Hash: JEQDV2GN5WMTMSRRNIJFHOW74DUOUD3W
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dt-bindings: reserved-memory: Introduce carved-out memory region binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JEQDV2GN5WMTMSRRNIJFHOW74DUOUD3W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2132188711329481409=="


--===============2132188711329481409==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="jeexq3trpqyreenu"
Content-Disposition: inline


--jeexq3trpqyreenu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 1/2] dt-bindings: reserved-memory: Introduce
 carved-out memory region binding
MIME-Version: 1.0

Hi Rob,

On Fri, Jun 27, 2025 at 02:31:32PM -0500, Rob Herring wrote:
> On Tue, Jun 17, 2025 at 02:25:40PM +0200, Maxime Ripard wrote:
> > Some parts of the memory can be dedicated to specific purposes and
> > exposed as a dedicated memory allocator.
> >=20
> > This is especially useful if that particular region has a particular
> > properties the rest of the memory doesn't have. For example, some
> > platforms have their entire RAM covered by ECC but for a small area
> > meant to be used by applications that don't need ECC, and its associated
> > overhead.
> >=20
> > Let's introduce a binding to describe such a region and allow the OS to
> > create a dedicated memory allocator for it.
> >=20
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  .../bindings/reserved-memory/carved-out.yaml       | 49 ++++++++++++++=
++++++++
> >  1 file changed, 49 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/reserved-memory/carved-o=
ut.yaml b/Documentation/devicetree/bindings/reserved-memory/carved-out.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..9ab5d1ebd9ebd9111b7c064=
fabe1c45e752da83b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reserved-memory/carved-out.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/reserved-memory/carved-out.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Carved-out Memory Region
> > +
> > +description: |
>=20
> Don't need '|'.
>=20
> > +  Specifies that the reserved memory region has been carved out of the
> > +  main memory allocator, and is intended to be used by the OS as a
> > +  dedicated memory allocator.
>=20
> Other than the commit msg, it is completely lost that this is for=20
> ECC-less memory.

Because it's not. One of the first feedback I got was that the way to
identify what a heap provides was the heap name.

So, as far as the binding go, a heap just exposes a chunk of memory the
memory allocator wouldn't use. The actual semantics of that chunk of
memory don't matter.

> This description applies to CMA area as well. So what's the difference?

Yeah, I kind of agree, which is why I initially started with a property,
and you then asked for a compatible.

CMA (assuming you mean the allocator, not the CMA heap) is still more
though: it only covers some shared-dma-pool memory regions.

> > +
> > +maintainers:
> > +  - Maxime Ripard <mripard@kernel.org>
> > +
> > +properties:
> > +  compatible:
> > +    const: carved-out
>=20
> Isn't everything in reserved-memory a carve out for some purpose. I'm=20
> not sure if I'd add 'no ECC' or more along the lines of how this is=20
> used. The latter might be useful on platforms which can't disable ECC or=
=20
> don't have ECC at all.

I don't think we need any discriminant for ECC vs non-ECC. It's just a
carved-out memory region at some offset, and the system won't use it.

Maxime

--jeexq3trpqyreenu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaGK+PQAKCRAnX84Zoj2+
dq2AAYC/J24SOTg9EyGxv1tRVE/FGgngduiiWSIJWT4SdOTb4teAfc/lr4p6puTF
EHX68lcBgJBy43wXgAeh2TO5BWA3Jm3akW90xbdFedZD8i8vgdHvFYsiZ1npib1E
ysoB3LOWSA==
=JcqH
-----END PGP SIGNATURE-----

--jeexq3trpqyreenu--

--===============2132188711329481409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2132188711329481409==--
