Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +t3AFo5tLGoeQwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 22:35:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C6067C596
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 22:35:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=TSSWYeyT;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA75240A51
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 20:35:24 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7DFDE3F97D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 20:35:13 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2bf22c18ad3so25335ad.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 13:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781296512; x=1781901312; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ddJRP/HCOdDtAL2h34nFkdEDW/TddVVb74Su299sjvc=;
        b=TSSWYeyTVF9J7sd7q9mqwKpDy1e+x59CAepiSDxmTNphGEbKR4tKWxm/MAEPYvuoSY
         e+QfWMxyovyHjUkT22uH8xRgrhq6R9q4rQ8rZ6ug47UdrT7Zs/qs+0EnVoFoSwgxatan
         0ckNzlkQP050cK0naVCV+Fl4ZOW/dFUWxiJpezimTlEEzxv30ET+dHRqa6ek+nNSXUma
         M5pc9MpRuaJYD2Hm/XUUzl23vGSs2cTUNUHO2fvonWZTmlHc3lkrz9leU7ptMuXJyMWR
         ESaLoq80okIz4jM8rSLLUjJ1RnDKcTILJK7AlBpMTVN3WMlhvZaSASzdJFZKkJTixrXg
         JEIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781296512; x=1781901312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ddJRP/HCOdDtAL2h34nFkdEDW/TddVVb74Su299sjvc=;
        b=hzFs8QlsaaqtWFdn/fnGxXj0Y7VbdaYjvZn8mpHrVqYK+J2YoNRKMoqVp5Il6TXrsU
         2dIUjIRyh9hZe9ydpc+x2d59QVAxakY9EyHLHsdXspQsXgPqvOqX7SzLYFjeInwdslet
         0jhf1dmk7t2p4Q6ARNxykyJCn7mYxaIJyDZbLEK6w9smncv50UKtDpx1URqKX3ytHIQZ
         SPh7WwAUfRxCwzmmZFAKKWaEvyS613aEiK3LIB0MG6sdpBQ84zCWymwVCIqN53C38M4D
         37uYTgrCEW9P6tlxRihexDcnBBZiw2AEEx0dj/ug0iPrcrez1V4kL758EKwANSvmQwcM
         LDAg==
X-Forwarded-Encrypted: i=1; AFNElJ9H5QaUCg/8zf6I0BCYYgdQoDZn0P3cBhKqJOhrqcKLxOWzuo5v8NiymfvF1bLHULFPzWRaDaNtH5HRJc27@lists.linaro.org
X-Gm-Message-State: AOJu0YxAmKQMa6khAXHnP2qPCde+QFoNUbopP4fc+MAnF9Jyc/W+8Tac
	ee158gqil8LcBveIl87EoRQAm8kZ6UhcqDiI12wezM+ofjPu4QSv/CsLPyDz704iDQ==
X-Gm-Gg: Acq92OEfAnOWe76wpuKQBVI8+cowaTrRim772OcAYelQ7n0oCUq1PVJGxFLCkvjeVJe
	OzKGwK+eCai3fjVLwec0qwtgKtzGLknvgl49JcrUuNzGUGKGiTVkmPg0EVIWC/JYWcN3MpH8dvq
	21hoY01s4V6u8MRCAobo0EtrmRPhgLkez5Fw3YJ7lRfEl9VX2TODmSa2YTHeZIP1txKkn+mSxXE
	oD83eHrlvkpwqjfIGuJAsAm5mWSbA3ZeGV8OTF1jMhoGQlWbLPgxsar9s9bSDdlAMZdCzdxPgnm
	9Z/PFU+sgW1HglDvvlL9B1Ec9mQ+x3Zm7L/0jY+wUwCjQ2HzqG6w0fQtMPW89Oj2Csf0FGCT5Yf
	oEdXHN9Ee0gEtwQ/UNP99za41PWKCwZDqB5pnkw/QkqkSKQzRCWN7ZgNTqc8DmnpXp96TsAMKrx
	korJ1FRrU9V4DB1dimFOZauD/cVaFEdfIK5gTHVMSTXKw7u84B8+DkmPfLBv9W
X-Received: by 2002:a17:902:e743:b0:2c1:ee6e:4e4d with SMTP id d9443c01a7336-2c665142269mr504685ad.30.1781296511981;
        Fri, 12 Jun 2026 13:35:11 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f1f0f19sm28160925ad.10.2026.06.12.13.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 13:35:11 -0700 (PDT)
Date: Fri, 12 Jun 2026 20:35:03 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aixtd_7gDhf2kisJ@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-8-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-8-matt@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: EB24DKIYO3733AT347FRNIHHLSSKON7Z
X-Message-ID-Hash: EB24DKIYO3733AT347FRNIHHLSSKON7Z
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 7/9] vfio/pci: Support mmap() of a VFIO DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EB24DKIYO3733AT347FRNIHHLSSKON7Z/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D1C6067C596

On Wed, Jun 10, 2026 at 04:43:21PM +0100, Matt Evans wrote:

Hi Matt,

[...]

> +	 *
> +	 * With the goal of taking vdev->memory_lock in a world where
> +	 * vdev might not still exist:
> +	 *
> +	 * 1. Take the resv lock on the DMABUF:
> +	 *  - If racing cleanup got in first, the buffer is revoked;
> +	 *    stop/exit if so.
> +	 *  - If we got in first, the buffer is not revoked so vdev is
> +	 *    non-NULL, accessible, and cleanup _has not yet put the
> +	 *    VFIO device registration_.  So, the device refcount must
> +	 *    be >0.
> +	 *
> +	 * 2. Take vfio_device registration (refcount guaranteed >0
> +	 *    hereafter).
> +	 *
> +	 * 3. Unlock the DMABUF's resv lock:
> +	 *  - A racing cleanup can now complete.
> +	 *  - But, the device refcount >0, meaning the vfio_device
> +	 *    (and vfio_pcie_core device vdev) have not yet been
> +	 *    freed.  vdev is accessible, even if the DMABUF has been
> +	 *    revoked or cleanup has happened, because
> +	 *    vfio_unregister_group_dev() can't complete.
> +	 *
> +	 * 4. Take the vdev->memory_lock
> +	 *  - Either the DMABUF is usable, or has been cleaned up.
> +	 *    Whichever, it can no longer change under us.
> +	 *  - Test the DMABUF revocation status again: if it was
> +	 *    revoked between 1 and 4 return a SIGBUS. Otherwise,
> +	 *    return a PFN.
> +	 *  - It's not necessary to also take the resv lock, because
> +	 *    the status/vdev can't change while memory_lock is held.
> +	 *
> +	 * 5. Unlock, done.
>  	 */
> +
> +	dma_resv_lock(priv->dmabuf->resv, NULL);
> +
> +	if (priv->revoked) {
> +		pr_debug_ratelimited("%s VA 0x%lx, pgoff 0x%lx: DMABUF revoked/cleaned up\n",
> +				     __func__, vmf->address, vma->vm_pgoff);
> +		dma_resv_unlock(priv->dmabuf->resv);
> +		return VM_FAULT_SIGBUS;
> +	}
> +
> +	/* If the buffer isn't revoked, vdev is valid */
>  	vdev = priv->vdev;
>  
> +	if (!vfio_device_try_get_registration(&vdev->vdev)) {
> +		/*
> +		 * If vdev != NULL (above), the registration should
> +		 * already be >0 and so this try_get should never
> +		 * fail.
> +		 */
> +		dev_warn(&vdev->pdev->dev, "%s: Unexpected registration failure\n",
> +			 __func__);
> +		dma_resv_unlock(priv->dmabuf->resv);
> +		return VM_FAULT_SIGBUS;
> +	}
> +	dma_resv_unlock(priv->dmabuf->resv);
> +


>  	scoped_guard(rwsem_read, &vdev->memory_lock) {
> +		/* Revocation status must be re-read, under memory_lock */
>  		if (!priv->revoked) {
>  			int pres = vfio_pci_dma_buf_find_pfn(priv, vma,
>  							     vmf->address,

Wait, I noticed that the is_aligned_for_order() check from mainline was 
removed here. Was that intentional? 

For hugepage faults (order > 0), we must ensure the PFN and address are
properly aligned before calling vfio_pci_vmf_insert_pfn().

In the current upstream code, we have:
  if (is_aligned_for_order(vma, addr, pfn, order))

Should we restore that check here?

> @@ -1766,6 +1827,7 @@ static vm_fault_t vfio_pci_mmap_huge_fault(struct vm_fault *vmf,
>  			    __func__, order, pfn, vmf->address,
>  			    vma->vm_pgoff, (unsigned int)ret);
>  
> +	vfio_device_put_registration(&vdev->vdev);
>  	return ret;
>  }
>  
> @@ -1774,7 +1836,7 @@ static vm_fault_t vfio_pci_mmap_page_fault(struct vm_fault *vmf)
>  	return vfio_pci_mmap_huge_fault(vmf, 0);
>  }
>  
> -static const struct vm_operations_struct vfio_pci_mmap_ops = {
> +const struct vm_operations_struct vfio_pci_mmap_ops = {
>  	.fault = vfio_pci_mmap_page_fault,

Nit: Instead of making this global, should we add a helper? E.g.:

void vfio_pci_set_vma_ops(struct vm_area_struct *vma)
{
     vma->vm_ops = &vfio_pci_mmap_ops;
}

[...]

> +
> +static int vfio_pci_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
> +{
> +	struct vfio_pci_dma_buf *priv = dmabuf->priv;
> +
> +	/*
> +	 * If we observe that the buffer is revoked now then refuse
> +	 * the mmap().  This is a belt-and-braces early failure to
> +	 * ease debugging a revoked buffer being used.  Userspace
> +	 * might also race an mmap() against an explicit revocation,
> +	 * or an action doing a temporary revoke; race scenarios are
> +	 * still safe because the fault handler ultimately prevents
> +	 * access to a revoked buffer if it isn't caught here.
> +	 */
> +	if (READ_ONCE(priv->revoked))
> +		return -ENODEV;
> +	if ((vma->vm_flags & VM_SHARED) == 0)
> +		return -EINVAL;
> +
> +	/*
> +	 * dma_buf_mmap_internal() has asserted that the VMA is
> +	 * contained within the DMABUF size before calling this.
> +	 */
> +
> +	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
> +	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
> +
> +	/* See comments in vfio_pci_core_mmap() re VM_ALLOW_ANY_UNCACHED. */
> +	vm_flags_set(vma, VM_ALLOW_ANY_UNCACHED | VM_IO | VM_PFNMAP |
> +		     VM_DONTEXPAND | VM_DONTDUMP);
> +	vma->vm_private_data = priv;
> +	vma->vm_ops = &vfio_pci_mmap_ops;
> +
> +	return 0;
> +}
>  #endif /* CONFIG_VFIO_PCI_DMABUF */
>  

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
