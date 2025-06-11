Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F4CAD53AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jun 2025 13:20:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1498446AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Jun 2025 11:20:03 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2075.outbound.protection.outlook.com [40.107.236.75])
	by lists.linaro.org (Postfix) with ESMTPS id 217AB410A9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Jun 2025 11:19:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=YvXzubxf;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.75 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lmn151E2Lwluh6100Fcvs83imdmZWIFoZtIbiJNGEvCsIzGUQLDKepZvWOGcbxY73WFrV/BEotDovaJFYqYwOcTXw824PfL59V+Dwb0joAxmlJPsH52iOn1p7I7j+mANp2mEETDocxFp+RyAbSCMMyT4VPBvbPdMdfwQ+qarTX+S/oVpeNazeqnccwdQ3pzFlguYCIBVP/bCd6C/5YC1HBT809XQqIezyUFOaSCyEKghX+elcv8JYaNKwZiHiSNyPXaVMuUoZtHjXW93t4rxSnggoynDVUGB9h/dnkvcCtv+L6Yai6mvSIRlM6ln3h2u1wQBp4x4Q9L8E8y07oIX4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZFUedRIyTt2O4SD8rVHjFJlSmhpBCwzRP9uYCBd3kw=;
 b=g08OMl3RuzRKQtjkMo3npv0i/0oEiHLxNFgEu9DL1mVXAgYjr0PKZ1rwDSesqTt+2WKWit3SNqNp6vDakpHWeLsyWHe0tRr+km257jP24XzyMeY//P8E5O/xmR5K2hdqI1blJHG5uQKOxiKhBm1/797HRGChPQotgiP/B2SUXtY272H9j57yZKEp8mfQwfPWnhyhFkRX59xltAe4HCLBiBoTOJGXgjOQbpiBIXO5Sz5vop1VkpZf0hkXFvI8u73E64VzcCRJ+AuvqLIeL+n65iRxD3aEkSempSmISSud/VoVxQ4Fn55A/coSuDXgt29DZ73nubm80wwe+MbQfHWMjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZFUedRIyTt2O4SD8rVHjFJlSmhpBCwzRP9uYCBd3kw=;
 b=YvXzubxfPBzBzqRKZVrUzXKFXdWAQatk2FFraaKyQL5i4UH2HmWv54VebpUBXHPmKRwu8C4jeZDJf4XOdTAAEtlazq77kjp1qL++XWzii7bY8kdCnbdp9aP6wRyYrKd/bGKBi4/InjySb6IOT8f74vuxqqZV9v/ec0jMwI7Fn/g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV3PR12MB9332.namprd12.prod.outlook.com (2603:10b6:408:20f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.35; Wed, 11 Jun
 2025 11:19:49 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Wed, 11 Jun 2025
 11:19:48 +0000
Message-ID: <72d0a2fc-7387-4447-b556-5fb77fb34e79@amd.com>
Date: Wed, 11 Jun 2025 13:19:42 +0200
User-Agent: Mozilla Thunderbird
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
References: <20250507160913.2084079-1-m.szyprowski@samsung.com>
 <CGME20250507160922eucas1p11bd044bb458626dc0004bd2fd83605c0@eucas1p1.samsung.com>
 <20250507160913.2084079-3-m.szyprowski@samsung.com>
 <7a6475cb-4ebe-46a3-92a2-f29fbc8e5e41@amd.com>
 <c90bf515-9050-4ed7-b733-28b14536b913@samsung.com>
 <3d65e71e-5847-4c0f-98ff-318086f14ee2@samsung.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3d65e71e-5847-4c0f-98ff-318086f14ee2@samsung.com>
X-ClientProxiedBy: MN2PR08CA0008.namprd08.prod.outlook.com
 (2603:10b6:208:239::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV3PR12MB9332:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c67e6f2-55af-4fb8-3c6d-08dda8d9e097
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?S05aOFVHOWp1bjVDWDJzUWpJMVpFMk9RdW5nNGh2QjZ2MHZCVlIxTzUyeGZD?=
 =?utf-8?B?djlYUEljenNIUUsvQTFIdXR2dktWV2JBSlluZEdlUHZXT2VoS04zY2xnbWJ1?=
 =?utf-8?B?NGFQQ1JzZHlvQUhkSEhPUHpQb2hWQjU2MzdEVEFhVTRZZXJ0VEpjSFdyMFJC?=
 =?utf-8?B?VjdqN0pnbHdNbThwNjIrL21YNVFKKzBlWE92NlRRQzl2dzR4V0pwVHBaa0pu?=
 =?utf-8?B?MXNML3pCblRIc1ZqT3FYRUxadGJyWjZrNFhOcHBUTTlIeHc4aVVOaDNKMmZ2?=
 =?utf-8?B?Q1pLRnNVa3pJRHR4clg5c0M5cUM3TGxtUnRYR3p0ckI2c1hrWFdkZEJDYlpR?=
 =?utf-8?B?a2Y5SGRVdVNGY0xTTi9YeWIzd2tpbDJYbnhLQlIrYzV2TUxaeTk2WmJrM3R6?=
 =?utf-8?B?anYwRFkvQzRNVyt2N1RYZnJ0WUxlbTNDY3c0RzluWHgrLzErd2hVejl5VUNE?=
 =?utf-8?B?WlJabDFxRE04eDhtTFpPRnRoTU9Lanl1ZWpzSmtyS2ZSRk5TK3oxd0VFR0Rk?=
 =?utf-8?B?MHJQVGVoQ3F5LzZTdnFQWThBZnRzSXhOT3RhbGpLZ2FxcldqZnR5RStGdGZ4?=
 =?utf-8?B?OU1kcXdjUnRkWVBJdSsrcEkwTHZUOGU5MFJtaEVKTGFDd2lhdW1uV0xUN09t?=
 =?utf-8?B?ZDdRbVBzeVdxdDBaYVZ6NzRNZXQ4RkM5RkRwcGNyaUtwa3E4U3dIaHpLZ1R2?=
 =?utf-8?B?UnlUeHZaeC9IMGJlSWplN3lTRkxmRUlVNWdMc2VJeFBTc2l2VGd4MTZxbHhS?=
 =?utf-8?B?azhjR0tCWnNjRzZITmpOYUxwZG0rWkFvL2sreW9SRVdpTnBpQnErTzFPeWF1?=
 =?utf-8?B?UitMQTJBSW1rY2t1Y2NRcXNHWXFZdFgyaG9RTmdoSzBCYlgvcWY4Z3FJNndp?=
 =?utf-8?B?Nk8xejVEWEE5R1MxcWR1eS81UWZ5OWJPVUk4cEhKdzMxRTdudmthOEpQWXJ5?=
 =?utf-8?B?SmR6U1NoeEdPekRXWXFjVG1ZYkRVMGQ2NXRMODlTbTUxdHMySG1OOGhPUlRU?=
 =?utf-8?B?emxYcXhCK0lCTVZWaTVVWm1wY2xvK1dVTXdNbjBJK2R6ejhNNkY0bEtxNWFL?=
 =?utf-8?B?YzdvZlZYdzNrWW5rTG00T3lPbDNONnlJenNPZkJHODAvQm4rNHF1RzJKRmJ4?=
 =?utf-8?B?WjFOVVdneWNqSW9FdUswc2RPSVNIbXMxem82SnpZcVgzNjUzbG15SXdsYnRx?=
 =?utf-8?B?aVc4MnVLR1NyUEtkMGxIOE1NRkU4akJXS0luajMxNUhvUXhlSDNzank3bHFn?=
 =?utf-8?B?YVJxVzYxdXFCTlNTSjBFaVV3Nk9PV1ZhZzBwVXcraS9PME40bXBoT1VXWEpE?=
 =?utf-8?B?RzBFVWdzY3lsYkhKdHNwdDA1NnE2S001OXZ6d1N3bmk4azAzYmFKc2llTUg5?=
 =?utf-8?B?aUtLOFdwdHZkeWFLbnJ3TjJ5dEt5SnNXSzlmMDhHYWMyR2RrTUZybUtyYkF3?=
 =?utf-8?B?TGJhUERRcGx4RjhHbHdsdWhFWTV4S3NlRzBBbnZZS2lJNlA3NnhEZEVUc2dn?=
 =?utf-8?B?Z0ZWV0JnRXBGNkY4NGUzZXA1OUtkNVErU216MXNZcmV0UE9Pc0lyMHpBbDdT?=
 =?utf-8?B?MG05WUtramxYYzBFTStOY1JKSGhadVNUYjZFNHVUZ0dBUzV2YkpWVVBUOGVS?=
 =?utf-8?B?VWZyR1ZBUWNYbndRcXR0R24wUFhQUVNaNGxvVXRQZWp5dkltM1hOaEY3SUVR?=
 =?utf-8?B?TEMvZXJzdGVGZUMrcm1MUG12dHh5cTdYSTNWWWNET2tHZGtQWEhSUjlVUmtY?=
 =?utf-8?B?OXIvV3pTTjJ1bkpFTUxNbnJSeWtkSGhiY2JMWHRwSFRHVnQwV3lwRGRaYUVT?=
 =?utf-8?B?UXdTM1Y5dXBEaG1tcUZrNEgzbys2aStOZ3pXNmNpdXJXb1lXVmo5V3JRUHZP?=
 =?utf-8?B?VWxOMmFscWNPNjQyTU1ETXlhQVlPUG5ONXNodHQyenFtcUJrZ1lzMUdleGZU?=
 =?utf-8?Q?z3KGuKSchHM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dW1qRlRrd2JsdnI1MjRKQ1dVajFGeWo3cjBnQ1RXV01SNXNYNy9NbXFscWZD?=
 =?utf-8?B?R0tJUVYrK3FVcDdBUWRFd2JwQUp6b1dMSHQ4SHV1RFdQNVJiL3g2OWQvOThX?=
 =?utf-8?B?NytQV1J0S2RUOXhUUFNGVkp3c0V2aXFsWnJ3UXFtWXA0S09JSWp2cTE3bW5H?=
 =?utf-8?B?TmRVRXNzNlBFWmJnUGVqckhKTkppaUROd01uOE5CMUN5NzlQWGRtVHNaVnE5?=
 =?utf-8?B?M2Ivc0lCbG9HK01TS1JyN05ibUgybXRkdEFMZjNUcTFMR2VaK2kzemhmM2hS?=
 =?utf-8?B?Vkh4OEZDZHAyU1RranBYRGxDUVlvSkdTcjZhQjVBbVM1UTZaamRYYXk2TjFB?=
 =?utf-8?B?dTZiZ0NlUEVTTmxZQ2U5UldkTHh6OVNLWHNqNVoyenF6TjdTVEIxMEIzbzhr?=
 =?utf-8?B?dytNR3hLcFo2OXRUNE9BeW1HbUFNY1MwR0xUS0RQMm1naGdlOWNCU3ozeFdH?=
 =?utf-8?B?QnFsanVPOFFpTVZLVUJLcHU3NFREMTgzeHhSbXg1c3htQVVrcFJtOE9KbkFy?=
 =?utf-8?B?Vmg0Q290NkNtdi9hS25CTlpoOEVkZnYwT05zNTAyUDV5RHdhb010ZHJoeWlN?=
 =?utf-8?B?aTdaN0FmNWk2dm5TaXRYSmF0Q3NVWG9RNUpoMm9yOXJINTBDQi9wMjNkTDN4?=
 =?utf-8?B?VUtUMHdmMnB4eHllR0JQaXEzK0QyQjI3NEh6SXFzaDJDOHF1Vy9XSTNPN3Jy?=
 =?utf-8?B?Y3JuNmJ4aEdQRWJkWWJzRjIxaFhuSEIyblpEL21NMkRaVEtjVXJHaWhQb1V4?=
 =?utf-8?B?OFMvVHlmdmEyZWQ0WHB3NzJMSkJRdlZMdk5WbWsza1VmRW5xYkZZMkRuUGhW?=
 =?utf-8?B?NWxPMVVzYXZ1cGNXR2xjd1ByWnhxcmowdnpTdmIrcTdIUWlCS2hsSUxrelcz?=
 =?utf-8?B?VG5WdzhObFp5emU3NEVSbjNSL3pEVVZTbGRMQTN4b25FU05VNWwwbFVzTGt2?=
 =?utf-8?B?ZTNFcUc0QXR0bE5LMFNYYjhubDV0RThobXVJNTZ0enlsdXdjbk5ZcVFhSDhQ?=
 =?utf-8?B?RlVVR3lOQ1VNWmVGQkhrZG1OaHR3V1daSXFJZjN0TmF4VXlmcnFraEZXbk5u?=
 =?utf-8?B?WFlySit5a2VReWE2VlZaWlRaN2laUW9vODlhN0NZUDRlbmh4ZW4wU0tIbHFW?=
 =?utf-8?B?dXlBWlVvek9KV2NmZDBGbFpKT2phWDZrVG1IVUxOWEhGK0YvTnRPUHJ3SFhP?=
 =?utf-8?B?eFRBM1JjWWFWY0NKZkhJRFZoUERyOGgxT2JRaSsrRkwwSWFvVlpidGk3cnhk?=
 =?utf-8?B?SU9oVGtNWHgvOEN3ekd0LzVTekE2amVXQmhDeDEyMVNJc2d2RDJuUkxBMFhj?=
 =?utf-8?B?enFUcG8xQmZmdUlRU2plUVQ0Zm1odXhEQk9naEdwNmhoeUhhWXJ5c1BWR1c5?=
 =?utf-8?B?SUUrVThER0VzQnN2YUZUWG4vWjhuemV0aU1CdkhuR3k1S1VjdG5nRlJhTUla?=
 =?utf-8?B?ZnorR2h1MEo1Z0NtaDhXc3k5VFVzYUp5R295ZC9YWjMyaXlUcmNKMmlJUDBs?=
 =?utf-8?B?VGVLOWlIZVVOcHhpdTNMY0ZEY01CK21NY0x3b2FObzI5T0tIZ1dKZkF5MnJU?=
 =?utf-8?B?WGUraGxQejgrWFhtdnp2RTdaQUxyM2lPZHdwRmlsU2xFNDQ1NmFEbW5HdzdC?=
 =?utf-8?B?V08zbEVnN0V1dGhVYWNVR2NiQ2ZtN1IwZ014MEMzdHladWNhRFB2SGpiL29h?=
 =?utf-8?B?UTZxZG9ncG1PSXNZNkVSWXU0d2ltZHF3ajBSU3N5dUQ3Nm9yaWtpaWZvNVEy?=
 =?utf-8?B?ZUI2TmdXQ2d2TmJ5TTlNa1NJS1VtWFpZa3p1MmJRUkFvUG10K1BXR3RURHZy?=
 =?utf-8?B?N0RHbkVBWmY4UGlFOWN3SEVtY3Z0dmlNUUUvc0pMSERFbHB6eXA1S2p4Yms2?=
 =?utf-8?B?QloyZEpHKytTWVo2RGFWS3N3cDE5bnY5L3EzWENiWmhyZmZRbCtlME1iNUhS?=
 =?utf-8?B?NUs1KzRvbjhZSi9OeVFSQ0FqZUNuS1Bjb3lCT3pYbWF6VkVwR0tIUWZibkpV?=
 =?utf-8?B?YkZZYVpmT1NvVVp6VW5VVjI1cVpPWVpRZytWMWowN0cxSTRyc21KM1htUXVZ?=
 =?utf-8?B?Sk5lNDdRdXQveVQ2SVRlZ2xlc3QyVW1yTER4RWpCUktiMHJJSlBEYnhRNmU3?=
 =?utf-8?Q?DZy+CXqo6kvIKE5arz9OaEwkB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c67e6f2-55af-4fb8-3c6d-08dda8d9e097
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2025 11:19:48.8673
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3H1puPoU91zftYCg/EKBdHuE0ihyfRoHyL4hoOIKjWJWhoDOWLDjhbCyiQbakrs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR12MB9332
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.75:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.236.75:from,2603:10b6:510:13c::22:received];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 217AB410A9
X-Spamd-Bar: --------
Message-ID-Hash: BYCZ6HFN4J5PA6E4U3BKY6YAC336CKM3
X-Message-ID-Hash: BYCZ6HFN4J5PA6E4U3BKY6YAC336CKM3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gurchetan Singh <gurchetansingh@chromium.org>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/3] udmabuf: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BYCZ6HFN4J5PA6E4U3BKY6YAC336CKM3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8xMC8yNSAxODozNCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4gT24gMTQuMDUuMjAy
NSAxNTo0NCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToNCj4+IE9uIDA4LjA1LjIwMjUgMTE6NTcs
IENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gT24gNS83LzI1IDE4OjA5LCBNYXJlayBTenlw
cm93c2tpIHdyb3RlOg0KPj4+PiBVc2UgY29tbW9uIHdyYXBwZXJzIG9wZXJhdGluZyBkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIA0KPj4+PiBvYmplY3RzIHRvDQo+Pj4+IGZpeCBpbmNv
cnJlY3QgdXNlIG9mIHNjYXR0ZXJsaXN0cyBzeW5jIGNhbGxzLiBkbWFfc3luY19zZ19mb3JfKigp
DQo+Pj4+IGZ1bmN0aW9ucyBoYXZlIHRvIGJlIGNhbGxlZCB3aXRoIHRoZSBudW1iZXIgb2YgZWxl
bWVudHMgb3JpZ2luYWxseSANCj4+Pj4gcGFzc2VkDQo+Pj4+IHRvIGRtYV9tYXBfc2dfKigpIGZ1
bmN0aW9uLCBub3QgdGhlIG9uZSByZXR1cm5lZCBpbiBzZ3RhYmxlJ3MgbmVudHMuDQo+Pj4+DQo+
Pj4+IEZpeGVzOiAxZmZlMDk1OTAxMjEgKCJ1ZG1hYnVmOiBmaXggZG1hLWJ1ZiBjcHUgYWNjZXNz
IikNCj4+Pj4gQ0M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4+Pj4gU2lnbmVkLW9mZi1ieTog
TWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPg0KPj4+PiBBY2tlZC1i
eTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPj4+IFJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4N
Cj4+PiBTaG91bGQgSSBwdXNoIHRoaXMgb25lIHRvIGRybS1taXNjLWZpeGVzIGZvciB1cHN0cmVh
bWluZz8NCj4+DQo+PiBZZXMsIHBsZWFzZS4gVGhlIG90aGVyIDIgcGF0Y2hlcyBoYXZlIGJlZW4g
dGFrZW4gYnkgdGhlIG1lZGlhIG1haW50YWluZXJzLg0KPiANCj4gR2VudGxlIHBpbmcNCg0KRG9u
ZS4NCg0KVGhhbmtzIGZvciB0aGUgcmVtaW5kZXIsIHRvdGFsbHkgZm9yZ290dGVuIGFib3V0IHRo
YXQgb25lLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBCZXN0IHJlZ2FyZHMNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
