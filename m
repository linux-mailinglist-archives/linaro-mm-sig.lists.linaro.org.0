Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 875BDAB6CD8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 15:35:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AECB45511
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 13:35:50 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2041.outbound.protection.outlook.com [40.107.92.41])
	by lists.linaro.org (Postfix) with ESMTPS id B6A6143F02
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 13:35:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yNr6PyLV;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=onauRlft1Eu1mKRvPBm7S8f3e60sqjwza+Z8J9Rg5MWVBlfaWU2ikeARzOsbPp2iVnvzNsbuBRbAJxokDDGXK9nH1h5wM2xpqs5n+2SS9QidG0mqHf4jX748A3qEEU1jObwAZOFXeWpy0LE3t4SayZJaMBGdMC3UQ6+Npo2BZkRARGQd3JlnWu/9n73yBURoaGw9XmgO+AofBzSjEb8XraYcsMOFeYerjDpVdE58vOV5rvE5zLJzW22sVmhyRfp20lD3C09HFVmq0BtDEwPvty9PHR/c3whAM4liARbiHL/BH6xL1wp6p8f4Hc3G9+1rZYAuMI8+tgjbAPjikywu4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKYpY9BfKt8K8V0rTyHTvPYO/RUz/DBYF06TmCSFpMQ=;
 b=harZFGDjJvmO4UbPgRAEsIpjnSWOjpP7J6odoCUFArfRuuNiX7Yjqd5ybjn6Apest1Fg5QNBEurV/z6LGVrUQPEjpMoWe/wfTkw/jTXLptIqNh/UZGcPXEXYF3MnV+EYtQgxJ6ZfkDG9mKVq7HpAA32ae/XFA08GFQ7niUFH2EDY2ug+2gogbuTvnMohgI6phFTTzBJPus1hMLnOTPHyqHJnFpMnfZuerFsjh3hXVraooVRYeQil4btdNaByWmUQEDuOr8Vt37m8ZuhzcQaQDnuxzVQB+fVz2dljvaGwdgW3ZuNrAtcE+O6Aldb+1/nJKcAMOOZxe1aIM+gqLBNtkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PKYpY9BfKt8K8V0rTyHTvPYO/RUz/DBYF06TmCSFpMQ=;
 b=yNr6PyLVx6FIhQ8bKluWd4xTIqkjZUz9pJUqfbn/j4NXjq0n9k4ELZQHh3anAveiVgLJzT1lHTy69Or6b2kvdAVnFoOY9ub7kdJO04Zgh4PtVu5bsnoYQY4nE+U5/2hz/sXrZ5i6S2Y4IiyUPSoPAUJKmjImBCkYPOp6M6YQyOY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB6580.namprd12.prod.outlook.com (2603:10b6:208:3a0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Wed, 14 May
 2025 13:35:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 13:35:35 +0000
Message-ID: <c2ad5a10-25dd-4441-a239-5fec56cfaf6e@amd.com>
Date: Wed, 14 May 2025 15:35:30 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20250513074513.81727-1-tvrtko.ursulin@igalia.com>
 <20250513074513.81727-6-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250513074513.81727-6-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: BL0PR02CA0034.namprd02.prod.outlook.com
 (2603:10b6:207:3c::47) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB6580:EE_
X-MS-Office365-Filtering-Correlation-Id: 0315a2cd-4c76-4e1a-306c-08dd92ec34e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bGRTRW8zYXZ2bHQyVFozOFFPRnIvNmkzMis0d0lzN2J5UUVVMnF5TjVwb0ZY?=
 =?utf-8?B?c3g2ZmFSakZSM29vZ3pIb2xRWXFzZ3lMaDZQdHBob1R4aUVpNUNjcXM5UzZs?=
 =?utf-8?B?VlhENHR0NFp6OVhHbHhIZ2JLaFpOeUx3Ry9iVXh5ZHFuQStESE1KMkl4cjNG?=
 =?utf-8?B?T3VGaFZIM1EwR0lURkNOZzEwQnJBdHhXYzRLbXV4OHdEZUhlazhmK0xUaW9x?=
 =?utf-8?B?SzNsd0lNU1k0Zy92djFIdFVPaStVa0FTekF5WmNtbTNpNzltTG5JMU5LcjZC?=
 =?utf-8?B?VFdKQWhDOUQwY0FkNmRqYmxCc3AwdEtjZ29URHZ6bXhGbUErUjFsMGNLV0sy?=
 =?utf-8?B?bi9kc2gzTCtVSEl1T2ZmWWY3MGFnMDF1T3BBNVExMm04RFJraXJ6WE81TEJq?=
 =?utf-8?B?WHdaR09UT1hmbG1icVE2cDc0KzlpZVZlQXQzOTBtSkRvcmRLMm9kWE5QVWNQ?=
 =?utf-8?B?d0oydGYrTE9vQi9VcDVzdEpyS2xMSXdabTJPcXhTc3k1czQxTnFGa0VtbDIz?=
 =?utf-8?B?c3ZSWGxXWm1MYk9nZEdXaDUrMmxrNGprcUg1cURhR2taZFo4cTR5ZnRQZm9W?=
 =?utf-8?B?aExsV3d5STNrUktYS2luTU1hMXRQMDc5VCtReDhkdlN3RnZTTUJkK2YyeVEy?=
 =?utf-8?B?MjcyRkJFODB5cGN6dUxhTTJMMmtXNkVGeTlZK2UrNTBxb0Y2a3lBTUs2WVJD?=
 =?utf-8?B?aGRyWldMYUZKdE9kbHFqa200b00yL3B2dUFUaUxIVUszTDR3WUphZkszVlJV?=
 =?utf-8?B?Yjk3MXB1N2lBYmxwbHNqSVlPOE1Ya3BqTjJmWHBOMW9HWjk0eGNOOWR0MUhh?=
 =?utf-8?B?b2gycndtZ1hZcDVRVFAyZ3pTUGlxemszaW44dmJjcitCbWJuQTdpNzZjUXBv?=
 =?utf-8?B?UzVPU0I1MXgvV25SK1FBQlFGQUJIMWFsd0VKZkhZU01hZUF2bGlhZXdwWkZp?=
 =?utf-8?B?N21DRml4RGtMckRBOHZIeUlFZllRZ3R2RVd3ME0xcmhTakNhMXJmQmlSQmVR?=
 =?utf-8?B?ekNZSlZWMDlHYndISTVqdWhzVHVsMmNNNDVaV0Y0S3BmMndTWDNORGN3b3NC?=
 =?utf-8?B?OU92M0h5SURWVm5Ja2R1bzN0cS84djRNcERuc0tzdHp4Vkx3aHZTVm9jbG1F?=
 =?utf-8?B?d2JpblNsNVhmM3B1WEpyeXBlWkl5WmhkY0UrK0hZU1dvMXpieTlRU3VSaU1v?=
 =?utf-8?B?TE93Ym5LNTFCdmVIbjRCVU9PN3hQMHhSNis1MmtsdVpDR1VaN2JuQVhHaE5X?=
 =?utf-8?B?cWhES1hGWnpvK2F2UE9lN21lRUI3UFBRMnVwRnh1M1JDa2tLb0QwaHJieWZi?=
 =?utf-8?B?RlJuU056TE5BWWZZQjhuWllRQnFQMnhjM240c09QamxhcWliTk1Rc1E5MjhB?=
 =?utf-8?B?N0lxL2REcERwWDZrOVRncGNiOVo1OWh1TlY4U2h6aldINTRsQ2tlVVl2bnpp?=
 =?utf-8?B?NXBlTzYxNWplZ1RleFBQT05ML1dzRW1FK1h2aDVqSk9MLzNWOWRvSHkzaU95?=
 =?utf-8?B?U2lYVC94RTlvNFNNd2ZreTNnbm5NdkFuV05nNEdpSFZIZkVxVkJXSDJUWmFM?=
 =?utf-8?B?cFVySGtsMXM0MW5FeEVObkJwdkZOT0E1RGhDN0RDcEUyVi91T0xTOS8yODlD?=
 =?utf-8?B?L3QvUXRZVFIvQkxxQTYyTlJUaUNYcTA3WDJRRGlIMS9yUFhLU2JqcFZBdnlF?=
 =?utf-8?B?N3BKdm1DdkRzQ3Q4Y082d2VDQ1dQZFBUb0RwUUF3NllrWEZMQzFuYjYyMmdV?=
 =?utf-8?B?K0RlbnJDWUVON0UxNmd2SDk5V1g1L3RyaWJwWFgxRlNtcDlNZ3FyVXREVXpw?=
 =?utf-8?B?QktlVnA3ZmhTa0VZWHVTeHA3MGorZy9qVXJSekEvYTIxQjBRSVpqWDhoZ1ZQ?=
 =?utf-8?B?c3grT2VkVEk4VjJwdGQ2eXNJZU9sMThweWIyT0xYcGdJVWlYN29tZVJWL0sx?=
 =?utf-8?Q?V5/LuPfbY10=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NW1LME9Hbk5qRkxVY0hScGhxU1N2UC92dDRBYm1nYUQyRndmQkRBbGJXWkNW?=
 =?utf-8?B?SFZBakpMY3MvNmRaWE5kcHh0cXpoMkJQdjJCd0NOUU1jMUo1ZjVFUlJEc2tR?=
 =?utf-8?B?NzRObG5RNlVDUW41Y0o0MlJSYmJob2xyTFFHMDNvWFREcXhwOTVBeXY1VU1R?=
 =?utf-8?B?NXo4a0h3VWJ1UUswYkYyRnV5THQzdW4wUHNiSjR6R1RpZG4vZkd1NnQ4YmNF?=
 =?utf-8?B?Mm9lZUdmeGFUU2Z1TkYzM2hnT1VCaDV6QTJiNllvR0JrMnRzSDZqWVNwaEky?=
 =?utf-8?B?WndFRlZlTEQybVN4Sk1sWVEwT050dTdnaktyS1Jrdk1kZXNhY2Vmd3RnZTlI?=
 =?utf-8?B?RVFqWHlzQW94ZVBxM0hjNFZ2cDltWnc1dVNDWUprT1pkVlpsWnJIT29IQXI2?=
 =?utf-8?B?S3RZYUNSTXRJUVJua2V0UFRTWmowb25sNm5lTGJ4TTJuKzlBV1BuZXUxbXVW?=
 =?utf-8?B?Z2o5dSs4Sm1VRnQ5THVzYVpmbUVVZFVVWHY5RnJjcDR3TVVNcm5XTzFub0F3?=
 =?utf-8?B?YjlQNWR2eDhjNkJ3SEdzSExUUFczT0ZZM0VSSjkrcklpcG53STk2cGFEWFhz?=
 =?utf-8?B?UnVQaHVDRWJnV1c1cjBLc2lqRkJ1WWM0Vkt1M1V5L2VwZE5OZUlyd3E4dnZO?=
 =?utf-8?B?ODk3Vy8vVnBPYWQ1Y3ZxMFhKMlc4WllrbmZSV3MrWFlsejh1S250M1ErNnZK?=
 =?utf-8?B?WVhVWVhLeVZlT0M2ZUlvRXdBdWtLWllkWGhBczVsT2NvZGNKMEpKaTFCU2Rr?=
 =?utf-8?B?WWVoS0JwQ2lLZDhuMWh4bzhlajMxekVJQ2NDZlpkODNKQ1I2eWdVa2xJL1Vx?=
 =?utf-8?B?M1NOVVp3UHd5VHdPVXBrbjF3bVArdlV3Y1NWWHlLSGZ2NzNNLzU1L0RHYTVa?=
 =?utf-8?B?cmtGcFhiMURXL2RFdUtnSzNlUU5vVUk4SmE1aEJpa3Z6VHZYelROenY1enB1?=
 =?utf-8?B?Sk0zOUZjUHlKOHFENGVpZ3RpZWtLc1JFRG5MSTFiallOQUllcUI1ZDVlWE9w?=
 =?utf-8?B?am4rNXFheDNFdDBpd2JnRDNCZlcwckk5SmxBYjBWdEdxZFo3cTl0d2pnTlRI?=
 =?utf-8?B?RTFuSGtheGxDN1Z5YmNtbVVFWkpBZnpmRTE2Z0QzVzB2Mm5QdGI0aTBORkp6?=
 =?utf-8?B?alpiZ20yMXgrWm1HRmdyd0JZeWtEMGR3VXArcHVXVGU2VVowVzh6K2UwY1RW?=
 =?utf-8?B?VE9vUE9XQ0I4V3lGcGZJUWd0ZmRuQUhSSkdrVHZ2Z1d0emFQOUJJU0h4WjU1?=
 =?utf-8?B?WEJhQWRTVlZYQW9teVJ4ZGJLZkpiSXhxVWVzeW9Yd3g0U1JRc0Nnc1QwSVl6?=
 =?utf-8?B?ZHB1Y3Q2Zi92bm9OcjE2ajNIcytDazJXOVJYaE02SkhmTy9EWGljb0pwN2Rr?=
 =?utf-8?B?QklubjZSbDR2bHZ3MDFBaVZTbGl5TXg4NVRpcmdGNUdYV2sxTCtydldhc3l1?=
 =?utf-8?B?MjdrQWZQdVk3aDJ4eG5VSWZ4M2FTT2FvT3ZSUTVRVjJBNXJ1QnRMQm5LeGpr?=
 =?utf-8?B?UmV0VnArcmRpb2x4d3FnZSt6a2JwZnFCem5QMVI3R2RVSjhpT0REZkNWa3Qz?=
 =?utf-8?B?RFJXZlBzaDZ4Q2o2SmlxalZWSWVibjBSZXpBU0NzMDB1NThzYnF0YmNRb2dM?=
 =?utf-8?B?T0Q1NTdjNjkyRFQzR25NZWIrYzBJNENtN1Qyd2RNRjMxaGZiVnE5S25TR2xo?=
 =?utf-8?B?Tys1cHlYYXRvNlZGeGZQZE1JbkhqamRubjZ4ZDVoVENiTjlNcmpOZXUwb3ZX?=
 =?utf-8?B?b3lTc3hiU3pDdTJSUmJiRElvcU5JWkt3Y1hweEN6eVU3ZUd2ZE5DZWRoM1o0?=
 =?utf-8?B?NzVmSFdWa1d1TXJ5aUVmMlhlZmhpK2EzVWRIYXVJVWEvVjE0TFk3OFcwRWNu?=
 =?utf-8?B?NEZTQ3RRYllBZStDaEh2RGMxa01GMGp0VEVGenZscVJnd1JmTERFYlUyS3NX?=
 =?utf-8?B?TmFOTDdQc0huMVhHTDJSNlpDZFZ3WVdUOTdPUVFEL3M2T1NOcmhhcmh3NTZ0?=
 =?utf-8?B?MnVibWQ1a1JJK1pZTTY3RkVaZUVGS3ltR2dVOFUwZzhTME5xMk90R2hTZ3pT?=
 =?utf-8?B?c2xicUJaUFZBbWpmc0FnOE9tTzEyKy9neEhwWlEwbWVNWGxkbHRMbkdBY1hF?=
 =?utf-8?Q?S+KOb7X2En4n+NU199GcyPc/V?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0315a2cd-4c76-4e1a-306c-08dd92ec34e7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2025 13:35:35.5458
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GdmPvizrY0oAlW5RRYdpMKMFpv89++cC6MQvQMB31x1n8SBVfQqBmHMWukMBIbJk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6580
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B6A6143F02
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.41:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,padovan.org,intel.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,igalia.com];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.92.41:from];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: TKQUAY6JLQ43ADKPW6RMEPPH4HUUHESK
X-Message-ID-Hash: TKQUAY6JLQ43ADKPW6RMEPPH4HUUHESK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Matthew Brost <matthew.brost@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 05/10] drm/amdgpu: Use dma-fence driver and timeline name helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TKQUAY6JLQ43ADKPW6RMEPPH4HUUHESK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xMy8yNSAwOTo0NSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IEFjY2VzcyB0aGUgZG1h
LWZlbmNlIGludGVybmFscyB2aWEgdGhlIHByZXZpb3VzbHkgYWRkZWQgaGVscGVycy4NCj4gDQo+
IERyb3AgdGhlIG1hY3JvIHdoaWxlIGF0IGl0LCBzaW5jZSB0aGUgbGVuZ3RoIGlzIG5vdyBtb3Jl
IG1hbmFnZWFibGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaWdhbGlhLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90cmFjZS5oIHwgOSArKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3RyYWNlLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdHJhY2UuaA0KPiBpbmRleCAxMWRkMmUwZjc5NzkuLjRjNjFlNDE2OGYy
MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3RyYWNl
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3RyYWNlLmgNCj4g
QEAgLTMyLDkgKzMyLDYgQEANCj4gICNkZWZpbmUgVFJBQ0VfU1lTVEVNIGFtZGdwdQ0KPiAgI2Rl
ZmluZSBUUkFDRV9JTkNMVURFX0ZJTEUgYW1kZ3B1X3RyYWNlDQo+ICANCj4gLSNkZWZpbmUgQU1E
R1BVX0pPQl9HRVRfVElNRUxJTkVfTkFNRShqb2IpIFwNCj4gLQkgam9iLT5iYXNlLnNfZmVuY2Ut
PmZpbmlzaGVkLm9wcy0+Z2V0X3RpbWVsaW5lX25hbWUoJmpvYi0+YmFzZS5zX2ZlbmNlLT5maW5p
c2hlZCkNCj4gLQ0KPiAgVFJBQ0VfRVZFTlQoYW1kZ3B1X2RldmljZV9ycmVnLA0KPiAgCSAgICBU
UF9QUk9UTyh1bnNpZ25lZCBkaWQsIHVpbnQzMl90IHJlZywgdWludDMyX3QgdmFsdWUpLA0KPiAg
CSAgICBUUF9BUkdTKGRpZCwgcmVnLCB2YWx1ZSksDQo+IEBAIC0xNjgsNyArMTY1LDcgQEAgVFJB
Q0VfRVZFTlQoYW1kZ3B1X2NzX2lvY3RsLA0KPiAgCSAgICBUUF9BUkdTKGpvYiksDQo+ICAJICAg
IFRQX1NUUlVDVF9fZW50cnkoDQo+ICAJCQkgICAgIF9fZmllbGQodWludDY0X3QsIHNjaGVkX2pv
Yl9pZCkNCj4gLQkJCSAgICAgX19zdHJpbmcodGltZWxpbmUsIEFNREdQVV9KT0JfR0VUX1RJTUVM
SU5FX05BTUUoam9iKSkNCj4gKwkJCSAgICAgX19zdHJpbmcodGltZWxpbmUsIGRtYV9mZW5jZV90
aW1lbGluZV9uYW1lKCZqb2ItPmJhc2Uuc19mZW5jZS0+ZmluaXNoZWQpKQ0KPiAgCQkJICAgICBf
X2ZpZWxkKHVuc2lnbmVkIGludCwgY29udGV4dCkNCj4gIAkJCSAgICAgX19maWVsZCh1bnNpZ25l
ZCBpbnQsIHNlcW5vKQ0KPiAgCQkJICAgICBfX2ZpZWxkKHN0cnVjdCBkbWFfZmVuY2UgKiwgZmVu
Y2UpDQo+IEBAIC0xOTQsNyArMTkxLDcgQEAgVFJBQ0VfRVZFTlQoYW1kZ3B1X3NjaGVkX3J1bl9q
b2IsDQo+ICAJICAgIFRQX0FSR1Moam9iKSwNCj4gIAkgICAgVFBfU1RSVUNUX19lbnRyeSgNCj4g
IAkJCSAgICAgX19maWVsZCh1aW50NjRfdCwgc2NoZWRfam9iX2lkKQ0KPiAtCQkJICAgICBfX3N0
cmluZyh0aW1lbGluZSwgQU1ER1BVX0pPQl9HRVRfVElNRUxJTkVfTkFNRShqb2IpKQ0KPiArCQkJ
ICAgICBfX3N0cmluZyh0aW1lbGluZSwgZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoJmpvYi0+YmFz
ZS5zX2ZlbmNlLT5maW5pc2hlZCkpDQo+ICAJCQkgICAgIF9fZmllbGQodW5zaWduZWQgaW50LCBj
b250ZXh0KQ0KPiAgCQkJICAgICBfX2ZpZWxkKHVuc2lnbmVkIGludCwgc2Vxbm8pDQo+ICAJCQkg
ICAgIF9fc3RyaW5nKHJpbmcsIHRvX2FtZGdwdV9yaW5nKGpvYi0+YmFzZS5zY2hlZCktPm5hbWUp
DQo+IEBAIC01ODUsOCArNTgyLDYgQEAgVFJBQ0VfRVZFTlQoYW1kZ3B1X3Jlc2V0X3JlZ19kdW1w
cywNCj4gIAkJICAgICAgX19lbnRyeS0+YWRkcmVzcywNCj4gIAkJICAgICAgX19lbnRyeS0+dmFs
dWUpDQo+ICApOw0KPiAtDQo+IC0jdW5kZWYgQU1ER1BVX0pPQl9HRVRfVElNRUxJTkVfTkFNRQ0K
PiAgI2VuZGlmDQo+ICANCj4gIC8qIFRoaXMgcGFydCBtdXN0IGJlIG91dHNpZGUgcHJvdGVjdGlv
biAqLw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
