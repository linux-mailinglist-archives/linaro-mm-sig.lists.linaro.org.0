Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D6291BF38
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 15:08:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3CBF43D1A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 13:08:54 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 6D1633F2F7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 13:08:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BQhvLOzd;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1444BCE3C27;
	Fri, 28 Jun 2024 13:08:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 010D3C116B1;
	Fri, 28 Jun 2024 13:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719580129;
	bh=O/aBFslEXfrhEnPLAQUllJnOitVfX9x7Hsz9OFt1hX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BQhvLOzdZhNlJM42b0AyIzoqJxiqefiq428eKmo4AychyOlTFQ0pQAbFphUmHT1hq
	 s9b9fULacP4tgraPTA+5e13wAqKuWDUJ7dLSr0Lwd0rUsd6j52bOIhxMJbcENfm4i/
	 bM3F/cde6cafbq4/CIZZ4doKoxuLixKEMPZup4iKQW8c/xIVbsiA0CdaaWNQVacPV6
	 2ErQCzyNTpYo+OuiT6jC8N8AKV8lYsWHup6EAP2P1eCw30v8OzZvelayJgsiUSfRM5
	 iV21adQUiBH1BtcXx1EDowlbd6cvoimEaSOB8zzwskIIScmewPhzLArkOpvTZS6tau
	 cohkXxBaaArDg==
Date: Fri, 28 Jun 2024 15:08:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Message-ID: <20240628-resilient-resolute-rook-0fc531@houat>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
 <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
 <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
 <ZkyOOwpM57HIiO3v@phenom.ffwll.local>
 <qy7aczeu6kumv5utemoevi7omp5ryq55zmgzxh5hrz5orf2osp@wypg66awof4n>
MIME-Version: 1.0
In-Reply-To: <qy7aczeu6kumv5utemoevi7omp5ryq55zmgzxh5hrz5orf2osp@wypg66awof4n>
X-Rspamd-Queue-Id: 6D1633F2F7
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: J5UTDRF235I7XWI6SZPZHYV2CZ7NI3MU
X-Message-ID-Hash: J5UTDRF235I7XWI6SZPZHYV2CZ7NI3MU
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J5UTDRF235I7XWI6SZPZHYV2CZ7NI3MU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2326524924967238009=="


--===============2326524924967238009==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aklav4ucjv2rektt"
Content-Disposition: inline


--aklav4ucjv2rektt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jun 28, 2024 at 01:29:17PM GMT, Thierry Reding wrote:
> On Tue, May 21, 2024 at 02:06:19PM GMT, Daniel Vetter wrote:
> > On Thu, May 16, 2024 at 09:51:35AM -0700, John Stultz wrote:
> > > On Thu, May 16, 2024 at 3:56=E2=80=AFAM Daniel Vetter <daniel@ffwll.c=
h> wrote:
> > > > On Wed, May 15, 2024 at 11:42:58AM -0700, John Stultz wrote:
> > > > > But it makes me a little nervous to add a new generic allocation =
flag
> > > > > for a feature most hardware doesn't support (yet, at least). So i=
t's
> > > > > hard to weigh how common the actual usage will be across all the
> > > > > heaps.
> > > > >
> > > > > I apologize as my worry is mostly born out of seeing vendors real=
ly
> > > > > push opaque feature flags in their old ion heaps, so in providing=
 a
> > > > > flags argument, it was mostly intended as an escape hatch for
> > > > > obviously common attributes. So having the first be something that
> > > > > seems reasonable, but isn't actually that common makes me fret so=
me.
> > > > >
> > > > > So again, not an objection, just something for folks to stew on to
> > > > > make sure this is really the right approach.
> > > >
> > > > Another good reason to go with full heap names instead of opaque fl=
ags on
> > > > existing heaps is that with the former we can use symlinks in sysfs=
 to
> > > > specify heaps, with the latter we need a new idea. We haven't yet g=
otten
> > > > around to implement this anywhere, but it's been in the dma-buf/hea=
p todo
> > > > since forever, and I like it as a design approach. So would be a go=
od idea
> > > > to not toss it. With that display would have symlinks to cma-ecc an=
d cma,
> > > > and rendering maybe cma-ecc, shmem, cma heaps (in priority order) f=
or a
> > > > SoC where the display needs contig memory for scanout.
> > >=20
> > > So indeed that is a good point to keep in mind, but I also think it
> > > might re-inforce the choice of having ECC as a flag here.
> > >=20
> > > Since my understanding of the sysfs symlinks to heaps idea is about
> > > being able to figure out a common heap from a collection of devices,
> > > it's really about the ability for the driver to access the type of
> > > memory. If ECC is just an attribute of the type of memory (as in this
> > > patch series), it being on or off won't necessarily affect
> > > compatibility of the buffer with the device.  Similarly "uncached"
> > > seems more of an attribute of memory type and not a type itself.
> > > Hardware that can access non-contiguous "system" buffers can access
> > > uncached system buffers.
> >=20
> > Yeah, but in graphics there's a wide band where "shit performance" is
> > defacto "not useable (as intended at least)".
> >=20
> > So if we limit the symlink idea to just making sure zero-copy access is
> > possible, then we might not actually solve the real world problem we ne=
ed
> > to solve. And so the symlinks become somewhat useless, and we need to
> > somewhere encode which flags you need to use with each symlink.
> >=20
> > But I also see the argument that there's a bit a combinatorial explosion
> > possible. So I guess the question is where we want to handle it ...
>=20
> Sorry for jumping into this discussion so late. But are we really
> concerned about this combinatorial explosion in practice? It may be
> theoretically possible to create any combination of these, but do we
> expect more than a couple of heaps to exist in any given system?

I don't worry too much about the number of heaps available in a given
system, it would indeed be fairly low.

My concern is about the semantics combinatorial explosion. So far, the
name has carried what semantics we were supposed to get from the buffer
we allocate from that heap.

The more variations and concepts we'll have, the more heap names we'll
need, and with confusing names since we wouldn't be able to change the
names of the heaps we already have.

> Would it perhaps make more sense to let a platform override the heap
> name to make it more easily identifiable? Maybe this is a naive
> assumption, but aren't userspace applications and drivers not primarily
> interested in the "type" of heap rather than whatever specific flags
> have been set for it?

I guess it depends on what you call the type of a heap. Where we
allocate the memory from, sure, an application won't care about that.
How the buffer behaves on the other end is definitely something
applications are going to be interested in though.

And if we allow any platform to change a given heap name, then a generic
application won't be able to support that without some kind of
platform-specific configuration.

> For example, if an applications wants to use a protected buffer, the
> application doesn't (and shouldn't need to) care about whether the heap
> for that buffer supports ECC or is backed by CMA. All it really needs to
> know is that it's the system's "protected" heap.

I mean... "protected" very much means backed by CMA already, it's pretty
much the only thing we document, and we call it as such in Kconfig.

But yeah, I agree that being backed by CMA is probably not what an
application cares about (and we even have might some discussions about
that), but if the ECC protection comes at a performance cost then it
will very much care about it. Or if it comes with caches enabled or not.

> This rather than try to represent every possible combination we
> basically make this a "configuration" issue. System designers need to
> settle on whatever combination of flags work for all the desired use-
> cases and then we expose that combination as a named heap.

This just pushes the problem down to applications, and carry the flags
mentioned earlier in the heap name. So the same information, but harder
to process or discover for an application.

> One problem that this doesn't solve is that we still don't have a way of
> retrieving these flags in drivers which may need them.

I'm not sure drivers should actually need to allocate from heaps, but we
could do it just like I suggested we'd do it for applications: we add a
new function that allows to discover what a given heap capabilities are.
And then we just have to iterate and choose the best suited for our
needs.

Maxime

--aklav4ucjv2rektt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZn613QAKCRDj7w1vZxhR
xYMzAP9dgioI8HY72Rg1/06cgP7C/9nqV2DIO+/GP/sWV0wxSgEA1OIr44+4QM8r
5QGSEyAfi7yOTBEB+QlJqdPGv5f2pAQ=
=Pd1A
-----END PGP SIGNATURE-----

--aklav4ucjv2rektt--

--===============2326524924967238009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2326524924967238009==--
