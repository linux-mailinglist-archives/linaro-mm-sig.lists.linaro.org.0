Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFYtG9Fk5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E3176431B02
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFD9D3F783
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:27 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012054.outbound.protection.outlook.com [52.101.43.54])
	by lists.linaro.org (Postfix) with ESMTPS id 56C1F401C9
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4PRTmYSP;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.43.54 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l3DZNHxDsx1BMAfmBI5MVelhvos/SUuKvK14lqpUn+Agg1ERqbdY0XUrh9rTQ8sxgBSdRY4kuWdskqy8CNoDlmghC2NPvvloC/z5yq3+sdMpBL9lgbzIB9NfS7a4T4UVF25Zjz3ugswJ1au5aYYYI0hEUUoNWpf/j+bVHB9wjd/QGQAint7Db7uKnE4Wg7ijSl2LG7GRbs69TXaP/6EQURp1gWIyDKI3isVAkbxfVvm4kOdhV5SK5bXMOs0CoBO0HMHspA4LXNB20UznM1Jxy12ImlQ+rZpwPzQLz/5AV1J7b1DikX2Li/ihYs/ILsQF4M7ip4LHKyQMgGqnogSMzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KU/qZn6yp8Db2YGZP5eiexytoV3LmXULmALLIdcdl7A=;
 b=iMHVIBrpSGEDdN0j1hJ2wnCc2b5Pxp7n37RGAzRawafnwwWWHk4GDS3S0zCU0pURWVz0eByZkpfKERb3vmLGsma06R9l6nA+55URkHrQw9Mw3rhZiR76cusX4dllclC+2WiK+mwab1UYJRVI5UcEqrOapDz02GCZLQDWqNXb6RBDTBKohGuA4+D5FuEBLT4yivEEGVqDNoBBo4nJmsopwPqpQwGnOh4ZkE+RVMVqrNQNPiDPZMDgfSpw7sVtYueV8DxALiiBoptYHDpnakCQpykt/lEDvilZJrbIdWCb81ON69wad1F/ZnWOzZsuFuE+YTUns7ts4Zg+q/FKtoPiDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KU/qZn6yp8Db2YGZP5eiexytoV3LmXULmALLIdcdl7A=;
 b=4PRTmYSPgqKFiaFEErDBVnh0Jge/H0d//Wn5jtjreT/SEFeFNgkw8N3igCbRroLxFrOKK6yx2qqsnjGAVckErhjJxnO/pR7J/wcL1rA+1MWiVLQpwg1GWVy3kaBEHQBG8ZgGqSNddquglQ04vdfP0N6sjHmthpJVwKRxCTbUzLg=
Received: from PH2PEPF0000384F.namprd17.prod.outlook.com (2603:10b6:518:1::71)
 by IA0PR12MB8748.namprd12.prod.outlook.com (2603:10b6:208:482::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 10:07:28 +0000
Received: from CY4PEPF0000EDD5.namprd03.prod.outlook.com
 (2a01:111:f403:f912::1) by PH2PEPF0000384F.outlook.office365.com
 (2603:1036:903:48::3) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9769.32 via Frontend Transport; Wed,
 8 Apr 2026 10:07:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CY4PEPF0000EDD5.mail.protection.outlook.com (10.167.241.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17 via Frontend Transport; Wed, 8 Apr 2026 10:07:27 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 8 Apr 2026 05:07:25 -0500
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Wed, 8 Apr 2026 12:03:17 +0200
Message-ID: <20260408100327.1372-6-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260408100327.1372-1-pierre-eric.pelloux-prayer@amd.com>
References: <20260408100327.1372-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EDD5:EE_|IA0PR12MB8748:EE_
X-MS-Office365-Filtering-Correlation-Id: cc8bbeaf-1796-48a9-343a-08de9556a3bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|36860700016|376014|82310400026|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	H06rEIuQ6CXK5GrgaI6HFgrUdciIcVpkL+af7Lan9Q7VDfOw36RErD2wQsN89D8EumLKXqtYxuOBMpurpODWq/SIYQZIoNtcBUQZhvbn8eBLqOVI0V7/wCul2mF/7HrzNcwd4AMKtzYc0GXFolDQFh/s+a34NWFxlf6laRgzDfKBMLRlnWb38CXA9meCDNWhzCiWvzU8UX4HVq6tVnIxGQ23RwcltOog6aiYfph2gwTdkeID//Qh4rWBknk3AfMVg7qbalRPbua14A2JgbvPTiDHohay9S8GoO5WUYlK9kRHw8fInu+HAbaOURbDhbxNw8/RelN3uQjHMHtzSoCJP7uB8RNnqGJPBQyJg/gBI+t9AbuWC6N7RGW8axt9mkYLia1vpYO+VIi09U9kIayzcJkOjSKwDRpRKR2lVnFv7iwkZ56Xp5p4H7/MNo46NN/zWqNFnq/lTo0TW5tbZp3OWON98dK4eUwCtgeKu70nF7eEq/DDjlEEKc+vzzSk6M9Z2NIR1z0disqzKp5iK6lXBuBPejK87aFBYSY/NuBUbMq3XsoxYDKXR5ljBT3xLoaqoI7D2+ZcnFJFm8uI8DZOohtCpHOGHyJfe98JboXJ8v4XCvg0sqqVS+Cujga5neUfncW45PKzdGv4BV9rfm/kaGc8Pf3dx1RVu2/oWbUT98jj+lpdvc/yMCvN1RQsjOBBbHvcVoAsKaXalNHbj7Qqyn8M9zCHmx1gKWZq50E3udaAPsOu/mgRgRGRrpbZ/2VALRWt8xCKmnwatUEB9kE8/A==
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(376014)(82310400026)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	fXbEHWFQFlW0AjH2hKN7oUdfqgzhlyg5MoQRY0AnYHy3dpJe1MzA3GkUEX/NIfZ1qmtLRacjCDiFmM+cfiajVtwuUsPTN13ko3BuQHm0+VaNmaPO8dfZp8BH6ztQo6nbkjw/6Ige95+K56dK0MqTRBKLcQI76Hgz0qTJQCUGVWiCgGKvmqOlZSw1nGCoIUZDlaiWgkC7I2qW5dj+F/uxmYKoFCLjbn1zkb7V2gPvDUdOSvLQtXzrzTUqZjPuZ2GVItazmKRLMNhKuIw6FIoVnwhPq8h3tSGYKH+pEFZZd8LSXAZvIpLEoDGuLWLKCwye/czxgTNXAMi4e/umKrZSyLM1dOrFToYoykbkzoyf3G5Ivz047GiejPy5scWpYMqLuMviMAoxwgIHULYRnkyhLc45agiTi32QLDR3GDl6OF6px3uCx1Kqu4TslFxs3Ggg
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 10:07:27.9507
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cc8bbeaf-1796-48a9-343a-08de9556a3bf
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CY4PEPF0000EDD5.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8748
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NGYPMRGU5UNSW4K34EVDCURLCDKNKKZ2
X-Message-ID-Hash: NGYPMRGU5UNSW4K34EVDCURLCDKNKKZ2
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:55 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 6/8] drm/amdgpu: rename amdgpu_fill_buffer as amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NGYPMRGU5UNSW4K34EVDCURLCDKNKKZ2/>
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
	DATE_IN_PAST(1.00)[295];
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
	NEURAL_HAM(-0.00)[-0.278];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: E3176431B02
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
YyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KaW5kZXggYmRl
Y2E4MGNkNzdkLi40ZGQ3YzcxMmI4YzMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfb2JqZWN0LmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9vYmplY3QuYw0KQEAgLTcxNyw5ICs3MTcsOSBAQCBpbnQgYW1kZ3B1X2JvX2NyZWF0
ZShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCiAJICAgIGJvLT50Ym8ucmVzb3VyY2UtPm1l
bV90eXBlID09IFRUTV9QTF9WUkFNKSB7DQogCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCiAN
Ci0JCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShh
ZGV2KSwNCi0JCQkJICAgICAgIGJvLCAwLCBiby0+dGJvLmJhc2UucmVzdiwgJmZlbmNlLA0KLQkJ
CQkgICAgICAgdHJ1ZSwgQU1ER1BVX0tFUk5FTF9KT0JfSURfVFRNX0NMRUFSX0JVRkZFUik7DQor
CQlyID0gYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0
eShhZGV2KSwNCisJCQkJCSAgICBibywgYm8tPnRiby5iYXNlLnJlc3YsICZmZW5jZSwNCisJCQkJ
CSAgICB0cnVlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9UVE1fQ0xFQVJfQlVGRkVSKTsNCiAJCWlm
ICh1bmxpa2VseShyKSkNCiAJCQlnb3RvIGZhaWxfdW5yZXNlcnZlOw0KIA0KQEAgLTEzMjksOSAr
MTMyOSw5IEBAIHZvaWQgYW1kZ3B1X2JvX3JlbGVhc2Vfbm90aWZ5KHN0cnVjdCB0dG1fYnVmZmVy
X29iamVjdCAqYm8pDQogCWlmIChyKQ0KIAkJZ290byBvdXQ7DQogDQotCXIgPSBhbWRncHVfZmls
bF9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShhZGV2KSwNCi0JCQkgICAgICAg
YWJvLCAwLCAmYm8tPmJhc2UuX3Jlc3YsICZmZW5jZSwNCi0JCQkgICAgICAgZmFsc2UsIEFNREdQ
VV9LRVJORUxfSk9CX0lEX0NMRUFSX09OX1JFTEVBU0UpOw0KKwlyID0gYW1kZ3B1X3R0bV9jbGVh
cl9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShhZGV2KSwNCisJCQkJICAgIGFi
bywgJmJvLT5iYXNlLl9yZXN2LCAmZmVuY2UsDQorCQkJCSAgICBmYWxzZSwgQU1ER1BVX0tFUk5F
TF9KT0JfSURfQ0xFQVJfT05fUkVMRUFTRSk7DQogCWlmIChXQVJOX09OKHIpKQ0KIAkJZ290byBv
dXQ7DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQppbmRleCA3YWYx
MTYyMzI2M2QuLjhkNzc4Y2JjZTFhYSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3R0bS5jDQpAQCAtNDE3LDggKzQxNyw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X21vdmVfYmxp
dChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLA0KIAlpZiAob2xkX21lbS0+bWVtX3R5cGUg
PT0gVFRNX1BMX1ZSQU0gJiYNCiAJICAgIChhYm8tPmZsYWdzICYgQU1ER1BVX0dFTV9DUkVBVEVf
VlJBTV9XSVBFX09OX1JFTEVBU0UpKSB7DQogCQlzdHJ1Y3QgZG1hX2ZlbmNlICp3aXBlX2ZlbmNl
ID0gTlVMTDsNCi0JCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoZW50aXR5LCBhYm8sIDAsIE5VTEws
ICZ3aXBlX2ZlbmNlLA0KLQkJCQkgICAgICAgZmFsc2UsIEFNREdQVV9LRVJORUxfSk9CX0lEX01P
VkVfQkxJVCk7DQorCQlyID0gYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoZW50aXR5LCBhYm8sIE5V
TEwsICZ3aXBlX2ZlbmNlLA0KKwkJCQkJICAgIGZhbHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9N
T1ZFX0JMSVQpOw0KIAkJaWYgKHIpIHsNCiAJCQlnb3RvIGVycm9yOw0KIAkJfSBlbHNlIGlmICh3
aXBlX2ZlbmNlKSB7DQpAQCAtMjU3MywyNiArMjU3MywyMyBAQCBzdGF0aWMgaW50IGFtZGdwdV90
dG1fZmlsbF9tZW0oc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQogfQ0KIA0KIC8qKg0KLSAq
IGFtZGdwdV9maWxsX2J1ZmZlciAtIGZpbGwgYSBidWZmZXIgd2l0aCBhIGdpdmVuIHZhbHVlDQor
ICogYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIgLSBmaWxsIGEgYnVmZmVyIHdpdGggMA0KICAqIEBl
bnRpdHk6IGVudGl0eSB0byB1c2UNCiAgKiBAYm86IHRoZSBibyB0byBmaWxsDQotICogQHNyY19k
YXRhOiB0aGUgdmFsdWUgdG8gc2V0DQogICogQHJlc3Y6IGZlbmNlcyBjb250YWluZWQgaW4gdGhp
cyByZXNlcnZhdGlvbiB3aWxsIGJlIHVzZWQgYXMgZGVwZW5kZW5jaWVzLg0KICAqIEBvdXRfZmVu
Y2U6IHRoZSBmZW5jZSBmcm9tIHRoZSBsYXN0IGNsZWFyIHdpbGwgYmUgc3RvcmVkIGhlcmUuIEl0
IG1pZ2h0IGJlDQogICogICAgICAgICAgICAgTlVMTCBpZiBubyBqb2Igd2FzIHJ1bi4NCi0gKiBA
ZGVwZW5kZW5jeTogb3B0aW9uYWwgaW5wdXQgZGVwZW5kZW5jeSBmZW5jZS4NCiAgKiBAY29uc2lk
ZXJfY2xlYXJfc3RhdHVzOiB0cnVlIGlmIHJlZ2lvbiByZXBvcnRlZCBhcyBjbGVhcmVkIGJ5IGFt
ZGdwdV9yZXNfY2xlYXJlZCgpDQogICogICAgICAgICAgICAgICAgICAgICAgICAgYXJlIHNraXBw
ZWQuDQogICogQGtfam9iX2lkOiB0cmFjZSBpZA0KICAqDQogICovDQotaW50IGFtZGdwdV9maWxs
X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQotCQkgICAg
ICAgc3RydWN0IGFtZGdwdV9ibyAqYm8sDQotCQkgICAgICAgdWludDMyX3Qgc3JjX2RhdGEsDQot
CQkgICAgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KLQkJICAgICAgIHN0cnVjdCBkbWFfZmVu
Y2UgKipvdXRfZmVuY2UsDQotCQkgICAgICAgYm9vbCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQot
CQkgICAgICAgdTY0IGtfam9iX2lkKQ0KK2ludCBhbWRncHVfdHRtX2NsZWFyX2J1ZmZlcihzdHJ1
Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQorCQkJICAgIHN0cnVjdCBhbWRn
cHVfYm8gKmJvLA0KKwkJCSAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQorCQkJICAgIHN0cnVj
dCBkbWFfZmVuY2UgKipvdXRfZmVuY2UsDQorCQkJICAgIGJvb2wgY29uc2lkZXJfY2xlYXJfc3Rh
dHVzLA0KKwkJCSAgICB1NjQga19qb2JfaWQpDQogew0KIAlzdHJ1Y3QgYW1kZ3B1X2RldmljZSAq
YWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJkZXYpOw0KIAlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSA9IE5VTEw7DQpAQCAtMjYyMyw3ICsyNjIwLDcgQEAgaW50IGFtZGdwdV9maWxsX2J1
ZmZlcihzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQogCQkJZ290byBl
cnJvcjsNCiANCiAJCXIgPSBhbWRncHVfdHRtX2ZpbGxfbWVtKGFkZXYsIGVudGl0eSwNCi0JCQkJ
CXNyY19kYXRhLCB0bywgY3VyX3NpemUsIHJlc3YsDQorCQkJCQkwLCB0bywgY3VyX3NpemUsIHJl
c3YsDQogCQkJCQkmbmV4dCwgdHJ1ZSwga19qb2JfaWQpOw0KIAkJaWYgKHIpDQogCQkJZ290byBl
cnJvcjsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRt
LmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCmluZGV4IDQzNmEz
ZTA5YTE3OC4uZDdiMTRkNWNhYzc3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5oDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmgNCkBAIC0xODcsMTMgKzE4NywxMiBAQCBpbnQgYW1kZ3B1X2NvcHlfYnVmZmVyKHN0
cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KIAkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVz
diwNCiAJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQogCQkgICAgICAgYm9vbCB2
bV9uZWVkc19mbHVzaCwgdWludDMyX3QgY29weV9mbGFncyk7DQotaW50IGFtZGdwdV9maWxsX2J1
ZmZlcihzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQotCQkgICAgICAg
c3RydWN0IGFtZGdwdV9ibyAqYm8sDQotCQkgICAgICAgdWludDMyX3Qgc3JjX2RhdGEsDQotCQkg
ICAgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KLQkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2Ug
KipvdXRfZmVuY2UsDQotCQkgICAgICAgYm9vbCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQotCQkg
ICAgICAgdTY0IGtfam9iX2lkKTsNCitpbnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0
IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAqZW50aXR5LA0KKwkJCSAgICBzdHJ1Y3QgYW1kZ3B1
X2JvICpibywNCisJCQkgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KKwkJCSAgICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KKwkJCSAgICBib29sIGNvbnNpZGVyX2NsZWFyX3N0YXR1
cywNCisJCQkgICAgdTY0IGtfam9iX2lkKTsNCiBzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50
aXR5ICphbWRncHVfdHRtX25leHRfY2xlYXJfZW50aXR5KHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2KTsNCiANCiBpbnQgYW1kZ3B1X3R0bV9hbGxvY19nYXJ0KHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8pOw0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
