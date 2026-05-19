Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJOyMtwyDGrdZAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:52:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A71757BA88
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:52:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52CA64069A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:52:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4400E4069A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 09:52:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JHEixrZp;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A943440325;
	Tue, 19 May 2026 09:52:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07597C2BCB3;
	Tue, 19 May 2026 09:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779184335;
	bh=qQAx2S7DIvi/HfSEU64Ukx1DApHFp7BANES2FJ3Vywc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JHEixrZpCOxm73sOygk3wsmQN4Sm+kK2cjidgYWrtWzLq18Z52de1Mvh9HxAqd6EA
	 VVXXQvt1Ozkom/KZncwEzxmYH+FMDBWqFO/tLBn2FGrJKFLVq0FKr4uovi5j5MPIvI
	 geo1yLPS/pBsfqcn2UjNTDoaT/EnpFNcsqApniiB3GHn0ETqukBO1/NKnIQg+JHBtQ
	 dqT9Bdj3KS1vonHExfpsmiZHZnByH8K238WVDuIlSfAZNa6L4jbVwToGFlqx45vRaU
	 jkX6w76ZEHYGgY3IK4PrDOPXISkwqWxw9DSyEdHmQD6rMSDzzgss1dpEolpI3FMdfF
	 S7+EGBrXxCzzg==
Date: Tue, 19 May 2026 11:52:13 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20260519-loutish-beautiful-trogon-67453f@houat>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com>
 <20260505181523.49a3d85c@fedora>
 <afxVIuVVPisBQ9p_@e129842.arm.com>
 <20260507135356.5428d50d@fedora>
 <agMvb_jeRsO7tSS-@e142607>
 <20260512161111.0cb7000e@fedora>
 <agNJasayW8VCHTiU@e142607>
 <CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
 <20260518091650.5a7a4f4a@fedora>
MIME-Version: 1.0
In-Reply-To: <20260518091650.5a7a4f4a@fedora>
X-Spamd-Bar: -----
Message-ID-Hash: WAYCLRMTHJHLB23WWTWWRU4FDP7UZPOJ
X-Message-ID-Hash: WAYCLRMTHJHLB23WWTWWRU4FDP7UZPOJ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Chia-I Wu <olvaffe@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, Marcin =?utf-8?Q?=C5=9Alusarz?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-me
 dia@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WAYCLRMTHJHLB23WWTWWRU4FDP7UZPOJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8686307821095042340=="
X-Spamd-Result: default: False [1.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,arm.com,ffwll.ch,linux.intel.com,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5A71757BA88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============8686307821095042340==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ehulylxo6op5dniv"
Content-Disposition: inline


--ehulylxo6op5dniv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for
 protected memory allocation in panthor
MIME-Version: 1.0

Hi Boris,

On Mon, May 18, 2026 at 09:16:50AM +0200, Boris Brezillon wrote:
> On Wed, 13 May 2026 12:31:32 -0700
> Chia-I Wu <olvaffe@gmail.com> wrote:
>=20
> > On Tue, May 12, 2026 at 8:39=E2=80=AFAM Liviu Dudau <liviu.dudau@arm.co=
m> wrote:
> > >
> > > On Tue, May 12, 2026 at 04:11:11PM +0200, Boris Brezillon wrote: =20
> > > > On Tue, 12 May 2026 14:47:27 +0100
> > > > Liviu Dudau <liviu.dudau@arm.com> wrote:
> > > > =20
> > > > > On Thu, May 07, 2026 at 01:53:56PM +0200, Boris Brezillon wrote: =
=20
> > > > > > On Thu, 7 May 2026 11:02:26 +0200
> > > > > > Marcin =C5=9Alusarz <marcin.slusarz@arm.com> wrote:
> > > > > > =20
> > > > > > > On Tue, May 05, 2026 at 06:15:23PM +0200, Boris Brezillon wro=
te: =20
> > > > > > > > > @@ -277,9 +286,21 @@ int panthor_device_init(struct panth=
or_device *ptdev)
> > > > > > > > >                     return ret;
> > > > > > > > >     }
> > > > > > > > >
> > > > > > > > > +   /* If a protected heap name is specified but not foun=
d, defer the probe until created */
> > > > > > > > > +   if (protected_heap_name && strlen(protected_heap_name=
)) { =20
> > > > > > > >
> > > > > > > > Do we really need this strlen() > 0? Won't dma_heap_find() =
fail is the
> > > > > > > > name is "" already? =20
> > > > > > >
> > > > > > > If dma_heap_find() will fail, then the whole probe with fail =
too.
> > > > > > > This check prevents that. =20
> > > > > >
> > > > > > Yeah, that's also a questionable design choice. I mean, we can
> > > > > > currently probe and boot the FW even though we never setup the
> > > > > > protected FW sections, so why should we defer the probe here? C=
an't we
> > > > > > just retry the next time a group with the protected bit is crea=
ted and
> > > > > > fail if we can find a protected heap? =20
> > > > >
> > > > > The problem we have with the current firmware is that it does a n=
umber of setup steps at "boot"
> > > > > time only. One of the steps is preparing its internal structures =
for when it enters protected
> > > > > mode and it stores them in the buffer passed in at firmware loadi=
ng. We cannot later run the
> > > > > process when we have a group with protected mode set. =20
> > > >
> > > > No, but we can force a full/slow reset and have that thing
> > > > re-initialized, can't we? I mean, that's basically what we do when a
> > > > fast reset fails: we re-initialize all the sections and reset again=
, at
> > > > which point the FW should start from a fresh state, and be able to
> > > > properly initialize the protected-related stuff if protected sectio=
ns
> > > > are populated. Am I missing something? =20
> > >
> > > Right, we can do that. For some reason I keep associating the reset w=
ith the
> > > error handling and not with "normal" operations. =20
> > I kind of hope we end up with either
> >=20
> >  - panthor knows the exact heap to use and fails with EPROBE_DEFER if
> > the heap is missing, or
> >  - panthor gets a dma-buf from userspace and does the full reset
> >    - userspace also needs to provide a dma-buf for each protected
> > group for the suspend buffer
> >=20
> > than something in-between. The latter is more ad-hoc and basically
> > kicks the issue to the userspace.
>=20
> Indeed, the second option is more ad-hoc, but when you think about it,
> userspace has to have this knowledge, because it needs to know the
> dma-heap to use for buffer allocation that cross a device boundary
> anyway. Think about frames produced by a video decoder, and composited
> by the GPU into a protected scanout buffer that's passed to the KMS
> device. Why would the GPU driver be source of truth when it comes to
> choosing the heap to use to allocate protected buffers for the video
> decoder or those used for the display?

Just fyi, the trend is to go to devices listing the heaps userspace
should allocate from and/or using the heaps internally to allocate their
buffers, so that last part is where we're headed, and feels totally
reasonable to me.

Maxime

--ehulylxo6op5dniv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCagwyvwAKCRAnX84Zoj2+
dgjMAX9vYm/a4/mvh7CTGhu02MOZ2R365vHowMKWRty1Iieek7krzaTpTq2fXWdd
H94eza8Bf1qt0LVur372tjV0TZ6LACyCkou132aOZthz51XbsLGn68Or0vOV4+vZ
v4p+K4/w4Q==
=5L5Y
-----END PGP SIGNATURE-----

--ehulylxo6op5dniv--

--===============8686307821095042340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8686307821095042340==--
