Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dscUONhvVmot5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 81691757550
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=UbIxVhIT;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A09B23F829
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:20:23 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 984E94015A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 16:41:26 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2583060204;
	Thu,  2 Jul 2026 16:41:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3321D1F00ACF;
	Thu,  2 Jul 2026 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783010485;
	bh=4TcPpM0BZaoJj/LKE0Ry2kWPQZbK+NaW1FTfGXp6Qn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UbIxVhIT3k+L2Rvex870aYp4emZYvycrMzgT/l80VxrbTxWvxI9JRKpnaUNMEjG3G
	 ZoVLWczTG/g9HyZAgZ70twW/ylV0EE7XLdG/sgXmKLnHisy8AsEYlfbd5niKzqz1lY
	 ws98cZTWJqeFnp3vSJLG17/qF3Ge/moCJxFQuACsKCwbcRvPFAWF7LSujuvl0ZguAd
	 0Ey5CbVzfmKHTGGtoQsv7zUESob5GM+jQi/nn4i0YwCIBp/b1yxTiqFNMy4jhvtD5D
	 q7w26HLWMKTd+xN5EbSr27iexWuWelP+dlG+S+pGinCthmp6iUYPrtV/RBEn+6x6na
	 +pBQI4mIXDTaw==
Date: Thu, 2 Jul 2026 18:41:23 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: Will Deacon <will@kernel.org>
Message-ID: <akaSJ5D98w2cHqb6@orome>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-4-d80f7b871bb4@nvidia.com>
 <akYs91INHMXMTI-t@willie-the-truck>
 <akZkuwktaXFTrASP@orome>
MIME-Version: 1.0
In-Reply-To: <akZkuwktaXFTrASP@orome>
X-Spamd-Bar: --------
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FPLPUCD4ZV5BFOVLPYUAA672JXXIVMZ3
X-Message-ID-Hash: FPLPUCD4ZV5BFOVLPYUAA672JXXIVMZ3
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:02 +0000
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sowjanya Komatineni <skomatineni@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Mikko Perttunen <mperttunen@nvidia.com>, Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Russell King <linux@armlinux.org.uk>, Alexander Gordeev <agordeev@linux.ibm.com>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <ljs@kernel.org>, "Liam R. Howlett" <liam@infrade
 ad.org>, Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Catalin Marinas <catalin.marinas@arm.com>, Thierry Reding <thierry.reding@gmail.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org, linux-trace-kernel@vger.kernel.org, Thi
 erry Reding <treding@nvidia.com>, Chun Ng <chunn@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/11] arm64/mm: Add set_memory_device() and set_memory_normal()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPLPUCD4ZV5BFOVLPYUAA672JXXIVMZ3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0308439492869955966=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[288];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:will@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:skomatineni@nvidia.com,m:luca.ceresoli@bootlin.com,m:mperttunen@nvidia.com,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:linux@armlinux.org.uk,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:hca@linux.ibm.com,m:gor@linux.ibm.com,m:borntraeger@linux.ibm.com,m:svens@linux.ibm.com,m:akpm@linux-foundation.org,m:david@kernel.org,m:ljs@kernel.org,m:liam@infrade ad.org,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:robin.murphy@arm.com,m:sumit.semwal@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:christian.koenig@amd.com,m:rostedt@goodmis.org,m:mhiramat@kernel.org,m:mathieu.desnoyers@efficios.com,m:catalin.marinas@arm.com,m:thierry.red
 ing@gmail.com,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-mm@kvack.org,m:iommu@lists.linux.dev,m:linaro-mm-sig@lists.linaro.org,m:linux-trace-kernel@vger.kernel.org,m:treding@nvidia.com,m:chunn@nvidia.com,m:krzk@kernel.org,m:conor@kernel.org,m:yurynorov@gmail.com,m:thierryreding@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCPT_COUNT_GT_50(0.00)[55];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,rasmusvillemoes.dk,armlinux.org.uk,linux.ibm.com,linux-foundation.org,infrade ad.org,google.com,suse.com,arm.com,linaro.org,collabora.com,amd.com,goodmis.org,efficios.com,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,kvack.org,lists.linux.dev,lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,orome:mid,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81691757550


--===============0308439492869955966==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a4brqgkdrivfh2ns"
Content-Disposition: inline


--a4brqgkdrivfh2ns
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 04/11] arm64/mm: Add set_memory_device() and
 set_memory_normal()
MIME-Version: 1.0

On Thu, Jul 02, 2026 at 03:46:44PM +0200, Thierry Reding wrote:
> On Thu, Jul 02, 2026 at 10:18:47AM +0100, Will Deacon wrote:
> > On Wed, Jul 01, 2026 at 06:08:15PM +0200, Thierry Reding wrote:
> > > From: Chun Ng <chunn@nvidia.com>
> > >=20
> > > Add helpers to swap PROT_NORMAL and PROT_DEVICE_nGnRnE protection bits
> > > on a kernel-linear-map range.
> >=20
> > That sounds like a really terrible idea. Why is this necessary and how
> > does it interact with things like load_unaligned_zeropad()?
>=20
> This is necessary because once the memory controller has walled off the
> new memory region the CPU must not access it under any circumstances or
> it'll cause the CPU to lock up (I think technically it'll hit an SError
> but in practice that just means it'll freeze, as far as I can tell).
>=20
> Probably doesn't interact well at all with load_unaligned_zeropad().
>=20
> > I think you should unmap the memory from the linear map and memremap()
> > it instead.
>=20
> Given that the memory can never be accessed by the CPU after the memory
> controller locks it down, I don't think we'll even need memremap(). The
> only thing we really need is the sg_table we hand out via the DMA BUFs
> so that they can be used by device drivers to program their DMA engines
> internally.
>=20
> Looking through some of the architecture code around this, shouldn't we
> simply be using set_memory_encrypted() and set_memory_decrypted() for
> this? While they might've been created for slightly other use-cases,
> they seem to be doing exactly what we want (i.e. remove the page range
> from the linear mapping and flushing it, or restoring the valid bit and
> standard permissions, respectively).

Ah... I guess we can't do it because we're not in a realm world and so
the early checks in __set_memory_enc_dec() would return early and turn
it into a no-op.

How about if I extract a common helper and provide set_memory_p() and
set_memory_np() in terms of those. Those are available on x86 and
PowerPC as well, so fairly standard. I suppose at that point we're
closer to set_memory_valid().

Thierry

--a4brqgkdrivfh2ns
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmpGlK8ACgkQ3SOs138+
s6HETA//VE10mlKmDkMPw7oOS2GPLTn9mVHksFDOn28PMBlC2qgyv4CyznGj3Rfw
WHIYoNb0rxntAbxQkh6SV5FCCi76fm/uTR3z2an8FI8W7KwiVfDiaIv3cmlG6TVd
XcCj42QUsUHU7iFHzfSVkW33626MSfyeD+w00yxmT14U2Utl4X/+V+EQF6tRStJZ
eLJUAyxrArCx98MI79QW13QB5MilfaFjtY6IxwXr+0hW2qnXGbNWJ5x1Z5kbC6wD
6yOAfi8QY0nqau5GKgo/+dkYUq1zAc65a7QdRu5KW383NDcLhRbtrwBoA6TYFriL
c2GJiV1ch4N8Dsr694Lmn4jNHUUqPLcPY8it6qMkUNVrc5XjK24C0intns2AFR4i
7ca82YvaTCuql87GjgBkz9NptVtmqVdZxnrtVYAH9mbvfczVpAEEsacYrMwtqBPM
crTqcMLjkLxVZdnsvwT3Je73FolwTnxNsBlTaA24I64kQCW9QUIRy6WltcFdimPM
2K40ULhVg3dNDSaGsQaIvDv8kpgBJiX4sf3kIjK71Dgo9/HKS4IBZx3kfKUxxURj
RD51dxPOiDXPwIzDZxbERJ2rZx4NxSTj2FjLET7Vs6nbKwvC+K/XiLOtEIXbfwdD
w9Hih0fRPiPrhG+uab8J6u+Jsaj9KI/DnuqDrIZL+ciFm4MVaNc=
=9S6h
-----END PGP SIGNATURE-----

--a4brqgkdrivfh2ns--

--===============0308439492869955966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0308439492869955966==--
