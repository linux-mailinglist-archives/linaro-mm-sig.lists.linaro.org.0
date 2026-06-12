Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5Q5lAYpePWoY2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F6A6C7A29
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=S9vZR5sU;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E55B543C6D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:59:52 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 4C23E3FDAE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 15:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781277742;
	bh=Od++dpGQk45pUkopK+ZR30rQE6eOhAjb1TsY2NEMy5g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S9vZR5sUkuLB9FEC8KRRIoqeN59IfE/XLJ4wsiGT0ob84ltCuLVL/5VCR4GkxjsA9
	 AZ7Qm3ed8W07n6LTQnUawPb2WBDh9qruLj1R9yvNjUnyHicBso/Eg6sOgX8jLjcDoF
	 WaJ/2LSRwLtX9QEr7TCt/MWGNql4/2d9kzUZ4gjqxnN4SeV7O5sxCjYEXosWCSzM/J
	 YvAXTaQxZwv7nGq9F+aHO9KeJDtNG+jAGdVUpkSWkW0bZFa7REtQaWrKTUyOEukesu
	 UesARyHOzLEiT7mbIYtKp4Cga+XLMzOPNpBmprhVOqR4SPs/DGci1Qup6z3iA9i6Qs
	 Su+eg8UsvZAPA==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gcNY35cPWz4xGp;
	Sat, 13 Jun 2026 01:22:14 +1000 (AEST)
Message-ID: <42cf4ad9-f094-4f94-88e6-6d2cb6eb6437@ozlabs.org>
Date: Fri, 12 Jun 2026 16:22:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Pranjal Shrivastava <praan@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-5-matt@ozlabs.org> <aiviYEi17tewEQg0@google.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <aiviYEi17tewEQg0@google.com>
X-Spamd-Bar: ---
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6IGYXTIAGWGRD4YACD3H74IWPGOLGBCT
X-Message-ID-Hash: 6IGYXTIAGWGRD4YACD3H74IWPGOLGBCT
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:59:03 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6IGYXTIAGWGRD4YACD3H74IWPGOLGBCT/>
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
	DATE_IN_PAST(1.00)[313];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4F6A6C7A29

Hi Pranjal,

On 12/06/2026 11:41, Pranjal Shrivastava wrote:
> On Wed, Jun 10, 2026 at 04:43:18PM +0100, Matt Evans wrote:
>> Convert the VFIO device fd fops->mmap to create a DMABUF representing
>> the BAR mapping, and make the VMA fault handler look up PFNs from the
>> corresponding DMABUF.  This supports future code mmap()ing BAR
>> DMABUFs, and iommufd work to support Type1 P2P.
>>
>> First, vfio_pci_core_mmap() uses the new
>> vfio_pci_core_mmap_prep_dmabuf() helper to export a DMABUF
>> representing a single BAR range.  Then, the vfio_pci_mmap_huge_fault()
>> callback is updated to understand revoked buffers, and uses the new
>> vfio_pci_dma_buf_find_pfn() helper to determine the PFN for a given
>> fault address.
>>
>> Now that the VFIO DMABUFs can be mmap()ed, vfio_pci_dma_buf_move()
>> zaps PTEs (used on the revocation and cleanup paths).
>>
>> CONFIG_VFIO_PCI_CORE now unconditionally depends on
>> CONFIG_DMA_SHARED_BUFFER and CONFIG_PCI_P2PDMA_CORE.  The
>> CONFIG_VFIO_PCI_DMABUF feature conditionally includes support for
>> VFIO_DEVICE_FEATURE_DMA_BUF, depending on the availability of
>> CONFIG_PCI_P2PDMA.
>>
>> Signed-off-by: Matt Evans <matt@ozlabs.org>
>> ---
>>  drivers/vfio/pci/Kconfig           |  5 +-
>>  drivers/vfio/pci/Makefile          |  3 +-
>>  drivers/vfio/pci/vfio_pci_core.c   | 75 +++++++++++++++++++-----------
>>  drivers/vfio/pci/vfio_pci_dmabuf.c | 12 +++++
>>  drivers/vfio/pci/vfio_pci_priv.h   | 11 +----
>>  5 files changed, 67 insertions(+), 39 deletions(-)
>>
>> diff --git a/drivers/vfio/pci/Kconfig b/drivers/vfio/pci/Kconfig
>> index 296bf01e185e..67a2ae1fbc04 100644
>> --- a/drivers/vfio/pci/Kconfig
>> +++ b/drivers/vfio/pci/Kconfig
>> @@ -6,6 +6,8 @@ config VFIO_PCI_CORE
>>  	tristate
>>  	select VFIO_VIRQFD
>>  	select IRQ_BYPASS_MANAGER
>> +	select PCI_P2PDMA_CORE
>> +	select DMA_SHARED_BUFFER
>>  
>>  config VFIO_PCI_INTX
>>  	def_bool y if !S390
>> @@ -56,7 +58,8 @@ config VFIO_PCI_ZDEV_KVM
>>  	  To enable s390x KVM vfio-pci extensions, say Y.
>>  
>>  config VFIO_PCI_DMABUF
>> -	def_bool y if VFIO_PCI_CORE && PCI_P2PDMA && DMA_SHARED_BUFFER
>> +	def_bool y if PCI_P2PDMA
>> +	depends on VFIO_PCI_CORE
>>  
>>  source "drivers/vfio/pci/mlx5/Kconfig"
>>  
> [...]  
>>  int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>>  				   struct vm_area_struct *vma,
>> @@ -532,6 +538,10 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>>  	struct vfio_pci_dma_buf *tmp;
>>  
>>  	lockdep_assert_held_write(&vdev->memory_lock);
>> +	/*
>> +	 * Holding memory_lock ensures a racing VMA fault observes
>> +	 * priv->revoked properly.
>> +	 */
> 
> Nit: This comment should appear before the lockdep_assert_held_write()
> Also, it is slightly verbose.. (not against it though).

Right, I'll move it.  Agree it's wordy but if anyone changes that I want
them to "think faulthandler".

>>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
>>  		if (!get_file_active(&priv->dmabuf->file))
>> @@ -549,6 +559,8 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>>  			if (revoked) {
>>  				kref_put(&priv->kref, vfio_pci_dma_buf_done);
>>  				wait_for_completion(&priv->comp);
>> +				unmap_mapping_range(priv->dmabuf->file->f_mapping,
>> +						    0, priv->size, 1);
> 
> Have we run this series with lockdep enabled?
> I guess it'd be nice to check with lockdep once..

I've (generally) always run testing of this series with lockdep.  (No
issues (anymore).)

> Apart from these, 
> 
> Reviewed-by: Pranjal Shrivastava <praan@google.com>


Thanks!


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
