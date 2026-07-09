Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jtIrEbhxVmqq5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:28:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BF97576AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:28:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=e8tKeN5i;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDEF440A24
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:28:22 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id D0B3D3F835
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 16:13:29 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F1A3A4089D;
	Thu,  9 Jul 2026 16:13:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A2C31F00A3A;
	Thu,  9 Jul 2026 16:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783613608;
	bh=RAelIY3SGJPFiX9W78brt71IyKj6nxt4Jj1gg/NENhM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=e8tKeN5i4m4ACoOIBmSex0OeWH2XVw83XZ/aBvIwAmA4coEeCRkZa20zr/3Llj4QL
	 6vzg0h1m+yrIbw5jfQXfNEWCibeZaeL4FHjTTGZiP9eAP/lTt3VOP3zXoetxmU0q0/
	 79FOEwYtkhE9Xmg6wgzbgQmtchuGg/eeL1OjeSNT/5CTp5HwVi9+sU+rSGiOhb85nm
	 CjX2Wsyt7C4fzG2CQU2FPvrchrTG/FgiPV99mGrgxgNQfmP/+MqQIKgRdf6MPKsoOS
	 zICm/nvJRVVETdHHU8Emsy3FV9eKl4gAhMMhlVaCEy4/b8Hsbqv4Wy0XMBByorPdci
	 ErIM9s1QwJm+Q==
Date: Thu, 9 Jul 2026 18:13:26 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: Will Deacon <will@kernel.org>
Message-ID: <ak_F9o4KMMqZAsq3@orome>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-4-d80f7b871bb4@nvidia.com>
 <akYs91INHMXMTI-t@willie-the-truck>
 <akZkuwktaXFTrASP@orome>
 <akaSJ5D98w2cHqb6@orome>
 <akftuw9NyRy36fXA@willie-the-truck>
 <akuvyu1Pq0ZVMZV0@orome>
 <akzikTrmhMsvkNVY@willie-the-truck>
 <ak5CXzGStC6ZmtwI@orome>
MIME-Version: 1.0
In-Reply-To: <ak5CXzGStC6ZmtwI@orome>
X-Spamd-Bar: --------
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: R4XSR7K55X2NFIRUH673LTVGMZ2T6GZ7
X-Message-ID-Hash: R4XSR7K55X2NFIRUH673LTVGMZ2T6GZ7
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:51 +0000
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sowjanya Komatineni <skomatineni@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Mikko Perttunen <mperttunen@nvidia.com>, Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Russell King <linux@armlinux.org.uk>, Alexander Gordeev <agordeev@linux.ibm.com>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <ljs@kernel.org>, "Liam R. Howlett" <liam@infrade
 ad.org>, Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas <catalin.marinas@arm.com>, Thierry Reding <thierry.reding@gmail.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org, linux-trace-kernel@vger.kernel.org, Thi
 erry Reding <treding@nvidia.com>, Chun Ng <chunn@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/11] arm64/mm: Add set_memory_device() and set_memory_normal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R4XSR7K55X2NFIRUH673LTVGMZ2T6GZ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4825472695485604300=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[121];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[orome:server fail,nvidia.com:server fail,linaro.org:server fail,lists.linaro.org:server fail];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:will@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:skomatineni@nvidia.com,m:luca.ceresoli@bootlin.com,m:mperttunen@nvidia.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:linux@armlinux.org.uk,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:hca@linux.ibm.com,m:gor@linux.ibm.com,m:borntraeger@linux.ibm.com,m:svens@linux.ibm.com,m:akpm@linux-foundation.org,m:david@kernel.org,m:ljs@kernel.org,m:liam@infrade ad.org,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:robin.murphy@arm.com,m:sumit.semwal@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:christian.koenig@amd.com,m:rostedt@goodmis.org,m:mhiramat@kernel.org,m:mathieu.desnoyers@efficios.com,m:catalin.marinas@arm.com,m:thierry.red
 ing@gmail.com,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-mm@kvack.org,m:iommu@lists.linux.dev,m:linaro-mm-sig@lists.linaro.org,m:linux-trace-kernel@vger.kernel.org,m:treding@nvidia.com,m:chunn@nvidia.com,m:krzk@kernel.org,m:conor@kernel.org,m:yurynorov@gmail.com,m:thierryreding@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,rasmusvillemoes.dk,armlinux.org.uk,linux.ibm.com,linux-foundation.org,infrade ad.org,google.com,suse.com,arm.com,linaro.org,collabora.com,amd.com,goodmis.org,efficios.com,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,kvack.org,lists.linux.dev,lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9BF97576AE


--===============4825472695485604300==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u2l7n4igggpssyeo"
Content-Disposition: inline


--u2l7n4igggpssyeo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 04/11] arm64/mm: Add set_memory_device() and
 set_memory_normal()
MIME-Version: 1.0

On Wed, Jul 08, 2026 at 02:50:04PM +0200, Thierry Reding wrote:
> On Tue, Jul 07, 2026 at 12:27:13PM +0100, Will Deacon wrote:
> > On Mon, Jul 06, 2026 at 03:49:24PM +0200, Thierry Reding wrote:
> > > On Fri, Jul 03, 2026 at 06:13:31PM +0100, Will Deacon wrote:
> > > > On Thu, Jul 02, 2026 at 06:41:23PM +0200, Thierry Reding wrote:
> > > > > On Thu, Jul 02, 2026 at 03:46:44PM +0200, Thierry Reding wrote:
> > > > > > On Thu, Jul 02, 2026 at 10:18:47AM +0100, Will Deacon wrote:
> > > > > > > On Wed, Jul 01, 2026 at 06:08:15PM +0200, Thierry Reding wrot=
e:
> > > > > > > > From: Chun Ng <chunn@nvidia.com>
> > > > > > > >=20
> > > > > > > > Add helpers to swap PROT_NORMAL and PROT_DEVICE_nGnRnE prot=
ection bits
> > > > > > > > on a kernel-linear-map range.
> > > > > > >=20
> > > > > > > That sounds like a really terrible idea. Why is this necessar=
y and how
> > > > > > > does it interact with things like load_unaligned_zeropad()?
> > > > > >=20
> > > > > > This is necessary because once the memory controller has walled=
 off the
> > > > > > new memory region the CPU must not access it under any circumst=
ances or
> > > > > > it'll cause the CPU to lock up (I think technically it'll hit a=
n SError
> > > > > > but in practice that just means it'll freeze, as far as I can t=
ell).
> > > > > >=20
> > > > > > Probably doesn't interact well at all with load_unaligned_zerop=
ad().
> > > > > >=20
> > > > > > > I think you should unmap the memory from the linear map and m=
emremap()
> > > > > > > it instead.
> > > > > >=20
> > > > > > Given that the memory can never be accessed by the CPU after th=
e memory
> > > > > > controller locks it down, I don't think we'll even need memrema=
p(). The
> > > > > > only thing we really need is the sg_table we hand out via the D=
MA BUFs
> > > > > > so that they can be used by device drivers to program their DMA=
 engines
> > > > > > internally.
> > > > > >=20
> > > > > > Looking through some of the architecture code around this, shou=
ldn't we
> > > > > > simply be using set_memory_encrypted() and set_memory_decrypted=
() for
> > > > > > this? While they might've been created for slightly other use-c=
ases,
> > > > > > they seem to be doing exactly what we want (i.e. remove the pag=
e range
> > > > > > from the linear mapping and flushing it, or restoring the valid=
 bit and
> > > > > > standard permissions, respectively).
> > > > >=20
> > > > > Ah... I guess we can't do it because we're not in a realm world a=
nd so
> > > > > the early checks in __set_memory_enc_dec() would return early and=
 turn
> > > > > it into a no-op.
> > > > >=20
> > > > > How about if I extract a common helper and provide set_memory_p()=
 and
> > > > > set_memory_np() in terms of those. Those are available on x86 and
> > > > > PowerPC as well, so fairly standard. I suppose at that point we're
> > > > > closer to set_memory_valid().
> > > >=20
> > > > Why not just call set_direct_map_invalid_noflush() +
> > > > flush_tlb_kernel_range() for each page? We already have APIs for th=
is.
> > >=20
> > > Having a "standard" helper with a fixed and documented purposed seemed
> > > like a preferable approach for this particular case. We also may want=
 to
> > > make the driver that uses this buildable as a module, in which case w=
e'd
> > > need to export these rather low-level APIs. And then there's also the
> > > fact that we typically call this on a rather large region of memory
> > > (usually something like 512 MiB), so doing it page-by-page is rather
> > > suboptimal.
> > >=20
> > > > The big challenge I see with any linear map manipulation, however, =
is
> > > > that it will rely on can_set_direct_map() which likely means you ne=
ed to
> > > > give up some performance and/or security to make this work. Does me=
mory
> > > > become inaccesible dynamically at runtime? If not, the best bet wou=
ld
> > > > be to describe it as a carveout in the DT and mark it as "no-map" so
> > > > we avoid mapping it in the first place.
> > >=20
> > > VPR exists in two modes: static and resizable. For static VPR we do
> > > exactly that: describe it as carveout in DT with no-map and deal with=
 it
> > > accordingly in the driver. Resizable VPR is for device that have small
> > > amounts of RAM. Content-protected video playback will in the worst ca=
se
> > > consume around 1.8 GiB of RAM, so we want to be able to reuse for oth=
er
> > > purposes when VPR is unused on those devices. In that case, the memory
> > > is also described as a reserved-memory region in DT, but it is marked=
 as
> > > reusable so that it can be managed by CMA.
> > >=20
> > > The resize operation is fairly slow to begin with because we need to
> > > stall the GPU and put it into reset before the operation, then take it
> > > out of reset and resume it afterwards.
> > >=20
> > > What kind of performance impact do you expect?
> >=20
> > You'll need to measure it, but we've seen reports of double-digit
> > percentage regressions in performance and power. As I said, the problem
> > is that you need to split the linear map to 4k page at runtime to unmap
> > the dynamic carveout, but that isn't something that can be done on most
> > CPUs. Therefore you end up having to use page-granular mappings for the
> > entire thing, similarly to how 'rodata_full' drives can_set_direct_map()
> > and the perf/power hit affects everything.
> >=20
> > It's hard to know what to suggest... I wonder if any of the memory
> > hotplug logic could help here?
>=20
> I've read up on memory hotplug a bit and it sounds like it could fit
> this really nicely. Given that we only use CMA (along with the extra
> patches to it) to make sure that any buffers are reclaimed for VPR use,
> we should be able to get rid of the CMA usage altogether and replace it
> with online_pages() and offline_pages() instead. Rather than using a
> fixed set of CMA areas like we currently do, each "chunk" in the VPR
> driver could represent a memory block instead (which looks like it will
> be 128 MiB for 4 KiB pages and 512 MiB for 64 KiB pages). We currently
> use 512 MiB as the chunk size, so it should be relatively similar and
> easy to adjust.
>=20
> One issue that we would absolutely need this memory to be ZONE_MOVABLE
> from the start. Using no-map in DT and then online_pages() probably will
> not work because there's no struct page for the memory. So we're left
> with keeping the memory onlined by default, in which case we'd need some
> way for DT to instruct the memory to be put into ZONE_MOVABLE always.
>=20
> There's a "hotpluggable" property for "memory" nodes, maybe that can be
> extended to apply to reserved-memory nodes as well?

I haven't been having much success with this. memblock_mark_hotplug()
doesn't have much of an effect because the kernel clears this flag
automatically at some point, so by the time the movable zone is created
there's no memory left that's marked hotpluggable. I don't know if it's
a good idea to modify the code to keep the flag.

Another thing I briefly tried was to use add_memory_driver_managed()
together with the no-map flag in an attempt to get the memory explicitly
added as movable, but that fails because __request_resource() notices
that the reserved memory is actually part of the system RAM that was
registered earlier.

I think in order for this to work the bindings would probably need to
change, such that reserved-memory nodes aren't used but it's described
using the memory nodes instead. That way a piece of system RAM could be
carved out and added by the VPR driver. I don't know if the kernel would
like this kind of splicing of the system RAM, though.

It's all very close to what I need for this, but doesn't quite fit. Any
ideas which of the options is best? Right now it sounds like finding a
way to make this region explicitly ZONE_MOVABLE would be the best. That
should allow offline_pages() and online_pages() to be used, which seems
like the cleanest approach.

Thierry

--u2l7n4igggpssyeo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmpPyKMACgkQ3SOs138+
s6HMyg//VTBl5irgppGTb3EjEccykd6c0o9JZQ0UMSSSA+GHq89TLA0mP06UMEIo
rhLr7OakIAbbZ1QlsTywvsU9Fm33hcO4AddUn1OAcl4HTvP19JfwNN3Y/AwZtsKw
CO5/J9sJOO2Ofb3O20BC7RHHfLxHhhwjdcp8+aQ739tG7fKlyA6r/R3ebAOVsQqJ
VTSFF8Bdej2X/EWVBZRWprUdSgDACyFlhNIRBOt57nRObqO7iqnXEjm84gMXJWxk
/4OStnkVJL4fVk1ZaDzYjFJzi1MTT20KOEldRWAL3CwxSLYBcP8rYG0YoGLaZIfC
Hgvo0XBO+RHwufv77wN4Z7vDLAktcNu6PTS1ovemW24iW3DelUv89/7Fh32l31CV
dTnvNK6sukz82QXd62VFzskpbfxW9ONO5awGKcpxDEoSeUGd/4Cg+nfvXIbhfZgN
kdjAJXxD5VvDeIpvOVMSQVINE9T/OkGqV8CkCMQfDu3+hSq7iU8OW8TH2eybWcqt
POCKNDd0dm21w1miNqpi5qvUrUa8zzYfjmQt1dxwPUf36EcoodZaOSNjkKi0amdm
S5yLHnW6KuFY26nTGPQ54Noup4ZPuKBoqZjg/m6sPx34fr8HKIMSLM6Kp2oYq2K6
oga7buaPA7sRTHJ9tMFv/G9ACDJo71dmTuDyMAnNFqpv46c1+4c=
=+7m0
-----END PGP SIGNATURE-----

--u2l7n4igggpssyeo--

--===============4825472695485604300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4825472695485604300==--
