Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KbtD6hC+2lPYgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 15:31:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B74A54DAFCB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 15:31:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B690B4043E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 13:31:18 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id DC9143F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 13:31:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=i5qwe4Px;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 743E160103;
	Wed,  6 May 2026 13:31:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FAFCC2BCB8;
	Wed,  6 May 2026 13:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778074275;
	bh=NrQ+dSjs384ZRfIyJS33HBam4QDZDfVx4xzhTdvPuwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i5qwe4Px1vR/zhejuZ6rq139PRRBewNML9UMUMEP44GXpxMQjJJUwlozQKB9SGRkv
	 zWV7fllywcM+I1MXoddI0ycvpS1NehEDsIHhNQgGF8vvgVdM8vn/GSrFBDgh6NnWhW
	 2nFnnf9H57o3AsN+ToNpEAGTGOENHH3KOhv+VX91unTD1ZzLqP+X9GMfCqD2rnXibz
	 TV8RLx03eMbuDn/0SgUY/4OAxxIKoMeprEs+SOoDWbCJBL1nPMfZpv0ngUVKXdVRXm
	 iNr6GR+ja8rjfwkt8/Xw979sVHEXqDCJQfNdArL8mlh0Rs2TIcmHCMYDn5hy6SAc89
	 Ng/POKlY0fyHA==
Date: Wed, 6 May 2026 15:31:12 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Message-ID: <20260506-certain-busy-warthog-bd42d7@houat>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com>
 <20260506-energetic-azure-pig-2b6ec4@houat>
 <SurytM7FTOazQNVXXqCU7g@collabora.com>
MIME-Version: 1.0
In-Reply-To: <SurytM7FTOazQNVXXqCU7g@collabora.com>
X-Spamd-Bar: -----
Message-ID-Hash: ABZ6URJ6OTIUJUALBL7P7W4RAWZYXDYZ
X-Message-ID-Hash: ABZ6URJ6OTIUJUALBL7P7W4RAWZYXDYZ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists
 .linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ABZ6URJ6OTIUJUALBL7P7W4RAWZYXDYZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6612460665158371689=="
X-Rspamd-Queue-Id: B74A54DAFCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.898];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]


--===============6612460665158371689==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ulftqthwgql3ly5x"
Content-Disposition: inline


--ulftqthwgql3ly5x
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/8] drm/panthor: Add support for protected memory
 allocation in panthor
MIME-Version: 1.0

On Wed, May 06, 2026 at 02:43:42PM +0200, Nicolas Frattaroli wrote:
> On Wednesday, 6 May 2026 12:08:24 Central European Summer Time Maxime Rip=
ard wrote:
> > Hi,
> >=20
> > On Tue, May 05, 2026 at 04:05:10PM +0200, Ketil Johnsen wrote:
> > > From: Florent Tomasin <florent.tomasin@arm.com>
> > >=20
> > > This patch allows Panthor to allocate buffer objects from a
> > > protected heap. The Panthor driver should be seen as a consumer
> > > of the heap and not an exporter.
> > >=20
> > > Protected memory buffers needed by the Panthor driver:
> > > - On CSF FW load, the Panthor driver must allocate a protected
> > >   buffer object to hold data to use by the FW when in protected
> > >   mode. This protected buffer object is owned by the device
> > >   and does not belong to a process.
> > > - On CSG creation, the Panthor driver must allocate a protected
> > >   suspend buffer object for the FW to store data when suspending
> > >   the CSG while in protected mode. The kernel owns this allocation
> > >   and does not allow user space mapping. The format of the data
> > >   in this buffer is only known by the FW and does not need to be
> > >   shared with other entities.
> > >=20
> > > The driver will retrieve the protected heap using the name of the
> > > heap provided to the driver as module parameter.
> >=20
> > I know it's what dma_heap_find asks for, but I wonder if it wouldn't be
> > better in the device tree and lookup through the device node? heaps are
> > going to have a node anyway, right?
> >=20
> > This would allow you to have a default that works and not mess to much
> > with the kernel parameters that aren't always easy to change for
> > end-users.
>=20
> Hopefully the kernel parameters aren't easy to change for end-users on
> systems that deploy this. :) The use-case is copy protection for embedded
> devices running on locked-down systems. Though admittedly the mechanism
> works even on "tampered"-with systems, as long as the underlying hardware
> implements the access restrictions properly.

I guess it wasn't just about the user tampering it, but also about
distros shipping, say, a signed UKI that would support multiple
platforms with 42 versions of optee but all using panthor. I'm not sure
we can expect a single heap name to work for all of them.

> I'm a bit hesitant about making this DT myself. It would solve the problem
> that panthor could probe before the heap provider and needs to handle
> deferral by itself, but it does mean that we'd be putting software
> configuration into the device tree.

Is it? If the system has a protected allocator, and if panthor
absolutely needs to allocate from that allocator, it's not software
configuration: it's a description of what the platform looks like from
Linux PoV.

Or put it differently, it's not more software than optee is, and yet it
has its own node.

> Having the secure heap be a node with no address would allow the tee
> (or whatever else) to still dynamically allocate it wherever, and let
> us handle the dependency relationship between dma heap and GPU, but
> then we require that tee heap driver implementations play nice with
> this scheme, and bring OF into the dma_heap APIs.

I mean, it's a dma_heap API that we create so we don't bring anything
more to it :)

Maxime

--ulftqthwgql3ly5x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaftCnwAKCRAnX84Zoj2+
dhXNAX0UyoGSxTfl5B13C2G2JHLqgb01BTvh/1Ob1SVJrqGkUfDzg6CRc+vjIxPh
fsftM88BfR4cCx3hWDWF7WDUDVxG50bXC1qkh0VN5jFTn3OoLjwjh1LahaWy8Z09
NmujI7ISBA==
=xA7h
-----END PGP SIGNATURE-----

--ulftqthwgql3ly5x--

--===============6612460665158371689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6612460665158371689==--
