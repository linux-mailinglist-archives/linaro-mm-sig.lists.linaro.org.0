Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGjZBCRHvWlZ8gIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2026 14:09:56 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C102DAB9D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2026 14:09:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 72DE33F802
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2026 13:09:54 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3BF8A3F802
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Mar 2026 13:09:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UhusO7Ir;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A84E8443E5;
	Fri, 20 Mar 2026 13:09:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3263CC4CEF7;
	Fri, 20 Mar 2026 13:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774012191;
	bh=KtyqkgdW2N+tGuiRRGwfaJSw9/wwP3BDlPbzeD6Tf8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UhusO7Ir2EBydsGHlZyj5vew5uqx3LL62vko5Nvx7uYqnN8LXpvVu0HBg4Jb3rN11
	 6S73M9ojHqYjBNhrbqF5Hh7jyCfzHErGHu3L1R6mUu7iSqAUdNpYycA6t0Y2JGCu7I
	 azCPpzorM0ShT1moymtT/RU9iLPZHEFywsckNnX3po4/g+RkOux39sHfuVFqfrhI0x
	 6K5iBG0kBNAiB0VJi3u6qKegr8Nd04DhRa7oBU/Df5hCAnlurweBz5L4KTZSQstN+h
	 7+aKbBVLQnUQbRckkQHUOiKXHr8jcSwXklaf2DF4sTPlOxHzV7mqlaSl370vp3i1VV
	 OQBJzASK6ggNg==
Date: Fri, 20 Mar 2026 14:09:48 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20260320-cryptic-industrious-otter-5b696a@houat>
References: <CGME20260303101320eucas1p2eb4fea499364ef20825d0d73585a2555@eucas1p2.samsung.com>
 <20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
 <c60a3f30-6fc3-41ab-835a-2fdd887e18fd@samsung.com>
MIME-Version: 1.0
In-Reply-To: <c60a3f30-6fc3-41ab-835a-2fdd887e18fd@samsung.com>
X-Spamd-Bar: ------
Message-ID-Hash: SQQJHF5NYFMHOV4RN5IAVLVLEMD32YZR
X-Message-ID-Hash: SQQJHF5NYFMHOV4RN5IAVLVLEMD32YZR
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SQQJHF5NYFMHOV4RN5IAVLVLEMD32YZR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6056631464223015212=="
X-Spamd-Result: default: False [0.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.090];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 86C102DAB9D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============6056631464223015212==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="zs66qpw74bbg7irl"
Content-Disposition: inline


--zs66qpw74bbg7irl
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/8] dma-buf: heaps: Turn heaps into modules
MIME-Version: 1.0

Hi Marek,

On Fri, Mar 20, 2026 at 01:24:18PM +0100, Marek Szyprowski wrote:
> On 03.03.2026 11:13, Maxime Ripard wrote:
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
> > Let me know what you think,
> > Maxime
> >
> > 1: https://lore.kernel.org/dri-devel/20250911135007.1275833-4-jens.wikl=
ander@linaro.org/
> >
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
>=20
> I'm okay with the kernel/dma/contiguous.c changes. I only wonder how to=
=20
> properly merge them. There are other pending changes to=20
> kernel/dma/contiguous.c file [1] and if they finally get reviewed, I=20
> would like to merge=A0both via dma-mapping-for-next tree. Then I can=20
> provide a stable branch for merging the remaining dma-buf pathes. Is it=
=20
> okay for You?

That sounds reasonable to media
Thanks!
Maxime

--zs66qpw74bbg7irl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCab1HHAAKCRAnX84Zoj2+
dtHjAYCni65LYJfONrHzX1+dmTg8jR62Up22RXPxSlYyod1hB1tdIw9izCD0G6Yd
tTFaIwEBgJvjLz3SwBA1sbRbznr8PQjslZc5ZJNJzdGupJIT8b7KJryJWaeGjrY9
oc+2U5qZsA==
=0xTf
-----END PGP SIGNATURE-----

--zs66qpw74bbg7irl--

--===============6056631464223015212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6056631464223015212==--
