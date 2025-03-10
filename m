Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 421D0A59401
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:16:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C11D43C89
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:16:14 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 284C143C89
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:15:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=N0IMrrYI;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 73620A4593B;
	Mon, 10 Mar 2025 12:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC7FEC4CEE5;
	Mon, 10 Mar 2025 12:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608957;
	bh=KUnX5nhORWvOtCZHvFP20W21X3MBVPy20HvX7ysw3k8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N0IMrrYIBu39uSjEkhRFYAdxzoyG002lgHph+TW+mMDW+6bhWEFRi/J0WyRYZTSgz
	 Bx56A/0mLXPy9N9br/OvR+ZZs6YhXlCTfAdKprucWWiYTSbdR21iPhbsbfyvDx10p1
	 J3Bwy2MhegMZke26K2MTuzJQxIEDMYvcu9oFhwkBocv7tuHzppQIfB0W8TyifDz1QB
	 BrYP2Ckz59F1p/bWPXXPbSGY4X38nrUPNXZ+knrmHLsWwxlgrc2YZl3QWEt2LoHvGW
	 yqC8c1KeMIz645bN1JtPwRVqyvH3op9kz0hUdLGcHpT25lWukDs6hjzF8n3CvYbbwA
	 0pmpStiii7PUg==
Date: Mon, 10 Mar 2025 13:15:54 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>
Message-ID: <20250310-aromatic-gaur-of-growth-bd4071@houat>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 284C143C89
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,amd.com,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org];
	FREEMAIL_CC(0.00)[xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: NHDGBAD4M3IN7GZHUKP7QZEZFUNESU6Q
X-Message-ID-Hash: NHDGBAD4M3IN7GZHUKP7QZEZFUNESU6Q
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NHDGBAD4M3IN7GZHUKP7QZEZFUNESU6Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3247940024134775964=="


--===============3247940024134775964==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ppavg5bsjgk4kjoi"
Content-Disposition: inline


--ppavg5bsjgk4kjoi
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
MIME-Version: 1.0

On Mon, Mar 10, 2025 at 01:06:06PM +0100, Maxime Ripard wrote:
> Here's preliminary work to enable dmem tracking for heavy users of DMA
> allocations on behalf of userspace: v4l2, DRM, and dma-buf heaps.
>=20
> It's not really meant for inclusion at the moment, because I really
> don't like it that much, and would like to discuss solutions on how to
> make it nicer.
>=20
> In particular, the dma dmem region accessors don't feel that great to
> me. It duplicates the logic to select the proper accessor in
> dma_alloc_attrs(), and it looks fragile and potentially buggy to me.
>=20
> One solution I tried is to do the accounting in dma_alloc_attrs()
> directly, depending on a flag being set, similar to what __GFP_ACCOUNT
> is doing.
>=20
> It didn't work because dmem initialises a state pointer when charging an
> allocation to a region, and expects that state pointer to be passed back
> when uncharging. Since dma_alloc_attrs() returns a void pointer to the
> allocated buffer, we need to put that state into a higher-level
> structure, such as drm_gem_object, or dma_buf.
>=20
> Since we can't share the region selection logic, we need to get the
> region through some other mean. Another thing I consider was to return
> the region as part of the allocated buffer (through struct page or
> folio), but those are lost across the calls and dma_alloc_attrs() will
> only get a void pointer. So that's not doable without some heavy
> rework, if it's a good idea at all.

One thing I forgot to mention is that it makes it harder than it could
for subsystems that can allocate from multiple allocators (like... all
the ones included in this series at least).

I only added proper tracking in the backends using dma_alloc_attrs(),
but they also support vmalloc. In what region vmalloc allocations should
be tracked (if any) is an open-question to me. Similarly, some use
dma_alloc_noncontiguous().

Also, I've set the size of the "default" DMA allocation region to
U64_MAX, but that's obviously wrong and will break any relative metric.
I'm not sure what would be the correct size though.

Maxime

--ppavg5bsjgk4kjoi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ87X+QAKCRDj7w1vZxhR
xV0SAP9D+a9I6bgS5IRYuQrHA6k0Ra5d7uq+uPWbr3aJfwKx2QD/fe7P1A9AYvBB
2tIKFUcziC1uvL3qqtVJMp4dvAZf0w8=
=6LbE
-----END PGP SIGNATURE-----

--ppavg5bsjgk4kjoi--

--===============3247940024134775964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3247940024134775964==--
