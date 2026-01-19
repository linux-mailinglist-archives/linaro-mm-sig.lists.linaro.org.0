Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 17438D39FA8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 08:25:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC76E400F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 07:25:37 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C59103F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 07:25:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OOYMTqRr;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 16355434B7;
	Mon, 19 Jan 2026 07:25:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09F96C116C6;
	Mon, 19 Jan 2026 07:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768807529;
	bh=Sy0oZJNxE3l4wUF1ShDJYtcIYRfebTgMszB/pVPpbG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OOYMTqRrGNEs2jAmSYlM686r10g9BCiY0dH1nHfSd9wBLODRb8DM164wJPnvPjUZJ
	 icgeXWdtQ7Oia1ErMzqcQuhf52/tfn7nc5Db0Pgu4mF4oKXHNz7EAU6VPQm5fLTGmH
	 dpWD45Ghuyew+XIW6NcIv4QphDm7ZCu0u2N2glr45RlAuFFKTsiYSKNgep1eD0k+ze
	 DGHBEAu/8vNU8SRkbYapnqC57ld4+aZRHd6cB3kj5nGczjtxNRKaQQAT7M5FarOcTS
	 +AznVeitmh0vPl0biNbAXazx0fJsZPdtNy+ZzqhsViFUZFhUJS6vri3NJErSen8Aar
	 zIN3x/bF6bUXQ==
Date: Mon, 19 Jan 2026 09:25:24 +0200
From: Leon Romanovsky <leon@kernel.org>
To: John Hubbard <jhubbard@nvidia.com>
Message-ID: <20260119072524.GD13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
 <d41d08e3-6a86-40a4-925c-6a3172670079@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d41d08e3-6a86-40a4-925c-6a3172670079@nvidia.com>
X-Rspamd-Queue-Id: C59103F734
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[32];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DWL_DNSWL_NONE(0.00)[kernel.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VYLHS3BTZXZV3EQNUXZDY55JPOCTWKUS
X-Message-ID-Hash: VYLHS3BTZXZV3EQNUXZDY55JPOCTWKUS
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualiz
 ation@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VYLHS3BTZXZV3EQNUXZDY55JPOCTWKUS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Jan 18, 2026 at 01:40:11PM -0800, John Hubbard wrote:
> On 1/18/26 4:08 AM, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@nvidia.com>
> ...
> > +/**
> > + * dma_buf_attachment_is_revoke - check if a DMA-buf importer implements
> > + * revoke semantics.
> > + * @attach: the DMA-buf attachment to check
> > + *
> > + * Returns true if DMA-buf importer honors revoke semantics, which is
> > + * negotiated with the exporter, by making sure that importer implements
> > + * .invalidate_mappings() callback and calls to dma_buf_pin() after
> > + * DMA-buf attach.
> > + */
> > +static inline bool
> > +dma_buf_attachment_is_revoke(struct dma_buf_attachment *attach)
> 
> Maybe a slight rename, to dma_buf_attachment_is_revocable()?

I can do that. The issue is that even "dma_buf_attachment_is_revoke"
is already too long. :)

Thanks

> 
> 
> thanks,
> -- 
> John Hubbard
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
