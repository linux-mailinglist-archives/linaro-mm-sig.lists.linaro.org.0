Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGiVApLGFmpVrwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 12:25:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B226F5E2A5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 12:25:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B83E640965
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 10:25:20 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id E130C401C5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 10:24:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=Lyx4tVqU;
	spf=pass (lists.linaro.org: domain of "prvs=3607b585cf=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3607b585cf=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0528009.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R7w0xj2645751;
	Wed, 27 May 2026 03:24:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=Pe77KzAluzhbqg+Cv3jmNN3g493DWRV71uyOIHJnQbY=; b=Lyx4tVqU6mWK
	ru4yzdsy6Y3jTho8pappWAanM46P/J9WdVmBdnMi30Iix9Bga9vuUWdpiI+FJNYI
	OkgFO+tvpslbK/e+PHiSt9wNHeWRmIIogajR5WNjChiVce0wM06zCLFBfTWRtk7r
	M6OETmbLJdSWXojZOfonalInCu1UuYawYOMJ9WEL+bmf7yrBTGKrgTFIZoutvcDM
	+seh3ckUd7gDIfOfoNlRq3GDoWkt8+CrsTz5X7fZ9+mI2DQDn7PO0mZhtVrMmyfo
	8WgaceGOb2ArgEH2y/Ia7fiy1k2xmELuiozAwqxYpx62T6/g8XM9T7rp5nMP8S+C
	cP7lonyYWg==
Received: from maileast.thefacebook.com ([163.114.135.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4edtn893u4-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 27 May 2026 03:24:02 -0700 (PDT)
Received: from localhost (2620:10d:c0a8:1b::2d) by mail.thefacebook.com
 (2620:10d:c0a9:6f::8fd4) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.41; Wed, 27 May
 2026 10:24:00 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
        Bjorn Helgaas
	<bhelgaas@google.com>,
        Logan Gunthorpe <logang@deltatee.com>
Date: Wed, 27 May 2026 03:23:12 -0700
Message-ID: <20260527102319.100128-10-mattev@meta.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260527102319.100128-1-mattev@meta.com>
References: <20260527102319.100128-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c0a8:1b::2d]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDEwMCBTYWx0ZWRfX7SUDs8UBgUFd
 zv+Npwh2wxb3EutWuU6PPoMLWpdVgCdBmXSDHnnad0IpxzwWhIk4IJmFUONjDiCEMWxpPpdWnqz
 0l1ziv70qs5joSwvCCED6iARBsGWPN7xJ+bkJmBq0l1uySBr5iedrN1h27M9o6pjv6RHheydCnV
 vAaLs8Ihy2rS19RdVkLQKIXPb5/1l5+3CRjsMPsZmQo1FBHGnOcAHCzPt+EOJPgMr9PvKizO0ka
 YD4V13rmKBzunGf4ivzFAP8UzBP0uihHk1h0quS2HG/Ifwl3O08xSWBWynkhGpYfUAUAGvK1duP
 ufsHbr9wYW9p91gUpPurUMLJUuxX3+0vYkFLgDMGWLgMpXMr9HFKDmKH/J0Ec7+XpwPck716+9b
 24trFIfyWs7yeZ0G/4bA7zSlH0he1pa99NNO3gGRJIbGkF70qAeovLEquKaUV/B1bNqtv7osF/c
 bQpkwgzNlCkoAS55RWg==
X-Proofpoint-GUID: niFXQOLyeaHKneo1auZ7pSHrrJmSXM9G
X-Proofpoint-ORIG-GUID: niFXQOLyeaHKneo1auZ7pSHrrJmSXM9G
X-Authority-Analysis: v=2.4 cv=BbToFLt2 c=1 sm=1 tr=0 ts=6a16c642 cx=c_pps
 a=MfjaFnPeirRr97d5FC5oHw==:117 a=MfjaFnPeirRr97d5FC5oHw==:17
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=U_y8lYiYyhHBU5rMqhb2:22 a=VabnemYjAAAA:8 a=WcwxkBucmGPv41HzS2YA:9
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_01,2026-05-26_03,2025-10-01_01
X-Spamd-Bar: --
Message-ID-Hash: MYGEDXKEIE6ZUB5QJBJQEFQLJBFMKNVQ
X-Message-ID-Hash: MYGEDXKEIE6ZUB5QJBJQEFQLJBFMKNVQ
X-MailFrom: prvs=3607b585cf=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MYGEDXKEIE6ZUB5QJBJQEFQLJBFMKNVQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.986];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,meta.com:mid,meta.com:email]
X-Rspamd-Queue-Id: B226F5E2A5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A new VFIO feature, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR, is added to
set (and get) CPU-facing memory type attributes for a DMABUF exported
from vfio-pci.  These are used for subsequent mmap()s of the buffer.

There are two attributes supported:
 - The default, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_UC
 - VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC, which results in WC
   PTEs for the DMABUF's BAR region.

Signed-off-by: Matt Evans <mattev@meta.com>
---
 drivers/vfio/pci/vfio_pci_core.c   |  2 +
 drivers/vfio/pci/vfio_pci_dmabuf.c | 70 +++++++++++++++++++++++++++++-
 drivers/vfio/pci/vfio_pci_priv.h   | 12 +++++
 include/uapi/linux/vfio.h          | 27 ++++++++++++
 4 files changed, 110 insertions(+), 1 deletion(-)

diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index 5184b3cac160..e256a925e7ce 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -1590,6 +1590,8 @@ int vfio_pci_core_ioctl_feature(struct vfio_device *device, u32 flags,
 		return vfio_pci_core_feature_token(vdev, flags, arg, argsz);
 	case VFIO_DEVICE_FEATURE_DMA_BUF:
 		return vfio_pci_core_feature_dma_buf(vdev, flags, arg, argsz);
+	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR:
+		return vfio_pci_core_feature_dma_buf_memattr(vdev, flags, arg, argsz);
 	default:
 		return -ENOTTY;
 	}
diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index 3fa14760898f..db8b95ddbe18 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -42,7 +42,10 @@ static int vfio_pci_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *
 	 * contained within the DMABUF size before calling this.
 	 */
 
-	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
+	if (READ_ONCE(priv->memattr) == VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC)
+		vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
+	else
+		vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
 
 	/* See comments in vfio_pci_core_mmap() re VM_ALLOW_ANY_UNCACHED. */
@@ -464,6 +467,7 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
 	priv->vdev = vdev;
 	priv->nr_ranges = get_dma_buf.nr_ranges;
 	priv->size = length;
+	priv->memattr = VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC;
 	ret = vdev->pci_ops->get_dmabuf_phys(vdev, &priv->provider,
 					     get_dma_buf.region_index,
 					     priv->phys_vec, dma_ranges,
@@ -731,4 +735,68 @@ int vfio_pci_dma_buf_revoke(struct vfio_pci_core_device *vdev, int dmabuf_fd)
 
 	return ret;
 }
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
+				 VFIO_DEVICE_FEATURE_GET |
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
+	if (dmabuf->ops != &vfio_pci_dmabuf_ops || priv->vdev != vdev) {
+		ret = -ENODEV;
+		goto out_put_buf;
+	}
+
+	ret = 0;
+	scoped_guard(rwsem_write, &vdev->memory_lock) {
+		uint32_t old_attr = priv->memattr;
+
+		if (flags & VFIO_DEVICE_FEATURE_SET) {
+			switch(db_attr.memattr) {
+			case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC:
+			case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC:
+				priv->memattr = db_attr.memattr;
+				break;
+
+			default:
+				ret = -ENOTSUPP;
+			}
+		}
+		db_attr.memattr = old_attr;
+	}
+
+	if (!ret && (flags & VFIO_DEVICE_FEATURE_GET)) {
+		if (copy_to_user(arg, &db_attr, sizeof(db_attr)))
+			ret = -EFAULT;
+	}
+
+ out_put_buf:
+	dma_buf_put(dmabuf);
+
+	return ret;
+
+}
 #endif /* CONFIG_VFIO_PCI_DMABUF */
diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
index a1e0f4fcb1dc..8067be45beb0 100644
--- a/drivers/vfio/pci/vfio_pci_priv.h
+++ b/drivers/vfio/pci/vfio_pci_priv.h
@@ -41,6 +41,7 @@ struct vfio_pci_dma_buf {
 	struct kref kref;
 	struct completion comp;
 	unsigned long vma_pgoff_adjust;
+	u32 memattr;
 	enum vfio_pci_dma_buf_status status;
 };
 
@@ -154,6 +155,10 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked);
 int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
 				  struct vfio_device_feature_dma_buf __user *arg,
 				  size_t argsz);
+int vfio_pci_core_feature_dma_buf_memattr(
+	struct vfio_pci_core_device *vdev, u32 flags,
+	struct vfio_device_feature_dma_buf_memattr __user *arg,
+	size_t argsz);
 int vfio_pci_dma_buf_revoke(struct vfio_pci_core_device *vdev, int dmabuf_fd);
 #else
 static inline int
@@ -163,6 +168,13 @@ vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
 {
 	return -ENOTTY;
 }
+static inline int vfio_pci_core_feature_dma_buf_memattr(
+	struct vfio_pci_core_device *vdev, u32 flags,
+	struct vfio_device_feature_dma_buf_memattr __user *arg,
+	size_t argsz)
+{
+	return -ENODEV;
+}
 static inline int vfio_pci_dma_buf_revoke(struct vfio_pci_core_device *vdev,
 					  int dmabuf_fd)
 {
diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
index 02366e9f8e16..9b0b68f8a1ef 100644
--- a/include/uapi/linux/vfio.h
+++ b/include/uapi/linux/vfio.h
@@ -1564,6 +1564,33 @@ struct vfio_device_feature_dma_buf {
  */
 #define VFIO_DEVICE_FEATURE_MIG_PRECOPY_INFOv2  12
 
+/**
+ * Given a dma_buf fd previously created by
+ * VFIO_DEVICE_FEATURE_DMA_BUF, GET or SET the memory attribute that
+ * will be used by future mmap()s of that fd.  SETting a new attribute
+ * does not affect existing VMAs.
+ *
+ * The default, if no previous SET has been performed, is NC.
+ *
+ * Return: 0 on success, -1 and errno is set on failure:
+ *
+ *  ENOTSUPP: The given memattr is not supported.
+ *  EBADF, EINVAL: dmabuf_fd is not a DMABUF fd.
+ *  ENODEV: The dmabuf_fd does not match this VFIO device.
+ */
+#define VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR 13
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
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
