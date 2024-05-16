Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D81C8C76A9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 14:41:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11F0D44130
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 12:41:33 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id C059B3F52A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 12:41:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HW+z3how;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 98B14CE18CD;
	Thu, 16 May 2024 12:41:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51309C32786;
	Thu, 16 May 2024 12:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715863273;
	bh=eQHIiIL1ALm5PPVQ3Io9cb7gr9OV/haIlOC1+pSXKVU=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=HW+z3howijTGOOcAphkl82HP7uOZEOoSZva4jxoHROFt0mSevv4rTFk8gICxCfvk/
	 7oNOzLU8oefihbItRwr2yBUhfYOVn7knvCS1vQMIROkobA1ZRdWkObtk3+lsksUT4Y
	 M3/B++hwmb42oQvcuubJhZOt2q/FyH5cQAF8yG5h3uTmALEG/DbnWjc+FobKIRfsI1
	 Cs1B0SiV4LAp4wu31y71LUjghKuTDhOfJJ6+Hw92G4aF7MxB93h1dc5w/eAY/7C6mj
	 KUmU1fiFlJq/E7Qv/CWqyNgqqdUPZyQIy0FSYoUsmMByvMNnLzZbNmoG6R6lruvx5t
	 ucCkeNHAJmgjw==
Date: Thu, 16 May 2024 14:41:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: John Stultz <jstultz@google.com>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	"T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
Message-ID: <20240516-melodic-quick-dalmatian-fa7b41@penduick>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
 <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
MIME-Version: 1.0
In-Reply-To: <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C059B3F52A
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: OX5KJRBDKFP6DRJAIXDYC7B3ATNVTV7A
X-Message-ID-Hash: OX5KJRBDKFP6DRJAIXDYC7B3ATNVTV7A
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OX5KJRBDKFP6DRJAIXDYC7B3ATNVTV7A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4968006448950008777=="


--===============4968006448950008777==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="suucgit7csl7uhjz"
Content-Disposition: inline


--suucgit7csl7uhjz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 16, 2024 at 12:56:27PM +0200, Daniel Vetter wrote:
> On Wed, May 15, 2024 at 11:42:58AM -0700, John Stultz wrote:
> > On Wed, May 15, 2024 at 6:57=E2=80=AFAM Maxime Ripard <mripard@kernel.o=
rg> wrote:
> > > This series is the follow-up of the discussion that John and I had a =
few
> > > months ago here:
> > >
> > > https://lore.kernel.org/all/CANDhNCquJn6bH3KxKf65BWiTYLVqSd9892-xtFDH=
HqqyrroCMQ@mail.gmail.com/
> > >
> > > The initial problem we were discussing was that I'm currently working=
 on
> > > a platform which has a memory layout with ECC enabled. However, enabl=
ing
> > > the ECC has a number of drawbacks on that platform: lower performance,
> > > increased memory usage, etc. So for things like framebuffers, the
> > > trade-off isn't great and thus there's a memory region with ECC disab=
led
> > > to allocate from for such use cases.
> > >
> > > After a suggestion from John, I chose to start using heap allocations
> > > flags to allow for userspace to ask for a particular ECC setup. This =
is
> > > then backed by a new heap type that runs from reserved memory chunks
> > > flagged as such, and the existing DT properties to specify the ECC
> > > properties.
> > >
> > > We could also easily extend this mechanism to support more flags, or
> > > through a new ioctl to discover which flags a given heap supports.
> >=20
> > Hey! Thanks for sending this along! I'm eager to see more heap related
> > work being done upstream.
> >=20
> > The only thing that makes me a bit hesitant, is the introduction of
> > allocation flags (as opposed to a uniquely specified/named "ecc"
> > heap).
> >=20
> > We did talk about this earlier, and my earlier press that only if the
> > ECC flag was general enough to apply to the majority of heaps then it
> > makes sense as a flag, and your patch here does apply it to all the
> > heaps. So I don't have an objection.
> >=20
> > But it makes me a little nervous to add a new generic allocation flag
> > for a feature most hardware doesn't support (yet, at least). So it's
> > hard to weigh how common the actual usage will be across all the
> > heaps.
> >=20
> > I apologize as my worry is mostly born out of seeing vendors really
> > push opaque feature flags in their old ion heaps, so in providing a
> > flags argument, it was mostly intended as an escape hatch for
> > obviously common attributes. So having the first be something that
> > seems reasonable, but isn't actually that common makes me fret some.
> >=20
> > So again, not an objection, just something for folks to stew on to
> > make sure this is really the right approach.
>=20
> Another good reason to go with full heap names instead of opaque flags on
> existing heaps is that with the former we can use symlinks in sysfs to
> specify heaps, with the latter we need a new idea. We haven't yet gotten
> around to implement this anywhere, but it's been in the dma-buf/heap todo
> since forever, and I like it as a design approach. So would be a good idea
> to not toss it. With that display would have symlinks to cma-ecc and cma,
> and rendering maybe cma-ecc, shmem, cma heaps (in priority order) for a
> SoC where the display needs contig memory for scanout.

I guess it depends what we want to use the heaps for exactly. If we
create a heap by type, then the number of heaps is going to explode and
their name is going to be super weird and inconsistent.

Using the ECC setup here as an example, it means that we would need to
create system (with the default ECC setup for the system), system-ecc,
system-no-ecc, cma, cma-ecc, cma-no-ecc.

Let's say we introduce caching next. do we want to triple the number of
heaps again?

So I guess it all boils down to whether we want to consider heaps as
allocators, and then we need the flags to fine-tune the attributes/exact
semantics, or the combination of an allocator and the semantics which
will make the number of heaps explode (and reduce their general
usefulness, I guess).

Maxime

--suucgit7csl7uhjz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZkX+5gAKCRAnX84Zoj2+
dlm2AX4zDrlbmQnJLk98W+IofB6hK8ZzSAe2eROyf8ACySG5WHvFn9Thj2UsUYxC
Y3jkMxEBgOqPayZCO59a/ow4sVm+Bk7F7/fvmM03D3EhW8fjpGGViti3Ap52OpI/
YONnWKwxQA==
=GS0k
-----END PGP SIGNATURE-----

--suucgit7csl7uhjz--

--===============4968006448950008777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4968006448950008777==--
