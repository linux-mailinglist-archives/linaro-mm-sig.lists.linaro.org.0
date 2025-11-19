Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4260DC71111
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 21:46:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57CFA3F909
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 20:46:03 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id BFA123F826
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 20:45:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qlv5a0X0;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 441AF6000A;
	Wed, 19 Nov 2025 20:45:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05F3FC4CEF5;
	Wed, 19 Nov 2025 20:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763585145;
	bh=5rI8lrrVbFn1InvbQielmCucdPk01bWsAxmwyIxRJJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qlv5a0X0ngRKyFh2JKVmpc2TkyYK/DU2m5BSvUPEl7BnF5Z4h3h/m+RqO7z1bx61m
	 rbyyfMoS9aqKBh0aUmaaII2BVk6WpQkAzGGpg1rUG+s8HZmAW8WSgoYrh4VjU5XyVE
	 cn3LgrCO1dpfJBw5cCJ/USdlN3JLkb+DpB22klLCEqHAbG4qjTuayYPjr+pzzDi4EO
	 R0Qx5aJ2BOOXu+TPpbSpmwtVpBrFTUylK5laErKZm5ellYru+TJRCMyV7sgWpV4Qxc
	 Y4Mw7ZQsZniCIYFf6yWIotwra9fYcCXVMUXRBjbCK8S0k+X0tqBTMuTL7f8E/JttUG
	 kQjOcbKaf5FSw==
Date: Wed, 19 Nov 2025 22:45:41 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20251119204541.GN18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-5-fd9aa5df478f@nvidia.com>
 <9798b34c-618b-4e89-82b0-803bc655c82b@amd.com>
 <20251119133529.GL17968@ziepe.ca>
 <ad36ef4e-a485-4bbf-aaa9-67cd517ca018@amd.com>
 <20251119194506.GS17968@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251119194506.GS17968@ziepe.ca>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BFA123F826
X-Spamd-Bar: ---
Message-ID-Hash: 4UR67SLZGS72IXULPGNNP7ZGU6FRRVO6
X-Message-ID-Hash: 4UR67SLZGS72IXULPGNNP7ZGU6FRRVO6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-har
 dening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4UR67SLZGS72IXULPGNNP7ZGU6FRRVO6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 03:45:06PM -0400, Jason Gunthorpe wrote:
> On Wed, Nov 19, 2025 at 03:06:18PM +0100, Christian K=F6nig wrote:
> > On 11/19/25 14:35, Jason Gunthorpe wrote:
> > > On Wed, Nov 19, 2025 at 10:18:08AM +0100, Christian K=F6nig wrote:
> > >>> +As this is not well-defined or well-supported in real HW the kerne=
l defaults to
> > >>> +blocking such routing. There is an allow list to allow detecting k=
nown-good HW,
> > >>> +in which case P2P between any two PCIe devices will be permitted.

<...>

> > The documentation makes it sound like DMA-buf is limited to not
> > using struct pages and direct I/O, but that is not true.
>=20
> Okay, I see what you mean, the intention was to be very strong and say
> if you are not using struct pages then you must using DMABUF or
> something like it to control lifetime. Not to say that was the only
> way how DMABUF can be used.
>=20
> Leon let's try to clarify that a bit more

diff --git a/Documentation/driver-api/pci/p2pdma.rst b/Documentation/driver=
-api/pci/p2pdma.rst
index 32e9b691508b..280673b50350 100644
--- a/Documentation/driver-api/pci/p2pdma.rst
+++ b/Documentation/driver-api/pci/p2pdma.rst
@@ -156,7 +156,8 @@ Usage With DMABUF
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 DMABUF provides an alternative to the above struct page-based
-client/provider/orchestrator system. In this mode the exporting driver wil=
l wrap
+client/provider/orchestrator system and should be used when struct page
+doesn't exist. In this mode the exporting driver will wrap
 some of its MMIO in a DMABUF and give the DMABUF FD to userspace.
=20
 Userspace can then pass the FD to an importing driver which will ask the


>=20
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
