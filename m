Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAJIMpr44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 219D540FF5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 322F3404E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:56:25 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012001.outbound.protection.outlook.com [40.93.195.1])
	by lists.linaro.org (Postfix) with ESMTPS id B2B4F3F61F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 09:54:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ghr5RwuD;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 40.93.195.1 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OZP58PQF2HegCKBWYYgs0cYWpXkGbLkvLbQYekhG7tlosWB5zC/h21+RDOLE9mh8/NF/pAi1+6zKs/23Yw1I8vxxB/zDuuME3RLqGDJI5OOPerrQl8TLRWzb801EbgqDIjb1geeRq17+9kAIgPcRArn8mHsAUOTwzfusELlmkqt+d97fC0g2JHSVmJhl5HbAhTTb4Nb9O2cUZQ+HhiulZgQ+QY/l45m0qq1p0KQy48PObnFYTIUGwf3Rar+wT7c30qVCIrx+eOnRzC7PH3RpILePDrwsTd7pX0eX8ADmbFSqKi6pm6hfbNMOH//YHEbYIwnrH/Ldf/arlKibOUcOTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uts/TC69k7OdUnyCKvM3l0w9KWKS11vz8yXBSncKiCg=;
 b=MZwk0fMQCSYn/7rXTZZjDqzGmcletyZnTIRRrAdeE7wSMlzGzOM4BUUis+Y6teMcTwFxCwEC9k5yBf3KCKR79bS/pk28flz/4+AJFAFk4/Bm6zFOHa8jzx2qQ2pxJv9BZUAliqLMaLz3w0Fj2/1pcULmmr5VPLgvz8qOSTnh1JANnnqvWoUZLu3FvTzrl5+qF153WPCKvOgGJ3939ed6XsAtGcMbQtXt1urJmDBxNesmmoY40bFiRTECkFC9JNhiM9jkbcX3s6Jt9IQFkm/PtubarCbr4pPFgXBbRJdaI1lcbhNMbdjqPHc9Yz8F2go24AdL24rhfzK9xkm7SaheoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uts/TC69k7OdUnyCKvM3l0w9KWKS11vz8yXBSncKiCg=;
 b=ghr5RwuDtXcShMUaAOtjPZ3586ZNBz/LqhpqokDhdBCe5HwrUIisWfVFkJTuRKpANgrrFflJjGb7sO9sX8LO/CJRWUInGl1npnQk+e3VUEaLnPhqLfkbkV7TKsGFcaKIBGw8guK6/nx4Bwh+6WyeZvylzLPt3FTk2b7mdWTRqA4=
Received: from BY5PR13CA0035.namprd13.prod.outlook.com (2603:10b6:a03:180::48)
 by PH0PR12MB7815.namprd12.prod.outlook.com (2603:10b6:510:28a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 09:54:22 +0000
Received: from MWH0EPF000A6731.namprd04.prod.outlook.com
 (2603:10b6:a03:180:cafe::77) by BY5PR13CA0035.outlook.office365.com
 (2603:10b6:a03:180::48) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9298.7 via Frontend Transport; Tue, 4
 Nov 2025 09:54:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 MWH0EPF000A6731.mail.protection.outlook.com (10.167.249.23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.6 via Frontend Transport; Tue, 4 Nov 2025 09:54:21 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 4 Nov 2025 01:54:18 -0800
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich
	<dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>
Date: Tue, 4 Nov 2025 10:53:57 +0100
Message-ID: <20251104095358.15092-1-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000A6731:EE_|PH0PR12MB7815:EE_
X-MS-Office365-Filtering-Correlation-Id: 50e95ec7-7302-48c7-4b09-08de1b88213d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|82310400026|376014|36860700013|1800799024|921020|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QWpGSUlsd0xKdGtiOWJmWXZDSDRmQ2o3N1RNb0twY1locHdvRkRyMGY4YjAx?=
 =?utf-8?B?c2VXQlJ4ZmhtdjRySklSa1pjekJNVjdDSGpxY0VoYytkeUJ2aHpWT1BUQS9m?=
 =?utf-8?B?aGM2b0cwd2lsb1V5WTR0cWdhUGZWTVVyTkxtU2lLNUJJcVMrR20xQkQvN0ds?=
 =?utf-8?B?L2lCUlJZdUhHWjB4YTRDWFcyTWdtL05lbWpoRlowUS8xMXB3UG93aDR2Qk1O?=
 =?utf-8?B?K0w0SXljaFVEa0dHRFNVVzg0UVZlTVlveE5QNFhLekE0MG4rRUlKM2ZlY1Jr?=
 =?utf-8?B?MXRXbGxoVzdzcm5yd25rb2dWb0pBZHNzc1p5ZzVNVmpac205MHNEOFhJVlB4?=
 =?utf-8?B?a3hwNFQzcjRPaXZwdjhucWVnWXVCTWk1TGVOOUVKU0d3S01LVWlEblJJUWxw?=
 =?utf-8?B?Rm5raVgvRnJybW5rOExhU1hJVUZrazQxaytPMVYvOEFER0pZY29yOGlhSUk0?=
 =?utf-8?B?akMvRUZaKzN2M2M1U0Z6SEZIQU1JVUpJR29vaFEyS09EUWErU0RsZkNSN2Vz?=
 =?utf-8?B?N2poS2tRTG1aZU04R3pDb083NWppcXdNb2ljcG1NY1hKVE9CMUxHWDJydUVX?=
 =?utf-8?B?dy9tbHRSVG1IUktRRXZvaDdacE1OKzRnQ3BFVXJZRnptTUZvWE9iNVB6MnZK?=
 =?utf-8?B?VzNWTkVEeHR4dlBWUzRkVlFuS0p2UUZpdVNMcU1xUzVpZWZ3YVRJczNHVXdY?=
 =?utf-8?B?T3V1alBGZ2xveFNiSUhoc3pROWFaRHJtNXoxNVI3TkxVd1lOTzZMSVRJL3VX?=
 =?utf-8?B?TFY1S0Y3OEZVNjFMMDJ5UHdTbWRQR2ZDOEp5N2tmWDVRYjd1Tkxwd05FV0xM?=
 =?utf-8?B?VFF3NEQ1YjVvWUxnSTdxdCtENnM2M1JBTW5WS2UvWEFlWXdJUzZtdGM5VENV?=
 =?utf-8?B?VGhaNUFyQVR0K01IazBFQWdqMi9jMHdnbEFEcHJHUlVaRjlCUlRkSFZMUnhw?=
 =?utf-8?B?TEZKWTZ3U0trSmJYVFZkWHJDUmlsR1V0Qm0zanZlMWQ0cmdYdk05RUZ1WHlT?=
 =?utf-8?B?ZTEyT0RjQTJQWk1JTTJRbXJCcnRsOE84YUozOTUxU0FXQ3lJTCtIRlA3Z1Q4?=
 =?utf-8?B?aUFsYjlhVno3bVpzRVFKalJMVVhKOWNEYWt3amEvOVI2UkJyeEd2d0tBbmVK?=
 =?utf-8?B?eWxWeXJvMVpQS2RhSGZCWjlrbkNxWnRtZmRVQlFGVTlhWU5RVUg3ZFYra29t?=
 =?utf-8?B?VWUrN3B6MDBMWTJZdmJ3a1Y2bGp6YXNwaTM3MVBrbXUzc2JMbUczQzRDTHJz?=
 =?utf-8?B?cHlqWEtaUDVxOG0rZmtHY3hBUEdHdFd3QUpYSVcxSzJKK1ZJd216SklOY08v?=
 =?utf-8?B?THpOUWRoUDRUVVBDcFpoVW8rcFZsM0VJMmJZYkdLQ2UwTzFOMFdMaTJpZkY2?=
 =?utf-8?B?ZEo4ay9naGEyQldhWG9kQm9Vd3pBYU5zQjcyRTd3MUhadHhsZ1E0aSt2cGdn?=
 =?utf-8?B?WnMyOGlCeHBJcGk2bW1HMXg3bGhWLzhHdXhOT1R5TE1xRENlQXlJa0hObEJz?=
 =?utf-8?B?NVZyVE9VL3VLRkc5aUV6TGtCSkFLeDlSOHVoTHQrYkJPOWw3b2UxSmErK253?=
 =?utf-8?B?THVTMFZORG80TjBxdzZkRlhrMWZGN0syNGlwL3ZDOXBoZlA2U3cra1ZJWVU4?=
 =?utf-8?B?UzBTMW54a3lieGMyUGFscE9zemZtQVZaN2o3VUZFejh2K1FYZVhZbTFTZXQ5?=
 =?utf-8?B?NTFrZTVKSHdub3FESklaSFFRazVEeFBOMFdXcmV6MFplOFNjY2RrUVFHVHpt?=
 =?utf-8?B?V0xneFFkWlFqd24yM0xoMG9ZMlhKc3l0SU5zbXlwaUNmS1VWVTYvM1lteFJT?=
 =?utf-8?B?Z0dWZWNuTzhOL2xaQ0dPSUs1dmJ6TFJGdWpLNklrb2NNRWN3KzNRQUVoczFR?=
 =?utf-8?B?SWNPakRGZ3A3cHJlUlRUZ0JibVB1VXh4am1BTVVkNWg3bVV5NFJ3dTZhMkN2?=
 =?utf-8?B?SlpyNDAxRVIxWW5UMUI4ZU8xV2ZnL1FHUCsrL3RhcStvcWJlSUljbmRNV0U0?=
 =?utf-8?B?WmxqRC85UC9nRWRLZ1ZVaFZUU3NjT2dLSVFXdTB1aHJGWTZySURWcjM2UWhs?=
 =?utf-8?Q?cv+Jip?=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(82310400026)(376014)(36860700013)(1800799024)(921020)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 09:54:21.9010
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e95ec7-7302-48c7-4b09-08de1b88213d
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	MWH0EPF000A6731.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB7815
X-Spamd-Bar: --
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KV7XW7QEXORLYMUKJJ24KQOM7DZH2XRG
X-Message-ID-Hash: KV7XW7QEXORLYMUKJJ24KQOM7DZH2XRG
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:48 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KV7XW7QEXORLYMUKJJ24KQOM7DZH2XRG/>
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
	DATE_IN_PAST(1.00)[3917];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,amd.com];
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
	NEURAL_HAM(-0.00)[-0.818];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 219D540FF5F
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
DQppcyBtb3ZlZCBvdXQgdG8gZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yay4NCg0KdjI6
IHJld29yZGVkIGNvbW1pdCBtZXNzYWdlIChQaGlsaXBwKQ0KdjM6IGFkZGVkIEZpeGVzIHRhZyAo
UGhpbGlwcCkNCg0KRml4ZXM6IDJmZGI4YThmMDdjMiAoImRybS9zY2hlZHVsZXI6IHJld29yayBl
bnRpdHkgZmx1c2gsIGtpbGwgYW5kIGZpbmkiKQ0KTGluazogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL21lc2EvbWVzYS8tL2lzc3Vlcy8xMzkwOA0KUmVwb3J0ZWQtYnk6IE1pa2hhaWwg
R2F2cmlsb3YgPG1pa2hhaWwudi5nYXZyaWxvdkBnbWFpbC5jb20+DQpTdWdnZXN0ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2ZmLWJ5
OiBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJA
YW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMg
fCAzNCArKysrKysrKysrKysrLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9lbnRpdHkuYw0KaW5kZXggYzhlOTQ5ZjRhNTY4Li5mZTE3NGE0ODU3YmUgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jDQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jDQpAQCAtMTczLDI2ICsxNzMsMTUgQEAg
aW50IGRybV9zY2hlZF9lbnRpdHlfZXJyb3Ioc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0
eSkNCiB9DQogRVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfZW50aXR5X2Vycm9yKTsNCiANCitzdGF0
aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpm
LA0KKwkJCQkJICBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYik7DQorDQogc3RhdGljIHZvaWQgZHJt
X3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykNCiB7
DQogCXN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IgPSBjb250YWluZXJfb2Yod3JrLCB0eXBlb2Yo
KmpvYiksIHdvcmspOw0KLQ0KLQlkcm1fc2NoZWRfZmVuY2Vfc2NoZWR1bGVkKGpvYi0+c19mZW5j
ZSwgTlVMTCk7DQotCWRybV9zY2hlZF9mZW5jZV9maW5pc2hlZChqb2ItPnNfZmVuY2UsIC1FU1JD
SCk7DQotCVdBUk5fT04oam9iLT5zX2ZlbmNlLT5wYXJlbnQpOw0KLQlqb2ItPnNjaGVkLT5vcHMt
PmZyZWVfam9iKGpvYik7DQotfQ0KLQ0KLS8qIFNpZ25hbCB0aGUgc2NoZWR1bGVyIGZpbmlzaGVk
IGZlbmNlIHdoZW4gdGhlIGVudGl0eSBpbiBxdWVzdGlvbiBpcyBraWxsZWQuICovDQotc3RhdGlj
IHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwN
Ci0JCQkJCSAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpDQotew0KLQlzdHJ1Y3QgZHJtX3NjaGVk
X2pvYiAqam9iID0gY29udGFpbmVyX29mKGNiLCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiwNCi0JCQkJ
CQkgZmluaXNoX2NiKTsNCisJc3RydWN0IGRtYV9mZW5jZSAqZjsNCiAJdW5zaWduZWQgbG9uZyBp
bmRleDsNCiANCi0JZG1hX2ZlbmNlX3B1dChmKTsNCi0NCiAJLyogV2FpdCBmb3IgYWxsIGRlcGVu
ZGVuY2llcyB0byBhdm9pZCBkYXRhIGNvcnJ1cHRpb25zICovDQogCXhhX2Zvcl9lYWNoKCZqb2It
PmRlcGVuZGVuY2llcywgaW5kZXgsIGYpIHsNCiAJCXN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKnNf
ZmVuY2UgPSB0b19kcm1fc2NoZWRfZmVuY2UoZik7DQpAQCAtMjIwLDYgKzIwOSwyMSBAQCBzdGF0
aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpm
LA0KIAkJZG1hX2ZlbmNlX3B1dChmKTsNCiAJfQ0KIA0KKwlkcm1fc2NoZWRfZmVuY2Vfc2NoZWR1
bGVkKGpvYi0+c19mZW5jZSwgTlVMTCk7DQorCWRybV9zY2hlZF9mZW5jZV9maW5pc2hlZChqb2It
PnNfZmVuY2UsIC1FU1JDSCk7DQorCVdBUk5fT04oam9iLT5zX2ZlbmNlLT5wYXJlbnQpOw0KKwlq
b2ItPnNjaGVkLT5vcHMtPmZyZWVfam9iKGpvYik7DQorfQ0KKw0KKy8qIFNpZ25hbCB0aGUgc2No
ZWR1bGVyIGZpbmlzaGVkIGZlbmNlIHdoZW4gdGhlIGVudGl0eSBpbiBxdWVzdGlvbiBpcyBraWxs
ZWQuICovDQorc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2Ioc3RydWN0
IGRtYV9mZW5jZSAqZiwNCisJCQkJCSAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpDQorew0KKwlz
dHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0gY29udGFpbmVyX29mKGNiLCBzdHJ1Y3QgZHJtX3Nj
aGVkX2pvYiwNCisJCQkJCQkgZmluaXNoX2NiKTsNCisNCisJZG1hX2ZlbmNlX3B1dChmKTsNCisN
CiAJSU5JVF9XT1JLKCZqb2ItPndvcmssIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX3dvcmsp
Ow0KIAlzY2hlZHVsZV93b3JrKCZqb2ItPndvcmspOw0KIH0NCi0tIA0KMi40My4wDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
