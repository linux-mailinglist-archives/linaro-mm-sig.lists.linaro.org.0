Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EhjHYr/4Gk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ADE410B52
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3651D40A0C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:26:01 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010067.outbound.protection.outlook.com [52.101.46.67])
	by lists.linaro.org (Postfix) with ESMTPS id 175013F807
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 10:19:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=vopVRzLY;
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.46.67 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P39gDmz04ElOtsmk8EfRy8rQP7WZWXvWE/HmhTkeeluokOEBfDrNFzZPHjXsckknWMDI4MVOtdMGXJ4mOqSeHnuWFlYWAA8HKuk6fPqRiqk9mZunPvf5AoBDPhKZacFq/zwD6y5eEuKT0omrujV/FNbm0VR/Q0jEGTogxRahJ3fcz2RdRbPH7EtYl9wdtUwwLKCBqAWVCeA+W1wUn2ZrfbCczp2VOpXPQW+0YjSEGi1hzaxm6JfGjPu5YBXidhnqYPT+XMVBvxrVSGc79Z6HTiMDJ+Dj4qRe4xiaaNOVDcLxQWhhRwQsNpuTLsy/vRj/Qb27cJiULJ0q21qEYFNSqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fzp68uJ/mbJpmyd/2Zx8qBt1xPdo1vwDxT/GPncS4qI=;
 b=sp1CY7q5il9KAgluZlHyu5cpQfq2wkFOn4b8MtoGRywQR2m5Z7D/SQ+CIgxAbtksVGajFHszNChZid21yWOLUR71q0gTptuou5DjMy9xWgDBT2Cs+yfOHwHu6g0UUlQAYmhsuwz47apjfE6Rb761LocXSIRjbkfap4LO9nzDg7nRd9BHkJP/GiChJ58EO0eFOk4Km1kXSPTABO/vmGUrSnma9ZFTyEOc3hxKhFtf1r9ZrPx8rFKkMReRXKQdlfzETJGSm23oJza3tPx8rLDv0SMhOuEit/sIaGCRAo3VOJhxSqdqfkcreHOg+LWfymM9xZv+HxR/6PUIBjzEjwGDuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fzp68uJ/mbJpmyd/2Zx8qBt1xPdo1vwDxT/GPncS4qI=;
 b=vopVRzLYgRu+AWLZy2jek5lI43ro54EixtB4PpeFErQMoRa6Ul+OS7z2QiYdTzk0u/j5VXsQfNJYdP3D0B9MaAc4eXPln/fkEA97VIgs9L6/eg+RHaMEEGaWm+nkt4eKQl6PSxo5lQcnzfiIavpwdUxXxp6nd5FoWkpt9Re9Bgw=
Received: from BL0PR05CA0003.namprd05.prod.outlook.com (2603:10b6:208:91::13)
 by CY8PR12MB7220.namprd12.prod.outlook.com (2603:10b6:930:58::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 10:19:25 +0000
Received: from BL6PEPF0002256E.namprd02.prod.outlook.com
 (2603:10b6:208:91:cafe::5d) by BL0PR05CA0003.outlook.office365.com
 (2603:10b6:208:91::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.5 via Frontend Transport; Fri,
 21 Nov 2025 10:19:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BL6PEPF0002256E.mail.protection.outlook.com (10.167.249.36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9343.9 via Frontend Transport; Fri, 21 Nov 2025 10:19:24 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 21 Nov 2025 02:19:22 -0800
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Fri, 21 Nov 2025 11:12:38 +0100
Message-ID: <20251121101315.3585-29-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0002256E:EE_|CY8PR12MB7220:EE_
X-MS-Office365-Filtering-Correlation-Id: e3183a14-5d98-471f-d20e-08de28e771d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|1800799024|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MWJtaGtWNEI2enJTSTZqYzBVZWpuY1dxNm1XbEVjaFhlVzd6ZHNmOEMyc0JI?=
 =?utf-8?B?ZW9wVzFxMUZ5U0xJdURIWjkxRHE3TWI3d3VFYnZoVis0OUtCSjNlUG9SalAv?=
 =?utf-8?B?Y0ZJNDBwUTdOWk91NUFOT05QTHVsOWpLNFlMVTh3VEM1eVZ1WlhFYURnKzdi?=
 =?utf-8?B?RUIxemJJOHl4MUxZdHAxSnI3RVpuOGIyWUNES0JzSHFGT1lETmFyWnlCaTBB?=
 =?utf-8?B?WkFCN05NWDFhc1dlVEtGNUo3ckcyTzB4YmJWbTl4T2YwVndrYWkvSWVFVXFF?=
 =?utf-8?B?VExPMnM1Rk9OUE5RNnFXSmhIWTBVMFBRalFDQWNpc21yZFhHSGNnL2JpaFMv?=
 =?utf-8?B?dEtCOVhYbVU0cEViR3NRVWtsUnZaM1R3L0plRXJRZWJvaXZ3VkRGNklYdTJz?=
 =?utf-8?B?RURhZEZiZ1U3MmFmcmdzaGs4ZXNqVDJTY0MvZlpGUzVpTGRnUlNCSWIvSmRX?=
 =?utf-8?B?ODZJblVxQ1drWTB0SktGVW1yczZuV1NsQmI3U2hqRTdnNW9lazVVQUlBSFdk?=
 =?utf-8?B?c2VKNGo3aTIwalZ4Y3hVRGV4M0hxS01wR0tjTGZ3VytJYnIwSmxGS0Z6bWVZ?=
 =?utf-8?B?Qjk5b1NleWNlUVNINlpSU3R0Zm5HT2tkQitXeUg3QnJ4TVlkTnFwQ3M1cjZP?=
 =?utf-8?B?amxpbjltbmZOZkdBLzlPbTZySk9QaVhuVHI4SWNjbmM1M3VrZU0yTE9WREZZ?=
 =?utf-8?B?dXNYT2lmWVFycDIwU2FCNk5pZE9EQnJHbFlleTFTTnExa1N2SlBaUjlTbis5?=
 =?utf-8?B?VGEzNUZ4MDR3NlIvbDJFa2RSWHRZaGJ2OG0yQW1weFVYT2EwamhpOHgxQjdY?=
 =?utf-8?B?K0NTQWc3MkVOVkJBc21nWTFBQmJ6eURGTC85aGFETTZ0enR1cGsybWlLWkdT?=
 =?utf-8?B?SzdQVUd2SjRrZ21scTgzVGorYnNFK0tPaFJ5aFoyVW1GWlJZdDJ0Z1JscXlr?=
 =?utf-8?B?RjU3VHkzYUhjY2hhRVIvQkpGQkNOOU90WEhDem9tNnlMdWU4V3lQekpVenc0?=
 =?utf-8?B?YlpVL2kzTklwUm41TThmVTZMZGxDaXZtT2xHQVVmZW84RmxmeGpnUHVST0VB?=
 =?utf-8?B?dUowby8yRFBiaVBNLy9mSFlPdy9CQVBsS2UyemZMMXJnVm5zS2VkQ2FpaGNq?=
 =?utf-8?B?NGk0ekNaMnhuWExmd293V3Q5aDdETGgveEJ0eE1mcWY2Q2t6aFdzQ3Nmb2da?=
 =?utf-8?B?bTNuVG9zcHVRc0ppb1k2UFJmREZvVFFzNnhCK2ZtTllka0pZbU1CdlJreTNF?=
 =?utf-8?B?NEJ5OTBPS01GUDltc2NOa1krcmtUdm42UDU4d21LNEZQdURGL25vaXBOdTda?=
 =?utf-8?B?MUtKZkFDVWsyWTVyQkZzSVk2aVFwaDdVdHAyOFVGZjNqMnVGVVVVa0VmUU50?=
 =?utf-8?B?ZzVuL0lmYnRnTXdoa0Z3dUFEKzZ6QmlrU2dWZ3FFTUtmdmx1Z0NURSs0UnIy?=
 =?utf-8?B?eDNkSS9DelpiWllURExqUm5GTFJkU0FXL0c5NHF3ZUlUd3NjZ1pHSFNEYkdW?=
 =?utf-8?B?a2swaHBDSjE4MXcvMjN5QTl1ZTh6WTVhQUFIOFM5OWhLUkN4MGZydmhDUVhV?=
 =?utf-8?B?ajI2Z1RSZFJDMHlCSlVMb1pEd3NsaDVRSmpoclNTUEhNUVA0NXV4Ymh2U3ha?=
 =?utf-8?B?RVpmV3BybFBXbURQSkhuWDdkZHRKQXNDSWs1eFNMdjhXbzRoWnNUMnBuUEJB?=
 =?utf-8?B?c1JwQnlwZDQyR2FNRFhsaFRJQ1BPbS9lSjdGaC9zL01sR05qY1FZeEF6WTQ1?=
 =?utf-8?B?ZzVHaEtGZnlqYjVDVmZpY0U4bEJlcDRsOFNadFB5cEpYQmhMTkJwQ0dVV2VJ?=
 =?utf-8?B?YXVPS1BQYWtaVVprZzFkZUVNdzJuOWVzcjJCazBhSVpKbERta1R5S042VWQz?=
 =?utf-8?B?TEZvMEwvdVZheHBOSDVibG9vZUZyVTNieDNsKzF6Y3B0YVR6eHR0SDFYUW9C?=
 =?utf-8?B?UnFnSkthOU1EV0NPZ3pKckRySGRGZ2h0b0xmMEgwZWZ5ZU5BcnRuZDRDQk1s?=
 =?utf-8?B?TzVFZTlVZm1tMWJsS3AyRG5RT0VDVjVNdUlZaVhwdUtZaWRFOWRnNXJIUnJu?=
 =?utf-8?B?Zk1FSzhYRENJaHltdDFOUHFiYTZ5TFVTeWJHUjAxZjlSbTJITDFLeGJzNGc3?=
 =?utf-8?Q?u9D4=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 10:19:24.4888
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e3183a14-5d98-471f-d20e-08de28e771d1
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BL6PEPF0002256E.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7220
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PZ7DSUVAHULG6ILCILHEXO2EEYFNU2AN
X-Message-ID-Hash: PZ7DSUVAHULG6ILCILHEXO2EEYFNU2AN
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:14 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 28/28] drm/amdgpu: rename amdgpu_fill_buffer as amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PZ7DSUVAHULG6ILCILHEXO2EEYFNU2AN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	DATE_IN_PAST(1.00)[3509];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric.pelloux-prayer@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 22ADE410B52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhpcyBpcyB0aGUgb25seSB1c2UgY2FzZSBmb3IgdGhpcyBmdW5jdGlvbi4NCg0KLS0tDQp2Mjog
YW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIgaW5zdGVhZCBvZiBhbWRncHVfY2xlYXJfYnVmZmVyDQot
LS0NCg0KU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1l
cmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5jIHwgMTIgKysrKystLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV90dG0uYyAgICB8IDI3ICsrKysrKysrKystLS0tLS0tLS0tLS0NCiBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmggICAgfCAxNSArKysrKystLS0t
LS0NCiAzIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQ0K
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5j
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQppbmRleCBkY2Nj
MzFkMDEyOGUuLmFjMTcyN2MzNjM0YSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X29iamVjdC5jDQpAQCAtNzI1LDkgKzcyNSw5IEBAIGludCBhbWRncHVfYm9fY3JlYXRl
KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KIAkgICAgYm8tPnRiby5yZXNvdXJjZS0+bWVt
X3R5cGUgPT0gVFRNX1BMX1ZSQU0pIHsNCiAJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KIA0K
LQkJciA9IGFtZGdwdV9maWxsX2J1ZmZlcihhZGV2LCBhbWRncHVfdHRtX25leHRfY2xlYXJfZW50
aXR5KGFkZXYpLA0KLQkJCQkgICAgICAgYm8sIDAsIE5VTEwsICZmZW5jZSwNCi0JCQkJICAgICAg
IHRydWUsIEFNREdQVV9LRVJORUxfSk9CX0lEX1RUTV9DTEVBUl9CVUZGRVIpOw0KKwkJciA9IGFt
ZGdwdV90dG1fY2xlYXJfYnVmZmVyKGFkZXYsIGFtZGdwdV90dG1fbmV4dF9jbGVhcl9lbnRpdHko
YWRldiksDQorCQkJCQkgICAgYm8sIE5VTEwsICZmZW5jZSwNCisJCQkJCSAgICB0cnVlLCBBTURH
UFVfS0VSTkVMX0pPQl9JRF9UVE1fQ0xFQVJfQlVGRkVSKTsNCiAJCWlmICh1bmxpa2VseShyKSkN
CiAJCQlnb3RvIGZhaWxfdW5yZXNlcnZlOw0KIA0KQEAgLTEzMjYsOSArMTMyNiw5IEBAIHZvaWQg
YW1kZ3B1X2JvX3JlbGVhc2Vfbm90aWZ5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pDQog
CWlmIChyKQ0KIAkJZ290byBvdXQ7DQogDQotCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYWRldiwg
YW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShhZGV2KSwNCi0JCQkgICAgICAgYWJvLCAwLCAm
Ym8tPmJhc2UuX3Jlc3YsICZmZW5jZSwNCi0JCQkgICAgICAgZmFsc2UsIEFNREdQVV9LRVJORUxf
Sk9CX0lEX0NMRUFSX09OX1JFTEVBU0UpOw0KKwlyID0gYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIo
YWRldiwgYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShhZGV2KSwNCisJCQkJICAgIGFibywg
JmJvLT5iYXNlLl9yZXN2LCAmZmVuY2UsDQorCQkJCSAgICBmYWxzZSwgQU1ER1BVX0tFUk5FTF9K
T0JfSURfQ0xFQVJfT05fUkVMRUFTRSk7DQogCWlmIChXQVJOX09OKHIpKQ0KIAkJZ290byBvdXQ7
DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQppbmRleCBjNjVjNDEx
Y2UyNmUuLjFjYzcyZmQ5NGE0YyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3R0bS5jDQpAQCAtNDU3LDkgKzQ1Nyw5IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X21vdmVfYmxpdChz
dHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLA0KIAkgICAgKGFiby0+ZmxhZ3MgJiBBTURHUFVf
R0VNX0NSRUFURV9WUkFNX1dJUEVfT05fUkVMRUFTRSkpIHsNCiAJCXN0cnVjdCBkbWFfZmVuY2Ug
KndpcGVfZmVuY2UgPSBOVUxMOw0KIA0KLQkJciA9IGFtZGdwdV9maWxsX2J1ZmZlcihhZGV2LCBl
bnRpdHksDQotCQkJCSAgICAgICBhYm8sIDAsIE5VTEwsICZ3aXBlX2ZlbmNlLA0KLQkJCQkgICAg
ICAgZmFsc2UsIEFNREdQVV9LRVJORUxfSk9CX0lEX01PVkVfQkxJVCk7DQorCQlyID0gYW1kZ3B1
X3R0bV9jbGVhcl9idWZmZXIoYWRldiwgZW50aXR5LA0KKwkJCQkJICAgIGFibywgTlVMTCwgJndp
cGVfZmVuY2UsDQorCQkJCQkgICAgZmFsc2UsIEFNREdQVV9LRVJORUxfSk9CX0lEX01PVkVfQkxJ
VCk7DQogCQlpZiAocikgew0KIAkJCWdvdG8gZXJyb3I7DQogCQl9IGVsc2UgaWYgKHdpcGVfZmVu
Y2UpIHsNCkBAIC0yNDU5LDI5ICsyNDU5LDI2IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9maWxs
X21lbShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCiB9DQogDQogLyoqDQotICogYW1kZ3B1
X2ZpbGxfYnVmZmVyIC0gZmlsbCBhIGJ1ZmZlciB3aXRoIGEgZ2l2ZW4gdmFsdWUNCisgKiBhbWRn
cHVfdHRtX2NsZWFyX2J1ZmZlciAtIGZpbGwgYSBidWZmZXIgd2l0aCAwDQogICogQGFkZXY6IGFt
ZGdwdSBkZXZpY2Ugb2JqZWN0DQogICogQGVudGl0eTogb3B0aW9uYWwgZW50aXR5IHRvIHVzZS4g
SWYgTlVMTCwgdGhlIGNsZWFyaW5nIGVudGl0aWVzIHdpbGwgYmUNCiAgKiAgICAgICAgICB1c2Vk
IHRvIGxvYWQtYmFsYW5jZSB0aGUgcGFydGlhbCBjbGVhcnMNCiAgKiBAYm86IHRoZSBibyB0byBm
aWxsDQotICogQHNyY19kYXRhOiB0aGUgdmFsdWUgdG8gc2V0DQogICogQHJlc3Y6IGZlbmNlcyBj
b250YWluZWQgaW4gdGhpcyByZXNlcnZhdGlvbiB3aWxsIGJlIHVzZWQgYXMgZGVwZW5kZW5jaWVz
Lg0KICAqIEBvdXRfZmVuY2U6IHRoZSBmZW5jZSBmcm9tIHRoZSBsYXN0IGNsZWFyIHdpbGwgYmUg
c3RvcmVkIGhlcmUuIEl0IG1pZ2h0IGJlDQogICogICAgICAgICAgICAgTlVMTCBpZiBubyBqb2Ig
d2FzIHJ1bi4NCi0gKiBAZGVwZW5kZW5jeTogb3B0aW9uYWwgaW5wdXQgZGVwZW5kZW5jeSBmZW5j
ZS4NCiAgKiBAY29uc2lkZXJfY2xlYXJfc3RhdHVzOiB0cnVlIGlmIHJlZ2lvbiByZXBvcnRlZCBh
cyBjbGVhcmVkIGJ5IGFtZGdwdV9yZXNfY2xlYXJlZCgpDQogICogICAgICAgICAgICAgICAgICAg
ICAgICAgYXJlIHNraXBwZWQuDQogICogQGtfam9iX2lkOiB0cmFjZSBpZA0KICAqDQogICovDQot
aW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCi0JCSAg
ICAgICBzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQotCQkgICAgICAg
c3RydWN0IGFtZGdwdV9ibyAqYm8sDQotCQkgICAgICAgdWludDMyX3Qgc3JjX2RhdGEsDQotCQkg
ICAgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KLQkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2Ug
KipvdXRfZmVuY2UsDQotCQkgICAgICAgYm9vbCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQotCQkg
ICAgICAgdTY0IGtfam9iX2lkKQ0KK2ludCBhbWRncHVfdHRtX2NsZWFyX2J1ZmZlcihzdHJ1Y3Qg
YW1kZ3B1X2RldmljZSAqYWRldiwNCisJCQkgICAgc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2Vu
dGl0eSAqZW50aXR5LA0KKwkJCSAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCisJCQkgICAgc3Ry
dWN0IGRtYV9yZXN2ICpyZXN2LA0KKwkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNl
LA0KKwkJCSAgICBib29sIGNvbnNpZGVyX2NsZWFyX3N0YXR1cywNCisJCQkgICAgdTY0IGtfam9i
X2lkKQ0KIHsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBOVUxMOw0KIAlzdHJ1Y3QgYW1k
Z3B1X3Jlc19jdXJzb3IgZHN0Ow0KQEAgLTI1MTYsNyArMjUxMyw3IEBAIGludCBhbWRncHVfZmls
bF9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQogCQkJZ290byBlcnJvcjsNCiAN
CiAJCXIgPSBhbWRncHVfdHRtX2ZpbGxfbWVtKGFkZXYsIGVudGl0eSwNCi0JCQkJCXNyY19kYXRh
LCB0bywgY3VyX3NpemUsIHJlc3YsDQorCQkJCQkwLCB0bywgY3VyX3NpemUsIHJlc3YsDQogCQkJ
CQkmbmV4dCwgdHJ1ZSwga19qb2JfaWQpOw0KIAkJaWYgKHIpDQogCQkJZ290byBlcnJvcjsNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmggYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCmluZGV4IGYzYmRiY2VjOWFmYy4u
ZmJhMjA1YzFiNWQ3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3R0bS5oDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgN
CkBAIC0xODEsMTQgKzE4MSwxMyBAQCBpbnQgYW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRn
cHVfZGV2aWNlICphZGV2LA0KIAkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCiAJCSAg
ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQogCQkgICAgICAgYm9vbCB2bV9uZWVkc19m
bHVzaCwgdWludDMyX3QgY29weV9mbGFncyk7DQotaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1
Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCi0JCSAgICAgICBzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZm
ZXJfZW50aXR5ICplbnRpdHksDQotCQkgICAgICAgc3RydWN0IGFtZGdwdV9ibyAqYm8sDQotCQkg
ICAgICAgdWludDMyX3Qgc3JjX2RhdGEsDQotCQkgICAgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2
LA0KLQkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKipvdXRfZmVuY2UsDQotCQkgICAgICAgYm9v
bCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQotCQkgICAgICAgdTY0IGtfam9iX2lkKTsNCitpbnQg
YW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQorCQkJ
ICAgIHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkgKmVudGl0eSwNCisJCQkgICAgc3Ry
dWN0IGFtZGdwdV9ibyAqYm8sDQorCQkJICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCisJCQkg
ICAgc3RydWN0IGRtYV9mZW5jZSAqKm91dF9mZW5jZSwNCisJCQkgICAgYm9vbCBjb25zaWRlcl9j
bGVhcl9zdGF0dXMsDQorCQkJICAgIHU2NCBrX2pvYl9pZCk7DQogc3RydWN0IGFtZGdwdV90dG1f
YnVmZmVyX2VudGl0eSAqYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShzdHJ1Y3QgYW1kZ3B1
X2RldmljZSAqYWRldik7DQogDQogaW50IGFtZGdwdV90dG1fYWxsb2NfZ2FydChzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgKmJvKTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
