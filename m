Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJpaNA0C4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BD1410FAD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A87D4475D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:36:44 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012044.outbound.protection.outlook.com [52.101.53.44])
	by lists.linaro.org (Postfix) with ESMTPS id 951073F719
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Dec 2025 09:50:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=N0SJe3W1;
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 52.101.53.44 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oLxRNq5Su0BuVozzMaGd7ShM5u4FOOS8E74pqF2q+8/xJx1bujKodXH58eR6F18cW/wLb+ZvAh2vDr/373Eeck/y74xYd+wzeoyB4OAOua/JcCMpJkHIIOcz8MmlB0qR9RZO73qkLb4h2S7RxL+LiSmYQ0huB7xty3fP5jlSUNyyRjVsavMNGwQXIt5cRiFM1iZfDuuUzmsrCKQdrHCPr0hlDEOJdhEWzahRM0HwxIDwSOIcpfbrVp7pOmTRxdo+hegWOQv7cOQWn+1EO7H2hNzgxrbLLsD4DtLqqLdkaUqaDukG8c8atKi5xLyTYtrenmDP728+q+ee583ERXJYZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LffYM3hmBUdv7peVjQA/bmRVkai2shIYvofF4EqTcGY=;
 b=YiwfiqUfVIR+0/fp9gN1x/sgYQiLi15gxamWd1aXWFssNhQpVuEH4WxQFoLMnhsGUsqT2vQlp17xoOQebGeAr7h6Lz51DqWg1eeWaOc1URZgjUDeZrgcN63H+vpNDfY9ygMzqEmdMqJld5bJSbWUowYgmWWx/a3x4jyHWGly42fezXnUojWnM0Af+xf5prx4lLBPwYNy+POmD6njYGUq2DIOwm9CExZ/z5zNBTAu6Dc7tTcmYkVFzKuNsNOGoVX1vGtefiPQZ1QbqhTTwmqRgnmnADDxuw1L9eDmXuPRcQ7wva4M+pF1n+RKdcoWlcQUwdY/MzQf4XsLGhyQBdPF7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LffYM3hmBUdv7peVjQA/bmRVkai2shIYvofF4EqTcGY=;
 b=N0SJe3W19Cha1PSGETECFavMQJ5eHm2MPBcnu1gW1EImiSFgr8ApXmRBMd+FlxZJGo0xlQ/nrRkpVgYh/oZZxxR4Us1FhvjeZ1sb747NuVOuRudiWVDMk1b5Cc/uNmh8HflIVCTDQgNgRt8bRodWsi/O7zXojeBsKkkbfZ9SPDY=
Received: from BY3PR05CA0029.namprd05.prod.outlook.com (2603:10b6:a03:254::34)
 by SA0PR12MB4447.namprd12.prod.outlook.com (2603:10b6:806:9b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Tue, 2 Dec
 2025 09:50:30 +0000
Received: from MWH0EPF000A6731.namprd04.prod.outlook.com
 (2603:10b6:a03:254:cafe::52) by BY3PR05CA0029.outlook.office365.com
 (2603:10b6:a03:254::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9388.8 via Frontend Transport; Tue, 2
 Dec 2025 09:50:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 MWH0EPF000A6731.mail.protection.outlook.com (10.167.249.23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.8 via Frontend Transport; Tue, 2 Dec 2025 09:50:30 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Dec 2025 03:50:19 -0600
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Felix Kuehling
	<Felix.Kuehling@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 2 Dec 2025 10:47:15 +0100
Message-ID: <20251202094738.15614-6-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251202094738.15614-1-pierre-eric.pelloux-prayer@amd.com>
References: <20251202094738.15614-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000A6731:EE_|SA0PR12MB4447:EE_
X-MS-Office365-Filtering-Correlation-Id: 958b039e-1ff6-4659-3b51-08de31883ab8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cXdtMVdRS3RWLzlFcmttWktaYkZEdUw5R1hTc2tJVTRJbis3QUIzekN3MzVQ?=
 =?utf-8?B?M3RRenA0eHoveXZ5c0dhb0Q3QlhNdkdyMFNWSHRnRTVjancyWVJFNnIzWStZ?=
 =?utf-8?B?MDRLVDg5aWNvMTBjUEVrZFg1bjVkN1hVbTBDS2p5bnhCMmlhUTRTdTNKeGhj?=
 =?utf-8?B?SmVqNzltOFhzaU5BNE1zaHZxWTdkYjFPVFQwdi9hZTc1TlA2S2JzSUJ5UGZ3?=
 =?utf-8?B?OUpUdEhZMWl3TGR2Q3VLeDJ1b0k5eWlxNU5FNGFPL0VjRVM3ZDNsMG4yRU5l?=
 =?utf-8?B?L09JWkhIL0pCWGtXM0hUQ0Q4SHRyeEhkYzhHRndGR09EMGZaODNiRTJRS0Iw?=
 =?utf-8?B?S1hLcWhsdzRQbDA1elBQSHNVQ20vQkpDT3lzVkZSTGhGSjdiOFVkajV3UWJy?=
 =?utf-8?B?K3RhNENzc2grSmd5aFJPZUROL0F4T0Zxa3c3dm5BeFZQRnJpOWdpQWxVTEpM?=
 =?utf-8?B?ODduNU8wcUZmazEzYVV0cERRRXdCeHE0c0hoRnFkZnVjNTEzdC9nUmNxcS83?=
 =?utf-8?B?a2ZIRTNMYlhwVDdINFhoNkFJd3c4L1ZRTlBJQnRaWVpub0JvVWowZkFmQUg2?=
 =?utf-8?B?SThjRy9hc25GYkpxaTRnVi9UaUs1aHVSaUVKaUVzcVpoS2NvZmErUlA0RHVI?=
 =?utf-8?B?M1Y2VG4rSWZDb3gvZTZvR1FTZ3pJNmVQNGRCWjNRckU4aXdXNTJvaXFSS1Zv?=
 =?utf-8?B?RWtoSXBsN2pEUEhxMVFhWGIreWk5YmlhanpJRVVPektSWGRWVWMyRCs5VS8z?=
 =?utf-8?B?Wi9OZEJ5U2RQNkwwY1QyWmVXZ1lKcS93RVV0N1p4REhYaGFBMXNJV0ZwR0NX?=
 =?utf-8?B?T0p4UVVZZXk3cmZwOTdPSGR0SmNOY2htY0pLSnh0RFQwR0wyTTE5enNQYXJ5?=
 =?utf-8?B?RW0wWnIzSDU2Z1RSZHJyWDFFYVNremNSaGc4MU9EU05NZStyVkI3aVQ0aDVy?=
 =?utf-8?B?cjVER0F6WnN4MVpEaldGb3FKWTU3VnJ6NExCWmJiRjZOMWZWWkIwRExZaGRQ?=
 =?utf-8?B?NUtvUTBQdXUzMVg4NUpKWVNVbDlqRG00U2h3S0pPNGxCYWVuUkE0dzA3b1Rk?=
 =?utf-8?B?MUxIY2M3QTM0MWFPVmV0Y3ovallFUVF4RXloaGJNSTF3RHV3eDZqbUpiUGRU?=
 =?utf-8?B?SVZITnZiQzZ5SjcycWtXNDI1Zzl3cWpROUQrUlRvZEU0bW1xT01ZMXR0b2Fn?=
 =?utf-8?B?YS8vMkJIRTY5NURkUDk2WW1UNVZDSGoxTys0aklheGNORmpZNTd1MkcrWHVE?=
 =?utf-8?B?VDcwZU0wSTVLWEI2aTNTbTVVMDRPVXg0T21vdmc4QTVFb2xwRUMvOTlDbDBZ?=
 =?utf-8?B?L0NZN1pvT2VFaVZJZTY0dVU5VVdOWnMzNFBTMVE4dmZlSDVHRjkwbXluOXl2?=
 =?utf-8?B?NHZObXA0Nmk5S3h4cGVQcUZlNGwyT05uTEF3ZkNrQWozTk5BM1F3RDV3eGZH?=
 =?utf-8?B?UlB3K25zTXI2TDUxUmUwaWp3YlF4TjNCZW1XeUY1S0NSTkpxMHdTZGhiOHBT?=
 =?utf-8?B?Z0dZd3d3a3FOSTRYYzJUaCtmME9pSWY0Zk1iRHZjd2FNZi9NT2YxYStxS3VH?=
 =?utf-8?B?TzU3QlVUdkV2RDF1ZXptc29YQlRtMER6SUNzRi85VUNUNVZXMFNyUU9xS3Zl?=
 =?utf-8?B?RENiUkt5MlAzNlRLRzQ0aXF5OVB4ZVFVZFJSeG5JZjNsdGF4WktraTNVcXo2?=
 =?utf-8?B?K0dlc2lNTmljUWY3MDl2clRPcEpuOEFWcHRhL0cyZ0MvREtrdFJkbTg1WVlN?=
 =?utf-8?B?VmEycFVGTGUrbU9mWUtjQVVrbUpvM2p3Z3Q3NFdtQzNzZktWMjZJM1FMTzhU?=
 =?utf-8?B?TXJDNXFib3d6SWZsb0JjTHp6RzdsWGZqOWlxYko5dGhDY3Jjd0NLWHVYdGJ6?=
 =?utf-8?B?YUk5NWtZTWt4MHN1ejNmTHhwVFNhL0ZidXArNEZCbVh6VnlGUlFvVzNGUkVQ?=
 =?utf-8?B?RUJacW0yaktGNi9RVmVHdXg4b291RTZUem4rU3AzZCt5NVZNRFZuSTlKZHMy?=
 =?utf-8?B?U1BqVVBpb1h6dUtLWVVQU1FEZHJmeTRnZURDUmluaW5QZ0FBWkJ6QXhDbExQ?=
 =?utf-8?B?dm9BRTNRTUNiWXFPblM0azlKUWV5OE0vZ1BHNWVzYnVjbmxJMGJBOWR0RGdK?=
 =?utf-8?Q?CTsc=3D?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 09:50:30.2319
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 958b039e-1ff6-4659-3b51-08de31883ab8
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	MWH0EPF000A6731.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4447
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T7WEJXSAHTD2GYFIV44JITZ2APZLDZO2
X-Message-ID-Hash: T7WEJXSAHTD2GYFIV44JITZ2APZLDZO2
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:10 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Felix Kuehling <felix.kuehling@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 05/13] drm/amdgpu: pass the entity to use to ttm public functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T7WEJXSAHTD2GYFIV44JITZ2APZLDZO2/>
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
	DATE_IN_PAST(1.00)[3245];
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
	RCPT_COUNT_TWELVE(0.00)[13];
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
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 84BD1410FAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhpcyB3YXkgdGhlIGNhbGxlciBjYW4gc2VsZWN0IHRoZSBvbmUgaXQgd2FudHMgdG8gdXNlLg0K
DQpTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciA8cGllcnJlLWVyaWMu
cGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpBY2tlZC1ieTogRmVsaXggS3VlaGxpbmcgPGZlbGl4
Lmt1ZWhsaW5nQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfYmVuY2htYXJrLmMgfCAgMyArLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9vYmplY3QuYyAgICB8ICA0ICstLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV90dG0uYyAgICAgICB8IDM1ICsrKysrKysrKy0tLS0tLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdHRtLmggICAgICAgfCAxNiArKysrKy0tLS0NCiBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jICAgICAgfCAgMyArLQ0KIDUgZmlsZXMgY2hh
bmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYmVuY2htYXJrLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYmVuY2htYXJrLmMNCmluZGV4IDM2MzZiNzU3Yzk3NC4u
YTA1MDE2N2U3NmE0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2JlbmNobWFyay5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
YmVuY2htYXJrLmMNCkBAIC0zNyw3ICszNyw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2JlbmNobWFy
a19kb19tb3ZlKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1bnNpZ25lZCBzaXplLA0KIA0K
IAlzdGltZSA9IGt0aW1lX2dldCgpOw0KIAlmb3IgKGkgPSAwOyBpIDwgbjsgaSsrKSB7DQotCQly
ID0gYW1kZ3B1X2NvcHlfYnVmZmVyKGFkZXYsIHNhZGRyLCBkYWRkciwgc2l6ZSwgTlVMTCwgJmZl
bmNlLA0KKwkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihhZGV2LCAmYWRldi0+bW1hbi5kZWZhdWx0
X2VudGl0eSwNCisJCQkJICAgICAgIHNhZGRyLCBkYWRkciwgc2l6ZSwgTlVMTCwgJmZlbmNlLA0K
IAkJCQkgICAgICAgZmFsc2UsIDApOw0KIAkJaWYgKHIpDQogCQkJZ290byBleGl0X2RvX21vdmU7
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5j
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQppbmRleCA5MjZh
M2YwOWE3NzYuLjg1OGViOWZhMDYxYiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X29iamVjdC5jDQpAQCAtMTMyMiw4ICsxMzIyLDggQEAgdm9pZCBhbWRncHVfYm9fcmVs
ZWFzZV9ub3RpZnkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykNCiAJaWYgKHIpDQogCQln
b3RvIG91dDsNCiANCi0JciA9IGFtZGdwdV9maWxsX2J1ZmZlcihhYm8sIDAsICZiby0+YmFzZS5f
cmVzdiwgJmZlbmNlLCB0cnVlLA0KLQkJCSAgICAgICBBTURHUFVfS0VSTkVMX0pPQl9JRF9DTEVB
Ul9PTl9SRUxFQVNFKTsNCisJciA9IGFtZGdwdV9maWxsX2J1ZmZlcigmYWRldi0+bW1hbi5jbGVh
cl9lbnRpdHksIGFibywgMCwgJmJvLT5iYXNlLl9yZXN2LA0KKwkJCSAgICAgICAmZmVuY2UsIEFN
REdQVV9LRVJORUxfSk9CX0lEX0NMRUFSX09OX1JFTEVBU0UpOw0KIAlpZiAoV0FSTl9PTihyKSkN
CiAJCWdvdG8gb3V0Ow0KIA0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0K
aW5kZXggY2M0ZTBhYWE1ZmZhLi5hNTA0OGNkOGUxMGQgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uYw0KQEAgLTM1Niw3ICszNTYsNyBAQCBzdGF0aWMgaW50IGFtZGdw
dV90dG1fY29weV9tZW1fdG9fbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KIAkJCQkJ
CQkgICAgIHdyaXRlX2NvbXByZXNzX2Rpc2FibGUpKTsNCiAJCX0NCiANCi0JCXIgPSBhbWRncHVf
Y29weV9idWZmZXIoYWRldiwgZnJvbSwgdG8sIGN1cl9zaXplLCByZXN2LA0KKwkJciA9IGFtZGdw
dV9jb3B5X2J1ZmZlcihhZGV2LCBlbnRpdHksIGZyb20sIHRvLCBjdXJfc2l6ZSwgcmVzdiwNCiAJ
CQkJICAgICAgICZuZXh0LCB0cnVlLCBjb3B5X2ZsYWdzKTsNCiAJCWlmIChyKQ0KIAkJCWdvdG8g
ZXJyb3I7DQpAQCAtNDExLDggKzQxMSw5IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X21vdmVfYmxpdChz
dHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLA0KIAkgICAgKGFiby0+ZmxhZ3MgJiBBTURHUFVf
R0VNX0NSRUFURV9WUkFNX1dJUEVfT05fUkVMRUFTRSkpIHsNCiAJCXN0cnVjdCBkbWFfZmVuY2Ug
KndpcGVfZmVuY2UgPSBOVUxMOw0KIA0KLQkJciA9IGFtZGdwdV9maWxsX2J1ZmZlcihhYm8sIDAs
IE5VTEwsICZ3aXBlX2ZlbmNlLA0KLQkJCQkgICAgICAgZmFsc2UsIEFNREdQVV9LRVJORUxfSk9C
X0lEX01PVkVfQkxJVCk7DQorCQlyID0gYW1kZ3B1X2ZpbGxfYnVmZmVyKCZhZGV2LT5tbWFuLm1v
dmVfZW50aXR5LA0KKwkJCQkgICAgICAgYWJvLCAwLCBOVUxMLCAmd2lwZV9mZW5jZSwNCisJCQkJ
ICAgICAgIEFNREdQVV9LRVJORUxfSk9CX0lEX01PVkVfQkxJVCk7DQogCQlpZiAocikgew0KIAkJ
CWdvdG8gZXJyb3I7DQogCQl9IGVsc2UgaWYgKHdpcGVfZmVuY2UpIHsNCkBAIC0yMjU1LDcgKzIy
NTYsOSBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fcHJlcGFyZV9qb2Ioc3RydWN0IGFtZGdwdV9k
ZXZpY2UgKmFkZXYsDQogCQkJCQkJICAgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVApOw0KIH0NCiAN
Ci1pbnQgYW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1aW50
NjRfdCBzcmNfb2Zmc2V0LA0KK2ludCBhbWRncHVfY29weV9idWZmZXIoc3RydWN0IGFtZGdwdV9k
ZXZpY2UgKmFkZXYsDQorCQkgICAgICAgc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAq
ZW50aXR5LA0KKwkJICAgICAgIHVpbnQ2NF90IHNyY19vZmZzZXQsDQogCQkgICAgICAgdWludDY0
X3QgZHN0X29mZnNldCwgdWludDMyX3QgYnl0ZV9jb3VudCwNCiAJCSAgICAgICBzdHJ1Y3QgZG1h
X3Jlc3YgKnJlc3YsDQogCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlLA0KQEAgLTIy
NzksNyArMjI4Miw3IEBAIGludCBhbWRncHVfY29weV9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZp
Y2UgKmFkZXYsIHVpbnQ2NF90IHNyY19vZmZzZXQsDQogCW1heF9ieXRlcyA9IGFkZXYtPm1tYW4u
YnVmZmVyX2Z1bmNzLT5jb3B5X21heF9ieXRlczsNCiAJbnVtX2xvb3BzID0gRElWX1JPVU5EX1VQ
KGJ5dGVfY291bnQsIG1heF9ieXRlcyk7DQogCW51bV9kdyA9IEFMSUdOKG51bV9sb29wcyAqIGFk
ZXYtPm1tYW4uYnVmZmVyX2Z1bmNzLT5jb3B5X251bV9kdywgOCk7DQotCXIgPSBhbWRncHVfdHRt
X3ByZXBhcmVfam9iKGFkZXYsICZhZGV2LT5tbWFuLm1vdmVfZW50aXR5LCBudW1fZHcsDQorCXIg
PSBhbWRncHVfdHRtX3ByZXBhcmVfam9iKGFkZXYsIGVudGl0eSwgbnVtX2R3LA0KIAkJCQkgICBy
ZXN2LCB2bV9uZWVkc19mbHVzaCwgJmpvYiwNCiAJCQkJICAgQU1ER1BVX0tFUk5FTF9KT0JfSURf
VFRNX0NPUFlfQlVGRkVSKTsNCiAJaWYgKHIpDQpAQCAtMjQwOCwyMiArMjQxMSwxOCBAQCBpbnQg
YW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV9ibyAqYm8sDQogCXJldHVybiBy
Ow0KIH0NCiANCi1pbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVfYm8gKmJvLA0K
LQkJCXVpbnQzMl90IHNyY19kYXRhLA0KLQkJCXN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCi0JCQlz
dHJ1Y3QgZG1hX2ZlbmNlICoqZiwNCi0JCQlib29sIGRlbGF5ZWQsDQotCQkJdTY0IGtfam9iX2lk
KQ0KK2ludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0
eSAqZW50aXR5LA0KKwkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KKwkJICAgICAgIHVp
bnQzMl90IHNyY19kYXRhLA0KKwkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCisJCSAg
ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZiwNCisJCSAgICAgICB1NjQga19qb2JfaWQpDQogew0K
IAlzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJk
ZXYpOw0KLQlzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHk7DQogCXN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlID0gTlVMTDsNCiAJc3RydWN0IGFtZGdwdV9yZXNfY3Vyc29yIGRz
dDsNCiAJaW50IHI7DQogDQotCWVudGl0eSA9IGRlbGF5ZWQgPyAmYWRldi0+bW1hbi5jbGVhcl9l
bnRpdHkgOg0KLQkJCSAgICZhZGV2LT5tbWFuLm1vdmVfZW50aXR5Ow0KLQ0KIAlpZiAoIWFkZXYt
Pm1tYW4uYnVmZmVyX2Z1bmNzX2VuYWJsZWQpIHsNCiAJCWRldl9lcnIoYWRldi0+ZGV2LA0KIAkJ
CSJUcnlpbmcgdG8gY2xlYXIgbWVtb3J5IHdpdGggcmluZyB0dXJuZWQgb2ZmLlxuIik7DQpAQCAt
MjQ0MCwxMyArMjQzOSwxMyBAQCBpbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVf
Ym8gKmJvLA0KIAkJLyogTmV2ZXIgZmlsbCBtb3JlIHRoYW4gMjU2TWlCIGF0IG9uY2UgdG8gYXZv
aWQgdGltZW91dHMgKi8NCiAJCWN1cl9zaXplID0gbWluKGRzdC5zaXplLCAyNTZVTEwgPDwgMjAp
Ow0KIA0KLQkJciA9IGFtZGdwdV90dG1fbWFwX2J1ZmZlcigmYWRldi0+bW1hbi5kZWZhdWx0X2Vu
dGl0eSwNCi0JCQkJCSAgJmJvLT50Ym8sIGJvLT50Ym8ucmVzb3VyY2UsICZkc3QsDQorCQlyID0g
YW1kZ3B1X3R0bV9tYXBfYnVmZmVyKGVudGl0eSwgJmJvLT50Ym8sIGJvLT50Ym8ucmVzb3VyY2Us
ICZkc3QsDQogCQkJCQkgIDEsIGZhbHNlLCAmY3VyX3NpemUsICZ0byk7DQogCQlpZiAocikNCiAJ
CQlnb3RvIGVycm9yOw0KIA0KLQkJciA9IGFtZGdwdV90dG1fZmlsbF9tZW0oYWRldiwgZW50aXR5
LCBzcmNfZGF0YSwgdG8sIGN1cl9zaXplLCByZXN2LA0KKwkJciA9IGFtZGdwdV90dG1fZmlsbF9t
ZW0oYWRldiwgZW50aXR5LA0KKwkJCQkJc3JjX2RhdGEsIHRvLCBjdXJfc2l6ZSwgcmVzdiwNCiAJ
CQkJCSZuZXh0LCB0cnVlLCBrX2pvYl9pZCk7DQogCQlpZiAocikNCiAJCQlnb3RvIGVycm9yOw0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaCBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KaW5kZXggNDFiYmMyNTY4MGEy
Li45Mjg4NTk5YzljNDYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdHRtLmgNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0u
aA0KQEAgLTE2Nyw3ICsxNjcsOSBAQCBpbnQgYW1kZ3B1X3R0bV9pbml0KHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2KTsNCiB2b2lkIGFtZGdwdV90dG1fZmluaShzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSAqYWRldik7DQogdm9pZCBhbWRncHVfdHRtX3NldF9idWZmZXJfZnVuY3Nfc3RhdHVzKHN0cnVj
dCBhbWRncHVfZGV2aWNlICphZGV2LA0KIAkJCQkJYm9vbCBlbmFibGUpOw0KLWludCBhbWRncHVf
Y29weV9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHVpbnQ2NF90IHNyY19vZmZz
ZXQsDQoraW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwN
CisJCSAgICAgICBzdHJ1Y3QgYW1kZ3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQorCQkg
ICAgICAgdWludDY0X3Qgc3JjX29mZnNldCwNCiAJCSAgICAgICB1aW50NjRfdCBkc3Rfb2Zmc2V0
LCB1aW50MzJfdCBieXRlX2NvdW50LA0KIAkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwN
CiAJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQpAQCAtMTc1LDEyICsxNzcsMTIg
QEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgdWlu
dDY0X3Qgc3JjX29mZnNldCwNCiBpbnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFt
ZGdwdV9ibyAqYm8sDQogCQkJICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCiAJCQkgICAgc3Ry
dWN0IGRtYV9mZW5jZSAqKmZlbmNlKTsNCi1pbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBh
bWRncHVfYm8gKmJvLA0KLQkJCXVpbnQzMl90IHNyY19kYXRhLA0KLQkJCXN0cnVjdCBkbWFfcmVz
diAqcmVzdiwNCi0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQotCQkJYm9vbCBkZWxheWVk
LA0KLQkJCXU2NCBrX2pvYl9pZCk7DQoraW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1k
Z3B1X3R0bV9idWZmZXJfZW50aXR5ICplbnRpdHksDQorCQkgICAgICAgc3RydWN0IGFtZGdwdV9i
byAqYm8sDQorCQkgICAgICAgdWludDMyX3Qgc3JjX2RhdGEsDQorCQkgICAgICAgc3RydWN0IGRt
YV9yZXN2ICpyZXN2LA0KKwkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKipmLA0KKwkJICAgICAg
IHU2NCBrX2pvYl9pZCk7DQogDQogaW50IGFtZGdwdV90dG1fYWxsb2NfZ2FydChzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgKmJvKTsNCiB2b2lkIGFtZGdwdV90dG1fcmVjb3Zlcl9nYXJ0KHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqdGJvKTsNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2Zk
X21pZ3JhdGUuYw0KaW5kZXggYWRlMWQ0MDY4ZDI5Li45Yzc2ZjFiYTBlNTUgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jDQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jDQpAQCAtMTU3LDcgKzE1Nyw4IEBAIHN2
bV9taWdyYXRlX2NvcHlfbWVtb3J5X2dhcnQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIGRt
YV9hZGRyX3QgKnN5cywNCiAJCQlnb3RvIG91dF91bmxvY2s7DQogCQl9DQogDQotCQlyID0gYW1k
Z3B1X2NvcHlfYnVmZmVyKGFkZXYsIGdhcnRfcywgZ2FydF9kLCBzaXplICogUEFHRV9TSVpFLA0K
KwkJciA9IGFtZGdwdV9jb3B5X2J1ZmZlcihhZGV2LCBlbnRpdHksDQorCQkJCSAgICAgICBnYXJ0
X3MsIGdhcnRfZCwgc2l6ZSAqIFBBR0VfU0laRSwNCiAJCQkJICAgICAgIE5VTEwsICZuZXh0LCB0
cnVlLCAwKTsNCiAJCWlmIChyKSB7DQogCQkJZGV2X2VycihhZGV2LT5kZXYsICJmYWlsICVkIHRv
IGNvcHkgbWVtb3J5XG4iLCByKTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
