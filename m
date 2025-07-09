Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5F7AFEA64
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 15:38:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2B9D45723
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 13:38:50 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 8B75D43BFB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jul 2025 13:38:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=cok7Ru6t;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 13BAC5C58D5;
	Wed,  9 Jul 2025 13:38:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FEC4C4CEEF;
	Wed,  9 Jul 2025 13:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752068317;
	bh=h8rkgdzFHzQfCXKGB13VqG6DTj3tCT4fvRbPC6Q9TJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cok7Ru6tbwPf8DJ/GhRrPstP/I0zh/TMSe60GW8wNsnXiRyHW+Tf9VR43hFMEXANp
	 nA9yQR+3gGyjumTd2aR31jkaluaCPUfp9OJzMJNGL6iO1bosVebm+gtOam0s3LgviF
	 0qgXZtR5I68ISvW6+7jrDWcLGDJ5eZ1lxF4wInZz59liiDUeFKysL48gZydSKKo/sV
	 RBhFESjNO2O8yASjDhpRyrL3yew7ckHOedOhDO2NYrNdFPmP8ofnTqyxuSr/3hpl/V
	 r9BARdBLahmPKDK4L5U6u/awlc3gw3+s31xuPfGtfv7Y4UgprYL97ykPOEARLt/Afz
	 RKn2Zom/0ZhDw==
Date: Wed, 9 Jul 2025 15:38:34 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Message-ID: <20250709-spotted-ancient-oriole-c8bcd1@houat>
References: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
 <49e3fa834aadb37452112bb704a1a1593c1fd0b8.camel@ndufresne.ca>
MIME-Version: 1.0
In-Reply-To: <49e3fa834aadb37452112bb704a1a1593c1fd0b8.camel@ndufresne.ca>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8B75D43BFB
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	DNSWL_BLOCKED(0.00)[139.178.84.217:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: MFMNVAPENY446THGMKYW7XEJPFKWQ4U4
X-Message-ID-Hash: MFMNVAPENY446THGMKYW7XEJPFKWQ4U4
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 0/2] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MFMNVAPENY446THGMKYW7XEJPFKWQ4U4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1040802766415072797=="


--===============1040802766415072797==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="t6erlqty7rzkhzhp"
Content-Disposition: inline


--t6erlqty7rzkhzhp
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 0/2] dma-buf: heaps: Create a CMA heap for each CMA
 reserved region
MIME-Version: 1.0

On Wed, Jul 09, 2025 at 09:10:02AM -0400, Nicolas Dufresne wrote:
> Hi Maxime,
>=20
> Le mercredi 09 juillet 2025 =E0 14:44 +0200, Maxime Ripard a =E9crit=A0:
> > Hi,
> >=20
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
>=20
> Does that means that if we carve-out memory for a co-processor operating =
system,
> that memory region is now available to userspace to allocate from ? Or is=
 there
> a nuance to that ?

There is a nuance to that :)

You need to have the "reusable" property set which is documented as:

      The operating system can use the memory in this region with the
      limitation that the device driver(s) owning the region need to be
      able to reclaim it back. Typically that means that the operating
      system can use that region to store volatile or cached data that
      can be otherwise regenerated or migrated elsewhere.

https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/rese=
rved-memory/reserved-memory.yaml#L87

If it's not set, it's not exposed, and I'd expect a coprocessor memory
region wouldn't be flagged as such.

> For other carveout, such as RK3588 HDMI receiver, that is clearly a win, =
giving
> user the ability to allocate using externally supplied constraints rather=
 then
> having to convince the v4l2 driver to match these. While keeping the safe=
ty that
> this carveout will yield valid addresses for the IP.
>=20
> Will there be a generic way to find out which driver/device this carveout
> belongs to ? In V4L2, only complex cameras have userspace drivers, everyt=
hing
> else is generic code.

I believe it's a separate discussion, but the current stance is that the
heap name is enough to identify in a platform-specific way where you
allocate from. I've worked on documenting what a good name is so
userspace can pick it up more easily here:

https://lore.kernel.org/r/20250616-dma-buf-heap-names-doc-v2-1-8ae43174cdbf=
@kernel.org

But it's not really what you expected

Maxime

--t6erlqty7rzkhzhp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaG5w1QAKCRAnX84Zoj2+
dp3pAX9+Z09k44eaivapsVKw/NqvekdMSYnQGvkEfOP/NBTjJF5RGakuRbEE73Xk
qKAYEiMBgKsMpFVvSS9l9pFXZtK1LVDJ1XtphLJBeHq/gZxL+5K0t2qMG09CpG18
A+HJas+mmg==
=pWj1
-----END PGP SIGNATURE-----

--t6erlqty7rzkhzhp--

--===============1040802766415072797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1040802766415072797==--
