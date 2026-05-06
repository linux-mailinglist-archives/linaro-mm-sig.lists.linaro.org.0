Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAOKOGxe+2kuaQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:29:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8077C4DD3B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:29:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D9253F95A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 15:29:47 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 18F8F3F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 15:29:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=STDn1RSW;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8409143DBC;
	Wed,  6 May 2026 15:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97DBCC2BCC7;
	Wed,  6 May 2026 15:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778081383;
	bh=UzMH2u1MU8F8phCcA9cvtgS+wSBo2orCoIMTn8w+YRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=STDn1RSWQtQf5vQAmkckEpHw+vLcrntjTrcGNB2Vatv/Z6fCUX2vp9pfzwOUSuFu7
	 +mdGkigx/ldWmmEm+YSTEzOjCANn8lR6dtfuu1cBebE1lJDWyqzF32ynbLILRxumZ/
	 115NwbwoMhlAIz1AIAjb2v8dc+P+ohamlniLb15kqZEMaZgzCa4P+42sgnNmy4coZz
	 VQRB7/nPKpidYRftVvm9evvu37ksRbGq7zqZZMNxL+bHFMKD7k60VO8NLebkXOMw2L
	 o7CQ0+rY8nrjlfXaFym19/+wafjPVLYQFcUjcFzaPq326lovpu5sJuS9aLX8TgrTqd
	 eEnWjzOAqtXBw==
Date: Wed, 6 May 2026 18:29:37 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260506152937.GJ11063@unreal>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-2-mattev@meta.com>
 <20260501131236.278ac431@shazbot.org>
 <9304aada-ee84-4cf2-a1d7-82313eda07aa@meta.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9304aada-ee84-4cf2-a1d7-82313eda07aa@meta.com>
X-Spamd-Bar: ---
Message-ID-Hash: P6JKA4YVGN36Y7KAEVUS4XWTEROZJ5OO
X-Message-ID-Hash: P6JKA4YVGN36Y7KAEVUS4XWTEROZJ5OO
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, Carlos =?iso-8859-1?Q?L=F3pez?= <clopez@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] vfio/pci: Fix vfio_pci_dma_buf_cleanup() double-put
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P6JKA4YVGN36Y7KAEVUS4XWTEROZJ5OO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8077C4DD3B4
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]

On Wed, May 06, 2026 at 02:53:31PM +0100, Matt Evans wrote:
> Hi Alex,
> 
> On 01/05/2026 20:12, Alex Williamson wrote:
> > 
> > On Thu, 16 Apr 2026 06:17:44 -0700
> > Matt Evans <mattev@meta.com> wrote:
> > 
> > > vfio_pci_dma_buf_cleanup() assumed all VFIO device DMABUFs need to be
> > > revoked.  However, if vfio_pci_dma_buf_move() revokes DMABUFs before
> > > the fd/device closes, then vfio_pci_dma_buf_cleanup() would do a
> > > second/underflowing kref_put() then wait_for_completion() on a
> > > completion that never fires.  Fixed by predicating on revocation
> > > status.
> > > 
> > > This could happen if PCI_COMMAND_MEMORY is cleared before closing the
> > > device fd (but the scenario is more likely to hit when future commits
> > > add more methods to revoke DMABUFs).
> > > 
> > > Fixes: 1a8a5227f2299 ("vfio: Wait for dma-buf invalidation to complete")
> > > Signed-off-by: Matt Evans <mattev@meta.com>
> > > ---
> > > 
> > > (Just a fix, but later "vfio/pci: Convert BAR mmap() to use a DMABUF"
> > > and "vfio/pci: Permanently revoke a DMABUF on request" depend on this
> > > context, so including in this series.)
> > 
> > We really need a fix for this split out from this series, It's already
> > been shown[1] that this is trivially reachable.  Carlos proposed[2] a
> > similar solution to the one below.  I was concurrently working on the
> > issued and suggested an alternative[3].  Let's pick a solution for
> > 7.1-rc.  Thanks,
> 
> It looks like [3] is progressing, so I'll drop this one when I can rebase
> onto it.
> 
> I noticed [3] removes the dma_resv_lock(priv->dmabuf->resv) around the
> priv->vdev = NULL, and this series' vfio_pci_mmap_huge_fault() relies on
> vdev only changing whilst resv is held to resolve a race between a fault and
> cleanup (see patch 7 of this series).  The handler takes resv so that it can
> stably test vdev in order to take memory_lock.

I think that you should rely on priv->revoked and not on priv->vdev.

Thanks

> 
> Must your fix change vdev outside of holding resv?  I'm still sketching
> alternatives; at first glance perhaps the fault handler could rely on vdev
> being valid if !revoked, which can be tested holding [only] resv.
> 
> 
> Thanks,
> 
> Matt
> 
> > 
> > Alex
> > 
> > [1]https://lore.kernel.org/all/GVXPR02MB12019AA6014F27EF5D773E89BFB372@GVXPR02MB12019.eurprd02.prod.outlook.com/
> > [2]https://lore.kernel.org/all/20260429182736.409323-2-clopez@suse.de/
> > [3]https://lore.kernel.org/all/20260429142242.70f746b4@nvidia.com/
> > 
> > > drivers/vfio/pci/vfio_pci_dmabuf.c | 9 +++++++--
> > >   1 file changed, 7 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > > index 281ba7d69567..04478b7415a0 100644
> > > --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> > > +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> > > @@ -395,20 +395,25 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
> > >   	down_write(&vdev->memory_lock);
> > >   	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> > > +		bool was_revoked;
> > > +
> > >   		if (!get_file_active(&priv->dmabuf->file))
> > >   			continue;
> > >   		dma_resv_lock(priv->dmabuf->resv, NULL);
> > >   		list_del_init(&priv->dmabufs_elm);
> > >   		priv->vdev = NULL;
> > > +		was_revoked = priv->revoked;
> > >   		priv->revoked = true;
> > >   		dma_buf_invalidate_mappings(priv->dmabuf);
> > >   		dma_resv_wait_timeout(priv->dmabuf->resv,
> > >   				      DMA_RESV_USAGE_BOOKKEEP, false,
> > >   				      MAX_SCHEDULE_TIMEOUT);
> > >   		dma_resv_unlock(priv->dmabuf->resv);
> > > -		kref_put(&priv->kref, vfio_pci_dma_buf_done);
> > > -		wait_for_completion(&priv->comp);
> > > +		if (!was_revoked) {
> > > +			kref_put(&priv->kref, vfio_pci_dma_buf_done);
> > > +			wait_for_completion(&priv->comp);
> > > +		}
> > >   		vfio_device_put_registration(&vdev->vdev);
> > >   		fput(priv->dmabuf->file);
> > >   	}
> > 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
