Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBK+AsNf5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BED86430EFA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3704404DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:17:53 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 80123402D3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 18:46:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=pYL0HTRz;
	spf=pass (lists.linaro.org: domain of "prvs=1531796282=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=1531796282=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CH37c93822056;
	Thu, 12 Mar 2026 11:46:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=lyheLk9Wvs0fvD4s1b5iebQGWNGSW8pkLBga2jwoIMs=; b=pYL0HTRziDvE
	ieE6PsbkKCshsCYWNDD1wtNcjCEhoUDkzVT5WnfN5H+Urq+PoLq9kJ7m21Tcsulc
	CE41Dz6/6BW5PB+oJZhpw54Bp8AYSxCxYwDjjfR17KL8STWRYwR/1cX/HuWqN1Ed
	wQytqiM++CkCBXQhbarMSlzz7PpJjfAYm/76oCYJ1+2gX66Cu0q3/qMrBvGPFfAz
	AhpWlckCOXKsEdfaCp+iMNzxlaGCwY9LWFOSRjMVgu0pX7ZAxpgKAgpKoRHv1MQy
	h1s+sdnzTvGdWJZEXnR2lXiCehzAqZD/OaGTQsCD3RH7bXE+lGN/6DZcXxZXKQ58
	FiiQxXP11Q==
Received: from mail.thefacebook.com ([163.114.134.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4cv1j2j8et-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 12 Mar 2026 11:46:30 -0700 (PDT)
Received: from localhost (2620:10d:c085:208::7cb7) by mail.thefacebook.com
 (2620:10d:c08b:78::c78f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.35; Thu, 12 Mar
 2026 18:46:29 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        Mahmoud Adam
	<mngyadam@amazon.de>,
        David Matlack <dmatlack@google.com>
Date: Thu, 12 Mar 2026 11:45:59 -0700
Message-ID: <20260312184613.3710705-2-mattev@meta.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260312184613.3710705-1-mattev@meta.com>
References: <20260312184613.3710705-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c085:208::7cb7]
X-Proofpoint-GUID: PvXIK7001yah_q_sVCLHPSoZDp3mLo2e
X-Authority-Analysis: v=2.4 cv=ALq93nRn c=1 sm=1 tr=0 ts=69b30a06 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=crHB47gyY4rKiduisYu9:22 a=VabnemYjAAAA:8 a=DkskzI1_-XwU4soQF-MA:9
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1MSBTYWx0ZWRfX8djASQHH+VAA
 ltjJlqmH55EDbWfxbbJ7FyTuvxqN6vMHePt/cF2tSVoxk6bkjkTwC8QjvpTwsT+RD9YMljBSaK/
 36OsJTKf1QwsIQaUMPiSF0WgBUCs2IfZNBpOevxB+IcKzDPftiEmHtW6c7yvvertvgCTar5vur1
 d2Mhx0mRzrpATABoUz7byz5ekuDjE2ULkxl/3npaeLDswE2K4nDrSqN/I/sncUDG5VuHQ+Vz0ZF
 2hZ80M9bF0gZ7E+jmCV9iL4lqBZZnzS1quxPjHn745eOrle3T8vm3yZsmn5P9cEhBCRpVhMK5s1
 12YSduE3T56nfBeqmjxXEz3yiR4C5SKEaqAB1/E7IaifPUB/T+dvyG+IeWodMtzH6kEBwUS3X5s
 rgKXzYRfW8SLe+g6Xetq6+3eZ5KAYhPBIwJMjJbd8ZGGYXHd7RTGjfl20sHcfL54eCH/Ck4PiB+
 Mzp/l+X46195EIqFNWg==
X-Proofpoint-ORIG-GUID: PvXIK7001yah_q_sVCLHPSoZDp3mLo2e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Spamd-Bar: --
X-MailFrom: prvs=1531796282=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GSU44JO6JMVVFX6A43W4YX26NHI2NZ2R
X-Message-ID-Hash: GSU44JO6JMVVFX6A43W4YX26NHI2NZ2R
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:10 +0000
CC: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 PATCH 01/10] vfio/pci: Set up VFIO barmap before creating a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GSU44JO6JMVVFX6A43W4YX26NHI2NZ2R/>
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
	NEURAL_HAM(-0.00)[-0.169];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:mid,meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: BED86430EFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A DMABUF exports access to BAR resources which need to be requested
before the DMABUF is handed out.  Usually the resources are requested
when setting up the barmap when the VFIO device fd is mmap()ed, but
there's no guarantee that's done before a DMABUF is created.

Set up the barmap (and so request resources) in the DMABUF-creation
path.

Fixes: 5d74781ebc86c ("vfio/pci: Add dma-buf export support for MMIO regions")
Signed-off-by: Matt Evans <mattev@meta.com>
---
 drivers/vfio/pci/vfio_pci_dmabuf.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index 3a803923141b..44558cc2948e 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -269,6 +269,17 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
 		goto err_free_priv;
 	}
 
+	/*
+	 * Just like the vfio_pci_core_mmap() path, we need to ensure
+	 * PCI regions have been requested before returning DMABUFs
+	 * that reference them.  It's possible to create a DMABUF for
+	 * a BAR without the BAR having already been mmap()ed.  The
+	 * barmap setup requests the regions for us:
+	 */
+	ret = vfio_pci_core_setup_barmap(vdev, get_dma_buf.region_index);
+	if (ret)
+		goto err_free_phys;
+
 	priv->vdev = vdev;
 	priv->nr_ranges = get_dma_buf.nr_ranges;
 	priv->size = length;
-- 
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
