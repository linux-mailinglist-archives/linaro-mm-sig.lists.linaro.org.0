Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPqTM+gdoGmzfgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 11:18:16 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 573DC1A421C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 11:18:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 575D53F80A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 10:18:15 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id C9D5D3F80A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 10:18:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YA05vn+G;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 54F0F60097;
	Thu, 26 Feb 2026 10:18:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 653B0C19423;
	Thu, 26 Feb 2026 10:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772101092;
	bh=tJEgWGAKGq9f+lDM1K325bKAQQGVyuPowxRSNNeauh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YA05vn+GecAOHOV0bBkerBcyLQZtuSeUa6UQ7vgNRSwpIOnk1+Xg6+oT0x9IHtTrl
	 onYSZPAZMTe0F6nGswJKHdgRDg7XQpXjYPnevq2aP5CjzYYkfR/90mmCWiRXuQKXgO
	 +H6Xg/Rhq5agCeF2gZr/HUOYNb17ra9+vda9r0ixBAHkwbHtqrU3kZA80oQM3Md0VV
	 3oG+afWszq4v8KgLw8YU0gigEQkK/ASy2JB3YMNHuc2rU2TRc0G1OCIOlc/+VT9/An
	 WWug7j7lR9Tts668IPaefBI8ZdIfDjIeHH8rA4GmNx2mGPbyBeq/94vk28A4Nl//XZ
	 CkRcRNPs8Ilvw==
Date: Thu, 26 Feb 2026 11:18:08 +0100
From: Maxime Ripard <mripard@kernel.org>
To: John Stultz <jstultz@google.com>
Message-ID: <20260226-adaptable-vermilion-nautilus-0aa6f0@penduick>
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
 <CANDhNCqk9Uk4aXHhUsL4hR1GHNmWZnH3C9Np-A02wdi+J3D7tA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANDhNCqk9Uk4aXHhUsL4hR1GHNmWZnH3C9Np-A02wdi+J3D7tA@mail.gmail.com>
X-Spamd-Bar: -----
Message-ID-Hash: SVXHGWJZ3RVPMXDLY233IKNFKVGH5X23
X-Message-ID-Hash: SVXHGWJZ3RVPMXDLY233IKNFKVGH5X23
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SVXHGWJZ3RVPMXDLY233IKNFKVGH5X23/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0654181240466513536=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[kernel.org:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 573DC1A421C
X-Rspamd-Action: no action


--===============0654181240466513536==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="sxksscuwilvy7rfq"
Content-Disposition: inline


--sxksscuwilvy7rfq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/7] dma-buf: heaps: Turn heaps into modules
MIME-Version: 1.0

Hi John,

Thanks for the review

On Wed, Feb 25, 2026 at 10:51:30AM -0800, John Stultz wrote:
> On Wed, Feb 25, 2026 at 8:42=E2=80=AFAM Maxime Ripard <mripard@kernel.org=
> wrote:
> >
> > The recent introduction of heaps in the optee driver [1] made possible
> > the creation of heaps as modules.
> >
> > It's generally a good idea if possible, including for the already
> > existing system and CMA heaps.
> >
> > The system one is pretty trivial, the CMA one is a bit more involved,
> > especially since we have a call from kernel/dma/contiguous.c to the CMA
> > heap code. This was solved by turning the logic around and making the
> > CMA heap call into the contiguous DMA code.
> >
>=20
> So heaps-as-modules is common in the Android kernels, and was
> attempted to be upstreamed long ago:
>   https://lore.kernel.org/lkml/20191025234834.28214-1-john.stultz@linaro.=
org/
>=20
> And it got a fairly chilly reception, but maybe having the additional
> optee heap (as well as other proposed heaps) might sway folks on this
> now.

I didn't know that Android was using heap as modules only, but I'd say
that it's even more of a reason to upstream it then.

> There is also the kref bits you might need (which Android still carries):
>   https://lore.kernel.org/lkml/20200725032633.125006-1-john.stultz@linaro=
=2Eorg/

I'm curious about this one though. It looks like you add refcounting,
but never really get the references anywhere. What was your intent, that
on every allocation the buffer would get a reference to the heap so we
avoid removing a heap with allocated buffers?

Maxime

--sxksscuwilvy7rfq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaaAd3wAKCRAnX84Zoj2+
dircAYDWmwkdH/3AAjuPp85DnYNPbSGFdhX/eyVBlLKWPqfln+xq2+gc6gDrOAAL
OyDKUToBf19j250y3Z4PQ7QYr1AXEq1bAKHYLpYrTQLrYCtOtKbL3L1J1eqyj4Jl
H3gZy48H7w==
=URjd
-----END PGP SIGNATURE-----

--sxksscuwilvy7rfq--

--===============0654181240466513536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0654181240466513536==--
