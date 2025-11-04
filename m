Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDR2OYj44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7525C40FF40
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39D3A404DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:56:07 +0000 (UTC)
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013041.outbound.protection.outlook.com [40.93.201.41])
	by lists.linaro.org (Postfix) with ESMTPS id 6B8413F858
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 08:37:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=33qNLTPu;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 40.93.201.41 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KTbYA0HGXZuKN3WZS676iR403dqaoaZt7o/qBdSCCW3IYUVdskoZaBpQ1mV07qkmgCNW6y1cqhwwp3UfQ0AGsi0Zof72sjFbaJVJDfywaYVY7If/hKwtL1MtdEjk7ICnsFbJC8aG5eE99pbP6gE5V8DIIyj5+1WpYvNnonA2PyqZM2LVHUTxauAsMpI8ibvellfOyq8rlq0qplE6dW4qSy2B6qJatvU27hfcI0mD7CJ3MP9lTmWe5a2vzyjF+CTUBGaMZSCjckDqYWlDEG6YT94oNRg5jJf+O0m+U8VTsq+MELjxgqaGff5TYOCXj7h9yBs3X0Fo0iZkXv5uBMWvrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ycx+XS+puQP4Ud6pPHgD1DgIG+Nv+Fl9RIIR+PssVU4=;
 b=CZ1iER50O+tfjfM5nnAip7FOHhzKN8X3xpv3RNT5+7vQ/FGR8J/ZGqV5bLwAv+U785Ya0rYMDVmNv9SJkSw4Pf33rxmtLN/0GK5QCorgXmPiDESY8wyB/9i8RRhJ9k6J4vIDvYIn3bbxDvEfzTs1RiPO7lpVjsbaeSJlrm05We4nm1P4nLNgnqtC2IYVUPlTwWpTRZ4h12paejSvLMn85iILYxnpEBRrH8yzjEeyPuRBZltdzOiMM6eL0lwwEblGGv1CFyagqM1mnKW8pphVnzcAx/CGYIc9QFyLJpJIpm29zxt3H35UHPqEynDAmhdO0HWj80Wez1Cm3woAT1nuIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ycx+XS+puQP4Ud6pPHgD1DgIG+Nv+Fl9RIIR+PssVU4=;
 b=33qNLTPuxEIS3O+R01GzcRRdjorStEDHo9/VgMaSmigZbE91fV1O7h8inwoWeMeBjeGP2ajxzB9ByhcavWEmS8A9NYeZI/tQvlEIASAZPWJCkT7+vJjnjgJou23OGSusGrvI+yEz14etHQIrUprfCSb9OZu5uj1cxXSf6FFc8Ok=
Received: from SJ0PR13CA0187.namprd13.prod.outlook.com (2603:10b6:a03:2c3::12)
 by DS7PR12MB5911.namprd12.prod.outlook.com (2603:10b6:8:7c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 08:37:13 +0000
Received: from CO1PEPF000042A7.namprd03.prod.outlook.com
 (2603:10b6:a03:2c3:cafe::a) by SJ0PR13CA0187.outlook.office365.com
 (2603:10b6:a03:2c3::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9298.7 via Frontend Transport; Tue, 4
 Nov 2025 08:37:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CO1PEPF000042A7.mail.protection.outlook.com (10.167.243.36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.6 via Frontend Transport; Tue, 4 Nov 2025 08:37:12 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 4 Nov 2025 00:37:10 -0800
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Tue, 4 Nov 2025 09:35:33 +0100
Message-ID: <20251104083605.13677-19-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000042A7:EE_|DS7PR12MB5911:EE_
X-MS-Office365-Filtering-Correlation-Id: f3f70be7-1fa9-4b32-a0df-08de1b7d59ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?nSLz2Zx6IgmVhCOCYpO7rLchb0ZomhSG3RUmhdI9WBX4oT7c7a88IpirVmw3?=
 =?us-ascii?Q?fp8JX6RnYV8/4CwR72D3q24EQ8zWLWHvm5im5elFs7eczN2kmhePg2MPptMi?=
 =?us-ascii?Q?U7jtr658HrihVFsSF7jni8nJau8oY3HM5nq8aBlxbMGS6wA4iTqUETRwWHBJ?=
 =?us-ascii?Q?71m7fDI4kNdGCKP7lpOXRqDnYEcfZRSch1FRri6O3dbNdEoWl1I8EYsdtOMf?=
 =?us-ascii?Q?wVk8swL9qBB0Y2DsdNkJdBnrvjbeggEdjCstzQv+9e5ZD+FnT+ciKv0jxZtq?=
 =?us-ascii?Q?4+foYnF62krKVUZAZD8mXKo5suwttK0alpwVNaGgL828JdKtodmpSnloqaM7?=
 =?us-ascii?Q?C6a/0Pi6hmm70zH//70DZtPd8q+5b7oAgUKZ7AG7yB6ukD9JrZrjp3hMmYIj?=
 =?us-ascii?Q?yu8cs47vh0qpVY/t729ILeTmbIQ0jUpu00C/p0Ef/JXVEpcBtFkow+foMXoI?=
 =?us-ascii?Q?zFf/hwvISLb1wfbD5hvsif7NYZXI4kBT3F5OWW87ZjvDrdGs4h8aKtaiq98s?=
 =?us-ascii?Q?Eg02/ztHZeaB4Cq6nnJc7xK+zSVkQhtbgjeF5rsMOS8W4SJy9cq9mIwN3isl?=
 =?us-ascii?Q?nVU8w4QbzXW+0CSQkVt+5OYH6LYg/u9oWzELPLmygkWXzyPmz0Qnr+4fCpPk?=
 =?us-ascii?Q?donZRB9HiplOWocnPMEIiaexL6zorUXxowNTs59grdPQaKNq+poiCQlNOAck?=
 =?us-ascii?Q?+5ts7P1j01LH5ccaTtA8MlAEdjsCAW4I1lJA9YBEQbAYGHITpuO6qYNUjf/x?=
 =?us-ascii?Q?CAvhiG9e+ZctLcXxXJXzd10JR4cs2SeMUq7mnuIZLSNEE0PDuhZiY5RQXSkK?=
 =?us-ascii?Q?XfMT+T5kKUObe8J4YCOfnVoF0svwgEO/EvsNCKymxSLSHeoWkD6kwLNPPuo0?=
 =?us-ascii?Q?PNNFhGeDHqELJkyJG8t1wb3u/sDZKu/D9WnpvF2UIXAgR8wrtrTjpxMNga2o?=
 =?us-ascii?Q?cLUANkfAXc9v9waA6pmJ5JfL2CVTaqG8bxMOyRnQulRoz9Op6vFvCTVq9T2F?=
 =?us-ascii?Q?V+1NVyNFK6m5VMUOHXSVBvhZFuusirldS4c8/jAo5ytl8euZQoU/TtpvEMZh?=
 =?us-ascii?Q?bC6uLX0UQpFqf+jHGlU/eVKyq37OXaHJpOFOWuzCQM1CLMLfjvrZ/U170RRh?=
 =?us-ascii?Q?rIrbOIL4NJ5chWw2NpnUZWMeb+vsO2003Xc3RuvoFXB8Cql6Kp2wx1MrSf5L?=
 =?us-ascii?Q?9PI3K0s3Iq+08bEGXUEmH4cAn0ShfehQKMs5zV1LKIxwWc1gWfQsnEUGib+p?=
 =?us-ascii?Q?Nje3At2RGkgHnIIl5nDtq6v8pQ7XYq0N98GXPxF+/xUOUt1mrDj0zEjU/HBF?=
 =?us-ascii?Q?pfb8aSHiNYza9SpQj5uub6Ogu/jofsTyuDq6ysidz8PZb9GqAmQLnf3i29za?=
 =?us-ascii?Q?SJVoVBenG8lyGocz0rghrRX8sNi3yNe+aXXMMbxqoh0LePkhKJiNTXcAWmn7?=
 =?us-ascii?Q?2JVq3xCTorrmZZ9GoN9Ccks0REPtsgKRcnZCUfh0LlSfwXx0NSCKsifbB8sC?=
 =?us-ascii?Q?+2KD04Ngxkz1ldS0WLb3ZELfXQgwWoupC30QGUyaoqJnuId4LCn09vSQb8j5?=
 =?us-ascii?Q?dk+ZaYZyBZ8n0s+Kwrk=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 08:37:12.6639
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f70be7-1fa9-4b32-a0df-08de1b7d59ff
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CO1PEPF000042A7.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5911
X-Spamd-Bar: ---
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HMAITSMAFGIUBPNTT7DDDNYFP66L3QMQ
X-Message-ID-Hash: HMAITSMAFGIUBPNTT7DDDNYFP66L3QMQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:47 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 18/20] drm/amdgpu: rename amdgpu_fill_buffer as amdgpu_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HMAITSMAFGIUBPNTT7DDDNYFP66L3QMQ/>
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
	DATE_IN_PAST(1.00)[3918];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric.pelloux-prayer@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	NEURAL_HAM(-0.00)[-0.808];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 7525C40FF40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is the only use case for this function.

Signed-off-by: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c |  8 +++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c    | 25 ++++++++++------------
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h    | 11 +++++-----
 3 files changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index 410e9b68ff81..9dc262cac39f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -723,8 +723,8 @@ int amdgpu_bo_create(struct amdgpu_device *adev,
 
 	if (bp->flags & AMDGPU_GEM_CREATE_VRAM_CLEARED &&
 	    bo->tbo.resource->mem_type == TTM_PL_VRAM) {
-		r = amdgpu_fill_buffer(NULL, bo, 0, NULL,
-				       NULL, AMDGPU_KERNEL_JOB_ID_TTM_CLEAR_BUFFER);
+		r = amdgpu_clear_buffer(NULL, bo, NULL,
+					NULL, AMDGPU_KERNEL_JOB_ID_TTM_CLEAR_BUFFER);
 		if (unlikely(r))
 			goto fail_unreserve;
 	}
@@ -1311,8 +1311,8 @@ void amdgpu_bo_release_notify(struct ttm_buffer_object *bo)
 	    adev->in_suspend || drm_dev_is_unplugged(adev_to_drm(adev)))
 		goto out;
 
-	r = amdgpu_fill_buffer(NULL, abo, 0, NULL,
-			       NULL, AMDGPU_KERNEL_JOB_ID_CLEAR_ON_RELEASE);
+	r = amdgpu_clear_buffer(NULL, abo, NULL,
+				NULL, AMDGPU_KERNEL_JOB_ID_CLEAR_ON_RELEASE);
 	if (WARN_ON(r))
 		goto out;
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index 1f553c56f31d..ac2857314d68 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -431,9 +431,9 @@ static int amdgpu_move_blit(struct ttm_buffer_object *bo,
 	    (abo->flags & AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE)) {
 		struct dma_fence *wipe_fence = NULL;
 
-		r = amdgpu_fill_buffer(entity,
-				       abo, 0, &wipe_fence, fence,
-				       AMDGPU_KERNEL_JOB_ID_MOVE_BLIT);
+		r = amdgpu_clear_buffer(entity,
+					abo, &wipe_fence, fence,
+					AMDGPU_KERNEL_JOB_ID_MOVE_BLIT);
 		if (r) {
 			goto error;
 		} else if (wipe_fence) {
@@ -2413,23 +2413,21 @@ static int amdgpu_ttm_fill_mem(struct amdgpu_ring *ring,
 }
 
 /**
- * amdgpu_fill_buffer - fill a buffer with a given value
+ * amdgpu_clear_buffer - fill a buffer with 0
  * @entity: optional entity to use. If NULL, the clearing entities will be
  *          used to load-balance the partial clears
  * @bo: the bo to fill
- * @src_data: the value to set
  * @f: optional out fence. If @entity is NULL, this must be NULL and the
  *     fences from each partial clear will be added to the &dma_resv.
  * @dependency: optional input dependency fence.
  * @k_job_id: trace id
  *
  */
-int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
-		       struct amdgpu_bo *bo,
-		       uint32_t src_data,
-		       struct dma_fence **f,
-		       struct dma_fence *dependency,
-		       u64 k_job_id)
+int amdgpu_clear_buffer(struct amdgpu_ttm_entity *entity,
+			struct amdgpu_bo *bo,
+			struct dma_fence **f,
+			struct dma_fence *dependency,
+			u64 k_job_id)
 {
 	struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 	struct amdgpu_ring *ring = adev->mman.buffer_funcs_rings[0];
@@ -2440,8 +2438,7 @@ int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
 	uint64_t cur_size, to;
 	int r, e, n_fences;
 	/* The clear flag is only valid directly after allocation. */
-	bool consider_clear_flag =
-		src_data == 0 && k_job_id == AMDGPU_KERNEL_JOB_ID_TTM_CLEAR_BUFFER;
+	bool consider_clear_flag = k_job_id == AMDGPU_KERNEL_JOB_ID_TTM_CLEAR_BUFFER;
 
 	/* The fences will be either added to the resv object or the last fence
 	 * will be returned to the caller. In the latter case, all fill jobs will
@@ -2520,7 +2517,7 @@ int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
 
 
 		r = amdgpu_ttm_fill_mem(ring, &entity->base,
-					src_data, to, cur_size,
+					0, to, cur_size,
 					resv,
 					&fence, true, k_job_id);
 		if (r) {
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
index 97e73919cb0c..b685bf207e43 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
@@ -182,12 +182,11 @@ int amdgpu_copy_buffer(struct amdgpu_ring *ring,
 		       struct dma_resv *resv,
 		       struct dma_fence **fence,
 		       bool vm_needs_flush, uint32_t copy_flags);
-int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
-		       struct amdgpu_bo *bo,
-		       uint32_t src_data,
-		       struct dma_fence **f,
-		       struct dma_fence *dependency,
-		       u64 k_job_id);
+int amdgpu_clear_buffer(struct amdgpu_ttm_entity *entity,
+			struct amdgpu_bo *bo,
+			struct dma_fence **f,
+			struct dma_fence *dependency,
+			u64 k_job_id);
 
 int amdgpu_ttm_alloc_gart(struct ttm_buffer_object *bo);
 void amdgpu_ttm_recover_gart(struct ttm_buffer_object *tbo);
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
