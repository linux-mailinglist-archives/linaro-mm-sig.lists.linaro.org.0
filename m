Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFGTItb84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF82410628
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42BF640962
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:14:29 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010027.outbound.protection.outlook.com [52.101.56.27])
	by lists.linaro.org (Postfix) with ESMTPS id 574013F6C7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 16:08:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=gv3dAIhC;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.56.27 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L1ckiauZXB631b8ZZEZgxI+Zf9CGJ+pbKzuU7TKjAdocuExBVpm5/xSVOgoIfZW+g271+deTTMYl29Ozu6L1pvMEidiSlqP+eONKqCCE3OeWj4788u+/pAlOTKnPeBbZjBcG5nWgvVvCgoUULTSwkaXx7DK4a+cMpQYd1NHt04Ji+oE2KS7VO6hyFlLQnJCZSt7s2npRfvUuCzuQ5NitqJUgj9u3SGcukcGTqZC3irou9gKuz1RpVsCSfH5xTn0hET2oa6wsRDxw/2p29v6fEe4zjO+X0FvJvj/HSWIuCnFfGFcICOQGadQPCwGyb4oA1JiGAHjTNOcXzdG2KZTYxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c6E4IF3LYcU5qbaNoF8ewtPzT4lDCpbqqbYBA/cpCbg=;
 b=vBHISJ2Lwb68TiQm15wSqHo3A8Qc3SsLuaUC9yMXxknGoI+esnEwztTJvnOz/ryODriNphm6rXM/re0VqS7hx5dhA8N4I1MX8ldlOcr5LusC/3NyuhIuVBMOdJzoTKx/KVeEYeMcQcAiM+kmiknq3IVTGGqJQ7kyoxB8FCr3NsaWyXWDg7OQN8e12kiZ84sgfE28aJeBmgEIQIF2U+bC520LC97hU+wo9bwBFLzQnY1RZ0uSYA1sBBsaTr3pC95CIGSU7VySrewnYRZpGX3UDD3qcW9tOsNXwy6dA2DN/MBj3vr3xAZNNcqHeBEirGl8rnjbcq9v81ADzZBP6/SJeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c6E4IF3LYcU5qbaNoF8ewtPzT4lDCpbqqbYBA/cpCbg=;
 b=gv3dAIhCyE/Av39Q1dw3vs6kaByUoI2nC54k5QxfQpUEluB/UIhMr2IBMkAG30IgQ2q4us0b3PJXCd3sZj0fvRSNvgg5HIfqvP7NWAbckLSjdqWITIvdo+Li0Tcbo98R6zYsKnNrD438BTx44mnXdxBPw59ZIDtRliph6qdBEiQ=
Received: from CH2PR14CA0006.namprd14.prod.outlook.com (2603:10b6:610:60::16)
 by CH2PR12MB4053.namprd12.prod.outlook.com (2603:10b6:610:7c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 16:08:12 +0000
Received: from CH1PEPF0000A34A.namprd04.prod.outlook.com
 (2603:10b6:610:60:cafe::6f) by CH2PR14CA0006.outlook.office365.com
 (2603:10b6:610:60::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9298.16 via Frontend Transport; Thu,
 13 Nov 2025 16:08:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000A34A.mail.protection.outlook.com (10.167.244.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Thu, 13 Nov 2025 16:08:12 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 13 Nov 2025 08:08:10 -0800
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Felix Kuehling
	<Felix.Kuehling@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 13 Nov 2025 17:05:44 +0100
Message-ID: <20251113160632.5889-4-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A34A:EE_|CH2PR12MB4053:EE_
X-MS-Office365-Filtering-Correlation-Id: 54007dc9-ba94-4a78-6854-08de22ced868
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UnRYSDR2UHN0eXlxM25hTkE3MVNwdndlRVcxbC9JYkZIZENBWlVTNTl1TTh1?=
 =?utf-8?B?UkFVakVmMHBMTmU5enZSci80UWNWWk9obEg4UlZIN0VYTGxlUjNKeTFzZU96?=
 =?utf-8?B?bHl1cEpFc1JnTndqRE1lVlBWazk5Y20rbkNPQkpyNnBFV3BGSHA1cjloTStv?=
 =?utf-8?B?VVpEMFZESmxEbnZrb21nSXhCRG1uRi9SUTVRaURhZTl5SGRtWkQrdTNRRSs4?=
 =?utf-8?B?NCtqcDMxSkhqMXpnUHlYMmZUVVdDdXUyWnB2Qktnc1FycFlIS3VMK2JoVGMr?=
 =?utf-8?B?dWJYOURwdVdTdkMwOUo5cHgvQ0ErZWN3SUNVZVUvQkMvSGw3Q3VTb1ExNVFv?=
 =?utf-8?B?T0YweXJMekFmVW9IcE91UUs2Z244M0xmVERPREZRdWY2cVJCdGFHTExsbC9F?=
 =?utf-8?B?U3pySXZsc0pzNnVUR2l3YTM0R0hQS3JkV2Y5SzM4U25SMnNNQzZyN1VrWTMx?=
 =?utf-8?B?ZTBLWThPSlJvMzJnWnplRVlOM3d0SVBqQ2lzNDAyUEhRcGkrRnJjL3l0ZDZK?=
 =?utf-8?B?dFpWSGFwY3hOU1p1bGxxQzJOdXBkWjQzeDZlNlcrcGt4L01tbmJ5MUZ4b1hU?=
 =?utf-8?B?cG1JTEIrbFpHbWczTVBoSFNuWFBlRkxncXpSYnN4M1VtTTJPQTRndUFiSGhY?=
 =?utf-8?B?L1hVdlBxTEx5aVhiNHk4aTZ5U1B3T1BiRVp2UjlmQjlFUEoyZlVzZ0FnV0hH?=
 =?utf-8?B?Nyt0OThJMmE0WS9VOC9ucm5WMkJSWmtFWkpaMWdZVzhSeFExTjlZNG5Oa1FZ?=
 =?utf-8?B?T0cwelJGcjZvWTFCdTZyZU1kWDh4TTRBMlNaVUFQMWhWWnZIclYzRmhxNW93?=
 =?utf-8?B?dnNEY2ltaWtmRkR3SjJvVVJQU2tTOVVnMjAxNWN0bzltUnJSWlJNV2tvY2wx?=
 =?utf-8?B?Q1hDeVUvNmYzT2hmWS9Jd2tYdEhEQ0xjTUpZay84UjdNbXc0NzVERGFVTGtM?=
 =?utf-8?B?ZEE3SW5mc05wVGZWeURyNWxqRklXS1RrbTBPT08vUUFyVWVPUldUVUhjUitv?=
 =?utf-8?B?VWFVNmtvZ2NxWkV5a0dLSXdkZ3JsVlZwVzNBM2Q2cmRsRHdBaWFrNzhoeXVk?=
 =?utf-8?B?bmd6cHg3RWtkV1A1b0tneTAxaS9FcTE4OThwdElFcUZpQ0FON3dDOUpVWFBj?=
 =?utf-8?B?b3R0M05pWS9zY0d4V01mZGk1enBFbEFvTU1ZWVFjalZuU1NzQkt3amhrL0g3?=
 =?utf-8?B?aVhFcTdvZWcxVGNHcmRRdTc3c1Zlb3lsMld2czVLWnNqdkRtWnZXY2tUUEpQ?=
 =?utf-8?B?bFYvckphaytoRndLeFFTYUp5MjJpdlJhRTlwRndHRWdQYlByb0NFaHpaQnRm?=
 =?utf-8?B?UTRwYmxOaThGOVkxa1RqUi9XMUhWUEZiR0U5MHdVcy9kcmRqTm9aNjdnWFA4?=
 =?utf-8?B?Vmswd3ZFTDlIdzRWVnlUTjV5c0pLalNLWnM3N0J5c0xraVRtTEVyOG9xaEli?=
 =?utf-8?B?dFJhS1grSGFTQ3VJeFJDZkkvMm5qV1dJREhxVHZxdjY1cXRaNHE1dVUvSGFa?=
 =?utf-8?B?U3NINVBLaWdLSDR3T05Va0JlTitLNzFsOUM3WGdabm5XeStpa3E0OC9IcFRJ?=
 =?utf-8?B?bzdhMVBXRHQ5dDNhTTZuajBzT1N0V25BbUl5bTVadmN3dWdzVzNVdWVWL1Vl?=
 =?utf-8?B?bDJheFJkM3A4WUxHT2NiRU16ajV2RkhySkNjYjA3UkVmZk5IWkJjakNsY0l6?=
 =?utf-8?B?TlA3ZGU3elJmc3VaaTJmWFhUalArUlpBMkdNTU1DVERXckpJSDREdm1mQzNK?=
 =?utf-8?B?UlRvU0ppNk1OZElBQVJJRFZwbFZyQTRUOEswN080ZEtGMXlqdHppR1l2d3NT?=
 =?utf-8?B?NXVyVFBSYXNPTG5mNDl3cWRQOEc2ZUpYdk1QRzZHQ040MW9HQlgyTXdIeDBa?=
 =?utf-8?B?SDlteUFyTmRNQ1JWZXBCeC9BRU9xNnFOazV6dGd3TU1COXFZa0NZM3pEYk0v?=
 =?utf-8?B?eG1UdktwWDFhbktlaHVLNVlLZjg2MDJ2d2htRDdRYlVNMzBGMnA2UkYrVzdK?=
 =?utf-8?B?ZEZhSXV1RHNnR2FmVDlhQlBUekZwS0NpSGZROXM5QWxUNkdhTDd0Z09vazY0?=
 =?utf-8?B?bUE3bG1jVWVGTm04ZzFFcUpyRXVCL3doWkYzcitYT3B3WlRoZ084ZC9iTThR?=
 =?utf-8?Q?LJJM=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 16:08:12.1986
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 54007dc9-ba94-4a78-6854-08de22ced868
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CH1PEPF0000A34A.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4053
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: M7EMGRSXM5R3NVHS25K4K44TN2CUDW7R
X-Message-ID-Hash: M7EMGRSXM5R3NVHS25K4K44TN2CUDW7R
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:48 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 03/20] drm/amdgpu: remove direct_submit arg from amdgpu_copy_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M7EMGRSXM5R3NVHS25K4K44TN2CUDW7R/>
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
	DATE_IN_PAST(1.00)[3695];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 2CF82410628
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
aW5kZXggM2I0NmEyNGE4YzQ4Li5jOTg1ZjU3ZmEyMjcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uYw0KQEAgLTM1NCw3ICszNTQsNyBAQCBzdGF0aWMgaW50IGFtZGdw
dV90dG1fY29weV9tZW1fdG9fbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KIAkJfQ0K
IA0KIAkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihyaW5nLCBmcm9tLCB0bywgY3VyX3NpemUsIHJl
c3YsDQotCQkJCSAgICAgICAmbmV4dCwgZmFsc2UsIHRydWUsIGNvcHlfZmxhZ3MpOw0KKwkJCQkg
ICAgICAgJm5leHQsIHRydWUsIGNvcHlfZmxhZ3MpOw0KIAkJaWYgKHIpDQogCQkJZ290byBlcnJv
cjsNCiANCkBAIC0yMjExLDE2ICsyMjExLDEzIEBAIHZvaWQgYW1kZ3B1X3R0bV9zZXRfYnVmZmVy
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
ICAmYWRldi0+bW1hbi5oaWdoX3ByOw0KQEAgLTIyNDYsNyArMjI0Myw3IEBAIHN0YXRpYyBpbnQg
YW1kZ3B1X3R0bV9wcmVwYXJlX2pvYihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCiBpbnQg
YW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdWludDY0X3Qgc3Jj
X29mZnNldCwNCiAJCSAgICAgICB1aW50NjRfdCBkc3Rfb2Zmc2V0LCB1aW50MzJfdCBieXRlX2Nv
dW50LA0KIAkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCi0JCSAgICAgICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqZmVuY2UsIGJvb2wgZGlyZWN0X3N1Ym1pdCwNCisJCSAgICAgICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqZmVuY2UsDQogCQkgICAgICAgYm9vbCB2bV9uZWVkc19mbHVzaCwgdWludDMy
X3QgY29weV9mbGFncykNCiB7DQogCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gcmluZy0+
YWRldjsNCkBAIC0yMjU2LDcgKzIyNTMsNyBAQCBpbnQgYW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVj
dCBhbWRncHVfcmluZyAqcmluZywgdWludDY0X3Qgc3JjX29mZnNldCwNCiAJdW5zaWduZWQgaW50
IGk7DQogCWludCByOw0KIA0KLQlpZiAoIWRpcmVjdF9zdWJtaXQgJiYgIXJpbmctPnNjaGVkLnJl
YWR5KSB7DQorCWlmICghcmluZy0+c2NoZWQucmVhZHkpIHsNCiAJCWRldl9lcnIoYWRldi0+ZGV2
LA0KIAkJCSJUcnlpbmcgdG8gbW92ZSBtZW1vcnkgd2l0aCByaW5nIHR1cm5lZCBvZmYuXG4iKTsN
CiAJCXJldHVybiAtRUlOVkFMOw0KQEAgLTIyNjUsNyArMjI2Miw3IEBAIGludCBhbWRncHVfY29w
eV9idWZmZXIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCB1aW50NjRfdCBzcmNfb2Zmc2V0LA0K
IAltYXhfYnl0ZXMgPSBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jcy0+Y29weV9tYXhfYnl0ZXM7DQog
CW51bV9sb29wcyA9IERJVl9ST1VORF9VUChieXRlX2NvdW50LCBtYXhfYnl0ZXMpOw0KIAludW1f
ZHcgPSBBTElHTihudW1fbG9vcHMgKiBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jcy0+Y29weV9udW1f
ZHcsIDgpOw0KLQlyID0gYW1kZ3B1X3R0bV9wcmVwYXJlX2pvYihhZGV2LCBkaXJlY3Rfc3VibWl0
LCBudW1fZHcsDQorCXIgPSBhbWRncHVfdHRtX3ByZXBhcmVfam9iKGFkZXYsIG51bV9kdywNCiAJ
CQkJICAgcmVzdiwgdm1fbmVlZHNfZmx1c2gsICZqb2IsIGZhbHNlLA0KIAkJCQkgICBBTURHUFVf
S0VSTkVMX0pPQl9JRF9UVE1fQ09QWV9CVUZGRVIpOw0KIAlpZiAocikNCkBAIC0yMjgzLDEwICsy
MjgwLDcgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcs
IHVpbnQ2NF90IHNyY19vZmZzZXQsDQogDQogCWFtZGdwdV9yaW5nX3BhZF9pYihyaW5nLCAmam9i
LT5pYnNbMF0pOw0KIAlXQVJOX09OKGpvYi0+aWJzWzBdLmxlbmd0aF9kdyA+IG51bV9kdyk7DQot
CWlmIChkaXJlY3Rfc3VibWl0KQ0KLQkJciA9IGFtZGdwdV9qb2Jfc3VibWl0X2RpcmVjdChqb2Is
IHJpbmcsIGZlbmNlKTsNCi0JZWxzZQ0KLQkJKmZlbmNlID0gYW1kZ3B1X2pvYl9zdWJtaXQoam9i
KTsNCisJKmZlbmNlID0gYW1kZ3B1X2pvYl9zdWJtaXQoam9iKTsNCiAJaWYgKHIpDQogCQlnb3Rv
IGVycm9yX2ZyZWU7DQogDQpAQCAtMjMxNSw3ICsyMzA5LDcgQEAgc3RhdGljIGludCBhbWRncHVf
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
