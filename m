Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAlSO3ER4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE46411DEA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8B3744F3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:42:24 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 2D594401E8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 14:50:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KeV6KmOo;
	spf=pass (lists.linaro.org: domain of thierry.reding@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=thierry.reding@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A46E40711;
	Thu, 12 Feb 2026 14:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D71C9C4CEF7;
	Thu, 12 Feb 2026 14:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770907812;
	bh=LKllQeW/JBLJUKCdyBCm9Pj6xN0Nreo3qACceg5TfLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KeV6KmOocndM7Aq+b5F2pLDSXw8xke4lYbDn2+JLIU8XS48BPzyKnqpWDnkhapeuh
	 g8Tgl9Dfq1IG1Xii4QQd2prVdpEUyocZrrtqKLWWmvWSHXf4VvESem7Zbp01B+t8nn
	 tQSxqw7lzwaVotdXoO0dZUqpfI686t/pgyGzJQoMUmFnUToX8SSZsEch2mOG9LUczl
	 6C5kpBgWUjJ3fawWnebobcvXR5H+o0ijpF6GwiwyVFC7wdFCdLGxtjycnTBwpWD+WA
	 kBnHzXQ7vd4MPhoB+TsfGxNfsP9qkpIWGMwt/jLUgoQ4iNKBg7a3P/zYhHsR3tNBOB
	 L2CZeLjc0Dz4A==
Date: Thu, 12 Feb 2026 15:50:09 +0100
From: Thierry Reding <thierry.reding@kernel.org>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <aY3nov29aBGWw93Y@orome>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-7-thierry.reding@kernel.org>
 <20260123-meteoric-butterfly-of-imagination-fd691f@houat>
MIME-Version: 1.0
In-Reply-To: <20260123-meteoric-butterfly-of-imagination-fd691f@houat>
X-Spamd-Bar: -----
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P73UFGUKM7Z26VTLJ6RPKVYAYZTOXCFB
X-Message-ID-Hash: P73UFGUKM7Z26VTLJ6RPKVYAYZTOXCFB
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:20 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P73UFGUKM7Z26VTLJ6RPKVYAYZTOXCFB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7094158824663599330=="
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[1513];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CCE46411DEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============7094158824663599330==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3j2ryzp4gzyowi5k"
Content-Disposition: inline


--3j2ryzp4gzyowi5k
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
MIME-Version: 1.0

On Fri, Jan 23, 2026 at 02:30:14PM +0100, Maxime Ripard wrote:
> Hi,
>=20
> On Thu, Jan 22, 2026 at 05:10:05PM +0100, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > NVIDIA Tegra SoCs commonly define a Video-Protection-Region, which is a
> > region of memory dedicated to content-protected video decode and
> > playback. This memory cannot be accessed by the CPU and only certain
> > hardware devices have access to it.
> >=20
> > Expose the VPR as a DMA heap so that applications and drivers can
> > allocate buffers from this region for use-cases that require this kind
> > of protected memory.
> >=20
> > VPR has a few very critical peculiarities. First, it must be a single
> > contiguous region of memory (there is a single pair of registers that
> > set the base address and size of the region), which is configured by
> > calling back into the secure monitor. The memory region also needs to
> > quite large for some use-cases because it needs to fit multiple video
> > frames (8K video should be supported), so VPR sizes of ~2 GiB are
> > expected. However, some devices cannot afford to reserve this amount
> > of memory for a particular use-case, and therefore the VPR must be
> > resizable.
> >=20
> > Unfortunately, resizing the VPR is slightly tricky because the GPU found
> > on Tegra SoCs must be in reset during the VPR resize operation. This is
> > currently implemented by freezing all userspace processes and calling
> > invoking the GPU's freeze() implementation, resizing and the thawing the
> > GPU and userspace processes. This is quite heavy-handed, so eventually
> > it might be better to implement thawing/freezing in the GPU driver in
> > such a way that they block accesses to the GPU so that the VPR resize
> > operation can happen without suspending all userspace.
> >=20
> > In order to balance the memory usage versus the amount of resizing that
> > needs to happen, the VPR is divided into multiple chunks. Each chunk is
> > implemented as a CMA area that is completely allocated on first use to
> > guarantee the contiguity of the VPR. Once all buffers from a chunk have
> > been freed, the CMA area is deallocated and the memory returned to the
> > system.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
>=20
> Aside from the discussion on CMA, it doesn't look like the heap defines
> anywhere the attributes of the allocated buffers this heap provides.

Attributes like what? Where would you expect the driver to define this?
I don't see anything in struct drm_heap_export_info that sounds like
what you expect, nor does the allocation ABI provide any means of
reporting attributes.

There's also not a whole lot to this, other than that the memory
allocated by this can't be accessed by anything other than a select set
of devices. You can't have any CPU access to these buffers (the hardware
will refuse to let the CPU read from this memory) either, which is
hinted at by the fact that no mmap() operations are allowed.

Can you elaborate what you're looking for?

Thierry

--3j2ryzp4gzyowi5k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmmN6KEACgkQ3SOs138+
s6HM9Q/9EFa2oY/ilPk1Ll4m4WFXDXugzRxO/aNWF0pZafY2suw7rNNqt0ETCckw
e1pkto+gqyZVHuiokQZpAzuwMcywb6dlOoqNR8mzYj82GxKoaUVthJd5THFLYRvX
npidrB5C5MQPG0gJXzmPr1NPUgcMHLuB+9WsKlc80Wd7rfLNL7aq/X1rk3mP+IMr
zfYmnBpYahLeL2hh0dylkHVaFXf+5aFrVZPLaAXVzeGh/pldIQzSlYiQ7YVHcexI
v23kNGYYvMt1r1BT8wTJFKxu6zTGA+scYOIObBLPym5xEm7JwxFg8JmqZxLvyYIO
LqPxGkeTm2XgyO8ucQLfqVGdxiLGXKzzqPUSXxQeJEjFM9ZwH1s0wm5wyDhrq39T
rMbIXFmaiHCqZDntx0oXypuiD1a6US2C8RSwfr7AvfrNDAScA4RW8O/qda72UQRv
tXCWZMWaLKpL6FBy285ciQ6+p9l61JcV8wX1vLilYAvOUNqS4Ca8Pt6VawuDhYbm
oHl6eMx3mwFtx1rTyHUym2CYVuQJPclv09grD6EQG5xRa6bhRIc70sqHC4bJ9AF8
jAH/JWkfAIcqOtOFRZlYvbhdc7AyOqk8tmx7NzD3VbC8n8Peqobu/P/4a5fYaTxA
RmpWqclyn4U6X+m/cr+2SmgJ4AhkPluZQJ8NRyHb0+wDjaBGvMo=
=2ifN
-----END PGP SIGNATURE-----

--3j2ryzp4gzyowi5k--

--===============7094158824663599330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7094158824663599330==--
