Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJqTJAEzD2qSHgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 18:29:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 276925A94C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 18:29:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54A7640982
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 16:29:51 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012036.outbound.protection.outlook.com [52.101.43.36])
	by lists.linaro.org (Postfix) with ESMTPS id 02F694044C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 16:29:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=XWSjjMZm;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of lizhi.hou@amd.com designates 52.101.43.36 as permitted sender) smtp.mailfrom=lizhi.hou@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZUOazbDcADByHiRv1fB+8otwpA66i1Xxxg487h+D3JgDuAqRvw92CHCfAD9M05OPcs7slBFGYIZJ5cCSGa68XQrTtZ6mBRpDo7IBjeXLHdqpvOnanjQo9AxiYU8HQ9aNZeMCPVEkVH9Pok/jDeJdCIQG/4OBy7a2hfOsUFfGxv6sKjYF1xqsoWacKkCHZb1WdxyddL23DdmjNUFtguNppqPt/P0xDBsQYHufzN7ScgQNaY6Ly5ki6iXtm/f+sdVXGvcWPQhcKFtgfVDtJ6ny9y3sXx2Kmurffg+tNX6pOqXo+BVSxpxTwI9M6QHLY6PUPXjg0wbdNd2blSnjBaq2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nit/Cb3JGGhEK3S3CUlDDiurfR5oDkJMjWa32QWAODc=;
 b=Y0h160EDSnxBDXzu5ahZnZ/u9/2qE48t2jnm2iMXd2Mx7P6GFxVkG4vEkL1oTYXnuAQbOwU3Dr6I7G0kSxfWtexMfC/o1IuGa0T3DCwowSjSrIZ/39Svywe1UtqJr/CNYnO0sCdQY2Rvr5b6GfnEYV4mfiAmDNIdW8SVrkBLEJXB66NUoVFXo/fNOsASJdP0ygXKUdNbV0YtTeAfl2Txhk3mds1OMuaj2+7ktKz1B4Qi9TcVlPOVDcYYvgeamYx5I2NdkVDx7RhAHu9SQIcMlRjPs2xPUyZfmP8Rm1S2Ncj9XxLb1b4Y9QKbvtFKJUO5vObkdv1tFcvAHRH6y47esw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nit/Cb3JGGhEK3S3CUlDDiurfR5oDkJMjWa32QWAODc=;
 b=XWSjjMZm02twVd4MwBObgk5vHCIByrACTTrM3sfczAN3n6eC2HLfOuZbKVSC9PUT2gLOgB78t/Z9Lg8rQvvY2rGTQpTwWq2efoX2bJ7lzF5hDhVW0VCRrnal0uvUqjoD7dy+8wklR4Wk00EU36vjOy8v1qdlMjXY7GNB89jqhUY=
Received: from CY5P221CA0105.NAMP221.PROD.OUTLOOK.COM (2603:10b6:930:9::40) by
 SA3PR12MB9092.namprd12.prod.outlook.com (2603:10b6:806:37f::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.14; Thu, 21 May 2026 16:29:36 +0000
Received: from CH1PEPF0000AD7A.namprd04.prod.outlook.com
 (2603:10b6:930:9:cafe::4b) by CY5P221CA0105.outlook.office365.com
 (2603:10b6:930:9::40) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.48.17 via Frontend Transport; Thu, 21
 May 2026 16:29:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 CH1PEPF0000AD7A.mail.protection.outlook.com (10.167.244.59) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.7 via Frontend Transport; Thu, 21 May 2026 16:29:36 +0000
Received: from Satlexmb09.amd.com (10.181.42.218) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Thu, 21 May
 2026 11:29:36 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb09.amd.com
 (10.181.42.218) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Thu, 21 May
 2026 09:29:35 -0700
Received: from xsjlizhih51.xilinx.com (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Thu, 21 May 2026 11:29:35 -0500
From: Lizhi Hou <lizhi.hou@amd.com>
To: <ogabbay@kernel.org>, <quic_jhugo@quicinc.com>,
	<mario.limonciello@amd.com>, <karol.wachowski@linux.intel.com>
Date: Thu, 21 May 2026 09:29:30 -0700
Message-ID: <20260521162930.1451042-1-lizhi.hou@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000AD7A:EE_|SA3PR12MB9092:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c66ebb4-4d49-4fb8-43d7-08deb75625fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700016|376014|82310400026|1800799024|56012099003|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 
	g142OrD0WmPFlzH41DZfRj/LZvsn9x7sARK3KS0E0ThBohqAveB9xAfEjlkJcqKuMcJe3St57pMbo+6Ag+KxVKKfRgt1hYIBP0n8IezxoPic0kUVGj1/4OXOxtPIlS2EKrOcg5Hio2+ch+o5f6gZW6oPB6AJXp0FUm2PI010QGXT32DGeojcMTrsD3sTUNvUiRBP5xju69JBpoa5CVYRfrlHftCshBkAXd2PRea6ShO0R65pQE+HHw+DgPEl9uC01fNyvYwiqZI0PHg0zqTtJ1QVq1GvK2E+yjaN8f2GyHCqAPsuyEmnFDF/HCL/P5MoXj5zxMWYWkm+5fxz4stkFPu4JJ+NYM27MqeG4z8OvKSpG3AP0wZ3nIxXipZ25pM9WfVXVjORdbNiNs+zN+6T1Wwr0agVzyK1l337BKSoHTOVbQ9xdshDi27h1qRvR4a4X6wwT1RRq4t8oniamGAfcvw7tphWKn3syQKpqp5mOhTThkwLUMnaTVXBABlNxRU3v8oEdWcRN1VKhMOQ+p5YdE4Q5JaC6XErAjMdhkj19bXaex5ttDjqxAXwFv71ZAq91YgtdyjzuJPLVQWLimq5UaSY+nnz2UZLfTl+fZ3ao8dVd5qJ1gmIu/g0+8w0i8srCvGeSNvZRUBSscZiTncdyCJy9APxBRgAd514ocWEXaknUfOnFQTGvCnTYihjhAkAL3DT0JY2qIapvtvWjcCOil0ovjZjcPRjgeoBF6slGko=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(376014)(82310400026)(1800799024)(56012099003)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	SxBgTqJ6h+Jsd2o3Ok+EoipRb9vNnjtI1syscLstZklY9Zqs/oVvmr0L6s98QzwRGtCSJY5TlLoxcpEgyTtGoyDJ4g5F3HC5blK77Srg0sRmp6QOZkW6/HXw0qqz8qmfTMY3/4dxRttvzZEof90ACd+0BihOhonCniO8Kq/HlTlVRaZhm8n6TNEEo2ACMmR/vx93vdApRPfkmKRohScErsYUjrc4IgUF/bUQjwjJnmQEygYgfLF6ha3ZPx7YS2SVuRzIgyzUIi+IiwGoKHiYFsQ1dF75iA+bVhMUVY0Br//MLw8nWL0ivJfNX7uhvNW4SLEfMsp7NeOwUxc/c7z9ZF/7heUQmmHI2KEYP5o3bsNYcmWvHOeOBqFZPafJRHhTU4RbonbtHzYax+AAndKBBZbUhcCWl97eXO1cGYTI58bxA/kTRZ6rGSSVa938jznx
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 16:29:36.5134
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c66ebb4-4d49-4fb8-43d7-08deb75625fe
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CH1PEPF0000AD7A.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9092
X-Spamd-Bar: -
Message-ID-Hash: BFCPHINJ3SQOXAW4T6B6UZH74JI4SBTI
X-Message-ID-Hash: BFCPHINJ3SQOXAW4T6B6UZH74JI4SBTI
X-MailFrom: lizhi.hou@amd.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Lizhi Hou <lizhi.hou@amd.com>, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Christian.Koenig@amd.com, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V1] Revert "accel/amdxdna: Support read-only user-pointer BO mappings"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BFCPHINJ3SQOXAW4T6B6UZH74JI4SBTI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[8];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,amd.com:mid,amd.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi.hou@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: 276925A94C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This reverts commit f649e63d4a6423eda8eb208638849fd6396aedd7.

The read-only feature requires further consideration.

Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
---
 drivers/accel/amdxdna/amdxdna_ubuf.c | 29 ++--------------------------
 1 file changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/accel/amdxdna/amdxdna_ubuf.c b/drivers/accel/amdxdna/amdxdna_ubuf.c
index 3769210c55cc..4c0647057759 100644
--- a/drivers/accel/amdxdna/amdxdna_ubuf.c
+++ b/drivers/accel/amdxdna/amdxdna_ubuf.c
@@ -125,26 +125,6 @@ static const struct dma_buf_ops amdxdna_ubuf_dmabuf_ops = {
 	.vunmap = amdxdna_ubuf_vunmap,
 };
 
-static int readonly_va_entry(struct amdxdna_drm_va_entry *va_ent)
-{
-	struct mm_struct *mm = current->mm;
-	struct vm_area_struct *vma;
-	int ret;
-
-	mmap_read_lock(mm);
-
-	vma = find_vma(mm, va_ent->vaddr);
-	if (!vma ||
-	    vma->vm_start > va_ent->vaddr ||
-	    vma->vm_end - va_ent->vaddr < va_ent->len)
-		ret = -ENOENT;
-	else
-		ret = vma->vm_flags & VM_WRITE ? 0 : 1;
-
-	mmap_read_unlock(mm);
-	return ret;
-}
-
 struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 				 u32 num_entries, void __user *va_entries)
 {
@@ -154,7 +134,6 @@ struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 	struct amdxdna_ubuf_priv *ubuf;
 	u32 npages, start = 0;
 	struct dma_buf *dbuf;
-	bool readonly = true;
 	int i, ret;
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 
@@ -193,10 +172,6 @@ struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 			ret = -EINVAL;
 			goto free_ent;
 		}
-
-		/* Pin pages as writable as long as not all entries are read-only. */
-		if (readonly && readonly_va_entry(&va_ent[i]) != 1)
-			readonly = false;
 	}
 
 	ubuf->nr_pages = exp_info.size >> PAGE_SHIFT;
@@ -219,7 +194,7 @@ struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 		npages = va_ent[i].len >> PAGE_SHIFT;
 
 		ret = pin_user_pages_fast(va_ent[i].vaddr, npages,
-					  (readonly ? 0 : FOLL_WRITE) | FOLL_LONGTERM,
+					  FOLL_WRITE | FOLL_LONGTERM,
 					  &ubuf->pages[start]);
 		if (ret >= 0) {
 			start += ret;
@@ -236,7 +211,7 @@ struct dma_buf *amdxdna_get_ubuf(struct drm_device *dev,
 
 	exp_info.ops = &amdxdna_ubuf_dmabuf_ops;
 	exp_info.priv = ubuf;
-	exp_info.flags = (readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC;
+	exp_info.flags = O_RDWR | O_CLOEXEC;
 
 	dbuf = dma_buf_export(&exp_info);
 	if (IS_ERR(dbuf)) {
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
