Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9E2B50F81
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Sep 2025 09:34:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9CE14577A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Sep 2025 07:33:57 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 5514343D1A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Sep 2025 07:33:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qaweH+z8;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B898560239;
	Wed, 10 Sep 2025 07:33:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB517C4CEF0;
	Wed, 10 Sep 2025 07:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757489628;
	bh=/XnpTWNk/kv+NQgAdTS1A1Ab76RuactuTcyAflw/L7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qaweH+z8BxmkKE1ouYJdFNhlYQj7OSwPR6vei84660qDGY3b2ayba8Xa4NjRhRKqQ
	 epTHEwqDw7OOhz42xo6a3A9e4uehd2Gr9neNldgZ9djYFdeMgDg6V+foFy5QOBv1Uz
	 i5lSzewoRPlG06mEm7cYk9DdBcniCZXb3KefyLLOO0rU0dNm8ZAzQghWHi8bEbRCZZ
	 itXMl6OPuDhFdNfzXYphQv+ZxGx9804vA4czk6CZ+ZJKTCTXrw2LrYXR+A50evfJXv
	 0Dz0F9RPM0QrdZrLUO7hYRN5OtTtEbg/6vJXWYoBn7vmo0i1GvF7n0DyV82UuAVK0n
	 lJ87BRzJ4JaEg==
Date: Wed, 10 Sep 2025 09:33:45 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>,
	Jonathan Corbet <corbet@lwn.net>
Message-ID: <20250910-vigorous-attractive-gorilla-af6fec@houat>
References: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
 <20250826-vagabond-catfish-of-courtesy-cbfa76@houat>
MIME-Version: 1.0
In-Reply-To: <20250826-vagabond-catfish-of-courtesy-cbfa76@houat>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5514343D1A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[23];
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
Message-ID-Hash: XAQZWG3SBAT56XHYLYIWYFUYB5RP4KUD
X-Message-ID-Hash: XAQZWG3SBAT56XHYLYIWYFUYB5RP4KUD
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/5] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XAQZWG3SBAT56XHYLYIWYFUYB5RP4KUD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0679707566722571536=="


--===============0679707566722571536==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="nkmy2zjqcls5g6m2"
Content-Disposition: inline


--nkmy2zjqcls5g6m2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 0/5] dma-buf: heaps: Create a CMA heap for each CMA
 reserved region
MIME-Version: 1.0

On Tue, Aug 26, 2025 at 09:36:03AM +0200, Maxime Ripard wrote:
> Hi,
>=20
> On Mon, Jul 21, 2025 at 01:17:29PM +0200, Maxime Ripard wrote:
> > Here's another attempt at supporting user-space allocations from a
> > specific carved-out reserved memory region.
> >=20
> > The initial problem we were discussing was that I'm currently working on
> > a platform which has a memory layout with ECC enabled. However, enabling
> > the ECC has a number of drawbacks on that platform: lower performance,
> > increased memory usage, etc. So for things like framebuffers, the
> > trade-off isn't great and thus there's a memory region with ECC disabled
> > to allocate from for such use cases.
> >=20
> > After a suggestion from John, I chose to first start using heap
> > allocations flags to allow for userspace to ask for a particular ECC
> > setup. This is then backed by a new heap type that runs from reserved
> > memory chunks flagged as such, and the existing DT properties to specify
> > the ECC properties.
> >=20
> > After further discussion, it was considered that flags were not the
> > right solution, and relying on the names of the heaps would be enough to
> > let userspace know the kind of buffer it deals with.
> >=20
> > Thus, even though the uAPI part of it had been dropped in this second
> > version, we still needed a driver to create heaps out of carved-out mem=
ory
> > regions. In addition to the original usecase, a similar driver can be
> > found in BSPs from most vendors, so I believe it would be a useful
> > addition to the kernel.
> >=20
> > Some extra discussion with Rob Herring [1] came to the conclusion that
> > some specific compatible for this is not great either, and as such an
> > new driver probably isn't called for either.
> >=20
> > Some other discussions we had with John [2] also dropped some hints that
> > multiple CMA heaps might be a good idea, and some vendors seem to do
> > that too.
> >=20
> > So here's another attempt that doesn't affect the device tree at all and
> > will just create a heap for every CMA reserved memory region.
> >=20
> > It also falls nicely into the current plan we have to support cgroups in
> > DRM/KMS and v4l2, which is an additional benefit.
> >=20
> > Let me know what you think,
> > Maxime
>=20
> Any chance we can get this merged?

Guys, can we move forward on this?

Maxime

--nkmy2zjqcls5g6m2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaMEp2QAKCRAnX84Zoj2+
dsg7AXsGZJPtUsHUnHvNADap4iyMsh/caF3U64tQkHWWAcnVwP1ptV6A6FmBCXx9
Lw0xiv8BgKYytEtc6THWvRv6a29zx8LVSv9EuNTYDZshPTgSqETUzAx4CVEAAA/O
//tQ1dcNeA==
=tTl0
-----END PGP SIGNATURE-----

--nkmy2zjqcls5g6m2--

--===============0679707566722571536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0679707566722571536==--
