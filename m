Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NBxLggC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 395DE410FA6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3932F446FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:36:39 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010037.outbound.protection.outlook.com [52.101.46.37])
	by lists.linaro.org (Postfix) with ESMTPS id 2AC143F719
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Dec 2025 09:49:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="VLraA/ri";
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.46.37 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OgaMjvmhaly3hMstA+rVDZ7iyxFeTC36sUQfiM+qL9wQQWReEay+qSBLAmnGhwqGtJLTM6aRCoY3npaZSpVltt/cA/RJJHfdpa7ds3ezXmaOK9uPp5tjFPwngAFU9bYRJQJd3kAIeIvtq3SKdoFffCXLWiKZ/c7yJfWz0T1gysuOWBMovdL0cyglktXQjD3hsTH9jsmcHL+VJALtT4Uj12hm7DKL1qQQjmWLlImKLp7NptXbfiOX6HaFe9VSltPAa+d8rA+l563Q9AVv97CjCwAyNbtnGxSmXW3LjQN1TIT037ihuYwvxh7o9a/EN7FeOXYirP5h6BjtxKCkbkp/5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0d9N0PwT6civBu8V+Xr14rC1hBE4nef2qZPrEPvAyBY=;
 b=Z0fqUJc6+CpLhXpyQD1AECJRtG0YSYv9vFIetsK0/VZwH6ObPYE/a9LNvR5n99PQalyRFgnQU5rzba4NhRe79lOLY+vrb++95MIMOKEsgAUB4HHcvyRMYcunbetEZyAX9Nq6y9cNhhc6qBc2pymDuW3mqNt0IkWY+ge0IXWEW6OuStw2xrktQTsvqwnemqzmCe4brQurItgY+xc9T9nFxM5AhIX1vLL6U0wAO7o2e5K9ZH7xTOng6r34h6udnttC+uEuA046cTirZBBIeNh3QwzI/NTAMqkLkeArtRE3ZtR13jRl65WN8r4F0RHj1C4xDvz+RrIkE+st8thoKXkjuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0d9N0PwT6civBu8V+Xr14rC1hBE4nef2qZPrEPvAyBY=;
 b=VLraA/ri8Po8wH0Msw1LOo5uHyCtt7chaG45UT8sus6rUDnRjC9KYUCywrXElq7H+bGdSyMGI/VKY99cCLjy7vaYUVLtGrwrnyAWpVpMBOvycw7FzXf8SWHaUCCNWVxxXbY+f26LXFf5yqVOok/G4qqoe+F6bKjsg7vjB+Z47Mk=
Received: from MW4PR03CA0177.namprd03.prod.outlook.com (2603:10b6:303:8d::32)
 by DS0PR12MB7726.namprd12.prod.outlook.com (2603:10b6:8:130::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 09:49:39 +0000
Received: from MWH0EPF000A672F.namprd04.prod.outlook.com
 (2603:10b6:303:8d:cafe::a6) by MW4PR03CA0177.outlook.office365.com
 (2603:10b6:303:8d::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9388.9 via Frontend Transport; Tue, 2
 Dec 2025 09:49:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 MWH0EPF000A672F.mail.protection.outlook.com (10.167.249.21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.8 via Frontend Transport; Tue, 2 Dec 2025 09:49:39 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Dec 2025 03:49:27 -0600
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Tue, 2 Dec 2025 10:47:12 +0100
Message-ID: <20251202094738.15614-3-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251202094738.15614-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251202094738.15614-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000A672F:EE_|DS0PR12MB7726:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f236c38-31f9-4f60-df6c-08de31881c43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SW1JdVorN25KUlNrWE5mZVhIam9KVDZIcG5wbHZWTjJreEZndk1udm9HblNx?=
 =?utf-8?B?ckJBdDZKZnl5dGYwS1VOUzg4MUhSNE54U25jUDVEaXRqWG1uRC92cjNmRGpX?=
 =?utf-8?B?OCt0elpYc3VaM3VEcDQ3d0tVNTVQeHRwZ0NKRFZCZlhHbEpKeWNNcHUxQzBi?=
 =?utf-8?B?QURkWnFhMVVpd3Q0RVFaVHRUZXV4cmROR003L1JwMlhBQjA4bSttY1QxbjF2?=
 =?utf-8?B?SHBqTlRTa2pTVDd4Yy9SK2EvVmk3Y3hZUy9ZN2thRTZJU3JJbEdFTWpqbTRn?=
 =?utf-8?B?SzNnWUxSWW1sQ05obE0zcUZqd3Y4VmZWN3VrU3Uva1hVS1EwY09leFlEb0pq?=
 =?utf-8?B?bURaVEZ6b0VpZmtFV3ZSa2JKTnhEZVdTMU9wcURrMVZ2NUlxb1N3QW83MFE1?=
 =?utf-8?B?RCtNMDk5UzluSGZETldVeGtCeU11bUlrRUxBTDZwODhlTUJrU3d3c3NxZG4y?=
 =?utf-8?B?M1hqRFZEcG1oemE1YVJvOFlxUTBTWVR1ZXB6STIvVTRZaXIwT0pQYVhPZXha?=
 =?utf-8?B?QXBtNitDODMzVzdiM0lqbXl3REJWbndIelhVeVJlSlhjSEpPaTFOMGhUVlc1?=
 =?utf-8?B?OWEzeEl3RklSOWo2RHZ4YmJjYnljRlRsVzRpdG03enJhcU95ak82NlpEeWp0?=
 =?utf-8?B?ZDhsNFB4L01EaDFXNkR0TTNiUllKaGR1enJYeEs3RkkxbXp4WTdneDdmS3Rq?=
 =?utf-8?B?WjZlY0xsMm1YZWhwNzBkZ2V4ZGNKTVhpbDRZdVpUTkFHWGg5UVoyYVFrbkJC?=
 =?utf-8?B?b3U3ck5sTHBqdlR2OWM1V2R3RlV6MzIzRThieVJ3THlYOUgzUUMyMWlGUzRo?=
 =?utf-8?B?ZVV5MnRNU2N6YW83dVVCK3AyOGwxb1E1V3dmTnlSLzQ0cndrNFRkOGY0SG9l?=
 =?utf-8?B?b3NOa242bVB5azhNRWphR1JoOFFmZURsbGFzeVB5bTBRdlV0Njd2ZUV1elMz?=
 =?utf-8?B?VUxMZkkvL1JLSjBrSnhVNVNpLzB2Rk1Nd24vRU1CeVFSSWRvTDRDbE9ieUVV?=
 =?utf-8?B?YzVCNHlEc1JnNTFnYTZUWUlGTmRKRnBwOU1JS2FSQnRDSCttZHkwNUM1VU1y?=
 =?utf-8?B?S1Fvdi9DQ2N1bUp4Wi9wc1dVbnJpRmFyNW1mLzY1b0JaOVArODJxcjNQeXRu?=
 =?utf-8?B?Y1R4eTU1YVVhUm1LZm9VTldpSm1WM0RlamoxRXA5czluOEh1dFk4WTY0cVg2?=
 =?utf-8?B?ZHU4bmdXcGE2Q1NuekNXOXozQ3p2eVJ2eldPWFVZMm1VeS9XK256cFhVQTcw?=
 =?utf-8?B?RzlwdHlCU25wUk1SY3AzQy9HbnZNNzdyNnZ6SGhNcEo3SGxrMW10cDVEQWZN?=
 =?utf-8?B?aVVBTk1kNFhqNzdPenMvNVRaa1IwTVRzMEFEZlpLVzFDeDBWcUhITWNXd3Vq?=
 =?utf-8?B?ZzVBRGlhS3hVM0pReTR5dURLdXBVUTl6NWRCUFRta01YZ0hzeTVXRTIyellC?=
 =?utf-8?B?OVJDcDlzcklzVGZYNDU2YmNWYzN1SGdYMTlrTy9RaXRFRWVhUVJ0bXRyTnJO?=
 =?utf-8?B?d01FbllyU2lmZ3VKbFFWNzY4Lzh6Z1hqSXFNZzc0Z2VGWllEbzNXQVZsNm1J?=
 =?utf-8?B?Nk9wR2o4ek5MeUZUZ3Z1M2J4V0R1Y1R0L1Vtbm94bVVnZ1NTR3JhSGFZaU1D?=
 =?utf-8?B?b1hMUDhCVHQ2bzBFUjl3SHNWUW1vNWIyd2VCYWg1SENnNWZNSHFhU0s0WE56?=
 =?utf-8?B?cGExTkQyZWF0cGhrS0phYmtXV2s4WHFnTUtET255aWtNZys5ODBNWEpZL0hj?=
 =?utf-8?B?MkZld2JpTVh2QmRxTTAySDhuTFVtOWxFRWVtSDk5eXcwdnBXc1VKTUJDYXpE?=
 =?utf-8?B?UUlnMmxFcmZaR09mY1lrMVcvanJnVGxQQlhWT0hHOGJuVXhORTZERUpSbjln?=
 =?utf-8?B?Wk4xVnAvL09IQllFVEJ2Vld4L3p3bWN5R2JkZ1RlWCtBYVdTWitRQ2Nid2da?=
 =?utf-8?B?cEoxSUYxNGFsVHJCUGlXZE53ditXSTg2ei9oVzBjMWxPbFJFZ2ZVamx1SXg4?=
 =?utf-8?B?TEYrNWUrbm1CR2JjamdUR0g5SW94dWdTMmIvWVJlODZzTi94c3ZyampPLzNI?=
 =?utf-8?B?dWdVOW02TzJUNlAxc1N2ODFHaUIvTWtNb3UxSTE4SWh4c1pnNUZLMVRkYS9v?=
 =?utf-8?Q?czlg=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 09:49:39.1373
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f236c38-31f9-4f60-df6c-08de31881c43
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	MWH0EPF000A672F.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7726
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: X7NLM54JUKDHPOGBWVWQ7EWI73ZLOP6E
X-Message-ID-Hash: X7NLM54JUKDHPOGBWVWQ7EWI73ZLOP6E
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:10 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 02/13] drm/amdgpu: add amdgpu_ttm_job_submit helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X7NLM54JUKDHPOGBWVWQ7EWI73ZLOP6E/>
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
	DATE_IN_PAST(1.00)[3245];
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
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 395DE410FA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RGVkdXBsaWNhdGUgdGhlIElCIHBhZGRpbmcgY29kZSBhbmQgd2lsbCBhbHNvIGJlIHVzZWQNCmxh
dGVyIHRvIGNoZWNrIGxvY2tpbmcuDQoNClNpZ25lZC1vZmYtYnk6IFBpZXJyZS1FcmljIFBlbGxv
dXgtUHJheWVyIDxwaWVycmUtZXJpYy5wZWxsb3V4LXByYXllckBhbWQuY29tPg0KUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyB8IDM0ICsrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRp
b25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCmluZGV4IDg0
M2EwZTQ4MzI2OC4uYWUzYWQxOTY2N2RmIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdHRtLmMNCkBAIC0xNjIsNiArMTYyLDE4IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9ldmlj
dF9mbGFncyhzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLA0KIAkqcGxhY2VtZW50ID0gYWJv
LT5wbGFjZW1lbnQ7DQogfQ0KIA0KK3N0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICoNCithbWRncHVf
dHRtX2pvYl9zdWJtaXQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHN0cnVjdCBhbWRncHVf
am9iICpqb2IsIHUzMiBudW1fZHcpDQorew0KKwlzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmc7DQor
DQorCXJpbmcgPSBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jc19yaW5nOw0KKwlhbWRncHVfcmluZ19w
YWRfaWIocmluZywgJmpvYi0+aWJzWzBdKTsNCisJV0FSTl9PTihqb2ItPmlic1swXS5sZW5ndGhf
ZHcgPiBudW1fZHcpOw0KKw0KKwlyZXR1cm4gYW1kZ3B1X2pvYl9zdWJtaXQoam9iKTsNCit9DQor
DQogLyoqDQogICogYW1kZ3B1X3R0bV9tYXBfYnVmZmVyIC0gTWFwIG1lbW9yeSBpbnRvIHRoZSBH
QVJUIHdpbmRvd3MNCiAgKiBAYm86IGJ1ZmZlciBvYmplY3QgdG8gbWFwDQpAQCAtMTg0LDcgKzE5
Niw2IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKHN0cnVjdCB0dG1fYnVmZmVy
X29iamVjdCAqYm8sDQogCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9h
ZGV2KGJvLT5iZGV2KTsNCiAJdW5zaWduZWQgaW50IG9mZnNldCwgbnVtX3BhZ2VzLCBudW1fZHcs
IG51bV9ieXRlczsNCiAJdWludDY0X3Qgc3JjX2FkZHIsIGRzdF9hZGRyOw0KLQlzdHJ1Y3QgYW1k
Z3B1X3JpbmcgKnJpbmc7DQogCXN0cnVjdCBhbWRncHVfam9iICpqb2I7DQogCXZvaWQgKmNwdV9h
ZGRyOw0KIAl1aW50NjRfdCBmbGFnczsNCkBAIC0yMzksMTAgKzI1MCw2IEBAIHN0YXRpYyBpbnQg
YW1kZ3B1X3R0bV9tYXBfYnVmZmVyKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQogCWFt
ZGdwdV9lbWl0X2NvcHlfYnVmZmVyKGFkZXYsICZqb2ItPmlic1swXSwgc3JjX2FkZHIsDQogCQkJ
CWRzdF9hZGRyLCBudW1fYnl0ZXMsIDApOw0KIA0KLQlyaW5nID0gYWRldi0+bW1hbi5idWZmZXJf
ZnVuY3NfcmluZzsNCi0JYW1kZ3B1X3JpbmdfcGFkX2liKHJpbmcsICZqb2ItPmlic1swXSk7DQot
CVdBUk5fT04oam9iLT5pYnNbMF0ubGVuZ3RoX2R3ID4gbnVtX2R3KTsNCi0NCiAJZmxhZ3MgPSBh
bWRncHVfdHRtX3R0X3B0ZV9mbGFncyhhZGV2LCBiby0+dHRtLCBtZW0pOw0KIAlpZiAodG16KQ0K
IAkJZmxhZ3MgfD0gQU1ER1BVX1BURV9UTVo7DQpAQCAtMjYwLDcgKzI2Nyw3IEBAIHN0YXRpYyBp
bnQgYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQog
CQlhbWRncHVfZ2FydF9tYXBfdnJhbV9yYW5nZShhZGV2LCBwYSwgMCwgbnVtX3BhZ2VzLCBmbGFn
cywgY3B1X2FkZHIpOw0KIAl9DQogDQotCWRtYV9mZW5jZV9wdXQoYW1kZ3B1X2pvYl9zdWJtaXQo
am9iKSk7DQorCWRtYV9mZW5jZV9wdXQoYW1kZ3B1X3R0bV9qb2Jfc3VibWl0KGFkZXYsIGpvYiwg
bnVtX2R3KSk7DQogCXJldHVybiAwOw0KIH0NCiANCkBAIC0xNDk3LDEwICsxNTA0LDcgQEAgc3Rh
dGljIGludCBhbWRncHVfdHRtX2FjY2Vzc19tZW1vcnlfc2RtYShzdHJ1Y3QgdHRtX2J1ZmZlcl9v
YmplY3QgKmJvLA0KIAlhbWRncHVfZW1pdF9jb3B5X2J1ZmZlcihhZGV2LCAmam9iLT5pYnNbMF0s
IHNyY19hZGRyLCBkc3RfYWRkciwNCiAJCQkJUEFHRV9TSVpFLCAwKTsNCiANCi0JYW1kZ3B1X3Jp
bmdfcGFkX2liKGFkZXYtPm1tYW4uYnVmZmVyX2Z1bmNzX3JpbmcsICZqb2ItPmlic1swXSk7DQot
CVdBUk5fT04oam9iLT5pYnNbMF0ubGVuZ3RoX2R3ID4gbnVtX2R3KTsNCi0NCi0JZmVuY2UgPSBh
bWRncHVfam9iX3N1Ym1pdChqb2IpOw0KKwlmZW5jZSA9IGFtZGdwdV90dG1fam9iX3N1Ym1pdChh
ZGV2LCBqb2IsIG51bV9kdyk7DQogCW11dGV4X3VubG9jaygmYWRldi0+bW1hbi5ndHRfd2luZG93
X2xvY2spOw0KIA0KIAlpZiAoIWRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGZhbHNlLCBh
ZGV2LT5zZG1hX3RpbWVvdXQpKQ0KQEAgLTIyODYsMTEgKzIyOTAsOSBAQCBpbnQgYW1kZ3B1X2Nv
cHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1aW50NjRfdCBzcmNfb2Zmc2V0
LA0KIAkJYnl0ZV9jb3VudCAtPSBjdXJfc2l6ZV9pbl9ieXRlczsNCiAJfQ0KIA0KLQlhbWRncHVf
cmluZ19wYWRfaWIocmluZywgJmpvYi0+aWJzWzBdKTsNCi0JV0FSTl9PTihqb2ItPmlic1swXS5s
ZW5ndGhfZHcgPiBudW1fZHcpOw0KLQkqZmVuY2UgPSBhbWRncHVfam9iX3N1Ym1pdChqb2IpOw0K
IAlpZiAocikNCiAJCWdvdG8gZXJyb3JfZnJlZTsNCisJKmZlbmNlID0gYW1kZ3B1X3R0bV9qb2Jf
c3VibWl0KGFkZXYsIGpvYiwgbnVtX2R3KTsNCiANCiAJcmV0dXJuIHI7DQogDQpAQCAtMjMwOCw3
ICsyMzEwLDYgQEAgc3RhdGljIGludCBhbWRncHVfdHRtX2ZpbGxfbWVtKHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2LCB1aW50MzJfdCBzcmNfZGF0YSwNCiAJCQkgICAgICAgdTY0IGtfam9iX2lk
KQ0KIHsNCiAJdW5zaWduZWQgaW50IG51bV9sb29wcywgbnVtX2R3Ow0KLQlzdHJ1Y3QgYW1kZ3B1
X3JpbmcgKnJpbmc7DQogCXN0cnVjdCBhbWRncHVfam9iICpqb2I7DQogCXVpbnQzMl90IG1heF9i
eXRlczsNCiAJdW5zaWduZWQgaW50IGk7DQpAQCAtMjMzMiwxMCArMjMzMyw3IEBAIHN0YXRpYyBp
bnQgYW1kZ3B1X3R0bV9maWxsX21lbShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgdWludDMy
X3Qgc3JjX2RhdGEsDQogCQlieXRlX2NvdW50IC09IGN1cl9zaXplOw0KIAl9DQogDQotCXJpbmcg
PSBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jc19yaW5nOw0KLQlhbWRncHVfcmluZ19wYWRfaWIocmlu
ZywgJmpvYi0+aWJzWzBdKTsNCi0JV0FSTl9PTihqb2ItPmlic1swXS5sZW5ndGhfZHcgPiBudW1f
ZHcpOw0KLQkqZmVuY2UgPSBhbWRncHVfam9iX3N1Ym1pdChqb2IpOw0KKwkqZmVuY2UgPSBhbWRn
cHVfdHRtX2pvYl9zdWJtaXQoYWRldiwgam9iLCBudW1fZHcpOw0KIAlyZXR1cm4gMDsNCiB9DQog
DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
