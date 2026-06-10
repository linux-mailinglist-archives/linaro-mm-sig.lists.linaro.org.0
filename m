Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BfEfAPhdPWrj1wgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:57:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A19526C79AF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:57:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b="c7/gL6/8";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B808A40A72
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:57:26 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id E66E940499
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 15:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781106260;
	bh=w/QAqKguf1tBu4JVWM0U3HzW91S/9/oIXFw2nXYa4AQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c7/gL6/87xKEVcXHWFSgW0fCjjZAWBsU2vsMec1Vz+XdxeBWipVAY/Cw/bSf5CFQU
	 dkMoxxIUT7TNEoz/fP8d6nfbqPYFA3tNmKDzK94faccw8lE+4msv3LcXHmFDJQnkOA
	 FK/fxOsHNRZzUXP+UG6zuNjM73Gf/J0P5RqDW5r3SzbVGEnDvLmbZNqUo99CtOH5tR
	 RnGgunIBpRBMuJ8OM0xgqqaZH/yYzTpgCbpfetH/H5cYvyEbojGbLUnD/rKAfQluWb
	 yH0Oj4j0AzTBRv0H1nrWjohC4Kaa9zjajDJdfSD4X3qE6Q1LPbxo1u8BNmBUVRpD67
	 aiV0rWHGPQShg==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gb97R2TZXz4wST;
	Thu, 11 Jun 2026 01:44:19 +1000 (AEST)
From: Matt Evans <matt@ozlabs.org>
To: Alex Williamson <alex@shazbot.org>,
	Leon Romanovsky <leon@kernel.org>,
	Jason Gunthorpe <jgg@nvidia.com>,
	Alex Mastro <amastro@fb.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Wed, 10 Jun 2026 16:43:16 +0100
Message-ID: <20260610154327.37758-3-matt@ozlabs.org>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260610154327.37758-1-matt@ozlabs.org>
References: <20260610154327.37758-1-matt@ozlabs.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WZ7AZFMBKWKGNAKCKOGLUWT4XY6ADR2F
X-Message-ID-Hash: WZ7AZFMBKWKGNAKCKOGLUWT4XY6ADR2F
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:56:59 +0000
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WZ7AZFMBKWKGNAKCKOGLUWT4XY6ADR2F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[361];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A19526C79AF

Add vfio_pci_dma_buf_find_pfn(), which a VMA fault handler can use to
find a PFN.

This supports multi-range DMABUFs, which typically would be used to
represent scattered spans but might even represent overlapping or
aliasing spans of PFNs.

Because this is intended to be used in vfio_pci_core.c, we also need
to expose the struct vfio_pci_dma_buf in the vfio_pci_priv.h header.

Signed-off-by: Matt Evans <matt@ozlabs.org>
---
 drivers/vfio/pci/vfio_pci_dmabuf.c | 137 ++++++++++++++++++++++++++---
 drivers/vfio/pci/vfio_pci_priv.h   |  20 +++++
 2 files changed, 144 insertions(+), 13 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index c16f460c01d6..9e5e865f6fb6 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -9,19 +9,6 @@
 
 MODULE_IMPORT_NS("DMA_BUF");
 
-struct vfio_pci_dma_buf {
-	struct dma_buf *dmabuf;
-	struct vfio_pci_core_device *vdev;
-	struct list_head dmabufs_elm;
-	size_t size;
-	struct phys_vec *phys_vec;
-	struct p2pdma_provider *provider;
-	u32 nr_ranges;
-	struct kref kref;
-	struct completion comp;
-	u8 revoked : 1;
-};
-
 static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
 				   struct dma_buf_attachment *attachment)
 {
@@ -106,6 +93,130 @@ static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
 	.release = vfio_pci_dma_buf_release,
 };
 
+int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *priv,
+			      struct vm_area_struct *vma,
+			      unsigned long address,
+			      unsigned int order,
+			      unsigned long *out_pfn)
+{
+	/*
+	 * Given a VMA (start, end, pgoffs) and a fault address,
+	 * search the corresponding DMABUF's phys_vec[] to find the
+	 * range representing the address's offset into the VMA, and
+	 * its PFN.
+	 *
+	 * The phys_vec[] ranges represent contiguous spans of VAs
+	 * upwards from the buffer offset 0; the actual PFNs might be
+	 * in any order, overlap/alias, etc.  Calculate an offset of
+	 * the desired page given VMA start/pgoff and address, then
+	 * search upwards from 0 to find which span contains it.
+	 *
+	 * On success, a valid PFN for a page sized by 'order' is
+	 * returned into out_pfn.
+	 *
+	 * Failure occurs if:
+	 * - The page would cross the edge of the VMA
+	 * - The page isn't entirely contained within a range
+	 * - We find a range, but the final PFN isn't aligned to the
+	 *   requested order.
+	 *
+	 * (Upon failure, the caller is expected to try again with a
+	 * smaller order; the tests above will always succeed for
+	 * order=0 as the limit case.)
+	 *
+	 * It's suboptimal if DMABUFs are created with neigbouring
+	 * ranges that are physically contiguous, since hugepages
+	 * can't straddle range boundaries.  (The construction of the
+	 * ranges vector should merge such ranges.)
+	 *
+	 * Finally, vma_pgoff_adjust is used for a DMABUF representing
+	 * a VFIO BAR mmap, which is created from the start of the
+	 * offset region.
+	 */
+
+	const unsigned long pagesize = PAGE_SIZE << order;
+	unsigned long vma_off = ((vma->vm_pgoff - priv->vma_pgoff_adjust) <<
+				 PAGE_SHIFT) & VFIO_PCI_OFFSET_MASK;
+	unsigned long rounded_page_addr = ALIGN_DOWN(address, pagesize);
+	unsigned long rounded_page_end = rounded_page_addr + pagesize;
+	unsigned long page_buf_offset;
+	unsigned long page_buf_offset_end;
+	unsigned long range_buf_offset = 0;
+	unsigned int i;
+
+	if (rounded_page_addr < vma->vm_start || rounded_page_end > vma->vm_end) {
+		if (order > 0)
+			return -EAGAIN;
+
+		/* A fault address outside of the VMA is absurd. */
+		WARN(1, "Fault addr 0x%lx outside VMA 0x%lx-0x%lx\n",
+		     address, vma->vm_start, vma->vm_end);
+		return -EFAULT;
+	}
+
+	/*
+	 * page_buff_offset[_end] is the span of DMABUF offsets
+	 * corresponding to the faulting page:
+	 */
+	if (unlikely(check_add_overflow(rounded_page_addr - vma->vm_start,
+					vma_off, &page_buf_offset) ||
+		     check_add_overflow(page_buf_offset, pagesize,
+					&page_buf_offset_end)))
+		return -EFAULT;
+
+	for (i = 0; i < priv->nr_ranges; i++) {
+		size_t range_len = priv->phys_vec[i].len;
+		phys_addr_t range_start = priv->phys_vec[i].paddr;
+
+		/*
+		 * If the current range starts after the page's span,
+		 * this and any future range won't match.  Bail early.
+		 */
+		if (page_buf_offset_end <= range_buf_offset)
+			break;
+
+		if (page_buf_offset >= range_buf_offset &&
+		    page_buf_offset_end <= range_buf_offset + range_len) {
+			/*
+			 * The faulting page is wholly contained
+			 * within the span represented by the range.
+			 * Validate PFN alignment for the order:
+			 */
+			unsigned long pfn = (range_start + page_buf_offset -
+					     range_buf_offset) / PAGE_SIZE;
+
+			if (IS_ALIGNED(pfn, 1 << order)) {
+				*out_pfn = pfn;
+				return 0;
+			}
+			/* Retry with smaller order */
+			return -EAGAIN;
+		}
+		range_buf_offset += range_len;
+	}
+
+	/*
+	 * A hugepage straddling a range boundary will fail to match a
+	 * range, but the address will (eventually) match when retried
+	 * with a smaller page.
+	 */
+	if (order > 0)
+		return -EAGAIN;
+
+	/*
+	 * If we get here, the address fell outside of the span
+	 * represented by the (concatenated) ranges.  Setup of a
+	 * mapping must ensure that the VMA is <= the total size of
+	 * the ranges, so this should never happen.  But, if it does,
+	 * force SIGBUS for the access and warn.
+	 */
+	WARN_ONCE(1, "No range for addr 0x%lx, order %d: VMA 0x%lx-0x%lx pgoff 0x%lx, %u ranges, size 0x%zx\n",
+		  address, order, vma->vm_start, vma->vm_end, vma->vm_pgoff,
+		  priv->nr_ranges, priv->size);
+
+	return -EFAULT;
+}
+
 /*
  * This is a temporary "private interconnect" between VFIO DMABUF and iommufd.
  * It allows the two co-operating drivers to exchange the physical address of
diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
index fca9d0dfac90..c8f6f959056a 100644
--- a/drivers/vfio/pci/vfio_pci_priv.h
+++ b/drivers/vfio/pci/vfio_pci_priv.h
@@ -23,6 +23,20 @@ struct vfio_pci_ioeventfd {
 	bool			test_mem;
 };
 
+struct vfio_pci_dma_buf {
+	struct dma_buf *dmabuf;
+	struct vfio_pci_core_device *vdev;
+	struct list_head dmabufs_elm;
+	size_t size;
+	struct phys_vec *phys_vec;
+	struct p2pdma_provider *provider;
+	u32 nr_ranges;
+	struct kref kref;
+	struct completion comp;
+	unsigned long vma_pgoff_adjust;
+	u8 revoked : 1;
+};
+
 bool vfio_pci_intx_mask(struct vfio_pci_core_device *vdev);
 void vfio_pci_intx_unmask(struct vfio_pci_core_device *vdev);
 
@@ -114,6 +128,12 @@ static inline bool vfio_pci_is_vga(struct pci_dev *pdev)
 	return (pdev->class >> 8) == PCI_CLASS_DISPLAY_VGA;
 }
 
+int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
+			      struct vm_area_struct *vma,
+			      unsigned long address,
+			      unsigned int order,
+			      unsigned long *out_pfn);
+
 #ifdef CONFIG_VFIO_PCI_DMABUF
 int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
 				  struct vfio_device_feature_dma_buf __user *arg,
-- 
2.50.1 (Apple Git-155)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
