Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B3DA3DB5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Feb 2025 14:32:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6250244ADA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Feb 2025 13:32:26 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 641D04498B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Feb 2025 13:32:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=eTVnYC03;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D49D61446;
	Thu, 20 Feb 2025 13:32:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2BE0C4CED1;
	Thu, 20 Feb 2025 13:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740058337;
	bh=dOfi1/OnA8q9j6aHXa0diCiSD7lqHGHKh3L4ApSyNBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eTVnYC03AYiikGOLCa6NI10sXN9hmKOo8tIj77zCYftpW4VlDyxSvieq6TyjWvbjL
	 8e1XY38sfkRKt3tGlmirHehpIZrh+WyyGq6/XIydlCitNYv0FvT4+tB9VHjV6l5Jjr
	 5sMs+O+T52YZ34nUAWpR4cTJY93/eYH0w42NDF+BlHKDbzBPpJ3MzfOHelFbKoIDij
	 pWl5F4ZZxO+WKxDdVBRPEsr6MWLTE+TYWLWHgb1yViLFreXdqAhgkH3RwQSMxJ9C1G
	 j9cOkVMSRDJUFRURwTZ38C5klCfcKR4XjNMXvvvjzKN0ve1gdFW8fu2kNvkiY0tjFF
	 GpmzHOfTloKdg==
Date: Thu, 20 Feb 2025 14:32:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20250220-strict-cobalt-albatross-6f742e@houat>
References: <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
 <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
 <9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
 <1f436caa-1c27-4bbd-9b43-a94dad0d89d0@arm.com>
 <20250205-amorphous-nano-agouti-b5baba@houat>
 <2085fb785095dc5abdac2352adfb3e1e1c8ae549.camel@ndufresne.ca>
 <20250207160253.42551fb1@collabora.com>
 <20250211-robust-lush-skink-0dcc5b@houat>
 <20250211153223.2fef2316@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250211153223.2fef2316@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 641D04498B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[ndufresne.ca,arm.com,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,collabora.com,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[dt];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[172.105.4.254:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: JV5E2APXZSUDI5A5LKLRFH53Z6S7PZTA
X-Message-ID-Hash: JV5E2APXZSUDI5A5LKLRFH53Z6S7PZTA
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-
 sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JV5E2APXZSUDI5A5LKLRFH53Z6S7PZTA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1070920973067419679=="


--===============1070920973067419679==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="bx6tcglxjiffynxy"
Content-Disposition: inline


--bx6tcglxjiffynxy
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF
 GPUs
MIME-Version: 1.0

On Tue, Feb 11, 2025 at 03:32:23PM +0100, Boris Brezillon wrote:
> On Tue, 11 Feb 2025 14:46:56 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> > Hi Boris,
> >=20
> > On Fri, Feb 07, 2025 at 04:02:53PM +0100, Boris Brezillon wrote:
> > > Sorry for joining the party late, a couple of comments to back Akash
> > > and Nicolas' concerns.
> > >=20
> > > On Wed, 05 Feb 2025 13:14:14 -0500
> > > Nicolas Dufresne <nicolas@ndufresne.ca> wrote:
> > >  =20
> > > > Le mercredi 05 f=E9vrier 2025 =E0 15:52 +0100, Maxime Ripard a =E9c=
rit=A0: =20
> > > > > On Mon, Feb 03, 2025 at 04:43:23PM +0000, Florent Tomasin wrote: =
  =20
> > > > > > Hi Maxime, Nicolas
> > > > > >=20
> > > > > > On 30/01/2025 17:47, Nicolas Dufresne wrote:   =20
> > > > > > > Le jeudi 30 janvier 2025 =E0 17:38 +0100, Maxime Ripard a =E9=
crit=A0:   =20
> > > > > > > > Hi Nicolas,
> > > > > > > >=20
> > > > > > > > On Thu, Jan 30, 2025 at 10:59:56AM -0500, Nicolas Dufresne =
wrote:   =20
> > > > > > > > > Le jeudi 30 janvier 2025 =E0 14:46 +0100, Maxime Ripard a=
 =E9crit=A0:   =20
> > > > > > > > > > Hi,
> > > > > > > > > >=20
> > > > > > > > > > I started to review it, but it's probably best to discu=
ss it here.
> > > > > > > > > >=20
> > > > > > > > > > On Thu, Jan 30, 2025 at 01:08:56PM +0000, Florent Tomas=
in wrote:   =20
> > > > > > > > > > > Hi,
> > > > > > > > > > >=20
> > > > > > > > > > > This is a patch series covering the support for prote=
cted mode execution in
> > > > > > > > > > > Mali Panthor CSF kernel driver.
> > > > > > > > > > >=20
> > > > > > > > > > > The Mali CSF GPUs come with the support for protected=
 mode execution at the
> > > > > > > > > > > HW level. This feature requires two main changes in t=
he kernel driver:
> > > > > > > > > > >=20
> > > > > > > > > > > 1) Configure the GPU with a protected buffer. The sys=
tem must provide a DMA
> > > > > > > > > > >    heap from which the driver can allocate a protecte=
d buffer.
> > > > > > > > > > >    It can be a carved-out memory or dynamically alloc=
ated protected memory region.
> > > > > > > > > > >    Some system includes a trusted FW which is in char=
ge of the protected memory.
> > > > > > > > > > >    Since this problem is integration specific, the Ma=
li Panthor CSF kernel
> > > > > > > > > > >    driver must import the protected memory from a dev=
ice specific exporter.   =20
> > > > > > > > > >=20
> > > > > > > > > > Why do you need a heap for it in the first place? My un=
derstanding of
> > > > > > > > > > your series is that you have a carved out memory region=
 somewhere, and
> > > > > > > > > > you want to allocate from that carved out memory region=
 your buffers.
> > > > > > > > > >=20
> > > > > > > > > > How is that any different from using a reserved-memory =
region, adding
> > > > > > > > > > the reserved-memory property to the GPU device and doin=
g all your
> > > > > > > > > > allocation through the usual dma_alloc_* API?   =20
> > > > > > > > >=20
> > > > > > > > > How do you then multiplex this region so it can be shared=
 between
> > > > > > > > > GPU/Camera/Display/Codec drivers and also userspace ?   =
=20
> > > > > > > >=20
> > > > > > > > You could point all the devices to the same reserved memory=
 region, and
> > > > > > > > they would all allocate from there, including for their use=
rspace-facing
> > > > > > > > allocations.   =20
> > > > > > >=20
> > > > > > > I get that using memory region is somewhat more of an HW desc=
ription, and
> > > > > > > aligned with what a DT is supposed to describe. One of the ch=
allenge is that
> > > > > > > Mediatek heap proposal endup calling into their TEE, meaning =
knowing the region
> > > > > > > is not that useful. You actually need the TEE APP guid and it=
s IPC protocol. If
> > > > > > > we can dell drivers to use a head instead, we can abstract th=
at SoC specific
> > > > > > > complexity. I believe each allocated addressed has to be mapp=
ed to a zone, and
> > > > > > > that can only be done in the secure application. I can imagin=
e similar needs
> > > > > > > when the protection is done using some sort of a VM / hypervi=
sor.
> > > > > > >=20
> > > > > > > Nicolas
> > > > > > >    =20
> > > > > >=20
> > > > > > The idea in this design is to abstract the heap management from=
 the
> > > > > > Panthor kernel driver (which consumes a DMA buffer from it).
> > > > > >=20
> > > > > > In a system, an integrator would have implemented a secure heap=
 driver,
> > > > > > and could be based on TEE or a carved-out memory with restricte=
d access,
> > > > > > or else. This heap driver would be responsible of implementing =
the
> > > > > > logic to: allocate, free, refcount, etc.
> > > > > >=20
> > > > > > The heap would be retrieved by the Panthor kernel driver in ord=
er to
> > > > > > allocate protected memory to load the FW and allow the GPU to e=
nter/exit
> > > > > > protected mode. This memory would not belong to a user space pr=
ocess.
> > > > > > The driver allocates it at the time of loading the FW and initi=
alization
> > > > > > of the GPU HW. This is a device globally owned protected memory=
=2E   =20
> > > > >=20
> > > > > The thing is, it's really not clear why you absolutely need to ha=
ve the
> > > > > Panthor driver involved there. It won't be transparent to userspa=
ce,
> > > > > since you'd need an extra flag at allocation time, and the buffers
> > > > > behave differently. If userspace has to be aware of it, what's the
> > > > > advantage to your approach compared to just exposing a heap for t=
hose
> > > > > secure buffers, and letting userspace allocate its buffers from t=
here?   =20
> > > >=20
> > > > Unless I'm mistaken, the Panthor driver loads its own firmware. Sin=
ce loading
> > > > the firmware requires placing the data in a protected memory region=
, and that
> > > > this aspect has no exposure to userspace, how can Panthor not be im=
plicated ? =20
> > >=20
> > > Right, the very reason we need protected memory early is because some
> > > FW sections need to be allocated from the protected pool, otherwise t=
he
> > > TEE will fault as soon at the FW enters the so-called 'protected mode=
'. =20
> >=20
> > How does that work if you don't have some way to allocate the protected
> > memory? You can still submit jobs to the GPU, but you can't submit /
> > execute "protected jobs"?
>=20
> Exactly.
>=20
> >=20
> > > Now, it's not impossible to work around this limitation. For instance,
> > > we could load the FW without this protected section by default (what =
we
> > > do right now), and then provide a DRM_PANTHOR_ENABLE_FW_PROT_MODE
> > > ioctl that would take a GEM object imported from a dmabuf allocated
> > > from the protected dma-heap by userspace. We can then reset the FW and
> > > allow it to operate in protected mode after that point. =20
> >=20
> > Urgh, I'd rather avoid that dance if possible :)
>=20
> Me too.
>=20
> >=20
> > > This approach has two downsides though:
> > >=20
> > > 1. We have no way of checking that the memory we're passed is actually
> > > suitable for FW execution in a protected context. If we're passed
> > > random memory, this will likely hang the platform as soon as we enter
> > > protected mode. =20
> >=20
> > It's a current limitation of dma-buf in general, and you'd have the same
> > issue right now if someone imports a buffer, or misconfigure the heap
> > for a !protected heap.
> >=20
> > I'd really like to have some way to store some metadata in dma_buf, if
> > only to tell that the buffer is protected.
>=20
> The dma_buf has a pointer to its ops, so it should be relatively easy
> to add an is_dma_buf_coming_from_this_heap() helper. Of course this
> implies linking the consumer driver to the heap it's supposed to take
> protected buffers from, which is basically the thing being discussed
> here :-).

I'm not sure looking at the ops would be enough. Like, you can compare
that the buffer you allocated come from the heap you got from the DT,
but if that heap doesn't allocate protected buffers, you're screwed and
you have no way to tell.

It also falls apart if we have a heap driver with multiple instances,
which is pretty likely if we ever merge the carveout heap driver.

> >=20
> > I suspect you'd also need that if you do things like do protected video
> > playback through a codec, get a protected frame, and want to import that
> > into the GPU. Depending on how you allocate it, either the codec or the
> > GPU or both will want to make sure it's protected.
>=20
> If it's all allocated from a central "protected" heap (even if that
> goes through the driver calling the dma_heap_alloc_buffer()), it
> shouldn't be an issue.

Right, assuming we have a way to identify the heap the buffer was
allocated from somehow. This kind of assumes that you only ever get one
source of protected memory, and you'd never allocate a protected buffer
=66rom a different one in the codec driver for example.

> > > 2. If the driver already boot the FW and exposed a DRI node, we might
> > > have GPU workloads running, and doing a FW reset might incur a slight
> > > delay in GPU jobs execution.
> > >=20
> > > I think #1 is a more general issue that applies to suspend buffers
> > > allocated for GPU contexts too. If we expose ioctls where we take
> > > protected memory buffers that can possibly lead to crashes if they are
> > > not real protected memory regions, and we have no way to ensure the
> > > memory is protected, we probably want to restrict these ioctls/modes =
to
> > > some high-privilege CAP_SYS_.
> > >=20
> > > For #2, that's probably something we can live with, since it's a
> > > one-shot thing. If it becomes an issue, we can even make sure we enab=
le
> > > the FW protected-mode before the GPU starts being used for real.
> > >=20
> > > This being said, I think the problem applies outside Panthor, and it
> > > might be that the video codec can't reset the FW/HW block to switch to
> > > protected mode as easily as Panthor.
> > >
> > > Note that there's also downsides to the reserved-memory node approach,
> > > where some bootloader stage would ask the secure FW to reserve a
> > > portion of mem and pass this through the DT. This sort of things tend=
 to
> > > be an integration mess, where you need all the pieces of the stack (T=
EE,
> > > u-boot, MTK dma-heap driver, gbm, ...) to be at a certain version to
> > > work properly. If we go the ioctl() way, we restrict the scope to the
> > > TEE, gbm/mesa and the protected-dma-heap driver, which is still a lot,
> > > but we've ripped the bootloader out of the equation at least. =20
> >=20
> > Yeah. I also think there's two discussions in parallel here:
> >=20
> >  1) Being able to allocate protected buffers from the driver
> >  2) Exposing an interface to allocate those to userspace
> >=20
> > I'm not really convinced we need 2, but 1 is obviously needed from what
> > you're saying.
>=20
> I suspect we need #2 for GBM, still. But that's what dma-heaps are for,
> so I don't think that's a problem.

Yeah, that was my point too, we have the heaps for that already.

Maxime

--bx6tcglxjiffynxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ7cu3gAKCRAnX84Zoj2+
dnVYAYCm5cDrRcC/M6gSUPcprxXgPDvfEFST8yfosiTXvXvn+f7uGk9SwgsJajLN
s/ajv5QBgM98Ll6MXS4tGWhLvyrRsEXngQF3qbvK9LqIZ65IRv41teKv+LiAPoAd
jG+jSy14AQ==
=5SxL
-----END PGP SIGNATURE-----

--bx6tcglxjiffynxy--

--===============1070920973067419679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1070920973067419679==--
