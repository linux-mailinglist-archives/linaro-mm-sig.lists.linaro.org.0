Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHZHGqFU32l1RwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 11:04:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBE04024BA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 11:04:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 775E740474
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Apr 2026 09:04:30 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010016.outbound.protection.outlook.com [52.101.56.16])
	by lists.linaro.org (Postfix) with ESMTPS id 1189C3F7E8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 09:04:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=PT15r90J;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.16 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jc4Xnvg9E3fO+r2R55YXzNJfInZ7bA/hDvrb0o5t4+T7TU5T4xGuw1p3Kb1dXJDX20qV6TQnoG2kitY3wWngc7yOTdHSzPMquqBJN7WjLeBOfp/fXJn5+2Pp1/ZvXI/oVjREmJdlTlc6vQthP/LhU2C1EdyIZyOFEYU11qYCVL8ud6EBsiubHZjPUBJJR4csPLs3q3JgkKF4cQMpaI/iyU2qXPnVALKXArYeZEcYGEnepCwJxr7jXINX3LhJfS4iErK//TJawDyxK9r5gdzaG/qAeTeCjGqCRf7NpaSYtqo7TSitG5jInd8Ukrt8Cs9FvPt2OQwW6S7cSJKMoRR3Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j1kOfE6NqCqt4yK4SKwGgbG1AioFStsMZ8Z4q2tl/oQ=;
 b=U/mEUslFIpilkNq9z+B6AkxHVKBDKbCf1yIFJHqo66Y+GHTCsSEsgPn4ts7JVjuNl4SsJ2Bs8FBveY9yHPjfPN06FJAefARHpoq4eqLZTWBD0a87FIQsYQKHv8vnJzBGbc1BXj2CW3e3Vy9MWAAjBOE9IiIOb10b5+XyHsColPT39sqzC8ar/6P21YJNGyU9mMCf6jH4AD5zmg8A5JZJMf8FbCTLWIKeMs93Be+S+iKnjyE4SWv9ns1jyiH1AB1HFCpUvJN0OS4R6ICiQp1xGToCyEVwSlatGARbcOQMW64hC8GveLzPj8ShUz0R/tg9XXUI9rimKljlxwEnAGMs5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1kOfE6NqCqt4yK4SKwGgbG1AioFStsMZ8Z4q2tl/oQ=;
 b=PT15r90JNchjYT89fh/FbYCvDlpNloFkj47I5Kme+Y+qta8Jv1N1KK1le5Y67Jb20WDrrQLr/NtTCn80n87uf/px5/NtoKsI/K6Hc31RHsB9u79t3SZBmud93zi6m4UPFYbPQ7lscLNGAB5NZ15ksDpiA0wxswENs+2VkhCqt84=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB6009.namprd12.prod.outlook.com (2603:10b6:8:69::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Wed, 15 Apr
 2026 09:04:24 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 09:04:24 +0000
Message-ID: <b1d05f17-c726-478f-8ee8-691b6c389f5a@amd.com>
Date: Wed, 15 Apr 2026 11:04:19 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
 <20260414154928.32934-2-tvrtko.ursulin@igalia.com>
 <650e835e-b60d-44fd-b212-47f8a9d18c15@amd.com>
 <5fea79b5-ab5a-4a98-95c8-6452b20e83c4@igalia.com>
 <b3b75077-878b-4d4e-b18e-4976765c63db@amd.com>
 <dcd9e1e9-8297-4429-94be-af88c7b41399@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <dcd9e1e9-8297-4429-94be-af88c7b41399@igalia.com>
X-ClientProxiedBy: IA1P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:464::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB6009:EE_
X-MS-Office365-Filtering-Correlation-Id: ae5e3c5d-b97e-4639-3b80-08de9acdfd3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	ygtgacFU1w7dUgjM8We3tBES7qkSpcA2Xn1sHtaGXFgYH4NeIm1Tp3dWLuoeQmFykzt89Tm7Hoj8vy0EwszSZbAzRUVTBC1NjUbJkMbxenRc0o0W/wNEl6RIgmEj8N53UYf+gykyP4hZ6ucEvg03+kqs91aiTlntOZXsVXX4ennW9OZe3sBlllxWn9j8oJCOnkQCUET822BRzef8TzWVmvmWvIaepmes5lv1rEl8wqSJ2lu/9gCeDFfsaDBHDKZbaGrQaWmF5GkCHnaT8L1m+UroAf9HZkdnEZluVFzfKZpCDLK5CobdX88PeT3vp+SAGTqDEeZA2JaVTyxdEdELEUJSWmlIM/zZ5Wl0MDquR1GgN7GNf0L8RdOanA/foF5Y5UhaYmNW/ogTF5BoeiDIuQwUL/8vmAcsqu6GAxjlzmU36J1Dd7tsmWB/eC3oYW303dlP0AmbfbkQeykmXRBrvsSHUvVk7ngA+rNmI9iuLc9T1nHFrdaeg31wBbP/ddXH3cMSWiMT6AyZAgyrA9d62PXfPNCNrJ5pBYr//EIGKfupH9ePxyQ+TQ8kpuNshpT83G8VYNBy+eKzzw7LfK0eBK0vvROAqltQz7eZqq6amdGjyP7RhDt8x+tJfeLyWEAQoSEZKXbAe9VkKpjeqJ2yMavvsx53pPttfdIgzEQv6ZpvAWXffplRJkYjxQvvfRIB/PtABwZL1IvACcoJIb6CDA16AtZl0vUcWMAW6ebcD0U1HEflAdnl1vVuxZVK2YY6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YmppakVidC9TdTFCMm1qdE5aaDVQeHFSYS8xNEhzcE1qV1BVeWlnN1YrMVRj?=
 =?utf-8?B?Sit6RVFJQ0drNVRia0JKSUpDdVZHaXBMZ3c0ZHVmcXZRS1NOZ1dsbjFDenYy?=
 =?utf-8?B?dHpoMnR1NGNMZFExanAzTzBrWDBzZm16SkFBRG9HV1RLTEVxeXBOVzduWHlP?=
 =?utf-8?B?N1hRUCt0VkxaQjEwRlE4dDdDYjVvVUJBNjNjVlE4YlJhbm5odS90ZXN4YTBO?=
 =?utf-8?B?ZGhUQS9WSHJOZ0Fmay85eHRaT0ZRcTN5WnZHa2dUbVhWZ2hDb1VUYWdaZVhI?=
 =?utf-8?B?TXIyTDRJTXkxK0F6dFgrcUxmY25RK1A4NHdMejBBcno3bmoxK0lRblZUYSsy?=
 =?utf-8?B?V1pTTjZqK3p2ZzE1Yjh3TExKc1YrOVV6djJYdzYzVTBnR2FRR2kzZVFpRk8z?=
 =?utf-8?B?RGFMclF3KzRVVFJDYlBRcWxHWUJpdk5PYStlUzRtZHJZbm5LeXVSY2ZxcXBB?=
 =?utf-8?B?aGdFN1lVeW9LY2krU2dKRFJYN1d4R0paMzhNSEJUVXptSmZJMGx3QWhYRmQx?=
 =?utf-8?B?ejM5aHVWbXBqVmttQ01YWi9XWFp1dVlNRXZVS3BwVDFTcjlFSGV2UkpyeDNo?=
 =?utf-8?B?QXdSSHdIWUVJR2pTWW5lQWNzQ3BvcHFndWsrMEtOeTVzNmlPUFFpbEIvemwy?=
 =?utf-8?B?QTZwVDBQaExBYitWdzZncWZpSVBuVjhKVmJRQTY2WVhpRCtyY3I2bkpCL3RD?=
 =?utf-8?B?YndlYTQxd1UwZWRrd2ZBUWExOWRDelBxbVNPWFFUTlJZYkorM1ZzdDdxMEl1?=
 =?utf-8?B?QVJIMFQ1ZERpT1hKcmt2RmVxR0xoOG12U3hEZTc3SE5mNWR4cTRhYmQ4Q2Qx?=
 =?utf-8?B?bENiN3NWell1MlYzWkNHN0pKMWNGaG5VeHJNYjljZUkvVk9NV2J6Ly9ubmRB?=
 =?utf-8?B?SlR6eHdYaTkxRjJZeHlTeCtRNDVkREJPNW1MS2xzNWdnblVSYm1JQ3JLU2d2?=
 =?utf-8?B?N0ptQU5QVnY1VEpvdUozZStYYVVHWDQ0Q2xjUkw4bFVaVXhUbXpFTDdHWDJa?=
 =?utf-8?B?WUxNVEZ3OU0zQjl3MjVuS2Q0NDlqMjJsNTl0dVZVZ0dJRVZscUh6cG40L0Qw?=
 =?utf-8?B?Uk8wdEpkdFE5QXVSVTNWVEFwV1FycXBTbDdLTVd3Kys2QnFnL09rNTh5aGM2?=
 =?utf-8?B?ckFxUEs1TEsyUk00cnVCR2o4dUxpbmw4ZTZMNUQ4ckRsSzFlWDhjU3FscFNC?=
 =?utf-8?B?TFFiazBwRmJRMm5sRXhvcHgzVmxSd29WdjlYQnh2ZmJJWDB4MlYxSGZ5Zjho?=
 =?utf-8?B?aWc5ZTRTQTZBRzJQZy9YNEY2VFBxZDM2ZU4rMU1zUk5qMS9aZldPeTJmaURj?=
 =?utf-8?B?dG1yeFlZYjdnZlRTV3JIL0syUkhXOHF3QnJXYW50aFlONVlLeTd3KzBTMWJp?=
 =?utf-8?B?ZWEyV3RqQ2dNT2Yza1lpdjNYcC9EMURMbS9aN3AxUHFrdlhkQldPSGFHaFJI?=
 =?utf-8?B?VjFlWEJVUk5PSndndWJRbXF0VG9keEhiaHlmRmxnYnRJRTh6aEtCVlBhUXRr?=
 =?utf-8?B?VnZXVTBMblNSRUhiUlVYTHQ0c1UvVGxaSU50eGhiM0RCeFZVVjAwSGIzL2JL?=
 =?utf-8?B?YXVTZXREazFBZU9TdUxPMDFCbHlrYitadGltaDdhckIyMFVQWmFma0lpaFQw?=
 =?utf-8?B?b1Rnb2x4aE1GYkloeE1nUW1yeG9hczZLSy9wNmx6cWNtQThYUmFtSnl4OXJE?=
 =?utf-8?B?Z3VFM3hCRjFmUFlYM2JPMFZNZjlGT0tzNVc4TURnMUxmRW8yWjVucGJaa3V3?=
 =?utf-8?B?azZZQ0d1Si9SRWdlZDFNVzNCMmNTRFpSOG9BTlVpVFdwMEFWbC9ZMzMzMEFC?=
 =?utf-8?B?bkNVMnl4VEhTcWNvTDU1ZjlVU29RbHJEcXg4WkgrZ2RpZUxLYnFVcHBoUnBi?=
 =?utf-8?B?cmNuK3BML0p2TWxaSjE1azRaR2dzNHdVdmFhdmpqKytPbEFKZHU5MWdxOGEv?=
 =?utf-8?B?NTlDMlVrSzA3MytvdW1RWmpoZ1dpZU5HOVZ0blA4VC9Xb3d5N1lZNE9yWGJm?=
 =?utf-8?B?UVpwdFQwN0VrRmY5cHFLRWxDdkpnRkRCeE5YSUgrK1lSQnc4OG9oUFFXZmVw?=
 =?utf-8?B?MUxIVGFVbFM1UjhrcWdyaE4yTXdvaTJiOElsK2RZS29uc0ZHY1dzTHgwTDBY?=
 =?utf-8?B?Mnp3ZGF2NkVveFZnelBPdzlwemlmS1JLZDhEdEl5TFFUN2lRWVVDZ2RiSnN0?=
 =?utf-8?B?aWJ1ZkwrZmdKNEhGcjQ3aXpGRElJSHVxdXg2VFhzam9KVmlLdnN6MWRpQTVT?=
 =?utf-8?B?U1RZZm11WUFZcVNjdkthWDdUUmFLTzRQUHdRN3haL2tZSEx6KzZDeDZabnFq?=
 =?utf-8?Q?ht6bD9nR5iKIRvs55r?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae5e3c5d-b97e-4639-3b80-08de9acdfd3c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 09:04:24.2402
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LpOeloLWOH9ZtK118Zbx1fuVTowd0IPW3M9EZFyuOFZmrDAlyso7nesLhd8MVZtV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6009
X-Spamd-Bar: -----
Message-ID-Hash: 3BR3IXBVQO4GWKMZ57WGDBZTRVEEKRFR
X-Message-ID-Hash: 3BR3IXBVQO4GWKMZ57WGDBZTRVEEKRFR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3BR3IXBVQO4GWKMZ57WGDBZTRVEEKRFR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.993];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: BBBE04024BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xNS8yNiAxMDozMywgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiBPbiAxNS8wNC8y
MDI2IDA5OjEzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gNC8xNS8yNiAwOTo1OCwg
VHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pj4NCj4+PiBPbiAxNC8wNC8yMDI2IDE5OjMwLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiBPbiA0LzE0LzI2IDE3OjQ5LCBUdnJ0a28gVXJzdWxp
biB3cm90ZToNCj4+Pj4+IFRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZCwgdHJhY2VfZG1hX2ZlbmNl
X3dhaXRfZW5kIGFuZA0KPj4+Pj4gdHJhY2VfZG1hX2ZlbmNlX2Rlc3Ryb3kgY2FuIGFsbCBjdXJy
ZW50bHkgZGVyZWZlcmVuY2UgYSBudWxsIGZlbmNlLT5vcHMNCj4+Pj4+IHBvaW50ZXIgYWZ0ZXIg
aXQgaGFzIGJlZW4gcmVzZXQgb24gZmVuY2Ugc2lnbmFsbGluZy4NCj4+Pj4+DQo+Pj4+PiBMZXRz
IHVzZSB0aGUgc2FmZSBzdHJpbmcgZ2V0dGVycyBmb3IgbW9zdCB0cmFjZXBvaW50cyB0byBhdm9p
ZCB0aGlzIGNsYXNzDQo+Pj4+PiBvZiBhIHByb2JsZW0sIHdoaWxlIGZvciB0aGUgc2lnbmFsIHRy
YWNlcG9pbnQgd2UgbW92ZSBpdCB0byBiZWZvcmUgb3BzIGFyZQ0KPj4+Pj4gY2xlYXJlZCB0byBh
dm9pZCBsb3NpbmcgdGhlIGRyaXZlciBhbmQgdGltZWxpbmUgbmFtZSBpbmZvcm1hdGlvbi4gQXBh
cnQNCj4+Pj4+IGZyb20gbW92aW5nIGl0IHdlIGFsc28gbmVlZCB0byBhZGQgYSBuZXcgdHJhY2Vw
b2ludCBjbGFzcyB0byBieXBhc3MgdGhlDQo+Pj4+PiBzYWZlIG5hbWUgZ2V0dGVycyBzaW5jZSB0
aGUgc2lnbmFsZWQgYml0IGlzIGFscmVhZHkgc2V0Lg0KPj4+Pj4NCj4+Pj4+IEZvciBkbWFfZmVu
Y2VfaW5pdCB3ZSBhbHNvIG5lZWQgdG8gdXNlIHRoZSBuZXcgdHJhY2Vwb2ludCBjbGFzcyBzaW5j
ZSB0aGUNCj4+Pj4+IHJjdSByZWFkIGxvY2sgaXMgbm90IGhlbGQgdGhlcmUsIGFuZCB3ZSBjYW4g
ZG8gdGhlIHNhbWUgZm9yIHRoZSBlbmFibGUNCj4+Pj4+IHNpZ25hbGluZyBzaW5jZSB0aGVyZSB3
ZSBhcmUgY2VydGFpbiB0aGUgZmVuY2UgY2Fubm90IGJlIHNpZ25hbGVkIHdoaWxlDQo+Pj4+PiB3
ZSBhcmUgaG9sZGluZyB0aGUgbG9jayBhbmQgaGF2ZSBldmVuIHZhbGlkYXRlZCB0aGUgZmVuY2Ut
Pm9wcy4NCj4+Pj4+DQo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4+Pj4+IEZpeGVzOiA1NDFjOGYyNDY4YjkgKCJkbWEtYnVm
OiBkZXRhY2ggZmVuY2Ugb3BzIG9uIHNpZ25hbCB2MyIpDQo+Pj4+PiBDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+Pj4gQ2M6IFBoaWxpcHAgU3Rhbm5l
ciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+Pj4+PiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5i
cmV6aWxsb25AY29sbGFib3JhLmNvbT4NCj4+Pj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5l
bC5vcmcNCj4+Pj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4+Pj4+IC0t
LQ0KPj4+Pj4gwqDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmPCoMKgwqDCoMKgIHzCoCAz
ICsrLQ0KPj4+Pj4gwqDCoCBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCB8IDMzICsr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tDQo+Pj4+PiDCoMKgIDIgZmlsZXMgY2hhbmdl
ZCwgMzEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4+Pj4+DQo+Pj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jDQo+Pj4+PiBpbmRleCBhMmFhODJmNGVlZGQuLmIzYmZhNjk0M2E4ZSAxMDA2NDQNCj4+
Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+Pj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4+PiBAQCAtMzYzLDYgKzM2Myw4IEBAIHZvaWQgZG1h
X2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0K
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZm
ZW5jZS0+ZmxhZ3MpKSkNCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4+Pj4+
IMKgwqAgK8KgwqDCoCB0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KPj4+Pj4gKw0K
Pj4+Pj4gwqDCoMKgwqDCoMKgIC8qDQo+Pj4+PiDCoMKgwqDCoMKgwqDCoCAqIFdoZW4gbmVpdGhl
ciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVyYXRpb24gaXMgc3BlY2lmaWVkIHNldCB0aGUgb3Bz
DQo+Pj4+PiDCoMKgwqDCoMKgwqDCoCAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVu
Y2Ugc3RydWN0dXJlIHRvIGJlY29tZSBpbmRlcGVuZGVudA0KPj4+Pj4gQEAgLTM3Nyw3ICszNzks
NiBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwNCj4+Pj4+IMKgwqAgwqDCoMKgwqDCoCBmZW5jZS0+dGltZXN0YW1wID0gdGlt
ZXN0YW1wOw0KPj4+Pj4gwqDCoMKgwqDCoMKgIHNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVElNRVNU
QU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7DQo+Pj4+PiAtwqDCoMKgIHRyYWNlX2RtYV9mZW5jZV9z
aWduYWxlZChmZW5jZSk7DQo+Pj4+DQo+Pj4+IEkgdGhpbmsgdGhpcyBwYXJ0IGhlcmUgc2hvdWxk
IGJlIGEgc2VwYXJhdGUgcGF0Y2guDQo+Pj4NCj4+PiBJIGhhZCB0aGF0IGluIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDMzMDEzMzYyMy4xNzcwNC0xLXR2cnRrby51cnN1
bGluQGlnYWxpYS5jb20vIGJ1dCB0aGUgZGlzY3Vzc2lvbiBmaXp6bGVkIG91dCBiZWZvcmUgYW4g
cmIuDQo+Pj4NCj4+Pj4NCj4+Pj4+IMKgwqAgwqDCoMKgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUoY3VyLCB0bXAsICZjYl9saXN0LCBub2RlKSB7DQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBJTklUX0xJU1RfSEVBRCgmY3VyLT5ub2RlKTsNCj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCBiL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9m
ZW5jZS5oDQo+Pj4+PiBpbmRleCAzYWJiYTQ1YzA2MDEuLjllMGNiOWNlMjM4OCAxMDA2NDQNCj4+
Pj4+IC0tLSBhL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQo+Pj4+PiArKysgYi9p
bmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KPj4+Pj4gQEAgLTksMTIgKzksMzcgQEAN
Cj4+Pj4+IMKgwqAgwqAgc3RydWN0IGRtYV9mZW5jZTsNCj4+Pj4+IMKgwqAgK0RFQ0xBUkVfRVZF
TlRfQ0xBU1MoZG1hX2ZlbmNlLA0KPj4+Pj4gKw0KPj4+Pj4gK8KgwqDCoCBUUF9QUk9UTyhzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQo+Pj4+PiArDQo+Pj4+PiArwqDCoMKgIFRQX0FSR1MoZmVu
Y2UpLA0KPj4+Pj4gKw0KPj4+Pj4gK8KgwqDCoCBUUF9TVFJVQ1RfX2VudHJ5KA0KPj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIF9fc3RyaW5nKGRyaXZlciwgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNl
KSkNCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBfX3N0cmluZyh0aW1lbGluZSwgZG1hX2ZlbmNlX3Rp
bWVsaW5lX25hbWUoZmVuY2UpKQ0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIF9fZmllbGQodW5zaWdu
ZWQgaW50LCBjb250ZXh0KQ0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIF9fZmllbGQodW5zaWduZWQg
aW50LCBzZXFubykNCj4+Pj4+ICvCoMKgwqAgKSwNCj4+Pj4+ICsNCj4+Pj4+ICvCoMKgwqAgVFBf
ZmFzdF9hc3NpZ24oDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgX19hc3NpZ25fc3RyKGRyaXZlcik7
DQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgX19hc3NpZ25fc3RyKHRpbWVsaW5lKTsNCj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBfX2VudHJ5LT5jb250ZXh0ID0gZmVuY2UtPmNvbnRleHQ7DQo+Pj4+PiAr
wqDCoMKgwqDCoMKgwqAgX19lbnRyeS0+c2Vxbm8gPSBmZW5jZS0+c2Vxbm87DQo+Pj4+PiArwqDC
oMKgICksDQo+Pj4+PiArDQo+Pj4+PiArwqDCoMKgIFRQX3ByaW50aygiZHJpdmVyPSVzIHRpbWVs
aW5lPSVzIGNvbnRleHQ9JXUgc2Vxbm89JXUiLA0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBf
X2dldF9zdHIoZHJpdmVyKSwgX19nZXRfc3RyKHRpbWVsaW5lKSwgX19lbnRyeS0+Y29udGV4dCwN
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgX19lbnRyeS0+c2Vxbm8pDQo+Pj4+PiArKTsNCj4+
Pj4+ICsNCj4+Pj4NCj4+Pj4gTWhtLCBJJ20gc3Ryb25nbHkgaW4gZmF2b3IgdG8ganVzdCB1c2Ug
dGhpcyBhcHByb2FjaCBmb3IgYWxsIHRyYWNlIHBvaW50cy4NCj4+Pj4NCj4+Pj4gVGhlIG1pbmlt
YWwgZXh0cmEgb3ZlcmhlYWQgc2hvdWxkbid0IHJlYWxseSBtYXR0ZXIgYXQgYWxsLg0KPj4+DQo+
Pj4gWWVhaCwgSSBhbSBhIGJpdCBvbiB0aGUgZmVuY2UuIEl0IHdvdWxkIHJlcXVpcmVkIGEgYml0
IG9mIGFuIHVnbHkgcmN1X3JlYWRfbG9jayBhcm91bmQgdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbF9p
bml0DQo+Pg0KPj4gSSB0aGluayBhcyBsb25nIGFzIHdlIG9ubHkgZ3JhYiB0aGUgUkNVIHJlYWQg
c2lkZSBsb2NrIHdoZW4gdGhlIHRyYWNlcG9pbnQgaXMgYWN0dWFsbHkgZW5hYmxlZCB0aGVuIHRo
YXQgc2hvdWxkbid0IG1hdHRlci4NCj4+DQo+PiBJIGRvIHJlbWVtYmVyIHBhdGNoZXMgZmx5aW5n
IGJ5IHdoaWNoIG9wdGltaXplZCB0aGlzIHVzZSBjYXNlIGZvciB0aGUgd2hvbGUgdHJhY2Ugc3Vi
c3lzdGVtIGJ1dCBkaWRuJ3QgdG9vayBhIGNsb3NlciBsb29rIGhvdyB0byBkbyB0aGF0IG5vdy4N
Cj4+DQo+Pj4gYW5kIHRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZCB3b3VsZCBsb3NlIHRoZSBkcml2
ZXIvdGltZWxpbmUgaW5mbyBfdW5sZXNzXyBuYW1lIGhlbHBlcnMgd291bGQgYWxzbyBiZSBjaGFu
Z2VkIHRvIGxvb2sgYXQgZmVuY2UtPm9wcyBpbnN0ZWFkIG9mICJpcyBzaWduYWxlZCIuIFRob3Nl
IGhhdmUgbm8gbWVtb3J5IGJhcnJpZXJzIHNvIG5vdCBzdXJlIEkgd2FudCB0byB0aGluayBhYm91
dCByYWN5bmVzcyBhbmQgaG93IHRvIHNvbHZlIGl0Lg0KPj4NCj4+IE1obSwgdGhhdCBpcyBhIGJp
dCBtb3JlIHByb2JsZW1hdGljLg0KPj4NCj4+IG9wcyBpcyBvbmx5IHNldCB0byBOVUxMIHdoZW4g
bmVpdGhlciBmcmVlIG5vciB3YWl0IGlzIHNwZWNpZmllZCwgc28gY2hlY2tpbmcgaXMgc2lnbmFs
ZWQgaXMgc3RpbGwgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGZvciBkcml2ZXJzIHdoaWNoIHVzZXMg
dGhvc2UgY2FsbGJhY2tzIGJ1dCBzdGlsbCB3YW50IHRvIGhhdmUgdGhlIFJDVSBwcm90ZWN0aW9u
IG9mIHRoZSByZXR1cm5lZCBzdHJpbmdzLg0KPiANCj4gSG0geWVzLCB0aGF0IHRvby4NCj4gDQo+
IA0KPj4gT2ssIGZlZWwgZnJlZSB0byBnbyBhaGVhZCB3aXRoIHRoaXMgYXBwcm9hY2ggZm9yIG5v
dyBidXQgcGxlYXNlIGFkZCBhIC8qIFRPRE86IGNsZWFuIHRoYXQgdXAgd2hlbiBtb3N0IGRyaXZl
cnMgc3dpdGNoZWQgdG8gaW5kZXBlbmRlbnQgZmVuY2VzICovLg0KPiANCj4gVGhhbmsgeW91LCBJ
J3ZlIHNlbnQgYW4gdXBkYXRlZCB2ZXJzaW9uIHdpdGggYSBjb21tZW50IHRvIHRoaXMgZWZmZWN0
IHBsYWNlZCB0byB0aGUgZXZlbnQgY2xhc3MgZGVmaW5pdGlvbi4gSSBwdXQgeW91ciByLWIgc28g
cGxlYXNlIGRvdWJsZSBjaGVjayBpZiB5b3UgYXJlIGhhcHB5IHdpdGggdGhhdCB2ZXJzaW9uLg0K
DQpZZWFoIHdvcmtzIGZvciBtZSwgZmVlbCBmcmVlIHRvIHB1c2ggdG8gZHJtLW1pc2MtbmV4dC4N
Cg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtvDQo+
Pj4+PiDCoMKgIC8qDQo+Pj4+PiDCoMKgwqAgKiBTYWZlIG9ubHkgZm9yIGNhbGwgc2l0ZXMgd2hp
Y2ggYXJlIGd1YXJhbnRlZWQgdG8gbm90IHJhY2Ugd2l0aCBmZW5jZQ0KPj4+Pj4gwqDCoMKgICog
c2lnbmFsaW5nLGhvbGRpbmcgdGhlIGZlbmNlLT5sb2NrIGFuZCBoYXZpbmcgY2hlY2tlZCBmb3Ig
bm90IHNpZ25hbGVkLCBvciB0aGUNCj4+Pj4+IMKgwqDCoCAqIHNpZ25hbGluZyBwYXRoIGl0c2Vs
Zi4NCj4+Pj4+IMKgwqDCoCAqLw0KPj4+Pj4gLURFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNl
LA0KPj4+Pj4gK0RFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNlX29wcywNCj4+Pj4+IMKgwqAg
wqDCoMKgwqDCoCBUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQo+Pj4+PiDCoMKg
IEBAIC00Niw3ICs3MSw3IEBAIERFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9lbWl0
LA0KPj4+Pj4gwqDCoMKgwqDCoMKgIFRQX0FSR1MoZmVuY2UpDQo+Pj4+PiDCoMKgICk7DQo+Pj4+
PiDCoMKgIC1ERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfaW5pdCwNCj4+Pj4+ICtE
RUZJTkVfRVZFTlQoZG1hX2ZlbmNlX29wcywgZG1hX2ZlbmNlX2luaXQsDQo+Pj4+PiDCoMKgIMKg
wqDCoMKgwqAgVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPj4+Pj4gwqDCoCBA
QCAtNjAsMTQgKzg1LDE0IEBAIERFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9kZXN0
cm95LA0KPj4+Pj4gwqDCoMKgwqDCoMKgIFRQX0FSR1MoZmVuY2UpDQo+Pj4+PiDCoMKgICk7DQo+
Pj4+PiDCoMKgIC1ERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfZW5hYmxlX3NpZ25h
bCwNCj4+Pj4+ICtERUZJTkVfRVZFTlQoZG1hX2ZlbmNlX29wcywgZG1hX2ZlbmNlX2VuYWJsZV9z
aWduYWwsDQo+Pj4+PiDCoMKgIMKgwqDCoMKgwqAgVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpLA0KPj4+Pj4gwqDCoCDCoMKgwqDCoMKgIFRQX0FSR1MoZmVuY2UpDQo+Pj4+PiDCoMKg
ICk7DQo+Pj4+PiDCoMKgIC1ERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2Vfc2lnbmFs
ZWQsDQo+Pj4+PiArREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMsIGRtYV9mZW5jZV9zaWduYWxl
ZCwNCj4+Pj4+IMKgwqAgwqDCoMKgwqDCoCBUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSksDQo+Pj4+PiDCoMKgIA0KPj4+Pg0KPj4+DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
