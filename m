Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLP0Kzc/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6399257CB54
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59AA6406F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:45:10 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012020.outbound.protection.outlook.com [40.107.200.20])
	by lists.linaro.org (Postfix) with ESMTPS id A3D053EC66
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 15:54:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=EzX5sIUv;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of lizhi.hou@amd.com designates 40.107.200.20 as permitted sender) smtp.mailfrom=lizhi.hou@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TzwmqXseLdip97hKALFs9LU2FSMhIAkzruYv0SmPsO57FxsROItwchmBCz4fNu49ktAi9ILSF1FSsNLVB90CuU6/srvyFfJRd6sgtx2Y/WS2tjPIbo1lwfE/kokUs+uI1PMvW+3pTuvuzQzeDeJGdj2Td7he/eKrKUjMQlWujaj9iN8nUmmrDS651vu0ZwT7zMVkPu7Y70OqG+5CPTTnFQHRPA3tL2Aw8dWiWlzFMI2aKmKSh1x82PPyblL6SCzJUrXWGvfL/WEhKzRhvDiduwAGjwrJ7tBmSNmcC1bksd0MHIYHk+D/SjeoEshY81UrHLZ8lwaeVEqdpx7lJI57zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O3kwDcBZ+g2k09hDVkJ7kPZl/3MY0k6YdajkKsqRp0g=;
 b=lk1CyJUS39G43K1a9pWj9G/WwOzTW+k/jNhOgiNITQBMGWVDIWW7XMvgkdZ0JcArd9Io/EkWV3Frta1S2H8rKHByUNagEEn+wMDJ7tFrnY/eKc9F1OZgO9QlGrisCPAPLQMslaQoPM6esI/oDmbxqRHqsX6cIk85e4AFFqQyAVP/Vg2gO+v9bKOPvE+z71OMoA1b9Ne34h4FrWlAJor5dxkh7Tx3nXcbRaf7gTU/8QtT92sTbWPvNp/eyPUPwyiQZFw+LI6Mbx9wfKs204RJb3brQO2BdjEedwKYl0KNAqZUKyMOZtWo+NHN5/xrXB5Tp00QD73wCDK9IckcH2tmwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3kwDcBZ+g2k09hDVkJ7kPZl/3MY0k6YdajkKsqRp0g=;
 b=EzX5sIUvLUJNsI9fbwXjoTpT5CWArqZ82xkg2U+L1lBCax+MUEIH9v21AOv+cGJDk91cAV9j1GjV2pYe7O+JQXtGle6p77C7wTs32DmsKQQtF0syV0DET7Uj1SqvDUxJdjShsAK/ETfJZHrc/1g7hZc9CyPMu/i3NZ47CdOF9ng=
Received: from BL1PR13CA0444.namprd13.prod.outlook.com (2603:10b6:208:2c3::29)
 by PH8PR12MB7183.namprd12.prod.outlook.com (2603:10b6:510:228::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.19; Fri, 15 May
 2026 15:53:59 +0000
Received: from BL6PEPF0001AB59.namprd02.prod.outlook.com
 (2603:10b6:208:2c3:cafe::65) by BL1PR13CA0444.outlook.office365.com
 (2603:10b6:208:2c3::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.17 via Frontend Transport; Fri, 15
 May 2026 15:53:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 BL6PEPF0001AB59.mail.protection.outlook.com (10.167.241.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.25.13 via Frontend Transport; Fri, 15 May 2026 15:53:58 +0000
Received: from SATLEXMB04.amd.com (10.181.40.145) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.41; Fri, 15 May
 2026 10:53:58 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Fri, 15 May
 2026 10:53:58 -0500
Received: from xsjlizhih51.xilinx.com (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Fri, 15 May 2026 10:53:57 -0500
From: Lizhi Hou <lizhi.hou@amd.com>
To: <ogabbay@kernel.org>, <quic_jhugo@quicinc.com>,
	<mario.limonciello@amd.com>, <karol.wachowski@linux.intel.com>
Date: Fri, 15 May 2026 08:53:32 -0700
Message-ID: <20260515155332.743097-1-lizhi.hou@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Received-SPF: None (SATLEXMB04.amd.com: lizhi.hou@amd.com does not designate
 permitted sender hosts)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB59:EE_|PH8PR12MB7183:EE_
X-MS-Office365-Filtering-Correlation-Id: 51431508-2c70-4366-9843-08deb29a2d25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700016|82310400026|1800799024|376014|56012099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	oPRyLWnRjKVyAh9V2V830E8zbVG0V9oQyZazKpfOhYdRf68C6zVfTB3jW3jPSBoVg96r8BlMCftPkBPNBnkYjXJ5gpxNIp+5UHso8tnsGXZ+wxxpzMcQsKEdyA5A/OK6eccXgNcDtszCzHIZbaAEn/e7buHg/qi3HOPw09UeOyqNMKRzZhOt2xFG83uytFzI4BF7CKTKr0ZCkQ3q6S/uMN8cb3WME+ryXNWH0AJGhkKCS/Uv5NvvfvNWjFJvnqe5SDD3Fq9uJ9cASGDGblC8oRfjCD3tQ2MfOPS3TZb4qBFjC21Af1pNzTuyb2WgFyPFz+MmN+THcywJE1fwxBzWwghoaHkUdoVdkviPkh8GMF20+6P6zpuSEi0nEkmHVXi1fItIN/9HmKeC6JtRuNh/Dbg+3sNjUQosexvh5aA7x84jxayUl3mXJx+1i3iAG10IJlosdCuh2NAS9jGpnYDs5ylHfvLZw6+/s/Mix/S01T6wAI7F1EBZKHeFEamI5RGOPArBMO+HPz1tqNtmH1fAuq7Ea3CNsgWW/JzT5uatnJQTwsQZOxpsy4GskYx3SuGgnaaKoHQFEjxHoJtOrnJkxw3dv8sF32dQA9AvYXnsGz/UWvJuX/VOZyNqfcUZwWF3Q+bd1nDnpleeZSBgGJGptlchMyJqBWk/IvY8gKB4jtPh3ShGfuWfQBcoCVaWxIq6fBJLmojbqHz4Pg28nViTec7D+nUSDenRVt+4+wiIhEE=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(1800799024)(376014)(56012099003)(18002099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	vkhI7+iKdvSA1mGxja0BqutNE/Qd9yFVkFPoKe89cP4lXP4MCV1exn4mbVZf8hm8/8rS85HJsgw9nh5hqvAmcJA4LcvXPNz9vIuTRPzLrapBFWxuvn8J/v17L2MOdPna1aKKk4+c7nVHmBfdipVLvaeGC72510vsiGQfdR/pu4rz6z9gQ/w8vzAgJKiG3TdI+kJlpyZE2d6qDztZKtWTxqqHhHALYfGn4CMn9bSjlOy3/1LTEeef7tECYdvMBsFVy+sLwrrGlhKdYSUrLqsWMTyxiVCOYSnMf+kKcsdKzX9qXxI8YfqgEa/YcZvv0CW+Uli1Uuauzr/hd3DQpDoMBXBVdyljgdZs/0vLWzx2Lk/0i4Nby6Xfy8SHp7SGnVzgtlPdD504kT2bNpILWCmdpR/yzFJLOVgOSDrpwvB/1w96yDYTwGI/THPVOw+TJhJi
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 15:53:58.4907
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 51431508-2c70-4366-9843-08deb29a2d25
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BL6PEPF0001AB59.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7183
X-Spamd-Bar: -
X-MailFrom: lizhi.hou@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WEWFMSS7TQLDBDMSVFYJD7RIUD77YCK5
X-Message-ID-Hash: WEWFMSS7TQLDBDMSVFYJD7RIUD77YCK5
X-Mailman-Approved-At: Tue, 19 May 2026 10:44:45 +0000
CC: Lizhi Hou <lizhi.hou@amd.com>, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V1] accel/amdxdna: Remove mmap and export support for ubuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WEWFMSS7TQLDBDMSVFYJD7RIUD77YCK5/>
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
X-Rspamd-Queue-Id: 6399257CB54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Ubuf pages should not be mmaped or exported. Remove the ubuf mmap callback
and return -EOPNOTSUPP when exporting ubuf objects.

ubuf vmap is also removed for there is not a real use case yet.

Fixes: bd72d4acda10 ("accel/amdxdna: Support user space allocated buffer")
Cc: Christian Koenig <christian.koenig@amd.com>
Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
---
 drivers/accel/amdxdna/amdxdna_gem.c  |  9 +++++++-
 drivers/accel/amdxdna/amdxdna_gem.h  |  2 ++
 drivers/accel/amdxdna/amdxdna_ubuf.c | 32 ----------------------------
 3 files changed, 10 insertions(+), 33 deletions(-)

diff --git a/drivers/accel/amdxdna/amdxdna_gem.c b/drivers/accel/amdxdna/amdxdna_gem.c
index 319d2064fafa..6087264ba1b5 100644
--- a/drivers/accel/amdxdna/amdxdna_gem.c
+++ b/drivers/accel/amdxdna/amdxdna_gem.c
@@ -492,6 +492,9 @@ static struct dma_buf *amdxdna_gem_prime_export(struct drm_gem_object *gobj, int
 	struct amdxdna_gem_obj *abo = to_xdna_obj(gobj);
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 
+	if (abo->pri)
+		return ERR_PTR(-EOPNOTSUPP);
+
 	if (abo->dma_buf) {
 		get_dma_buf(abo->dma_buf);
 		return abo->dma_buf;
@@ -716,6 +719,7 @@ amdxdna_gem_create_ubuf_object(struct drm_device *dev, struct amdxdna_drm_create
 {
 	struct amdxdna_dev *xdna = to_xdna_dev(dev);
 	struct amdxdna_drm_va_tbl va_tbl;
+	struct amdxdna_gem_obj *abo;
 	struct drm_gem_object *gobj;
 	struct dma_buf *dma_buf;
 
@@ -742,7 +746,10 @@ amdxdna_gem_create_ubuf_object(struct drm_device *dev, struct amdxdna_drm_create
 
 	dma_buf_put(dma_buf);
 
-	return to_xdna_obj(gobj);
+	abo = to_xdna_obj(gobj);
+	abo->pri = true;
+
+	return abo;
 }
 
 static struct amdxdna_gem_obj *
diff --git a/drivers/accel/amdxdna/amdxdna_gem.h b/drivers/accel/amdxdna/amdxdna_gem.h
index 4fc48a1189d2..162e5499f5e0 100644
--- a/drivers/accel/amdxdna/amdxdna_gem.h
+++ b/drivers/accel/amdxdna/amdxdna_gem.h
@@ -54,6 +54,8 @@ struct amdxdna_gem_obj {
 
 	/* True, if BO is managed by XRT, not application */
 	bool				internal;
+	/* True, if BO is not exportable */
+	bool				pri;
 };
 
 #define to_gobj(obj)    (&(obj)->base.base)
diff --git a/drivers/accel/amdxdna/amdxdna_ubuf.c b/drivers/accel/amdxdna/amdxdna_ubuf.c
index 3769210c55cc..df4ab225fbf9 100644
--- a/drivers/accel/amdxdna/amdxdna_ubuf.c
+++ b/drivers/accel/amdxdna/amdxdna_ubuf.c
@@ -87,42 +87,10 @@ static const struct vm_operations_struct amdxdna_ubuf_vm_ops = {
 	.fault = amdxdna_ubuf_vm_fault,
 };
 
-static int amdxdna_ubuf_mmap(struct dma_buf *dbuf, struct vm_area_struct *vma)
-{
-	struct amdxdna_ubuf_priv *ubuf = dbuf->priv;
-
-	vma->vm_ops = &amdxdna_ubuf_vm_ops;
-	vma->vm_private_data = ubuf;
-	vm_flags_set(vma, VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP);
-
-	return 0;
-}
-
-static int amdxdna_ubuf_vmap(struct dma_buf *dbuf, struct iosys_map *map)
-{
-	struct amdxdna_ubuf_priv *ubuf = dbuf->priv;
-	void *kva;
-
-	kva = vmap(ubuf->pages, ubuf->nr_pages, VM_MAP, PAGE_KERNEL);
-	if (!kva)
-		return -EINVAL;
-
-	iosys_map_set_vaddr(map, kva);
-	return 0;
-}
-
-static void amdxdna_ubuf_vunmap(struct dma_buf *dbuf, struct iosys_map *map)
-{
-	vunmap(map->vaddr);
-}
-
 static const struct dma_buf_ops amdxdna_ubuf_dmabuf_ops = {
 	.map_dma_buf = amdxdna_ubuf_map,
 	.unmap_dma_buf = amdxdna_ubuf_unmap,
 	.release = amdxdna_ubuf_release,
-	.mmap = amdxdna_ubuf_mmap,
-	.vmap = amdxdna_ubuf_vmap,
-	.vunmap = amdxdna_ubuf_vunmap,
 };
 
 static int readonly_va_entry(struct amdxdna_drm_va_entry *va_ent)
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
