Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDDeFf5l5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D1F431F67
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04958404AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:44:29 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 605A63F9A4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2026 13:18:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=p7vUccaA;
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=25666d518a=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=25666d518a=mattev@meta.com"
Received: from pps.filterd (m0528004.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63FLgjRH3451039;
	Thu, 16 Apr 2026 06:18:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=gniy3uTDgAbZRbr2JvoSRDyzFG9cFS4I3MN/SyLSvY4=; b=p7vUccaANRfh
	uTeB35EDElC5PodjZQnqgRVrRBLLyEHsU8GW85yEenF7szOfkyrXbtuRG3Jkq13r
	JjSlyb/QuyfAQyKSwPcj8vh3c23QLtR3tp/dj1lNelftY1O+bHKpML8dYFbNqar/
	Q7cK0zguBdtJGh/RLaW3GFP2gGGKtfvkMdNRyEeO8gZlKMcwTKkDnv1MAqq7MqZm
	T0FpEv6RpMdR7emzzXsmvxM0lbXeZoOiSX+1Rh0Ol5JpZ74Ph+1dAJtidNROBkOW
	V7VKHltLd59wyuHJ9q0lQgNo9TwG1EfTCfMbiPobkZ+ZAfJJpFtrT7AF00gWwNM3
	JTYdpSPsow==
Received: from maileast.thefacebook.com ([163.114.135.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dh84tt04h-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Apr 2026 06:18:29 -0700 (PDT)
Received: from localhost (2620:10d:c0a8:1b::30) by mail.thefacebook.com
 (2620:10d:c0a9:6f::237c) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.37; Thu, 16 Apr
 2026 13:18:28 +0000
From: Matt Evans <mattev@meta.com>
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu, 16 Apr 2026 06:17:44 -0700
Message-ID: <20260416131815.2729131-2-mattev@meta.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260416131815.2729131-1-mattev@meta.com>
References: <20260416131815.2729131-1-mattev@meta.com>
MIME-Version: 1.0
X-Originating-IP: [2620:10d:c0a8:1b::30]
X-Authority-Analysis: v=2.4 cv=DeknbPtW c=1 sm=1 tr=0 ts=69e0e1a5 cx=c_pps
 a=MfjaFnPeirRr97d5FC5oHw==:117 a=MfjaFnPeirRr97d5FC5oHw==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=GbPsI2Ihf5RTnMjR_gZv:22 a=VabnemYjAAAA:8 a=3E3Mp2m-XbClQYvposQA:9
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE2MDEyNiBTYWx0ZWRfX6FrByzlxctLn
 wXqFi+OEBYpJxxVODVtu6SpBggSjDgAiAHLcltsTCM/zsc2q7fMcowKkqBvDg+F3mdxiJjRku4x
 moO+QPW9snLGiEsDNnJy3N4zXUvQ2tVR3cpwKAua53JLjzBoycprZupI/4rVZKfEhcXVUouMnNr
 HNgbDSgN5azCjjyCQJnRB5rYl9X0y8NiIRX0b3nEjUbmGFa0AR9XfM8UxcR8FlamtzUv0FvjYM9
 eFLtMeY0dqRCzbm8yw6J91BscZDm6VBZq8fkoO8Xd/htuaf2ohoC1gG+ySaqyDnehcclWiF15oi
 Kc+upQye6m2ofs5zKo/O7qskgsnANL8dQUhs+RAzsF1KCLZKAXsxkGg523KhhJAYk+kvCQuw5lU
 YiVuU1oPCxsujxrnm3eIAF+VQgc3QX2O7kpDTJH6c8S2iuAkC5KQcvu2nUQ5WYjOzJLsHad0orA
 AMb08PIytGU/JZ7BJEw==
X-Proofpoint-GUID: rldl6TLxiGrFUZss98IienREl0Moymje
X-Proofpoint-ORIG-GUID: rldl6TLxiGrFUZss98IienREl0Moymje
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-16_03,2026-04-16_02,2025-10-01_01
X-Spamd-Bar: --
X-MailFrom: prvs=25666d518a=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5Z36SRBMTOIGNHABHVIW6VZGX547ULDE
X-Message-ID-Hash: 5Z36SRBMTOIGNHABHVIW6VZGX547ULDE
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:36 +0000
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/9] vfio/pci: Fix vfio_pci_dma_buf_cleanup() double-put
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5Z36SRBMTOIGNHABHVIW6VZGX547ULDE/>
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
	DATE_IN_PAST(1.00)[100];
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
	NEURAL_HAM(-0.00)[-0.190];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,meta.com:mid,meta.com:email]
X-Rspamd-Queue-Id: 06D1F431F67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

vfio_pci_dma_buf_cleanup() assumed all VFIO device DMABUFs need to be
revoked.  However, if vfio_pci_dma_buf_move() revokes DMABUFs before
the fd/device closes, then vfio_pci_dma_buf_cleanup() would do a
second/underflowing kref_put() then wait_for_completion() on a
completion that never fires.  Fixed by predicating on revocation
status.

This could happen if PCI_COMMAND_MEMORY is cleared before closing the
device fd (but the scenario is more likely to hit when future commits
add more methods to revoke DMABUFs).

Fixes: 1a8a5227f2299 ("vfio: Wait for dma-buf invalidation to complete")
Signed-off-by: Matt Evans <mattev@meta.com>
---

(Just a fix, but later "vfio/pci: Convert BAR mmap() to use a DMABUF"
and "vfio/pci: Permanently revoke a DMABUF on request" depend on this
context, so including in this series.)

drivers/vfio/pci/vfio_pci_dmabuf.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index 281ba7d69567..04478b7415a0 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -395,20 +395,25 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
 
 	down_write(&vdev->memory_lock);
 	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
+		bool was_revoked;
+
 		if (!get_file_active(&priv->dmabuf->file))
 			continue;
 
 		dma_resv_lock(priv->dmabuf->resv, NULL);
 		list_del_init(&priv->dmabufs_elm);
 		priv->vdev = NULL;
+		was_revoked = priv->revoked;
 		priv->revoked = true;
 		dma_buf_invalidate_mappings(priv->dmabuf);
 		dma_resv_wait_timeout(priv->dmabuf->resv,
 				      DMA_RESV_USAGE_BOOKKEEP, false,
 				      MAX_SCHEDULE_TIMEOUT);
 		dma_resv_unlock(priv->dmabuf->resv);
-		kref_put(&priv->kref, vfio_pci_dma_buf_done);
-		wait_for_completion(&priv->comp);
+		if (!was_revoked) {
+			kref_put(&priv->kref, vfio_pci_dma_buf_done);
+			wait_for_completion(&priv->comp);
+		}
 		vfio_device_put_registration(&vdev->vdev);
 		fput(priv->dmabuf->file);
 	}
-- 
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
