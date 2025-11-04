Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qC2jCW/44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:55:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DF63140FEF4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:55:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F14CE40512
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:55:41 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010068.outbound.protection.outlook.com [52.101.46.68])
	by lists.linaro.org (Postfix) with ESMTPS id 7A4723F858
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 08:36:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=h8xbk8ON;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.46.68 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WAQeP6lBkAs2uF/Um5ukuc86zYDUYHNTAXvuRDWgftAQMz/rO6kXB7zppUzuGCQhf0nP+eIbm4MDTbpXAcTPSBTL/kP0PfGRE+VYshGeuYvOZ/b107dBQgZimibzSyLJYD9/2//40BbULdk4T2MuegvcZA95/qmEGRKfB0kbjRSsYwVa6iA2BUjQk/nI3h/sdAFDNC7BHKYpyt1YkmLVKRFktw3Z7WNQqYDUiasRFSDT7CSnOU+Q2WVd9/u9EesSMHk5kwA0uqMGiXalgOlzSRKKEXCTVMSF54w0pJHu421Dv8szkaLOsG6/7bBbE+bp+cUmczeUzRU5Vmy6B+Hcag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Py3vgOlpDUJw1knMfA12bdyiyPuqwCbmtJQ/SDKeg9Y=;
 b=ZosVuM2QJZpepI8WFuNcDPT1StOLfzWQa7kgYeynifMlUDDc1ruFz6zR2bfuykI04tUVCUmcnEggIJjlYHviFQZ/VGs7y7C2Z9yP/fVJRikCXzRHeMhD1LsE4AmRoeMFMssXwvNvyygM4YT90TZHfsNASi/6V1FAbjKTOQ2fSm1IxfT0E3/fmr9weorw+ukLqxHR7SlLoztRueXUVA9rcEs4tSLmT8gDu9dpA7YaH2FRUVZ3j0RzmP1F4Pqh+Fxi4fshqB4DzOQ/8IAkSU5EnZ8hfagim4RagsBJx1MtIXY9t5E1rDRxKcqhfnDwBcDxT4YJlcFokZUyziaBC/8Z+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Py3vgOlpDUJw1knMfA12bdyiyPuqwCbmtJQ/SDKeg9Y=;
 b=h8xbk8ONEeOTM+Yx/9Ue7G/mX+/KnLxXvLuouEKjMAIUYiziiTQPbGc8+WuUi5hR87U+Kv/vUcQrUFzlymX5ohvRnwaNml4+odJ9Xh0PFWHFhQuIuDhPnxcuKDwKE60FbEd1+HkXypbdCNOasaDBP75e3teV3MCSL9Vn8uovr3I=
Received: from MW4PR04CA0249.namprd04.prod.outlook.com (2603:10b6:303:88::14)
 by CY8PR12MB7491.namprd12.prod.outlook.com (2603:10b6:930:92::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 08:36:51 +0000
Received: from CO1PEPF000042AE.namprd03.prod.outlook.com
 (2603:10b6:303:88:cafe::3b) by MW4PR04CA0249.outlook.office365.com
 (2603:10b6:303:88::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.16 via Frontend Transport; Tue,
 4 Nov 2025 08:36:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CO1PEPF000042AE.mail.protection.outlook.com (10.167.243.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.6 via Frontend Transport; Tue, 4 Nov 2025 08:36:51 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 4 Nov 2025 00:36:48 -0800
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Tue, 4 Nov 2025 09:35:25 +0100
Message-ID: <20251104083605.13677-11-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000042AE:EE_|CY8PR12MB7491:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ef776b7-f70a-4122-3352-08de1b7d4d36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?jf3+KnE+mixH2KmAZiFOAN919/uposOYAE4WNhoAHnChdTzhuLDa2HyOQ2sh?=
 =?us-ascii?Q?kodu70aiQTGO6e5N1MiguTL7SzWWMp6jQomK2U8CRpK699WiOJn+wZl/iWjo?=
 =?us-ascii?Q?8dZbncTsV2J1aZEfDq768eB0TgcayZmPT0/w9ZnR/BEnu+S15Kcq/AyE2OsW?=
 =?us-ascii?Q?1dbSi4JhrOK5sprGKQpEqSOn42X0Gr9Fn3bppgCVl9BveJMdLcojICWZnvnC?=
 =?us-ascii?Q?0axSYQJjDubfG0Rgi3HXw2p/oUWspci6CsSXU9lNYwgUeE1gSJBM0hT5Gzc3?=
 =?us-ascii?Q?jDPU0z+BwkDSNY6vYtT03CV9SFgIpEHBkNxr/gAKZzMuo+U0eELcuH9fBbHp?=
 =?us-ascii?Q?72D4X30qlvUkI8/h/Xy2wPMlcnubHnfPd+Aoz2SJ5AfhG1YJNdfissm6l0U3?=
 =?us-ascii?Q?D30PHWDwqgJOexHN01vbbxA4nSla37YHEea2dm/A0aJtAV4qFp+AIcSpsZX3?=
 =?us-ascii?Q?Z/FQ2yq35bCDRF15tEjKV9esgJSvz3hqPaB9bA4PvIvMr1PDY40Jxd5/GTTj?=
 =?us-ascii?Q?Qkj3YflEYQ4P2rtmWfWj0FDlfiNxJxJSmY7uvHQNTmeNnRfR1emC3PjRVbwc?=
 =?us-ascii?Q?oW2bXFdCMpoFl/2sSI4lDh9EK4l4GCXB0UmzjfEBmdx9EbGLD1/StCbw/JBg?=
 =?us-ascii?Q?LRyndPTo7wAVr5g+BYyB9we04JAKhogGUbZz7JdIkQ2hmfEowayC8E+qDCk7?=
 =?us-ascii?Q?F41BHBnS4A45t/4qFnE2O7fwp/7JBob4y1oPUfrnbEahwf1SgKhHL8+mP/V3?=
 =?us-ascii?Q?Gvb90lRO1bAySZQnd3R+xmhAPfN3P6qhrtNi7ZbaIw1QXBK6Q42+BnDzmiFZ?=
 =?us-ascii?Q?wj9rVcn2C5tRh4h+CBFLVsD7qr+cFg0KPTEk6hpEsgpQ8/G1pJNZa2pNKVe4?=
 =?us-ascii?Q?wxNcpa2bvg/rqF0l2dOs+4EQFIdxThGcUP45+xFpOvfX/G5vF76oZt3pv2Kg?=
 =?us-ascii?Q?NM96dcEuNtdLLow0Yuq+RX+TqCx7ysr3pKbLYvTpfMk1RzdAT7+rjti7z3LS?=
 =?us-ascii?Q?usFvxY2O63fMV5+NvFaMiOZiLeFJNzONsMSUyciixHdc5wpMvaIkQQGrhjup?=
 =?us-ascii?Q?NLOzTfn/u/l/YaL6FNikTMQFDFWR0kVACVnDEYfN78uGh9//3OwDK5rbT1n8?=
 =?us-ascii?Q?wM9ySN9gnJ2l548KmqpzXTDGAYNa/Dnlyp4Fsqse94D8M/d3QM0eylEyjgqB?=
 =?us-ascii?Q?lGW1EklUy+X1jc/S2H8C7jiu+lPBPX/LnNlHWIe9ttvqZUUgVjOMrDrVD/tv?=
 =?us-ascii?Q?CKRCAmq2M1qU5JF3bsv9KZ6p2Q0AtCQHS1Qou2DgIUD8xZkizF0yAb5FC9Ly?=
 =?us-ascii?Q?hZCkNMvPTEmGp3gQCTU3CaMKJI+rNFk2h6U6Q6F5ZsSs1EwbvfUDEEjGNC8K?=
 =?us-ascii?Q?Ab2GhcRnyF7FxWxHed/jEQBoJZ/LfYcn7MpIUwxRouuwOJp2HcXwLJ+sKPJC?=
 =?us-ascii?Q?1wKXHVMilw/6PO7KUwF2U0MaAjqQm4wlaexygU5hRVwpVkvEuZ7G4p1H3MqD?=
 =?us-ascii?Q?/Jzh0hJFATgGCCl4uBUI0hSzkEBDRq3cZOI4F9NAKpApo6I6OIymzVYg9Z1o?=
 =?us-ascii?Q?aPiXZ7fhaW/7iSz3Zng=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 08:36:51.2108
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ef776b7-f70a-4122-3352-08de1b7d4d36
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CO1PEPF000042AE.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7491
X-Spamd-Bar: ---
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F53EN6IJ4D77777YHMMTJSRHQRY34VYH
X-Message-ID-Hash: F53EN6IJ4D77777YHMMTJSRHQRY34VYH
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:45 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 10/20] drm/amdgpu: prepare amdgpu_fill_buffer to use N entities
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F53EN6IJ4D77777YHMMTJSRHQRY34VYH/>
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
	NEURAL_HAM(-0.00)[-0.796];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: DF63140FEF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We want to use multiple entities for clears to enable parallelism.
To achieve this, let amdgpu_fill_buffer select the entity to use
when it's possible by passing a NULL entity.

We can also simplify the signature and remove the resv param:
amdgpu_move_blit is the only caller that doesn't use it, and it's
also the only caller that needs to specify an entity.

Signed-off-by: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c | 11 +----
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c    | 54 ++++++++++++++++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h    |  1 -
 3 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index be3532134e46..4a69324bb730 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -1287,7 +1287,6 @@ void amdgpu_bo_move_notify(struct ttm_buffer_object *bo,
 void amdgpu_bo_release_notify(struct ttm_buffer_object *bo)
 {
 	struct amdgpu_device *adev = amdgpu_ttm_adev(bo->bdev);
-	struct dma_fence *fence = NULL;
 	struct amdgpu_bo *abo;
 	int r;
 
@@ -1317,18 +1316,12 @@ void amdgpu_bo_release_notify(struct ttm_buffer_object *bo)
 	    adev->in_suspend || drm_dev_is_unplugged(adev_to_drm(adev)))
 		goto out;
 
-	r = dma_resv_reserve_fences(&bo->base._resv, 1);
-	if (r)
-		goto out;
-
-	r = amdgpu_fill_buffer(&adev->mman.clear_entities[0], abo, 0, &bo->base._resv,
-			       &fence, NULL, AMDGPU_KERNEL_JOB_ID_CLEAR_ON_RELEASE);
+	r = amdgpu_fill_buffer(NULL, abo, 0, NULL,
+			       NULL, AMDGPU_KERNEL_JOB_ID_CLEAR_ON_RELEASE);
 	if (WARN_ON(r))
 		goto out;
 
 	amdgpu_vram_mgr_set_cleared(bo->resource);
-	dma_resv_add_fence(&bo->base._resv, fence, DMA_RESV_USAGE_KERNEL);
-	dma_fence_put(fence);
 
 out:
 	dma_resv_unlock(&bo->base._resv);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index b94ac16c785b..c357a6d9763a 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -184,7 +184,8 @@ static int amdgpu_ttm_map_buffer(struct drm_sched_entity *entity,
 				 struct amdgpu_res_cursor *mm_cur,
 				 unsigned int window, struct amdgpu_ring *ring,
 				 bool tmz, uint64_t *size, uint64_t *addr,
-				 struct dma_fence *dep)
+				 struct dma_fence *dep,
+				 struct dma_resv *resv)
 {
 	struct amdgpu_device *adev = ring->adev;
 	unsigned int offset, num_pages, num_dw, num_bytes;
@@ -239,6 +240,10 @@ static int amdgpu_ttm_map_buffer(struct drm_sched_entity *entity,
 	if (dep)
 		drm_sched_job_add_dependency(&job->base, dma_fence_get(dep));
 
+	if (resv)
+		drm_sched_job_add_resv_dependencies(&job->base, resv,
+						    DMA_RESV_USAGE_BOOKKEEP);
+
 	src_addr = num_dw * 4;
 	src_addr += job->ibs[0].gpu_addr;
 
@@ -332,14 +337,14 @@ static int amdgpu_ttm_copy_mem_to_mem(struct amdgpu_device *adev,
 		r = amdgpu_ttm_map_buffer(&entity->base,
 					  src->bo, src->mem, &src_mm,
 					  entity->gart_window_id0, ring, tmz, &cur_size, &from,
-					  NULL);
+					  NULL, NULL);
 		if (r)
 			goto error;
 
 		r = amdgpu_ttm_map_buffer(&entity->base,
 					  dst->bo, dst->mem, &dst_mm,
 					  entity->gart_window_id1, ring, tmz, &cur_size, &to,
-					  NULL);
+					  NULL, NULL);
 		if (r)
 			goto error;
 
@@ -422,7 +427,7 @@ static int amdgpu_move_blit(struct ttm_buffer_object *bo,
 		struct dma_fence *wipe_fence = NULL;
 
 		r = amdgpu_fill_buffer(&adev->mman.move_entities[0],
-				       abo, 0, NULL, &wipe_fence, fence,
+				       abo, 0, &wipe_fence, fence,
 				       AMDGPU_KERNEL_JOB_ID_MOVE_BLIT);
 		if (r) {
 			goto error;
@@ -2451,7 +2456,7 @@ int amdgpu_ttm_clear_buffer(struct amdgpu_bo *bo,
 		r = amdgpu_ttm_map_buffer(&entity->base,
 					  &bo->tbo, bo->tbo.resource, &cursor,
 					  entity->gart_window_id1, ring, false, &size, &addr,
-					  NULL);
+					  NULL, NULL);
 		if (r)
 			goto err;
 
@@ -2472,10 +2477,21 @@ int amdgpu_ttm_clear_buffer(struct amdgpu_bo *bo,
 	return r;
 }
 
+/**
+ * amdgpu_fill_buffer - fill a buffer with a given value
+ * @entity: optional entity to use. If NULL, the clearing entities will be
+ *          used to load-balance the partial clears
+ * @bo: the bo to fill
+ * @src_data: the value to set
+ * @f: optional out fence. If @entity is NULL, this must be NULL and the
+ *     fences from each partial clear will be added to the &dma_resv.
+ * @dependency: optional input dependency fence.
+ * @k_job_id: trace id
+ *
+ */
 int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
 		       struct amdgpu_bo *bo,
 		       uint32_t src_data,
-		       struct dma_resv *resv,
 		       struct dma_fence **f,
 		       struct dma_fence *dependency,
 		       u64 k_job_id)
@@ -2483,15 +2499,29 @@ int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
 	struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 	struct amdgpu_ring *ring = adev->mman.buffer_funcs_ring;
 	struct dma_fence *fence = NULL;
+	struct dma_resv *resv = NULL;
 	struct amdgpu_res_cursor dst;
 	int r;
 
+	/* The fences will be either added to the resv object or the last fence
+	 * will be returned to the caller. In the latter case, all fill jobs will
+	 * be executed on the same ring.
+	 */
+	WARN_ON_ONCE((entity && !f) || (!entity && f));
 	if (!adev->mman.buffer_funcs_enabled) {
 		dev_err(adev->dev,
 			"Trying to clear memory with ring turned off.\n");
 		return -EINVAL;
 	}
 
+	if (!entity) {
+		entity = &adev->mman.clear_entities[0];
+		resv = &bo->tbo.base._resv;
+		r = dma_resv_reserve_fences(resv, 1);
+		if (r)
+			return r;
+	}
+
 	amdgpu_res_first(bo->tbo.resource, 0, amdgpu_bo_size(bo), &dst);
 
 	mutex_lock(&entity->gart_window_lock);
@@ -2506,7 +2536,8 @@ int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
 					  &bo->tbo, bo->tbo.resource, &dst,
 					  entity->gart_window_id1, ring, false,
 					  &cur_size, &to,
-					  dependency);
+					  dependency,
+					  resv);
 		if (r)
 			goto error;
 
@@ -2516,8 +2547,13 @@ int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
 		if (r)
 			goto error;
 
-		dma_fence_put(fence);
-		fence = next;
+		if (resv) {
+			dma_resv_add_fence(resv, next, DMA_RESV_USAGE_KERNEL);
+			dma_fence_put(next);
+		} else {
+			dma_fence_put(fence);
+			fence = next;
+		}
 
 		amdgpu_res_next(&dst, cur_size);
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
index 9dd2a76a5641..38df2b5b4bc7 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
@@ -184,7 +184,6 @@ int amdgpu_ttm_clear_buffer(struct amdgpu_bo *bo,
 int amdgpu_fill_buffer(struct amdgpu_ttm_entity *entity,
 		       struct amdgpu_bo *bo,
 		       uint32_t src_data,
-		       struct dma_resv *resv,
 		       struct dma_fence **f,
 		       struct dma_fence *dependency,
 		       u64 k_job_id);
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
