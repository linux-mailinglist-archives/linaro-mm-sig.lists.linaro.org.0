Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fqm8CzVePWr71wgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:58:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F002A6C79EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:58:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=Y+ffWGv8;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13B4040C9F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:58:28 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id B5CA140988
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 15:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781106303;
	bh=Y5kBW1vxNXDE6JRXBcV0sBowQzBU5fXbOfu7RYwBVRQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Y+ffWGv868slujFWV5zuulzhwGAZ1Q7EKf6Y6XNIJbaFt1u9yxffsBQ39HrQOX6+c
	 KsDoBkSz4VxRFqLvhhuV4gGj90D10geNMa8k7tLgPDrOIEc/IolNDUEdkBnRBaVhFG
	 oRXzTmhY8M2JapiGu8m9qjM7omF2pIK5F2vrNATXUQB5zW/jTOR3IsSSletWuLG3uR
	 xX68poepfetCcscEVEgOSHevmtBSLBkknXbeZ+iYcv5lFPegkC1bQMpVul48HXICAI
	 6bQBnf4PWaIN5phsfoB4KWtEKTiDS3oQr6/+0VG1YMTgNe60pPaDeE3yRN4loTWdGE
	 ycrpjf7MGkCYw==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gb98G16N4z4x98;
	Thu, 11 Jun 2026 01:45:01 +1000 (AEST)
From: Matt Evans <matt@ozlabs.org>
To: Alex Williamson <alex@shazbot.org>,
	Leon Romanovsky <leon@kernel.org>,
	Jason Gunthorpe <jgg@nvidia.com>,
	Alex Mastro <amastro@fb.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Wed, 10 Jun 2026 16:43:23 +0100
Message-ID: <20260610154327.37758-10-matt@ozlabs.org>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260610154327.37758-1-matt@ozlabs.org>
References: <20260610154327.37758-1-matt@ozlabs.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LKDD3FYR77FZ6TEJMXADGD25EJ4QNKUY
X-Message-ID-Hash: LKDD3FYR77FZ6TEJMXADGD25EJ4QNKUY
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:57:02 +0000
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LKDD3FYR77FZ6TEJMXADGD25EJ4QNKUY/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F002A6C79EE

A new VFIO feature, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR, is added to
set CPU-facing memory type attributes for a DMABUF exported from
vfio-pci.  These are used for subsequent mmap()s of the buffer.

There are two attributes supported:
 - The default, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC
 - VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC, which results in WC
   PTEs for the DMABUF's BAR region.

Signed-off-by: Matt Evans <matt@ozlabs.org>
---
 drivers/vfio/pci/vfio_pci_core.c   |  2 ++
 drivers/vfio/pci/vfio_pci_dmabuf.c | 57 +++++++++++++++++++++++++++++-
 drivers/vfio/pci/vfio_pci_priv.h   | 14 ++++++++
 include/uapi/linux/vfio.h          | 27 ++++++++++++++
 4 files changed, 99 insertions(+), 1 deletion(-)

diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index 064906b25467..dc9c6f479e2c 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -1575,6 +1575,8 @@ int vfio_pci_core_ioctl_feature(struct vfio_device *device, u32 flags,
 		return vfio_pci_core_feature_dma_buf(vdev, flags, arg, argsz);
 	case VFIO_DEVICE_FEATURE_DMA_BUF_REVOKE:
 		return vfio_pci_core_feature_dma_buf_revoke(vdev, flags, arg, argsz);
+	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR:
+		return vfio_pci_core_feature_dma_buf_memattr(vdev, flags, arg, argsz);
 	default:
 		return -ENOTTY;
 	}
diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index b47411992ab6..58b769e65ab8 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -51,7 +51,10 @@ static int vfio_pci_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *
 	 * contained within the DMABUF size before calling this.
 	 */
 
-	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
+	if (READ_ONCE(priv->memattr) == VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC)
+		vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
+	else
+		vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
 
 	/* See comments in vfio_pci_core_mmap() re VM_ALLOW_ANY_UNCACHED. */
@@ -468,6 +471,7 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
 	priv->vdev = vdev;
 	priv->nr_ranges = get_dma_buf.nr_ranges;
 	priv->size = length;
+	priv->memattr = VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC;
 	ret = vdev->pci_ops->get_dmabuf_phys(vdev, &priv->provider,
 					     get_dma_buf.region_index,
 					     priv->phys_vec, dma_ranges,
@@ -755,6 +759,57 @@ int vfio_pci_core_feature_dma_buf_revoke(
 		}
 	}
 
+out_put_buf:
+	dma_buf_put(dmabuf);
+
+	return ret;
+}
+
+int vfio_pci_core_feature_dma_buf_memattr(
+	struct vfio_pci_core_device *vdev, u32 flags,
+	struct vfio_device_feature_dma_buf_memattr __user *arg,
+	size_t argsz)
+{
+	struct vfio_device_feature_dma_buf_memattr db_attr;
+	struct vfio_pci_dma_buf *priv;
+	struct dma_buf *dmabuf;
+	int ret;
+
+	if (!vdev->pci_ops || !vdev->pci_ops->get_dmabuf_phys)
+		return -EOPNOTSUPP;
+
+	ret = vfio_check_feature(flags, argsz,
+				 VFIO_DEVICE_FEATURE_SET,
+				 sizeof(db_attr));
+	if (ret != 1)
+		return ret;
+
+	if (copy_from_user(&db_attr, arg, sizeof(db_attr)))
+		return -EFAULT;
+
+	dmabuf = dma_buf_get(db_attr.dmabuf_fd);
+	if (IS_ERR(dmabuf))
+		return PTR_ERR(dmabuf);
+
+	/* Verify DMABUF: see comments in vfio_pci_dma_buf_revoke() */
+	priv = dmabuf->priv;
+	if (dmabuf->ops != &vfio_pci_dmabuf_ops ||
+	    READ_ONCE(priv->vdev) != vdev) {
+		ret = -ENODEV;
+		goto out_put_buf;
+	}
+
+	switch (db_attr.memattr) {
+	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC:
+	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC:
+		WRITE_ONCE(priv->memattr, db_attr.memattr);
+		ret = 0;
+		break;
+
+	default:
+		ret = -ENOENT;
+	}
+
 out_put_buf:
 	dma_buf_put(dmabuf);
 
diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
index 3c2f2575b670..3ec8b62194f3 100644
--- a/drivers/vfio/pci/vfio_pci_priv.h
+++ b/drivers/vfio/pci/vfio_pci_priv.h
@@ -41,6 +41,7 @@ struct vfio_pci_dma_buf {
 	struct kref kref;
 	struct completion comp;
 	unsigned long vma_pgoff_adjust;
+	u32 memattr;
 	enum vfio_pci_dma_buf_status status;
 };
 
@@ -158,6 +159,10 @@ int vfio_pci_core_feature_dma_buf_revoke(
 	struct vfio_pci_core_device *vdev, u32 flags,
 	struct vfio_device_feature_dma_buf_revoke __user *arg,
 	size_t argsz);
+int vfio_pci_core_feature_dma_buf_memattr(
+	struct vfio_pci_core_device *vdev, u32 flags,
+	struct vfio_device_feature_dma_buf_memattr __user *arg,
+	size_t argsz);
 #else
 static inline int
 vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
@@ -166,6 +171,7 @@ vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
 {
 	return -ENOTTY;
 }
+
 static inline int vfio_pci_core_feature_dma_buf_revoke(
 	struct vfio_pci_core_device *vdev, u32 flags,
 	struct vfio_device_feature_dma_buf_revoke __user *arg,
@@ -173,6 +179,14 @@ static inline int vfio_pci_core_feature_dma_buf_revoke(
 {
 	return -ENOTTY;
 }
+
+static inline int vfio_pci_core_feature_dma_buf_memattr(
+	struct vfio_pci_core_device *vdev, u32 flags,
+	struct vfio_device_feature_dma_buf_memattr __user *arg,
+	size_t argsz)
+{
+	return -ENOTTY;
+}
 #endif
 
 #endif
diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
index 697c0bb4b9bc..ab30b89399d0 100644
--- a/include/uapi/linux/vfio.h
+++ b/include/uapi/linux/vfio.h
@@ -1554,6 +1554,33 @@ struct vfio_device_feature_dma_buf_revoke {
 	__s32	dmabuf_fd;
 };
 
+/**
+ * Given a dma_buf fd previously created by
+ * VFIO_DEVICE_FEATURE_DMA_BUF, SET the memory attribute that will be
+ * used by future mmap()s of that fd.  SETting a new attribute does
+ * not affect existing VMAs.
+ *
+ * The default, if no previous SET has been performed, is NC.
+ *
+ * Return: 0 on success, -1 and errno is set on failure:
+ *
+ *  EBADF, EINVAL: dmabuf_fd is not a DMABUF fd.
+ *  ENODEV: The dmabuf_fd does not match this VFIO device.
+ *  ENOENT: The given memattr is not supported.
+ */
+#define VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR 14
+
+/* Valid memory attributes for the memattr field */
+enum vfio_device_dma_buf_memattr {
+	VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC = 0, /* pgprot_noncached */
+	VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC = 1, /* pgprot_writecombine */
+};
+
+struct vfio_device_feature_dma_buf_memattr {
+	__s32	dmabuf_fd;
+	__u32	memattr;
+};
+
 /* -------- API for Type1 VFIO IOMMU -------- */
 
 /**
-- 
2.50.1 (Apple Git-155)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
