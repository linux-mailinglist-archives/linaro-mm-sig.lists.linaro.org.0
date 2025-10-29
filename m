Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEovCKn34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EF440FD8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1435404DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:52:23 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010013.outbound.protection.outlook.com [52.101.46.13])
	by lists.linaro.org (Postfix) with ESMTPS id AC5723F7B8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Oct 2025 09:11:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yCDsHwsM;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.46.13 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qCbTEMD40DzSj6JHMQG6RlHAPpyRQTMDSHlMyel5gFVftjy7Wp4mXWn5k/mABQX1gAiRZYIR4ifLQCWo9f5UlhtiAs7MYn8HXm+T3afCNEvftFtd5YZJTqg6LEYHBBQvvDVXId7oKv10GMM/fNG15Vttp0V1PfIGCoJUsvHFhnGSYdHH5PikoCeAsEZzKAeowEVPkVeH3X3AdgCtotnIr7gW4ovLS9UDDPg1TjMoYj07UwZ9vez6Z1cuFuGl8PjHyYUj3eFt94nYmX2sbPsaG/Et8A/t+avjDRH1kBTVTd6ITX5E34IATaS0z/7ufFLQOonTGU+YL9g0+11j++zt+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cYEZMNdDHnQvp43EQ0z67oy2BWoeTy2Bkh33Yh9ro9s=;
 b=k8NNKJuCjM6bVbBaUHl2D6OkMFuJBxWma5h1srUlonxPedq/mlMU6bNVv1uBmkrpJ/gyVrGTmTiQHv34BnBV/Ed1omFN4j5bK+eGZjH4SVEwdS2TxDReauDB6e02MaOilOdvieAx/yvn6X3dYAhb/E6gEFRkaOHKpmzm+ZrAP1SeqiMCJNa6HbKviwzfw56wn+JRByIn/KPbk5uUQ986nvfoa6UtRTJr4YV8+pTdAAwAIt8QPIBOqJesevgFhTeKGQn+Md/7g0FGFlMrQ1EiE6Ow3/JdCEIsFieVY8lcqwuUJqQHvrFTs83oIWg3kwHnwCivxUPtglUYQgnR8YJdaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cYEZMNdDHnQvp43EQ0z67oy2BWoeTy2Bkh33Yh9ro9s=;
 b=yCDsHwsMvOa4KVN7aojms7kWcWmkJTDiLGsq8SVooWgyXwj40z6w13ktvfUCDAZqWBtrVjUS0UmkmDLjoZgGAiEik0PKzCOkVc3i/EEUmjPthw5YsSH+J3h8QWrrwOkS+ljHNC6h/rS7xqrqs2n29d9th9Mi08ACKIOJ5EdEoeE=
Received: from MN2PR20CA0022.namprd20.prod.outlook.com (2603:10b6:208:e8::35)
 by BY5PR12MB4211.namprd12.prod.outlook.com (2603:10b6:a03:20f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Wed, 29 Oct
 2025 09:11:22 +0000
Received: from BL6PEPF0001AB55.namprd02.prod.outlook.com
 (2603:10b6:208:e8:cafe::3c) by MN2PR20CA0022.outlook.office365.com
 (2603:10b6:208:e8::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.13 via Frontend Transport; Wed,
 29 Oct 2025 09:11:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BL6PEPF0001AB55.mail.protection.outlook.com (10.167.241.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.10 via Frontend Transport; Wed, 29 Oct 2025 09:11:22 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 29 Oct 2025 02:11:19 -0700
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich
	<dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Wed, 29 Oct 2025 10:11:03 +0100
Message-ID: <20251029091103.1159-1-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB55:EE_|BY5PR12MB4211:EE_
X-MS-Office365-Filtering-Correlation-Id: 026e1c61-7025-4e33-57dd-08de16cb2116
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|376014|7416014|36860700013|1800799024|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TGo3Nm1MN3cvZkJGazZ3VHNwNW1rMU5yMEc3aUNpbzA4RFhCd0kwd1ZiTklV?=
 =?utf-8?B?azg5QmhIMlYyVDd6NHE1SS9yaGZ5NFlxMGlsWFpCcVdYb2xWWkFCVzVLcytQ?=
 =?utf-8?B?dFpaTzE2YytiVGNxb214VHp1Q2JqcGxjTDNZZTJValhhR3BHVXpKdjFubk9X?=
 =?utf-8?B?TnY4bk5iUHZ2VGlBdXJWektkb242aGRVVktNbUxxWWN2V1RkNGNOSWtkRnJU?=
 =?utf-8?B?L2k5dms5SDZqZjlkRi9yU2lzam1UeUZlS0JMNzB0dno1akFqRnlpNm9iVkR3?=
 =?utf-8?B?dThrQnhBVTN6RW9UNTNQVkZlUHhVK3RHN1daSlBYSXNtdFNIc1N4OFJPS2JM?=
 =?utf-8?B?QnIranpaVVoydUQ1YWlqaEpUYXJ4VURoL2YvSVVhQWM1eVVyZjBNSkE0Sko3?=
 =?utf-8?B?N2svcWxTckc2dXdiRXp1RWdSN1gvZTc5Z2tSYXBRbjBzQVlRTG4rRnYvR3Vw?=
 =?utf-8?B?QkVIbWE0RXBmV0RXKzNLc3dPNG5tSG1qZkdGSjl3MkIvWmNQRDZuTXJjY2Fm?=
 =?utf-8?B?UHVBNHh1c05LbjlnMGdJU1AzSloydEZzbVNCVVZ0a0lJdklXZkJ0bnRZc0Zq?=
 =?utf-8?B?UzZ0WjlBU1V0RDhrdTVGdHJmNGtwc2VVMmtRMjQ4VCtzcHBiaUlsNGZkS0g4?=
 =?utf-8?B?Ti85endWKzVVbVU4Uy8yZlFzTGVtY3ArQW51Um11NEp0bFBnekxub2ZaTDdt?=
 =?utf-8?B?dXFHdlc3TmlDbFc1WGRCQW9xTDk0bkgvUFEzZHJXSGpXR05YZ3VtREt0MXpT?=
 =?utf-8?B?WXZPWWl1ZFhkMHphdzg0RUNCQzNPcHlKK2kvcjdhalg2MjEvVWRKTlZpMS8z?=
 =?utf-8?B?aDYrUExUb0dGY1N1d0V4TEVjM1dpUTBCZElXRDN4WU90MTJOY2J3YVNIeGRR?=
 =?utf-8?B?dHlTbUhUTUw2VXV2NnVYbjRxRXFhS1Vwc2Q4cEJ6UytoQi8wbjE0TGxPekcx?=
 =?utf-8?B?bnRsQ2ZHNHk0VTJlM3RQNU9IdmJKMzdLYmVSY0tGUVVvek5nTEFSWVduNzY0?=
 =?utf-8?B?MW1QSW1GSXI5WHlPNU9kdjZoVVBsM00xRmRlbTY0bUhydXVEelBXdTVrc0ZO?=
 =?utf-8?B?akFYR1pES1V6T2dyanp5dWxNcWV6ckdOZUUxaExHZEJveHR5M0pxVmp4L0Jo?=
 =?utf-8?B?Qkk3OWsraEcrOUNtcWJ5Y3FPdmxnVXpGa1hYNFNoYlF1RndJK1MxRU5MZXFk?=
 =?utf-8?B?TGw3T0x2enZiYis4dE5qNlBkSk95M1pLNEk0TUV4aHpEd2s4TXdlcmZpbUto?=
 =?utf-8?B?WjdrcXE4UDVMdVVtTUJLL0VZbGNmZDJmZlFNM3NZTEJ1UzFZTU95Wkt5YmhJ?=
 =?utf-8?B?WW1weFlDMVh4ZFVyay9VczQvN25IR29CaW9DY2ljbitaeDhQSG03cDNxNjA4?=
 =?utf-8?B?cVJhYjNDMjNpd0ZqOEIyTVlWSG5paWJpSCsvcVVYdi9TNm1ubkl6aFdueU1C?=
 =?utf-8?B?a0dyN0ZGMi9YUHpVZG4wUmkwWnJCaC9oM3Y1aTRrcWxaWkxpS1RNOTZuM2xW?=
 =?utf-8?B?U2tZMGFKVldyK3drY3NpQUZjNDYrWkxnRzJDV1dURldzZFpNaGZOTzR1YmNJ?=
 =?utf-8?B?TWJDT0hNc2NsSEFYYzVnc2tkT29Nc250UEk5U2UrQktHcEdLKy9ocFYwekpY?=
 =?utf-8?B?YlI1dlNKTldrcXVBb092enFiQ3NKWnZLaGhIcnFNa1N2ZWsvL3hmQ3ZXMDlr?=
 =?utf-8?B?blU3aENjVVhuSStzeXFLS20waVE0TVF1UVR4UmxvRzUrWGRMUVlxYk5VMkls?=
 =?utf-8?B?UU91L0tlOUFUbzVrTi9SMmNCcFpmcUNVQ1p4RlZmR2lRMnBQbGpQR1R3SUJp?=
 =?utf-8?B?SEZnSmxQM1NCTzRaWUFIZWRtMkZSQ3ZHaU5yV2hJV1dkQkg5N2V1aGFkVnJw?=
 =?utf-8?B?MkJCOUp5VW9oamRDRTFNQ1JpT0cveG9Eelc5ZzVZYktIU25mdHRaMkJBS1U5?=
 =?utf-8?B?U05zOWpUK3M5RjhJNjlVeSt6VjNNSWM4WXdyUUs3Y0lzQUxqTjZpeHVZZUFK?=
 =?utf-8?B?ZW1yZ0xBRzl5eXU1MjdQdGdIaUozc3F0Q3ArV2FZbFNseFJoSnNOOGdpSVd5?=
 =?utf-8?Q?fviA9Z?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(7416014)(36860700013)(1800799024)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 09:11:22.2033
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 026e1c61-7025-4e33-57dd-08de16cb2116
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BL6PEPF0001AB55.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4211
X-Spamd-Bar: --
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AAHUZW7FV257J4UHTPLCOKB7L6HQDFDA
X-Message-ID-Hash: AAHUZW7FV257J4UHTPLCOKB7L6HQDFDA
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:31 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1] drm/sched: fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AAHUZW7FV257J4UHTPLCOKB7L6HQDFDA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [6.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	DATE_IN_PAST(1.00)[4061];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric.pelloux-prayer@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 90EF440FD8F
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL2lzc3Vlcy8xMzkwOCBw
b2ludGVkIG91dA0KYSBwb3NzaWJsZSBkZWFkbG9jazoNCg0KWyAxMjMxLjYxMTAzMV0gIFBvc3Np
YmxlIGludGVycnVwdCB1bnNhZmUgbG9ja2luZyBzY2VuYXJpbzoNCg0KWyAxMjMxLjYxMTAzM10g
ICAgICAgIENQVTAgICAgICAgICAgICAgICAgICAgIENQVTENClsgMTIzMS42MTEwMzRdICAgICAg
ICAtLS0tICAgICAgICAgICAgICAgICAgICAtLS0tDQpbIDEyMzEuNjExMDM1XSAgIGxvY2soJnhh
LT54YV9sb2NrIzE3KTsNClsgMTIzMS42MTEwMzhdICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBsb2NhbF9pcnFfZGlzYWJsZSgpOw0KWyAxMjMxLjYxMTAzOV0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGxvY2soJmZlbmNlLT5sb2NrKTsNClsgMTIzMS42MTEwNDFdICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBsb2NrKCZ4YS0+eGFfbG9jayMxNyk7DQpbIDEyMzEu
NjExMDQ0XSAgIDxJbnRlcnJ1cHQ+DQpbIDEyMzEuNjExMDQ1XSAgICAgbG9jaygmZmVuY2UtPmxv
Y2spOw0KWyAxMjMxLjYxMTA0N10NCiAgICAgICAgICAgICAgICAqKiogREVBRExPQ0sgKioqDQoN
Ck15IGluaXRpYWwgZml4IHdhcyB0byByZXBsYWNlIHhhX2VyYXNlIGJ5IHhhX2VyYXNlX2lycSwg
YnV0IENocmlzdGlhbg0KcG9pbnRlZCBvdXQgdGhhdCBjYWxsaW5nIGRtYV9mZW5jZV9hZGRfY2Fs
bGJhY2sgZnJvbSBhIGNhbGxiYWNrIGNhbg0KYWxzbyBkZWFkbG9jayBpZiB0aGUgc2lnbmFsbGlu
ZyBmZW5jZSBhbmQgdGhlIG9uZSBwYXNzZWQgdG8NCmRtYV9mZW5jZV9hZGRfY2FsbGJhY2sgc2hh
cmUgdGhlIHNhbWUgbG9jay4NCg0KVG8gZml4IGJvdGggaXNzdWVzLCB0aGUgY29kZSBpdGVyYXRp
bmcgb24gZGVwZW5kZW5jaWVzIGFuZCByZS1hcm1pbmcgdGhlbQ0KaXMgbW92ZWQgb3V0IHRvIGRy
bV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX3dvcmsuDQoNClN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogUGllcnJl
LUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+
DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIHwgMzQgKysr
KysrKysrKysrKy0tLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyks
IDE1IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9lbnRpdHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5
LmMNCmluZGV4IGM4ZTk0OWY0YTU2OC4uZmUxNzRhNDg1N2JlIDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJt
L3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KQEAgLTE3MywyNiArMTczLDE1IEBAIGludCBkcm1f
c2NoZWRfZW50aXR5X2Vycm9yKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHkpDQogfQ0K
IEVYUE9SVF9TWU1CT0woZHJtX3NjaGVkX2VudGl0eV9lcnJvcik7DQogDQorc3RhdGljIHZvaWQg
ZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCisJCQkJ
CSAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpOw0KKw0KIHN0YXRpYyB2b2lkIGRybV9zY2hlZF9l
bnRpdHlfa2lsbF9qb2JzX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3cmspDQogew0KIAlzdHJ1
Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCpqb2IpLCB3
b3JrKTsNCi0NCi0JZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZChqb2ItPnNfZmVuY2UsIE5VTEwp
Ow0KLQlkcm1fc2NoZWRfZmVuY2VfZmluaXNoZWQoam9iLT5zX2ZlbmNlLCAtRVNSQ0gpOw0KLQlX
QVJOX09OKGpvYi0+c19mZW5jZS0+cGFyZW50KTsNCi0Jam9iLT5zY2hlZC0+b3BzLT5mcmVlX2pv
Yihqb2IpOw0KLX0NCi0NCi0vKiBTaWduYWwgdGhlIHNjaGVkdWxlciBmaW5pc2hlZCBmZW5jZSB3
aGVuIHRoZSBlbnRpdHkgaW4gcXVlc3Rpb24gaXMga2lsbGVkLiAqLw0KLXN0YXRpYyB2b2lkIGRy
bV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQotCQkJCQkg
IHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQ0KLXsNCi0Jc3RydWN0IGRybV9zY2hlZF9qb2IgKmpv
YiA9IGNvbnRhaW5lcl9vZihjYiwgc3RydWN0IGRybV9zY2hlZF9qb2IsDQotCQkJCQkJIGZpbmlz
aF9jYik7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmY7DQogCXVuc2lnbmVkIGxvbmcgaW5kZXg7DQog
DQotCWRtYV9mZW5jZV9wdXQoZik7DQotDQogCS8qIFdhaXQgZm9yIGFsbCBkZXBlbmRlbmNpZXMg
dG8gYXZvaWQgZGF0YSBjb3JydXB0aW9ucyAqLw0KIAl4YV9mb3JfZWFjaCgmam9iLT5kZXBlbmRl
bmNpZXMsIGluZGV4LCBmKSB7DQogCQlzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpzX2ZlbmNlID0g
dG9fZHJtX3NjaGVkX2ZlbmNlKGYpOw0KQEAgLTIyMCw2ICsyMDksMjEgQEAgc3RhdGljIHZvaWQg
ZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCiAJCWRt
YV9mZW5jZV9wdXQoZik7DQogCX0NCiANCisJZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZChqb2It
PnNfZmVuY2UsIE5VTEwpOw0KKwlkcm1fc2NoZWRfZmVuY2VfZmluaXNoZWQoam9iLT5zX2ZlbmNl
LCAtRVNSQ0gpOw0KKwlXQVJOX09OKGpvYi0+c19mZW5jZS0+cGFyZW50KTsNCisJam9iLT5zY2hl
ZC0+b3BzLT5mcmVlX2pvYihqb2IpOw0KK30NCisNCisvKiBTaWduYWwgdGhlIHNjaGVkdWxlciBm
aW5pc2hlZCBmZW5jZSB3aGVuIHRoZSBlbnRpdHkgaW4gcXVlc3Rpb24gaXMga2lsbGVkLiAqLw0K
K3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVu
Y2UgKmYsDQorCQkJCQkgIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQ0KK3sNCisJc3RydWN0IGRy
bV9zY2hlZF9qb2IgKmpvYiA9IGNvbnRhaW5lcl9vZihjYiwgc3RydWN0IGRybV9zY2hlZF9qb2Is
DQorCQkJCQkJIGZpbmlzaF9jYik7DQorDQorCWRtYV9mZW5jZV9wdXQoZik7DQorDQogCUlOSVRf
V09SSygmam9iLT53b3JrLCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic193b3JrKTsNCiAJc2No
ZWR1bGVfd29yaygmam9iLT53b3JrKTsNCiB9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
