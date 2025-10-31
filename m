Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sG5xOBz44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3FC40FE21
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B5C840962
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:54:19 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011031.outbound.protection.outlook.com [40.107.208.31])
	by lists.linaro.org (Postfix) with ESMTPS id C96303F7EC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 09:07:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=hj3nAC8k;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 40.107.208.31 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L5jZluuyJhog0VB7XMlw5ul/hodAx/bypq+bloiZ/r2d1+eS3gFQR30qepO/AQCjQnxm5DmxiznfDtUeE5yd087YPmZXqXKuTy7cR4n4onLn/5ASWJ27EOvhSAwUpgWBpOx+amszHKy3rmRZDfg7DLmifYhD8W7N+qrEB4OJA/1iVSx1T/yZdqzjnjUHIUlFjjn5YGQCLfb8zinHB6hWPamdmvyiAzE2X7MNqbCdyWKQu2gICfNoVV2KpTQVNLWctJ6Nrl347vGm1gzR5sM744/oVL7A6ebVeSN7U3eaqQY3MVJ7oV1gslhDLMpfvp4JkeHlMM0llrf215As98HIyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QdNvOiQ1LXcb13VOXga0h/FFdJUqY66hyml/hMGWAEI=;
 b=LT05SD1gf83ic3Yo51mHI7c/sXAV3i5t9Sl/StUMfWHhOOqDz0YNaR3KTTR/41Ffkq7IIkvIT2vNk5wdhRDPmG8JkcaSqK2WnjBB2xMadsseannBLZOYOKk+MoRUdEyoDcefqUR2pXGzf5QsMN4nH98hVvmTHxn4iqyZzwJzqWNojwQFYU08CDO98dK1KWT0znUSVj8CoBY418xF9k7waY7CUQZLAcTnOPm/B5LJFbIKiaOnWl418wp2g2DX9naPiDI05jFJ6m34mmswRu0mhHP4wjO5uo8CBB4pKEYMyeoeNwzszEr3GZGxoEXmBjJ70bQe9rd4TctmylApxFqLfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QdNvOiQ1LXcb13VOXga0h/FFdJUqY66hyml/hMGWAEI=;
 b=hj3nAC8kRu53LFEFQ1eIf3hSZoZpg62uimlrBoxl1txqUhSpi7r25HvSjWk7G8Nlw2NV11ib2ty9C7BO57KlOq0VKPDVhwrD5chWpa28CGmMz56PshgEaJLt5BgBACU9qXmgTAODAvVdhcdrvk0K8OQQiCG0qm+ygFSG9kA9IrE=
Received: from BY5PR04CA0029.namprd04.prod.outlook.com (2603:10b6:a03:1d0::39)
 by IA1PR12MB6458.namprd12.prod.outlook.com (2603:10b6:208:3aa::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Fri, 31 Oct
 2025 09:07:55 +0000
Received: from SJ1PEPF00001CE0.namprd05.prod.outlook.com
 (2603:10b6:a03:1d0:cafe::14) by BY5PR04CA0029.outlook.office365.com
 (2603:10b6:a03:1d0::39) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.14 via Frontend Transport; Fri,
 31 Oct 2025 09:07:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 SJ1PEPF00001CE0.mail.protection.outlook.com (10.167.242.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.10 via Frontend Transport; Fri, 31 Oct 2025 09:07:54 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 31 Oct 2025 02:07:52 -0700
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich
	<dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Fri, 31 Oct 2025 10:07:03 +0100
Message-ID: <20251031090704.1111-1-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE0:EE_|IA1PR12MB6458:EE_
X-MS-Office365-Filtering-Correlation-Id: 04bc99fa-1d1e-4ecc-f922-08de185cfa72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|82310400026|36860700013|13003099007|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bnBmTGNNUFpFMVNzTjVuZHcrUEZjWGtVRmlna2xoMVBIZ3QrNVdWL1BWS3hU?=
 =?utf-8?B?U04yZ3dNbXBobktUMmZNSk9TZXVsMEgyNTFlRUZ1UGFNMU9vc1hiMFlCaExX?=
 =?utf-8?B?ZVNraUhZaWhBTFc3b3VqczJxZFdtNW1rZHZXR3h1Y25QblRuUUVYK3NGN0t3?=
 =?utf-8?B?R0pkMHZBZXRZL0p6S014eWU1SFBxSW9kclVtVlJIZkFlWlNudFI2bE1xTHY4?=
 =?utf-8?B?K2NKWWRYMmRlbTlrKy9yaFNJdm5uZHl1RnpHZnloV09HZXkyZkttZzJtTkhH?=
 =?utf-8?B?THV0eEJxZ1NvRHQyd09JVGdSOTBweUlod2RsVHZjSlpWa2xubVlXZFY3OE1w?=
 =?utf-8?B?NDVXdlU3TFVXaGprMnNSems0Q1BLMDM5SEZ2WE1UazQ0Sm1nUlRpYnVBR0li?=
 =?utf-8?B?T050Z0tTMW9UQUdJSFV5TE1TWHpXOHJhc2tTUWtvTmhDTzNvRUY4d2VJT2dj?=
 =?utf-8?B?RW5jTHNvcHJsVzZ2RjZyYzk2djBJWGYwV0ZIR1ZXNjJsMk03V2RvNHFUS3JQ?=
 =?utf-8?B?cUpSRlFSNmlNaVcwZGQ1Rk9sRE9ib1FBZkZBMkJnRTA4QW5Db0RjSTl6cnQ2?=
 =?utf-8?B?VGQxaEZmWmxBM3p5SzB2NUw2R1RzelRSRFVhRWpzdzhPUjl0UnA5RDZmbmsv?=
 =?utf-8?B?bytoUTd0TWM5QkdWZFROSFlySmtraVpWeHpxUkpRWVZyZkJJUXJDakhxcHY3?=
 =?utf-8?B?bklGd0p1Nm8wQ2RpYnlSZFlMby9TUGZlZFNLb3VxV0h6U2Z1azE2NUh0VjZI?=
 =?utf-8?B?Q1VGem1aYWxNWEZ1UUNhMWhjN1dSL3VUWWttZGlSNTFWWjRyV0RkU1NPSjBD?=
 =?utf-8?B?MHlXWmtQYUZNQXRLT1JWd1ZhZG1JeUtmZDFNQVFuVGViRDZPTFpVNENGd2Jz?=
 =?utf-8?B?c203N0I5bDhST2hDWkMzbEJRSFB1Ti9lU2Z2V3E5N0FlZDk0WjJjRnBvbm9u?=
 =?utf-8?B?am8vMzZ2QjJiUHZjYnlYTmYyaGNDbkhLem5BNEhzVkJYSnpkKzlKLzFVbURq?=
 =?utf-8?B?QTRqOTZTSkIxM1p2aE9Way96eXAwZFovUFlNYllBSU5NdVVZdTRFcXFvRDZw?=
 =?utf-8?B?UGEreHNVK2QzSHlqVy9KR0c2SXdNankvYVdXOEFLbU1ja3pKZGU1aG5vN1Rp?=
 =?utf-8?B?eDNtYVJMQ0ZjMDNNWENScSszM1Jnc3ZTU0VqaG9VbUQ2ekdzYXFENVlQbmFD?=
 =?utf-8?B?aTdXcmg3WExrb0o3SHBJSW5vVnhUQW9IWkV6SUt0Si9FNjdCQzI2RWlIKzBl?=
 =?utf-8?B?a21BblpmOXEyMWlZdzJGeHd0clJXc01RUEJScGFxVmF1cEpOaHZGdWVacUtt?=
 =?utf-8?B?KzFDbEpNRXdrUHBDcVV6MkVDMkhLRWVGcWRwS1Uxeit0UVNFa1NETmJtR2tP?=
 =?utf-8?B?Zi94M05mQVlvZDNSRm1MY1N4WWo4ZTAybkhyU1FkNjdxUlNSL2xNTEdVd3hP?=
 =?utf-8?B?ak9rejl0SndkNlhJSVJFVkZJM0FHSnRoc09yU0oyNjZYQTJOWlVNVFVVNnV0?=
 =?utf-8?B?Z1d3QWp5QjRqQ0tNU1k4bm1HTElHeGFtMzZMNlVWM1N0L3pSd0tyZDd5Yk5Z?=
 =?utf-8?B?QWlDUWQ1c2lNUExRa3d3a2dsY1pYRFVRZHQ0cENNTlIvRTdLdWMrcEdJTmRK?=
 =?utf-8?B?bUc5Z3VENTc1dkg0cTMyNy9pQm5rYmswazljZkt3VHMzbDNEN0FseW1HNlhZ?=
 =?utf-8?B?b1RVRmFSaEQ2Z1Ivc1VPak5vUWtlV1dZUUZBVTVRbUJ4bjgzNTFicE9wR0V3?=
 =?utf-8?B?N2ZUeWFDSVZvTFNhL2RadWVLaTZMblFQd24xWEdUbWRzUk82a1ZGNGRHc0pR?=
 =?utf-8?B?NFNiaUJvL2Z0bFk4YnVWTUJyZDl2NG14L2ZPYXpDY1Nkd0FCVkZ5TGNsVE5I?=
 =?utf-8?B?b3ZPUWlPblU5UmY5K0t3Vytka09YeEp1WEhFUXhQZXFJOVpOVE5Zd2ZQQTBn?=
 =?utf-8?B?UWN5ZFg5M2FXL2RUUWRPeGRZTGMwTXRxZkdGYmZ4eFA0NW94SzBLZlFNNU9w?=
 =?utf-8?B?MlcvK3A0NnNFVEhIc3dGU2pKR0t4a0hyZTNMSFpOM0t4anJ4THJiOGtXREJY?=
 =?utf-8?Q?exbM1M?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(82310400026)(36860700013)(13003099007)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 09:07:54.9755
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 04bc99fa-1d1e-4ecc-f922-08de185cfa72
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	SJ1PEPF00001CE0.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6458
X-Spamd-Bar: --
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LBZXGJMCHDV4DZ3VOFUVQWWZVLFVTAMA
X-Message-ID-Hash: LBZXGJMCHDV4DZ3VOFUVQWWZVLFVTAMA
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:39 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LBZXGJMCHDV4DZ3VOFUVQWWZVLFVTAMA/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[4013];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric.pelloux-prayer@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.817];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:mid,amd.com:email,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 7E3FC40FE21
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

VGhlIE1lc2EgaXNzdWUgcmVmZXJlbmNlZCBiZWxvdyBwb2ludGVkIG91dCBhIHBvc3NpYmxlIGRl
YWRsb2NrOg0KDQpbIDEyMzEuNjExMDMxXSAgUG9zc2libGUgaW50ZXJydXB0IHVuc2FmZSBsb2Nr
aW5nIHNjZW5hcmlvOg0KDQpbIDEyMzEuNjExMDMzXSAgICAgICAgQ1BVMCAgICAgICAgICAgICAg
ICAgICAgQ1BVMQ0KWyAxMjMxLjYxMTAzNF0gICAgICAgIC0tLS0gICAgICAgICAgICAgICAgICAg
IC0tLS0NClsgMTIzMS42MTEwMzVdICAgbG9jaygmeGEtPnhhX2xvY2sjMTcpOw0KWyAxMjMxLjYx
MTAzOF0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvY2FsX2lycV9kaXNhYmxlKCk7
DQpbIDEyMzEuNjExMDM5XSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9jaygmZmVu
Y2UtPmxvY2spOw0KWyAxMjMxLjYxMTA0MV0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGxvY2soJnhhLT54YV9sb2NrIzE3KTsNClsgMTIzMS42MTEwNDRdICAgPEludGVycnVwdD4NClsg
MTIzMS42MTEwNDVdICAgICBsb2NrKCZmZW5jZS0+bG9jayk7DQpbIDEyMzEuNjExMDQ3XQ0KICAg
ICAgICAgICAgICAgICoqKiBERUFETE9DSyAqKioNCg0KSW4gdGhpcyBleGFtcGxlLCBDUFUwIHdv
dWxkIGJlIGFueSBmdW5jdGlvbiBhY2Nlc3Npbmcgam9iLT5kZXBlbmRlbmNpZXMNCnRocm91Z2gg
dGhlIHhhXyogZnVuY3Rpb25zIHRoYXQgZG9lc24ndCBkaXNhYmxlIGludGVycnVwdHMgKGVnOg0K
ZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSwgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNf
Y2IpLg0KDQpDUFUxIGlzIGV4ZWN1dGluZyBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYiBh
cyBhIGZlbmNlIHNpZ25hbGxpbmcNCmNhbGxiYWNrIHNvIGluIGFuIGludGVycnVwdCBjb250ZXh0
LiBJdCB3aWxsIGRlYWRsb2NrIHdoZW4gdHJ5aW5nIHRvDQpncmFiIHRoZSB4YV9sb2NrIHdoaWNo
IGlzIGFscmVhZHkgaGVsZCBieSBDUFUwLg0KDQpSZXBsYWNpbmcgYWxsIHhhXyogdXNhZ2UgYnkg
dGhlaXIgeGFfKl9pcnEgY291bnRlcnBhcnRzIHdvdWxkIGZpeA0KdGhpcyBpc3N1ZSwgYnV0IENo
cmlzdGlhbiBwb2ludGVkIG91dCBhbm90aGVyIGlzc3VlOiBkbWFfZmVuY2Vfc2lnbmFsDQp0YWtl
cyBmZW5jZS5sb2NrIGFuZCBzbyBkb2VzIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2suDQoNCiAgZG1h
X2ZlbmNlX3NpZ25hbCgpIC8vIGxvY2tzIGYxLmxvY2sNCiAgLT4gZHJtX3NjaGVkX2VudGl0eV9r
aWxsX2pvYnNfY2IoKQ0KICAtPiBmb3JlYWNoIGRlcGVuZGVuY2llcw0KICAgICAtPiBkbWFfZmVu
Y2VfYWRkX2NhbGxiYWNrKCkgLy8gbG9ja3MgZjIubG9jaw0KDQpUaGlzIHdpbGwgZGVhZGxvY2sg
aWYgZjEgYW5kIGYyIHNoYXJlIHRoZSBzYW1lIHNwaW5sb2NrLg0KDQpUbyBmaXggYm90aCBpc3N1
ZXMsIHRoZSBjb2RlIGl0ZXJhdGluZyBvbiBkZXBlbmRlbmNpZXMgYW5kIHJlLWFybWluZyB0aGVt
DQppcyBtb3ZlZCBvdXQgdG8gZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yay4NCg0KTGlu
azogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL2lzc3Vlcy8xMzkw
OA0KUmVwb3J0ZWQtYnk6IE1pa2hhaWwgR2F2cmlsb3YgPG1pa2hhaWwudi5nYXZyaWxvdkBnbWFp
bC5jb20+DQpTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciA8cGll
cnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAzNCArKysrKysrKysrKysrLS0tLS0tLS0tLS0NCiAx
IGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQoNCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KaW5kZXggYzhlOTQ5ZjRhNTY4Li5m
ZTE3NGE0ODU3YmUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X2VudGl0eS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5j
DQpAQCAtMTczLDI2ICsxNzMsMTUgQEAgaW50IGRybV9zY2hlZF9lbnRpdHlfZXJyb3Ioc3RydWN0
IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSkNCiB9DQogRVhQT1JUX1NZTUJPTChkcm1fc2NoZWRf
ZW50aXR5X2Vycm9yKTsNCiANCitzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9i
c19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLA0KKwkJCQkJICBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpj
Yik7DQorDQogc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yayhzdHJ1
Y3Qgd29ya19zdHJ1Y3QgKndyaykNCiB7DQogCXN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IgPSBj
b250YWluZXJfb2Yod3JrLCB0eXBlb2YoKmpvYiksIHdvcmspOw0KLQ0KLQlkcm1fc2NoZWRfZmVu
Y2Vfc2NoZWR1bGVkKGpvYi0+c19mZW5jZSwgTlVMTCk7DQotCWRybV9zY2hlZF9mZW5jZV9maW5p
c2hlZChqb2ItPnNfZmVuY2UsIC1FU1JDSCk7DQotCVdBUk5fT04oam9iLT5zX2ZlbmNlLT5wYXJl
bnQpOw0KLQlqb2ItPnNjaGVkLT5vcHMtPmZyZWVfam9iKGpvYik7DQotfQ0KLQ0KLS8qIFNpZ25h
bCB0aGUgc2NoZWR1bGVyIGZpbmlzaGVkIGZlbmNlIHdoZW4gdGhlIGVudGl0eSBpbiBxdWVzdGlv
biBpcyBraWxsZWQuICovDQotc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNf
Y2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCi0JCQkJCSAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2Ip
DQotew0KLQlzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0gY29udGFpbmVyX29mKGNiLCBzdHJ1
Y3QgZHJtX3NjaGVkX2pvYiwNCi0JCQkJCQkgZmluaXNoX2NiKTsNCisJc3RydWN0IGRtYV9mZW5j
ZSAqZjsNCiAJdW5zaWduZWQgbG9uZyBpbmRleDsNCiANCi0JZG1hX2ZlbmNlX3B1dChmKTsNCi0N
CiAJLyogV2FpdCBmb3IgYWxsIGRlcGVuZGVuY2llcyB0byBhdm9pZCBkYXRhIGNvcnJ1cHRpb25z
ICovDQogCXhhX2Zvcl9lYWNoKCZqb2ItPmRlcGVuZGVuY2llcywgaW5kZXgsIGYpIHsNCiAJCXN0
cnVjdCBkcm1fc2NoZWRfZmVuY2UgKnNfZmVuY2UgPSB0b19kcm1fc2NoZWRfZmVuY2UoZik7DQpA
QCAtMjIwLDYgKzIwOSwyMSBAQCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9i
c19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLA0KIAkJZG1hX2ZlbmNlX3B1dChmKTsNCiAJfQ0KIA0K
Kwlkcm1fc2NoZWRfZmVuY2Vfc2NoZWR1bGVkKGpvYi0+c19mZW5jZSwgTlVMTCk7DQorCWRybV9z
Y2hlZF9mZW5jZV9maW5pc2hlZChqb2ItPnNfZmVuY2UsIC1FU1JDSCk7DQorCVdBUk5fT04oam9i
LT5zX2ZlbmNlLT5wYXJlbnQpOw0KKwlqb2ItPnNjaGVkLT5vcHMtPmZyZWVfam9iKGpvYik7DQor
fQ0KKw0KKy8qIFNpZ25hbCB0aGUgc2NoZWR1bGVyIGZpbmlzaGVkIGZlbmNlIHdoZW4gdGhlIGVu
dGl0eSBpbiBxdWVzdGlvbiBpcyBraWxsZWQuICovDQorc3RhdGljIHZvaWQgZHJtX3NjaGVkX2Vu
dGl0eV9raWxsX2pvYnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCisJCQkJCSAgc3RydWN0IGRt
YV9mZW5jZV9jYiAqY2IpDQorew0KKwlzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0gY29udGFp
bmVyX29mKGNiLCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiwNCisJCQkJCQkgZmluaXNoX2NiKTsNCisN
CisJZG1hX2ZlbmNlX3B1dChmKTsNCisNCiAJSU5JVF9XT1JLKCZqb2ItPndvcmssIGRybV9zY2hl
ZF9lbnRpdHlfa2lsbF9qb2JzX3dvcmspOw0KIAlzY2hlZHVsZV93b3JrKCZqb2ItPndvcmspOw0K
IH0NCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
