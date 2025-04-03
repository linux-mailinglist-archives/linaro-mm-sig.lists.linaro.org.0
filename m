Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B71ABA7A73B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 17:47:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE53146010
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 15:47:30 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 806B9450B9
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Apr 2025 15:47:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BHiu9zpQ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 29A6843AE7;
	Thu,  3 Apr 2025 15:47:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10A82C4CEE5;
	Thu,  3 Apr 2025 15:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743695246;
	bh=EaxIEi2MzHezSZZXiYbZ5wYqTfobu9WblfTbW9XFbBU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BHiu9zpQPAcxHwkl1Fk/pF6J7ENRms/xF8j934S+wm5det9lbVcH1nobBOu15k51V
	 RmDBtTgJZHYPAdwvl4kISbu5SX2/wkYQ0u1jiGP4hQtG7pu7SP7BNPvH7vTC1xrEIo
	 ltfbDK2HY+se5xOmcWrS/NNPQn+JU+xDg4xJp/d+sv7rTQqOUQghv20wtk5dTFtOFB
	 veMF3kZMzeJReUYQtauA8m+blHkxnPv0xw+OKZwrM1t6or5a9UTXUI5ozuHTVEJYt1
	 gw8ANUXA7riCX5CUAfPQlKcGsacCkcw1I4VNuBhzP9A+Vm0J7vijuKj1sAzGiztkWX
	 iVhsYPqKATeJg==
Date: Thu, 3 Apr 2025 17:47:23 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250403-quick-salamander-of-charisma-cab289@houat>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com>
 <20250310-eccentric-wonderful-puffin-ddbb26@houat>
 <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com>
 <e08f10da-b0cd-444b-8e0b-11009b05b161@amd.com>
 <CAPM=9twgFt43OKqUY0TNopTmibnR_d891xmV=wFM91n604NUCw@mail.gmail.com>
 <5ed87c80-6fe3-4f8c-bb98-ca07f1db8c34@amd.com>
MIME-Version: 1.0
In-Reply-To: <5ed87c80-6fe3-4f8c-bb98-ca07f1db8c34@amd.com>
X-Spamd-Result: default: False [-9.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[172.234.252.31:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,ffwll.ch,chromium.org,kernel.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	ASN(0.00)[asn:20940, ipnet:172.232.0.0/13, country:NL];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 806B9450B9
X-Spamd-Bar: ---------
Message-ID-Hash: K2UU5GXQ2QBLSSNRLBARUES2AGGU56CP
X-Message-ID-Hash: K2UU5GXQ2QBLSSNRLBARUES2AGGU56CP
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K2UU5GXQ2QBLSSNRLBARUES2AGGU56CP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2083818661969032083=="


--===============2083818661969032083==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ladwbtqhxfoyjegt"
Content-Disposition: inline


--ladwbtqhxfoyjegt
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
MIME-Version: 1.0

On Thu, Apr 03, 2025 at 09:39:52AM +0200, Christian K=F6nig wrote:
> > For the UMA GPU case where there is no device memory or eviction
> > problem, perhaps a configurable option to just say account memory in
> > memcg for all allocations done by this process, and state yes you can
> > work around it with allocation servers or whatever but the behaviour
> > for well behaved things is at least somewhat defined.
>=20
> We can have that as a workaround, but I think we should approach that
> differently.
>=20
> With upcoming CXL even coherent device memory is exposed to the core
> OS as NUMA memory with just a high latency.
>=20
> So both in the CXL and UMA case it actually doesn't make sense to
> allocate the memory through the driver interfaces any more. With
> AMDGPU for example we are just replicating mbind()/madvise() within
> the driver.
>=20
> Instead what the DRM subsystem should aim for is to allocate memory
> using the normal core OS functionality and then import it into the
> driver.
>=20
> AMD, NVidia and Intel have HMM working for quite a while now but it
> has some limitations, especially on the performance side.
>=20
> So for AMDGPU we are currently evaluating udmabuf as alternative. That
> seems to be working fine with different NUMA nodes, is perfectly memcg
> accounted and gives you a DMA-buf which can be imported everywhere.
>=20
> The only show stopper might be the allocation performance, but even if
> that's the case I think the ongoing folio work will properly resolve
> that.

I mean, no, the showstopper to that is that using udmabuf has the
assumption that you have an IOMMU for every device doing DMA, which is
absolutely not true on !x86 platforms.

It might be true for all GPUs, but it certainly isn't for display
controllers, and it's not either for codecs, ISPs, and cameras.

And then there's the other assumption that all memory is under the
memory allocator control, which isn't the case on most recent platforms
either.

We *need* to take CMA into account there, all the carved-out, device
specific memory regions, and the memory regions that aren't even under
Linux supervision like protected memory that is typically handled by the
firmware and all you get is a dma-buf.

Saying that it's how you want to workaround it on AMD is absolutely
fine, but DRM as a whole should certainly not aim for that, because it
can't.

Maxime

--ladwbtqhxfoyjegt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ+6tigAKCRDj7w1vZxhR
xQFfAQDBTdwSGeM/HRXug8mlHyT5psOLiGa5pibxIgH2xR/VmgEA0w5A63Bu6RYa
JKVhD2+5cuBaPVUha8mXQIEsqmEOGgI=
=Li+I
-----END PGP SIGNATURE-----

--ladwbtqhxfoyjegt--

--===============2083818661969032083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2083818661969032083==--
