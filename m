Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A564EA9F3D4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Apr 2025 16:52:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEE3A454DC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Apr 2025 14:52:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D4B01410BC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Apr 2025 14:52:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=V2MK7vRc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1683B5C135F;
	Mon, 28 Apr 2025 14:49:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D7CAC4CEE4;
	Mon, 28 Apr 2025 14:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745851921;
	bh=SZ88ynsrxyycASOHhheCX/iwl8zgTZHYGYj+3bNOJx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V2MK7vRcY1dlL1+EZ1NoZxP268+GNpFW3Ocb8LPN7Yho6nLoAaaXufXwx5XaLAbYR
	 6zPVK5hyb6Jf25WzBeSpMyXbLEDodvvjRqSvXP5GJ4m9lMT3IZTcmm6+5Rz3X+W2MD
	 e815HEh/S03UXEZDcH+Ri2VhCgWcvowtURogNlBNZGuVRl42HhPlu1cq3jTlWLOaEM
	 J8bu8qMesc4jRWKYH6rEI97pjDBrlOAfnaD4vDOj/9JlQBE+ckM+Q2fu+zYJuuYFbN
	 nvO/iKk9W95uGjmgDHW1+MHW662Wu2n98EvjpLPoqRWKzrgGPqZpSpR74RcwQovTe0
	 iWkaLaFC1Ymkw==
Date: Mon, 28 Apr 2025 16:51:59 +0200
From: Maxime Ripard <mripard@kernel.org>
To: John Stultz <jstultz@google.com>
Message-ID: <20250428-greedy-vivid-goldfish-5abb35@houat>
References: <20250422191939.555963-1-jkangas@redhat.com>
 <20250422191939.555963-3-jkangas@redhat.com>
 <20250424-sassy-cunning-pillbug-ffde51@houat>
 <CANDhNCqfsUbN3aavAH5hi4wdcKuUkjLX4jqhKzy-q+jCEqpoow@mail.gmail.com>
 <20250425-savvy-chubby-alpaca-0196e3@houat>
 <CANDhNCroe6ZBtN_o=c71kzFFaWK-fF5rCdnr9P5h1sgPOWSGSw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANDhNCroe6ZBtN_o=c71kzFFaWK-fF5rCdnr9P5h1sgPOWSGSw@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D4B01410BC
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SIGNED_PGP(-2.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: QTGURZSQAF7CMJA4VKFQHCARGH5TXKWF
X-Message-ID-Hash: QTGURZSQAF7CMJA4VKFQHCARGH5TXKWF
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jared Kangas <jkangas@redhat.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTGURZSQAF7CMJA4VKFQHCARGH5TXKWF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3513652899912542922=="


--===============3513652899912542922==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="63qayjjnrzawfdlj"
Content-Disposition: inline


--63qayjjnrzawfdlj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
MIME-Version: 1.0

Hi John,

On Fri, Apr 25, 2025 at 12:39:40PM -0700, John Stultz wrote:
> On Thu, Apr 24, 2025 at 11:58=E2=80=AFPM Maxime Ripard <mripard@kernel.or=
g> wrote:
> > On Thu, Apr 24, 2025 at 05:13:47PM -0700, John Stultz wrote:
> > > On Thu, Apr 24, 2025 at 1:34=E2=80=AFAM Maxime Ripard <mripard@kernel=
=2Eorg> wrote:
> > > > I appreciate this is kind of bikeshed-color territory, but I think =
"cma"
> > > > would be a better option here. There's nothing "default" about it.
> > >
> > > I disagree.  It very much is "default" as it's returning the
> > > dma_contiguous_default_area.
> >
> > My main concern here is that it's "default" as opposed to what, exactly?
> > We have a single CMA allocator. We could have multiple buffer
> > attributes, but then "cached_cma" would make more sense to me if we
> > expect to have uncached CMA allocations at some point.
>=20
> Well, there may be one CMA allocator, but there can be multiple CMA regio=
ns.
>=20
> So in the kernel, cma_alloc() always takes the cma area as an
> argument.  And dma_alloc_contiguous() lets you do allocations against
> a device, which may reference a specific cma area. Or if the device
> doesn't specify a region it will utilize the default region.
>=20
> > > There can be multiple CMA areas, and out of tree, vendors do reserve
> > > separate areas for specific purposes, exposing multiple CMA dmabuf
> > > heaps.
> >
> > By "CMA areas", I guess you mean carved-out memory regions? If so, how
> > is it relevant to userspace if we use CMA or any other implementation to
> > expose a carved-out region, and thus that we carry that implemenattion
> > detail in the name?
>=20
> So, no, I don't mean carve-out regions.  It's more about dealing with
> competition between multiple CMA users. In some cases, where there are
> known fixed buffer sizes, say camera buffers, it's much easier to
> reserve a separate specific sized region to allocate from so that you
> know it will always succeed and you don't need to waste much on safety
> margins. Having this added as a separate CMA region makes it a lot
> easier to account or reason about, and the kernel can still make
> (limited) use of the CMA space when it's idle. Then you don't have to
> worry about some other device having a short term cma allocation that
> pushes back the alignment for your large allocation, possibly
> impacting some other devices larger allocations.
>=20
> And unlike with just using a carveout, you don't end up just wasting
> all that space when it is unused.

The way I see it, it's an implementation detail and is abstracted away
=66rom userspace. That's what I meant by carved-out I guess: a region
dedicated to a (set of) devices(s) that the rest of the system won't
use from userspace point of view.

> So userland may want to allocate contiguous memory, but it may also be
> relevant to userland to be able to allocate contiguous memory from a
> purpose specific pool.
>=20
> And while not used in Android, you could imagine having separate
> purpose reserved cma heaps with different permissions on the heap
> devnodes, allowing less trusted applications to allocate cma from a
> small pool without having the potential to DoS the system.

Yeah... I don't think it's the right approach for that. If Android
doesn't use it, and if it's the only Linux distro with 1 app / 1 user
policy, then the only permissions we'll effectively have is one for the
whole use, trusted and untrusted apps alike.

cgroups look like a much better path forward, and wouldn't require
multiple heaps.

Anyway... It's not really important at this point I guess.

> > > There have been patches to expose multiple CMA heaps, but with no
> > > upstream drivers using those purpose specific regions, we haven't
> > > taken them yet.
> > > I do hope as the drivers that utilize these purpose focused heaps go
> > > upstream, we can add that logic, so I think being specific that this
> > > is default CMA is a good idea.
> >
> > If heaps names are supposed to carry the region it exposes, then it
> > should be default_cma_region/area. If heap names are supposed to expose
> > the allocator (but I don't think it's a good idea), it should be cma. If
> > they are meant to carry all that plus some policy,
> > cached_default_cma_region should be used.
> >
> > Either way, default_cma seems to me either too specific or not specific
> > enough. And we should really document what the policy for those heaps
> > are supposed to be.
>=20
> I don't see it as such a problem. It is clear it is cma, it also is
> clear conceptually that it is the "default" region that the kernel
> uses when devices aren't specific.
> But I wouldn't object to cma_default_region/area as a name either, but
> I don't see it as particularly improved over cma_default.
>=20
> To your larger point about policy, I do get the tension that you want
> to be able to programmatically derive or evaluate heap names, so that
> applications can consistently derive a pathname to get what they want.

We've discussed it in the past, I don't really want to. But it was clear
=66rom the last discussion that you (plural) wanted to infer heap
semantics from the names. I'm ok with that, but then if we want to make
it work we need to have well defined names.

And it's actually what I really want to discuss here: we've discussed at
length how bad the heaps name are (and not only here), but I don't think
we have any documented policy on what makes a good name?

For example, I'm not sure exposing the allocator name is a good idea:
it's an implementation detail and for all userspace cares about, we
could change it every release if it provided the same kind of buffers.

Taking your camera buffers example before, then we could also expose a
memory region id, and let the platform figure it out, or use the usecase
as the name.

But if we don't document that, how can we possibly expect everyone
including downstream to come up with perfect names every time. And FTR,
I'm willing to write that doc down once the discussion settles.

> But I also think that there is so much variety in both the devices and
> uses that there is no way that all use cases and all devices can be
> satisfied with such a static or even programmatic mapping. From my
> perspective, there just is going to have to be some device specific
> glue logic that maps use->heap name. Same reason we have fstab and the
> passwd file.

fstab and passwd can be generated at (first) boot time / install. fstab
is also being somewhat less important with the auto-partition discovery.
How would you generate that configuration file at boot?

I'm not really asking this as a theoretical question. Being able to
auto-discover which heap a driver/device would allocate from is central
for the cgroup work I mentioned earlier.

And I'm really not sure how distros or applications developpers are
supposed to keep up with the raw volume of devices that go out every
year, each and every one of them having different heap names, etc.
Possibly different from one version of the firmware to another.

> That said, I think advocating for naming conventions is definitely
> useful, but I'm wary of trying to enforce too specific a schema on the
> names as the incompleteness theorem will bite us.

--63qayjjnrzawfdlj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaA+WCgAKCRAnX84Zoj2+
dtAdAX490+iTTwDqyILjSOEVCA8RChLdm0moya2/lu4SN1P1TfZ7XV7zi3X4jh0S
5VdaV+IBgL+thiZgE/SuZsHWgo1vstjGkPj1WnOIESpeFXh4Q59WDtafcqWPQU8T
rxMeOC+VsQ==
=9b8o
-----END PGP SIGNATURE-----

--63qayjjnrzawfdlj--

--===============3513652899912542922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3513652899912542922==--
