Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XxYUOCdfPWpT2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EECB6C7A98
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=THUOroZs;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84A5F4413E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:02:30 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id F0147401CE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781624757;
	bh=j3l8PvO0raZl8FCiGfg/zxw+3QiENISLFXyCDIfAXL8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=THUOroZs0WczfHibO0A/qrPSHwa5YNdoYCeWJF2d/1CIECVXjkloXj7wLH3RAMrqd
	 5fczYcVAY5/pQy+4+jgY4kuVXiUvzSAMPKLcKb1C5w9H+cAzmY47/8bx3acg6k87j4
	 fWhZfAaafjgGWk3F2SAREOE3MsU3h3u2Wvysz2/iIQH1R8GKJhsXoFXbYm69HVXkRB
	 VhWj40L7/ojitg33igOa1igkbg9cSGVkGEkTixJmeB6SmBl5O2ZB/E1wXD9LyDkEa8
	 Kom/JzqnfzG5JdI7rGl9KPo/I/8vsIBaPI94iumvlLCPSeuLfYBHIH6aGkgJFoTfle
	 LbV6upvypwVdw==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gfrtN6g3Dz4w1b;
	Wed, 17 Jun 2026 01:45:48 +1000 (AEST)
Message-ID: <e94aa97f-1aba-408e-8d3a-19f60b057b34@ozlabs.org>
Date: Tue, 16 Jun 2026 16:45:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Pranjal Shrivastava <praan@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-8-matt@ozlabs.org> <aixtd_7gDhf2kisJ@google.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <aixtd_7gDhf2kisJ@google.com>
X-Spamd-Bar: ---
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FVETDRWUQV6VN63KMN5A4XW63TFSMHUX
X-Message-ID-Hash: FVETDRWUQV6VN63KMN5A4XW63TFSMHUX
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:01:20 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 7/9] vfio/pci: Support mmap() of a VFIO DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FVETDRWUQV6VN63KMN5A4XW63TFSMHUX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[217];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:praan@google.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:mid,ozlabs.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EECB6C7A98

Hi Praan,

On 12/06/2026 21:35, Pranjal Shrivastava wrote:
> On Wed, Jun 10, 2026 at 04:43:21PM +0100, Matt Evans wrote:
> 
> Hi Matt,
> 
> [...]
> 
>> +	 *
>> +	 * With the goal of taking vdev->memory_lock in a world where
>> +	 * vdev might not still exist:
>> +	 *
>> +	 * 1. Take the resv lock on the DMABUF:
>> +	 *  - If racing cleanup got in first, the buffer is revoked;
>> +	 *    stop/exit if so.
>> +	 *  - If we got in first, the buffer is not revoked so vdev is
>> +	 *    non-NULL, accessible, and cleanup _has not yet put the
>> +	 *    VFIO device registration_.  So, the device refcount must
>> +	 *    be >0.
>> +	 *
>> +	 * 2. Take vfio_device registration (refcount guaranteed >0
>> +	 *    hereafter).
>> +	 *
>> +	 * 3. Unlock the DMABUF's resv lock:
>> +	 *  - A racing cleanup can now complete.
>> +	 *  - But, the device refcount >0, meaning the vfio_device
>> +	 *    (and vfio_pcie_core device vdev) have not yet been
>> +	 *    freed.  vdev is accessible, even if the DMABUF has been
>> +	 *    revoked or cleanup has happened, because
>> +	 *    vfio_unregister_group_dev() can't complete.
>> +	 *
>> +	 * 4. Take the vdev->memory_lock
>> +	 *  - Either the DMABUF is usable, or has been cleaned up.
>> +	 *    Whichever, it can no longer change under us.
>> +	 *  - Test the DMABUF revocation status again: if it was
>> +	 *    revoked between 1 and 4 return a SIGBUS. Otherwise,
>> +	 *    return a PFN.
>> +	 *  - It's not necessary to also take the resv lock, because
>> +	 *    the status/vdev can't change while memory_lock is held.
>> +	 *
>> +	 * 5. Unlock, done.
>>  	 */
>> +
>> +	dma_resv_lock(priv->dmabuf->resv, NULL);
>> +
>> +	if (priv->revoked) {
>> +		pr_debug_ratelimited("%s VA 0x%lx, pgoff 0x%lx: DMABUF revoked/cleaned up\n",
>> +				     __func__, vmf->address, vma->vm_pgoff);
>> +		dma_resv_unlock(priv->dmabuf->resv);
>> +		return VM_FAULT_SIGBUS;
>> +	}
>> +
>> +	/* If the buffer isn't revoked, vdev is valid */
>>  	vdev = priv->vdev;
>>  
>> +	if (!vfio_device_try_get_registration(&vdev->vdev)) {
>> +		/*
>> +		 * If vdev != NULL (above), the registration should
>> +		 * already be >0 and so this try_get should never
>> +		 * fail.
>> +		 */
>> +		dev_warn(&vdev->pdev->dev, "%s: Unexpected registration failure\n",
>> +			 __func__);
>> +		dma_resv_unlock(priv->dmabuf->resv);
>> +		return VM_FAULT_SIGBUS;
>> +	}
>> +	dma_resv_unlock(priv->dmabuf->resv);
>> +
> 
> 
>>  	scoped_guard(rwsem_read, &vdev->memory_lock) {
>> +		/* Revocation status must be re-read, under memory_lock */
>>  		if (!priv->revoked) {
>>  			int pres = vfio_pci_dma_buf_find_pfn(priv, vma,
>>  							     vmf->address,
> 
> Wait, I noticed that the is_aligned_for_order() check from mainline was 
> removed here. Was that intentional? 
> 
> For hugepage faults (order > 0), we must ensure the PFN and address are
> properly aligned before calling vfio_pci_vmf_insert_pfn().
> 
> In the current upstream code, we have:
>   if (is_aligned_for_order(vma, addr, pfn, order))
> 
> Should we restore that check here?

The alignment check is done within the helper
vfio_pci_dma_buf_find_pfn(), which returns -EAGAIN if order > 0 and a
search result isn't usable due to alignment.  That leads to
VM_FAULT_FALLBACK here, ensuring vfio_pci_vmf_insert_pfn() isn't called
with anything weird.

>> @@ -1766,6 +1827,7 @@ static vm_fault_t vfio_pci_mmap_huge_fault(struct vm_fault *vmf,
>>  			    __func__, order, pfn, vmf->address,
>>  			    vma->vm_pgoff, (unsigned int)ret);
>>  
>> +	vfio_device_put_registration(&vdev->vdev);
>>  	return ret;
>>  }
>>  
>> @@ -1774,7 +1836,7 @@ static vm_fault_t vfio_pci_mmap_page_fault(struct vm_fault *vmf)
>>  	return vfio_pci_mmap_huge_fault(vmf, 0);
>>  }
>>  
>> -static const struct vm_operations_struct vfio_pci_mmap_ops = {
>> +const struct vm_operations_struct vfio_pci_mmap_ops = {
>>  	.fault = vfio_pci_mmap_page_fault,
> 
> Nit: Instead of making this global, should we add a helper? E.g.:
> 
> void vfio_pci_set_vma_ops(struct vm_area_struct *vma)
> {
>      vma->vm_ops = &vfio_pci_mmap_ops;
> }

I'll give it a go, it would be nice to keep that encapsulated.

Thanks,


Matt


> [...]
> 
>> +
>> +static int vfio_pci_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
>> +{
>> +	struct vfio_pci_dma_buf *priv = dmabuf->priv;
>> +
>> +	/*
>> +	 * If we observe that the buffer is revoked now then refuse
>> +	 * the mmap().  This is a belt-and-braces early failure to
>> +	 * ease debugging a revoked buffer being used.  Userspace
>> +	 * might also race an mmap() against an explicit revocation,
>> +	 * or an action doing a temporary revoke; race scenarios are
>> +	 * still safe because the fault handler ultimately prevents
>> +	 * access to a revoked buffer if it isn't caught here.
>> +	 */
>> +	if (READ_ONCE(priv->revoked))
>> +		return -ENODEV;
>> +	if ((vma->vm_flags & VM_SHARED) == 0)
>> +		return -EINVAL;
>> +
>> +	/*
>> +	 * dma_buf_mmap_internal() has asserted that the VMA is
>> +	 * contained within the DMABUF size before calling this.
>> +	 */
>> +
>> +	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
>> +	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
>> +
>> +	/* See comments in vfio_pci_core_mmap() re VM_ALLOW_ANY_UNCACHED. */
>> +	vm_flags_set(vma, VM_ALLOW_ANY_UNCACHED | VM_IO | VM_PFNMAP |
>> +		     VM_DONTEXPAND | VM_DONTDUMP);
>> +	vma->vm_private_data = priv;
>> +	vma->vm_ops = &vfio_pci_mmap_ops;
>> +
>> +	return 0;
>> +}
>>  #endif /* CONFIG_VFIO_PCI_DMABUF */
>>  
> 
> Thanks,
> Praan
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
