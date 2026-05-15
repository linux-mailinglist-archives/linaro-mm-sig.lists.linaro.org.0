Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KI9rAEA/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9064157CB63
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BA07401E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:45:18 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010057.outbound.protection.outlook.com [52.101.56.57])
	by lists.linaro.org (Postfix) with ESMTPS id D19623EC66
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 15:54:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="1aMCAX/C";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of lizhi.hou@amd.com designates 52.101.56.57 as permitted sender) smtp.mailfrom=lizhi.hou@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X4ruhb505kkucGTT8rtr2MWsiEBi4PbcU773J0Zv0VsN2EcJPWE0mserYuBvAVF/N5MCa8SeqIYKRjvvaZNpMwS07/LPJvsbdJClZtZyOIj2kjInhWx4JBX75zEkFp4xQJkTuFYOG2na7D0qhjVDll3nGBKPf2Y5pQUgyLDU8iIhlsJKzQSQKj23/VBYH2Vu2ht5YCwe58vrwkQzyK5yJ7IyMQBcI1fPeD5PAiNaOZKacevVwMI+Zw0NuyebIGKf1w9l001ZmBn7YtgkUV65YkNMIyHaRd+QwXNNLAe//iwzcyOdJEgLPIDZ9uK12tq6+Ii5v1V3AS26nmAChIiUag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SwypLGgNRsbemvYssM+w3pCs3EXBuRRRi+09AKwykgQ=;
 b=HvuUsqdo+3+WM8f4DABNtdM6+fA1vg+gbU7ofj9qFtt5i0Leb16Jq6SYXK29VSuxBDl08qHXPF3ESVdwspy2UAkOYP4VM+kfyPldJ4FNgah9YcRQRLS8X8lA7UN1vPG79F1S0BiG+8iTStAexhy++8BWcoMSsQFBCDSstEVd1A6kFDBifvEYg4m/DRudC0Ev5mssex+dffS9DiXJNlvYZ5M29HJKG4VHOW1EjMGXDB1Sy6nPK6nIyUDd9LGdps5XGd/ArRZ3nd0KrhO148pAtqEKbI1viPhkeD6OVLlyADR8P9jm8BMphiy8j1jBXWuK7gn4WOQ8fdKdHpfbDs7fkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwypLGgNRsbemvYssM+w3pCs3EXBuRRRi+09AKwykgQ=;
 b=1aMCAX/CPPNqwcOjo5ehMuIm+/SCZnvjn06CFyeDpXG68J2d7TRFHRu5a1hTKm1IoMABBG8Hs4LlgV584mhiTE2Gz7M3emtpcORZa1N2lYkBePyPwyBVsmue5gJFvStOHlnEQTwgq9VX0lrLenrPLaArKYl1ShcqkxQMctoV+zU=
Received: from MN0PR02CA0004.namprd02.prod.outlook.com (2603:10b6:208:530::11)
 by PH7PR12MB7456.namprd12.prod.outlook.com (2603:10b6:510:20f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.19; Fri, 15 May
 2026 15:54:27 +0000
Received: from BL6PEPF0001AB53.namprd02.prod.outlook.com
 (2603:10b6:208:530:cafe::51) by MN0PR02CA0004.outlook.office365.com
 (2603:10b6:208:530::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.20 via Frontend Transport; Fri, 15
 May 2026 15:54:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 BL6PEPF0001AB53.mail.protection.outlook.com (10.167.241.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.25.13 via Frontend Transport; Fri, 15 May 2026 15:54:26 +0000
Received: from satlexmb10.amd.com (10.181.42.219) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Fri, 15 May
 2026 10:54:26 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb10.amd.com
 (10.181.42.219) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Fri, 15 May
 2026 10:54:26 -0500
Received: from xsjlizhih51.xilinx.com (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Fri, 15 May 2026 10:54:25 -0500
From: Lizhi Hou <lizhi.hou@amd.com>
To: <ogabbay@kernel.org>, <quic_jhugo@quicinc.com>,
	<mario.limonciello@amd.com>, <karol.wachowski@linux.intel.com>
Date: Fri, 15 May 2026 08:54:23 -0700
Message-ID: <20260515155423.743134-1-lizhi.hou@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB53:EE_|PH7PR12MB7456:EE_
X-MS-Office365-Filtering-Correlation-Id: 1371e172-6c00-4b51-0405-08deb29a3dfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|36860700016|376014|1800799024|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	hrbuhtVlK9GftdTRgx6+e0x5dw/unaTWKXFExrKDUKBdw2mhjQvloeMraJWCkLO6A74nj++CAdpTrX0PUDW2CnghWlt8zF7rAfeIZ6nJNyctpsywKV/7ZMYK4m2yo94178J9NkiAVe/1d4fEFnbVFVUEAJDXp/LtwcM4u6AFR8fhHgcvlMRdxL5bUJf80iO8dKyHKBRnuSOH9CWFT6t0Mj9G52Cxl/I8kl1VHLm7CVjLfuXpxcoaud/JBelBfil5abWzhihKdDQhMfSQxHbbA45GS70rvBYfHAMrIygq6RNkztZXJOjARhGkBsQWdkhC1O28Ev8jbfh+gvaFhFZIL8JCIQMvyE/t55mYzhbk0pMcaJeSq+SBgU8O7fHDJCpDOt3Txd4oYGGXCPBdfUO5WcaQfnzcMUkdBGWokvDqy+7gO4ZCudSwdn+X7bJIDaNh+/pB9d1uCihjZG0urb7qtYBMSA+wfKGosJIiRQFCbi7DJC3HgUc0L8zd+grHUUP/Hm3kT9t90Msxpa+IK9YBQHVqduTM17L4culRwwBFstANXmy12vK+Ldq/mhIkxtJ/KmVbov3KctUzvaxYKoExcY0yU3fu0cq30U2ConnGq/BqtAoag9BwQ7LioidzMduHi9w/brm/foNTOvBWKjKXLyI0Fwj+RdGMgtO4c5FYflmrhL7CxjQ0+fEgoVp5lryZ9L5Br7yQFVfFCjqL4zyOnqv5m8OBZAocz16UBQBEInw=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(1800799024)(18002099003)(56012099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	ixOoH2d2mAwZR4mtI7EHnJcNyzc9GcATLUnIQzPQWkjxGCHE8JywWK3DMjs/suToeg3yu5rab7LC82T/PjnPu5i0wg8GlLxEkLBSkGDzoWmn9AkCRpGiNlCjWaHycGac4pv4gmnnbyAg49+LGHHDmMtywBi+q2Xjp0ONb8y7vcV8CDn+gvQ7kHmRhfw4xIxUettFP/HlqskrmNCqhtA6Zrl2XKV7hLLQsZ4xWeJ/cZW/IwrXUQCUF/IALi3H5Aq5SisX5K2AuQ3IGD7240zyjANsc5Lang4Y2L2Ir7hBgKTySkQvy9oool+A2JqsNRSQPRAF3cXC6oWEy9CNFm7nlbKv/YximEbG/58mfKR/Y6gzyUAiKehMRjrjg4B9mcw569jGIkP34G8BkRNmE7dXvGBQHDapz07Q2bcjC5DbEJl2qkkAAgzrK0AUUvudsAiW
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 15:54:26.7315
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1371e172-6c00-4b51-0405-08deb29a3dfb
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BL6PEPF0001AB53.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7456
X-Spamd-Bar: -
X-MailFrom: lizhi.hou@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LWEUOZ6GBCAORS6PI2J26PQGV7DS6QZO
X-Message-ID-Hash: LWEUOZ6GBCAORS6PI2J26PQGV7DS6QZO
X-Mailman-Approved-At: Tue, 19 May 2026 10:44:46 +0000
CC: Max Zhen <max.zhen@amd.com>, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, simona@ffwll.ch, sonal.santan@amd.com, Lizhi Hou <lizhi.hou@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V1] accel/amdxdna: Fix user buffer VMA checking and page pinning locking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LWEUOZ6GBCAORS6PI2J26PQGV7DS6QZO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	DATE_IN_PAST(1.00)[90];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,amd.com:mid,amd.com:email];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi.hou@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9064157CB63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Max Zhen <max.zhen@amd.com>

Holding mmap_read_lock across user buffer VMA checking and page pinning.
This keeps VMA validation and user page pinning synchronized with mmap
updates.

Also adding the check for VM_MAYWRITE to make sure the mapping can't be
updated to writable after pinning of the pages.

Fixes: f649e63d4a64 ("accel/amdxdna: Support read-only user-pointer BO mappings")
Signed-off-by: Max Zhen <max.zhen@amd.com>
Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
---
 drivers/accel/amdxdna/amdxdna_ubuf.c | 34 ++++++++++++++++------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/accel/amdxdna/amdxdna_ubuf.c b/drivers/accel/amdxdna/amdxdna_ubuf.c
index df4ab225fbf9..85c3d6f46845 100644
--- a/drivers/accel/amdxdna/amdxdna_ubuf.c
+++ b/drivers/accel/amdxdna/amdxdna_ubuf.c
@@ -99,17 +99,13 @@ static int readonly_va_entry(struct amdxdna_drm_va_entry *va_ent)
 	struct vm_area_struct *vma;
 	int ret;
 
-	mmap_read_lock(mm);
-
 	vma = find_vma(mm, va_ent->vaddr);
 	if (!vma ||
 	    vma->vm_start > va_ent->vaddr ||
 	    vma->vm_end - va_ent->vaddr < va_ent->len)
 		ret = -ENOENT;
 	else
-		ret = vma->vm_flags & VM_WRITE ? 0 : 1;
-
-	mmap_read_unlock(mm);
+		ret = vma->vm_flags & (VM_WRITE | VM_MAYWRITE) ? 0 : 1;
 	return ret;
 }
 
@@ -123,7 +119,7 @@ struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 	u32 npages, start = 0;
 	struct dma_buf *dbuf;
 	bool readonly = true;
-	int i, ret;
+	int i, ret = 0;
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 
 	if (!can_do_mlock())
@@ -161,10 +157,6 @@ struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 			ret = -EINVAL;
 			goto free_ent;
 		}
-
-		/* Pin pages as writable as long as not all entries are read-only. */
-		if (readonly && readonly_va_entry(&va_ent[i]) != 1)
-			readonly = false;
 	}
 
 	ubuf->nr_pages = exp_info.size >> PAGE_SHIFT;
@@ -183,25 +175,37 @@ struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 		goto sub_pin_cnt;
 	}
 
+	mmap_read_lock(current->mm);
+
+	for (i = 0; i < num_entries; i++) {
+		/* Pin pages as writable as long as not all entries are read-only. */
+		if (readonly && readonly_va_entry(&va_ent[i]) != 1)
+			readonly = false;
+	}
 	for (i = 0; i < num_entries; i++) {
 		npages = va_ent[i].len >> PAGE_SHIFT;
 
-		ret = pin_user_pages_fast(va_ent[i].vaddr, npages,
-					  (readonly ? 0 : FOLL_WRITE) | FOLL_LONGTERM,
-					  &ubuf->pages[start]);
+		ret = pin_user_pages(va_ent[i].vaddr, npages,
+				     (readonly ? 0 : FOLL_WRITE) | FOLL_LONGTERM,
+				     &ubuf->pages[start]);
 		if (ret >= 0) {
 			start += ret;
 			if (ret != npages) {
 				XDNA_ERR(xdna, "Partially pinned pages %d/%u", ret, npages);
 				ret = -ENOMEM;
-				goto destroy_pages;
+				break;
 			}
 		} else {
 			XDNA_ERR(xdna, "Failed to pin pages ret %d", ret);
-			goto destroy_pages;
+			break;
 		}
 	}
 
+	mmap_read_unlock(current->mm);
+
+	if (ret < 0)
+		goto destroy_pages;
+
 	exp_info.ops = &amdxdna_ubuf_dmabuf_ops;
 	exp_info.priv = ubuf;
 	exp_info.flags = (readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
