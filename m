Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C3FA291B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Feb 2025 15:54:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9ACA455FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Feb 2025 14:54:46 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 12883455FD
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Feb 2025 14:53:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bnE4QYFL;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A53E7A436D4;
	Wed,  5 Feb 2025 14:51:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDF1FC4CED1;
	Wed,  5 Feb 2025 14:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738767211;
	bh=ly4tyRLO/ehfMN/FLCIRG16hKWOkEGsQKwgjdbw72Qs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bnE4QYFLfLaYNfccMdfqWT+RYN9yf+Gjxza7rzCut/1l9oMaUuiijDdd/DhaRbESZ
	 XgFg6X3q4ifc0Xq8xBrBd3RLOXS/4Y33jlkUTNozgo2VcesBo2wJwSkQaRsQqJZa0a
	 T67JDf8W1XRZNMD5C9zAXRKf4SEEAxGwkW8xeIPTCdscEvhIh30okn0Sv7Z9Jvpu3E
	 PHUledK8RTCFdrv8PmcgPFa163+tjJbY8mwv5asDoBKS5o2hovBwjFoJP+EmXlJDXt
	 0al3PgvxiEK16LH5cWdsPOTO8FTFJ0qmea/GqbeiLRwUna6jGtHUrHA0uLaWFwRXQg
	 MrFxL1PvPIaEA==
Date: Wed, 5 Feb 2025 15:53:29 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Message-ID: <20250205-robust-tall-parrot-69baf7@houat>
References: <cover.1738228114.git.florent.tomasin@arm.com>
 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
 <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
 <9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
 <1f436caa-1c27-4bbd-9b43-a94dad0d89d0@arm.com>
 <c856a7059171bcc6afd6d829c6c025882855778b.camel@ndufresne.ca>
MIME-Version: 1.0
In-Reply-To: <c856a7059171bcc6afd6d829c6c025882855778b.camel@ndufresne.ca>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 12883455FD
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FREEMAIL_CC(0.00)[arm.com,kernel.org,collabora.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[147.75.193.91:from]
Message-ID-Hash: 4VWKBYZIM4PABLQX7XJLS5XFBGJRTKYR
X-Message-ID-Hash: 4VWKBYZIM4PABLQX7XJLS5XFBGJRTKYR
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, li
 naro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4VWKBYZIM4PABLQX7XJLS5XFBGJRTKYR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0082423121103997831=="


--===============0082423121103997831==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="edrbb66pldmq62jz"
Content-Disposition: inline


--edrbb66pldmq62jz
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF
 GPUs
MIME-Version: 1.0

On Tue, Feb 04, 2025 at 01:22:58PM -0500, Nicolas Dufresne wrote:
> Le lundi 03 f=E9vrier 2025 =E0 16:43 +0000, Florent Tomasin a =E9crit=A0:
> > Hi Maxime, Nicolas
> >=20
> > On 30/01/2025 17:47, Nicolas Dufresne wrote:
> > > Le jeudi 30 janvier 2025 =E0 17:38 +0100, Maxime Ripard a =E9crit=A0:
> > > > Hi Nicolas,
> > > >=20
> > > > On Thu, Jan 30, 2025 at 10:59:56AM -0500, Nicolas Dufresne wrote:
> > > > > Le jeudi 30 janvier 2025 =E0 14:46 +0100, Maxime Ripard a =E9crit=
=A0:
> > > > > > Hi,
> > > > > >=20
> > > > > > I started to review it, but it's probably best to discuss it he=
re.
> > > > > >=20
> > > > > > On Thu, Jan 30, 2025 at 01:08:56PM +0000, Florent Tomasin wrote:
> > > > > > > Hi,
> > > > > > >=20
> > > > > > > This is a patch series covering the support for protected mod=
e execution in
> > > > > > > Mali Panthor CSF kernel driver.
> > > > > > >=20
> > > > > > > The Mali CSF GPUs come with the support for protected mode ex=
ecution at the
> > > > > > > HW level. This feature requires two main changes in the kerne=
l driver:
> > > > > > >=20
> > > > > > > 1) Configure the GPU with a protected buffer. The system must=
 provide a DMA
> > > > > > >    heap from which the driver can allocate a protected buffer.
> > > > > > >    It can be a carved-out memory or dynamically allocated pro=
tected memory region.
> > > > > > >    Some system includes a trusted FW which is in charge of th=
e protected memory.
> > > > > > >    Since this problem is integration specific, the Mali Panth=
or CSF kernel
> > > > > > >    driver must import the protected memory from a device spec=
ific exporter.
> > > > > >=20
> > > > > > Why do you need a heap for it in the first place? My understand=
ing of
> > > > > > your series is that you have a carved out memory region somewhe=
re, and
> > > > > > you want to allocate from that carved out memory region your bu=
ffers.
> > > > > >=20
> > > > > > How is that any different from using a reserved-memory region, =
adding
> > > > > > the reserved-memory property to the GPU device and doing all yo=
ur
> > > > > > allocation through the usual dma_alloc_* API?
> > > > >=20
> > > > > How do you then multiplex this region so it can be shared between
> > > > > GPU/Camera/Display/Codec drivers and also userspace ?
> > > >=20
> > > > You could point all the devices to the same reserved memory region,=
 and
> > > > they would all allocate from there, including for their userspace-f=
acing
> > > > allocations.
> > >=20
> > > I get that using memory region is somewhat more of an HW description,=
 and
> > > aligned with what a DT is supposed to describe. One of the challenge =
is that
> > > Mediatek heap proposal endup calling into their TEE, meaning knowing =
the region
> > > is not that useful. You actually need the TEE APP guid and its IPC pr=
otocol. If
> > > we can dell drivers to use a head instead, we can abstract that SoC s=
pecific
> > > complexity. I believe each allocated addressed has to be mapped to a =
zone, and
> > > that can only be done in the secure application. I can imagine simila=
r needs
> > > when the protection is done using some sort of a VM / hypervisor.
> > >=20
> > > Nicolas
> > >=20
> >=20
> > The idea in this design is to abstract the heap management from the
> > Panthor kernel driver (which consumes a DMA buffer from it).
> >=20
> > In a system, an integrator would have implemented a secure heap driver,
> > and could be based on TEE or a carved-out memory with restricted access,
> > or else. This heap driver would be responsible of implementing the
> > logic to: allocate, free, refcount, etc.
> >=20
> > The heap would be retrieved by the Panthor kernel driver in order to
> > allocate protected memory to load the FW and allow the GPU to enter/exit
> > protected mode. This memory would not belong to a user space process.
> > The driver allocates it at the time of loading the FW and initialization
> > of the GPU HW. This is a device globally owned protected memory.
>=20
> This use case also applies well for codec. The Mediatek SCP firmware need=
s to be
> loaded with a restricted memory too, its a very similar scenario, plus Me=
diatek
> chips often include a Mali. On top of that, V4L2 codecs (in general) do n=
eed to
> allocate internal scratch buffer for the IP to write to for things like m=
otion
> vectors, reconstruction frames, entropy statistics, etc. The IP will only=
 be
> able to write if the memory is restricted.

BTW, in such a case, do the scratch buffers need to be
protected/secure/whatever too, or would codecs be able to use any buffer
as a scratch buffer?

Maxime

--edrbb66pldmq62jz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ6N7aAAKCRAnX84Zoj2+
doTZAYC3KraTKaHat9Tiq3AbNilzp/uyB6OJohhC6KgS8ip7Em2xWpjYSTaqcm0i
XDstePQBf2GNysp5QIxHwmbP32dTXWpJP67ChoVOCgGc+5xAqzvPeAGxw97hlfZf
HYSF4lENtQ==
=HDp7
-----END PGP SIGNATURE-----

--edrbb66pldmq62jz--

--===============0082423121103997831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0082423121103997831==--
