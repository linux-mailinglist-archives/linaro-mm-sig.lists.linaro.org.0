Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AM+FlAY4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:11:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CBABE412677
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:11:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF2E74549C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:42 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id DEB2C3F9BF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 20:22:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=KIUObFs6;
	spf=pass (lists.linaro.org: domain of "prvs=05171a1cd1=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=05171a1cd1=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
	by m0089730.ppops.net (8.18.1.11/8.18.1.11) with ESMTP id 61QHqVfh1068162;
	Thu, 26 Feb 2026 12:22:47 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=wgkQLaliju+4WFlO7qLaX85dVVOBwH0k4aL0NBvLBFY=; b=KIUObFs6mawO
	H8gW175OMdT7S//aDU67kzttjNBMHxP7P4BFzUTYXm26J9j4fVHsoucbNf/DY+pB
	MuBO+ADrIuEGtnjAyGVw0n91X/1JTp11lMGfEiitC7umRTZIavLOKYUq9oeHT1gE
	0rUPJjqRr2x0dYv3d70A/CEEA99t75Voqzgn2ehpW3wGOzM5cOBQjdFuZbFfFaEH
	hlYDgy2UzBf3QfVluh17AKrGOhiH+4YVWoa8biTSoLa2YQlctCcVcQ+3CfbRc5XO
	6owI48m10DRKX/Cyy8D7SVNxLpkuO4SQon0piBZpZ63v4CHZyW27yxuMEnAC0Fl7
	Ofjh4gqxGw==
Received: from mail.thefacebook.com ([163.114.134.16])
	by m0089730.ppops.net (PPS) with ESMTPS id 4cjnjmd8y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 26 Feb 2026 12:22:47 -0800 (PST)
Received: from localhost (2620:10d:c085:208::f) by mail.thefacebook.com
 (2620:10d:c08b:78::2ac9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.35; Thu, 26 Feb
 2026 20:22:46 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        Mahmoud Adam
	<mngyadam@amazon.de>,
        David Matlack <dmatlack@google.com>
Date: Thu, 26 Feb 2026 12:21:58 -0800
Message-ID: <20260226202211.929005-3-mattev@meta.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226202211.929005-1-mattev@meta.com>
References: <20260226202211.929005-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c085:208::f]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDE4NiBTYWx0ZWRfX/tneem6RxYSY
 I63y2vdjAzVgmXqrSbpAn9wulSCZI9FtA/q8vCnvkyYZLcEsT5oTzQEj6M6vln7/2HgM12Ve4kq
 TjK2sLyRtY89P7N7j0PDW3XDE9U5QMhKh19n7tlc+X5KDm8d9p1bJEdz7Jnu+7Kv1DaggvEpQVz
 s6KVs3PQcPOqFATCUKBddJFPwd2d0iVLdCWz24BAJK0I54HO5qnF5xdsBkXZkY24Nc9gUBaZKV3
 DmLDdRwTr4V4KIabstnOlq+a9IWs6Sp/vArSukdVwe2UftaHXwGxaXgVgeXYUDp2g+S0SnR/XdL
 ArJ7tVkxsP3JoOTU6TuznHmAnAdI3PIqpDC43TsKUe/c6yM9y7PLOtlJ2i3oLEHtrLQXhlArN8Z
 5sfdSLxYLMAxv/kESr/r/CPMvzv1NHahHW4dibZj450rEk2+kzSZkbYdzmisDNWfyg9+zMryTex
 poMP2xMKKHpHd5VOIDg==
X-Proofpoint-ORIG-GUID: ZCwoLGeJgQMU9zaWzcqZlJwB0q3GSBt_
X-Authority-Analysis: v=2.4 cv=B/m0EetM c=1 sm=1 tr=0 ts=69a0ab97 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=HzLeVaNsDn8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=VabnemYjAAAA:8 a=4DpnPWOeRWuCnonzwFEA:9
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: ZCwoLGeJgQMU9zaWzcqZlJwB0q3GSBt_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_02,2026-02-26_01,2025-10-01_01
X-Spamd-Bar: --
X-MailFrom: prvs=05171a1cd1=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XRZWHASRNITSZU2LHAB3ORRUBTEOATAX
X-Message-ID-Hash: XRZWHASRNITSZU2LHAB3ORRUBTEOATAX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:50:58 +0000
CC: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 2/7] vfio/pci: Clean up DMABUFs before disabling function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRZWHASRNITSZU2LHAB3ORRUBTEOATAX/>
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
	DATE_IN_PAST(1.00)[1172];
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
	NEURAL_HAM(-0.00)[-0.824];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid,meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: CBABE412677
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On device shutdown, make vfio_pci_core_close_device() call
vfio_pci_dma_buf_cleanup() before the function is disabled via
vfio_pci_core_disable().  This ensures that any access to DMABUFs is
revoked (and importers act on move_notify()) before the function's
BARs become inaccessible.

This fixes an issue where, if the function is disabled first, a tiny
window exists in which the function's MSE is cleared and yet BARs
could still be accessed via the DMABUF.  Worse, the resources would
also be free/up for grabs by a different driver.

Fixes: 5d74781ebc86c ("vfio/pci: Add dma-buf export support for MMIO regions")
Signed-off-by: Matt Evans <mattev@meta.com>
---
 drivers/vfio/pci/vfio_pci_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
index 3a11e6f450f7..8d0e3605fbc7 100644
--- a/drivers/vfio/pci/vfio_pci_core.c
+++ b/drivers/vfio/pci/vfio_pci_core.c
@@ -726,10 +726,10 @@ void vfio_pci_core_close_device(struct vfio_device *core_vdev)
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
