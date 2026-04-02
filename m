Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKblCCdrzmmpngYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 15:12:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A11389775
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 15:12:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F74C401E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 13:12:05 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3AF2E3F8FE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 13:12:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WSszUspE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 970D843F07;
	Thu,  2 Apr 2026 13:12:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2097EC116C6;
	Thu,  2 Apr 2026 13:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775135522;
	bh=a7x/ysTtVW24aU35eMPirkt+sO+v8dpDAEKDhxuDe60=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WSszUspE9dzXyP1vG2gMcdzvhWi9nAi5ipcnGtuyZonB7RZAGmX1hwDPduMtfEj0f
	 lW2LoRIl2ShIjcyVDeuG1hlvOO/zqpCeA0Z146DRKKA0duBquAvj+fJQT/uscVbkZe
	 2wg5nQmX87424MYUc//sb0M9cOh0Ho+XSCi8NXobJRbr+fliundDiCPi1S/NRwsAeC
	 kc4nITLm01qhH8H8Sxex1i7X4/hTzJrnBqisiAgNMciIgTmVqODXmYgxMjwhE4MTBg
	 w18ZXyGoeIRDg6/g/t6PcP82CKsFc0A1CC7A5a4HCiyOTIneD54u7brrQ1GJ5SK+vp
	 +XGiv48Yu5boA==
Date: Thu, 2 Apr 2026 15:11:59 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <20260402-burrowing-fine-bloodhound-afcebc@houat>
References: <CGME20260331100026eucas1p19bdc2aaca4c9a48c6f6ac8fec71478d8@eucas1p1.samsung.com>
 <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
 <46397de2-eedf-4e09-a83a-3b683d154fe7@samsung.com>
 <CAO_48GEFQE_FJjuq1UqP=DC6LJE8jjE3C+4FdAyB4uEZDsnFJw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO_48GEFQE_FJjuq1UqP=DC6LJE8jjE3C+4FdAyB4uEZDsnFJw@mail.gmail.com>
X-Spamd-Bar: -----
Message-ID-Hash: S5C5WPSB5IVJE3WPTFUOX5QSSN6W3KDJ
X-Message-ID-Hash: S5C5WPSB5IVJE3WPTFUOX5QSSN6W3KDJ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S5C5WPSB5IVJE3WPTFUOX5QSSN6W3KDJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2658002696943706846=="
X-Spamd-Result: default: False [0.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.180];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 95A11389775
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============2658002696943706846==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="me4gicdwmutl43x6"
Content-Disposition: inline


--me4gicdwmutl43x6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 0/8] dma-buf: heaps: Turn heaps into modules
MIME-Version: 1.0

On Thu, Apr 02, 2026 at 10:36:48AM +0530, Sumit Semwal wrote:
> Hello Maxime,
>=20
> On Tue, 31 Mar 2026 at 18:24, Marek Szyprowski <m.szyprowski@samsung.com>=
 wrote:
> >
> > On 31.03.2026 12:00, Maxime Ripard wrote:
> > > The recent introduction of heaps in the optee driver [1] made possible
> > > the creation of heaps as modules.
> > >
> > > It's generally a good idea if possible, including for the already
> > > existing system and CMA heaps.
> > >
> > > The system one is pretty trivial, the CMA one is a bit more involved,
> > > especially since we have a call from kernel/dma/contiguous.c to the C=
MA
> > > heap code. This was solved by turning the logic around and making the
> > > CMA heap call into the contiguous DMA code.
> > >
> > > Let me know what you think,
> > > Maxime
> > >
> > > 1: https://lore.kernel.org/dri-devel/20250911135007.1275833-4-jens.wi=
klander@linaro.org/
> > >
> > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
>=20
> Thank you for this patch series; now that it is needed by more folks,
> I think we can merge this.
>=20
> Marek, I'll coordinate with you on this - thank you!

If Marek plans on sending it during the next merge window, maybe the
best thing to do for us is just to wait for -rc1 and apply the rest of
the patches. Otherwise, we can merge the branch in drm-misc.

Maxime

--me4gicdwmutl43x6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCac5rGAAKCRAnX84Zoj2+
drvAAX9Gv+TrbX5Ru5iTuTfrjby3dUGZF6Vd9/L4HY+x15swwQBj44P2X43WwAnM
cMhPq+8Bf00cagtlOIBhV4Hse29yKk8z2Is7iRaewRIPe/yQho7wdJK8x1cnDkbD
NQuA+jE9OQ==
=+ZbZ
-----END PGP SIGNATURE-----

--me4gicdwmutl43x6--

--===============2658002696943706846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2658002696943706846==--
