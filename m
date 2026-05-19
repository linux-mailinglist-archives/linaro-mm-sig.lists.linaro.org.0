Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPEhDNMcDGoYWgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:18:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C17579D6F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:18:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1332740963
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 08:18:25 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012065.outbound.protection.outlook.com [52.101.48.65])
	by lists.linaro.org (Postfix) with ESMTPS id 67A623F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 08:18:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=lNstWQIk;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.48.65 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CMuJLh1Kav/tq8EcRofSd5DBDWg96Tm4b9DnKHbGcUf+nXoO1Bg4ZjalDuT/dcP6R7mxSt0j47CTuOhl4nqTA1CbPsbfuafTCYhG4XoXZCheHRfiQ979+J3W7gjCdyeasVWMo0PKsexM0OIgbdwGtgVC5xkCitDfH9ipXrN6RRdL5rinFkKRKeOYcK3DFazVBbh5KIobsM2iFp5x3+WFSio9l3PTmEeaZMxv3uZNpMbmJg6X+rwLEYFoBVERt0ipumHz+wCJGB1Ap35T33d+H0olpuFDqm2fDGYQJBjLJPtu8NWCRoLlWl66c/6rC9jb9xalxY4wrFg1UqAVIL6TNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gdt2ufe5Nf4Xh1pVLZNJdJbP8FvV0ky+yp6pl2On0Xw=;
 b=eetHJ0UbttrHloj6JFdoLXWiV6wmonKpnNByjUxJKv4k95oagBnCpEy+wS00eYXuaxadSDjLC4pxNFMQS1DDjWC+TIMWINkVQv1thZfbcp24Yn1RNQTTecEUxaqe5suo9+YnmBsPSP0gsi1/q9YR0R9cY8vmDYsz7LgjawKCLFisOgJ1Ey0T9LRa7XMW0YA/+jevyz6IKpyN0EIQkZjvJhtty/AOVfRPbDH+0Wd1ZUJHQoPSRHZplb85pJfZ4EV+1aIT1LeTc8GFS9sDBUjz2weuqCYDNOFvWGwIyaylVXSLRIIiZSizO5Mh1B96Q5sa5E6uP6j/N/mUdHXZGenlzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gdt2ufe5Nf4Xh1pVLZNJdJbP8FvV0ky+yp6pl2On0Xw=;
 b=lNstWQIkh3aRn5maMLmdcxDQDlsvft+98atXjH5f76WkYzRkAIPKcjWp501iUOZ75WeAt2tGAIZYb6xUgqN5LBAaVB5QpmsObqLH11G/W9FiYEKLvkWmMoZ0A64K2rNiXESjLwrC/9snSimRfA5jcWABIFDq6SfZ/Lvi4+s4lq8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BY5PR12MB4195.namprd12.prod.outlook.com (2603:10b6:a03:200::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 08:18:09 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 08:18:09 +0000
Message-ID: <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
Date: Tue, 19 May 2026 10:18:02 +0200
User-Agent: Mozilla Thunderbird
To: Julian Orth <ju.orth@gmail.com>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
 <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
X-ClientProxiedBy: BN9PR03CA0704.namprd03.prod.outlook.com
 (2603:10b6:408:ef::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BY5PR12MB4195:EE_
X-MS-Office365-Filtering-Correlation-Id: 516690f0-9c46-4857-911b-08deb57f294e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003|3023799003|11063799003|4143699003;
X-Microsoft-Antispam-Message-Info: 
	CFPTJzkcLhe7SvmUVZG3AATO29fXnhMroJayWC8s+mOtDeMtBpZingtX3Z7N8GD16qade60lT4TGb/xLnJ9XxgMYEkFmcGK9pD+D8qPEVusIFOKKZWfJHUWvHhALIfjI1Vnym0Kc8p380d4OGKUm0Mm8w2vUIaWJatDFq+CuprqwLX5CNgs/ogwKYhtj+VmgJ0hi+j3GhaxZT1fLspgwRwSUlU1H4DgxlbJqQF5JGzu70VsVhaa4imRMqmS1s0kYz+9VAy4AHkNxrYIPOjddbkBsHWDpDeYi4bxWQVf1ftMuZWyMyAFo0R5rGCITXL7rpJOYnmE7TSaH/hm0crhfnZR4rqc63aX8YfbSE8OJFM9hKwuMRwJD4V3MXN5nd6gF/ULr2uUvtXrBR3+YR9sxGEcAGB1is3U5kQDv3R12aOhIkSPo49LrAfXHPW311CD8mgn1HB6juRQP7KDg26JisVE5z88xrlSRZ7mbPRbMfODOaoS7PQnx8e35zPERh+16Ggi0zemb1FFV8lfth+4Jbgtsw31hwg3sz1Iog694HZ5w5i94UcR6SnIF7FqjSH5hXhNG3anvqlqVltE6LYiJ1WwvfUJEMu27U4N5Gs0gjX0/5ToTAUKBuNnN2AsrMbfd/EPPi107BkTiAYMJOGtyVOze5S/xlkZykuRVTgeg2NN6VWisq0KSXpIncW1HSsARL04Ayt/e5ganhXCrCZc6vw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003)(3023799003)(11063799003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?andXVXp2cFc0WnpCMU00OFdQNC9ldjVMSTF5NVYrN3cyaFAvVVMvZ0dnSjl3?=
 =?utf-8?B?S1hBdnEvRFk5MTBqYWFsd3A1dERUK2ZaeWtJTG5DL0RVWGNMWkVXZXUvcklp?=
 =?utf-8?B?dm5pNTVoTm1URUd5SnFxT3JveHRnSmZ4eEdmTkExMWpBSnJMdjdzaDZoMWVv?=
 =?utf-8?B?Z2JlRDZkMXorM29iUUpiYVFrcHQxeVlpVHRscXdxNHZmbEFFR3lLYTRoaG93?=
 =?utf-8?B?TmlRN3R6ZFJIOUN0cDV0K3FXSkdJTUo2NTU1bnQvd0c5SENsT0RkWTJRcEtK?=
 =?utf-8?B?d01ZYTVNMExmbFhNUVh0RXpVUTZtRkM5R2N2NGZJaGpKWUNrenVnRm5qR1Nh?=
 =?utf-8?B?ak4vV2VKVGtqdCtXTXFFTVM3N2JZVEVzMjdoNGpkcURMZCtzbCtLaitHdmRQ?=
 =?utf-8?B?KzR5L2dtYnVrYy9lQjllS2R4aE02L3R6VklHWjE3dVNnQldDM21xRDRXYVJ2?=
 =?utf-8?B?NnEzZFZBcFpSVEk0RmY5OXJiNVd3WER0M1VETWljSkU2QXVQTmZoVk9aOGFS?=
 =?utf-8?B?NitHT3poSHNZRCtlVzB0TXlJTnVHdjQrRnA2aGhrQkdBc2s4d1c3NTB5bDcv?=
 =?utf-8?B?alhjQWZZem5qOHpyUFFmcFdLbTJPdStDZGZPQmlkWHlML1d3SEFReTRnS1pl?=
 =?utf-8?B?YTlMcDgrOXJjQlBsU3JzVzdiZVh3bHdRK2JZejMzT3dlNk9IQW5BOURoYy96?=
 =?utf-8?B?ZnBKemZ6aTBvOXhTMnVYejhQODZpQUFNM0ptSWE5Q1ZPTFduVTl0S3g3OTR2?=
 =?utf-8?B?MHRtb2ZXTHdWRXRXbzJXdko4TnBxaWtiOHQ5ejRiNnYzSm1GcDlCazdCRVhQ?=
 =?utf-8?B?d3BvK0M3L3lxNkVlMXRjQm13YXVGOTk2UlhSZlo0aXNCeWVKeGxBcTR2cmNy?=
 =?utf-8?B?QVdmc3RiSjFKdWgwS0hNRU9rR2VoSGVWemxYUWlVYVBLM3NQWjNyc0F4STBK?=
 =?utf-8?B?Nk5SSWF4R3NHNEJPcjNqRFVPeVdWT3dnVmhtS3llTTJLNjJwM3VITndoTjJz?=
 =?utf-8?B?WkNBenp4S1BBRU5TS3Y2ekswb0pkeTIvNHRJTks4Q0Z0ZGRmWXNxclZjZXFS?=
 =?utf-8?B?eTFzeHJqcUVXUVpibHB2cUpCMHBnWHcwVEc0dTgvZUtzR0I1bm42UEM0K1lm?=
 =?utf-8?B?c2dvZlp5b05ocm5KL2ZOMnVhbDVFUmZJZjlBTW40Zmp5blN2WFJBejZRNzhn?=
 =?utf-8?B?cGNiMFRheFBZbzJHMlQybFlXM0dUTDdPT2ZyUldoMFByVCszNTNhQmlmTHA1?=
 =?utf-8?B?anN5WTh3dmJveDJkeEJtSm92aE1uMHNWaGRlYUZOS2J6a3RJSW5wUkUyckZX?=
 =?utf-8?B?YjZpNEhPR3hjMUN4NXlFc0hUcEhybGFaaVFvQjJHWXJQNVNkN1VZRmg4SlpS?=
 =?utf-8?B?L04xVlJkSWxDYTFBeEptM0l4K3p3QXlkdU9kbE1MV0ZZU3ZOWndFOHh3bXM2?=
 =?utf-8?B?ZmsxK2NIQUp4dmZsTXU4Zk5jM3V0LytwWjN5VEE4eWhsa2lzbWFoMXZ1QVIv?=
 =?utf-8?B?QXNQRU1vWHl3Z3UxcFdaQXQzQzN3enRrdnlYeEpIanZId0dmRHA2b1BHUEY4?=
 =?utf-8?B?NlE5ZjdlNlNndEppcGR6TDFwU2Z0WGg2S0hhVEllOWx3ajVqYm1MSnNYb2cv?=
 =?utf-8?B?UGhwd3NuVUpLdkhtTkhTUFh0VlVVcjQxTjNDZEJrZGdYTDZFSlM4TEZma2M2?=
 =?utf-8?B?VWhaVWtSbi9IZkpsRU1IbExmR21oamNPYmlyWmthTGlWMjE5dlR4SmdFOHpZ?=
 =?utf-8?B?T3FxTXkrSkxJbXA2SGxmamlEZmtUZkNhQ1JaRjBwU3pyV1BPUExjM1l1RG9D?=
 =?utf-8?B?dzVYeGwzaXJYWmhnL01oSDhXSVZubTRPT0lNSk5jV2xDdUFQcWlaeks1STFN?=
 =?utf-8?B?Y082U004cnB0NWRsQlpvSXBITkJWZ2U4TUFhZ1JUcHJteUpoNVZrcm5VL2xZ?=
 =?utf-8?B?TVBPNE5zSFVqWDAvaG8vWlNreThQZ0E1YlM3eFNpSVNyYWk2Q2kxNWhiUG5u?=
 =?utf-8?B?VXIwMWpwemVGL0M4Tm9hZVlZSTVaaVNzWjhIc2JhbE1NSTNVME1mVk5vNmU4?=
 =?utf-8?B?MzVUMmF0cUErM3JhZ2dUVnEzMU1aOURPa3NMcUlORkxPZzlXaUJKZHpHcXBw?=
 =?utf-8?B?akhLZlFROS9ocVBUem9RVlVrV1Ixd2RidXphVXFJZTlyaHNsbkFIM1VEVzZk?=
 =?utf-8?B?N3dLMnN4WjAvZ2k5aFI4VTdsT1VFdUdZbFhSUWh4VVNHZXgxZ3FkZlliWlFu?=
 =?utf-8?B?YXl3KzZudk9teGdQVUJtNkkyZnhzaFAxYVJTTHplQlVRTnRlWGREZGw2NzY5?=
 =?utf-8?Q?c6wtNeuk9Ae0NQPLP6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 516690f0-9c46-4857-911b-08deb57f294e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 08:18:09.3016
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tr7OtFUqQHK8vI/daEkTbxnZS3gxADwqoZAsy1yJIMIY/7X1ipcVIC6XRUbM4oud
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4195
X-Spamd-Bar: /
Message-ID-Hash: DPQ5KYADMGSDESNO4SM7ZFXXSMVZ3T2N
X-Message-ID-Hash: DPQ5KYADMGSDESNO4SM7ZFXXSMVZ3T2N
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DPQ5KYADMGSDESNO4SM7ZFXXSMVZ3T2N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[amd.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 98C17579D6F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOC8yNiAxNDo1OCwgSnVsaWFuIE9ydGggd3JvdGU6DQo+IE9uIE1vbiwgTWF5IDE4LCAy
MDI2IGF0IDI6NDHigK9QTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOg0KLi4uDQo+PiBJdCBjb3VsZCBiZSB0aGF0IHdlIGhhdmUgZXZlbnRmZCBp
bnRlZ3JhdGlvbiBmb3IgdGhhdCBhcyB3ZWxsIG5vdywgYnV0IGluIHRoYXQgY2FzZSB5b3UgY291
bGQgZ2l2ZSB0aGUgY29tcG9zaXRvciBhbiBldmVudGZkIGluc3RlYWQgb2YgYSBkcm1fc3luY29i
aiBmZCBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+IA0KPiBZZXMsIGFsbCBjb21wb3NpdG9ycyB1c2Ug
dGhlIERSTV9JT0NUTF9TWU5DT0JKX0VWRU5URkQgaW9jdGwgdG8gd2FpdA0KPiBhc3luYyBmb3Ig
dGhlIHRpbWVsaW5lIHBvaW50IHRvIG1hdGVyaWFsaXplIGFuZC9vciBiZSBzaWduYWxlZC4gVGhl
DQo+IHdheWxhbmQgcHJvdG9jb2wgd2FzIHRoZSBtb3RpdmF0aW9uIGZvciB0aGF0IGlvY3RsLg0K
PiANCj4+DQo+PiBTbyBhcyBmYXIgYXMgSSBjYW4gc2VlIHVzaW5nIGRybV9zeW5jb2JqIGZvciBz
b2Z0d2FyZSByZW5kZXJpbmcgcmVhbGx5IGRvZXNuJ3QgbWFrZSBzZW5zZSwgZXZlbnRmZCBpcyBh
IG11Y2ggYmV0dGVyIGZpdCBmb3IgdGhhdCB1c2UgY2FzZS4NCj4gDQo+IFVzaW5nIGV2ZW50ZmQg
aGFzIHNvbWUgZGlzYWR2YW50YWdlczoNCj4gDQo+IC0gV2UndmUganVzdCBhZGRlZCBzeW5jb2Jq
IHN1cHBvcnQgdG8gdnVsa2FuOg0KPiBodHRwczovL2dpdGh1Yi5jb20vS2hyb25vc0dyb3VwL1Z1
bGthbi1Eb2NzL2lzc3Vlcy8yNDczI2lzc3VlY29tbWVudC00NDQ2MTE3MjgwLg0KPiBGb3IgZXZl
bnRmZCB3ZSB3b3VsZCBub3Qgb25seSBoYXZlIHRvIGFkZCB5ZXQgYW5vdGhlciBleHRlbnNpb24s
IHRoYXQNCj4gd291bGQgcmVhbGlzdGljYWxseSBvbmx5IGJlIGV4cG9zZWQgYnkgbGx2bXBpcGUs
IGJ1dCBhbHNvIGV2ZXJ5DQo+IGNvbXBvc2l0b3IgYW5kIGV2ZXJ5IGNsaWVudCB3b3VsZCBoYXZl
IHRvIHN1cHBvcnQgYm90aCBleHRlbnNpb25zLg0KPiAtIFNpbWlsYXJseSwgYSBuZXcgd2F5bGFu
ZCBwcm90b2NvbCB3b3VsZCBuZWVkIHRvIGJlIGRlc2lnbmVkIHRvDQo+IHN1cHBvcnQgc3luYyBv
dmVyIGV2ZW50ZmQuDQo+IC0gRXZlbnRmZCBkb2VzIG5vdCBzdXBwb3J0IHRpbWVsaW5lIHNlbWFu
dGljcy4gTWVhbmluZyB0aGF0IHlvdSB3b3VsZA0KPiBoYXZlIHRvIHNlbmQgdHdvIGV2ZW50ZmRz
IG92ZXIgdGhlIHdpcmUgZm9yIGVhY2ggY29tbWl0LCBvbmUgZm9yIHRoZQ0KPiBhY3F1aXJlIHBv
aW50IGFuZCBvbmUgZm9yIHRoZSByZWxlYXNlIHBvaW50LiBXaGVyZWFzIHdpdGggc3luY29iaiB5
b3UNCj4gb25seSBuZWVkIHRvIHNlbmQgdHdvIGludGVnZXJzIHBlciBjb21taXQuDQo+IA0KPiBJ
IGRvbid0IHNlZSB0aGUgYWR2YW50YWdlIHdoZW4gZHJtX3N5bmNvYmogYWxyZWFkeSBkb2VzIGV2
ZXJ5dGhpbmcgd2UgbmVlZC4NCj4gDQo+IFlvdSBzZWVtIHRvIGJlbGlldmUgdGhhdCBjb21wb3Np
dG9ycyB3b3VsZCBub3QgYmUgcmVhZHkgZm9yIHRoaXMgYW5kDQo+IGZyb20gdGhhdCBwZXJzcGVj
dGl2ZSBJIGNhbiB1bmRlcnN0YW5kIHlvdXIgYXBwcmVoZW5zaW9uLiBCdXQgSSBjYW4NCj4gYXNz
dXJlIHlvdSB0aGF0IGNvbXBvc2l0b3JzIGFyZSBhbHJlYWR5IGZ1bGx5IHNldCB1cCB0byBzdXBw
b3J0IGFsbCBvZg0KPiB0aGUgdXNlY2FzZXMgSSd2ZSBkZXNjcmliZWQ6IFRoZSB3YXlsYW5kIHBy
b3RvY29sIHJlcXVpcmVzIHRoZQ0KPiBjb21wb3NpdG9yIHRvIHN1cHBvcnQgd2FpdCBiZWZvcmUg
c2lnbmFsLg0KWWVhaCB0aGF0J3MgbXVjaCBiZXR0ZXIgdGhhbiBJIHRob3VnaHQgaXQgd291bGQg
YmUuDQoNCkFuZCB0aGF0IGV2ZW50ZmRzIGRvbid0IHN1cHBvcnQgdGltZWxpbmUgcG9pbnRzIGlz
IGluZGVlZCBhIHByZXR0eSBnb29kIGFyZ3VtZW50Lg0KDQpCdXQgSSBzdGlsbCBkb24ndCBzZWUg
bXVjaCBqdXN0aWZpY2F0aW9uIGZvciBjcmVhdGluZyBhIC9kZXYvc3luY29iaiBkZXZpY2UsIHRo
aXMgaXMgY2xlYXJseSBzb21ldGhpbmcgRFJNIHNwZWNpZmljLg0KDQpXaGF0IGFib3V0IHVzaW5n
IFZHRU0gZm9yIHRoaXM/DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+Pg0KPj4gUmVn
YXJkcywNCj4+IENocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
