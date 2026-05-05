Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIMNNVjN+WlHEQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 12:58:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2634CBFF5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 12:58:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AAEB3F812
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2026 10:58:31 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 168113F72F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 10:58:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="Qtt+hV/g";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A411460125;
	Tue,  5 May 2026 10:58:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9478C2BCB4;
	Tue,  5 May 2026 10:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978707;
	bh=C//C/kRTDYtIooQZ8iVRSG+H2ywb+QDpKwyx95a6X7A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qtt+hV/gBvd6RAo4zac9DR6N0qf1KGowLxNIq6nNtUs/hSnHXg8GqUVr3EXyqasFQ
	 DzbhoMeYQi1Nhn1BWaSllZ/Mal8BIKmC0adWFFrIsRn2eWDJKZ4pOHvO7lj2MzYgek
	 2iHf/E7ASyj1JjZbj2/Tm2fpSZqfcjIHViRq+0QRspONXRUA5ptCaTf+idvGJ7zIlc
	 EJrpbRnlfoNy3MlqYN0jaPmFM6OC/ihewCUxhmK91sayPGMv6NkIjcFVAlcN0jRJcO
	 uXemNU8VbgL15nTdbWxb1NoH6APx330HP6b5VIbgajehi1y1tL1nbpGHu++ZnQ60sr
	 Lci7OYkR1Ng+Q==
Date: Tue, 5 May 2026 13:58:22 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20260505105822.GC11063@unreal>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-7-mattev@meta.com>
 <20260501171919.42659174@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260501171919.42659174@shazbot.org>
X-Spamd-Bar: ----
Message-ID-Hash: W5X2ZA3NDQMOS3HJMWELQMP7KGPV5JGP
X-Message-ID-Hash: W5X2ZA3NDQMOS3HJMWELQMP7KGPV5JGP
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Matt Evans <mattev@meta.com>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W5X2ZA3NDQMOS3HJMWELQMP7KGPV5JGP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 5F2634CBFF5
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
	URIBL_MULTI_FAIL(0.00)[meta.com:server fail,linaro.org:server fail,lists.linaro.org:server fail];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

On Fri, May 01, 2026 at 05:19:19PM -0600, Alex Williamson wrote:
> On Thu, 16 Apr 2026 06:17:49 -0700
> Matt Evans <mattev@meta.com> wrote:
> 
> > Previously, vfio_pci_zap_bars() (and the wrapper
> > vfio_pci_zap_and_down_write_memory_lock()) calls were paired with
> > calls of vfio_pci_dma_buf_move().
> > 
> > This commit replaces them a unified new function,
> > vfio_pci_zap_revoke_bars() containing both the vfio_pci_dma_buf_move()
> > and the unmap_mapping_range(), making it harder for callers to omit
> > one.  It adds a wrapper, vfio_pci_lock_zap_revoke_bars(), which takes
> > the write memory_lock before zapping, and adds a new
> > vfio_pci_unrevoke_bars() for the re-enable path.
> > 
> > However, as of "vfio/pci: Convert BAR mmap() to use a DMABUF" the
> > unmap_mapping_range() to zap is entirely redundant for plain vfio-pci,
> > since the DMABUFs used for BAR mappings already zap PTEs when the
> > vfio_pci_dma_buf_move() occurs.
> > 
> > One exception remains as a FIXME: in nvgrace-gpu, some BAR VMAs
> > conditionally use custom vm_ops, which have not moved to be backed by
> > DMABUFs.  If these BARs are mmap()ed, the vdev enables the existing
> > behaviour of unmap_mapping_range() for the device fd address space.
> 
> What's the plan here?  Is this a temporary FIXME or a place to prove
> that dmabuf for mmap works beyond the core use case?
> 
> > 
> > Signed-off-by: Matt Evans <mattev@meta.com>
> > ---
> >  drivers/vfio/pci/nvgrace-gpu/main.c |  5 +++
> >  drivers/vfio/pci/vfio_pci_config.c  | 30 ++++++--------
> >  drivers/vfio/pci/vfio_pci_core.c    | 62 +++++++++++++++++++----------
> >  drivers/vfio/pci/vfio_pci_priv.h    |  3 +-
> >  include/linux/vfio_pci_core.h       |  1 +
> >  5 files changed, 62 insertions(+), 39 deletions(-)
> > 
> ...  
> > @@ -1229,7 +1228,7 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
> >  	if (!vdev->reset_works)
> >  		return -EINVAL;
> >  
> > -	vfio_pci_zap_and_down_write_memory_lock(vdev);
> > +	vfio_pci_lock_zap_revoke_bars(vdev);
> >  
> >  	/*
> >  	 * This function can be invoked while the power state is non-D0. If
> > @@ -1242,10 +1241,9 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
> >  	 */
> >  	vfio_pci_set_power_state(vdev, PCI_D0);
> >  
> > -	vfio_pci_dma_buf_move(vdev, true);
> 
> This seems subtle enough to be troublesome.  I wonder if Leon didn't
> intentionally place the dmabuf revoke after the device is in D0 to
> allow the driver to interact with the device. 

My intention was to place vfio_pci_dma_buf_move() as close as possible to
pci_try_reset_function(), so the device is known to be fully operational
at that point. It looks like calling it after the transition to D0 is the
right ordering.

Thanks

> I think the lock needs to come before the power state change to avoid racing a user induced
> state change.  Thanks,
> 
> Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
