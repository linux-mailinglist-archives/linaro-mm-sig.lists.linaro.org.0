Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 803968C760B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 14:22:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B6E84475E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 12:22:12 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id B358D3F52A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 12:22:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=jSjoRR0b;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6EC04CE18BA;
	Thu, 16 May 2024 12:21:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18360C2BD11;
	Thu, 16 May 2024 12:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715862118;
	bh=og2Nqqaql9Pj5FhU3UnTUi0Dq2iCUYzxBGOkcdtvLyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jSjoRR0bdV7cvpZVVM41FV1kAcxVnP3ZkQ7KWgn7qAQaco1R7LaFpSWK+y53DTQHz
	 Gbrr8X5h9mMRQNE1BLYdh52u5xgCdJM5Q97tEoX4NWBWZ/GDBLqATfRPPqyU3Y08d0
	 ekRwpEKYYNDJ3oOKEQ2wEC1pJfgH5NSZYik1C/KHezwvSbnZgrsaTUQPz/XzFV3K7k
	 Mif5MjrrWIyHQO4sx1x4qBDazGCUr4pyyvfg0McFPsTKDp3igMKJMy/BnYQi1OXoG6
	 Ha6hCRXavz2UUhJmSzE+bZTYmbIF1IAikT7MTxPrXznj9BRKGKj9HOGrQWp7emJoYp
	 xybjPdYK+PUjw==
Date: Thu, 16 May 2024 14:21:45 +0200
From: Maxime Ripard <mripard@kernel.org>
To: John Stultz <jstultz@google.com>
Message-ID: <20240516-truthful-fair-kudu-adb6df@penduick>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B358D3F52A
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: WRLTV625GY7OBFDD5PJQ6G47JVZMHHJC
X-Message-ID-Hash: WRLTV625GY7OBFDD5PJQ6G47JVZMHHJC
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WRLTV625GY7OBFDD5PJQ6G47JVZMHHJC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6946309374585077340=="


--===============6946309374585077340==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="npe44gq3m5hshith"
Content-Disposition: inline


--npe44gq3m5hshith
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi John,

Thanks for your feedback

On Wed, May 15, 2024 at 11:42:58AM -0700, John Stultz wrote:
> On Wed, May 15, 2024 at 6:57=E2=80=AFAM Maxime Ripard <mripard@kernel.org=
> wrote:
> > This series is the follow-up of the discussion that John and I had a few
> > months ago here:
> >
> > https://lore.kernel.org/all/CANDhNCquJn6bH3KxKf65BWiTYLVqSd9892-xtFDHHq=
qyrroCMQ@mail.gmail.com/
> >
> > The initial problem we were discussing was that I'm currently working on
> > a platform which has a memory layout with ECC enabled. However, enabling
> > the ECC has a number of drawbacks on that platform: lower performance,
> > increased memory usage, etc. So for things like framebuffers, the
> > trade-off isn't great and thus there's a memory region with ECC disabled
> > to allocate from for such use cases.
> >
> > After a suggestion from John, I chose to start using heap allocations
> > flags to allow for userspace to ask for a particular ECC setup. This is
> > then backed by a new heap type that runs from reserved memory chunks
> > flagged as such, and the existing DT properties to specify the ECC
> > properties.
> >
> > We could also easily extend this mechanism to support more flags, or
> > through a new ioctl to discover which flags a given heap supports.
>=20
> Hey! Thanks for sending this along! I'm eager to see more heap related
> work being done upstream.
>=20
> The only thing that makes me a bit hesitant, is the introduction of
> allocation flags (as opposed to a uniquely specified/named "ecc"
> heap).
>=20
> We did talk about this earlier, and my earlier press that only if the
> ECC flag was general enough to apply to the majority of heaps then it
> makes sense as a flag, and your patch here does apply it to all the
> heaps. So I don't have an objection.
>=20
> But it makes me a little nervous to add a new generic allocation flag
> for a feature most hardware doesn't support (yet, at least). So it's
> hard to weigh how common the actual usage will be across all the
> heaps.
>=20
> I apologize as my worry is mostly born out of seeing vendors really
> push opaque feature flags in their old ion heaps, so in providing a
> flags argument, it was mostly intended as an escape hatch for
> obviously common attributes. So having the first be something that
> seems reasonable, but isn't actually that common makes me fret some.
>=20
> So again, not an objection, just something for folks to stew on to
> make sure this is really the right approach.

I understand your hesitation and concern :) Is there anything we could
provide that would help moving the discussion forward?

> Another thing to discuss, that I didn't see in your mail: Do we have
> an open-source user of this new flag?

Not at the moment. I guess it would be one of the things that would
reduce your concerns, but is it a requirement?

Thanks!
Maxime

--npe44gq3m5hshith
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZkX6VAAKCRAnX84Zoj2+
dvFkAX4hPR+OmB6uyCvlMnPDpOA7eFAD+O5/7X+BRKTf5Cmdj+Cie8BhtyQAl7C8
Hky2TnoBgM2pwhStelk3c11olIba3Ix/Pi7eLLvudC0t/wilucjcMDy5wbyzQGJw
YksYgv+49Q==
=UGuj
-----END PGP SIGNATURE-----

--npe44gq3m5hshith--

--===============6946309374585077340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6946309374585077340==--
