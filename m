Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCnMHMhf5mkqvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:18:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 246EC430F09
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:18:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A1F9404EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:17:59 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 644AA402E0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 18:46:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=AKkjswGo;
	spf=pass (lists.linaro.org: domain of "prvs=1531796282=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=1531796282=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CHrWqW2853764;
	Thu, 12 Mar 2026 11:46:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=yABRgDa4Smt7xH35V/HV2UTHouYqNi0/j2J9K5YgcvI=; b=AKkjswGoDJeJ
	3LFVTzysksvweic7lsg+Q281vwoLUjw5DyDTrrb+jaTG9HKMB/vURPWqdTGsheJW
	mnjkiuo6TgTIQXZ2b5MjJNNOTOlLNa/CAFWuj9yTaa0NOdNSynTpEukQMHT8wJro
	Oxf++2ulrANLf+S4HXIRVMUrE5ZWDvzTuUWeauYrOvBuN0vRpt5wMN0M7BV9tUmS
	ZJ4OvOqi4Tc8GWIoQ+aV+z5YaCRvIXL1hESLHawyPtIDSixBk4NjxZjNClKFXYCI
	UMEYKzr4Ycz1jTDeYVBQsESvL0RNwiD1VinZPJENU6fv3O5pPbqq9gyjkK4UzIux
	kXZGn9k3nw==
Received: from mail.thefacebook.com ([163.114.134.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4cv29nh38v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 12 Mar 2026 11:46:32 -0700 (PDT)
Received: from localhost (2620:10d:c085:108::4) by mail.thefacebook.com
 (2620:10d:c08b:78::2ac9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.35; Thu, 12 Mar
 2026 18:46:32 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        Mahmoud Adam
	<mngyadam@amazon.de>,
        David Matlack <dmatlack@google.com>
Date: Thu, 12 Mar 2026 11:46:00 -0700
Message-ID: <20260312184613.3710705-3-mattev@meta.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260312184613.3710705-1-mattev@meta.com>
References: <20260312184613.3710705-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c085:108::4]
X-Proofpoint-GUID: T8Yuc9PQqL6Z-6JxP8LV4CMEZQgXG9hN
X-Proofpoint-ORIG-GUID: T8Yuc9PQqL6Z-6JxP8LV4CMEZQgXG9hN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1MSBTYWx0ZWRfX7XzcAXsQ5Hr/
 waDgvCGVXfyPZksrBh7BebX5id10i4wDMWPzJC1L0EbTSXpHYLMfpRY4PGPcXSdVwkI+5HxdsjQ
 xYnUqKCqgBd3UcZEJiwK3SrWO50h1PgXcXaxmfjp8yKwI0H/Z8BAUZC4buJNfAl4UaqJQSwdYrB
 afVvUp0fU2aUJIXRD/+HsmMAAvqtnfA3kidQflYpbq1IoK+6nGkuyWzcNPM2KN84Fbqv9fJkTjh
 kc9Mw76bhQAVQQ7qIn3CKclIT+jIc9UATBYZEgTSG8vAojpJO9yBqVsW9uHx4CJqeMfGSA+lig/
 Qt+yJtfXJGF1MY7bCrUrTP5eZvpiOwmb7T3lNqeWqfKlGUIk5SblFPojq7wbpCylvoa2VHaiMiV
 c6Os+n/hClffeC6nXzOMLTI5/zRGJS+4Fy52RYPGqXfUOu2DVoXvOUDns77xFc35Ca3G+JI8QdE
 zT3ZUoo4hVc2qAy6Ing==
X-Authority-Analysis: v=2.4 cv=FvYIPmrq c=1 sm=1 tr=0 ts=69b30a09 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=03ozwUkBphtHgyqjj1sw:22 a=VabnemYjAAAA:8 a=4DpnPWOeRWuCnonzwFEA:9
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Spamd-Bar: --
X-MailFrom: prvs=1531796282=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ICLCPTDO53PZ53T3QOWVFMRERV3ION5L
X-Message-ID-Hash: ICLCPTDO53PZ53T3QOWVFMRERV3ION5L
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:11 +0000
CC: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 PATCH 02/10] vfio/pci: Clean up DMABUFs before disabling function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ICLCPTDO53PZ53T3QOWVFMRERV3ION5L/>
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
	NEURAL_HAM(-0.00)[-0.205];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:mid,meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 246EC430F09
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On device shutdown, make vfio_pci_core_close_device() call
vfio_pci_dma_buf_cleanup() before the function is disabled via
vfio_pci_core_disable().  This ensures that all access via DMABUFs is
revoked before the function's BARs become inaccessible.

This fixes an issue where, if the function is disabled first, a tiny
window exists in which the function's MSE is cleared and yet BARs
could still be accessed via the DMABUF.  The resources would also be
freed and up for grabs by a different driver.

Fixes: 5d74781ebc86c ("vfio/pci: Add dma-buf export support for MMIO regions")
Signed-off-by: Matt Evans <mattev@meta.com>
---
 drivers/vfio/pci/vfio_pci_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index d43745fe4c84..f9ed3374d268 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -734,10 +734,10 @@ void vfio_pci_core_close_device(struct vfio_device *core_vdev)
 #if IS_ENABLED(CONFIG_EEH)
 	eeh_dev_release(vdev->pdev);
 #endif
-	vfio_pci_core_disable(vdev);
-
 	vfio_pci_dma_buf_cleanup(vdev);
 
+	vfio_pci_core_disable(vdev);
+
 	mutex_lock(&vdev->igate);
 	vfio_pci_eventfd_replace_locked(vdev, &vdev->err_trigger, NULL);
 	vfio_pci_eventfd_replace_locked(vdev, &vdev->req_trigger, NULL);
-- 
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
