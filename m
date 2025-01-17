Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 241B4A150EB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Jan 2025 14:49:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3628D40C68
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Jan 2025 13:49:41 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id B1FE93F5BF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Jan 2025 13:49:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gkGeUo2S;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 868155C628B;
	Fri, 17 Jan 2025 13:48:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95310C4CEDD;
	Fri, 17 Jan 2025 13:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737121770;
	bh=O7JFQicJ0NtEcx4CvhyxwTYghPzU/D+bqAd4IyrgR+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gkGeUo2S32+36cRZd21fSE2lwlcQGITIoU2+TwX2FccHaYYL2FbZLe7r1806Hk/59
	 u2XA9D2Vnqxv9ltTp/Lez19Tc+i/+U3WVxOC/5ESVKODlaFQLanM0ltpgmdMrvh2XS
	 ZumNPpdZediTeToDBFV6JI8zbr0HRUOdii6FwVJ82oIvUZ1QlYnPeMv131/lgqv0kh
	 Wp6EubFOWl5H4kabsxuqtpOa32x8qBU8LjVbrS/6lZi0Ihybe9Dj+w+s2FcEgXbJiR
	 z9fHDGnjorEw2WKqV23w5BIKr2+o0tJgPIWIscyjxU+39WkPqJ2wmy8vB9MD6Lk9pE
	 medndEQ+J8pyA==
Date: Fri, 17 Jan 2025 14:49:28 +0100
From: Maxime Ripard <mripard@kernel.org>
To: John Stultz <jstultz@google.com>
Message-ID: <20250117-teal-limpet-of-attraction-cc30dc@houat>
References: <20241202115827.50388-1-mripard@kernel.org>
 <CANDhNCpTnc6=YkjQgQngRCw1_xLWgOFrcjTxrrGX+bRhvGb5DQ@mail.gmail.com>
 <20241203-cerulean-ringtail-of-speed-920c5f@houat>
 <f6412229-4606-41ad-8c05-7bbba2eb6e08@ti.com>
 <CANDhNCqtMUaO4Y_7UYGJebDEdN==vTAQRexuuek5SZt5rqd8sQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANDhNCqtMUaO4Y_7UYGJebDEdN==vTAQRexuuek5SZt5rqd8sQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B1FE93F5BF
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.55 / 15.00];
	BAYES_HAM(-2.95)[99.79%];
	SIGNED_PGP(-2.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: SFQQ5U4SNRHBLJ7UFF5QAOYJ25F4D64Q
X-Message-ID-Hash: SFQQ5U4SNRHBLJ7UFF5QAOYJ25F4D64Q
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] Documentation: dma-buf: heaps: Add heap name definitions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SFQQ5U4SNRHBLJ7UFF5QAOYJ25F4D64Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3824939597114949215=="


--===============3824939597114949215==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="dtdfvpfetnsaprru"
Content-Disposition: inline


--dtdfvpfetnsaprru
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] Documentation: dma-buf: heaps: Add heap name
 definitions
MIME-Version: 1.0

Hi,

On Thu, Dec 05, 2024 at 03:17:57PM -0800, John Stultz wrote:
> On Tue, Dec 3, 2024 at 11:04=E2=80=AFAM Andrew Davis <afd@ti.com> wrote:
> > On 12/3/24 1:44 AM, Maxime Ripard wrote:
> > > On Mon, Dec 02, 2024 at 11:12:23AM -0800, John Stultz wrote:
> > >> Hrm. I'm not sure I see the value in enumerating things in this way,
> > >> it seems like it will be a nuisance to keep current?  Maybe something
> > >> like:
> > >>
> > >> On most systems the default cma region is named "linux, cma" or
> > >> "reserved", with a few exceptions:
> > >>      - Allwinner sun4i, sun5i and sun7i families: ``default-pool``
> > >
> > > I'm a bit worried about doing so. What if, on a "linux,cma" system, we
> > > have another "reserved" heap created with different semantics?
> > >
> >
> > Having the "default CMA" heap get its dev name based on the method that
> > created it was arguably a mistake made when first upstreaming this heap.
> > We should fix this, then maybe add the old name as a link just for
> > backwards compat as needed.
> >
> > exp_info.name =3D "default_cma";
> >
> > All other CMA and carveout heaps will have names based on their
> > method of creation as there may be multiple of them, but there
> > will only every be one "default CMA" area, and its heap should
> > be named to match.
>=20
> This seems reasonable to me. Maybe putting the link creation behind a
> compatibility config so they can be later deprecated?

I gave it a look, and while I'm not super experienced with fs in
general, it looks like there's no easy way to create a symbolic link
in devtmpfs from the kernel.

I also tried to cheat a little and create another device file with the
same major/minor, but that doesn't look trivial to me either.

Do you know how to do so, or are aware of any other part of the kernel
doing something similar?

Most importantly, do you consider it a requirement before merging that
patch?

Maxime

--dtdfvpfetnsaprru
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ4pf5wAKCRAnX84Zoj2+
dhtAAYCFvHr/OFIpzNt69O/MpCCKxMRZUiBIx4bA83PUEIA5vMesA6BYgmG4/jK2
w2V9F40Bf1Shy5XU83T4+cN0Ry59H7i+EPtgGeLOMcOH2Vm2BcCRcNCi4CJbH4RR
WTQDDsHnng==
=cN3i
-----END PGP SIGNATURE-----

--dtdfvpfetnsaprru--

--===============3824939597114949215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3824939597114949215==--
