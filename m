Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ao8AKGEVMGqrNAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jun 2026 17:08:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA426877BC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jun 2026 17:08:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=gdK9m3xU;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B59BE4015A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jun 2026 15:08:15 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by lists.linaro.org (Postfix) with ESMTPS id E58374015A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jun 2026 15:08:05 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2c0b1a48855so177625ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jun 2026 08:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781536085; x=1782140885; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EeLNOUGcyQ4NWkfW/DAB6S96aMOzAOJTH9w4j6T6BeY=;
        b=gdK9m3xUgzk3Ep+k8PB/2uh0TkbgiuGypo1B+Acs6j1lmzr0WO+gFXSZfnOPX1A72Y
         DqFDAGzi134Jw6Z8CZEP9Sbo3gQnpBL/1AfZDroXCiQNzit928WbPeaAIZjZul4NPdBz
         HrsroDQG8S7cDXltHCxMaASJ/ZYYOV6fiF7FW/BnUykZ8pblPf3ebMHNVvJtrHi31pSY
         hj7mlSW3KF9PMWxKRkbtkaQ6/hbcY9Ab/db38AQFfXLFtc9PxT2z7+rI36pVQttjplpw
         0oXaV6ZvB/eqDl2GuKVOMXd+38jhif2kME1US/tF1OoMyoIaf0We0w7dH4DOVGEpnY35
         Jo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781536085; x=1782140885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EeLNOUGcyQ4NWkfW/DAB6S96aMOzAOJTH9w4j6T6BeY=;
        b=R8v2twxcjlPltPTCZDIXInnmij7jOMpL04rNu+oVQiclj1hMW7C/wjyGZz9cb2XABC
         sWDA8uEPi4ZLTbJcXPfZQO26tt5L1QZE4gg6iqmxU6LTGS2jVWe3ZalgEuPfrj8VFz3Y
         ptRwktdZOdF43TIpFuymfLvLgJpLAysPRl50ZMKIyiG6nDOff0o3cMR5HrycEi7SEVjK
         HpWwfjGK7k1E50ejU9Ehl279bKbKICrBsQkRWOLgMPG6srxzsxDYZqxUxkEywHJL1kpw
         Ggh98b21SFgr9DRz2r1I2yI3LdNPVffMovyX4/RDRiz/U/hKGA46rAXssxFvlUsXxJq+
         Ac1g==
X-Forwarded-Encrypted: i=1; AFNElJ+bXmZ0+EB9QJItIOVHTONnajua3q4WhkV20nVFELOguPwdEysO8K20QhQ8p3VqI+/zBIuk39e1zbDqcGv9@lists.linaro.org
X-Gm-Message-State: AOJu0YwOAaDKv6vx9PnQXtW/Cd37xK6wBRJYg0cKXriWxBBd1E6pdaCH
	j3bYltqqmKEiWgcQLbUUhyWMajaTJDNir9iSDlCONOzTo/3YssOHP0HybyzXIn8NsQ==
X-Gm-Gg: Acq92OHNcza8/aS23dauLF4ah08t8cn9oopyzS0pCaNYbJ4R0SPkqKqLdeN7a5v6jZe
	Ckyd7xLYVbgSkG1W2+0VH/PKiE3w8WmKQalqEL56QOO8ZtHwl5+BzTzw7X5XuItRxUg5NJyZFl0
	hsYGXXitAZ4AY12sL5dRN0rNF+3zu5Ag7dDDsXKZRgqyRA+zWyziNrFMyyU4aXfK3H5mVbuK0nf
	fX0ZGWjRny6ARYmkm5pK1FSpxFcBq8AipJ0/NrhRs5vvsgZPDZzAaXCgZPfRXeXZV8Ay6ZTrAjs
	ibS+koVN3ijmNGYiRB4nH7yIaOL7p1MajyCjEsI2kvoM686hXyV5bVPkiBgVEccr/YypobX7tU5
	Jxe6gjOQI3byg2o9mTWgihnJeAXdyvYGwcTeccSF/k9GOUZJuzAh31Jah3M7L3imE94PhblJq/w
	OMr5Suqr8IMVRvZ+7JasY7D4m3CapBDHu7vP+6R3VQZgZzOm746RqhhVxHAAJ4
X-Received: by 2002:a17:903:320b:b0:2c0:c3ac:fdf9 with SMTP id d9443c01a7336-2c69689a4aamr525115ad.14.1781536084472;
        Mon, 15 Jun 2026 08:08:04 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f7c6c5dsm102831385ad.21.2026.06.15.08.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 08:08:03 -0700 (PDT)
Date: Mon, 15 Jun 2026 15:07:55 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <ajAVSx9gPz1KkIbF@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-3-matt@ozlabs.org>
 <aisa6H-a-176MXhC@google.com>
 <effb66ee-764b-4823-b6e4-c932a1f60f8d@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <effb66ee-764b-4823-b6e4-c932a1f60f8d@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: QTTDKSVYGOJTDITZIB3IX4B7UQFDYQVL
X-Message-ID-Hash: QTTDKSVYGOJTDITZIB3IX4B7UQFDYQVL
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTTDKSVYGOJTDITZIB3IX4B7UQFDYQVL/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DA426877BC

On Mon, Jun 15, 2026 at 03:27:01PM +0100, Matt Evans wrote:

Hi Matt,
> 
> On 11/06/2026 21:30, Pranjal Shrivastava wrote:
> > On Wed, Jun 10, 2026 at 04:43:16PM +0100, Matt Evans wrote:
> >> Add vfio_pci_dma_buf_find_pfn(), which a VMA fault handler can use to
> >> find a PFN.
> >>
> >> This supports multi-range DMABUFs, which typically would be used to
> >> represent scattered spans but might even represent overlapping or
> >> aliasing spans of PFNs.
> >>
> >> Because this is intended to be used in vfio_pci_core.c, we also need
> >> to expose the struct vfio_pci_dma_buf in the vfio_pci_priv.h header.
> >>
> >> Signed-off-by: Matt Evans <matt@ozlabs.org>

[...]

> >> +
> >> +	const unsigned long pagesize = PAGE_SIZE << order;
> >> +	unsigned long vma_off = ((vma->vm_pgoff - priv->vma_pgoff_adjust) <<
> >> +				 PAGE_SHIFT) & VFIO_PCI_OFFSET_MASK;
> >> +	unsigned long rounded_page_addr = ALIGN_DOWN(address, pagesize);
> >> +	unsigned long rounded_page_end = rounded_page_addr + pagesize;
> >> +	unsigned long page_buf_offset;
> >> +	unsigned long page_buf_offset_end;
> >> +	unsigned long range_buf_offset = 0;
> >> +	unsigned int i;
> >> +
> >> +	if (rounded_page_addr < vma->vm_start || rounded_page_end > vma->vm_end) {
> >> +		if (order > 0)
> >> +			return -EAGAIN;
> >> +
> >> +		/* A fault address outside of the VMA is absurd. */
> >> +		WARN(1, "Fault addr 0x%lx outside VMA 0x%lx-0x%lx\n",
> >> +		     address, vma->vm_start, vma->vm_end);
> > 
> > This could flood dmesg if triggered repeatedly by userspace :( 
> > Since a fault outside the VMA is an invalid access that already results
> > in a SIGBUS, we could probably avoid the WARN here?
> > Perhaps pr_warn_ratelimited() should suffice?
> 
> I'm OK moving to a pr_warn_ratelimited().  Note though that this case is
> "genuinely impossible" currently and the check exists in case something
> changes elsewhere.  (Re your flood comment, am I missing a way for
> userspace to trigger this?  The scenario is a faulthandler for a VMA
> getting a VA outside the bounds of that VMA; such a fault address
> wouldn't match that VMA.)

I should've been explicit, I guess I worded it wrong, my bad.
I didn't mean that a user-space could hit this on it's own. However,
I meant to say if there's a bug in core mm during some future work,
dmesg being flooded by stackdumps gets messy (especially during dev) as
the underlying reason might get missed in the flood. Hence, I prefer
moving to pr_warn_ratelimited.

> 
> >> +		return -EFAULT;
> >> +	}
> >> +
> >> +	/*
> >> +	 * page_buff_offset[_end] is the span of DMABUF offsets
> >> +	 * corresponding to the faulting page:
> >> +	 */
> >> +	if (unlikely(check_add_overflow(rounded_page_addr - vma->vm_start,
> >> +					vma_off, &page_buf_offset) ||
> >> +		     check_add_overflow(page_buf_offset, pagesize,
> >> +					&page_buf_offset_end)))
> >> +		return -EFAULT;
> >> +
> >> +	for (i = 0; i < priv->nr_ranges; i++) {
> >> +		size_t range_len = priv->phys_vec[i].len;
> >> +		phys_addr_t range_start = priv->phys_vec[i].paddr;
> >> +
> >> +		/*
> >> +		 * If the current range starts after the page's span,
> >> +		 * this and any future range won't match.  Bail early.
> >> +		 */
> >> +		if (page_buf_offset_end <= range_buf_offset)
> >> +			break;
> >> +
> >> +		if (page_buf_offset >= range_buf_offset &&
> >> +		    page_buf_offset_end <= range_buf_offset + range_len) {
> >> +			/*
> >> +			 * The faulting page is wholly contained
> >> +			 * within the span represented by the range.
> >> +			 * Validate PFN alignment for the order:
> >> +			 */
> >> +			unsigned long pfn = (range_start + page_buf_offset -
> >> +					     range_buf_offset) / PAGE_SIZE;
> > 
> > Minor nit: I'm aware that decent compilers convert pow(2) divides to >> 
> > However, we seem to be using `>> PAGE_SHIFT` across vfio-pci. E.g.:
> > 
> > return (pci_resource_start(vdev->pdev, index) >> PAGE_SHIFT) + pgoff;
> > unsigned long pgoff = (addr - vma->vm_start) >> PAGE_SHIFT;
> > 
> > Let's consider using the same pattern?
> 
> (Do you know of a compiler that both builds the kernel and does NOT
> perform this transformation?  I am confident that resulting object code
> will be OK here.)
> 

I guess most of the modern compiler do, I was just referring to the
style across the file. I don't have any strong opinion.

> In an earlier revision I was using shifts but they were fairly messy
> compared to this expression, which arises from a request by Jason.
> 

Yea, looking back at Jason's comment [1], I think he was mainly pointing out
that the common factor (PAGE_SIZE) could be grouped together. But again,
no strong feeling about this, just picked up a pattern across the file. 
If it breaks on some compiler we can fix it later..

> >> +
> >> +			if (IS_ALIGNED(pfn, 1 << order)) {
> >> +				*out_pfn = pfn;
> >> +				return 0;
> >> +			}
> >> +			/* Retry with smaller order */
> >> +			return -EAGAIN;
> >> +		}
> >> +		range_buf_offset += range_len;
> >> +	}
> >> +
> >> +	/*
> >> +	 * A hugepage straddling a range boundary will fail to match a
> >> +	 * range, but the address will (eventually) match when retried
> >> +	 * with a smaller page.
> >> +	 */
> >> +	if (order > 0)
> >> +		return -EAGAIN;
> >> +
> >> +	/*
> >> +	 * If we get here, the address fell outside of the span
> >> +	 * represented by the (concatenated) ranges.  Setup of a
> > 
> > Nit: double space before "Setup" and "But" below.
> 
> I liked Alex's response :-)  This is common practice for monospaced text
> since increasing inter-sentence spacing helps readability in paragraph
> blocks (see Documentation/ for many examples ...).
> 

Ack. :)

> >> +	 * mapping must ensure that the VMA is <= the total size of
> >> +	 * the ranges, so this should never happen.  But, if it does,
> >> +	 * force SIGBUS for the access and warn.
> >> +	 */
> >> +	WARN_ONCE(1, "No range for addr 0x%lx, order %d: VMA 0x%lx-0x%lx pgoff 0x%lx, %u ranges, size 0x%zx\n",
> >> +		  address, order, vma->vm_start, vma->vm_end, vma->vm_pgoff,
> >> +		  priv->nr_ranges, priv->size);
> >> +
> >> +	return -EFAULT;
> > 
> > The fall-through logic at the end feels a bit redundant.
> > 
> > If we've exhausted the phys_vec list without finding a match, returning
> > -EAGAIN for order > 0 seems like the correct fallback behavior.
> 
> This path can happen (for order > 0) e.g. mis-alignment of VA versus the
> PFN, i.e. is likely...
> 
> > However, the subsequent WARN_ONCE for the order == 0 seems unnecessary?
> > An out-of-bounds access is an error that should simply return -EFAULT 
> > (converting to SIGBUS) without polluting the kernel log with stackdumps?
> 
> ...but the only way this can happen, for order == 0, is if the VMA
> extends beyond the underlying resource.  For example, if the VMA is
> larger than the DMABUF size (the total length of phys ranges set up
> inside the DMABUF).  Both VFIO BAR mmap() and a DMABUF mmap() disallow
> mapping off the end of the underlying resource.  That is, this also
> "cannot happen" but if logic changes elsewhere then we will really want
> to know about hitting this case -- the check is not redundant.

I didn't mean to imply that the path itself is impossible or won't 
happen.. I just meant that the logic / structure felt a bit redundant at
the end of the function..

Instead of having the separate `if (order > 0)` block falling through to
the base case, I suggest it could be cleaner as:

	ret = order ? -EAGAIN : -EFAULT;

	if (ret == -EFAULT)
		pr_warn_ratelimited(...);

	return ret;

But again, that's a preference. I'd leave that to your judgement.

> 
> Still, it doesn't need a regdump/backtrace (at least while this is only
> called from one spot), so a pr_warn_* is better.
> 

Ack.

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
