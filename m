Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F070AEEF8B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Jul 2025 09:12:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E16C5448E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Jul 2025 07:12:32 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 08C9340F7F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Jul 2025 07:12:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=pdxa7Ygw;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A0E42A4D4A1;
	Tue,  1 Jul 2025 07:12:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00C02C4CEEB;
	Tue,  1 Jul 2025 07:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751353938;
	bh=oDlHROwnSUQAjiRI45qrW1tco2YeBy9XuAhSB10GC4I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pdxa7Ygw0iJhae1lmE6peOvCQtLgifNJK5c0mRyb3+SFBZLhdLNY0bFDrJ3SUGD0u
	 ImPPVaUPmNG7KQQaVsPfr4SRenJxTXESTN4Ho9vHaxONsdrzWLQGCGwdCuEOqijCa+
	 7HbfMqyIZpHZUVguVWh5fFgx5gO5TkmWUi3qRLa0ekyGhNYefhRy95kMYljud5+wJG
	 ANUfwQM2wzzKsOEKdRtS1jAW2TnjM2NHPixM5R4Eo1bAS4rmOXFqVhhKnEOMxZmD7A
	 FKJCOfBX8oXEB5oxIxcWTxmrPuAMlK7KPn3trYtQf7YgPZjI8XD/xDVu+FStj5kvkp
	 5OufS2d464zQw==
Date: Tue, 1 Jul 2025 09:12:15 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20250701-frisky-resolute-hamster-3dfedc@houat>
References: <20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@kernel.org>
 <20250617-dma-buf-ecc-heap-v5-1-0abdc5863a4f@kernel.org>
 <20250627193132.GB4032621-robh@kernel.org>
 <20250630-attentive-fortunate-turaco-2e36d2@houat>
 <20250630220819.GA3454648-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250630220819.GA3454648-robh@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 08C9340F7F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[nyc.source.kernel.org:rdns,nyc.source.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 3ZKCH7VNRK4EWGLGU2CBJ3WWCTUI7VG6
X-Message-ID-Hash: 3ZKCH7VNRK4EWGLGU2CBJ3WWCTUI7VG6
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dt-bindings: reserved-memory: Introduce carved-out memory region binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZKCH7VNRK4EWGLGU2CBJ3WWCTUI7VG6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6523944635398761352=="


--===============6523944635398761352==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="rehsid5ue72jvztb"
Content-Disposition: inline


--rehsid5ue72jvztb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 1/2] dt-bindings: reserved-memory: Introduce
 carved-out memory region binding
MIME-Version: 1.0

On Mon, Jun 30, 2025 at 05:08:19PM -0500, Rob Herring wrote:
> On Mon, Jun 30, 2025 at 06:41:38PM +0200, Maxime Ripard wrote:
> > Hi Rob,
> >=20
> > On Fri, Jun 27, 2025 at 02:31:32PM -0500, Rob Herring wrote:
> > > On Tue, Jun 17, 2025 at 02:25:40PM +0200, Maxime Ripard wrote:
> > > > Some parts of the memory can be dedicated to specific purposes and
> > > > exposed as a dedicated memory allocator.
> > > >=20
> > > > This is especially useful if that particular region has a particular
> > > > properties the rest of the memory doesn't have. For example, some
> > > > platforms have their entire RAM covered by ECC but for a small area
> > > > meant to be used by applications that don't need ECC, and its assoc=
iated
> > > > overhead.
> > > >=20
> > > > Let's introduce a binding to describe such a region and allow the O=
S to
> > > > create a dedicated memory allocator for it.
> > > >=20
> > > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > > ---
> > > >  .../bindings/reserved-memory/carved-out.yaml       | 49 ++++++++++=
++++++++++++
> > > >  1 file changed, 49 insertions(+)
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/reserved-memory/carv=
ed-out.yaml b/Documentation/devicetree/bindings/reserved-memory/carved-out.=
yaml
> > > > new file mode 100644
> > > > index 0000000000000000000000000000000000000000..9ab5d1ebd9ebd9111b7=
c064fabe1c45e752da83b
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/reserved-memory/carved-out.=
yaml
> > > > @@ -0,0 +1,49 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/reserved-memory/carved-out.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Carved-out Memory Region
> > > > +
> > > > +description: |
> > >=20
> > > Don't need '|'.
> > >=20
> > > > +  Specifies that the reserved memory region has been carved out of=
 the
> > > > +  main memory allocator, and is intended to be used by the OS as a
> > > > +  dedicated memory allocator.
> > >=20
> > > Other than the commit msg, it is completely lost that this is for=20
> > > ECC-less memory.
> >=20
> > Because it's not. One of the first feedback I got was that the way to
> > identify what a heap provides was the heap name.
> >=20
> > So, as far as the binding go, a heap just exposes a chunk of memory the
> > memory allocator wouldn't use. The actual semantics of that chunk of
> > memory don't matter.
>=20
> But they do because you use one carve out for one thing and another=20
> carve out for another purpose and they probably aren't interchangeable.

That was also my initial thought, but it was then discussed that the
name of the region is enough of a discriminant. And it makes sense too,
it's a sufficient discriminant for the device tree to uniquely identify
a given memory region on a given platform already, so we don't really
need anything else.

> For the most part, everything in /reserved-memory is a carve out from=20
> regular memory though we failed to enforce that.
>=20
> > > This description applies to CMA area as well. So what's the differenc=
e?
> >=20
> > Yeah, I kind of agree, which is why I initially started with a property,
> > and you then asked for a compatible.
>=20
> My issues with properties is we have to support N factorial cases for=20
> combinations of N properties. It's already fragile. Whereas a compatible=
=20
> is (hopefully) well defined as to what's needed and is only 1 more case=
=20
> to support.

I think that's also what John especially wanted to avoid. If we have a
generic compatible, but the attributes/properties/whatever of the
buffers allocated from that region differ (like ecc vs non-ecc,
protected vs non-protected, etc.) we will need properties in the device
tree to describe them too.

Maxime

--rehsid5ue72jvztb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaGOKSgAKCRAnX84Zoj2+
drdWAX9sIEhbIgQPAplf8S31a/8A+5wsrLKgnLMLcjff1DMeHSs96RQVVeLyGvXL
12TzaegBf1HuvPhapoA7UkipLJ02FrPK1L91laUNIvV3mjRVccezFspf68+ATWbr
/C5budOfXA==
=akIL
-----END PGP SIGNATURE-----

--rehsid5ue72jvztb--

--===============6523944635398761352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6523944635398761352==--
