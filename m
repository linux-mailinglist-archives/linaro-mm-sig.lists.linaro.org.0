Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE4GDWn/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:25:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E1300410B28
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:25:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E714F40A01
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:25:27 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010031.outbound.protection.outlook.com [52.101.56.31])
	by lists.linaro.org (Postfix) with ESMTPS id 520E33F803
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 10:14:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=UwD4wBLh;
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.56.31 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QCgHAUUCGbPQfIyR6sSU+Q5m/tpjoRvorpIuJT2x5w/B7AW2jyazRCoPB1vBo87nKJzqmLMgjB+HtbM0GWqwzZQhZJoKAa0nohYLP6ZqYPHeePWrElFJO8PLrkvlR+6U2NsNFEAPnUMpjihv2ynK1n40o6wgAtPCaCKsqdSYUK1Lr9aw5HIST35C1YTPJBmQayOzmfiW3xRvJ+sRAbGWrQtH94gc4Hsli/gpQe6YA8n4+bR4I/7s50DN8MprRTrUBaqN9rUF0MEvyBnSjqpecvA6fy0lykUulv3vO1Tp6MvVh6BOPOIFGAPjROiZa/rXDcCeBM0dr9ZbkPIQ/9d/vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ISRyLtvs/LvW+8bmrVE8tXkaZMA9Tj+pJDMxEvGgWd4=;
 b=OtPSpB34XpkWvWhIfNkcv2ekETnpF39mAAhWLAMPPq5qf6m4etNfkc3VzTCaa5qQwU8gPI1U+52JtuDQzt6rF8+0ucpg7Ig8zbvvQU1ghCuQwZDz4+kBMBkgbTgljV+Nzv69ih9dRNC7YAARWvs5jMy9WrZ8z0vZHA3Iz5DOXxcgM6z1D1D98Nrun8QYzjwfqon1N6xYS7pTdwlHKORRg9ebCVbPh/oi7RfUc3Kv9YWSMeEMwLpcdPvMfwotfqJ6jwkZDAxqJvHd/5GlQnIPEW6zd2b8IDGLOVyz46GSC3SNHHgje2fP4pmabCFPh1k7Z4SMeGoB6EAboLlqPWiMfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ISRyLtvs/LvW+8bmrVE8tXkaZMA9Tj+pJDMxEvGgWd4=;
 b=UwD4wBLhzD6LEo6Z0thUonPcGubSKZSVBSzS/NrCE7lZu5wDq+hQODoFeCw86awSTgvojtrTMOIZ+7kG68pco4LwwlC84nS7TLjwsDeK/Q6Tl6S8BSTJypbC0I1GCOytEdT+W2ussPUkHRv3hItD6T7SZ9sd2jdkSTPSGaluzeg=
Received: from BN9PR03CA0606.namprd03.prod.outlook.com (2603:10b6:408:106::11)
 by DS0PR12MB9348.namprd12.prod.outlook.com (2603:10b6:8:1a0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 10:14:01 +0000
Received: from BN2PEPF000055DE.namprd21.prod.outlook.com
 (2603:10b6:408:106:cafe::13) by BN9PR03CA0606.outlook.office365.com
 (2603:10b6:408:106::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.12 via Frontend Transport; Fri,
 21 Nov 2025 10:13:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BN2PEPF000055DE.mail.protection.outlook.com (10.167.245.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.1 via Frontend Transport; Fri, 21 Nov 2025 10:14:00 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 21 Nov 2025 02:13:58 -0800
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Felix Kuehling
	<Felix.Kuehling@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>
Date: Fri, 21 Nov 2025 11:12:13 +0100
Message-ID: <20251121101315.3585-4-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF000055DE:EE_|DS0PR12MB9348:EE_
X-MS-Office365-Filtering-Correlation-Id: a2ccf8f6-fced-4ab3-1517-08de28e6b0d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VlppK3dHRkFzTjlKb2JSTy9WMGs1SS93RDBDYmhDRHFoQWpNUUhwYXh3Unhk?=
 =?utf-8?B?akp6SEZxcTIzY3ZKU3dESCsxbFZ4TWxWVGFhMHlicVRBZGt2SVFVbmc1dEJF?=
 =?utf-8?B?eDFOV0pCSkoxY09QTWwyZk8yajZYNmdOUjVYYmJUZjdRQTJHMHgwTXRYeVl6?=
 =?utf-8?B?MEdSQmMrdXZJeG5tWDJQaXFpcVMvTkRaWkJmVmhSRlNHaFlqWEY5VnU1RWM1?=
 =?utf-8?B?eUl4dXhQcDdCS3VqQmJ3MU1Na1JxMHpTaWswVEFYQmhNYVZvMEFCZkFEb2Ry?=
 =?utf-8?B?aWpaLzRJWHB0SklOUXdua3lqK2FKNVFXREk5STRlYjJHWmUwUXFxZUNVYlY2?=
 =?utf-8?B?RTVDUDEvWVo5T0dJSFJPS1FLSXRnUkU0THJMaTY1V3MzVGRsakpRT0ZWNld6?=
 =?utf-8?B?VXBiRWoxc1lJOUZsZENWQXA1dGN0OWJUempvMVRlMS85bHRtSWZWdHFydWpL?=
 =?utf-8?B?c0FvVjRZMUpDOFRtamFsR0NsQWpCTTF2bEpRTHV2czljemo4KzFKV296WmpB?=
 =?utf-8?B?V2VxV1R6SzMzR0Y4ZnBGdzdqWXZXdHBrbXltYXIzWnZEeXdzVllZSmwrL1VD?=
 =?utf-8?B?WFQzZ0RqcVU3UURSWVVTbTlMWXMyY05nQUpOT3dQRWRFbHBoTWFGOHR5SFVX?=
 =?utf-8?B?VmQzNlBocVNOaFlHby9tNTgyRUd2VVVXKytUcndES2t4UWI4YlM3bEk4RlRB?=
 =?utf-8?B?djRua1NZSzNUZ0dlNmpOZlV3NmVnazA3TitXOUhkQ0xjRTY5Q3ZqcTJWbFpU?=
 =?utf-8?B?cUF3MTFuSUE0elRzNm9rYi9BYVZkVTJIMmpISGNiVVRJYUpNdGFWUzI2YmQz?=
 =?utf-8?B?M3AzT1o4NFRuY29kQlFudktUYmFlMllaYVNZUDRNSWJhM1hWN1N4Nlhacloz?=
 =?utf-8?B?cWRGVDZZVzdXR2N0TW9sbWFyMXZwd0M4aDJ0SGg4TEY3YlEyU2hmcm51K3Zs?=
 =?utf-8?B?dEhBMSsrUFQ3V01wMDFCb1lpK2thT3RXVUVlZEEwM1dyeGRENDFWWGxXOGdo?=
 =?utf-8?B?N2JHS1c4NHNFb1pnN0M4dk91b0FGLzZWVExWbWlJMkdkUDkyQTBaT3BIUExK?=
 =?utf-8?B?dEI2SkhmdFQzNFhTem55dnVvcitjMFN2U2pGQ3pzMTlNS0E4VnN3M3hHeEVY?=
 =?utf-8?B?TUNBbTVTOGNFK28vUEdPdVhNQ2ZaZE0xOEttVGxHT0pBMEFYRmtWUFpJVk9m?=
 =?utf-8?B?cStYNzhZc1FES0NZandNVyt4RnQ5WjVrNC9ycGZMS2ljMnZxaWdSMUsvUms2?=
 =?utf-8?B?b0FOemxlRGFMRWt2dHA2UCt5Q1loeHlBdlR6S0lTczdreHhudUp3bTV1WEJi?=
 =?utf-8?B?b0twZzUwUEptNmZwa05MQklWcUhxN3c5dHhhMlEyRVlnOEV3dmQzcDNuT2tQ?=
 =?utf-8?B?eTBkTTBMTHhnVzhvN3dIdERUV04wMm1WVmMwNnhXNE1YR2poT00xQUJKTTZ3?=
 =?utf-8?B?MjBVZWZ2Y2dyS0ljQ1VOeFV6U0JDemhkalpmNmpxckZHM1d0V0JQenFuOTdn?=
 =?utf-8?B?RFlvUWM4L1ZnU0k2WU1MdWlwdFEyN2praGJReWgrKzdncmkvMlc2Q1RUTFpv?=
 =?utf-8?B?NU1zNVdiWHM0ZDJtdW5UTjlUNjZ6c3FyNy9hZTYvZzhIU0dzd2g0WTFjUVBH?=
 =?utf-8?B?ZmphTTFGeGdTRGdYUjRyVHJaeG54VTRXUk1tSUR2QVVKQVdwOW9pZ0d3NXIz?=
 =?utf-8?B?V3k5dWR5ZWVZOC92eXA2My9TQ0lkNFFIWERCMmlhT3Z1ZDJNd2R5bnI2SldI?=
 =?utf-8?B?WjBaV29iV0NHdmtVSnBaMzV0Y3Bxb3RmSVJUZ2RNVTl5OXBWU25RNlpuSEVa?=
 =?utf-8?B?UlZvL1luZURwQkNSZmdpRms4RmZoUDdab2l5YXFwZjExOXphVTRvRTN6Mnpa?=
 =?utf-8?B?cEJ5blpTTkZTYkVLUm8yQXZnZUVFalplZkJIWHhMUjdhSkZncmd4MmQvMVdP?=
 =?utf-8?B?aVZRM21VclRhVTVEVXlEUmp1OGF2NDNuUHhpOWRRSjlmTWFZeHJEdTBRSzFi?=
 =?utf-8?B?Y0N5TE8rdUpZclFkazhUV09GYXRoUnBpRzR1cXFNeitkRkNwNzUzQnBEQU5I?=
 =?utf-8?B?eVFCQWRQdnd5OEtydDVLdFgrdkpLVGNHZCszN3IzS09PYlI0RkIzN2FTK2V1?=
 =?utf-8?Q?UaPs=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 10:14:00.7242
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2ccf8f6-fced-4ab3-1517-08de28e6b0d7
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN2PEPF000055DE.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB9348
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3LWNT64LVKNFFCC54XIMHJTARUQTCBQU
X-Message-ID-Hash: 3LWNT64LVKNFFCC54XIMHJTARUQTCBQU
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:11 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 03/28] drm/amdgpu: remove direct_submit arg from amdgpu_copy_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3LWNT64LVKNFFCC54XIMHJTARUQTCBQU/>
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
	DATE_IN_PAST(1.00)[3509];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric.pelloux-prayer@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E1300410B28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SXQgd2FzIGFsd2F5cyBmYWxzZS4NCg0KU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91
eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQpSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2JlbmNobWFyay5jIHwgIDIgKy0NCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgICAgfCAyMCArKysrKysrLS0t
LS0tLS0tLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oICAgICAg
IHwgIDIgKy0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jICAgICAg
fCAgMiArLQ0KIDQgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25z
KC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYmVu
Y2htYXJrLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYmVuY2htYXJrLmMN
CmluZGV4IDE5OTY5MzM2OWM3Yy4uMDJjMjQ3OWE4ODQwIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2JlbmNobWFyay5jDQorKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfYmVuY2htYXJrLmMNCkBAIC0zOSw3ICszOSw3IEBAIHN0YXRp
YyBpbnQgYW1kZ3B1X2JlbmNobWFya19kb19tb3ZlKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2
LCB1bnNpZ25lZCBzaXplLA0KIAlmb3IgKGkgPSAwOyBpIDwgbjsgaSsrKSB7DQogCQlzdHJ1Y3Qg
YW1kZ3B1X3JpbmcgKnJpbmcgPSBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jc19yaW5nOw0KIAkJciA9
IGFtZGdwdV9jb3B5X2J1ZmZlcihyaW5nLCBzYWRkciwgZGFkZHIsIHNpemUsIE5VTEwsICZmZW5j
ZSwNCi0JCQkJICAgICAgIGZhbHNlLCBmYWxzZSwgMCk7DQorCQkJCSAgICAgICBmYWxzZSwgMCk7
DQogCQlpZiAocikNCiAJCQlnb3RvIGV4aXRfZG9fbW92ZTsNCiAJCXIgPSBkbWFfZmVuY2Vfd2Fp
dChmZW5jZSwgZmFsc2UpOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0K
aW5kZXggOGQwMDQzYWQ1MzM2Li4wNzFhZmJhY2IzZDIgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uYw0KQEAgLTM0Niw3ICszNDYsNyBAQCBzdGF0aWMgaW50IGFtZGdw
dV90dG1fY29weV9tZW1fdG9fbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KIAkJfQ0K
IA0KIAkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihyaW5nLCBmcm9tLCB0bywgY3VyX3NpemUsIHJl
c3YsDQotCQkJCSAgICAgICAmbmV4dCwgZmFsc2UsIHRydWUsIGNvcHlfZmxhZ3MpOw0KKwkJCQkg
ICAgICAgJm5leHQsIHRydWUsIGNvcHlfZmxhZ3MpOw0KIAkJaWYgKHIpDQogCQkJZ290byBlcnJv
cjsNCiANCkBAIC0yMjAzLDE2ICsyMjAzLDEzIEBAIHZvaWQgYW1kZ3B1X3R0bV9zZXRfYnVmZmVy
X2Z1bmNzX3N0YXR1cyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgYm9vbCBlbmFibGUpDQog
fQ0KIA0KIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9wcmVwYXJlX2pvYihzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldiwNCi0JCQkJICBib29sIGRpcmVjdF9zdWJtaXQsDQogCQkJCSAgdW5zaWduZWQg
aW50IG51bV9kdywNCiAJCQkJICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQogCQkJCSAgYm9vbCB2
bV9uZWVkc19mbHVzaCwNCiAJCQkJICBzdHJ1Y3QgYW1kZ3B1X2pvYiAqKmpvYiwNCiAJCQkJICBi
b29sIGRlbGF5ZWQsIHU2NCBrX2pvYl9pZCkNCiB7DQotCWVudW0gYW1kZ3B1X2liX3Bvb2xfdHlw
ZSBwb29sID0gZGlyZWN0X3N1Ym1pdCA/DQotCQlBTURHUFVfSUJfUE9PTF9ESVJFQ1QgOg0KLQkJ
QU1ER1BVX0lCX1BPT0xfREVMQVlFRDsNCisJZW51bSBhbWRncHVfaWJfcG9vbF90eXBlIHBvb2wg
PSBBTURHUFVfSUJfUE9PTF9ERUxBWUVEOw0KIAlpbnQgcjsNCiAJc3RydWN0IGRybV9zY2hlZF9l
bnRpdHkgKmVudGl0eSA9IGRlbGF5ZWQgPyAmYWRldi0+bW1hbi5sb3dfcHIgOg0KIAkJCQkJCSAg
ICAmYWRldi0+bW1hbi5oaWdoX3ByOw0KQEAgLTIyMzgsNyArMjIzNSw3IEBAIHN0YXRpYyBpbnQg
YW1kZ3B1X3R0bV9wcmVwYXJlX2pvYihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCiBpbnQg
YW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdWludDY0X3Qgc3Jj
X29mZnNldCwNCiAJCSAgICAgICB1aW50NjRfdCBkc3Rfb2Zmc2V0LCB1aW50MzJfdCBieXRlX2Nv
dW50LA0KIAkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCi0JCSAgICAgICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqZmVuY2UsIGJvb2wgZGlyZWN0X3N1Ym1pdCwNCisJCSAgICAgICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqZmVuY2UsDQogCQkgICAgICAgYm9vbCB2bV9uZWVkc19mbHVzaCwgdWludDMy
X3QgY29weV9mbGFncykNCiB7DQogCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gcmluZy0+
YWRldjsNCkBAIC0yMjQ4LDcgKzIyNDUsNyBAQCBpbnQgYW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVj
dCBhbWRncHVfcmluZyAqcmluZywgdWludDY0X3Qgc3JjX29mZnNldCwNCiAJdW5zaWduZWQgaW50
IGk7DQogCWludCByOw0KIA0KLQlpZiAoIWRpcmVjdF9zdWJtaXQgJiYgIXJpbmctPnNjaGVkLnJl
YWR5KSB7DQorCWlmICghcmluZy0+c2NoZWQucmVhZHkpIHsNCiAJCWRldl9lcnIoYWRldi0+ZGV2
LA0KIAkJCSJUcnlpbmcgdG8gbW92ZSBtZW1vcnkgd2l0aCByaW5nIHR1cm5lZCBvZmYuXG4iKTsN
CiAJCXJldHVybiAtRUlOVkFMOw0KQEAgLTIyNTcsNyArMjI1NCw3IEBAIGludCBhbWRncHVfY29w
eV9idWZmZXIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCB1aW50NjRfdCBzcmNfb2Zmc2V0LA0K
IAltYXhfYnl0ZXMgPSBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jcy0+Y29weV9tYXhfYnl0ZXM7DQog
CW51bV9sb29wcyA9IERJVl9ST1VORF9VUChieXRlX2NvdW50LCBtYXhfYnl0ZXMpOw0KIAludW1f
ZHcgPSBBTElHTihudW1fbG9vcHMgKiBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jcy0+Y29weV9udW1f
ZHcsIDgpOw0KLQlyID0gYW1kZ3B1X3R0bV9wcmVwYXJlX2pvYihhZGV2LCBkaXJlY3Rfc3VibWl0
LCBudW1fZHcsDQorCXIgPSBhbWRncHVfdHRtX3ByZXBhcmVfam9iKGFkZXYsIG51bV9kdywNCiAJ
CQkJICAgcmVzdiwgdm1fbmVlZHNfZmx1c2gsICZqb2IsIGZhbHNlLA0KIAkJCQkgICBBTURHUFVf
S0VSTkVMX0pPQl9JRF9UVE1fQ09QWV9CVUZGRVIpOw0KIAlpZiAocikNCkBAIC0yMjc1LDEwICsy
MjcyLDcgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcs
IHVpbnQ2NF90IHNyY19vZmZzZXQsDQogDQogCWFtZGdwdV9yaW5nX3BhZF9pYihyaW5nLCAmam9i
LT5pYnNbMF0pOw0KIAlXQVJOX09OKGpvYi0+aWJzWzBdLmxlbmd0aF9kdyA+IG51bV9kdyk7DQot
CWlmIChkaXJlY3Rfc3VibWl0KQ0KLQkJciA9IGFtZGdwdV9qb2Jfc3VibWl0X2RpcmVjdChqb2Is
IHJpbmcsIGZlbmNlKTsNCi0JZWxzZQ0KLQkJKmZlbmNlID0gYW1kZ3B1X2pvYl9zdWJtaXQoam9i
KTsNCisJKmZlbmNlID0gYW1kZ3B1X2pvYl9zdWJtaXQoam9iKTsNCiAJaWYgKHIpDQogCQlnb3Rv
IGVycm9yX2ZyZWU7DQogDQpAQCAtMjMwNyw3ICsyMzAxLDcgQEAgc3RhdGljIGludCBhbWRncHVf
dHRtX2ZpbGxfbWVtKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdWludDMyX3Qgc3JjX2RhdGEs
DQogCW1heF9ieXRlcyA9IGFkZXYtPm1tYW4uYnVmZmVyX2Z1bmNzLT5maWxsX21heF9ieXRlczsN
CiAJbnVtX2xvb3BzID0gRElWX1JPVU5EX1VQX1VMTChieXRlX2NvdW50LCBtYXhfYnl0ZXMpOw0K
IAludW1fZHcgPSBBTElHTihudW1fbG9vcHMgKiBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jcy0+Zmls
bF9udW1fZHcsIDgpOw0KLQlyID0gYW1kZ3B1X3R0bV9wcmVwYXJlX2pvYihhZGV2LCBmYWxzZSwg
bnVtX2R3LCByZXN2LCB2bV9uZWVkc19mbHVzaCwNCisJciA9IGFtZGdwdV90dG1fcHJlcGFyZV9q
b2IoYWRldiwgbnVtX2R3LCByZXN2LCB2bV9uZWVkc19mbHVzaCwNCiAJCQkJICAgJmpvYiwgZGVs
YXllZCwga19qb2JfaWQpOw0KIAlpZiAocikNCiAJCXJldHVybiByOw0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KaW5kZXggNTc3ZWUwNGNlMGJmLi41MGU0MDM4MGZlOTUg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KQEAgLTE2Niw3ICsx
NjYsNyBAQCB2b2lkIGFtZGdwdV90dG1fc2V0X2J1ZmZlcl9mdW5jc19zdGF0dXMoc3RydWN0IGFt
ZGdwdV9kZXZpY2UgKmFkZXYsDQogaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1
X3JpbmcgKnJpbmcsIHVpbnQ2NF90IHNyY19vZmZzZXQsDQogCQkgICAgICAgdWludDY0X3QgZHN0
X29mZnNldCwgdWludDMyX3QgYnl0ZV9jb3VudCwNCiAJCSAgICAgICBzdHJ1Y3QgZG1hX3Jlc3Yg
KnJlc3YsDQotCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlLCBib29sIGRpcmVjdF9z
dWJtaXQsDQorCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlLA0KIAkJICAgICAgIGJv
b2wgdm1fbmVlZHNfZmx1c2gsIHVpbnQzMl90IGNvcHlfZmxhZ3MpOw0KIGludCBhbWRncHVfdHRt
X2NsZWFyX2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCiAJCQkgICAgc3RydWN0IGRtYV9y
ZXN2ICpyZXN2LA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9t
aWdyYXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jDQppbmRl
eCA0NmM4NGZjNjBhZjEuLjM3OGFmMGIyYWFhOSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1ka2ZkL2tmZF9taWdyYXRlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
a2ZkL2tmZF9taWdyYXRlLmMNCkBAIC0xNTMsNyArMTUzLDcgQEAgc3ZtX21pZ3JhdGVfY29weV9t
ZW1vcnlfZ2FydChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgZG1hX2FkZHJfdCAqc3lzLA0K
IAkJfQ0KIA0KIAkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihyaW5nLCBnYXJ0X3MsIGdhcnRfZCwg
c2l6ZSAqIFBBR0VfU0laRSwNCi0JCQkJICAgICAgIE5VTEwsICZuZXh0LCBmYWxzZSwgdHJ1ZSwg
MCk7DQorCQkJCSAgICAgICBOVUxMLCAmbmV4dCwgdHJ1ZSwgMCk7DQogCQlpZiAocikgew0KIAkJ
CWRldl9lcnIoYWRldi0+ZGV2LCAiZmFpbCAlZCB0byBjb3B5IG1lbW9yeVxuIiwgcik7DQogCQkJ
Z290byBvdXRfdW5sb2NrOw0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
