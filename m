Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAABA9BF0B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 08:58:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9F04454CD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 06:58:52 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 4F6853F549
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Apr 2025 06:58:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BQ0zXSRz;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8029A5C4957;
	Fri, 25 Apr 2025 06:56:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01378C4CEE4;
	Fri, 25 Apr 2025 06:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745564318;
	bh=ZOCpgYtOjGRmmw6XMk4R1FQCrrG9Hy9EDJQTQ/uzv1Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BQ0zXSRzKxud5QbdoyrqDtmmA+RNeeCnTbdhp3plOJH1bqYru6wepkYH7g3u4FrBu
	 QWbjNm2+GGGCVnFapW4QqXrvd8Z0JPPGrBpdFVzgiP8B9YWP3VDsShnLifupD/MwCq
	 SU4fTv6M3dYOm5Xpm9GY5dqWTfxuYSmqCxuMxjSstmRW/c+bxBUh31ukcfHQo6pjN4
	 ilbmH9kgnsEnaD8HHw3lt03NWi5bFo8stud8771nTlNsgos6gDZWkwDobO1U7PSwZ8
	 YW1Ofia52UoRfh03McK2MyGe+xUcu63z4h4QxRYEUmcZAhZJG5GgJ6Tb194ytEZChi
	 zL9+0cSFPG7PA==
Date: Fri, 25 Apr 2025 08:58:35 +0200
From: Maxime Ripard <mripard@kernel.org>
To: John Stultz <jstultz@google.com>
Message-ID: <20250425-savvy-chubby-alpaca-0196e3@houat>
References: <20250422191939.555963-1-jkangas@redhat.com>
 <20250422191939.555963-3-jkangas@redhat.com>
 <20250424-sassy-cunning-pillbug-ffde51@houat>
 <CANDhNCqfsUbN3aavAH5hi4wdcKuUkjLX4jqhKzy-q+jCEqpoow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANDhNCqfsUbN3aavAH5hi4wdcKuUkjLX4jqhKzy-q+jCEqpoow@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F6853F549
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	DNSWL_BLOCKED(0.00)[139.178.84.217:from];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7VZYHGZFHWPRFZXTVRFXMTDRLR2WANZG
X-Message-ID-Hash: 7VZYHGZFHWPRFZXTVRFXMTDRLR2WANZG
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jared Kangas <jkangas@redhat.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7VZYHGZFHWPRFZXTVRFXMTDRLR2WANZG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4374329136643601633=="


--===============4374329136643601633==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="kzhh3umpacms7elx"
Content-Disposition: inline


--kzhh3umpacms7elx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
MIME-Version: 1.0

On Thu, Apr 24, 2025 at 05:13:47PM -0700, John Stultz wrote:
> On Thu, Apr 24, 2025 at 1:34=E2=80=AFAM Maxime Ripard <mripard@kernel.org=
> wrote:
> > On Tue, Apr 22, 2025 at 12:19:39PM -0700, Jared Kangas wrote:
> > > @@ -22,6 +22,7 @@
> > >  #include <linux/slab.h>
> > >  #include <linux/vmalloc.h>
> > >
> > > +#define DEFAULT_CMA_NAME "default_cma"
> >
> > I appreciate this is kind of bikeshed-color territory, but I think "cma"
> > would be a better option here. There's nothing "default" about it.
>=20
> I disagree.  It very much is "default" as it's returning the
> dma_contiguous_default_area.

My main concern here is that it's "default" as opposed to what, exactly?
We have a single CMA allocator. We could have multiple buffer
attributes, but then "cached_cma" would make more sense to me if we
expect to have uncached CMA allocations at some point.

> There can be multiple CMA areas, and out of tree, vendors do reserve
> separate areas for specific purposes, exposing multiple CMA dmabuf
> heaps.

By "CMA areas", I guess you mean carved-out memory regions? If so, how
is it relevant to userspace if we use CMA or any other implementation to
expose a carved-out region, and thus that we carry that implemenattion
detail in the name?

> There have been patches to expose multiple CMA heaps, but with no
> upstream drivers using those purpose specific regions, we haven't
> taken them yet.
> I do hope as the drivers that utilize these purpose focused heaps go
> upstream, we can add that logic, so I think being specific that this
> is default CMA is a good idea.

If heaps names are supposed to carry the region it exposes, then it
should be default_cma_region/area. If heap names are supposed to expose
the allocator (but I don't think it's a good idea), it should be cma. If
they are meant to carry all that plus some policy,
cached_default_cma_region should be used.

Either way, default_cma seems to me either too specific or not specific
enough. And we should really document what the policy for those heaps
are supposed to be.

Maxime

--kzhh3umpacms7elx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaAsylwAKCRAnX84Zoj2+
dgz1AYDE1OlrQrJ1tqUlxdkEo+pMUFfnZtUXx7wFnBgkSsShPzQ9Spy4piXMG+a0
iIcqHaUBf26WQQpK5w5lp83mz5dNKQ/Xis/4/MLYZk3MUlxMaD37yGN5yf/Nu9aZ
Y9wYQW2MAg==
=vwbA
-----END PGP SIGNATURE-----

--kzhh3umpacms7elx--

--===============4374329136643601633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4374329136643601633==--
