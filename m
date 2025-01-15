Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BE5A12608
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 15:31:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBC013F44C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 14:31:07 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2051.outbound.protection.outlook.com [40.107.243.51])
	by lists.linaro.org (Postfix) with ESMTPS id B65333F44C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 14:30:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=h3ma+mUM;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oNJifmNSJdVMSKd4EuvtlFmXgw90TRYpkaFW3kUHVqLDZgmMPpqFSuwVkjPZRVf0R/FVYL5uw/viifKbM4cF2QWWwGEjRSNmD1NZW2auL8mlODIEBPcEqPvTovgRwMhfMGfXTNJ5bnouNUHsB2rviYfQfED/tfN3ycYyfrWOhz5c37LAZ4OZJxYFfDtB/868jZytXdtKv+lns2Xm3l1de3wHbFQe3N3X36czWImLsLybiu7LPr95dKYmVU8B6a83i4Vj7J4SdzDTZQmu/wdYP/2GiU2lkNxJIK69TF7oBy6Um80GFY3hw3cqBx6g7gquzr8Ge6z9q4Kn0vb5VDfrjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFDZ93yw204WtMr/f/nRhR/6GEJux3aRL1LL0rkj1Bs=;
 b=Cqz3DTb/Tot8E1gz3a1i4gGTErRPS+FqruBK5B7JwM4wDXcMTAi+6Z1HtJbwvVKM5PPvcBl5mIBzGlHlDzzhXWSSfDUy7ZlfNziaSP0m5defrYxxh0ni/YQcancTc7fDYw67QUQqaGjbec6lc1nPa+9V8JtTdRocu+a6CNvMPpzo+la7PN9o4ml4LLbEAXIll9e0LN3SmONIq7j/iuk+pi4uYLx5mfzuNIr/VMcjjY2HdX7njmIHNl1u4Lm5S8WherumBx4rIlFweWlNnUA/T+kzN+7w2G6GItf5hKRhrnvwHr16DW1598SStroiWTdGeXB+bRT+taKEtn8VaLU0EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xFDZ93yw204WtMr/f/nRhR/6GEJux3aRL1LL0rkj1Bs=;
 b=h3ma+mUMurEu/oTKab/GJjYShRPGi/X9Y2DGcsAzmy4IgLMa4FS9Ct2iDFe6bIBWOvhqYrCaTX2GQYQHLtmUI7BwJK3+FwLkgy3zTLSS3hXlaCjloOMQ0qLFWmaqBjcPygN6AEKrBIeY1xb7tz27YGzlFfp+l8qJQO+rogIcePQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB9453.namprd12.prod.outlook.com (2603:10b6:610:1c9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 14:30:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 14:30:55 +0000
Message-ID: <86afb69a-79bd-4719-898e-c6c2e62103f7@amd.com>
Date: Wed, 15 Jan 2025 15:30:47 +0100
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20250108162227.GT5556@nvidia.com>
 <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <c823f70c-9b70-441c-b046-71058c315857@amd.com>
 <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
 <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
 <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
 <20250115141458.GP5556@nvidia.com>
 <c86cfee1-063a-4972-a343-ea0eff2141c9@amd.com>
Content-Language: en-US
In-Reply-To: <c86cfee1-063a-4972-a343-ea0eff2141c9@amd.com>
X-ClientProxiedBy: FR2P281CA0065.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB9453:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e8df7ac-99d2-45a9-c300-08dd35713854
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T3VsTXNWbG9IbU92bHhjbzY2TVNma2t3OXRRMGZsdFFRN3JCNnMzRXRjN0FD?=
 =?utf-8?B?Tml5T3NVUjlKR2tuRStEVHd4TWJhYVkxOEpNV2dQZGthT3ZxZ0t5b2ZsL0Y2?=
 =?utf-8?B?blBpRGNmNXN3WmhiQVRMZ25JcS9aRU9jbVNJWnM0NTA4Z0hRZjRNSFhpUkhJ?=
 =?utf-8?B?NDdXRldzbDRZdEpMbjZKTkNxR0NzM29iandkcUJ4bnd5aGlTUjRKUXlRU283?=
 =?utf-8?B?dlRPdm5iOExGY2FKSVU4T2FncUZHZWIwaDJ5Y2MzSThyenBiL1ExQ0MvL3pz?=
 =?utf-8?B?SDNyTitXV0xHQ1VNQ2NWMmg1NThVaGR3eHN2YnNpQXdvQm1xZTUzZEdkR0wy?=
 =?utf-8?B?NWIrcWEvSER6OTdPTC9TaXZwRjNRVFF4UzRsaTVsN0l1ZExSank4NlNhWTFW?=
 =?utf-8?B?aUpvcTJjalgwVXgxeHV3RWVOYkZidDYzWDA2MS9CdzVhY1hXU29yYnVLcXgx?=
 =?utf-8?B?eGU5c3p4OHpGZVZBd0tVTU1sYVpCOXZhWXAwcldPRzhGRHJETDZGVDArNWNm?=
 =?utf-8?B?b3lvT01ITXkxVzRZVDljaXZ3dWk4cjJvWGV6RjNlOHd0c0tha2FuN2VnbzVD?=
 =?utf-8?B?V1pjenM3dmhBVU1tckpKMGswUTJsKytMKzhJRkF4ZlVHMjhwTUZsVU9wRTM4?=
 =?utf-8?B?c0ZQclVsc1g4NzNubGc5TDJtZi9TYzM4eTNzeTVGY2hyeHVJN1pKeE1rZndP?=
 =?utf-8?B?ZGVxVS80WkNwRDdOZ21QUDIydGp3UzJ6UWI4dWdyY1huVzQ3WTBwUzlPQ3FK?=
 =?utf-8?B?SU9lZTBlaHovSERrNW9XaklCUHFmcFRVbzhwRld4VUIwR0huL3JPazBON2lD?=
 =?utf-8?B?aHUrYm9NRWNucDJqZ1VQaW5XRkFFL2cvVlMrUVVISUtJbXUxZU9oYlJxNjJW?=
 =?utf-8?B?Sm9OdjF6TDhNbWZOKzJoektzUUpCV1VvR1cydHk5SGFHVjNBZ01KVDhrY0Z4?=
 =?utf-8?B?eGkyQzJhUExQdjBrejJMUklJQVIyc1RyY2VDT3AvRWJXT3BmTlI2YWt4WE5v?=
 =?utf-8?B?VzhoanZaM2lkSTZtWGxFUElXMEpUejMwbXNBTkZuTE9mR0ZMKzFMV1l1REVk?=
 =?utf-8?B?eUZlRlVqckpDbUFjS09YSzk3a0g3azBnbnpyS0lwQ2hwaFpSV3h6bHVXQnVS?=
 =?utf-8?B?bUlCOG0rNDJNOXN5WEVJZ0syenVhZnBULzdqbGU0UEtBcDRwNEhCUko4TzQ2?=
 =?utf-8?B?Z2R3Nzl4RUtZQ1lJNnBsYk92ZDlMclhEakYvVDZOa1ZPRWxLMU4yUW5CY2lS?=
 =?utf-8?B?ekVXWUhtVFowSUdpc2lKeklla3VNTXVWeTNNNzBWOUdHU0NaSmF1U3N1amht?=
 =?utf-8?B?YWtyZ2NMRmpTT0VmbENhVEtWY0ZkSVBmbkdsMktEVDYwNnpOaUhBelJnbEU1?=
 =?utf-8?B?bGR5WHBoMERPa3RWWVZhS3hTOEVlbHNBTEVKclk5U1RVcUhjZzNvOWNjdWFT?=
 =?utf-8?B?VXJOMCs3cEdLVjluMEZKK1lRRHp2ZWFtc1RVQkxPeHdwUm42WTYyMUZybytp?=
 =?utf-8?B?aDBJd3NHc0ZtNlEvUXYxM0FXN0ZUakp2WXFMTk90SVF3T25MOGtiZEsxUTlM?=
 =?utf-8?B?QmVyWFpMQmRGT3dvbk9icW5CNllxZ0orN1U0ay9VQmlia3hrcHRFMlRuTmp6?=
 =?utf-8?B?TEtUekNtZmV0VFU0QTVJSzl6L1RCYTNINjNOVzRkRXJIRkE5RkVxaFk3ZWRU?=
 =?utf-8?B?V25hTStKZTg2ZWNvWkpuaUhsKzd2Ym1kUndOaUplaUlzLzNiWWRwR3B6aXQx?=
 =?utf-8?B?b0I5MEpCb0loZzhIMGxWNHhieVplSzBFKzFHa1YwcG9XY1NOMDZvbFFxVXJ2?=
 =?utf-8?B?bTVSTThtNlM2T3poNys3UDFhdlZualluOEdpUUlJQnQvTFV2NWdsUzk2d2hQ?=
 =?utf-8?Q?m7VOrIi3G2JhL?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TDgwVDlPM09UOEFXdWphU2QxS0hGMnhsNTViMTA0Wlllb1lLZmNNRTdDaVBh?=
 =?utf-8?B?WWtGb0pLUVRvcGxUOGR6UEtBVEp0N28zTjVNaEhvTFd5MDJ4UWdEVHEzNHZw?=
 =?utf-8?B?ZUdLZ3c1WnpCYTVudUpqWXhKVHRyb1JQa01KWjRJNGFHc1g4MXB5VDlQR3JT?=
 =?utf-8?B?QjJybUkzSDZKeHNTc3JTUXJCc2JCZ0k4ZDA2UDdLQnpxZVVJcERCNVJJYXZj?=
 =?utf-8?B?SERoQ2h5TVJ1RFFpbmxyVkg3TjlteDNEQ2hSSmJXTlNVZmNlT1d1YXlUY280?=
 =?utf-8?B?VVJyK1BBajBqd01HOGtjQ2NVODNUZWNWOU4xWWhqRXBFNWxHa1lTV0J6QzF6?=
 =?utf-8?B?cGsyYzFSUFFJVWd6ZUh0ZnI2S0FzQW50ampjT29UcWNtaENPY3BhWVpZWjAw?=
 =?utf-8?B?eWJHemNsZXlYRTJuc3I4WlV0K0JsNFdxbVJWeHRMMDBqaEU3K2diQTA4VVBh?=
 =?utf-8?B?b29CdFBrTDJiZFdrUlQ1QStFSDA3YWNQd1o1V240d2FoTlZyZFlEMSt2NjZh?=
 =?utf-8?B?R1JJWG9WMXYwYTJEWnlidGR3UmFHTDRIeENVaDFha0c4VlpKWDBFcTVlcDlS?=
 =?utf-8?B?cXFSRDRodkhac0prOWhiQytIRmxuRkV1UVhKWGJNMlBNNnhYUDVJVlJBUjZS?=
 =?utf-8?B?bmRPc25Zd2xLRzlIWFd1RGZ2bXp6M1lxUkpWeERmT2Q0QTd2NXVSZG90bkpr?=
 =?utf-8?B?cDYxZVBNelNzaFBpU05NQndXbTNvalVIYW43VHJYeTdtTXpxcmk5T1NXRllp?=
 =?utf-8?B?aCtaQkFIM3YvbXJHaCtaQ1VSUFBzZndIY2tWZUFUaXU5WFYxQWxQNzZ5NWcv?=
 =?utf-8?B?VE9taXhhY3pRYVFuandoQ3hRK1ViOHh2eG1PYjM5MW1LTU9ERitTZDJMdG93?=
 =?utf-8?B?N1drUHRraXVBZXFqdHkxYXYyR1NSQi9ldlJwc09ZNHRMZ1pCcDNnOG04R3dE?=
 =?utf-8?B?MjVycWZnNkplZE5PeTBhMzBRemQxOVVJQXRSckRZankvSUVJTzVEay92SmxK?=
 =?utf-8?B?ODlaYWRtWmx2dWxOTWt4UXUvdGFxMzNwa3pnN0JDWndTTnVuYkRvY0s1UDY1?=
 =?utf-8?B?bUdwTEZMWHJjRFFFZ3hQWDV3YmxPZ1lKalkwM0tNbmRZRU1LWW0rc01pK2Vw?=
 =?utf-8?B?OGhvRWpYY21VUlFhZlJrMS9Sa203WmZZTm9lN01xeHhSWlROU21rR3JGNy9U?=
 =?utf-8?B?NmtBUmsxM1hjRjdVNk1qTjJBeDB0WjlTdmt3dkhtRTVyVVZUTmdzMXgyOXBC?=
 =?utf-8?B?YkFYWCtWOVhmdHZRbWVZV3BIc08rekFUTmcvM3VnWEVnT3QxSUpaUXh2R0pJ?=
 =?utf-8?B?aEJEZkVEUjg0bjZZZW8xdk5CWGd0WitVTERCS0xqY25rSEFhT3JRWWFjanUv?=
 =?utf-8?B?THRVeHByOWFSU1hCeE5kY0ovTG1xbUFJS2ZPanBwSUtmZmE3ZXc1b0NTR1ND?=
 =?utf-8?B?UkFJaUp3SG9oZUJFVTVkVTlJVTNaNm0wYXB1L2ZWRlpMYmFDZnJkVHJmRkhi?=
 =?utf-8?B?M0wzRlZNRDI2RDlLb1l5ZG9uM3A2UGdPUkR1TGE3d3JZeUIzazFLOURlTVNF?=
 =?utf-8?B?bldGU29WTWEvMVVkM1hPQ0tVYy9UQWg3OGRsSGMyVFZueFloSStWL2NuU2xw?=
 =?utf-8?B?Um4zekg0emMyMlFMa1l6M21SZ2hVU0JiMlMvY1ZlNllReEUrZFhUeGQ1UW9w?=
 =?utf-8?B?OUZhak12anNTYVJheW5vN2JTWlhiT2FaWXBucWlYNUJtNmhDTU5zcFk4RjFy?=
 =?utf-8?B?SCtuOVQreklDWnFrUHgzTEJ2WWUwVXArVUlNRjh3WXU4akdWYkZrVGxSR0No?=
 =?utf-8?B?cFIxNnZjckxaaWNJSHNROWgvUmlyNFNsSW0zWnlVYXFrd1BtR3FMdmpPeE9v?=
 =?utf-8?B?SFFEQjVPZHlUZUdHbWVHelJVSW90UDJQc1dFdFZNZjByOFg1VVhHZngzeU9h?=
 =?utf-8?B?enVSY1lNZHFieU5LMjFmMWVuMm5QVlhlbW8zT3dXNUtZZXBHNkVGYUljbzlV?=
 =?utf-8?B?bzhBU2dzY0hUYm1iaTJyYmo2alNtNDlFaG4rOWszVTRTVS8xU1JueGdxSEVJ?=
 =?utf-8?B?aDBoYUpQeXdRSExiNkRJOFIvVkVER1RTZUJxTVdhdDdGR0VYMXh6bUlWS1Bh?=
 =?utf-8?Q?s327N1ntljNb9r73+FPbv7J0f?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e8df7ac-99d2-45a9-c300-08dd35713854
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 14:30:55.0892
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F0YunvMpA0j/Vxcgu6DLXcVg+seTyaORNu/wyLhf38239wlkrmzDW2KAi/XlERKX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9453
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B65333F44C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.51:from];
	MIME_TRACE(0.00)[0:+];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.243.51:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: BWHE2PY5LOJ7RYHYK6ESVEZGYZGQQMYJ
X-Message-ID-Hash: BWHE2PY5LOJ7RYHYK6ESVEZGYZGQQMYJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWHE2PY5LOJ7RYHYK6ESVEZGYZGQQMYJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U2VuZGluZyBpdCBhcyB0ZXh0IG1haWwgdG8gdGhlIG1haWxpbmcgbGlzdHMgb25jZSBtb3JlIDoo
DQoNCkNocmlzdGlhbi4NCg0KQW0gMTUuMDEuMjUgdW0gMTU6Mjkgc2NocmllYiBDaHJpc3RpYW4g
S8O2bmlnOg0KPiBBbSAxNS4wMS4yNSB1bSAxNToxNCBzY2hyaWViIEphc29uIEd1bnRob3JwZToN
Cj4+IE9uIFdlZCwgSmFuIDE1LCAyMDI1IGF0IDAyOjQ2OjU2UE0gKzAxMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo+PiBbU05JUF0NCj4+Pj4gWWVhaCwgYnV0IGl0J3MgcHJpdmF0ZSB0byB0
aGUgZXhwb3J0ZXIuIEFuZCBhIHZlcnkgZnVuZGFtZW50YWwgcnVsZSBvZg0KPj4+PiBETUEtYnVm
IGlzIHRoYXQgdGhlIGV4cG9ydGVyIGlzIHRoZSBvbmUgaW4gY29udHJvbCBvZiB0aGluZ3MuDQo+
PiBJJ3ZlIHNhaWQgYSBmZXcgdGltZXMgbm93LCBJIGRvbid0IHRoaW5rIHdlIGNhbiBidWlsZCB0
aGUga2luZCBvZg0KPj4gYnVmZmVyIHNoYXJpbmcgZnJhbWV3b3JrIHdlIG5lZWQgdG8gc29sdmUg
YWxsIHRoZSBwcm9ibGVtcyB3aXRoIHRoaXMNCj4+IHBoaWxvc29waHkuIEl0IGlzIGFsc28gaW5l
ZmZpY2llbnQgd2l0aCB0aGUgbmV3IERNQSBBUEkuDQo+Pg0KPj4gSSB0aGluayBpdCBpcyBiYWNr
d2FyZHMgbG9va2luZyBhbmQgd2UgbmVlZCB0byBtb3ZlIGZvcndhcmRzIHdpdGgNCj4+IGZpeGlu
ZyB0aGUgZnVuZGFtZW50YWwgQVBJIGlzc3VlcyB3aGljaCBtb3RpdmF0ZWQgdGhhdCBkZXNpZ24u
DQo+DQo+IEFuZCB0aGF0J3Mgd2hhdCBJIGNsZWFybHkgc2VlIGNvbXBsZXRlbHkgZGlmZmVyZW50
Lg0KPg0KPiBUaG9zZSBydWxlcyBhcmUgbm90IHNvbWV0aGluZyB3ZSBjYW0gdXAgd2l0aCBiZWNh
dXNlIG9mIHNvbWUgDQo+IGxpbWl0YXRpb24gb2YgdGhlIERNQS1BUEksIGJ1dCByYXRoZXIgZnJv
bSBleHBlcmllbmNlIHdvcmtpbmcgd2l0aCANCj4gZGlmZmVyZW50IGRldmljZSBkcml2ZXIgYW5k
IGVzcGVjaWFsbHkgdGhlaXIgZGV2ZWxvcGVycy4NCj4NCj4gQXBwbHlpbmcgYW5kIGVuZm9yY2lu
ZyB0aG9zZSByZXN0cmljdGlvbnMgaXMgYWJzb2x1dGVseSBtYW5kYXRvcnkgbXVzdCANCj4gaGF2
ZSBmb3IgZXh0ZW5kaW5nIERNQS1idWYuDQo+DQo+Pj4+IFNvIGZvciBleGFtcGxlIGl0IGlzIGls
bGVnYWwgZm9yIGFuIGltcG9ydGVyIHRvIHNldHVwIENQVSBtYXBwaW5ncyB0byBhDQo+Pj4+IGJ1
ZmZlci4gVGhhdCdzIHdoeSB3ZSBoYXZlIGRtYV9idWZfbW1hcCgpIHdoaWNoIHJlZGlyZWN0cyBt
bWFwKCkNCj4+Pj4gcmVxdWVzdHMgZnJvbSB0aGUgaW1wb3J0ZXIgdG8gdGhlIGV4cG9ydGVyLg0K
Pj4gTGlrZSB0aGlzLCBpbiBhIGZ1dHVyZSBuby1zY2F0dGVyIGxpc3Qgd29ybGQgSSB3b3VsZCB3
YW50IHRvIG1ha2UgdGhpcw0KPj4gc2FmZS4gVGhlIGltcG9ydGVyIHdpbGwgaGF2ZSBlbm91Z2gg
aW5mb3JtYXRpb24gdG8ga25vdyBpZiBDUFUNCj4+IG1hcHBpbmdzIGV4aXN0IGFuZCBhcmUgc2Fm
ZSB0byB1c2UgdW5kZXIgd2hhdCBjb25kaXRpb25zLg0KPj4NCj4+IFRoZXJlIGlzIG5vIHJlYXNv
biB0aGUgaW1wb3J0ZXIgc2hvdWxkIG5vdCBiZSBhYmxlIHRvIENQVSBhY2Nlc3MNCj4+IG1lbW9y
eSB0aGF0IGlzIEhXIHBlcm1pdHRlZCB0byBiZSBDUFUgYWNjZXNzaWJsZS4NCj4+DQo+PiBJZiB0
aGUgaW1wb3J0ZXIgbmVlZHMgQ1BVIGFjY2VzcyBhbmQgdGhlIGV4cG9ydGVyIGNhbm5vdCBwcm92
aWRlIGl0DQo+PiB0aGVuIHRoZSBhdHRhY2htZW50IHNpbXBseSBmYWlscy4NCj4+DQo+PiBTYXlp
bmcgQ1BVIGFjY2VzcyBpcyBiYW5uZWQgMTAwJSBvZiB0aGUgdGltZSBpcyBub3QgYSBoZWxwZnVs
IHBvc2l0aW9uDQo+PiB3aGVuIHdlIGhhdmUgdXNlIGNhc2VzIHRoYXQgbmVlZCBpdC4NCj4NCj4g
VGhhdCBhcHByb2FjaCBpcyBhbiBhYnNvbHV0ZWx5IG5vLWdvIGZyb20gbXkgc2lkZS4NCj4NCj4g
V2UgaGF2ZSBmdWxseSBpbnRlbnRpb25hbGx5IGltcGxlbWVudGVkIHRoZSByZXN0cmljdGlvbiB0
aGF0IGltcG9ydGVycyANCj4gY2FuJ3QgQ1BVIGFjY2VzcyBETUEtYnVmIGZvciBib3RoIGtlcm5l
bCBhbmQgdXNlcnNwYWNlIHdpdGhvdXQgZ29pbmcgDQo+IHRocm91Z2ggdGhlIGV4cG9ydGVyIGJl
Y2F1c2Ugb2YgZGVzaWduIHJlcXVpcmVtZW50cyBhbmQgYSBsb3Qgb2YgDQo+IG5lZ2F0aXZlIGV4
cGVyaWVuY2Ugd2l0aCBleGFjdGx5IHRoaXMgYXBwcm9hY2guDQo+DQo+IFRoaXMgaXMgbm90IHNv
bWV0aGluZyB3aGljaCBpcyBkaXNjdXNzLWFibGUgaW4gYW55IHdheSBwb3NzaWJsZS4NCj4NCj4+
Pj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGF0IGlzIHJlYWxseSBub3QgYW4gdXNlIGNhc2Ugd2hp
Y2ggZml0cyBETUEtYnVmIGluDQo+Pj4+IGFueSB3YXkuDQo+PiBJIHJlYWxseSBkb24ndCB3YW50
IHRvIG1ha2UgYSBkbWFidWYyIC0gZXZlcnlvbmUgd291bGQgaGF2ZSB0bw0KPj4gaW1wbGVtZW50
IGl0LCBpbmNsdWRpbmcgYWxsIHRoZSBHUFUgZHJpdmVycyBpZiB0aGV5IHdhbnQgdG8gd29yayB3
aXRoDQo+PiBSRE1BLiBJIGRvbid0IHRoaW5rIHRoaXMgbWFrZXMgYW55IHNlbnNlIGNvbXBhcmVk
IHRvIGluY3JlbWVudGFsbHkNCj4+IGV2b2x2aW5nIGRtYWJ1ZiB3aXRoIG1vcmUgb3B0aW9uYWwg
Y2FwYWJpbGl0aWVzLg0KPg0KPiBUaGUgcG9pbnQgaXMgdGhhdCBhIGRtYWJ1ZjIgd291bGQgbW9z
dCBsaWtlbHkgYmUgcmVqZWN0ZWQgYXMgd2VsbCBvciANCj4gb3RoZXJ3aXNlIHJ1biBpbnRvIHRo
ZSBzYW1lIGlzc3VlcyB3ZSBoYXZlIHNlZW4gYmVmb3JlLg0KPg0KPj4+Pj4+IFRoYXQgc291bmRz
IG1vcmUgc29tZXRoaW5nIGZvciB0aGUgVEVFIGRyaXZlciBpbnN0ZWFkIG9mIGFueXRoaW5nIERN
QS1idWYNCj4+Pj4+PiBzaG91bGQgYmUgZGVhbGluZyB3aXRoLg0KPj4+Pj4gSGFzIG5vdGhpbmcg
dG8gZG8gd2l0aCBURUUuDQo+Pj4+IFdoeT8NCj4+IFRoZSBMaW51eCBURUUgZnJhbWV3b3JrIGlz
IG5vdCB1c2VkIGFzIHBhcnQgb2YgY29uZmlkZW50aWFsIGNvbXB1dGUuDQo+Pg0KPj4gQ0MgYWxy
ZWFkeSBoYXMgZ3Vlc3QgbWVtZmQgZm9yIGhvbGRpbmcgaXQncyBwcml2YXRlIENQVSBtZW1vcnku
DQo+DQo+IFdoZXJlIGlzIHRoYXQgY29taW5nIGZyb20gYW5kIGhvdyBpdCBpcyB1c2VkPw0KPg0K
Pj4gVGhpcyBpcyBhYm91dCBjb25maWRlbnRpYWwgTU1JTyBtZW1vcnkuDQo+DQo+IFdobyBpcyB0
aGUgZXhwb3J0ZXIgYW5kIHdobyBpcyB0aGUgaW1wb3J0ZXIgb2YgdGhlIERNQS1idWYgaW4gdGhp
cyB1c2UgDQo+IGNhc2U/DQo+DQo+PiBUaGlzIGlzIGFsc28gbm90IGp1c3QgYWJvdXQgdGhlIEtW
TSBzaWRlLCB0aGUgVk0gc2lkZSBhbHNvIGhhcyBpc3N1ZXMNCj4+IHdpdGggRE1BQlVGIGFuZCBD
QyAtIG9ubHkgY28tb3BlcmF0aW5nIGRldmljZXMgY2FuIGludGVyYWN0IHdpdGggdGhlDQo+PiBW
TSBzaWRlICJlbmNyeXB0ZWQiIG1lbW9yeSBhbmQgdGhlcmUgbmVlZHMgdG8gYmUgYSBuZWdvdGlh
dGlvbiBhcyBwYXJ0DQo+PiBvZiBhbGwgYnVmZmVyIHNldHVwIHdoYXQgdGhlIG11dHVhbCBjYXBh
YmlsaXR5IGlzLiA6XCBzd2lvdGxiIGhpZGVzDQo+PiBzb21lIG9mIHRoaXMgc29tZSB0aW1lcywg
YnV0IGNvbmZpZGVudGlhbCBQMlAgaXMgY3VycmVudGx5IHVuc29sdmVkLg0KPg0KPiBZZXMgYW5k
IGl0IGlzIGRvY3VtZW50ZWQgYnkgbm93IGhvdyB0aGF0IGlzIHN1cHBvc2VkIHRvIGhhcHBlbiB3
aXRoIA0KPiBETUEtYnVmLg0KPg0KPiBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoZXJlIGlzIG5vdCBt
dWNoIG5ldyBhcHByb2FjaCBoZXJlLg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+
PiBKYXNvbg0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
