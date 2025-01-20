Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B924A16D99
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 14:44:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81A0641117
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 13:44:39 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2076.outbound.protection.outlook.com [40.107.244.76])
	by lists.linaro.org (Postfix) with ESMTPS id F32313F602
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jan 2025 13:44:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=G1jC7oEh;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.76 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jKMqra9VtQpo3Vl0XOA06ePSQ7VZ+KUbP+DJuD1Dp8KCYguMCR8Z/QFparn7XkSH7JVQSSfA7Ot0x517YMkh5TVrpvxjLmVHEy//T+jq5TrZKHvtHCylIl6H6vpsfhaJteX67dpMPXlez/K7440wcbaYkTBkmqodlY9ozbtIQj6mMfcO6k+ldkLdsD1xjmc/jKk5wCf4mm1qIZkAbvEOSeT6hPohHlb/Fdq6DnuLbBkdzP5AjmBu3rAwlejDQ3H2tEaEtAO2MEFS2JgEjMYLQX6GPhbdve6Y+noFY7uKaM0t9XUglwOwqLqUQIpYyKlKPL4mqXtc8YH52yUkNzjZJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aNMq6shzugyHf0NqHwBRJGQdA3omGz/1wVdBClhiDtk=;
 b=KUftGn0tT/jBc73eWNuqztgbjvRPXWlBEYUmoLZ2gZq0PGc7BvYD7I2GCxJseNxsCGcOoEM9OH+8OF61MaQl7SHKukL7slBFTczSNU3g6xeMhgEZqIVB1WIvbwqigPiNBTvwylrOoyWk/q0iZFq8TkV/uFhhYcUAH94BMxX32AFCivwwb1DpO3gShjPwPDESLjZmLQohh/knrxnfdTIozVK/0WDkGVA7kbAXhGm6bHMrmr05Rh7lnDP4w8l6Kx/bNC5mKlYutMNBo1MfkRhW+td+I6aCr26vKvthxGzYeaTdmCI5m8oNUv3aBe5US1JFAiQjzaz49XMvAmSe8438UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNMq6shzugyHf0NqHwBRJGQdA3omGz/1wVdBClhiDtk=;
 b=G1jC7oEhfZ9njF95OtMRkj15lOZeatDo71NLwHGoP0A/brj8T3W2RHWpy4Yb4vu7d95AZkBB15Fhp/52nQY1d6bzfYppQyAKgz+bGtb+BetrhKL5E+CVTW1aGaJJ8KmoTp8yK3FqRFNZqIP4cvec/pQrJWCR2T6vnm25koX+tdc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN0PR12MB6271.namprd12.prod.outlook.com (2603:10b6:208:3c1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Mon, 20 Jan
 2025 13:44:21 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8356.014; Mon, 20 Jan 2025
 13:44:20 +0000
Message-ID: <0d77dc64-df9c-457b-af3b-ecfa49dac7b4@amd.com>
Date: Mon, 20 Jan 2025 14:44:13 +0100
User-Agent: Mozilla Thunderbird
To: Xu Yilun <yilun.xu@linux.intel.com>
References: <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
 <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
 <20250115141458.GP5556@nvidia.com>
 <c86cfee1-063a-4972-a343-ea0eff2141c9@amd.com>
 <86afb69a-79bd-4719-898e-c6c2e62103f7@amd.com>
 <20250115151056.GS5556@nvidia.com>
 <6f7a14aa-f607-45f9-9e15-759e26079dec@amd.com>
 <20250115170942.GT5556@nvidia.com>
 <5f588dac-d3e2-445d-9389-067b875412dc@amd.com>
 <ZnSm6ULbJbxOU27J@yilunxu-OptiPlex-7050>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ZnSm6ULbJbxOU27J@yilunxu-OptiPlex-7050>
X-ClientProxiedBy: FR3P281CA0171.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN0PR12MB6271:EE_
X-MS-Office365-Filtering-Correlation-Id: e0262313-7f98-4ce8-b2f8-08dd39588af4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SnZQWERVWVpjejlhbFVvT3AvTXJyb01PUFhuZDBKSHdZZEdzSXI1UVJWa21s?=
 =?utf-8?B?VkQ0dys2b0Z6ay9YbW5FR3c3TjZXeUYrNTBjSTVkOVR2cVl5dSszL01Wbm1a?=
 =?utf-8?B?K3prTnhtd2hCSEJUTkZYYlR0cm5GZ3NnVmlpdENFNDd1eEl5SEhqRktraURI?=
 =?utf-8?B?UVJXV1Ivb0NIVUZVZlFrYmpmaTBGNHAxdFQ1aGw0Uk45YjAzNk8xTThPQnIz?=
 =?utf-8?B?bi95Wjg4aFVxdmF1MzBUVjZMei9POFlHT1oyclZYOGtoSmI2M0N4MVowUUZM?=
 =?utf-8?B?THcrd3FaS0ZYUFhiSFdKNVhaMndEd3lKQ3JZaXJNRVNWY3pWK0VKYWp3QU44?=
 =?utf-8?B?YW1wOTlXWVFXaWtWNFplNkdvMkdjKzhjYTRuaWNOWVl2NHA3OHlEY3lBcEdN?=
 =?utf-8?B?U3FqT3lBYjNaVndiMjhyb3pxc0xqODRMMFFYdVJCOEdYUXhPMmZJM2RiMHRO?=
 =?utf-8?B?a1lpcnp5QWFNM1ZOaG1hczNOb0V0dUxLQWRWZ0Q0ZnlEVE9ta1RvZUE4TUJV?=
 =?utf-8?B?QnpBNlk2K01YZ0N1ZVlYeDhLekx3ZjJvVU45dVQzakloVG5iWS9lVkRuM1pm?=
 =?utf-8?B?dlY0ZCtCWUFVcnZrWER2RUgvZVM4V2owdldXL2VUbW1USytpOGZvRS8zYUJw?=
 =?utf-8?B?WXZzS2VSdW1vWkpkb09Fa3ZnK3FiM2FWYXFlOUF0cG1zZmV2d1BOeGU4M3lY?=
 =?utf-8?B?Y2diaTZmVFVXRnZENDN2NmxxWEhkc3BZZHVWUkd2WWRVYytES1NhOTZ1QTJh?=
 =?utf-8?B?L1NwMWk0ajNrbkVNc3pUb2JBeWd5S1MxRmFBRWpSUGxhRHRRNlRoZmh5eHdk?=
 =?utf-8?B?WTc4dE5wUG1DRThpWmd1cmpDczdFVVpONk1SOXlWVk10azlqVmt0NE1OMHBh?=
 =?utf-8?B?ZXVhT2JlWElJbGhQSnp0RWkvQWtMMERKWWs2UmJINmI5aEtjWHlEVGhZMGRK?=
 =?utf-8?B?cFR5akkwdXplQnpKVHp4M0gxNHhWV3c1encrQ3p5SGliT2ptcjBFTmt0UTkv?=
 =?utf-8?B?ejZ3cmpEcWNUWWtaRDdHOVd2SDFWNHlGSFp6QytLdnpOeWtBdVkyamFqZFpQ?=
 =?utf-8?B?cHV0RUluZ1l5WnFWZzFlY0I1Ulo5bllOQWxjeXQxdDlIM2Y0RS9JS2lMb0F6?=
 =?utf-8?B?cnJWd2pIa3VyWTJLbDBKbDFVQ0JaVjg1QXhGQnJKdVdwU0dMdmhGcFZkbGhi?=
 =?utf-8?B?c01VWDZJMGdqbks3ZlNKOTdsVkN0UTdFSW1UMUl6M0djWkRHaEJueE9oZVdk?=
 =?utf-8?B?WlR6R2l2U25pNmNVQjVpYUxXcFFUNDFZT3p2NlNpSFh0aFZWTy84dzJhc01m?=
 =?utf-8?B?MEhxdzF1cFpZdEkyNStndE5QL0hpUjd6RTFVYTdkZ2gxWUo2U2hnNUQxTEtY?=
 =?utf-8?B?clBVdk9WQ09jUC90REc3cVhKajk4aHJNWklMYVRUdm9vQ1hya21Xb2VBRWl0?=
 =?utf-8?B?QTB5d3hLUFFBZlAxcmV3eVdMWUsvd2U3SnFKcTVqNGVyUFE2ekF0Z3YzWGVt?=
 =?utf-8?B?V0FqcVpHbGRDWkhQZDNUa0pUNnNLMTc1ZW9wenZHV05iS0tvQ1FpWG9vbENY?=
 =?utf-8?B?YUV5ZWRZZkRSTTZUcnlwWElIeDJGUTdLVXhBZmVjS1JGb2RnRExIdDU3bHVy?=
 =?utf-8?B?UTljMmlLVE5vc1M0ZTRzU3NibkluTWJNK0RhZU1mQmtld2JDRnNZVi9tTnBs?=
 =?utf-8?B?c2l0WnZyZHBJK1NBTzZqZTNwclZjb25PcjJoWndoS0M0czFwQitFNkxxZzdx?=
 =?utf-8?B?SVVOZWgrVkxZVlVpc21ZZjNRY0ZacjlDVzdvaDhxbStUbU8rUHRWYVVQYndD?=
 =?utf-8?B?c045T3plUDNUeHFGOE5qT251Tll3eGFMVnhKRzJlZXA2RWxic2Nvci9oTzQ1?=
 =?utf-8?Q?BOGIc/rbxC49M?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V0srcHZzTURKYUZWZHRBTk5ZS3U2NlQ1RGo5RTJOWmxUdFVReVdSdHQ4bG1w?=
 =?utf-8?B?djgvQzZmSm1tcXRWMHRiMlBrQjJDbWJtRUE0TnBCbUs3cU9QVncwZWRNL0k4?=
 =?utf-8?B?Sk1kYlV5M1RBY1VPM2JjdkxzR0pjcjVYKzVWSytlMjFqQ2pEMmUxZnJMQmNF?=
 =?utf-8?B?NFg2aEIzMUhFYTRpRXZRK3hqcVZKc282dDBoRzJkYk9HTGIxYUg5N090VXl5?=
 =?utf-8?B?SG1xZGdvYkFoaEJ3enVvVXYxazlHMVQydFU4S2o5a25oTkpkYTdlZjJ0VVVV?=
 =?utf-8?B?c3dFZnVKbm4rOXFKVXJmempJdUlNVE51d09PSktoSDJjZkpDcXBmMzViQUJC?=
 =?utf-8?B?T3ZxT1FvekpjMVFmb0NzVUNNMHNyOFBsMGlRQUZEK1hNalQ3d3kxbDI5d3cv?=
 =?utf-8?B?bmVLSDZveE9zRStlZ0hMVU9MTWJWZ3dFNkwyNXk5OG56akx5N0RydUFVemkv?=
 =?utf-8?B?MmV6V3d4NzBkTXlmK2Roek8xd0VXSTJUeUtka0Z4eitaVTVVK2tod3E3WjFi?=
 =?utf-8?B?Y0lKRGJqZ0ZlTlRaSkhPU2ErRVNwbUZ5QjNjbE5Ra0lqRC82azJkUVRpZ3hS?=
 =?utf-8?B?R2psak1jeXQrSUN5SWxZSkg4TnpEYXJlVVdDMVdYc09hbXNoblFCOEoyMkhR?=
 =?utf-8?B?VU9vaGdwdVpSYzMxWGZkUERqcytEa3BteVBmdkRaQjI2NnQyajQ0bHlqRXJn?=
 =?utf-8?B?TjBURE5LbE44eTl5d3BkVDM2NWhGUkJMY2FtWlB2Qnc3Z0txV1pvMjl3aDVN?=
 =?utf-8?B?Y1RWZnFrUThUbE90YVZxcEVEMTExbVcrQ0dmWXlmUElwczVIUUZNV25MSjZ5?=
 =?utf-8?B?KytaOXNwb095SmhWMjhSZ2R3akVLaHI3eDM2RXduRWhxWTJxcXd3SWttVFRG?=
 =?utf-8?B?SHd5VXZ0VExkNGZtcjR4M2pTNWg2Yml4S1ljdWV2TmQ1Z3k1Q052ZHFUYWdt?=
 =?utf-8?B?WGZpa0g1OXVGQ200ZFFEU2NKdTVjaUd0S1YxK0lJUGYxMEcwTC9zWFRIR0Uy?=
 =?utf-8?B?b0dDNWZLeXdXek00aVZOMzM0UDMzU2hST0Njald2VHlLSVVsTVFtQmFoM0k5?=
 =?utf-8?B?QXZzaWtqWE9EZ2I2RmEzT3hNRkpmNlZNQjFnKzBKMzFoNVJEMWZuNTVtT2c0?=
 =?utf-8?B?QzZxZ2JnUW5pK0FmWTZWN1dEOTgrZlR4U3FpRFIzWnBXMThFWVUwS0RyUjEz?=
 =?utf-8?B?UWI1YlVpTjViZVRhNW9RVUZSTXRoVnlIaGdranpST3JNV0t5RTlkN3BzZEkx?=
 =?utf-8?B?T2JyV3BsL1BFZG00R09xS0FnL0d1N2ZnTmtUaTZyUnE3dzdnb3diMWJvN2ph?=
 =?utf-8?B?ZUZ6QWV5c2ZFTWE1NDJyMEVJNGxLQ1JJaWpTM1hESXIzSmhNTFI1eWtBOUdk?=
 =?utf-8?B?Y2ZMSDUxQnA2TjUzUnNkKzFUenVDZzNEY3VtbUc3bzBjazh2ME1tTVY1ci9k?=
 =?utf-8?B?NE5TR0NrQTAwQ0FGODIvL2QrU0NuNGc1L3c3ck0yaStaTnoxZitBRExqV1Rh?=
 =?utf-8?B?ZHMxSHoyU1phRXdvS2VxM2hjK3dEQnZrRmlINTgvVms1b0M5cWtVWUdpck1S?=
 =?utf-8?B?amR2MUVIMUNhcncrTHB5cHI0OHFTT1VVVG9aVGwzVXNGcjJLbzJwc1JtQmlB?=
 =?utf-8?B?eEhmMncwN0J3bTFvekRRUjFwRXA1K0JzQXUydmkzOExZb3Y1S25uL2pMWjF6?=
 =?utf-8?B?QVgyMlo0aEtrSTFpYlNZcVFOMlpLcUdRTUNnVE5DbzVoYWdtVzFsTEJxV1d5?=
 =?utf-8?B?WjVZZlZ2UUdsVzVPbTUwL2tYSUdWMUQ2ZEZPcDRtajl1SmZnVmFnZnBORjBY?=
 =?utf-8?B?b3hOaW9TZlAvbnNnTGkzSm9mU1AwejVZSHovbUdqemxNL3pVUFNuSVZRdDk2?=
 =?utf-8?B?T0ZtWHA3QTFTRmtwL012c1ZJMENmVlk5ajlRdmM5VWpIdjcxWlMzU0xpcUNT?=
 =?utf-8?B?TjBxN1paZFVLQ2p4UW1Ib0hpa2VONmQ2MVRza081TDR2QWJHY0NJSFBqSEM5?=
 =?utf-8?B?QzJmdG1hdjZJOW9LQmFhbmVEY1R1aWR3UHc0a3l1K1huak9lVzk1akwyN0F1?=
 =?utf-8?B?T2dORjZIdmtna05GblpRVkhpd2tCbmtpTFAwNmtKL2R1QVc3cktDeWg0TXVI?=
 =?utf-8?Q?vcVFdvDiD53hB+g+hmt/gsyj4?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0262313-7f98-4ce8-b2f8-08dd39588af4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:44:20.8701
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q+rm2VTl9msIv71h6Uo7d66GwH3aglle2Lrg2CnF2+CW7xAkq5Kynxm6HvssOOVj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6271
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F32313F602
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.76:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.244.76:from];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: IGKM7L2WHVXJQYWWN7ZOEAQKVROA67YH
X-Message-ID-Hash: IGKM7L2WHVXJQYWWN7ZOEAQKVROA67YH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@nvidia.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IGKM7L2WHVXJQYWWN7ZOEAQKVROA67YH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjEuMDYuMjQgdW0gMDA6MDIgc2NocmllYiBYdSBZaWx1bjoNCj4gT24gVGh1LCBKYW4gMTYs
IDIwMjUgYXQgMDQ6MTM6MTNQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+ICAg
ICBBbSAxNS4wMS4yNSB1bSAxODowOSBzY2hyaWViIEphc29uIEd1bnRob3JwZToNCj4+DQo+PiAg
IE9uIFdlZCwgSmFuIDE1LCAyMDI1IGF0IDA1OjM0OjIzUE0gKzAxMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6DQo+Pg0KPj4gICAgICBHcmFudGVkLCBsZXQgbWUgdHJ5IHRvIGltcHJvdmUgdGhp
cy4NCj4+ICAgICAgSGVyZSBpcyBhIHJlYWwgd29ybGQgZXhhbXBsZSBvZiBvbmUgb2YgdGhlIGlz
c3VlcyB3ZSByYW4gaW50byBhbmQgd2h5DQo+PiAgICAgIENQVSBtYXBwaW5ncyBvZiBpbXBvcnRl
cnMgYXJlIHJlZGlyZWN0ZWQgdG8gdGhlIGV4cG9ydGVyLg0KPj4gICAgICBXZSBoYXZlIGEgZ29v
ZCBidW5jaCBvZiBkaWZmZXJlbnQgZXhwb3J0ZXJzIHdobyB0cmFjayB0aGUgQ1BVIG1hcHBpbmdz
DQo+PiAgICAgIG9mIHRoZWlyIGJhY2tpbmcgc3RvcmUgdXNpbmcgYWRkcmVzc19zcGFjZSBvYmpl
Y3RzIGluIG9uZSB3YXkgb3INCj4+ICAgICAgYW5vdGhlciBhbmQgdGhlbiB1c2VzIHVubWFwX21h
cHBpbmdfcmFuZ2UoKSB0byBpbnZhbGlkYXRlIHRob3NlIENQVQ0KPj4gICAgICBtYXBwaW5ncy4N
Cj4+ICAgICAgQnV0IHdoZW4gaW1wb3J0ZXJzIGdldCB0aGUgUEZOcyBvZiB0aGUgYmFja2luZyBz
dG9yZSB0aGV5IGNhbiBsb29rDQo+PiAgICAgIGJlaGluZCB0aGUgY3VydGFpbiBhbmQgZGlyZWN0
bHkgaW5zZXJ0IHRoaXMgUEZOIGludG8gdGhlIENQVSBwYWdlDQo+PiAgICAgIHRhYmxlcy4NCj4+
ICAgICAgV2UgaGFkIGxpdGVyYWxseSB0b25zIG9mIGNhc2VzIGxpa2UgdGhpcyB3aGVyZSBkcml2
ZXJzIGRldmVsb3BlcnMgY2F1c2UNCj4+ICAgICAgYWNjZXNzIGFmdGVyIGZyZWUgaXNzdWVzIGJl
Y2F1c2UgdGhlIGltcG9ydGVyIGNyZWF0ZWQgYSBDUFUgbWFwcGluZ3Mgb24NCj4+ICAgICAgdGhl
aXIgb3duIHdpdGhvdXQgdGhlIGV4cG9ydGVyIGtub3dpbmcgYWJvdXQgaXQuDQo+PiAgICAgIFRo
aXMgaXMganVzdCBvbmUgZXhhbXBsZSBvZiB3aGF0IHdlIHJhbiBpbnRvLiBBZGRpdGlvbmFsIHRv
IHRoYXQNCj4+ICAgICAgYmFzaWNhbGx5IHRoZSB3aG9sZSBzeW5jaHJvbml6YXRpb24gYmV0d2Vl
biBkcml2ZXJzIHdhcyBvdmVyaGF1bGVkIGFzDQo+PiAgICAgIHdlbGwgYmVjYXVzZSB3ZSBmb3Vu
ZCB0aGF0IHdlIGNhbid0IHRydXN0IGltcG9ydGVycyB0byBhbHdheXMgZG8gdGhlDQo+PiAgICAg
IHJpZ2h0IHRoaW5nLg0KPj4NCj4+ICAgQnV0IHRoaXMsIGZ1bmRhbWVudGFsbHksIGlzIGltcG9y
dGVycyBjcmVhdGluZyBhdHRhY2htZW50cyBhbmQgdGhlbg0KPj4gICAqaWdub3JpbmcgdGhlIGxp
ZmV0aW1lIHJ1bGVzIG9mIERNQUJVRiouIElmIHlvdSBjcmVhdGVkIGFuIGF0dGFjaG1lbnQsDQo+
PiAgIGdvdCBhIG1vdmUgYW5kICppZ25vcmVkIHRoZSBtb3ZlKiBiZWNhdXNlIHlvdSBwdXQgdGhl
IFBGTiBpbiB5b3VyIG93bg0KPj4gICBWTUEsIHRoZW4geW91IGFyZSBub3QgZm9sbG93aW5nIHRo
ZSBhdHRhY2htZW50IGxpZmV0aW1lIHJ1bGVzIQ0KPj4NCj4+ICAgICBNb3ZlIG5vdGlmeSBpcyBz
b2xlbHkgZm9yIGluZm9ybWluZyB0aGUgaW1wb3J0ZXIgdGhhdCB0aGV5IG5lZWQgdG8NCj4+ICAg
ICByZS1mcmVzaCB0aGVpciBETUEgbWFwcGluZ3MgYW5kIGV2ZW50dWFsbHkgYmxvY2sgZm9yIG9u
Z29pbmcgRE1BIHRvIGVuZC4NCj4+DQo+PiAgICAgVGhpcyBzZW1hbnRpY3MgZG9lc24ndCB3b3Jr
IHdlbGwgZm9yIENQVSBtYXBwaW5ncyBiZWNhdXNlIHlvdSBuZWVkIHRvIGhvbGQNCj4+ICAgICB0
aGUgcmVzZXJ2YXRpb24gbG9jayB0byBtYWtlIHN1cmUgdGhhdCB0aGUgaW5mb3JtYXRpb24gc3Rh
eSB2YWxpZCBhbmQgeW91DQo+PiAgICAgY2FuJ3QgaG9sZCBhIGxvY2sgd2hpbGUgcmV0dXJuaW5n
IGZyb20gYSBwYWdlIGZhdWx0Lg0KPiBEZWFsaW5nIHdpdGggQ1BVIG1hcHBpbmcgYW5kIHJlc291
cmNlIGludmFsaWRhdGlvbiBpcyBhIGxpdHRsZSBoYXJkLCBidXQgaXMNCj4gcmVzb2x2YWJsZSwg
YnkgdXNpbmcgb3RoZXIgdHlwZXMgb2YgbG9ja3MuIEFuZCBJIGd1ZXNzIGZvciBub3cgZG1hLWJ1
Zg0KPiBleHBvcnRlcnMgc2hvdWxkIGFsd2F5cyBoYW5kbGUgdGhpcyBDUFUgbWFwcGluZyBWUy4g
aW52YWxpZGF0aW9uIGNvbnRlbnRpb24gaWYNCj4gdGhleSBzdXBwb3J0IG1tYXAoKS4NCj4NCj4g
SXQgaXMgcmVzb2x2YWJsZSBzbyB3aXRoIHNvbWUgaW52YWxpZGF0aW9uIG5vdGlmeSwgYSBkZWNl
bnQgaW1wb3J0ZXJzIGNvdWxkDQo+IGFsc28gaGFuZGxlIHRoZSBjb250ZW50aW9uIHdlbGwuDQoN
ClRoYXQgZG9lc24ndCB3b3JrIGxpa2UgdGhpcy4NCg0KU2VlIHBhZ2UgdGFibGVzIHVwZGF0ZXMg
dW5kZXIgRE1BLWJ1ZiB3b3JrcyBieSB1c2luZyB0aGUgc2FtZSBsb2NraW5nIA0KYXBwcm9hY2gg
Zm9yIGJvdGggdGhlIHZhbGlkYXRpb24gYW5kIGludmFsaWRhdGlvbiBzaWRlLiBJbiBvdGhlciB3
b3JkcyANCndlIGhvbGQgdGhlIHNhbWUgbG9jayB3aGlsZSBpbnNlcnRpbmcgYW5kIHJlbW92aW5n
IGVudHJpZXMgaW50by9mcm9tIHRoZSANCnBhZ2UgdGFibGVzLg0KDQpUaGF0IHRoaXMgaGVyZSBz
aG91bGQgYmUgYW4gdW5sb2NrZWQgQVBJIG1lYW5zIHRoYXQgY2FuIG9ubHkgdXNlIGl0IHdpdGgg
DQpwcmUtYWxsb2NhdGVkIGFuZCBoYXJkIHBpbm5lZCBtZW1vcnkgd2l0aG91dCBhbnkgY2hhbmNl
IHRvIGludmFsaWRhdGUgaXQgDQp3aGlsZSBydW5uaW5nLiBPdGhlcndpc2UgeW91IGNhbiBuZXZl
ciBiZSBzdXJlIG9mIHRoZSB2YWxpZGl0eSBvZiB0aGUgDQphZGRyZXNzIGluZm9ybWF0aW9uIHlv
dSBnb3QgZnJvbSB0aGUgZXhwb3J0ZXIuDQoNCj4gSUlVQyBub3cgdGhlIG9ubHkgY29uY2VybiBp
cyBpbXBvcnRlciBkZXZpY2UgZHJpdmVycyBhcmUgZWFzaWVyIHRvIGRvDQo+IHNvbWV0aGluZyB3
cm9uZywgc28gbW92ZSBDUFUgbWFwcGluZyB0aGluZ3MgdG8gZXhwb3J0ZXIuIEJ1dCBtb3N0IG9m
IHRoZQ0KPiBleHBvcnRlcnMgYXJlIGFsc28gZGV2aWNlIGRyaXZlcnMsIHdoeSB0aGV5IGFyZSBz
bWFydGVyPw0KDQpFeHBvcnRlcnMgYWx3YXlzIHVzZSB0aGVpciBpbnZhbGlkYXRpb24gY29kZSBw
YXRoIG5vIG1hdHRlciBpZiB0aGV5IGFyZSANCmV4cG9ydGluZyB0aGVpciBidWZmZXJzIGZvciBv
dGhlciB0byB1c2Ugb3IgaWYgdGhleSBhcmUgc3RhbmQgYWxvbmUuDQoNCklmIHlvdSBkbyB0aGUg
aW52YWxpZGF0aW9uIG9uIHRoZSBpbXBvcnRlciBzaWRlIHlvdSBhbHdheXMgbmVlZCBib3RoIA0K
ZXhwb3J0ZXIgYW5kIGltcG9ydGVyIGFyb3VuZCB0byB0ZXN0IGl0Lg0KDQpBZGRpdGlvbmFsIHRv
IHRoYXQgd2UgaGF2ZSBtdWNoIG1vcmUgaW1wb3J0ZXJzIHRoYW4gZXhwb3J0ZXJzLiBFLmcuIGEg
DQpsb3Qgb2Ygc2ltcGxlIGRyaXZlcnMgb25seSBpbXBvcnQgRE1BLWhlYXAgYnVmZmVycyBhbmQg
bmV2ZXIgZXhwb3J0cyANCmFueXRoaW5nLg0KDQo+IEFuZCB0aGVyZSBhcmUgaW5jcmVhc2luZyBt
YXBwaW5nIG5lZWRzLCB0b2RheSBleHBvcnRlcnMgaGVscCBoYW5kbGUgQ1BVIHByaW1hcnkNCj4g
bWFwcGluZywgdG9tb3Jyb3cgc2hvdWxkIHRoZXkgYWxzbyBoZWxwIG9uIGFsbCBvdGhlciBtYXBw
aW5ncz8gQ2xlYXJseSBpdCBpcw0KPiBub3QgZmVhc2libGUuIFNvIG1heWJlIGNvbmRpdGlvbmFs
bHkgZ2l2ZSB0cnVzdCB0byBzb21lIGltcG9ydGVycy4NCg0KV2h5IHNob3VsZCB0aGF0IGJlIG5l
Y2Vzc2FyeT8gRXhwb3J0ZXJzICptdXN0KiBrbm93IHdoYXQgc29tZWJvZHkgZG9lcyANCndpdGgg
dGhlaXIgYnVmZmVycy4NCg0KSWYgeW91IGhhdmUgYW4gdXNlIGNhc2UgdGhlIGV4cG9ydGVyIGRv
ZXNuJ3Qgc3VwcG9ydCBpbiB0aGVpciBtYXBwaW5nIA0Kb3BlcmF0aW9uIHRoZW4gdGhhdCB1c2Ug
Y2FzZSBtb3N0IGxpa2VseSBkb2Vzbid0IHdvcmsgaW4gdGhlIGZpcnN0IHBsYWNlLg0KDQpGb3Ig
ZXhhbXBsZSBkaXJlY3QgSS9PIGlzIGVuYWJsZWQvZGlzYWJsZWQgYnkgZXhwb3J0ZXJzIG9uIHRo
ZWlyIENQVSANCm1hcHBpbmdzIGJhc2VkIG9uIGlmIHRoYXQgd29ya3MgY29ycmVjdGx5IGZvciB0
aGVtLiBBbmQgaW1wb3J0ZXIgc2ltcGx5IA0KZG9lc24ndCBrbm93IGlmIHRoZXkgc2hvdWxkIHVz
ZSB2bV9pbnNlcnRfcGZuKCkgb3Igdm1faW5zZXJ0X3BhZ2UoKS4NCg0KV2UgY291bGQgb2YgY291
cnNlIGltcGxlbWVudCB0aGF0IGxvZ2ljIGludG8gZWFjaCBpbXBvcnRlciB0byBjaG9zZSANCmJl
dHdlZW4gdGhlIGRpZmZlcmVudCBhcHByb2FjaGVzLCBidXQgdGhhbiBlYWNoIGltcG9ydGVyIGdh
aW5zIGxvZ2ljIGl0IA0Kb25seSBleGVyY2lzZXMgd2l0aCBhIHNwZWNpZmljIGV4cG9ydGVyLiBB
bmQgdGhhdCBkb2Vzbid0IHNlZW0gdG8gYmUgYSANCmdvb2QgaWRlYSBhdCBhbGwuDQoNClJlZ2Fy
ZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gVGhhbmtzLA0KPiBZaWx1bg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
