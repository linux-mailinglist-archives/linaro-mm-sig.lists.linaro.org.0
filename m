Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sozjIOdKRWrO+AoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 19:14:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 367C26F03CB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 19:14:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=JWxxffrP;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4815140E05
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 17:14:14 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 49B2240CBA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 17:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1782926003;
	bh=/uVRHgA7nXW28m4RgK4Zw047pkYRUUcytvwZFTaeF0E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JWxxffrPznvVpmC+n0KgMFvYBMA0NzKGzXvOBrbwGW5V5syX5omsJATyKUMuMPE4A
	 E5YKjzciz0gJ+EcBL2M5L7eEGoEwOhysx79S5/QxPBoZeubYWN7OsbZm7ZpmnaYMMV
	 +Itm2pvGkLYfmLGhbV2adzGOSOC5it9ChBdg6LlxM0CouY7Z2Mk4yTskcb7KaUOqa/
	 HBBc7MIs+A2eh8T1SAnHdcxGRpH8yp18oa/iDczE4qdX48BQiFzop5JGD8WYmafVX2
	 30eePbWboivRdJ6AZunm0K8Dxe4U8gBQvBfXDM4+YRZLH3kMoge8GDCoVjNXaqniXC
	 sy/rHE5zYMfzQ==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gr66V5CKPz58lT;
	Thu, 02 Jul 2026 03:13:22 +1000 (AEST)
From: Matt Evans <matt@ozlabs.org>
To: Alex Williamson <alex@shazbot.org>,
	Leon Romanovsky <leon@kernel.org>,
	Jason Gunthorpe <jgg@nvidia.com>,
	Alex Mastro <amastro@fb.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Kevin Tian <kevin.tian@intel.com>,
	Pranjal Shrivastava <praan@google.com>
Date: Wed,  1 Jul 2026 18:12:18 +0100
Message-ID: <20260701171245.90111-7-matt@ozlabs.org>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260701171245.90111-1-matt@ozlabs.org>
References: <20260701171245.90111-1-matt@ozlabs.org>
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: HLLI2ZILNXQ6QHD5T4BPDYUAXEYU75X7
X-Message-ID-Hash: HLLI2ZILNXQ6QHD5T4BPDYUAXEYU75X7
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 06/10] vfio/pci: Provide a user-facing name for BAR mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HLLI2ZILNXQ6QHD5T4BPDYUAXEYU75X7/>
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
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:kevin.tian@intel.com,m:praan@google.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 367C26F03CB

Since converting BAR mmap()s to using DMABUFs, we lose the original
device path in /proc/<pid>/maps, lsof, etc.  Generate a debug-oriented
synthetic 'filename' based on the cdev, plus BDF, plus resource index.

This applies only to BAR mappings via the VFIO device fd, as
explicitly-exported DMABUFs are named by userspace via the
DMA_BUF_SET_NAME ioctl.

Signed-off-by: Matt Evans <matt@ozlabs.org>
Reviewed-by: Pranjal Shrivastava <praan@google.com>
---
 drivers/vfio/pci/vfio_pci_dmabuf.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index ca8a04d4629a..08c56e2803ad 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -4,6 +4,7 @@
 #include <linux/dma-buf-mapping.h>
 #include <linux/pci-p2pdma.h>
 #include <linux/dma-resv.h>
+#include <uapi/linux/dma-buf.h>
 
 #include "vfio_pci_priv.h"
 
@@ -486,6 +487,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 {
 	struct vfio_pci_dma_buf *priv;
 	unsigned long vma_pgoff = vma->vm_pgoff & (VFIO_PCI_OFFSET_MASK >> PAGE_SHIFT);
+	char *bufname;
 	int ret;
 
 	priv = kzalloc_obj(*priv);
@@ -498,6 +500,15 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 		goto err_free_priv;
 	}
 
+	bufname = kasprintf(GFP_KERNEL, "%s:%s/%x",
+			    dev_name(&vdev->vdev.device), pci_name(vdev->pdev),
+			    res_index);
+
+	if (!bufname) {
+		ret = -ENOMEM;
+		goto err_free_phys;
+	}
+
 	/*
 	 * The DMABUF begins from the mmap()'s BAR offset, i.e. the
 	 * start of the VMA corresponds to byte 0 of the DMABUF and
@@ -516,7 +527,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 	priv->provider = pcim_p2pdma_provider(vdev->pdev, res_index);
 	if (!priv->provider) {
 		ret = -EINVAL;
-		goto err_free_phys;
+		goto err_free_name;
 	}
 
 	priv->phys_vec[0].paddr = phys_start + ((u64)vma_pgoff << PAGE_SHIFT);
@@ -524,7 +535,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 
 	ret = vfio_pci_dmabuf_export(vdev, priv, O_CLOEXEC | O_RDWR);
 	if (ret)
-		goto err_free_phys;
+		goto err_free_name;
 
 	/*
 	 * Ownership of the DMABUF file transfers to the VMA so that
@@ -539,8 +550,15 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 	vma->vm_file = priv->dmabuf->file;
 	vma->vm_private_data = priv;
 
+	spin_lock(&priv->dmabuf->name_lock);
+	kfree(priv->dmabuf->name);
+	priv->dmabuf->name = bufname;
+	spin_unlock(&priv->dmabuf->name_lock);
+
 	return 0;
 
+err_free_name:
+	kfree(bufname);
 err_free_phys:
 	kfree(priv->phys_vec);
 err_free_priv:
-- 
2.50.1 (Apple Git-155)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
