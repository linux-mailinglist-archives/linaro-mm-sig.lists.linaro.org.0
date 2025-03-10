Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2AA59B00
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 17:29:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DB6744532
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 16:29:01 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 659263F39F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 16:28:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HjCRfgvh;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 80D8BA45A5A;
	Mon, 10 Mar 2025 16:22:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3E28C4CEE5;
	Mon, 10 Mar 2025 16:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741624109;
	bh=sfvhajnKh+JsG0G6ZCvurp8nXoOWJhhwIboB81/bSrw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HjCRfgvhI4AlUc9WjlFhsPXUiJyzrUc7p1qSry8OFL6MdHrIU9dymbeJiT9YIoP0D
	 VpC7Nku3EXjciL5/o5SgIqVML56l8wAsBs9D0MV02GYwaxyVQleOU1pZm20IaC9MqS
	 6WL2AQtsDOrq/PSSrVIqLEmgiG7O2qg68NrFKbo0o/GbNDo1vAl8GfYDxMYrV6IemA
	 TA2xBT4nqJ+pqLZuSkQGtcP74qh8qiWlsFnT1nJd8PimtWtBMONmIe6Y1t9kfiJZfa
	 zgaHp90KP/TRdKxL6fw5PTlDtElMmsEjwJkxJo+mqgxXI69OPILcXnnV23cR/5WNFt
	 Lra5gXAYY48XQ==
Date: Mon, 10 Mar 2025 17:28:26 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20250310-expert-piculet-of-fascination-3813cd@houat>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <20250310-dmem-cgroups-v1-6-2984c1bc9312@kernel.org>
 <2af9ea85-b31d-49c9-b574-38c33cc89cef@arm.com>
MIME-Version: 1.0
In-Reply-To: <2af9ea85-b31d-49c9-b574-38c33cc89cef@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 659263F39F
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[linux-foundation.org,samsung.com,linaro.org,amd.com,collabora.com,arm.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[147.75.193.91:from,100.75.92.58:received];
	TAGGED_RCPT(0.00)[renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[147.75.193.91:from]
X-Rspamd-Action: no action
Message-ID-Hash: Y3NDECY2AHMGNQ7NUUNIHOTZ6IYLACNI
X-Message-ID-Hash: Y3NDECY2AHMGNQ7NUUNIHOTZ6IYLACNI
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/12] dma: direct: Provide accessor to dmem region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3NDECY2AHMGNQ7NUUNIHOTZ6IYLACNI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1084677769791334213=="


--===============1084677769791334213==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u3dzblkp3nldqa3e"
Content-Disposition: inline


--u3dzblkp3nldqa3e
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH RFC 06/12] dma: direct: Provide accessor to dmem region
MIME-Version: 1.0

On Mon, Mar 10, 2025 at 02:56:37PM +0000, Robin Murphy wrote:
> On 2025-03-10 12:06 pm, Maxime Ripard wrote:
> > Consumers of the direct DMA API will have to know which region their
> > device allocate from in order for them to charge the memory allocation
> > in the right one.
>=20
> This doesn't seem to make much sense - dma-direct is not an allocator
> itself, it just provides the high-level dma_alloc_attrs/dma_alloc_pages/e=
tc.
> interfaces wherein the underlying allocations _could_ come from CMA, but
> also a per-device coherent/restricted pool, or a global coherent/atomic
> pool, or the regular page allocator, or in one weird corner case the SWIO=
TLB
> buffer, or...

I guess it wasn't super clear, but what I meant is that it's an
allocator to the consumer: it gets called, and returns a buffer. How it
does so is transparent to the device, and on the other side of the
abstraction.

I do agree that the logic is complicated to follow, and that's what I
was getting at in the cover letter.

Maxime

--u3dzblkp3nldqa3e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ88TKQAKCRDj7w1vZxhR
xeXsAP4+bkSf79vghGDX51PPSs2osfbQ4iJhpf10VBrMEcmucQD/fkdqnL4MMQHy
pTxcWVuD9g8C9rHEtoXUgWXksoghYQ4=
=f/EX
-----END PGP SIGNATURE-----

--u3dzblkp3nldqa3e--

--===============1084677769791334213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1084677769791334213==--
