Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 81775B013F8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Jul 2025 09:03:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47F13456FA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Jul 2025 07:03:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 52A77443B4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Jul 2025 07:03:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qJPoCUmK;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 94CF15C6B62;
	Fri, 11 Jul 2025 07:03:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE0BFC4CEED;
	Fri, 11 Jul 2025 07:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752217390;
	bh=r1cPPxjdKgAs+R+18XIYemBgN1Sq2Z6+k2CL2xCS38E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qJPoCUmKk+Rg4BlVA6O9Ufe6nGAVL6283cDjW+2DMRSVdNcnLSN1FHEe0NftXVZXz
	 80f2RSiGocdRqETQU/VuiJg3Asov1sFfaZh23ySNGrHUhJqETvONoSZvZHxAO1Q88M
	 jgfFK5+o/3Hp9Yh8AZPC/0S5qFAW8/i4BIZljLhnTs+3EeEAiplTul9Wcn6+5WMJ08
	 rK/DAU5AgW2brRpCb7LEwjrwql5ElTWhJ4qFb6eimaZcC5IxP+3V5GI89iglwJdhTF
	 bndewVgkZ9ptvjRbkuPRpOSx2vxXW25sy6cBzrbA5DCDd8F8Sv5j9CmgXqRwpzAGZ3
	 1hXEZoVEwd9ww==
Date: Fri, 11 Jul 2025 09:03:07 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Message-ID: <20250711-super-pigeon-of-courage-205fb1@houat>
References: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
 <49e3fa834aadb37452112bb704a1a1593c1fd0b8.camel@ndufresne.ca>
 <20250709-spotted-ancient-oriole-c8bcd1@houat>
 <78c981eb7fafe864bea60c662ba5b474fbd44669.camel@ndufresne.ca>
MIME-Version: 1.0
In-Reply-To: <78c981eb7fafe864bea60c662ba5b474fbd44669.camel@ndufresne.ca>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 52A77443B4
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.09 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,139.178.84.217:from];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: FHGURP4LX7GO45IQ65OMTEYZZEU43KLM
X-Message-ID-Hash: FHGURP4LX7GO45IQ65OMTEYZZEU43KLM
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 0/2] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FHGURP4LX7GO45IQ65OMTEYZZEU43KLM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8644784220368804871=="


--===============8644784220368804871==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="vmeaee7jixrkjoeb"
Content-Disposition: inline


--vmeaee7jixrkjoeb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 0/2] dma-buf: heaps: Create a CMA heap for each CMA
 reserved region
MIME-Version: 1.0

On Thu, Jul 10, 2025 at 11:21:02AM -0400, Nicolas Dufresne wrote:
> Hi,
>=20
> Le mercredi 09 juillet 2025 =E0 15:38 +0200, Maxime Ripard a =E9crit=A0:
> > > Will there be a generic way to find out which driver/device this carv=
eout
> > > belongs to ? In V4L2, only complex cameras have userspace drivers,
> > > everything
> > > else is generic code.
> >=20
> > I believe it's a separate discussion, but the current stance is that the
> > heap name is enough to identify in a platform-specific way where you
> > allocate from. I've worked on documenting what a good name is so
> > userspace can pick it up more easily here:
> >=20
> > https://lore.kernel.org/r/20250616-dma-buf-heap-names-doc-v2-1-8ae43174=
cdbf@kernel.org
> >=20
> > But it's not really what you expected
>=20
> From a dma-heap API, the naming rules seems necessary, but suggesting gen=
eric
> code to use "grep" style of search to match a heap is extremely fragile. =
The
> documentation you propose is (intentionally?) vague. For me, the naming i=
s more
> like giving proper names to your function calls do devs can make sense ou=
t of
> it.

I agree, and made a proposal to implement some kind of heap capabilities
discovery ioctl. The main concern at the time was that Android tried
that with ION and it lead to a proliferation of poorly defined flags,
and that names were enough to do so.

I still think that at some point we will need this, but I also don't
have a good idea to address these concerns.

> Stepping back a little, we already opened the door for in-driver use of h=
eaps.
> So perhaps the way forward is to have V4L2 drivers utilize heaps from ins=
ide the
> kernel. Once driver are fully ported, additional APIs could be added so t=
hat
> userspace can read which heap(s) is going to be used for the active
> configuration, and which other heaps are known usable (enumerate them). T=
here is
> no need to add properties in that context, since these will derives from =
the
> driver configuration you picked. If you told you driver you doing secure =
memory
> playback, the driver will filter-out what can't be used.
>=20
> Examples out there often express simplified view of the problem. Your ECC=
 video
> playback case is a good one. Let's say you have performance issue in both
> decoder and display due to ECC. You may think that you just allocate from=
 a non-
> ECC heap, import these into the decoder, and once filled, import these in=
to the
> display driver and you won.
>=20
> But in reality, your display buffer might not be the reference buffers, a=
nd most
> of the memory bandwidth in a modern decoder goes into reading reference f=
rames
> and the attached metadata (the later which may or may not be in the same
> allocation block).
>=20
> Even once the reference frames get exposed to userspace (which is a long =
term
> goal), there will still be couple of buffers that just simply don't fit a=
nd must
> be kept hidden inside the driver.
>=20
> My general conclusion is that once these heap exists, and that we guarant=
ee
> platform specific unique names, we should probably build on top. Both use=
rspace
> and driver become consumers of the heap. And for the case where the platf=
orm-
> specific knowledge lives inside the kernel, then heaps are selected by the
> kernel. Also, very little per-driver duplication will be needed, since 90=
% of
> the V4L2 driver share the allocator implementation.
>=20
> Does that makes any sense to anyone ?

It does, and it's roughly what we have in mind for the cgroups support
in KMS and v4l2. The main issue with it is that knowing if you allocate
=66rom a dedicated pool (which would use the dmem cgroup controller) or
the main memory pool (which would use memcg) wasn't deterministic and
thus you couldn't properly account.

The solution we have in mind right now is indeed to switch everyone to
using heaps, and then exposing which cgroup that heap allocates from.

Your proposal here has a few extra steps, but the main idea is there
still.

Maxime

--vmeaee7jixrkjoeb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaHC3JgAKCRAnX84Zoj2+
djTSAX4+ygbjgM882h84BNhcHiUdIPVbWsDbOuHr/SYyMomXGq4GMdP8Pq4tqTQ5
o9edDjYBgLsUonNYgX2zR0BSqIChiajJgi1nKcoj2mQh+7E0NZmvNGb/sc0lAGdM
qlNsUjxuCQ==
=VrhR
-----END PGP SIGNATURE-----

--vmeaee7jixrkjoeb--

--===============8644784220368804871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8644784220368804871==--
