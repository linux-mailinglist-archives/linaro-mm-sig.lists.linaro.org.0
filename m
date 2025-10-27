Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E8076C0D692
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 13:09:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B63E3F7C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 12:09:23 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012016.outbound.protection.outlook.com [40.93.195.16])
	by lists.linaro.org (Postfix) with ESMTPS id 247F03F77E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 12:09:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=cvnz+lbs;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.195.16 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i7ymwHihQj5LHyYcPmA4oOgAVWqMw6bz3XdLAt9uDhbhY6bk+rB1EOZsKryCpKE09x97Bi/TrT8iOOJDWDXk73Et01gJiukRL2lYjj2yqd+Ek1QruBgc7eEz5C4kFq/hMTxM7B4ffllMEGF9yqO4KTlS7tmEsrcYimeABSgyf+9fTfww6iLPaU570E6UyXkWwCS0gUnKoJBOrxcRZYiUSYQau3sVxL1WpFA7S8+EqMqFiA3HbCr8+fiM5zAPetZfAOjFEc8SpN2uzZ54nQtgSVJwZjg8jTtwYF1i5YxqYXB9vqeNwDNYWGc6p/H3slJH1feu79Tnl0NFYkeVdrPckg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cBs/l5l606+H1bSQpmh8tseVZlkb7Cav1y6/HQF2BKM=;
 b=uezvAB1AfN46RMh4wMFJBC2QdyvN/D8H0aCIhH6zYXsjYuzzwFLBEZFjcYSEOMFH3CIieN0CMyPGeH1MoJSlkNhbe0mHq0YvPAA81wSi7hkSKiqp4cxzGj97HAxHR3u96RKKGcGCQXSVJH+dgK0wo5AEIwTXw1L7CDIxbTcEe1qDdlUA4rHU9v33JSgucd1qadJb1IqYWX2GgosLlpRK+ryOagrAASYx2AhvDGe+/81uySjy++uot26jspZtEmj4kCIV6ctcawa44xStLVFFyZEdOI/GtJv2tj//J6jKq3zEWn2Gh8W3hSJZWS1DlaHzDHXnnk6K4Vk+TK13Fx5sPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cBs/l5l606+H1bSQpmh8tseVZlkb7Cav1y6/HQF2BKM=;
 b=cvnz+lbsVOHCym2szh81rvEO2IVGoKvvZyTitl/Q8hso9/d2ewZkLuLE/kS4qI4Q69Uwk9hm6jurLGFgViF0ZE0Qd0jYqUalHUWi7PB2r9typt4G96xBgIVtgu7gb4cUQmQShEqs7tWef55znkwXyqDCQ9kmszMeVB5NLupl/zebY3YEoaTxpaLQgbrUOtqdXVvpYaGYAzlvN0sOq55M3aVLCiRnubfgF1OslRt7afgW84y4PkbkkMT9/plJ0zbIS95+vA/y8Dkx7anXp9ekVjjXk39W67CP+EoWQTNNOMnI8gCrYFsoXyxsWhOPkTqxmLScfnQRMClWWyXEYPvk/A==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by SA1PR12MB6872.namprd12.prod.outlook.com (2603:10b6:806:24c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 12:09:06 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 12:09:06 +0000
Date: Mon, 27 Oct 2025 09:09:04 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Shuai Xue <xueshuai@linux.alibaba.com>
Message-ID: <20251027120904.GA896317@nvidia.com>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <20251022125012.GB244727@nvidia.com>
 <3db524e7-b6ce-4652-8420-fdb4639ac73a@linux.alibaba.com>
Content-Disposition: inline
In-Reply-To: <3db524e7-b6ce-4652-8420-fdb4639ac73a@linux.alibaba.com>
X-ClientProxiedBy: MN2PR16CA0050.namprd16.prod.outlook.com
 (2603:10b6:208:234::19) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|SA1PR12MB6872:EE_
X-MS-Office365-Filtering-Correlation-Id: 1887583c-8be2-4b71-b55b-08de1551a02c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cnFyU21zdDFCMmcrOFlaejlnM1RuaElhWVpDOXcveW1ER0VCU1drMVBEc0hO?=
 =?utf-8?B?ZmNZeWM1N0VpWjF4ZmR1NzM3dHFDWnNYNUl4emRzTDFtcUhtYjlaWEJILzRo?=
 =?utf-8?B?Rk1nOWk2S1JYT09XRWphL2pVL2lGRi9pL1dYeU1uODhnTVJ1Qi8yT1BaZEhr?=
 =?utf-8?B?ZzNLWHg4ekdmRnFiY2c4UkFtcnRuV20yQnl6SkVnekJmamlxU0xQZjl6T2Jv?=
 =?utf-8?B?akF2UklYbHdoN01BcnIyNk9VUFk0R1pJSTFwbVNqdFZFcUpJR2FPZ0ZnM0lV?=
 =?utf-8?B?UEZBaXdNbXN5VmhkMk9QTXRaaERUeVhBQWx2UjdOVSthZnBITksyaU03ZFY2?=
 =?utf-8?B?bWw4Q1NwRFV1WXY0ZzlMbnA3ODBPamk3NVNZZUN5TlNJVnR0WWlIZlJtM1hW?=
 =?utf-8?B?OFp6dHZQOVNkbDJibFdjWk43Z3Y3L0hyMitUWW1FUkNHdElLZ2JoQjd1QTVo?=
 =?utf-8?B?cFlNb2w3MkxqdERaaUFiRXU4TWowWlljR0lLblMraEFuelpmZlFHa04yd2Vk?=
 =?utf-8?B?VUxHK2puUml4bTg1eWtXMi8xbG92anp4LytkdVQ0Tk0zS3VpbU9vZEdheGlp?=
 =?utf-8?B?TzRmYmRlYko3TXJFMGUxbDF6Q1h2c2pPNzNjcm5SK3Jpb1RaK2NsckpIS2Rx?=
 =?utf-8?B?K0hDWGI5WHpka0lDQmtnaEpvZGpUL3FiU1RGeHhsYjlISFc0eFcxNkR0bUN3?=
 =?utf-8?B?SVFnUjFhQWZQV2p4MUV4K29JdUhSR2x4MEFIY0R3VFo0RTdSMEJPeUhSNDZt?=
 =?utf-8?B?U1p5SWVJaG03NExvZEU3YWZHeGlFK21YLyswdkRZVU9ZTmhMVk15cURUZk56?=
 =?utf-8?B?WjF4R0ZJZjBWWllNTXhWd0NRSEN2SUIxeWxlUjcwWmFIU2o1bzIwbmZRb1FK?=
 =?utf-8?B?Q3d1Um1lYllBTHE3U3hhWUViL3c1c0hMVTNyNXp2UWJtbUpCdFpXNjVZYVFN?=
 =?utf-8?B?aEdTQ3BuRHIrd3FzVWNaenhTdHlOSnhEWmVhdU5MMGVhUEI1ZlhSM2l4Z3FO?=
 =?utf-8?B?eklqZnZnaVM2cWxIQllnZFZ5MEpXTmlDZEMxK1VRYUcwaU56VGhtbURBTjhE?=
 =?utf-8?B?TTIrVGhNaUhCRVB1TVlqRTQvZE1tekllWjNnRXkrbG54Vm1ZN29iL3JYY293?=
 =?utf-8?B?K0pZbWN2UzhuYkhXUUF2SVVLTTN2cG1tcUo0ZkVUSm5Qc1A1Yk5Kak5Ed3hV?=
 =?utf-8?B?c0RvdTFZOG1DRldGcVEycXlianU2ci9GTnZUQ2NlalQya2p5bXNTQjNMUndk?=
 =?utf-8?B?S3JSVHFJenlRdDhmVGRCd3VVVFJDMzU3aDdvOEQ1bU9KY2sxaE5rQk9MZFRS?=
 =?utf-8?B?Rlhab1FiTjdwWXpMcXhqYzhpb0lzUGtRS096R2tyazZwVDVGVGxrZUVRazNv?=
 =?utf-8?B?Q3Y5VVNWQVBLcGFVOGovZE5mR2Q5MkpDSDZlUmptc2p0MXN4THIwT3JkNlNP?=
 =?utf-8?B?amhNeEUyak1jR0ZrSURXNDhEaWU5TXVFM2pKaHpwOCtWK1B6MkhvRW01OEU2?=
 =?utf-8?B?eDlyWnJFMXBFZWh1MjhiSCs1dHFoZTZQeFVmeWd3N29ZVE9IY0FlTk45d3p3?=
 =?utf-8?B?Vm4wUmZiMnVhelBxY1RXdTR3VTluWmIwWkl3d0hJQVFUZld2eGpPaWVuNjhN?=
 =?utf-8?B?a2VyUHJyYXR1Tnp1ZW10cGY3RmFIQUZPU1JKSHpCaUZlVUwyR2RjRzdoZGNx?=
 =?utf-8?B?anE2bnQvV2UvcjE2dU1veEVmOE1CdnlENFR0Smg1MHMwb0pMa1E3QmJ3RmFl?=
 =?utf-8?B?QVBnbnVua2VVeWoyQkNxd25GcWRGbFFxbVNtTHd5Vnd5ZmVZWjFxUEJ0akk0?=
 =?utf-8?B?OWFJcEdGc0w3cWhsTDRIckVLUy9EaUQ1ODZwbC9jZ3hTVVhPc0R0QjVZMW0z?=
 =?utf-8?B?M1ZzL2RyRGFIVlpwT1V5cjAzaFdGcTFaYUVmdlZQYXp6Szd3YU05K1plUmh3?=
 =?utf-8?Q?rmpXPkGIkb86/8DQQyJxuSSbGJOoSkXH?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RXRNM3VjVGpMRTVGUFl6QU9ENzlORFllVWlmK2ZHVWhFM3pGUEJtM25OVTNU?=
 =?utf-8?B?RkMvdFZ2WExkQ2RkY2k1STVyYktsL1haMzZJYjJiWDc2Rzd6YzBIQlR5UXdB?=
 =?utf-8?B?ZmFZVzMwbklOd0ltY1RrN3VQRUJNREtiS01ZazlyNjAzaDhNNDZmK0w5bm83?=
 =?utf-8?B?MmowckJ6VTJ5VEl4a3l6OWQ1Y1hzVUFJUUgxRGI2amZoSDVobzAwQmUxcGc4?=
 =?utf-8?B?SEwrUXRsTUZmRlhSOFcya0hZdFZNdkNFVkw1VlFwcE00VXhPOE42ZTI1YnBj?=
 =?utf-8?B?L0xweXhiQXNJQXNTeFc1QlJvZnB6OHo4RmRlNnl1ZzJWNFdVWU1WTDRER0xj?=
 =?utf-8?B?aHg5b1gxL0VOQlRKNnpidnVwbWtrS1Q5bEZsUjRQK01rYkpJN1RiZjAvNFVq?=
 =?utf-8?B?R3hrVFhJUjlxR2V1cGZPWk5iN2NrY0FEcFdrZE9QOWpxcXVaU0E4cTJueUx1?=
 =?utf-8?B?K1BSRmlYa3RtcjBoMDFzSnpnTUZhbDFtdEszVzdQMUhSM0pvQVM0bStjYmFr?=
 =?utf-8?B?cFYyNVk4eXBpWFlpZFRyT0pMMzBqOW0zSjVVMzUyMS9iZUdGd3hCT0c0bEZs?=
 =?utf-8?B?L3ZFeWNTV1V6UEZ1emJta0hWM2pBRDJNUlh3T1VnaGcvTTZIcFkvK0V3MzRz?=
 =?utf-8?B?eFN4ZXdZejZJZVIvZUJKeko5V2t6WlhsT3FDTkcwOXJ3aU1uakc1NkVTNTdy?=
 =?utf-8?B?eitaTGIvYVlHVnFKc2pWdjlQNGIveTVieGMvZ2l2TnYrbkVhcGdZRVBWU0o0?=
 =?utf-8?B?Z2RVQmhFd0JaY1VSbnc1dmNhaTVZTEFNcU5VdWpFRG54dmFkTllIc21oRldO?=
 =?utf-8?B?akx3ekEzcW1EZ1hwcmpUNHBzMGNMVVNhd2FqVHVzVWdiZUdDS0QvTDk1QjdQ?=
 =?utf-8?B?WmtHWk9kcm0wN2VtUTA0VTNaL2Y0a1ZHeUZHL0FVUmNLRWhTYlpUZGZZOWk2?=
 =?utf-8?B?MDlrd1ZuNTQyS0VGYThhUEYvOGtkR1hYQkk5Q0liUHYxbDZYckw4LzQvVk1W?=
 =?utf-8?B?RXZrK3FQR3J2SEZ0WHF6Zkx1eWtwekZaQzRkTUtmZGdadlBTdWJzRlpEQ29j?=
 =?utf-8?B?bDQ2dnQ5eENBNGl4am15cExGeERqSi91ZVUzWnFLbUh3cXlWYVBNVDczN21B?=
 =?utf-8?B?ZkxCSTFZODh2eDJ3VUE5Q2FhdWdUdzVDNVpqVERFQTYxZVA4RWs1MkErYzJQ?=
 =?utf-8?B?Mm90VERhN1JiekNqMmFQRy9sdHYxcE1lTHpuR0U0dkVMY29LSkVzdEljdkc2?=
 =?utf-8?B?VjFrK2tWcE9saFVMbDdJUS80VTAxN2VBUWt2K0lRaW52WGFKejBELzdRazFR?=
 =?utf-8?B?bm5TUHN4Q0R0WFQzTnBXaDFVaCtnSFdWY1RidFpMQ1ZwQTFGcmlhWE1QUU15?=
 =?utf-8?B?R01zT3VWeU94K2lVcGhSYmtPdW1nd0lOYjNsQzlTVENLbmJVN1IyVXQ4MElP?=
 =?utf-8?B?ckxNWTdUTE9FYlNxZ1VyQW0yZkpXMVZmMTNjcGU0MUNCS0t3NStkOCtzL3Qw?=
 =?utf-8?B?cVlDMkRhN2JBeVlmNFVzZU9NRWEraEhSak5GYTloS1VaY0wyZTJjM3pNWFJo?=
 =?utf-8?B?UmkvOVU0TUZzU0RVWTNKNDIxZk9YaGk1Q2s4UXUzQ1ZkRzJ3Tlpid2N4aC81?=
 =?utf-8?B?bk9oSFFHaVZ3dnFoUU5QcE5aTEtTbVp0Ni9iTGVDMFF3eEJITEV4TlhDRDB2?=
 =?utf-8?B?ZUdITS9JVU5wZ0NabmZsR1F1RGd2OE1Yem5xYVFzSExEblNiNTRMeVRGV0pN?=
 =?utf-8?B?RUZUNGM0SHZiRUE0aXdzNm5wbENzNGpmMVA0MThxWW96K25kUitNOUROa0JY?=
 =?utf-8?B?YkRDbEVqZjcvREZUWUlnZjZwRG82UGZaTlpMV2V5MUZmeVpsZVJzNVdqTlBM?=
 =?utf-8?B?S0NHaXFrL0dVblZPRldtMm5OODQxL3lkNVRkaDZhaklaS3NydVcvY1J3b01n?=
 =?utf-8?B?MHp3WURUZ2tPNFlBSENhUGQzTE4rMi9oNkQ2TU16WC9pTy8xVlFFYVZwVVk3?=
 =?utf-8?B?Z0laaGRpbGFuVm5kbFpxWjdDa1BNOE1Sb3dDOEdTeENzUlRvcXF1Zk9KYlJR?=
 =?utf-8?B?clg4THJkWEFrUU5ZV0xrQVVYaTkzd0NvaFJ6SW5aTDJzV016S2t0KzlJeTdO?=
 =?utf-8?Q?jmNs=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1887583c-8be2-4b71-b55b-08de1551a02c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 12:09:06.2764
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /jioCEvMD+vbYQxtsp3YSORIFv1o0aoA0FuNIuLXqKFHc2H0MoqEd0ROqePK9guQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6872
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 247F03F77E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.195.16:from];
	DWL_DNSWL_BLOCKED(0.00)[Nvidia.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.93.195.16:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[2603:10b6:208:c1::17:received];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: YU7IWSR6M34574T6QPW4VTXDSDM4SLYC
X-Message-ID-Hash: YU7IWSR6M34574T6QPW4VTXDSDM4SLYC
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YU7IWSR6M34574T6QPW4VTXDSDM4SLYC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBPY3QgMjYsIDIwMjUgYXQgMDM6NTU6MDRQTSArMDgwMCwgU2h1YWkgWHVlIHdyb3Rl
Og0KPiANCj4gDQo+IOWcqCAyMDI1LzEwLzIyIDIwOjUwLCBKYXNvbiBHdW50aG9ycGUg5YaZ6YGT
Og0KPiA+IE9uIE1vbiwgT2N0IDEzLCAyMDI1IGF0IDA2OjI2OjExUE0gKzAzMDAsIExlb24gUm9t
YW5vdnNreSB3cm90ZToNCj4gPiA+IEZyb206IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRp
YS5jb20+DQo+ID4gPiANCj4gPiA+IEFkZCBzdXBwb3J0IGZvciBleHBvcnRpbmcgUENJIGRldmlj
ZSBNTUlPIHJlZ2lvbnMgdGhyb3VnaCBkbWEtYnVmLA0KPiA+ID4gZW5hYmxpbmcgc2FmZSBzaGFy
aW5nIG9mIG5vbi1zdHJ1Y3QgcGFnZSBtZW1vcnkgd2l0aCBjb250cm9sbGVkDQo+ID4gPiBsaWZl
dGltZSBtYW5hZ2VtZW50LiBUaGlzIGFsbG93cyBSRE1BIGFuZCBvdGhlciBzdWJzeXN0ZW1zIHRv
IGltcG9ydA0KPiA+ID4gZG1hLWJ1ZiBGRHMgYW5kIGJ1aWxkIHRoZW0gaW50byBtZW1vcnkgcmVn
aW9ucyBmb3IgUENJIFAyUCBvcGVyYXRpb25zLg0KPiA+ID4gDQo+ID4gPiBUaGUgaW1wbGVtZW50
YXRpb24gcHJvdmlkZXMgYSByZXZvY2FibGUgYXR0YWNobWVudCBtZWNoYW5pc20gdXNpbmcNCj4g
PiA+IGRtYS1idWYgbW92ZSBvcGVyYXRpb25zLiBNTUlPIHJlZ2lvbnMgYXJlIG5vcm1hbGx5IHBp
bm5lZCBhcyBCQVJzDQo+ID4gPiBkb24ndCBjaGFuZ2UgcGh5c2ljYWwgYWRkcmVzc2VzLCBidXQg
YWNjZXNzIGlzIHJldm9rZWQgd2hlbiB0aGUgVkZJTw0KPiA+ID4gZGV2aWNlIGlzIGNsb3NlZCBv
ciBhIFBDSSByZXNldCBpcyBpc3N1ZWQuIFRoaXMgZW5zdXJlcyBrZXJuZWwNCj4gPiA+IHNlbGYt
ZGVmZW5zZSBhZ2FpbnN0IHBvdGVudGlhbGx5IGhvc3RpbGUgdXNlcnNwYWNlLg0KPiA+IA0KPiA+
IExldCdzIGVuaGFuY2UgdGhpczoNCj4gPiANCj4gPiBDdXJyZW50bHkgVkZJTyBjYW4gdGFrZSBN
TUlPIHJlZ2lvbnMgZnJvbSB0aGUgZGV2aWNlJ3MgQkFSIGFuZCBtYXANCj4gPiB0aGVtIGludG8g
YSBQRk5NQVAgVk1BIHdpdGggc3BlY2lhbCBQVEVzLiBUaGlzIG1hcHBpbmcgdHlwZSBlbnN1cmVz
DQo+ID4gdGhlIG1lbW9yeSBjYW5ub3QgYmUgdXNlZCB3aXRoIHRoaW5ncyBsaWtlIHBpbl91c2Vy
X3BhZ2VzKCksIGhtbSwgYW5kDQo+ID4gc28gb24uIEluIHByYWN0aWNlIG9ubHkgdGhlIHVzZXIg
cHJvY2VzcyBDUFUgYW5kIEtWTSBjYW4gc2FmZWx5IG1ha2UNCj4gPiB1c2Ugb2YgdGhlc2UgVk1B
LiBXaGVuIFZGSU8gc2h1dHMgZG93biB0aGVzZSBWTUFzIGFyZSBjbGVhbmVkIGJ5DQo+ID4gdW5t
YXBfbWFwcGluZ19yYW5nZSgpIHRvIHByZXZlbnQgYW55IFVBRiBvZiB0aGUgTU1JTyBiZXlvbmQg
ZHJpdmVyDQo+ID4gdW5iaW5kLg0KPiA+IA0KPiA+IEhvd2V2ZXIsIFZGSU8gdHlwZSAxIGhhcyBh
biBpbnNlY3VyZSBiZWhhdmlvciB3aGVyZSBpdCB1c2VzDQo+ID4gZm9sbG93X3Bmbm1hcF8qKCkg
dG8gZmlzaCBhIE1NSU8gUEZOIG91dCBvZiBhIFZNQSBhbmQgcHJvZ3JhbSBpdCBiYWNrDQo+ID4g
aW50byB0aGUgSU9NTVUuIFRoaXMgaGFzIGEgbG9uZyBoaXN0b3J5IG9mIGVuYWJsaW5nIFAyUCBE
TUEgaW5zaWRlDQo+ID4gVk1zLCBidXQgaGFzIHNlcmlvdXMgbGlmZXRpbWUgcHJvYmxlbXMgYnkg
YWxsb3dpbmcgYSBVQUYgb2YgdGhlIE1NSU8NCj4gPiBhZnRlciB0aGUgVkZJTyBkcml2ZXIgaGFz
IGJlZW4gdW5ib3VuZC4NCj4gDQo+IEhpLCBKYXNvbiwNCj4gDQo+IENhbiB5b3UgZWxhYm9yYXRl
IG9uIHRoaXMgbW9yZT8NCj4gDQo+IEZyb20gbXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgVkZJTyB0
eXBlIDEgaW1wbGVtZW50YXRpb246DQo+IA0KPiAtIFdoZW4gYSBkZXZpY2UgaXMgb3BlbmVkIHRo
cm91Z2ggVkZJTyB0eXBlIDEsIGl0IGluY3JlbWVudHMgdGhlDQo+ICAgZGV2aWNlLT5yZWZjb3Vu
dA0KPiAtIER1cmluZyB1bmJpbmQsIHRoZSBkcml2ZXIgd2FpdHMgZm9yIHRoaXMgcmVmY291bnQg
dG8gZHJvcCB0byB6ZXJvIHZpYQ0KPiAgIHdhaXRfZm9yX2NvbXBsZXRpb24oJmRldmljZS0+Y29t
cCkNCj4gLSBUaGlzIHNob3VsZCBwcmV2ZW50IHRoZSB1bmJpbmQoKSBmcm9tIGNvbXBsZXRpbmcg
d2hpbGUgdGhlIGRldmljZSBpcw0KPiAgIHN0aWxsIGluIHVzZQ0KPiANCj4gR2l2ZW4gdGhpcyBy
ZWZjb3VudCBtZWNoYW5pc20sIEkgZG8gbm90IGZpZ3VyZSBvdXQgaG93IHRoZSBVQUYgY2FuDQo+
IG9jY3VyLg0KDQpBIHNlY29uZCB2ZmlvIGRldmljZSBjYW4gYmUgb3BlbmVkIGFuZCB0aGVuIHVz
ZSBmb2xsb3dfcGZubWFwXyooKSB0bw0KcmVhZCB0aGUgZmlyc3QgdmZpbyBkZXZpY2UncyBQVEVz
LiBUaGVyZSBpcyBubyByZWxhdGlvbnNoaXAgYmV0d2VlbnQNCnRoZSBmaXJzdCBhbmQgc2Vjb25k
IFZGSU8gZGV2aWNlcywgc28gb25jZSB0aGUgZmlyc3QgaXMgdW5ib3VuZCBpdA0Kc2FpbHMgdGhy
b3VnaCB0aGUgZGV2aWNlLT5jb21wIHdoaWxlIHRoZSBzZWNvbmQgZGV2aWNlIHJldGFpbnMgdGhl
IFBGTg0KaW4gaXRzIHR5cGUxIGlvbW11X2RvbWFpbi4NCg0KSmFzb24NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
