Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RUfcMv8aK2oQ2wMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 22:30:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFD56752B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 22:30:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=vhQRpzxR;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B36A40A06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 20:30:54 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 116F43F6B6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 20:30:42 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2bf22c18ad3so29905ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 13:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781209841; x=1781814641; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O89fLhwmUexwr334yt/hIAtfe9wNMTELN1E0wgrm87U=;
        b=vhQRpzxRzqW+nl4sNrNHVfBnQWj4jsgDw6OR3ZsZsDxD4ukit2MGRNdt9REn2BFa9/
         jF+pYWUgqoNGiQP9lOa5xFUtOhsBNVc/y8StVFmpriAI5gl35hQWSuEOeudL+1WHtJ5f
         YbwJe8Jwi6pbf24k04B7CeSJtZInOKOMWuQ/G9ALakZliCaJNmOLG5ipVvS8a9qan5qj
         Iqw6cZxRCvEM0SSIaXu0K0J4Gn2oVP5UvCgnWqNP5DTnWtxX8IaiJrAKDYXq0ZueESth
         DfIntp8PqBNZoApAEurCOReflZ1N6lljgqvWyPQSWzKkIQaddNk3xPPT0XX2jFNbXUmZ
         t7HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209841; x=1781814641;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O89fLhwmUexwr334yt/hIAtfe9wNMTELN1E0wgrm87U=;
        b=YWJ4zxmnCKM14OjaUy8r8PoJJXAJbiFfkFXNxSRrH0R2SszMlTqNcmkh1Qa81imYVD
         oRL4xtiSgrJ84ucr07n/FELc12Lq5nmVswNps9dKK4BicrKrlnbonXsqne0VDlz1dI56
         ZlQWuV9B4hohI1e4aD5n3x1Z/B7q0nwjR0IHjnvvfjRp9YEajBBXxsMetVb6EEiiFjM5
         RglmVj318NhmPSsK3DhSud8pkA3oS0Yzt+SY6jno6h1WRwMLuvLc/z3s/7tt38gJ/PK/
         cGU/Oho2xtZ8gX/sSRq+8Tj2i9zWfDXaR95+pfclExwalvpuigx2Qm7eT5BYPMU2jGrV
         fDOg==
X-Forwarded-Encrypted: i=1; AFNElJ+5VYSJwBo2O9LffHx8iYSg7Dt9V4rV7pcIY1eBPSY9V5RtQhzquWbF4h4iFZG7EH5WWFsOcF8dDEEp2v3M@lists.linaro.org
X-Gm-Message-State: AOJu0Yyy1dhlnJM2vPZKwgc7mS8ZcGf206P36siOgngUmo9jJc8O0jYq
	SQpSkhgrX0sw94VylRPNvXXFRLDAvkZ8Kds1B5JGqZPaM7YfpFLoRcCWg/Ul6Ekv1w==
X-Gm-Gg: Acq92OFoxBwpIFdoSMugO0Ue43F9TyY42J8GrMGOMji+fymen7xmV2So82UifLxIukk
	1drIseWFX01cAXlDmi0FpnI2Qw7sD0H20kVIxhyoSxZOuxI9ECImzWUaBk4NQb1vxTJQmSTPkxy
	wtNxw3vlbBuTGHYAG/+uL6tnxi64S6Eqt93PORN8LJP/lp3ESrbsv2aaYIjj2Qd/bl8Wza5ASDB
	UbLVJ6xSANPZ2KGu0OUAYwFSNpkS/x3GWxKvm0j89/Jn03hCu2D9ky73xoc4THEp4ILKIAMnSK3
	h58BUL+TRfcd1wjtBwzHx1VAhwsXfJ1UBx1ETN5ngGN9R4RHkK54dr7atyYC+c49FjYPCkW8Ian
	ETmarzogzlYVWjf4NPf7802iYcWSxlRKqeVmqOxjjb6BE0dV56mMnyaZIJRCupla9HcpECQA46q
	U5wwmUSImk8sw8CBkVhLbjjN9r6LQozWfAzrTaqrygL5wTzIkdqKpf3y6hY34p
X-Received: by 2002:a17:902:ef47:b0:2b4:641a:6b7c with SMTP id d9443c01a7336-2c405c8b1bcmr130535ad.13.1781209840425;
        Thu, 11 Jun 2026 13:30:40 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16609df6esm311256825ad.48.2026.06.11.13.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:30:39 -0700 (PDT)
Date: Thu, 11 Jun 2026 20:30:32 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aisa6H-a-176MXhC@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-3-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-3-matt@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: U5QERKEIZAZ4EW46JPOU5NHMFAGHTAMI
X-Message-ID-Hash: U5QERKEIZAZ4EW46JPOU5NHMFAGHTAMI
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U5QERKEIZAZ4EW46JPOU5NHMFAGHTAMI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ozlabs.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AFD56752B7

On Wed, Jun 10, 2026 at 04:43:16PM +0100, Matt Evans wrote:
> Add vfio_pci_dma_buf_find_pfn(), which a VMA fault handler can use to
> find a PFN.
> 
> This supports multi-range DMABUFs, which typically would be used to
> represent scattered spans but might even represent overlapping or
> aliasing spans of PFNs.
> 
> Because this is intended to be used in vfio_pci_core.c, we also need
> to expose the struct vfio_pci_dma_buf in the vfio_pci_priv.h header.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 137 ++++++++++++++++++++++++++---
>  drivers/vfio/pci/vfio_pci_priv.h   |  20 +++++
>  2 files changed, 144 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index c16f460c01d6..9e5e865f6fb6 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -9,19 +9,6 @@
>  
>  MODULE_IMPORT_NS("DMA_BUF");
>  
> -struct vfio_pci_dma_buf {
> -	struct dma_buf *dmabuf;
> -	struct vfio_pci_core_device *vdev;
> -	struct list_head dmabufs_elm;
> -	size_t size;
> -	struct phys_vec *phys_vec;
> -	struct p2pdma_provider *provider;
> -	u32 nr_ranges;
> -	struct kref kref;
> -	struct completion comp;
> -	u8 revoked : 1;
> -};
> -
>  static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
>  				   struct dma_buf_attachment *attachment)
>  {
> @@ -106,6 +93,130 @@ static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
>  	.release = vfio_pci_dma_buf_release,
>  };
>  
> +int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *priv,
> +			      struct vm_area_struct *vma,
> +			      unsigned long address,

Nit: s/address/fault_addr ?

> +			      unsigned int order,
> +			      unsigned long *out_pfn)
> +{
> +	/*
> +	 * Given a VMA (start, end, pgoffs) and a fault address,
> +	 * search the corresponding DMABUF's phys_vec[] to find the
> +	 * range representing the address's offset into the VMA, and
> +	 * its PFN.
> +	 *
> +	 * The phys_vec[] ranges represent contiguous spans of VAs
> +	 * upwards from the buffer offset 0; the actual PFNs might be
> +	 * in any order, overlap/alias, etc.  Calculate an offset of
> +	 * the desired page given VMA start/pgoff and address, then
> +	 * search upwards from 0 to find which span contains it.
> +	 *
> +	 * On success, a valid PFN for a page sized by 'order' is
> +	 * returned into out_pfn.
> +	 *
> +	 * Failure occurs if:
> +	 * - The page would cross the edge of the VMA
> +	 * - The page isn't entirely contained within a range
> +	 * - We find a range, but the final PFN isn't aligned to the
> +	 *   requested order.
> +	 *
> +	 * (Upon failure, the caller is expected to try again with a
> +	 * smaller order; the tests above will always succeed for
> +	 * order=0 as the limit case.)
> +	 *
> +	 * It's suboptimal if DMABUFs are created with neigbouring
> +	 * ranges that are physically contiguous, since hugepages
> +	 * can't straddle range boundaries.  (The construction of the
> +	 * ranges vector should merge such ranges.)
> +	 *
> +	 * Finally, vma_pgoff_adjust is used for a DMABUF representing
> +	 * a VFIO BAR mmap, which is created from the start of the
> +	 * offset region.
> +	 */
> +
> +	const unsigned long pagesize = PAGE_SIZE << order;
> +	unsigned long vma_off = ((vma->vm_pgoff - priv->vma_pgoff_adjust) <<
> +				 PAGE_SHIFT) & VFIO_PCI_OFFSET_MASK;
> +	unsigned long rounded_page_addr = ALIGN_DOWN(address, pagesize);
> +	unsigned long rounded_page_end = rounded_page_addr + pagesize;
> +	unsigned long page_buf_offset;
> +	unsigned long page_buf_offset_end;
> +	unsigned long range_buf_offset = 0;
> +	unsigned int i;
> +
> +	if (rounded_page_addr < vma->vm_start || rounded_page_end > vma->vm_end) {
> +		if (order > 0)
> +			return -EAGAIN;
> +
> +		/* A fault address outside of the VMA is absurd. */
> +		WARN(1, "Fault addr 0x%lx outside VMA 0x%lx-0x%lx\n",
> +		     address, vma->vm_start, vma->vm_end);

This could flood dmesg if triggered repeatedly by userspace :( 
Since a fault outside the VMA is an invalid access that already results
in a SIGBUS, we could probably avoid the WARN here?
Perhaps pr_warn_ratelimited() should suffice?

> +		return -EFAULT;
> +	}
> +
> +	/*
> +	 * page_buff_offset[_end] is the span of DMABUF offsets
> +	 * corresponding to the faulting page:
> +	 */
> +	if (unlikely(check_add_overflow(rounded_page_addr - vma->vm_start,
> +					vma_off, &page_buf_offset) ||
> +		     check_add_overflow(page_buf_offset, pagesize,
> +					&page_buf_offset_end)))
> +		return -EFAULT;
> +
> +	for (i = 0; i < priv->nr_ranges; i++) {
> +		size_t range_len = priv->phys_vec[i].len;
> +		phys_addr_t range_start = priv->phys_vec[i].paddr;
> +
> +		/*
> +		 * If the current range starts after the page's span,
> +		 * this and any future range won't match.  Bail early.
> +		 */
> +		if (page_buf_offset_end <= range_buf_offset)
> +			break;
> +
> +		if (page_buf_offset >= range_buf_offset &&
> +		    page_buf_offset_end <= range_buf_offset + range_len) {
> +			/*
> +			 * The faulting page is wholly contained
> +			 * within the span represented by the range.
> +			 * Validate PFN alignment for the order:
> +			 */
> +			unsigned long pfn = (range_start + page_buf_offset -
> +					     range_buf_offset) / PAGE_SIZE;

Minor nit: I'm aware that decent compilers convert pow(2) divides to >> 
However, we seem to be using `>> PAGE_SHIFT` across vfio-pci. E.g.:

return (pci_resource_start(vdev->pdev, index) >> PAGE_SHIFT) + pgoff;
unsigned long pgoff = (addr - vma->vm_start) >> PAGE_SHIFT;

Let's consider using the same pattern?

> +
> +			if (IS_ALIGNED(pfn, 1 << order)) {
> +				*out_pfn = pfn;
> +				return 0;
> +			}
> +			/* Retry with smaller order */
> +			return -EAGAIN;
> +		}
> +		range_buf_offset += range_len;
> +	}
> +
> +	/*
> +	 * A hugepage straddling a range boundary will fail to match a
> +	 * range, but the address will (eventually) match when retried
> +	 * with a smaller page.
> +	 */
> +	if (order > 0)
> +		return -EAGAIN;
> +
> +	/*
> +	 * If we get here, the address fell outside of the span
> +	 * represented by the (concatenated) ranges.  Setup of a

Nit: double space before "Setup" and "But" below.

> +	 * mapping must ensure that the VMA is <= the total size of
> +	 * the ranges, so this should never happen.  But, if it does,
> +	 * force SIGBUS for the access and warn.
> +	 */
> +	WARN_ONCE(1, "No range for addr 0x%lx, order %d: VMA 0x%lx-0x%lx pgoff 0x%lx, %u ranges, size 0x%zx\n",
> +		  address, order, vma->vm_start, vma->vm_end, vma->vm_pgoff,
> +		  priv->nr_ranges, priv->size);
> +
> +	return -EFAULT;

The fall-through logic at the end feels a bit redundant.

If we've exhausted the phys_vec list without finding a match, returning
-EAGAIN for order > 0 seems like the correct fallback behavior.

However, the subsequent WARN_ONCE for the order == 0 seems unnecessary?
An out-of-bounds access is an error that should simply return -EFAULT 
(converting to SIGBUS) without polluting the kernel log with stackdumps?
Can we instead convert this to a pr_warn or something? Something like:

	ret = order ? -EAGAIN : -EFAULT;

	if (ret == -EFAULT)
		pr_warn_ratelimited("No range for addr 0x%lx...\n", address);

	return ret;

(with appropriate comments)

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
