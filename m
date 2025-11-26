Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ5cJnUA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F71F410CD4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F4384122A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:56 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 112F93F859
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 01:12:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fb.com header.s=s2048-2025-q2 header.b=4zYeDp57;
	spf=pass (lists.linaro.org: domain of "prvs=74256e3cee=amastro@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=74256e3cee=amastro@meta.com";
	dmarc=pass (policy=reject) header.from=fb.com
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APHf2Rl786424;
	Tue, 25 Nov 2025 17:11:46 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=s2048-2025-q2; bh=0pwajfJmeTimpc9k6J
	HG6Zxex5YoS5wwfaShFryGPJI=; b=4zYeDp57KcBNA3YeNGWPs58Hr8F7AQ0S/M
	guQ76Y3JV9xYiMROhiaa817hfCV7iah8M71gcbf35S/NXnYg3AiQBM3Mm+Zg3yVO
	xfg5dib7uqc1olS565bn5kqgusWa3r85wtIwhl7aRo6RrHaLc1Vc26C5oGu/2jv/
	XiXojQgpd9QOguDmMTSOK5gm0PU3RXcSSu37RfgnP/G1488nkJ9X+G4SMGqkJMb2
	/VWvDOV8A/+2bad6jxLLYGc6mmAYvSVYFSkP5dV7PtfS1XnpTfQRIAdH4LNGySIL
	7EaxjdVBqexlz7GHB27foLAX/SlZIUmyxttekMDCWppghDaCvReQ==
Received: from maileast.thefacebook.com ([163.114.135.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4anh2qu47c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 25 Nov 2025 17:11:46 -0800 (PST)
Received: from devgpu015.cco6.facebook.com (2620:10d:c0a8:1c::1b) by
 mail.thefacebook.com (2620:10d:c0a9:6f::237c) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Wed, 26 Nov 2025 01:11:45 +0000
From: Alex Mastro <amastro@fb.com>
Date: Tue, 25 Nov 2025 17:11:18 -0800
MIME-Version: 1.0
Message-ID: <20251125-dma-buf-overflow-v1-1-b70ea1e6c4ba@fb.com>
X-B4-Tracking: v=1; b=H4sIALVTJmkC/x3MwQmEMBAF0FaGf3bAJEQkrSweXJ3ogJolQV0Qe
 xd8BbwLRbJKQaALWQ4tmjYEMhVhmPttEtYRgWBr642xnse15+8eOR2S45JOFme9i6ZuxTWoCL8
 sUf9v+enu+wHmIfnEYgAAAA==
X-Change-ID: 20251125-dma-buf-overflow-e3253f108e36
To: Sumit Semwal <sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>,
        Alex Williamson <alex@shazbot.org>
X-Mailer: b4 0.14.3
X-Originating-IP: [2620:10d:c0a8:1c::1b]
X-Proofpoint-GUID: q8INm3I2xOg6cx0iIU4Kc3VRApXBjpn6
X-Proofpoint-ORIG-GUID: q8INm3I2xOg6cx0iIU4Kc3VRApXBjpn6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDAwNyBTYWx0ZWRfX3XhekP/4jYMT
 h3vlGZOu7PIVj0MxvIyAWPxvb0dUEReVbwEsSMmKyToaIx2aOj91g42tgfrXUib6UyLFSWNr8qf
 7ODlUPowzwVsbZKHSPxA1Cit7LdE9nHT2mTRsi8mItZ6+MoE3NRow2svUKQY+gt6NBjPQ/KyOdY
 I450z/LaPqbAkuP6NwG8DWeOHoVdX/TXt9ZC9SX7f/j6vz/doHk2l4DLH+uLL8q0bal5fz65EAD
 J99aaYXO7w5uv3R5kPgOS9OxKZHevVk1EL5T/fU+nAci7mPyq62sruU+NWuQy4FTLziGRoAkvq7
 o++VYVWmnJ/baF8BRLlL+SGtwCJSJVVR7QJOv+dSVhTPlam+v2x3cWVV0kurbTljtP6emOpAsa2
 iLJVjmJp80u6z0mI7C31SW+LSuiglg==
X-Authority-Analysis: v=2.4 cv=F9dat6hN c=1 sm=1 tr=0 ts=692653d2 cx=c_pps
 a=MfjaFnPeirRr97d5FC5oHw==:117 a=MfjaFnPeirRr97d5FC5oHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=3j4BkbkPAAAA:8 a=Ikd4Dj_1AAAA:8 a=FOH2dFAWAAAA:8
 a=UiN8ms7W_JB_tl96y0MA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=74256e3cee=amastro@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P2DPYVRKT4DJYG6QPCJL5LVZKCV6UCOM
X-Message-ID-Hash: P2DPYVRKT4DJYG6QPCJL5LVZKCV6UCOM
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:59 +0000
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Nicolin Chen <nicolinc@nvidia.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kvm@vger.kernel.org, Ankit Agrawal <ankita@nvidia.com>, Alex Mastro <amastro@fb.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix integer overflow in fill_sg_entry() for buffers >= 8GiB
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P2DPYVRKT4DJYG6QPCJL5LVZKCV6UCOM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[fb.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[3398];
	R_DKIM_REJECT(1.00)[fb.com:s=s2048-2025-q2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amastro@fb.com,linaro-mm-sig-bounces@lists.linaro.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	HAS_XOIP(0.00)[];
	DKIM_TRACE(0.00)[fb.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.896];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,fb.com:mid,fb.com:email]
X-Rspamd-Queue-Id: 4F71F410CD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

fill_sg_entry() splits large DMA buffers into multiple scatter-gather
entries, each holding up to UINT_MAX bytes. When calculating the DMA
address for entries beyond the second one, the expression (i * UINT_MAX)
causes integer overflow due to 32-bit arithmetic.

This manifests when the input arg length >= 8 GiB results in looping for
i >= 2.

Fix by casting i to dma_addr_t before multiplication.

Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
Signed-off-by: Alex Mastro <amastro@fb.com>
---
More color about how I discovered this in [1] for the commit at [2]:

[1] https://lore.kernel.org/all/aSZHO6otK0Heh+Qj@devgpu015.cco6.facebook.com
[2] https://lore.kernel.org/all/20251120-dmabuf-vfio-v9-6-d7f71607f371@nvidia.com
---
 drivers/dma-buf/dma-buf-mapping.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index b4819811a64a..b7352e609fbd 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -24,7 +24,7 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
 		 * does not require the CPU list for mapping or unmapping.
 		 */
 		sg_set_page(sgl, NULL, 0, 0);
-		sg_dma_address(sgl) = addr + i * UINT_MAX;
+		sg_dma_address(sgl) = addr + (dma_addr_t)i * UINT_MAX;
 		sg_dma_len(sgl) = len;
 		sgl = sg_next(sgl);
 	}

---
base-commit: 5415d887db0e059920cb5673a32cc4d66daa280f
change-id: 20251125-dma-buf-overflow-e3253f108e36

Best regards,
-- 
Alex Mastro <amastro@fb.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
