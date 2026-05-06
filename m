Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAXLG00++2nTYQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 15:12:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E94414DAC91
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 15:12:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D18D83F95A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 13:12:43 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 641583F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 13:12:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=AKPmIlxB;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CF457442CA;
	Wed,  6 May 2026 13:12:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 326C0C2BCF6;
	Wed,  6 May 2026 13:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778073160;
	bh=6zgK85Psgb7v1JIE4C66zEivfyBHwwFQ3efCNdsjulc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AKPmIlxBPl17FHX9eU6Y03CHlL1kHunU2HwcFaSaH7T+ZPqg/w8f6/nqgMzptpyAk
	 YzL+yGG906Pkp/5O9MHKzS/q/vR9Pirlwr1Mi0px1zIV+12NXOblyIJDbutm/B6yFx
	 d/Bt9+6yqS4clBaG5KurgIRzPtVHcGu2iBYyMdxk9EG6t1IgvRSKsLj/P5ZT88jMcK
	 WLmkjfwR7rHlHfEPs9MzFMJjTIUedHJZSuUwNTwChx4j0WvKOt2JZytfozCOPYnwuK
	 FPW9ukJ/NsyFAiLq9AhI4BXd0at+zUD5J8gnR85dxwqEUsxVYfdvfT3Cm60m6PKBh4
	 RXLmaJ4fIuPRg==
Date: Wed, 6 May 2026 15:12:37 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20260506-golden-python-of-aptitude-ff972a@houat>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com>
 <20260506-energetic-azure-pig-2b6ec4@houat>
 <20260506125015.0108ef44@fedora>
MIME-Version: 1.0
In-Reply-To: <20260506125015.0108ef44@fedora>
X-Spamd-Bar: -----
Message-ID-Hash: IC4S6KMKJWAXUMEJ5N5T73TCPE6KZI75
X-Message-ID-Hash: IC4S6KMKJWAXUMEJ5N5T73TCPE6KZI75
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org
 , linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IC4S6KMKJWAXUMEJ5N5T73TCPE6KZI75/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2839086454601336382=="
X-Rspamd-Queue-Id: E94414DAC91
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
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.911];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,arm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]


--===============2839086454601336382==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="jsgwzb7lbdee6dei"
Content-Disposition: inline


--jsgwzb7lbdee6dei
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/8] drm/panthor: Add support for protected memory
 allocation in panthor
MIME-Version: 1.0

On Wed, May 06, 2026 at 12:50:15PM +0200, Boris Brezillon wrote:
> On Wed, 6 May 2026 12:08:24 +0200
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
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
> > > heap provided to the driver as module parameter. =20
> >=20
> > I know it's what dma_heap_find asks for, but I wonder if it wouldn't be
> > better in the device tree and lookup through the device node? heaps are
> > going to have a node anyway, right?
>=20
> I'm not too sure. Take the PROTMEM (name=3D"protected,xxxx") dma_heaps
> instantiated by optee for instance, I don't think the originating
> tee_device comes from a device node, nor is the underlying heap
> described as a device node. The reserved memory pool this protected heap
> comes from is most likely defined somewhere as reserved memory in the
> DT, but there's nothing to correlate this range of reserved mem to some
> sub-range that the TEE implementation is carving out to provide
> protected memory.

Maybe we should be working on a dt bindings for heaps then? Something
simple like we have for clocks with a phandle and an ID would probably
be enough. In optee's case, it looks like it would map nicely with
TEE_DMA_HEAP_* flags too.

The only two that wouldn't be covered would be the system and default
CMA heap if not setup in the DT, which shouldn't be too bad for this
particular use-case.

> > This would allow you to have a default that works and not mess to much
> > with the kernel parameters that aren't always easy to change for
> > end-users.
>=20
> I guess we can have a default list of heaps that we know provide
> protected memory for GPU rendering if that helps. Right now this list
> would contain only "protected,trusted-ui" :D. The other option would be
> to make this list a panthor Kconfig option and not expose it as a module
> param.

My main concern is that firmware builds are board specific, and thus its
capabilities isn't something we can reasonably expect to be consistent
across boards, SoCs and platforms. Kernel images (and the kernel
parameters) however can be made generic and unreasonably hard for users
to modify once you start playing with things like secure boot or
measured boot.

The only thing bridging the gap between the two is the DT.

Maxime

--jsgwzb7lbdee6dei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCafs+PAAKCRAnX84Zoj2+
do/dAYCsFzskHm3rONL7gbWKGNrMZhZjrhqTYx/ppxLU2/mdI1esaru0x+30gIoH
nAbsF0cBfRycq8wqS/81+OsbptnyvCrcfE8WBuuTjYVh1soyjUZwMGn7aT+MO70j
Za2ft8aPZg==
=ON6G
-----END PGP SIGNATURE-----

--jsgwzb7lbdee6dei--

--===============2839086454601336382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2839086454601336382==--
