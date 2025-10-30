Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMiXH8f34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF5E40FDB2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34FCE404ED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:52:54 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazhn15011020.outbound.protection.outlook.com [52.102.139.20])
	by lists.linaro.org (Postfix) with ESMTPS id 46B133F79F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 04:44:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=selector1 header.b="s/6MncB8";
	dmarc=pass (policy=quarantine) header.from=ti.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 52.102.139.20 as permitted sender) smtp.mailfrom=m-malladi@ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gFJLT6UOjJvtAwNYTUwMrnDnrh/GmLi/2v+4HB2pFBEgtl/JmcfpU7xR5g/1fKHYvK6LvSonuFpXqJ0o69Dk6j/UxhwGH5HJkNpVHywLPqNJzyQ49vNs16sYgn7NusqNaR3b5gxIg0t0w3iV+3+PJt2+jIGfWx9TgfLbNRS7hC0kpyoEamc9rdRxBEpFD1arWglFr32Ka8BIOfonj985aENLL5gfLvQcM1ZClI5aFbtLTMCSWnd4q8Jz6CbrmLGbkyOGacSZ0ITHI4GnCFDxPR1TtL0EJpOYPmoM/O9RIEMrXLKQ04AmympZv0ey3t4E3JeLNXM4gUNGfSTW+R9lGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zpgtKhPtUjL30Fec/scLab74IjUMA05RajdEndc/YuU=;
 b=fvLIG4whZOaGJIPs+tbmWCIVDmHVTYbmZFDONjEg2dAtPcmwIb1VrGGNeIrkZMZk5I0bsc9gzsjH3fMUFam9C88Y7jaHPv13mvgfZys744Gih/eBx2VXPKHqLAivXyz+taG80VLUCTsGhlLfUkHJJTCboV0SIiNGxh+H3ihAQhMR8vbrznwHX94fPwunpP8eBqLVTiqyWi8emA41MTrTovwjYckKv0IZtifTah2SoT3MX0SxK2MmMZKPhianHT/9sxvuzJXmi9pTxALKTaZyOxIvk7rFwpkm80UwC9Fj38g2UAh9nOHTALSEP94pDKOMdS5EHDxLJ5rtojNArX0Hbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpgtKhPtUjL30Fec/scLab74IjUMA05RajdEndc/YuU=;
 b=s/6MncB8npOsupezmnmSUz3bHQQY7bGiR2tTnLThZ/pwI+Dtn8HtS4kZGpWwXIs3bi8Dt4x7nQrCJCuRX03PGqZJqkiUYGpwUhE0ZBKOagnMFapbNr+w9hzQsrY4yl5sVFR1YY9c9vA3p1XrGGB6+4UJ03lhhz27UfpkwIkSdKY=
Received: from BN0PR04CA0137.namprd04.prod.outlook.com (2603:10b6:408:ed::22)
 by BN0PR10MB4981.namprd10.prod.outlook.com (2603:10b6:408:12d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 04:44:10 +0000
Received: from BN1PEPF00004685.namprd03.prod.outlook.com
 (2603:10b6:408:ed:cafe::db) by BN0PR04CA0137.outlook.office365.com
 (2603:10b6:408:ed::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9275.14 via Frontend Transport; Thu,
 30 Oct 2025 04:43:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 BN1PEPF00004685.mail.protection.outlook.com (10.167.243.86) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.10 via Frontend Transport; Thu, 30 Oct 2025 04:44:09 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 29 Oct
 2025 23:43:59 -0500
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 29 Oct
 2025 23:43:59 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 29 Oct 2025 23:43:59 -0500
Received: from [10.24.69.13] (meghana-pc.dhcp.ti.com [10.24.69.13] (may be forged))
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 59U4hqLO1337117;
	Wed, 29 Oct 2025 23:43:52 -0500
Message-ID: <ba1b48dc-b544-4c4b-be8a-d39b104cda21@ti.com>
Date: Thu, 30 Oct 2025 10:13:51 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, <horms@kernel.org>,
	<namcao@linutronix.de>, <vadim.fedorenko@linux.dev>,
	<jacob.e.keller@intel.com>, <christian.koenig@amd.com>,
	<sumit.semwal@linaro.org>, <sdf@fomichev.me>, <john.fastabend@gmail.com>,
	<hawk@kernel.org>, <daniel@iogearbox.net>, <ast@kernel.org>,
	<kuba@kernel.org>, <edumazet@google.com>, <davem@davemloft.net>,
	<andrew+netdev@lunn.ch>
References: <20251023093927.1878411-1-m-malladi@ti.com>
 <20251023093927.1878411-3-m-malladi@ti.com>
 <05efdc9a-8704-476e-8179-1a9fc0ada749@redhat.com>
Content-Language: en-US
From: Meghana Malladi <m-malladi@ti.com>
In-Reply-To: <05efdc9a-8704-476e-8179-1a9fc0ada749@redhat.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF00004685:EE_|BN0PR10MB4981:EE_
X-MS-Office365-Filtering-Correlation-Id: d547939b-942c-4649-5de9-08de176ef77b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|1800799024|7416014|376014|34020700016|36860700013|921020|12100799066;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QUJob3ZIMlU4cFg0Zk1FSGJHUFhrTWFTbFFaeFBuU0VYcnNQVjk5VEtBTnN4?=
 =?utf-8?B?WjlhNkpIRHloK3FhbDAzc0ZtSVV2d0dNczQrYVRvcTJMUkxWdnU3UkFYNTJj?=
 =?utf-8?B?WEpwaEV2WVBzbUZvakhFYTFoWWF4SHl0NkRuSTJaQnk4VWZoNWpFUkw2V1lZ?=
 =?utf-8?B?RElLazBBZW9aZnp4aWEzMWV6VlE2dU5qM2JsenZBR2dDNElZKzM5dVRqTTl3?=
 =?utf-8?B?aThhUnJBeVVFdnpGcHBmWkYrL01BamgxMGRJOGZxK0FzNWMzcUorc0VzMjBx?=
 =?utf-8?B?cFhmaUQ5NHA0aTY4S25aVy96ZzdRNDBhUThnWE9BTXlqcmh5dWJPNnlLa3Zi?=
 =?utf-8?B?K3VBRWp0K28yS1QvVWYzYlFqNzdkKzFQN1dkU0tBdWliVTNDK3B4Mi9WV3RN?=
 =?utf-8?B?RmNXb3pybjFWbHRaZUNtcnhkbnZjWGFjbkxibktxRFh6N0ZJUWF6R1NybGQy?=
 =?utf-8?B?alcrVHJQTitabFg2ejc4ZWJ0UW1oVmVLUXZNc2R5NmMwSXp6SmNtQ3hxM0hh?=
 =?utf-8?B?TGt0Wjd0OFQyaVM1UnhwK2tMdWRNbUxMSUFHeVRIWEc2VWRISlZJVjN5RThr?=
 =?utf-8?B?SmdTNnltQnJycHhaaFpqaGFkTG1DUmRIVmVHWGRJd1NndGVjbVJDNHJ6WmFs?=
 =?utf-8?B?SmREd3BYcDVlOVBrVVI1emZCUnI3bzJXR2FpOUpNenhDdDAwVVArSkdCLzRk?=
 =?utf-8?B?QUtkd0ZpUDAzYjk2bVJHT3lvMisrVnVGVkJhY2dCeWNDQ0VnVXNhekdDVEs0?=
 =?utf-8?B?UVZWVjhUVGRCUlg1YlFPZlBIZkhWeHVDTHF3cVVlLytyQ0dEemo1cGU3bGg4?=
 =?utf-8?B?ZFRCeFNxN2lERlhsb0M2UVNZTzY1RjMrTDhsZmFNM003VXJFNFRqdFNaU2t6?=
 =?utf-8?B?bFRYdVMyT2ZSL1IvOENsOXg5RUhzYnB0QmxaY2V3dTVIdlhEU1hqUkNxdWNx?=
 =?utf-8?B?a3lHUFFjMXBhMmJhSHNBUE9mbFB3TUtaa0RHVmdkSmJ4RE10cTJtRW1FU3hK?=
 =?utf-8?B?OVRORmxtWGpkSTVOQVk2V0hSamR0OXRVTTArQkxUNDFZT2lkLzBFYzk4YVE0?=
 =?utf-8?B?YXFvajZldWVUK3JyYzVqZnNKQ3pUajhVT1JjNUdaa2xNUytBcGhDUkxsRkt0?=
 =?utf-8?B?U1Ftd3prcDdTZm9RWXBPUi9yem5VRG9yNnk4K0kzOTZXM2JYeFRpT3QxTmRn?=
 =?utf-8?B?WVU2OEo1TmhxTXcwbEl3VTNCekIvc2tOSnJXWU4rYnMwUjhqTVQ5UjRIeU9y?=
 =?utf-8?B?QWpiU2hHV3JpRWFiK0FFRWRBSlVzYzEzaHRLZ2dXbFYybTY0MzFCMSt2N1Bn?=
 =?utf-8?B?SjNsdkcyZStvTGc0Y0IvVDBmUVF3aWhZU3E3UlNtTmMrNjBnMDZUZnd3S1hD?=
 =?utf-8?B?YXVsakpwK29xcHYydVMwa3VuQ3dRYnpoQktXMFJWRjV1aWhEM1dTNXdIaDBQ?=
 =?utf-8?B?VFFhaGtnTjRwb2NxeUlCVzQ5ZFZLVDZZckFjZ08veUl6YmI4aS96MnFObEVr?=
 =?utf-8?B?UjErVHh5a0xmMjZjdWhobW15dk1HcTNRZHBsekxCT2pYUzgwUSt2Ni84L0ds?=
 =?utf-8?B?TUlrbSs2R0JMblRlZ3AxZzhrVHVZSWtjNGwvVVJFWVBPUUlPYjBsVVNtdEs3?=
 =?utf-8?B?bzFGaytzY3pIM1R6cVMzalg1NWY2M0JJU3RGaVBwZjRaV2ZHY3J4ZXYzQ1VG?=
 =?utf-8?B?S0pZUnR5SDViNE1tOHRKSGhXdEhOK3d3Z3RJSVI3Zys3QWFtY2h3RElZSGlE?=
 =?utf-8?B?d2VyUkZZMy8zeGVLRXdKYUpWVmxTanBaMEs0ak1kNFYwOXBxdjllbGVvY1NC?=
 =?utf-8?B?U0JEMmpYclFLTk8yOUJMOGw3ajN6TDJiNzY4cG1nZVdGRkJpa21LT09uS1Br?=
 =?utf-8?B?TDdkZ3RlSnNNeUU4UVhxUWZiUk5TOEN3SjRUTnlhYXgwZXFYQ0FwckdlaDNH?=
 =?utf-8?B?TFFrTDNuZXpVV0N4bkNoc1d5bHZQeWV4eG9Gc0NvY1VuLzJrc29oQ0hSdXg5?=
 =?utf-8?B?R2V1cEpaL28xajkwRFV4bjZyMDc5alR1TEk3M2o2cThoSzNDUVVUOVZSL3o5?=
 =?utf-8?Q?hIhOY/?=
X-Forefront-Antispam-Report: 
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(7416014)(376014)(34020700016)(36860700013)(921020)(12100799066);DIR:OUT;SFP:1501;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 04:44:09.7861
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d547939b-942c-4649-5de9-08de176ef77b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN1PEPF00004685.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4981
X-Spamd-Bar: ---
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KOCZ7G3JU74JUXLM3NOYS2PQZDYG4YAO
X-Message-ID-Hash: KOCZ7G3JU74JUXLM3NOYS2PQZDYG4YAO
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:33 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXTERNAL] Re: [PATCH net-next v4 2/6] net: ti: icssg-prueth: Add XSK pool helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KOCZ7G3JU74JUXLM3NOYS2PQZDYG4YAO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[ti.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[ti.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[4042];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[redhat.com,kernel.org,linutronix.de,linux.dev,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,google.com,davemloft.net,lunn.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[urldefense.com:url,ti.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	DKIM_TRACE(0.00)[ti.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[urldefense.com,proofpoint.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1EF5E40FDB2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgUGFvbG8sDQoNCk9uIDEwLzI4LzI1IDE2OjI3LCBQYW9sbyBBYmVuaSB3cm90ZToNCj4gT24g
MTAvMjMvMjUgMTE64oCKMzkgQU0sIE1lZ2hhbmEgTWFsbGFkaSB3cm90ZTogPiBAQCAtMTIwMCw2
ICsxMjE4LDEwOSBAQCANCj4gc3RhdGljIGludCBlbWFjX3hkcF9zZXR1cChzdHJ1Y3QgcHJ1ZXRo
X2VtYWMgKmVtYWMsIHN0cnVjdCBuZXRkZXZfYnBmIA0KPiAqYnBmKSA+IHJldHVybiAwOyA+IH0g
PiA+ICtzdGF0aWMgaW50IHBydWV0aF94c2tfcG9vbF9lbmFibGUoc3RydWN0IA0KPiBwcnVldGhf
ZW1hYyAqZW1hYywNCj4gWmpRY21RUllGcGZwdEJhbm5lclN0YXJ0DQo+IFRoaXMgbWVzc2FnZSB3
YXMgc2VudCBmcm9tIG91dHNpZGUgb2YgVGV4YXMgSW5zdHJ1bWVudHMuDQo+IERvIG5vdCBjbGlj
ayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzb3Vy
Y2UgDQo+IG9mIHRoaXMgZW1haWwgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZS4NCj4gUmVw
b3J0wqBTdXNwaWNpb3VzDQo+IDxodHRwczovL3VzLXBoaXNoYWxhcm0tZXd0LnByb29mcG9pbnQu
Y29tL0VXVC92MS9HM3ZLISANCj4gdXBkcUhiMGx2T2Q2QUNYRlBET0RYekZqVzJSdGtJcGJscFdy
M3p1aTJPMkpxV1R5UkNMS2MyaTdQYTd1U01CWllwcThIN3RUci1qcF9uRGVsZ19PVXJtTkNnWjhf
bTAkPg0KPiBaalFjbVFSWUZwZnB0QmFubmVyRW5kDQo+IA0KPiBPbiAxMC8yMy8yNSAxMTozOSBB
TSwgTWVnaGFuYSBNYWxsYWRpIHdyb3RlOg0KPj4gQEAgLTEyMDAsNiArMTIxOCwxMDkgQEAgc3Rh
dGljIGludCBlbWFjX3hkcF9zZXR1cChzdHJ1Y3QgcHJ1ZXRoX2VtYWMgKmVtYWMsIHN0cnVjdCBu
ZXRkZXZfYnBmICpicGYpDQo+PiAgCXJldHVybiAwOw0KPj4gIH0NCj4+ICANCj4+ICtzdGF0aWMg
aW50IHBydWV0aF94c2tfcG9vbF9lbmFibGUoc3RydWN0IHBydWV0aF9lbWFjICplbWFjLA0KPj4g
KwkJCQkgIHN0cnVjdCB4c2tfYnVmZl9wb29sICpwb29sLCB1MTYgcXVldWVfaWQpDQo+PiArew0K
Pj4gKwlzdHJ1Y3QgcHJ1ZXRoX3J4X2NobiAqcnhfY2huID0gJmVtYWMtPnJ4X2NobnM7DQo+PiAr
CXUzMiBmcmFtZV9zaXplOw0KPj4gKwlpbnQgcmV0Ow0KPj4gKw0KPj4gKwlpZiAocXVldWVfaWQg
Pj0gUFJVRVRIX01BWF9SWF9GTE9XUyB8fA0KPj4gKwkgICAgcXVldWVfaWQgPj0gZW1hYy0+dHhf
Y2hfbnVtKSB7DQo+PiArCQluZXRkZXZfZXJyKGVtYWMtPm5kZXYsICJJbnZhbGlkIFhTSyBxdWV1
ZSBJRCAlZFxuIiwgcXVldWVfaWQpOw0KPj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+PiArCX0NCj4+
ICsNCj4+ICsJZnJhbWVfc2l6ZSA9IHhza19wb29sX2dldF9yeF9mcmFtZV9zaXplKHBvb2wpOw0K
Pj4gKwlpZiAoZnJhbWVfc2l6ZSA8IFBSVUVUSF9NQVhfUEtUX1NJWkUpDQo+PiArCQlyZXR1cm4g
LUVPUE5PVFNVUFA7DQo+PiArDQo+PiArCXJldCA9IHhza19wb29sX2RtYV9tYXAocG9vbCwgcnhf
Y2huLT5kbWFfZGV2LCBQUlVFVEhfUlhfRE1BX0FUVFIpOw0KPj4gKwlpZiAocmV0KSB7DQo+PiAr
CQluZXRkZXZfZXJyKGVtYWMtPm5kZXYsICJGYWlsZWQgdG8gbWFwIFhTSyBwb29sOiAlZFxuIiwg
cmV0KTsNCj4+ICsJCXJldHVybiByZXQ7DQo+PiArCX0NCj4+ICsNCj4+ICsJaWYgKG5ldGlmX3J1
bm5pbmcoZW1hYy0+bmRldikpIHsNCj4+ICsJCS8qIHN0b3AgcGFja2V0cyBmcm9tIHdpcmUgZm9y
IGdyYWNlZnVsIHRlYXJkb3duICovDQo+PiArCQlyZXQgPSBpY3NzZ19zZXRfcG9ydF9zdGF0ZShl
bWFjLCBJQ1NTR19FTUFDX1BPUlRfRElTQUJMRSk7DQo+PiArCQlpZiAocmV0KQ0KPj4gKwkJCXJl
dHVybiByZXQ7DQo+PiArCQlwcnVldGhfZGVzdHJveV9yeHEoZW1hYyk7DQo+PiArCX0NCj4+ICsN
Cj4+ICsJZW1hYy0+eHNrX3FpZCA9IHF1ZXVlX2lkOw0KPj4gKwlwcnVldGhfc2V0X3hza19wb29s
KGVtYWMsIHF1ZXVlX2lkKTsNCj4+ICsNCj4+ICsJaWYgKG5ldGlmX3J1bm5pbmcoZW1hYy0+bmRl
dikpIHsNCj4+ICsJCXJldCA9IHBydWV0aF9jcmVhdGVfcnhxKGVtYWMpOw0KPiANCj4gSXQgbG9v
a3MgbGlrZSB0aGlzIGZhbGxzIHNob3J0IG9mIEpha3ViJ3MgcmVxdWVzdCBvbiB2MjoNCj4gDQo+
IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xvcmUua2VybmVsLm9yZy8gDQo+
IG5ldGRldi8yMDI1MDkwMzE3NDg0Ny41ZDhkMWM5ZkBrZXJuZWwub3JnL19fOyEhRzN2SyEgDQo+
IFR4RU9GMlBaQS0yb2FnVTdHbXEyUGR5SHJjZUlfc1dGUlNDTVAybWVPeFZyczhlcVN0RFVTVFBp
Mmt5emp2YTFyZ1V6UVV0WWJkOWckIDxodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjUwOTAzMTc0ODQ3LjVkOGQxYzlmQGtlcm5lbC5v
cmcvX187ISFHM3ZLIVR4RU9GMlBaQS0yb2FnVTdHbXEyUGR5SHJjZUlfc1dGUlNDTVAybWVPeFZy
czhlcVN0RFVTVFBpMmt5emp2YTFyZ1V6UVV0WWJkOWckPg0KPiANCj4gYWJvdXQgbm90IGZyZWVp
bmcgdGhlIHJ4IHF1ZXVlIGZvciByZWNvbmZpZy4NCj4gDQoNCkkgdHJpZWQgaG9ub3JpbmcgSmFr
dWIncyBjb21tZW50IHRvIGF2b2lkIGZyZWVpbmcgdGhlIHJ4IG1lbW9yeSB3aGVyZXZlciANCm5l
Y2Vzc2FyeS4NCg0KIkluIGNhc2Ugb2YgaWNzc2cgZHJpdmVyLCBmcmVlaW5nIHRoZSByeCBtZW1v
cnkgaXMgbmVjZXNzYXJ5IGFzIHRoZQ0KcnggZGVzY3JpcHRvciBtZW1vcnkgaXMgb3duZWQgYnkg
dGhlIGNwcGkgZG1hIGNvbnRyb2xsZXIgYW5kIGNhbiBiZQ0KbWFwcGVkIHRvIGEgc2luZ2xlIG1l
bW9yeSBtb2RlbCAocGFnZXMveGRwIGJ1ZmZlcnMpIGF0IGEgZ2l2ZW4gdGltZS4NCkluIG9yZGVy
IHRvIHJlbWFwIGl0LCB0aGUgbWVtb3J5IG5lZWRzIHRvIGJlIGZyZWVkIGFuZCByZWFsbG9jYXRl
ZC4iDQoNCj4gSSB0aGluayB5b3Ugc2hvdWxkOg0KPiAtIHN0b3AgdGhlIEgvVyBmcm9tIHByb2Nl
c3NpbmcgaW5jb21pbmcgcGFja2V0cywNCj4gLSBzcG9vbCBhbGwgdGhlIHBlbmRpbmcgcGFja2V0
cw0KPiAtIGF0dGFjaC9kZXRhY2ggdGhlIHhza19wb29sDQo+IC0gcmVmaWxsIHRoZSByaW5nDQo+
IC0gcmUtZW5hYmxlIHRoZSBIL1cNCj4gDQoNCkN1cnJlbnQgaW1wbGVtZW50YXRpb24gZm9sbG93
cyB0aGUgc2FtZSBzZXF1ZW5jZToNCjEuIERvZXMgYSBjaGFubmVsIHRlYXJkb3duIC0+IHN0b3Ag
aW5jb21pbmcgdHJhZmZpYw0KMi4gZnJlZSB0aGUgcnggZGVzY3JpcHRvcnMgZnJvbSBmcmVlIHF1
ZXVlIGFuZCBjb21wbGV0aW9uIHF1ZXVlIC0+IHNwb29sIA0KYWxsIHBlbmRpbmcgcGFja2V0cy9k
ZXNjcmlwdG9ycw0KMy4gYXR0YWNoL2RldGFjaCB0aGUgeHNrIHBvb2wNCjQuIGFsbG9jYXRlIHJ4
IGRlc2NyaXB0b3JzIGFuZCBmaWxsIHRoZSBmcmVlcSBhZnRlciBtYXBwaW5nIHRoZW0gdG8gdGhl
IA0KY29ycmVjdCBtZW1vcnkgYnVmZmVycyAtPiByZWZpbGwgdGhlIHJpbmcNCjUuIHJlc3RhcnQg
dGhlIE5BUEkgLSByZS1lbmFibGUgdGhlIEgvVyB0byByZWN2IHRoZSB0cmFmZmljDQoNCkkgYW0g
c3RpbGwgd29ya2luZyBvbiBza2lwcGluZyAyIGFuZCA0IHN0ZXBzIGJ1dCB0aGlzIHdpbGwgYmUg
YSBsb25nIA0Kc2hvdC4gTmVlZCB0byBtYWtlIHN1cmUgYWxsIGNvcm5lciBjYXNlcyBhcmUgZ2V0
dGluZyBjb3ZlcmVkLiBJZiB0aGlzIA0KYXBwcm9hY2ggbG9va3MgZG9hYmxlIHdpdGhvdXQgY2F1
c2luZyBhbnkgcmVncmVzc2lvbnMgSSBtaWdodCBwb3N0IGl0IGFzIA0KYSBmb2xsb3d1cCBwYXRj
aCBsYXRlciBpbiB0aGUgZnV0dXJlLg0KDQo+IC9QDQo+IA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
