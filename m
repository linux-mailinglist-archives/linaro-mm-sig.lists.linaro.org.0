Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oER1LV8Y4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:11:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F81C41267E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:11:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 639D8454AF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:58 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id A4A584010F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 20:22:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=Ro+ZAfv3;
	spf=pass (lists.linaro.org: domain of "prvs=05171a1cd1=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=05171a1cd1=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
	by m0089730.ppops.net (8.18.1.11/8.18.1.11) with ESMTP id 61QHgUEc1069359;
	Thu, 26 Feb 2026 12:22:45 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=l6eVE4IIlQ2xaNQUCFG/n3h8OW7Ucx8dDtjDv6E+Jjs=; b=Ro+ZAfv3aURa
	otkB5+Xl4tOzfJLXIrfoK35UVPYme0qKfjHf3pM/tPaVVMBdNKIRJSxCPkfwwfhv
	9jiU+GP4IHqH6uMUPDODFXpmLWSWIyVrZlI69Kl2wohCL+S2QxOIpSXWMzjJ6SGW
	Lvy42qbnemzbo6LHc2amIBfl43NKaj8WLSsyW2Wl+BlpBG7rWHExCv0Pax1KI5nS
	9Q7Ic1N8pLFsmeeGHbTbWR1AnmSUKRrG0bPemC03HAyA8rSlCthUCusNH6SLXAkZ
	fsxfZgBVz8I01VwFbbiNAJtjYo/P8a3uR1cGGHLEYV5zPJkr1tud1HIstc7SyYrx
	5jVt7c2rAg==
Received: from mail.thefacebook.com ([163.114.134.16])
	by m0089730.ppops.net (PPS) with ESMTPS id 4cjnjmd8xh-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 26 Feb 2026 12:22:45 -0800 (PST)
Received: from localhost (2620:10d:c085:208::7cb7) by mail.thefacebook.com
 (2620:10d:c08b:78::2ac9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.35; Thu, 26 Feb
 2026 20:22:43 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        Mahmoud Adam
	<mngyadam@amazon.de>,
        David Matlack <dmatlack@google.com>
Date: Thu, 26 Feb 2026 12:21:57 -0800
Message-ID: <20260226202211.929005-2-mattev@meta.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226202211.929005-1-mattev@meta.com>
References: <20260226202211.929005-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c085:208::7cb7]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDE4NiBTYWx0ZWRfX05FulneI4bIg
 +7g+ADgjmslrOy3Y6zyvkpP4uLK92e2XPCJoDVOnXju0UdbaphcqJJQmTBr9lgy3LxvR8R3vCqw
 y94aRZUl5oheUkI6Tujr4n0Sd6Tv5R4PjlAYtiKI9nb8GLdMJWSU2++5gwcVWSkskdKafOx4mLC
 8//zuPVN2h2x6GcSViKmNXhWaSM1Fou7juakmnNJad2qMhA2tJRs3zKyvFvC1ZXNEeSiatXpD5F
 WKXD/Wa7Ay8n/tk803hAgxBdDvzcivwbdZiwWFswENNPYe103iklgQbecmTHhEnCRVDIYaC4EII
 wqjP2ei0KRHJefv0+qchDcr0q/CvVivN2NS/l8QEWZgEDyIfhhCN/uDn5uu4I5HqDDlopth5U3I
 7QfqDH1IVxZib83QyQJO+BWPmhVwqoUyq2KvP1Wu9CNpTM2huXCKTXKmBVK3AjNne+N5O2/0saj
 gKHVaysBOdm+c6SOw8A==
X-Proofpoint-ORIG-GUID: AUPBuU8COn3qwoYaqyntQk0wsBNevAIo
X-Authority-Analysis: v=2.4 cv=B/m0EetM c=1 sm=1 tr=0 ts=69a0ab95 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=TqTIxcMBvpabANa2:21 a=HzLeVaNsDn8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VabnemYjAAAA:8
 a=2V9JFKNtuBlljh9624AA:9 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: AUPBuU8COn3qwoYaqyntQk0wsBNevAIo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_02,2026-02-26_01,2025-10-01_01
X-Spamd-Bar: --
X-MailFrom: prvs=05171a1cd1=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4WEXFQRALGJNURXVS2PKUOQG2FHALG5T
X-Message-ID-Hash: 4WEXFQRALGJNURXVS2PKUOQG2FHALG5T
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:50:58 +0000
CC: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 1/7] vfio/pci: Ensure VFIO barmap is set up before creating a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WEXFQRALGJNURXVS2PKUOQG2FHALG5T/>
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
	NEURAL_HAM(-0.00)[-0.784];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,meta.com:mid,meta.com:email]
X-Rspamd-Queue-Id: 4F81C41267E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A DMABUF exports access to BAR resources which need to be requested
before the DMABUF is handed out.  Usually the resources are requested
when setting up the barmap when the VFIO device fd is mmap()ed, but
there's no guarantee that happens before a DMABUF is created.

Set up the barmap (and so request resources) in the DMABUF-creation
path.

Fixes: 5d74781ebc86c ("vfio/pci: Add dma-buf export support for MMIO regions")
Signed-off-by: Matt Evans <mattev@meta.com>
---
 drivers/vfio/pci/vfio_pci_dmabuf.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index 4be4a85005cb..46ab64fbeb19 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -258,6 +258,17 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
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
