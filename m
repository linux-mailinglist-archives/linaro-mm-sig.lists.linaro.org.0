Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B398A23209
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 17:38:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E8BC4434A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 16:38:48 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id AAFE53F080
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 16:38:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fw08cHJ2;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 035355C5991;
	Thu, 30 Jan 2025 16:37:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36384C4CED2;
	Thu, 30 Jan 2025 16:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738255112;
	bh=rL0sztCP+uUFRfh2eiDMbMSqe47y8cNW75kdLaMZy6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fw08cHJ2aoBWJ+IETboYHto71wnX+ITXFMGHOEzPklbEm+pnyZNHbkN9q746wggvg
	 pG5Db377lcrP8PdiA0R9/JFkUfWxhoF+8ABqNjmlyX5PK/P9sgFF4cssO25dnbkb/q
	 kb2L8+iKo07FrGNfa5/uq3UnnD4WOS/GCZlodeWi372pMYcMxlJS8HdxkNMHNtQzWL
	 p/3GfGiCxHNcN27Ym7lum86Aw4xonzm4VuJYbFlmC/LoIaAa1YWRrK/H9wE9Lmzdvx
	 Y6TB5qdiEFP4VS/2R/YG0qhMhHjssBzTLzhc6505HOLCHrijhkYg0MYP6/wPIMoVhU
	 LA4FYb3l7ejdg==
Date: Thu, 30 Jan 2025 17:38:29 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Message-ID: <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
References: <cover.1738228114.git.florent.tomasin@arm.com>
 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
MIME-Version: 1.0
In-Reply-To: <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AAFE53F080
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,kernel.org,collabora.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	DNSWL_BLOCKED(0.00)[139.178.84.217:from];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: WOWWQ4G4XL5DYO3JGIJBQV37IKA54UQN
X-Message-ID-Hash: WOWWQ4G4XL5DYO3JGIJBQV37IKA54UQN
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, li
 naro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOWWQ4G4XL5DYO3JGIJBQV37IKA54UQN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6854706591170883108=="


--===============6854706591170883108==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="7thzhib5zt2dlqzi"
Content-Disposition: inline


--7thzhib5zt2dlqzi
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF
 GPUs
MIME-Version: 1.0

Hi Nicolas,

On Thu, Jan 30, 2025 at 10:59:56AM -0500, Nicolas Dufresne wrote:
> Le jeudi 30 janvier 2025 =E0 14:46 +0100, Maxime Ripard a =E9crit=A0:
> > Hi,
> >=20
> > I started to review it, but it's probably best to discuss it here.
> >=20
> > On Thu, Jan 30, 2025 at 01:08:56PM +0000, Florent Tomasin wrote:
> > > Hi,
> > >=20
> > > This is a patch series covering the support for protected mode execut=
ion in
> > > Mali Panthor CSF kernel driver.
> > >=20
> > > The Mali CSF GPUs come with the support for protected mode execution =
at the
> > > HW level. This feature requires two main changes in the kernel driver:
> > >=20
> > > 1) Configure the GPU with a protected buffer. The system must provide=
 a DMA
> > >    heap from which the driver can allocate a protected buffer.
> > >    It can be a carved-out memory or dynamically allocated protected m=
emory region.
> > >    Some system includes a trusted FW which is in charge of the protec=
ted memory.
> > >    Since this problem is integration specific, the Mali Panthor CSF k=
ernel
> > >    driver must import the protected memory from a device specific exp=
orter.
> >=20
> > Why do you need a heap for it in the first place? My understanding of
> > your series is that you have a carved out memory region somewhere, and
> > you want to allocate from that carved out memory region your buffers.
> >=20
> > How is that any different from using a reserved-memory region, adding
> > the reserved-memory property to the GPU device and doing all your
> > allocation through the usual dma_alloc_* API?
>=20
> How do you then multiplex this region so it can be shared between
> GPU/Camera/Display/Codec drivers and also userspace ?

You could point all the devices to the same reserved memory region, and
they would all allocate from there, including for their userspace-facing
allocations.

> Also, how the secure memory is allocted / obtained is a process that
> can vary a lot between SoC, so implementation details assumption
> should not be coded in the driver.

But yeah, we agree there, it's also the point I was trying to make :)

Maxime

--7thzhib5zt2dlqzi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ5urAAAKCRAnX84Zoj2+
drkxAYDhYMdCMRvVHsxuLWqll6NhSpmIh8E41iqDapuJU/CzgZsEjwmhO6YYeg3A
2+EGrI8BgJd5IXr28mAs79h3kSGwjcbdvd2Dt6UIrNjBeLUprzQsspQVlCb01M+1
D+t8k0aXog==
=tDkf
-----END PGP SIGNATURE-----

--7thzhib5zt2dlqzi--

--===============6854706591170883108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6854706591170883108==--
