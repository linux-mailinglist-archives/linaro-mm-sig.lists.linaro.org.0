Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sG8/KBdk5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B51431935
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 199E2405D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:36:22 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012061.outbound.protection.outlook.com [52.101.48.61])
	by lists.linaro.org (Postfix) with ESMTPS id 8DCDF402AE
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Apr 2026 08:37:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Qnnv1BcZ;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.48.61 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j2RCgVRn+yp36nT6ms/9bNuLjh0KDPOilNP7ZjcuZtcYX+iqu+YL7Z/2BS+jI9EnPmMU6NHh4/hS4pq5BieQqnYQdBfEHzcfqSwOrTV19XHfPYxRhU11M0QMS9tqymfSvh6642yJ3BtT93BZydEcB4cLkA2wDG1kqavRj3fkmOfnQjU0gaOhRBV+tEk1p2QVCSqSd06S/hab55Ls65M6ENtrzvFYYisKvXAtnnMxqA5jvX1TYaAVdDKd9QNGAExsKGBgXU5EuxBXkMfOplMxgYQZZwMr/5oO0+bakSdcGTgIWBT59id5Fl4dzBg9OBzYjzBEOaTaIAETDnSnrQQ8BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ryMxY/LUgK6bFkIZLfE4qne7H3Zb47m4Jobg0VE1agU=;
 b=hFkeptrHJ0YJgjx5GGWCHGaYl23yH50VsenwzPA1IYY23HsVgqCeTgHDxclARapoM5tXEW93fysfaRWtLHZZ/oJh7D/bWwDqXjfOtmP6pbp7jWRFDOw48gxD3Wkk/yUml33hO2OiJRxlnp1892CgB+LQPOUJ+omZyGvRlxGlaQT18xTcUJnNVd+hIYjEPGvgyJpyZDqsMojl+nuD/CQT12+dbV5Ql8a5Lultvk3yJR8wMZVGBJIP9+Jkr3Q6BJThciJprEaa5tGW/dK6ITNO8DSqevfieDJBLFvi7/T8xJ6DMk99y0NkN1BJLp7Ub1AtxqboA+X1q7wRGP6swzI8Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ryMxY/LUgK6bFkIZLfE4qne7H3Zb47m4Jobg0VE1agU=;
 b=Qnnv1BcZD992q4bzzlbKYwlArznbQ0bQY2IyVfIb9oAiMRwqNNbM28Gb9Kff4aIWNQxjGBPsHzmy33oNpyCmzni8iis1Z8I1etvUusB2Dy5npdmiax9F3DJ9fsvL/0GW2xdrjjRKyxAk/wFxE+V9Q7HnqC1cLrzbqKpCyYQZVT8=
Received: from SJ0PR03CA0210.namprd03.prod.outlook.com (2603:10b6:a03:2ef::35)
 by MW5PR12MB5650.namprd12.prod.outlook.com (2603:10b6:303:19e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Fri, 3 Apr
 2026 08:37:12 +0000
Received: from SJ1PEPF0000231A.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef:cafe::f0) by SJ0PR03CA0210.outlook.office365.com
 (2603:10b6:a03:2ef::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9769.20 via Frontend Transport; Fri,
 3 Apr 2026 08:37:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 SJ1PEPF0000231A.mail.protection.outlook.com (10.167.242.231) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17 via Frontend Transport; Fri, 3 Apr 2026 08:37:11 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 3 Apr 2026 03:37:07 -0500
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Fri, 3 Apr 2026 10:35:54 +0200
Message-ID: <20260403083602.1771-6-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260403083602.1771-1-pierre-eric.pelloux-prayer@amd.com>
References: <20260403083602.1771-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF0000231A:EE_|MW5PR12MB5650:EE_
X-MS-Office365-Filtering-Correlation-Id: fa1ec0b7-7b69-44db-2ec8-08de915c3357
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|82310400026|36860700016|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	nGKW9Z5mYPS1/Cw8juY47q8VZPXRUJnhk4FTfnnzZkQihtCiUiqBtXcm8o/t83CoFbvOmLdGDx4un1FwgtnBGJSKEJ3iVqAhO/rwDivDB4fpaq7c4JYP8ktbm/nMGRtTXt4cP7zwBVPdYZbRcnFCITjZLh1aXvDaMObjkyHjFPxpV/3xT+qX3ZsR8HChAP1W2jnYOt0geN6u/+wuTotKtEfZKN834UKRKI10M5DYRWpoYIcOvdpkdcikyB8E15o9TWXw6j7Hn8xNzQW3isl+K8HoWcHl5XnfJnZoRX6YXiHD1L44n2VcgfvWbyfjFULdV0c9Fg7vykN+VaVeIDrtiVqwbz4woIfuawEr/XyTQ2hN+EXNkRUBJB1m7kDk4qWYyGk6CZUKsluDwn9t4CxJq+dnK6rfKVK6G4BeFbJIfp82QTCJaPxhh+2uh7rm/gpWlU9vpTJjhT1XXVDMFKRrvg6ZLmKXgCx6RribtJXr1IJNfn2Pb16FSURCj+ri0MpYq/IbTLtp9tPb7gNaNm/hJb+5dmjpEgSxjHo+GXwKeq5sAkFhina+9WREF86iYsZA21yHh3Y5O2zrJRlUXjq6/8vA4i5m41mYIUFDNqGW+OR52yP1te2/mpMvtbL3MAjbxvNj2wTROSpdNmBk6SnPLi85u09+7M7bgWZ/Nc/5bocNSm+EpsOOXaFNnzKTp3PDOjEwTbbsWgkHbvyIB8QbytIo9kwroUjzc+PR7+bpHyaPBBLHNC8f6R92lpR9HQiW26mBpFC/MvmK9PI9WIRlrg==
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700016)(376014)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	6+dqMqU2/brdOu8tWy4hJ/S92SKsu+fNM6nwLdjcXGOfq8Pn43G/C50SvyiYcyhiBcC98jHQRQ7OwxBDqkZvGIbki8+bZeXB07WEkaOUOoQwPce6v6TbKhA4rPLOaPkmZR5BQomchnXGZKvzodXTELuXpi9hlUKflwNwt7ze9+mjSZ5TKU7Ic6pwTI9IzlfqBCVnB0enlPX3P5IjVYUDChLGfeW5SqquB6ohJlltN8JgM1Sgj/6fCoaIynRhgK5c92UhZC+ZTE5MPJNbP4qoPhR4QFVu0WaYJS7ARTZG686ZyQqtSZHFNM4HnAQ9UWboYXTBHUoVTxDJD/HB4teovgQn6ZB750ulIiH6hoZxtVjDHrOmTqAbL9Ws+W8btQaGNcW6YN3QAvQy/aCDGqDy/1/+kwgNJOGiBP+C63AXeBtn7pyiqBkWjZ2Z20OlRVDh
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 08:37:11.6212
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1ec0b7-7b69-44db-2ec8-08de915c3357
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	SJ1PEPF0000231A.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR12MB5650
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CZ62BIEGPS6ZWTMX7QVP2Y7GYQXCJUVU
X-Message-ID-Hash: CZ62BIEGPS6ZWTMX7QVP2Y7GYQXCJUVU
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:48 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 6/7] drm/amdgpu: rename amdgpu_fill_buffer as amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CZ62BIEGPS6ZWTMX7QVP2Y7GYQXCJUVU/>
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
	DATE_IN_PAST(1.00)[417];
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
	NEURAL_HAM(-0.00)[-0.277];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 63B51431935
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhpcyBpcyB0aGUgb25seSB1c2UgY2FzZSBmb3IgdGhpcyBmdW5jdGlvbi4NCg0KLS0tDQp2Mjog
YW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIgaW5zdGVhZCBvZiBhbWRncHVfY2xlYXJfYnVmZmVyDQot
LS0NCg0KU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1l
cmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5jIHwgMTIgKysrKystLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgfCAyMyArKysrKysrKysrLS0tLS0tLS0tLS0tDQog
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oICAgIHwgMTMgKysrKysrLS0t
LS0tDQogMyBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3Qu
YyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KaW5kZXggZDA4
ODRiYmZmYTc1Li4xOTVjYjFjODE0ZDEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfb2JqZWN0LmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9vYmplY3QuYw0KQEAgLTcxNyw5ICs3MTcsOSBAQCBpbnQgYW1kZ3B1X2JvX2NyZWF0
ZShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCiAJICAgIGJvLT50Ym8ucmVzb3VyY2UtPm1l
bV90eXBlID09IFRUTV9QTF9WUkFNKSB7DQogCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCiAN
Ci0JCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShh
ZGV2KSwNCi0JCQkJICAgICAgIGJvLCAwLCBOVUxMLCAmZmVuY2UsDQotCQkJCSAgICAgICB0cnVl
LCBBTURHUFVfS0VSTkVMX0pPQl9JRF9UVE1fQ0xFQVJfQlVGRkVSKTsNCisJCXIgPSBhbWRncHVf
dHRtX2NsZWFyX2J1ZmZlcihhbWRncHVfdHRtX25leHRfY2xlYXJfZW50aXR5KGFkZXYpLA0KKwkJ
CQkJICAgIGJvLCBOVUxMLCAmZmVuY2UsDQorCQkJCQkgICAgdHJ1ZSwgQU1ER1BVX0tFUk5FTF9K
T0JfSURfVFRNX0NMRUFSX0JVRkZFUik7DQogCQlpZiAodW5saWtlbHkocikpDQogCQkJZ290byBm
YWlsX3VucmVzZXJ2ZTsNCiANCkBAIC0xMzI5LDkgKzEzMjksOSBAQCB2b2lkIGFtZGdwdV9ib19y
ZWxlYXNlX25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQ0KIAlpZiAocikNCiAJ
CWdvdG8gb3V0Ow0KIA0KLQlyID0gYW1kZ3B1X2ZpbGxfYnVmZmVyKGFtZGdwdV90dG1fbmV4dF9j
bGVhcl9lbnRpdHkoYWRldiksDQotCQkJICAgICAgIGFibywgMCwgJmJvLT5iYXNlLl9yZXN2LCAm
ZmVuY2UsDQotCQkJICAgICAgIGZhbHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9DTEVBUl9PTl9S
RUxFQVNFKTsNCisJciA9IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKGFtZGdwdV90dG1fbmV4dF9j
bGVhcl9lbnRpdHkoYWRldiksDQorCQkJCSAgICBhYm8sICZiby0+YmFzZS5fcmVzdiwgJmZlbmNl
LA0KKwkJCQkgICAgZmFsc2UsIEFNREdQVV9LRVJORUxfSk9CX0lEX0NMRUFSX09OX1JFTEVBU0Up
Ow0KIAlpZiAoV0FSTl9PTihyKSkNCiAJCWdvdG8gb3V0Ow0KIA0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uYw0KaW5kZXggYTNkMDk5OGI4Y2VjLi5lNzRmOWY4YTg4ZGMgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KQEAgLTQxNyw4ICs0MTcs
OCBAQCBzdGF0aWMgaW50IGFtZGdwdV9tb3ZlX2JsaXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0
ICpibywNCiAJaWYgKG9sZF9tZW0tPm1lbV90eXBlID09IFRUTV9QTF9WUkFNICYmDQogCSAgICAo
YWJvLT5mbGFncyAmIEFNREdQVV9HRU1fQ1JFQVRFX1ZSQU1fV0lQRV9PTl9SRUxFQVNFKSkgew0K
IAkJc3RydWN0IGRtYV9mZW5jZSAqd2lwZV9mZW5jZSA9IE5VTEw7DQotCQlyID0gYW1kZ3B1X2Zp
bGxfYnVmZmVyKGVudGl0eSwgYWJvLCAwLCBOVUxMLCAmd2lwZV9mZW5jZSwNCi0JCQkJICAgICAg
IGZhbHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9NT1ZFX0JMSVQpOw0KKwkJciA9IGFtZGdwdV90
dG1fY2xlYXJfYnVmZmVyKGVudGl0eSwgYWJvLCBOVUxMLCAmd2lwZV9mZW5jZSwNCisJCQkJCSAg
ICBmYWxzZSwgQU1ER1BVX0tFUk5FTF9KT0JfSURfTU9WRV9CTElUKTsNCiAJCWlmIChyKSB7DQog
CQkJZ290byBlcnJvcjsNCiAJCX0gZWxzZSBpZiAod2lwZV9mZW5jZSkgew0KQEAgLTI1NzIsMjYg
KzI1NzIsMjMgQEAgc3RhdGljIGludCBhbWRncHVfdHRtX2ZpbGxfbWVtKHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2LA0KIH0NCiANCiAvKioNCi0gKiBhbWRncHVfZmlsbF9idWZmZXIgLSBmaWxs
IGEgYnVmZmVyIHdpdGggYSBnaXZlbiB2YWx1ZQ0KKyAqIGFtZGdwdV90dG1fY2xlYXJfYnVmZmVy
IC0gZmlsbCBhIGJ1ZmZlciB3aXRoIDANCiAgKiBAZW50aXR5OiBlbnRpdHkgdG8gdXNlDQogICog
QGJvOiB0aGUgYm8gdG8gZmlsbA0KLSAqIEBzcmNfZGF0YTogdGhlIHZhbHVlIHRvIHNldA0KICAq
IEByZXN2OiBmZW5jZXMgY29udGFpbmVkIGluIHRoaXMgcmVzZXJ2YXRpb24gd2lsbCBiZSB1c2Vk
IGFzIGRlcGVuZGVuY2llcy4NCiAgKiBAb3V0X2ZlbmNlOiB0aGUgZmVuY2UgZnJvbSB0aGUgbGFz
dCBjbGVhciB3aWxsIGJlIHN0b3JlZCBoZXJlLiBJdCBtaWdodCBiZQ0KICAqICAgICAgICAgICAg
IE5VTEwgaWYgbm8gam9iIHdhcyBydW4uDQotICogQGRlcGVuZGVuY3k6IG9wdGlvbmFsIGlucHV0
IGRlcGVuZGVuY3kgZmVuY2UuDQogICogQGNvbnNpZGVyX2NsZWFyX3N0YXR1czogdHJ1ZSBpZiBy
ZWdpb24gcmVwb3J0ZWQgYXMgY2xlYXJlZCBieSBhbWRncHVfcmVzX2NsZWFyZWQoKQ0KICAqICAg
ICAgICAgICAgICAgICAgICAgICAgIGFyZSBza2lwcGVkLg0KICAqIEBrX2pvYl9pZDogdHJhY2Ug
aWQNCiAgKg0KICAqLw0KLWludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1f
YnVmZmVyX2VudGl0eSAqZW50aXR5LA0KLQkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0K
LQkJICAgICAgIHVpbnQzMl90IHNyY19kYXRhLA0KLQkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAq
cmVzdiwNCi0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KLQkJICAgICAg
IGJvb2wgY29uc2lkZXJfY2xlYXJfc3RhdHVzLA0KLQkJICAgICAgIHU2NCBrX2pvYl9pZCkNCitp
bnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0
eSAqZW50aXR5LA0KKwkJCSAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCisJCQkgICAgc3RydWN0
IGRtYV9yZXN2ICpyZXN2LA0KKwkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0K
KwkJCSAgICBib29sIGNvbnNpZGVyX2NsZWFyX3N0YXR1cywNCisJCQkgICAgdTY0IGtfam9iX2lk
KQ0KIHsNCiAJc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBhbWRncHVfdHRtX2FkZXYoYm8t
PnRiby5iZGV2KTsNCiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBOVUxMOw0KQEAgLTI2MjIs
NyArMjYxOSw3IEBAIGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVm
ZmVyX2VudGl0eSAqZW50aXR5LA0KIAkJCWdvdG8gZXJyb3I7DQogDQogCQlyID0gYW1kZ3B1X3R0
bV9maWxsX21lbShhZGV2LCBlbnRpdHksDQotCQkJCQlzcmNfZGF0YSwgdG8sIGN1cl9zaXplLCBy
ZXN2LA0KKwkJCQkJMCwgdG8sIGN1cl9zaXplLCByZXN2LA0KIAkJCQkJJm5leHQsIHRydWUsIGtf
am9iX2lkKTsNCiAJCWlmIChyKQ0KIAkJCWdvdG8gZXJyb3I7DQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5oDQppbmRleCA0MzZhM2UwOWExNzguLmQ3YjE0ZDVjYWM3NyAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQpAQCAtMTg3LDEzICsxODcs
MTIgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwN
CiAJCSAgICAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQogCQkgICAgICAgc3RydWN0IGRtYV9m
ZW5jZSAqKmZlbmNlLA0KIAkJICAgICAgIGJvb2wgdm1fbmVlZHNfZmx1c2gsIHVpbnQzMl90IGNv
cHlfZmxhZ3MpOw0KLWludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVm
ZmVyX2VudGl0eSAqZW50aXR5LA0KLQkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KLQkJ
ICAgICAgIHVpbnQzMl90IHNyY19kYXRhLA0KLQkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVz
diwNCi0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KLQkJICAgICAgIGJv
b2wgY29uc2lkZXJfY2xlYXJfc3RhdHVzLA0KLQkJICAgICAgIHU2NCBrX2pvYl9pZCk7DQoraW50
IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkg
KmVudGl0eSwNCisJCQkgICAgc3RydWN0IGFtZGdwdV9ibyAqYm8sDQorCQkJICAgIHN0cnVjdCBk
bWFfcmVzdiAqcmVzdiwNCisJCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqKm91dF9mZW5jZSwNCisJ
CQkgICAgYm9vbCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQorCQkJICAgIHU2NCBrX2pvYl9pZCk7
DQogc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAqYW1kZ3B1X3R0bV9uZXh0X2NsZWFy
X2VudGl0eShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldik7DQogDQogaW50IGFtZGdwdV90dG1f
YWxsb2NfZ2FydChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKTsNCi0tIA0KMi40My4wDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
