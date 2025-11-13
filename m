Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BvUD+r84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 140D441063D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 275E1406F2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:14:49 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011012.outbound.protection.outlook.com [40.93.194.12])
	by lists.linaro.org (Postfix) with ESMTPS id 20DCC3F6C7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 16:10:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yCHqWtRI;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 40.93.194.12 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GstgmNMqLamSFbtEwBKhvshQpD5N2EnJO3WCAaWkKnC+YWxCH6QsCyMcZwdvvoGY2iTrjTg9tDlrsFDBhWcle9hjV8z3QSftMj1HifrdwWU8zTrvLLUsRdyaTsczQBBVedYT4KhQaJoa3qETBCldSSxh2OdRHuIj+NytluKat5cVSd8+eeeN/AiaYW0nfvRUGP7XRhCP6rB9CK5t0DlwUrEfnLcZ0jeaVzuNb750fodi//W77RMsebxQdd+i46FOvH2Vc080J6GyqLv4FFbJeDORxrRqxrgydCWlV/YTBV5DL+b483X6LigoY7FatM2dex9ly7vRhQEx9aI8dA72Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eXKHMuwCp88CYdzP4o6Ot64+FB4KTWJROkIjnjWgsL4=;
 b=fznFXnZva1FD0c2xo8i2tOsna91bw2/FsEaeL8bxohkDm9aLOUH1dt/go/JgMZGJWsjibws1W734slWoeSqL5BIvGywvLfsbodpUYez0EeKpbjFNBZwoprFK92eERV0UtHKU8aTsbVQDTtNXFsX2Yvw5Zr9ZhzG+uGMBqfzEMPsTLJPulIQKNzEcpgaZNL52xmyeiIdlUISOhlgT4wumdi8V+BBgDX8sUNSZ3nYgSeVSf2WyfSA7I55N3fhRhP1FInNLRypiQMiL+0KKNt/4OJTzvVOdW+2chk2yXA0fYqBV7dE9KOQc6UHM2rszqIciBFVuzeWOjI2QeUSQGVWbiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eXKHMuwCp88CYdzP4o6Ot64+FB4KTWJROkIjnjWgsL4=;
 b=yCHqWtRIIYiIdGGyoC8v0usfmC66ZP3zr6UoNZX2CDSth3QuNpL8fjW2UIydVUoB5z88hh+EgO8JrryGH8eXfqS43wJaZ/KN5J/yIZBvNsycU6WO5xyc9Z5Sul1AmtpVoMMRATGv8z1NOc4vfA+SwsDZNT1gJVOeFa9tS2xhx0A=
Received: from BN9PR03CA0921.namprd03.prod.outlook.com (2603:10b6:408:107::26)
 by MW4PR12MB7333.namprd12.prod.outlook.com (2603:10b6:303:21b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 16:10:06 +0000
Received: from BL02EPF0002992E.namprd02.prod.outlook.com
 (2603:10b6:408:107:cafe::25) by BN9PR03CA0921.outlook.office365.com
 (2603:10b6:408:107::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9320.17 via Frontend Transport; Thu,
 13 Nov 2025 16:10:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BL02EPF0002992E.mail.protection.outlook.com (10.167.249.59) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Thu, 13 Nov 2025 16:10:06 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 13 Nov 2025 08:10:04 -0800
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Thu, 13 Nov 2025 17:05:51 +0100
Message-ID: <20251113160632.5889-11-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0002992E:EE_|MW4PR12MB7333:EE_
X-MS-Office365-Filtering-Correlation-Id: fdbcde71-6c49-42b4-942e-08de22cf1c47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?oKzOkQQI0vPTr6t3lXpAkd6CLpBw3x7CXte5ii3KxDXCrjsCwCqtBrDp4sfi?=
 =?us-ascii?Q?VdE/x4W8e5XVSqba8OOYqX7dp9oHsJq33aejv5r2yjWpxthCY7rirczKU0nV?=
 =?us-ascii?Q?O0kyrdJIkOZuXMlZfyTcYU2Zk3BWBvgtHAd4yTP8MbVlmXZ8KI7hLy5PUBF4?=
 =?us-ascii?Q?238Jg0ITlxXczrMqI4uRGuOpglkYKB1ALOOcwazWmKJiiBBP+N2b5iYHUBbI?=
 =?us-ascii?Q?IlTvCC4UVYEAftsN7BvMGrEBiSC+36aVLHYeTWLNYMCWTVXRrtcf1YclKjm7?=
 =?us-ascii?Q?ZmTrexxvhGDwIchIGglVKBeACUDYICuswcP2fEdlSSl1jdOZNVO7ijISNHCF?=
 =?us-ascii?Q?HoDBifaQAlIIHjzPLqverXfmP/BER/4tK74leYYTdVLwCMNBAcYr6e4bDyti?=
 =?us-ascii?Q?Vxf8v4wZH/G06tXocowbkpG80aOmLS2gsnRvFskCWa7z5EVM2m1XLSp/5Wr5?=
 =?us-ascii?Q?kFx5VtlXAfsVIMD8WDmeJfKtnCHQg62GmTypJ0Cx1yfgkv9QPWt9XgDZnTsx?=
 =?us-ascii?Q?CFB8YdkiqL4J7hY6hI0omKrsGoWbzdjaC6mynRac7HVVwYInFY+6fLM+slyx?=
 =?us-ascii?Q?xhAhcPtESG34rQzlWxrPa0Ufy87jTjax8hLNPx05kjudLrSm61K62jeh9WFn?=
 =?us-ascii?Q?IqLzkGBsu/DS7ATax/FI2W2OzSsgN/ya6Q/dm3WpqrSfNk4JfhqiU15pqeKo?=
 =?us-ascii?Q?vydSCD36ceBEy/0StGBwxesiiW7vj8YIN79Y6b03Vd/T452qtJ5Ba/vY8OXZ?=
 =?us-ascii?Q?9Sq1PJ5oVyqk1kkIdgMIylRhbNp0tzZh/5pGeqWOeC4KfLH9z8TUAkWVrs7m?=
 =?us-ascii?Q?+jVhRfSnmOcUHCG4QB3ULS/i94V2LA3vUl41zf92w5gSfX6T/u13YX9vqtfa?=
 =?us-ascii?Q?eQJvcvkE4MpDKxZL0QJAW2u9Kb3UefjOnD7mDpWwmx/TwIk1Q72p5c3c608C?=
 =?us-ascii?Q?zB851nyuRrzqo/SB9BV23iuIpW+jzVdPq/EymKlYQHw2EFXyGEjZkXHK7/59?=
 =?us-ascii?Q?p2CYP/C01q1L2wBmB/souOkFtbNl8d5yxFfK8f7juTNFA/jFP04Vz3RRp9K/?=
 =?us-ascii?Q?XO2AjAh4qM9W4sjoOsUk74lEpteT0Yz9/yVGyuJR6WRDgCA35HelZjmq04+c?=
 =?us-ascii?Q?IDlbEb4tNYT4yN7NqZHy3Od+mKDrU+3sc6xcf7jX5hd4xr0Qb0iP1ilGqyYl?=
 =?us-ascii?Q?kCgCafW7QNeAZppmcqaxweteNCqSZsKg+IVUoilrGbbvqK2ZinDK2Yh+Lud+?=
 =?us-ascii?Q?qXUNrwnb9++0vIoAxgN93nFCjzItxFY6RFg11FMjVW8wbEwR6sLDbMQfoj/F?=
 =?us-ascii?Q?I7cfG1gnqyXbe0iobBMTVEz0OoRtLtK8vVi4HkRWDwidFPySBqkyH6KhTs1n?=
 =?us-ascii?Q?G/OHnkuvie8vvcsrZulIEUQXHMaICLAAcNDwDRpSxmh8uBrcySagr7QsgQ8e?=
 =?us-ascii?Q?r+8S0YWukmFwmrQkjm2bZlJIExF3BxH8IZzkKoNok8JraZ1TM3V4d9WbqgOc?=
 =?us-ascii?Q?pq+eiqFGnrjbI3+wCbAa9ZkJjg9sAuEO5rdEvZmRozn8BulP/HhXA0Y1h75z?=
 =?us-ascii?Q?bqTByj7QCEVE1MLhhsY=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 16:10:06.0770
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fdbcde71-6c49-42b4-942e-08de22cf1c47
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BL02EPF0002992E.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7333
X-Spamd-Bar: ---
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VTWBLESRTBCHMOAZGX5VU4BYHPCPWIHS
X-Message-ID-Hash: VTWBLESRTBCHMOAZGX5VU4BYHPCPWIHS
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:50 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 10/20] drm/admgpu: handle resv dependencies in amdgpu_ttm_map_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VTWBLESRTBCHMOAZGX5VU4BYHPCPWIHS/>
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
	DATE_IN_PAST(1.00)[3695];
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
	NEURAL_HAM(-0.00)[-0.770];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 140D441063D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If a resv object is passed, its fences are treated as a dependency
for the amdgpu_ttm_map_buffer operation.

This will be used by amdgpu_bo_release_notify through
amdgpu_fill_buffer.

Signed-off-by: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index b13f0993dbf1..411997db70eb 100644
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
 
@@ -2451,7 +2456,7 @@ int amdgpu_ttm_clear_buffer(struct amdgpu_bo *bo,
 		r = amdgpu_ttm_map_buffer(&entity->base,
 					  &bo->tbo, bo->tbo.resource, &cursor,
 					  entity->gart_window_id1, ring, false, &size, &addr,
-					  NULL);
+					  NULL, NULL);
 		if (r)
 			goto err;
 
@@ -2506,7 +2511,8 @@ int amdgpu_fill_buffer(struct amdgpu_ttm_buffer_entity *entity,
 					  &bo->tbo, bo->tbo.resource, &dst,
 					  entity->gart_window_id1, ring, false,
 					  &cur_size, &to,
-					  dependency);
+					  dependency,
+					  resv);
 		if (r)
 			goto error;
 
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
