Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Pu7HW3GFmqbrwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 12:24:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ABF5E29FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 12:24:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 483153FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 10:24:44 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 349F740146
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 10:24:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=Dia3mcFj;
	spf=pass (lists.linaro.org: domain of "prvs=3607b585cf=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=3607b585cf=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R6hXB11411431;
	Wed, 27 May 2026 03:23:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=HWCayHTmA6fkxyKnxbcnh2gOZ+Q9k0y58BUHYwbE5n0=; b=Dia3mcFjV163
	OcGNR2GryCFOoihIVfKz75oVUnzouc2XdsWRMFq5GiJlInIwjXhWUUvHDL+JrmJH
	Fd2LTzy/ZxPENThZe/zL7h/6C8Z2BOU4faMNxBgxMtaytxQnKJxt20dmDN83NnWp
	/f8esMtfhZ5lpiHUwGQXiJGZ8MwdhscC1eHV6Jtp+g3IIy5ThcNedDfSPfwtfcek
	rZiesF9MNSTwlgWHhKfLaeqhE7GeMMqQTOWoYiJMNmrLhc1HZDxkYzw4Oe8hUT6D
	ZsxYG7e7NwFecJAApeCH6HwkKFDLSroC6IJkVPMRQMUTddYeP6KlmApNpmz4JfUe
	DznSY5Hb+g==
Received: from mail.thefacebook.com ([163.114.134.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4edujrgwd1-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 27 May 2026 03:23:49 -0700 (PDT)
Received: from localhost (2620:10d:c085:108::150d) by mail.thefacebook.com
 (2620:10d:c08b:78::2ac9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.41; Wed, 27 May
 2026 10:23:47 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
        Bjorn Helgaas
	<bhelgaas@google.com>,
        Logan Gunthorpe <logang@deltatee.com>
Date: Wed, 27 May 2026 03:23:08 -0700
Message-ID: <20260527102319.100128-6-mattev@meta.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260527102319.100128-1-mattev@meta.com>
References: <20260527102319.100128-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c085:108::150d]
X-Authority-Analysis: v=2.4 cv=J5OaKgnS c=1 sm=1 tr=0 ts=6a16c635 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=JnKecZnUtZousrUlYMGU:22 a=VabnemYjAAAA:8 a=3OuInECnMAfxEXBjkJUA:9
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: 6pUddGDdSoEMjZBf4ZeaFcYBx7g3t3Dh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDEwMCBTYWx0ZWRfX0loea65+K6Sw
 GKEBO2dOXgp0/ZDJ72MpNPgU8ws8ZnweQEaUk+Cqb7QXjFrL1ZK+6h2uaGjG9Y2DlgEsdnsie+p
 hLszdgNqvw0/GEzy6q7grOHZpMP14U7EseQlpPNyjmcLVrPLB9wA2UBeoCigZX4eVE7Pe1flAUH
 phkitdAu/fT1NV1Scsy9rkNpt1yGMVoEO95uHaVb3ZKkmSnIOnbKdTuzuXQQDIGDZaf3mIi84sZ
 JQZqP1s63DEcedkD1lEURfj9Bs/tyF8C//gg39Cml9s8HWhpweNYGb0DzIve/5JC0ORvBvlx+sm
 LYALuPPMb80RCFaqytg7HOZc2z5hhSZm3UFcIdN22FPY/b9WiO8Ap19+GJ7tpmtItin3h08IF0N
 zzjIzYmX24H0UBUYiUxrPb9D1Hj1F605WL98iaMwO9IE/ux74zVaSHh9isw0j1a+nAMjQfXKRZu
 KWyrtkw8AdlM5fx2ZCg==
X-Proofpoint-ORIG-GUID: 6pUddGDdSoEMjZBf4ZeaFcYBx7g3t3Dh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_01,2026-05-26_03,2025-10-01_01
X-Spamd-Bar: --
Message-ID-Hash: F33KTRM7MDAK2MCPP6JXBCPWSW4BJNQM
X-Message-ID-Hash: F33KTRM7MDAK2MCPP6JXBCPWSW4BJNQM
X-MailFrom: prvs=3607b585cf=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 5/9] vfio/pci: Provide a user-facing name for BAR mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F33KTRM7MDAK2MCPP6JXBCPWSW4BJNQM/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:mid,meta.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 28ABF5E29FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since converting BAR mmap()s to using DMABUFs, we lose the original
device path in /proc/<pid>/maps, lsof, etc.  Generate a debug-oriented
synthetic 'filename' based on the cdev, plus BDF, plus resource index.

This applies only to BAR mappings via the VFIO device fd, as
explicitly-exported DMABUFs are named by userspace via the
DMA_BUF_SET_NAME ioctl.

Signed-off-by: Matt Evans <mattev@meta.com>
---
 drivers/vfio/pci/vfio_pci_dmabuf.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index f7797f58d44b..733607371082 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -4,6 +4,7 @@
 #include <linux/dma-buf-mapping.h>
 #include <linux/pci-p2pdma.h>
 #include <linux/dma-resv.h>
+#include <uapi/linux/dma-buf.h>
 
 #include "vfio_pci_priv.h"
 
@@ -476,6 +477,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 	struct vfio_pci_dma_buf *priv;
 	const unsigned int nr_ranges = 1;
 	unsigned long vma_pgoff = vma->vm_pgoff & (VFIO_PCI_OFFSET_MASK >> PAGE_SHIFT);
+	char *bufname;
 	int ret;
 
 	priv = kzalloc_obj(*priv);
@@ -488,6 +490,20 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 		goto err_free_priv;
 	}
 
+	bufname = kzalloc(DMA_BUF_NAME_LEN, GFP_KERNEL);
+	if (!bufname) {
+		ret = -ENOMEM;
+		goto err_free_phys;
+	}
+
+	/*
+	 * Maximum size of the friendly debug name is
+	 * vfio1234567890:ffff:ff:3f.7/5 = 30, which fits within
+	 * DMA_BUF_NAME_LEN.
+	 */
+	snprintf(bufname, DMA_BUF_NAME_LEN, "%s:%s/%x",
+		 dev_name(&vdev->vdev.device), pci_name(vdev->pdev), res_index);
+
 	/*
 	 * The DMABUF begins from the mmap()'s BAR offset, i.e. the
 	 * start of the VMA corresponds to byte 0 of the DMABUF and
@@ -506,7 +522,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 	priv->provider = pcim_p2pdma_provider(vdev->pdev, res_index);
 	if (!priv->provider) {
 		ret = -EINVAL;
-		goto err_free_phys;
+		goto err_free_name;
 	}
 
 	priv->phys_vec[0].paddr = phys_start + ((u64)vma_pgoff << PAGE_SHIFT);
@@ -514,7 +530,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
 
 	ret = vfio_pci_dmabuf_export(vdev, priv, O_CLOEXEC | O_RDWR);
 	if (ret)
-		goto err_free_phys;
+		goto err_free_name;
 
 	/*
 	 * The VMA gets the DMABUF file so that other users can locate
@@ -526,8 +542,15 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
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
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
