Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F0092E876
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jul 2024 14:44:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24F4E43B8D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jul 2024 12:44:34 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	by lists.linaro.org (Postfix) with ESMTPS id E553B40BEB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jul 2024 12:44:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=gpGSt858;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.208.169 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eea8ea8bb0so14443631fa.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jul 2024 05:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720701870; x=1721306670; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UHIQSML98l0ZiteQclaVKB3TmNkTxPKnEIkuCpbbQdk=;
        b=gpGSt8581cJcfC4NWhvjuP4lgmfN2gIDwu0uy0+KUEG54w49Va2urrkq5XOpwqujFe
         7DMOa/roLDDhdEZT85H1GAJ93WmWUDMYgyO2U+bPtX4qyYivsKQvLixIo+W1lTuMwYLW
         v5eM9TySfRBLAH6+I9MXQMrIUYQFtYD9wDG/cVbdnMG8SMQarONKvT0+m01KQu3uj1sm
         4fkWtaYDzcQYqExFA/Z7GAAKq7cSFC04hF6Vl48l5PsnxPwAcYtBLKyh9lP641Diegi1
         Kzot3P2GEx/cU7Ocrr7JervjI0AJvCVBR8QI1OqPR7FC1cUCLIPzM392h1GDMRN3wDkS
         yKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720701870; x=1721306670;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHIQSML98l0ZiteQclaVKB3TmNkTxPKnEIkuCpbbQdk=;
        b=t5DaHU5kP39jy1eOQ5YrsTKiLXccs/4nOTfidED70hLOamBU1XhPOA5CBRO9BcDI0Z
         C9k5v9a2on+I7D7m5jcR7ZII6u9wxnGF+7Kd761byLBrnOM84QqE4s17jHH20tsQEuoG
         4H/P/6SB3iqzrOUg4XPplvRhfjibAbJeT9pzXn6cFrk+6LE3FJROeDNUC1X9kDbSTQLf
         chmz2Ro/U8QRRZkFQlEd0MNam06LmBXIlvmbTuLgDDj3DGjJClIEqhC/1v8bqHKlxkDm
         B76aCKED/W9jIHr604nVbTKBimanGO/V4KUxeVccSkQq1MMswkAjFJ1ju3h44weiRxT1
         nbqw==
X-Forwarded-Encrypted: i=1; AJvYcCURY0nLDK42k70cpEoOJfs8mlSm+G9ga9U8W/jKfjzPNpjAHa7uAp+DUCHstSDKuRxHqlIaxctNsx/2tPJkC6p+CvKppGeGn2Q0pFCHKy8=
X-Gm-Message-State: AOJu0YylaCSr2xAosepPwfE1JBpPonROvOy4deciHIJsN46OWiJEAmVr
	g5d85rtifyV3vVVHdVt6Ejf1OS1BIq75owG/WO/DrSOBvshpAB3J
X-Google-Smtp-Source: AGHT+IHTdhWqzl6DXPtBTLulWR0yFzbtO2Y5fZehXnVZt9I/Jfq2/5EIqrqjJhw7ik9yJkJWbpwWbQ==
X-Received: by 2002:a2e:a316:0:b0:2ec:5945:62e9 with SMTP id 38308e7fff4ca-2eeb316b47bmr64990731fa.32.1720701868870;
        Thu, 11 Jul 2024 05:44:28 -0700 (PDT)
Received: from orome (p200300e41f162000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f16:2000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f736304sm115556375e9.34.2024.07.11.05.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 05:44:27 -0700 (PDT)
Date: Thu, 11 Jul 2024 14:44:25 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <dzfacxmcmru45ys7ef6gkxdwp5s5vekdrblnc5rhlllhtltsyt@zcs4xto6mfw7>
References: <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
 <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
 <ZkyOOwpM57HIiO3v@phenom.ffwll.local>
 <qy7aczeu6kumv5utemoevi7omp5ryq55zmgzxh5hrz5orf2osp@wypg66awof4n>
 <20240628-resilient-resolute-rook-0fc531@houat>
 <3e37rhrcqogix5obsu2gq7jar7bcoamx4bbd376az5z3zdkwvm@jstirwdl5efm>
 <20240704-therapeutic-maroon-coucal-f61a63@houat>
 <wapv4gl2se34tq3isycb7bui5xi3x6kxjqtyz24qhjipnkbuqu@sv4w2crksuq5>
 <ZogSxHFPt8SpOa0w@phenom.ffwll.local>
 <41859b82-fe75-451a-9e13-fec254bdaad5@gmail.com>
MIME-Version: 1.0
In-Reply-To: <41859b82-fe75-451a-9e13-fec254bdaad5@gmail.com>
X-Rspamd-Queue-Id: E553B40BEB
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.169:from];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.169:from];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WUML6ZQJPTS3JYTG6JLCQGGQRBAIWT54
X-Message-ID-Hash: WUML6ZQJPTS3JYTG6JLCQGGQRBAIWT54
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maxime Ripard <mripard@kernel.org>, John Stultz <jstultz@google.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WUML6ZQJPTS3JYTG6JLCQGGQRBAIWT54/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3520843155372879475=="


--===============3520843155372879475==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="td73epytrbw3q5zt"
Content-Disposition: inline


--td73epytrbw3q5zt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 08, 2024 at 09:14:14AM GMT, Christian K=C3=B6nig wrote:
> Am 05.07.24 um 17:35 schrieb Daniel Vetter:
> > Just figured I'll jump in on one detail here.
> >=20
> > On Fri, Jul 05, 2024 at 04:31:34PM +0200, Thierry Reding wrote:
> > > On Thu, Jul 04, 2024 at 02:24:49PM GMT, Maxime Ripard wrote:
> > > > On Fri, Jun 28, 2024 at 04:42:35PM GMT, Thierry Reding wrote:
> > > > > On Fri, Jun 28, 2024 at 03:08:46PM GMT, Maxime Ripard wrote:
> > > > > > Hi,
> > > > > >=20
> > > > > > On Fri, Jun 28, 2024 at 01:29:17PM GMT, Thierry Reding wrote:
> > > > > > > On Tue, May 21, 2024 at 02:06:19PM GMT, Daniel Vetter wrote:
> > > > > > > > On Thu, May 16, 2024 at 09:51:35AM -0700, John Stultz wrote:
> > > > > > > > > On Thu, May 16, 2024 at 3:56=E2=80=AFAM Daniel Vetter <da=
niel@ffwll.ch> wrote:
> > > > > > > > > > On Wed, May 15, 2024 at 11:42:58AM -0700, John Stultz w=
rote:
> > > > > > > > > > > But it makes me a little nervous to add a new generic=
 allocation flag
> > > > > > > > > > > for a feature most hardware doesn't support (yet, at =
least). So it's
> > > > > > > > > > > hard to weigh how common the actual usage will be acr=
oss all the
> > > > > > > > > > > heaps.
> > > > > > > > > > >=20
> > > > > > > > > > > I apologize as my worry is mostly born out of seeing =
vendors really
> > > > > > > > > > > push opaque feature flags in their old ion heaps, so =
in providing a
> > > > > > > > > > > flags argument, it was mostly intended as an escape h=
atch for
> > > > > > > > > > > obviously common attributes. So having the first be s=
omething that
> > > > > > > > > > > seems reasonable, but isn't actually that common make=
s me fret some.
> > > > > > > > > > >=20
> > > > > > > > > > > So again, not an objection, just something for folks =
to stew on to
> > > > > > > > > > > make sure this is really the right approach.
> > > > > > > > > > Another good reason to go with full heap names instead =
of opaque flags on
> > > > > > > > > > existing heaps is that with the former we can use symli=
nks in sysfs to
> > > > > > > > > > specify heaps, with the latter we need a new idea. We h=
aven't yet gotten
> > > > > > > > > > around to implement this anywhere, but it's been in the=
 dma-buf/heap todo
> > > > > > > > > > since forever, and I like it as a design approach. So w=
ould be a good idea
> > > > > > > > > > to not toss it. With that display would have symlinks t=
o cma-ecc and cma,
> > > > > > > > > > and rendering maybe cma-ecc, shmem, cma heaps (in prior=
ity order) for a
> > > > > > > > > > SoC where the display needs contig memory for scanout.
> > > > > > > > > So indeed that is a good point to keep in mind, but I als=
o think it
> > > > > > > > > might re-inforce the choice of having ECC as a flag here.
> > > > > > > > >=20
> > > > > > > > > Since my understanding of the sysfs symlinks to heaps ide=
a is about
> > > > > > > > > being able to figure out a common heap from a collection =
of devices,
> > > > > > > > > it's really about the ability for the driver to access th=
e type of
> > > > > > > > > memory. If ECC is just an attribute of the type of memory=
 (as in this
> > > > > > > > > patch series), it being on or off won't necessarily affect
> > > > > > > > > compatibility of the buffer with the device.  Similarly "=
uncached"
> > > > > > > > > seems more of an attribute of memory type and not a type =
itself.
> > > > > > > > > Hardware that can access non-contiguous "system" buffers =
can access
> > > > > > > > > uncached system buffers.
> > > > > > > > Yeah, but in graphics there's a wide band where "shit perfo=
rmance" is
> > > > > > > > defacto "not useable (as intended at least)".
> > > > > > > >=20
> > > > > > > > So if we limit the symlink idea to just making sure zero-co=
py access is
> > > > > > > > possible, then we might not actually solve the real world p=
roblem we need
> > > > > > > > to solve. And so the symlinks become somewhat useless, and =
we need to
> > > > > > > > somewhere encode which flags you need to use with each syml=
ink.
> > > > > > > >=20
> > > > > > > > But I also see the argument that there's a bit a combinator=
ial explosion
> > > > > > > > possible. So I guess the question is where we want to handl=
e it ...
> > > > > > > Sorry for jumping into this discussion so late. But are we re=
ally
> > > > > > > concerned about this combinatorial explosion in practice? It =
may be
> > > > > > > theoretically possible to create any combination of these, bu=
t do we
> > > > > > > expect more than a couple of heaps to exist in any given syst=
em?
> > > > > > I don't worry too much about the number of heaps available in a=
 given
> > > > > > system, it would indeed be fairly low.
> > > > > >=20
> > > > > > My concern is about the semantics combinatorial explosion. So f=
ar, the
> > > > > > name has carried what semantics we were supposed to get from th=
e buffer
> > > > > > we allocate from that heap.
> > > > > >=20
> > > > > > The more variations and concepts we'll have, the more heap name=
s we'll
> > > > > > need, and with confusing names since we wouldn't be able to cha=
nge the
> > > > > > names of the heaps we already have.
> > > > > What I was trying to say is that none of this matters if we make =
these
> > > > > names opaque. If these names are contextual for the given system =
it
> > > > > doesn't matter what the exact capabilities are. It only matters t=
hat
> > > > > their purpose is known and that's what applications will be inter=
ested
> > > > > in.
> > > > If the names are opaque, and we don't publish what the exact
> > > > capabilities are, how can an application figure out which heap to u=
se in
> > > > the first place?
> > > This would need to be based on conventions. The idea is to standardize
> > > on a set of names for specific, well-known use-cases.
> > >=20
> > > > > > > Would it perhaps make more sense to let a platform override t=
he heap
> > > > > > > name to make it more easily identifiable? Maybe this is a nai=
ve
> > > > > > > assumption, but aren't userspace applications and drivers not=
 primarily
> > > > > > > interested in the "type" of heap rather than whatever specifi=
c flags
> > > > > > > have been set for it?
> > > > > > I guess it depends on what you call the type of a heap. Where we
> > > > > > allocate the memory from, sure, an application won't care about=
 that.
> > > > > > How the buffer behaves on the other end is definitely something
> > > > > > applications are going to be interested in though.
> > > > > Most of these heaps will be very specific, I would assume.
> > > > We don't have any specific heap upstream at the moment, only generic
> > > > ones.
> > > But we're trying to add more specific ones, right?
> > >=20
> > > > > For example a heap that is meant to be protected for protected vi=
deo
> > > > > decoding is both going to be created in such a way as to allow th=
at
> > > > > use-case (i.e. it doesn't make sense for it to be uncached, for
> > > > > example) and it's also not going to be useful for any other use-c=
ase
> > > > > (i.e. there's no reason to use that heap for GPU jobs or networki=
ng,
> > > > > or whatever).
> > > > Right. But also, libcamera has started to use dma-heaps to allocate
> > > > dma-capable buffers and do software processing on it before sending=
 it
> > > > to some hardware controller.
> > > >=20
> > > > Caches are critical here, and getting a non-cacheable buffer would =
be
> > > > a clear regression.
> > > I understand that. My point is that maybe we shouldn't try to design a
> > > complex mechanism that allows full discoverability of everything that=
 a
> > > heap supports or is capable of. Instead if the camera has specific
> > > requirements, it could look for a heap named "camera". Or if it can
> > > share a heap with other multimedia devices, maybe call the heap
> > > "multimedia".
> > >=20
> > > The idea is that heaps for these use-cases are quite specific, so you
> > > would likely not find an arbitrary number of processes try to use the
> > > same heap.
> > Yeah the idea to sort this out was to have symlinks in sysfs from the
> > device to each heap. We could then have priorities for each such link, =
so
> > that applications can pick the "best" heap that will work with all
> > devices. Or also special links for special use-cases, like for a
> > display+render drm device you might want to have separate links for the
> > display and the render-only use-case.
> >=20
> > I think trying to encode this all into the name of a heap without linki=
ng
> > it to the device is not going to work well in general.
> >=20
> > We still have that entire "make sysfs symlinks work for dma-buf heaps" =
on
> > our todos, and that idea is almost as old as dma-buf itself :-/
>=20
> I still have the draft patches for that lying around on my harddisk
> somewhere with zero time to look into it.
>=20
> If anybody wants to pick it up feel free to ping me, but be aware that you
> need to write more documentation than code.

I'm interested, so if you can dig those out that'd be a great reference.

Thanks,
Thierry

--td73epytrbw3q5zt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmaP06kACgkQ3SOs138+
s6G0FA/9Hi0eeg8epQN/swA6h+F2HtoxmMZ0hVURKqRm1OZ/LOKlQcAJeXOqKRWU
MT0vEpM8w4x7MbR7VUtAjP9/U2xyfHfcyGf0UZklTLwNzlyutaUw1Zme0b/5HI8c
xziTMXV3uHkE8cNG72VSQ4PwLr6HhwFuGdAhXHZzK2M0szmLf+cwppwyIjtOYDGM
szpgK9G119TuWgbz9o9LfPrVPp1sL0E2WhWRUazEHMpIuqme0W6ScIweNFmLq8hp
6Q5xS4j9pUCizTKCzlWxazOdh70OcZg4kNzb12cuZET01yXJjr0SA98UQTJnMdla
tZ4hfEZDSHIZDM4c4hNq4TkdiHYekXJhDAEO+DPO5ZgHelOalpgrcfXuH59W4kcg
JnKHu4G7Ucej1fb27Oc5WgTXfSvh5Uz51xotCCm0nQp8Ek+SyK6DUeTaVDI21bYN
Eu8gIsd8AkuU5meEfm/s5w8T2YIei/DF0RhwqrSvzik+3E+4ryES+qvubHPSGy9X
D3hLAJswxUbu5QNatDbNJGGPvL3+mE9uOxcu4H+aUia5m7zmLQFx0PgIDv5i89QG
B5alHoMbXkcgS/VY8JbEg3Pi1032p72Mk/KdVFEPVYI2XwWP0MPSuI1kkdTn5j0c
tSLl1QnOxaN/cvhbOJg8wnNW6mD1O4XEeTOoHigS5amzANcuFno=
=zsP8
-----END PGP SIGNATURE-----

--td73epytrbw3q5zt--

--===============3520843155372879475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3520843155372879475==--
