Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 58065AFB55C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 15:54:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62CED41406
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 13:54:45 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id A23B93F6DD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 13:54:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tuB+3IVA;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0FBD145019;
	Mon,  7 Jul 2025 13:54:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7087EC4CEE3;
	Mon,  7 Jul 2025 13:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751896472;
	bh=M7KnUGVbMMPFMpzTHogMwwXWP2hhGn1bZR4qt/UEBM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tuB+3IVAs04qBzhql8pLHSdKWQR++hPBxFBxzUbIZLSRvqSDQ9wFNbL4Ysbh5SZEc
	 DUu7ugObZc0dFFCrV/A8tBknd1M80enSCtEkxFd8oNY9uCW7Oa//1p7cqdVTn0FgPO
	 tkzWpN/r732IgTdpy6Kei7OavDdhzEuxGY1r6thD+khTCXMuUK06sRj+q+cy6mJurb
	 dGiM835zw0jdSskaGuixLfTR3dCymPCNErpLf8a+9ESHWr2lnpMujqlAXP6V7mzK75
	 KThVXuJcvAI8RDhTvvFluF9fUu8zUn72+zTAkEly5qhxhxd4t5hiRuby909H5ZI6f4
	 /UXf1G73s14EA==
Date: Mon, 7 Jul 2025 15:54:29 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20250707-cobalt-dingo-of-serenity-dbf92c@houat>
References: <20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@kernel.org>
 <20250617-dma-buf-ecc-heap-v5-1-0abdc5863a4f@kernel.org>
 <20250627193132.GB4032621-robh@kernel.org>
 <20250630-attentive-fortunate-turaco-2e36d2@houat>
 <20250630220819.GA3454648-robh@kernel.org>
 <20250701-frisky-resolute-hamster-3dfedc@houat>
MIME-Version: 1.0
In-Reply-To: <20250701-frisky-resolute-hamster-3dfedc@houat>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A23B93F6DD
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCPT_COUNT_TWELVE(0.00)[18];
	URIBL_BLOCKED(0.00)[sea.source.kernel.org:rdns,sea.source.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[172.234.252.31:from]
X-Rspamd-Action: no action
Message-ID-Hash: DI3RAWEIO7IZ5Q6UBERU7RZW7JVL36OS
X-Message-ID-Hash: DI3RAWEIO7IZ5Q6UBERU7RZW7JVL36OS
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dt-bindings: reserved-memory: Introduce carved-out memory region binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DI3RAWEIO7IZ5Q6UBERU7RZW7JVL36OS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7372730551552803275=="


--===============7372730551552803275==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ocnrmtawiometb3v"
Content-Disposition: inline


--ocnrmtawiometb3v
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 1/2] dt-bindings: reserved-memory: Introduce
 carved-out memory region binding
MIME-Version: 1.0

Hi Rob,

On Tue, Jul 01, 2025 at 09:12:18AM +0200, Maxime Ripard wrote:
> On Mon, Jun 30, 2025 at 05:08:19PM -0500, Rob Herring wrote:
> > On Mon, Jun 30, 2025 at 06:41:38PM +0200, Maxime Ripard wrote:
> > > Hi Rob,
> > >=20
> > > On Fri, Jun 27, 2025 at 02:31:32PM -0500, Rob Herring wrote:
> > > > On Tue, Jun 17, 2025 at 02:25:40PM +0200, Maxime Ripard wrote:
> > > > > Some parts of the memory can be dedicated to specific purposes and
> > > > > exposed as a dedicated memory allocator.
> > > > >=20
> > > > > This is especially useful if that particular region has a particu=
lar
> > > > > properties the rest of the memory doesn't have. For example, some
> > > > > platforms have their entire RAM covered by ECC but for a small ar=
ea
> > > > > meant to be used by applications that don't need ECC, and its ass=
ociated
> > > > > overhead.
> > > > >=20
> > > > > Let's introduce a binding to describe such a region and allow the=
 OS to
> > > > > create a dedicated memory allocator for it.
> > > > >=20
> > > > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > > > ---
> > > > >  .../bindings/reserved-memory/carved-out.yaml       | 49 ++++++++=
++++++++++++++
> > > > >  1 file changed, 49 insertions(+)
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/reserved-memory/ca=
rved-out.yaml b/Documentation/devicetree/bindings/reserved-memory/carved-ou=
t.yaml
> > > > > new file mode 100644
> > > > > index 0000000000000000000000000000000000000000..9ab5d1ebd9ebd9111=
b7c064fabe1c45e752da83b
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/reserved-memory/carved-ou=
t.yaml
> > > > > @@ -0,0 +1,49 @@
> > > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/reserved-memory/carved-out.ya=
ml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Carved-out Memory Region
> > > > > +
> > > > > +description: |
> > > >=20
> > > > Don't need '|'.
> > > >=20
> > > > > +  Specifies that the reserved memory region has been carved out =
of the
> > > > > +  main memory allocator, and is intended to be used by the OS as=
 a
> > > > > +  dedicated memory allocator.
> > > >=20
> > > > Other than the commit msg, it is completely lost that this is for=
=20
> > > > ECC-less memory.
> > >=20
> > > Because it's not. One of the first feedback I got was that the way to
> > > identify what a heap provides was the heap name.
> > >=20
> > > So, as far as the binding go, a heap just exposes a chunk of memory t=
he
> > > memory allocator wouldn't use. The actual semantics of that chunk of
> > > memory don't matter.
> >=20
> > But they do because you use one carve out for one thing and another=20
> > carve out for another purpose and they probably aren't interchangeable.
>=20
> That was also my initial thought, but it was then discussed that the
> name of the region is enough of a discriminant. And it makes sense too,
> it's a sufficient discriminant for the device tree to uniquely identify
> a given memory region on a given platform already, so we don't really
> need anything else.
>=20
> > For the most part, everything in /reserved-memory is a carve out from=
=20
> > regular memory though we failed to enforce that.
> >=20
> > > > This description applies to CMA area as well. So what's the differe=
nce?
> > >=20
> > > Yeah, I kind of agree, which is why I initially started with a proper=
ty,
> > > and you then asked for a compatible.
> >=20
> > My issues with properties is we have to support N factorial cases for=
=20
> > combinations of N properties. It's already fragile. Whereas a compatibl=
e=20
> > is (hopefully) well defined as to what's needed and is only 1 more case=
=20
> > to support.
>=20
> I think that's also what John especially wanted to avoid. If we have a
> generic compatible, but the attributes/properties/whatever of the
> buffers allocated from that region differ (like ecc vs non-ecc,
> protected vs non-protected, etc.) we will need properties in the device
> tree to describe them too.

I thought about it some more over the weekend, but if a compatible isn't
a great solution either, would it make sense to just create a heap for
each shared-dma-pool region, and thus we just wouldn't need any extra
compatible or property?

Maxime

--ocnrmtawiometb3v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaGvRkQAKCRAnX84Zoj2+
dkZwAX4rT+fDu6s03R98a9PhbxiZQuf0qatIim53ASVJNKer/7d+UzPQxlAZMm6T
8lKd1fcBfR8q9qQI9VdMqnoE+7lwQZNgSMDmOsCrmn0yi30ou/EVVP7HptXFkwHt
jYrff69ABQ==
=nuJF
-----END PGP SIGNATURE-----

--ocnrmtawiometb3v--

--===============7372730551552803275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7372730551552803275==--
