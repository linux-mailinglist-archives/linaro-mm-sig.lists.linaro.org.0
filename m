Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2O9RGBsXAmoVnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 19:51:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B5C513D23
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 19:51:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4B173F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 17:51:21 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 12DCE3F75A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 17:51:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=uaQBsmfc;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AB6CB6001A;
	Mon, 11 May 2026 17:51:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C2E2C2BCB0;
	Mon, 11 May 2026 17:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778521873;
	bh=9Yp/CVYMqyPHBsVwAYn1sN99dUm//BD19OnBzFRd58k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uaQBsmfcDLzI0oyLMmScwlkSABsNwECIqpR0/h+xKOpexzgzViP8Og/wmqTD4O1eF
	 o7gjnRHu4CqassvmmeodKtlh3NbW4GDg8HjzPph7s4ZyElHEpfdeEKBIMRR550nSU+
	 6IQNVmepFF0Cj19pqwB85nSgqqLBZfjop0NwAW8oEedE4O7mcdUnSjFXQtijvqFqO6
	 09u6sQ/bFDGkIwo0v0C+Fm0ixRP9QjtN/Crkynr3upIr8pySL+lfbwNPcOaTRMW31g
	 dTOJo/LYuCWyLbQASOoAfbmZAN5UpOnWve8uBiN0EqY1P4htfvnY4BJaNcfp2e8l7D
	 lgE6+FEb0QoXw==
Date: Mon, 11 May 2026 20:51:03 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260511175103.GK15586@unreal>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-10-mattev@meta.com>
 <20260424183153.GJ3444440@nvidia.com>
 <20260426105215.GA440345@unreal>
 <20260427083644.4ee174cd@shazbot.org>
 <25a4fc45-1b4d-426b-954a-60bf21e9040f@meta.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25a4fc45-1b4d-426b-954a-60bf21e9040f@meta.com>
X-Spamd-Bar: ----
Message-ID-Hash: 7CSFIAZXH6VMVUQRKFW4ZAMETJBASO6J
X-Message-ID-Hash: 7CSFIAZXH6VMVUQRKFW4ZAMETJBASO6J
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7CSFIAZXH6VMVUQRKFW4ZAMETJBASO6J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D3B5C513D23
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.958];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 04:30:39PM +0100, Matt Evans wrote:
> Hi Alex, Leon,
> 
> On 27/04/2026 15:36, Alex Williamson wrote:
> > 
> > On Sun, 26 Apr 2026 13:52:15 +0300
> > Leon Romanovsky <leon@kernel.org> wrote:
> > 
> > > On Fri, Apr 24, 2026 at 03:31:53PM -0300, Jason Gunthorpe wrote:
> > > > On Thu, Apr 16, 2026 at 06:17:52AM -0700, Matt Evans wrote:
> > > > > A new field is reserved in vfio_device_feature_dma_buf.flags to
> > > > > request CPU-facing memory type attributes for mmap()s of the buffer.
> > > > > Add a flag VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC, which results in WC
> > > > > PTEs for the DMABUF's BAR region.
> > > > > 
> > > > > Signed-off-by: Matt Evans <mattev@meta.com>
> > > > > ---
> > > > >   drivers/vfio/pci/vfio_pci_dmabuf.c | 15 +++++++++++++--
> > > > >   drivers/vfio/pci/vfio_pci_priv.h   |  1 +
> > > > >   include/uapi/linux/vfio.h          | 12 +++++++++---
> > > > >   3 files changed, 23 insertions(+), 5 deletions(-)
> > > > 
> > > > Nice and simple
> > > > 
> > > > Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> > > > > @@ -1549,8 +1551,12 @@ struct vfio_region_dma_range {
> > > > >   struct vfio_device_feature_dma_buf {
> > > > >   	__u32	region_index;
> > > > >   	__u32	open_flags;
> > > > > -	__u32   flags;
> > > > > -	__u32   nr_ranges;
> > > > > +	__u32	flags;
> > > > > +	/* Flags sub-field reserved for attribute enum */
> > > > > +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_MASK		(0xfU << 28)
> > > > > +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_UC		(0 << 28)
> > > > > +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC		(1 << 28)
> > > > > +	__u32	nr_ranges;
> > > 
> > > Alex,
> > > 
> > > The TPH proposal extends the flags field in a similar way, but I suggested
> > > a different approach to conserve bits. At the moment, we spend three bits
> > > on a single feature, which feels wasteful.
> > > 
> > > What do you think?
> > > https://lore.kernel.org/all/20260409120415.GF86584@unreal/
> > 
> > I already proposed a very different interface for TPH that decouples
> > the dma-buf creation from setting the TPH values:
> > 
> > https://lore.kernel.org/all/20260423132016.4a25e074@shazbot.org/
> > 
> > This is overall less intrusive than the TPH change proposed, but it
> > could still make sense to align this as an operation on the dma-buf,
> > that can be probed as a separate feature.  Thanks,
> 
> I'll add a VFIO_DEVICE_FEATURE_DMA_BUF_ATTRS in a v2 instead to get in line
> with the TPH work, no worries.
> 
> For the benefit of future hackers, how would you describe the criteria for
> adding flags to this existing field?  

One bit per-feature.

> What hypothetical feature characteristics would be appropriate?  (Maybe it's that these attrs & TPH
> add scalar fields in several bits rather than a simple boolean.) Two of us
> have independently added something that's turned out to be inapproriate so
> some guidance would be good.

Both of you intertwined the signaling bit with the actual data, and that is
what led me to prefer a different approach.

Thanks

> 
> Thanks!
> 
> 
> Matt
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
