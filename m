Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QL7zHOBf5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:18:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 303CB430F5D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:18:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37EC0404F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:18:23 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 84951402DC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 18:46:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b="Tn/GQ8s9";
	spf=pass (lists.linaro.org: domain of "prvs=1531796282=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=1531796282=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
	by m0089730.ppops.net (8.18.1.11/8.18.1.11) with ESMTP id 62CHL0IH3607800;
	Thu, 12 Mar 2026 11:46:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=nKEE9T7WtP3i7pddwSt2rehphB9a6sw4YvWdHQEL+mA=; b=Tn/GQ8s9vw4X
	h/tV/+MwT7qMfZlJRUMsUM4rdlmz46VY15DZca0XLiBMjoICfXmjSpyLMbeSTke+
	eQSXf/aGyfp30qqN87iXUpOi2J6hRTQQKHEOCL/RzXsBf3UN3P3Esn9ozUKA6cjf
	B3vzUMMf9XsjJLuANByLEOZQZrQLNwMsL/ppQmC8jpqWQPRLm/6o16R3Xhw0BAQY
	9IRoR66Zh92ujOx+myb88+fA6OV6Jx4N0U+hNBg3JExuYcf8VvvvT1vNG1RHCdNk
	7N22u/Acpza+qlPF1HgdtW3J3ro1vJ94hu6Azm+O7J7+UZmm7klCw5qBmoTanas9
	Zmd57cJYZA==
Received: from mail.thefacebook.com ([163.114.134.16])
	by m0089730.ppops.net (PPS) with ESMTPS id 4cv1te9t9d-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 12 Mar 2026 11:46:43 -0700 (PDT)
Received: from localhost (2620:10d:c085:108::150d) by mail.thefacebook.com
 (2620:10d:c08b:78::c78f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.35; Thu, 12 Mar
 2026 18:46:43 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        Mahmoud Adam
	<mngyadam@amazon.de>,
        David Matlack <dmatlack@google.com>
Date: Thu, 12 Mar 2026 11:46:04 -0700
Message-ID: <20260312184613.3710705-7-mattev@meta.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260312184613.3710705-1-mattev@meta.com>
References: <20260312184613.3710705-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c085:108::150d]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1MSBTYWx0ZWRfX7EzWGssMXe7X
 PJNMb5cf9dkFCzFFeZxryoWwC8yUo3ePXkgGEbFkhHn1dLa48DyWe2d8Lw696N6HxKjc5AlRUUa
 +CHbndXP005ysohRSr+908PwQ42QCkZ+z/gT9hL5iHmt+Ghxk7Bf6cgQuIprXUqetQTxtMei8Qw
 ms39Fu7+XYHhMXGosRCqWHJynAFrVOVthjAfBROPtetn71IHI+e3yU1fHsebgCPfaaDpCKmWE0I
 /EOJgGXehxLiC2apof2s2Rsd+xXKD5JGKrzGU6+OfASwaLbOYMgr6VxuA+6A8JV+OsRakb0DxWf
 Ha5oVwKmZduSrFGwjixBkpeklpIigwI9aFPRWIAWFtARpDCSY2UWycm0WD9MXzVeFdmte/EXP+A
 ZjmZiRIkNbXQmo6etVFAK9qmn5Q9KRNEA4C3XNuWME8NQ78Bf3mNHStmxBPJxQ5NLFMpL8eSboT
 1jWUdII9DO9sEY50CLg==
X-Proofpoint-ORIG-GUID: 2FnSa1b1xUyjhSFio7_aR8yhzALZdgDt
X-Authority-Analysis: v=2.4 cv=QoJTHFyd c=1 sm=1 tr=0 ts=69b30a14 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=855S8uPTkML1Oy45N9_h:22 a=VabnemYjAAAA:8 a=o4lYeIOqc9WSjTI1-WMA:9
 a=O8hF6Hzn-FEA:10 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: 2FnSa1b1xUyjhSFio7_aR8yhzALZdgDt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Spamd-Bar: --
X-MailFrom: prvs=1531796282=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QEWB7IXVPUHMUG7S34T6LWNA5FJKIVN4
X-Message-ID-Hash: QEWB7IXVPUHMUG7S34T6LWNA5FJKIVN4
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:14 +0000
CC: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 PATCH 06/10] vfio/pci: Remove vfio_pci_zap_bars()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QEWB7IXVPUHMUG7S34T6LWNA5FJKIVN4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[934];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.192];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,meta.com:mid,meta.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 303CB430F5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

vfio_pci_zap_bars() and the wrapper
vfio_pci_zap_and_down_write_memory_lock() are redundant as of
"vfio/pci: Convert BAR mmap() to use a DMABUF".  The DMABUFs used for
BAR mappings already zap PTEs via the existing
vfio_pci_dma_buf_move(), which notifies changes to the BAR space
(e.g. around reset).

Remove the old functions, and the various points needing to zap BARs
become slightly cleaner.

Signed-off-by: Matt Evans <mattev@meta.com>
---
 drivers/vfio/pci/vfio_pci_config.c | 18 ++++++------------
 drivers/vfio/pci/vfio_pci_core.c   | 30 +++++++-----------------------
 drivers/vfio/pci/vfio_pci_priv.h   |  1 -
 3 files changed, 13 insertions(+), 36 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_config.c b/drivers/vfio/pci/vfio_pci_config.c
index b4e39253f98d..c7ed28be1104 100644
--- a/drivers/vfio/pci/vfio_pci_config.c
+++ b/drivers/vfio/pci/vfio_pci_config.c
@@ -590,12 +590,9 @@ static int vfio_basic_config_write(struct vfio_pci_core_device *vdev, int pos,
 		virt_mem = !!(le16_to_cpu(*virt_cmd) & PCI_COMMAND_MEMORY);
 		new_mem = !!(new_cmd & PCI_COMMAND_MEMORY);
 
-		if (!new_mem) {
-			vfio_pci_zap_and_down_write_memory_lock(vdev);
+		down_write(&vdev->memory_lock);
+		if (!new_mem)
 			vfio_pci_dma_buf_move(vdev, true);
-		} else {
-			down_write(&vdev->memory_lock);
-		}
 
 		/*
 		 * If the user is writing mem/io enable (new_mem/io) and we
@@ -712,12 +709,9 @@ static int __init init_pci_cap_basic_perm(struct perm_bits *perm)
 static void vfio_lock_and_set_power_state(struct vfio_pci_core_device *vdev,
 					  pci_power_t state)
 {
-	if (state >= PCI_D3hot) {
-		vfio_pci_zap_and_down_write_memory_lock(vdev);
+	down_write(&vdev->memory_lock);
+	if (state >= PCI_D3hot)
 		vfio_pci_dma_buf_move(vdev, true);
-	} else {
-		down_write(&vdev->memory_lock);
-	}
 
 	vfio_pci_set_power_state(vdev, state);
 	if (__vfio_pci_memory_enabled(vdev))
@@ -908,7 +902,7 @@ static int vfio_exp_config_write(struct vfio_pci_core_device *vdev, int pos,
 						 &cap);
 
 		if (!ret && (cap & PCI_EXP_DEVCAP_FLR)) {
-			vfio_pci_zap_and_down_write_memory_lock(vdev);
+			down_write(&vdev->memory_lock);
 			vfio_pci_dma_buf_move(vdev, true);
 			pci_try_reset_function(vdev->pdev);
 			if (__vfio_pci_memory_enabled(vdev))
@@ -993,7 +987,7 @@ static int vfio_af_config_write(struct vfio_pci_core_device *vdev, int pos,
 						&cap);
 
 		if (!ret && (cap & PCI_AF_CAP_FLR) && (cap & PCI_AF_CAP_TP)) {
-			vfio_pci_zap_and_down_write_memory_lock(vdev);
+			down_write(&vdev->memory_lock);
 			vfio_pci_dma_buf_move(vdev, true);
 			pci_try_reset_function(vdev->pdev);
 			if (__vfio_pci_memory_enabled(vdev))
diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index 41224efa58d8..9e9ad97c2f7f 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -319,7 +319,7 @@ static int vfio_pci_runtime_pm_entry(struct vfio_pci_core_device *vdev,
 	 * The vdev power related flags are protected with 'memory_lock'
 	 * semaphore.
 	 */
-	vfio_pci_zap_and_down_write_memory_lock(vdev);
+	down_write(&vdev->memory_lock);
 	vfio_pci_dma_buf_move(vdev, true);
 
 	if (vdev->pm_runtime_engaged) {
@@ -1229,7 +1229,7 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
 	if (!vdev->reset_works)
 		return -EINVAL;
 
-	vfio_pci_zap_and_down_write_memory_lock(vdev);
+	down_write(&vdev->memory_lock);
 
 	/*
 	 * This function can be invoked while the power state is non-D0. If
@@ -1613,22 +1613,6 @@ ssize_t vfio_pci_core_write(struct vfio_device *core_vdev, const char __user *bu
 }
 EXPORT_SYMBOL_GPL(vfio_pci_core_write);
 
-static void vfio_pci_zap_bars(struct vfio_pci_core_device *vdev)
-{
-	struct vfio_device *core_vdev = &vdev->vdev;
-	loff_t start = VFIO_PCI_INDEX_TO_OFFSET(VFIO_PCI_BAR0_REGION_INDEX);
-	loff_t end = VFIO_PCI_INDEX_TO_OFFSET(VFIO_PCI_ROM_REGION_INDEX);
-	loff_t len = end - start;
-
-	unmap_mapping_range(core_vdev->inode->i_mapping, start, len, true);
-}
-
-void vfio_pci_zap_and_down_write_memory_lock(struct vfio_pci_core_device *vdev)
-{
-	down_write(&vdev->memory_lock);
-	vfio_pci_zap_bars(vdev);
-}
-
 u16 vfio_pci_memory_lock_and_enable(struct vfio_pci_core_device *vdev)
 {
 	u16 cmd;
@@ -2487,10 +2471,11 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
 		}
 
 		/*
-		 * Take the memory write lock for each device and zap BAR
-		 * mappings to prevent the user accessing the device while in
-		 * reset.  Locking multiple devices is prone to deadlock,
-		 * runaway and unwind if we hit contention.
+		 * Take the memory write lock for each device and
+		 * revoke all DMABUFs, which will prevent any access
+		 * to the device while in reset.  Locking multiple
+		 * devices is prone to deadlock, runaway and unwind if
+		 * we hit contention.
 		 */
 		if (!down_write_trylock(&vdev->memory_lock)) {
 			ret = -EBUSY;
@@ -2498,7 +2483,6 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
 		}
 
 		vfio_pci_dma_buf_move(vdev, true);
-		vfio_pci_zap_bars(vdev);
 	}
 
 	if (!list_entry_is_head(vdev,
diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
index 37ece9b4b5bd..e201c96bbb14 100644
--- a/drivers/vfio/pci/vfio_pci_priv.h
+++ b/drivers/vfio/pci/vfio_pci_priv.h
@@ -78,7 +78,6 @@ void vfio_config_free(struct vfio_pci_core_device *vdev);
 int vfio_pci_set_power_state(struct vfio_pci_core_device *vdev,
 			     pci_power_t state);
 
-void vfio_pci_zap_and_down_write_memory_lock(struct vfio_pci_core_device *vdev);
 u16 vfio_pci_memory_lock_and_enable(struct vfio_pci_core_device *vdev);
 void vfio_pci_memory_unlock_and_restore(struct vfio_pci_core_device *vdev,
 					u16 cmd);
-- 
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
