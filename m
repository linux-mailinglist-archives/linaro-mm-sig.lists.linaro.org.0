Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGgyEP1o+2miawMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 18:14:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2184DDF15
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 18:14:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA8B2404E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 16:14:51 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 46DFF3F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 16:14:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OG30EhVx;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AE698441F5;
	Wed,  6 May 2026 16:14:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEDE0C2BCC9;
	Wed,  6 May 2026 16:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778084088;
	bh=njswzZUrPGyw7+uTEB10Ek+mwJmBHBnPYKBweiQHmiE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OG30EhVxxNR3M6BFRGk5tVRf+vPSC2/zrU8c8s8I75OiTfzUXw3jzkILpN5prPV2p
	 uA58pxUM+kVTDBFPMOflxX0ImlI+L2vuF3UG5WJZ2w7M4LiIUelPQ76MNN3JbRhNoh
	 ANQZ9WuJSugulL7wYieTJWQI1YFNzSF1OxGVHzK4CYSn1khS8Y4mfj6NuOnOOZU34/
	 aFo+vUVdwY2e9FuDHKIe6HpyjJ4aK0RwwofPqbkXz1NJYLAHDPcTJeTi/mfz/fjBgH
	 G7XyZtLSQ60KzhivvWSrG51J22vg7kiOZ5QMtllm/B9RZ8X6SAlw4IPviBt9hfocN5
	 Zc35l/Fyyq44w==
Date: Wed, 6 May 2026 19:14:41 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260506161441.GK11063@unreal>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-2-mattev@meta.com>
 <20260501131236.278ac431@shazbot.org>
 <9304aada-ee84-4cf2-a1d7-82313eda07aa@meta.com>
 <20260506152937.GJ11063@unreal>
 <c0bd0e23-712c-483e-a809-47126ab6e9e9@meta.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0bd0e23-712c-483e-a809-47126ab6e9e9@meta.com>
X-Spamd-Bar: ---
Message-ID-Hash: R6TUJRSNDWTDSSU5RVHWO5SXS7ZQQN5J
X-Message-ID-Hash: R6TUJRSNDWTDSSU5RVHWO5SXS7ZQQN5J
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, Carlos =?iso-8859-1?Q?L=F3pez?= <clopez@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] vfio/pci: Fix vfio_pci_dma_buf_cleanup() double-put
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R6TUJRSNDWTDSSU5RVHWO5SXS7ZQQN5J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: BC2184DDF15
X-Rspamd-Action: no action
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
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

On Wed, May 06, 2026 at 04:55:27PM +0100, Matt Evans wrote:
> Hi Leon,
> 
> On 06/05/2026 16:29, Leon Romanovsky wrote:
> > 
> > On Wed, May 06, 2026 at 02:53:31PM +0100, Matt Evans wrote:
> > > Hi Alex,
> > > 
> > > On 01/05/2026 20:12, Alex Williamson wrote:
> > > > 
> > > > On Thu, 16 Apr 2026 06:17:44 -0700
> > > > Matt Evans <mattev@meta.com> wrote:
> > > > 
> > > > > vfio_pci_dma_buf_cleanup() assumed all VFIO device DMABUFs need to be
> > > > > revoked.  However, if vfio_pci_dma_buf_move() revokes DMABUFs before
> > > > > the fd/device closes, then vfio_pci_dma_buf_cleanup() would do a
> > > > > second/underflowing kref_put() then wait_for_completion() on a
> > > > > completion that never fires.  Fixed by predicating on revocation
> > > > > status.
> > > > > 
> > > > > This could happen if PCI_COMMAND_MEMORY is cleared before closing the
> > > > > device fd (but the scenario is more likely to hit when future commits
> > > > > add more methods to revoke DMABUFs).
> > > > > 
> > > > > Fixes: 1a8a5227f2299 ("vfio: Wait for dma-buf invalidation to complete")
> > > > > Signed-off-by: Matt Evans <mattev@meta.com>
> > > > > ---
> > > > > 
> > > > > (Just a fix, but later "vfio/pci: Convert BAR mmap() to use a DMABUF"
> > > > > and "vfio/pci: Permanently revoke a DMABUF on request" depend on this
> > > > > context, so including in this series.)
> > > > 
> > > > We really need a fix for this split out from this series, It's already
> > > > been shown[1] that this is trivially reachable.  Carlos proposed[2] a
> > > > similar solution to the one below.  I was concurrently working on the
> > > > issued and suggested an alternative[3].  Let's pick a solution for
> > > > 7.1-rc.  Thanks,
> > > 
> > > It looks like [3] is progressing, so I'll drop this one when I can rebase
> > > onto it.
> > > 
> > > I noticed [3] removes the dma_resv_lock(priv->dmabuf->resv) around the
> > > priv->vdev = NULL, and this series' vfio_pci_mmap_huge_fault() relies on
> > > vdev only changing whilst resv is held to resolve a race between a fault and
> > > cleanup (see patch 7 of this series).  The handler takes resv so that it can
> > > stably test vdev in order to take memory_lock.
> > 
> > I think that you should rely on priv->revoked and not on priv->vdev.
> 
> Needs both unfortunately, as the fault handler ultimately needs to take
> vdev->memory_lock.

One can argue that if priv->revoked == True, all accesses to device
should be denied and treated as priv->vdev == Null.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
