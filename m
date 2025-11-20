Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD5EC735B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 11:03:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 537C83F826
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 10:03:37 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3FFF43F69B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 10:03:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=G+hY+OMB;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 61EB3409C4;
	Thu, 20 Nov 2025 10:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FB98C4CEF1;
	Thu, 20 Nov 2025 10:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763632997;
	bh=nN18XypDEK4Xp2Uwyzn2CyI2CYU2LLHnqRbvcxN/MOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G+hY+OMBFwxjvW/rHz3D9U5weCHQooOgK8MHfyA01kVMMV+A3AkZ438UHthcqeE9M
	 /W8sa0sQXGzt/hW+GZKYO9qCVhuYOSwzWyvXmoHLLLXKCC71ccQychOWgBEc9/N4WR
	 B4hzYRwhJYWOy/XMG9Ee6J/fv3T7TqpQvxDZRmSFypghKchjL3PUHlMTtC4LoafHEg
	 8gc9esBn2NM5CJ6c+XmHXAeq018QsYls0PqZAWftuB8E+D1BJ3lzNPMBBHus01EitA
	 yHaQJeOXigJlJYANOS70kHWQFawRWzvBrKbuTNC8S71WbHRGEk1IfIpBp5grsDiqGo
	 BP3n3eU4f4VgA==
Date: Thu, 20 Nov 2025 12:03:12 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20251120100312.GV18335@unreal>
References: <20251120-dmabuf-vfio-v9-0-d7f71607f371@nvidia.com>
 <20251120-dmabuf-vfio-v9-6-d7f71607f371@nvidia.com>
 <57b8876f-1399-4e4d-a44b-1177787aa17d@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57b8876f-1399-4e4d-a44b-1177787aa17d@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[35];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3FFF43F69B
X-Spamd-Bar: ---
Message-ID-Hash: OPTPV3YL22SY7PPDUAJAQBYXDYDXXZHV
X-Message-ID-Hash: OPTPV3YL22SY7PPDUAJAQBYXDYDXXZHV
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Nicolin
  Chen <nicolinc@nvidia.com>, Alex Mastro <amastro@fb.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OPTPV3YL22SY7PPDUAJAQBYXDYDXXZHV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 10:33:36AM +0100, Christian K=F6nig wrote:
> On 11/20/25 10:28, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> >=20
> > Add dma_buf_phys_vec_to_sgt() and dma_buf_free_sgt() helpers to convert
> > an array of MMIO physical address ranges into scatter-gather tables with
> > proper DMA mapping.

<...>

> > Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> > Reviewed-by: Nicolin Chen <nicolinc@nvidia.com>
> > Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> > Tested-by: Alex Mastro <amastro@fb.com>
> > Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
>=20
> Could be that this will backfire at some point, but I think we will never=
 know without trying.
>=20
> Acked-by: Christian K=F6nig <christian.koenig@amd.com>

Thanks a lot.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
