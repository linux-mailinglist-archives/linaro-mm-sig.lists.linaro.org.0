Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D4BC0C2BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 08:42:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12A693F7F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 07:42:07 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010015.outbound.protection.outlook.com [52.101.46.15])
	by lists.linaro.org (Postfix) with ESMTPS id A7E223F78E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 07:41:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=cPrbPUzb;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.15 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YGJOHbrq8tTwyGwtSEOV+bZnqu+947JOhQT1nWEyVCJbTYK2jQXqLAmgsuxsn4hyJ7bDh61NLx71VBXqfrwz4pHAJVKSknWijfl+f4jHhg2yH+ayjenMZQy70neWmLh+jp/PuRd3uvTbvWRZ2fexDWdLfx4Ww6cixcDm/+Il8U0Lmeqde5rbP1yX5e/7EqgGZTzfNIziJxsecPUjFLvUJHiNkvACLQiL80qs/bWbiG/X8K6tNobb3/bhA2DwFC5hnoxTQ54Gk2mubBIfR+VqHOwJekqhdPUM20kIJrCyypyCOGA8gaSSuhvHmaWTVl792S9HkrYCkKQpxtJJTwUvfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qbgsrjunrc1uN/Ez/FcFpDbxwvyBQkSMJM/WPzeoe0U=;
 b=wbsJqnvgpClATNegTcCb1fY+xZqMBqNyd7cVXk3sovPZfouP5ptzz1x/U2qsguLs5+oYBx3YLtWpor71ZzXShv/51owtQa7sdubmadO6EFY1QSO2x8DUU2/bAaot26RhiuZFcrgDh63XKVkINn1v6xf1UcS1LnuBmraAsu+9dVvtRk1nS5XzaKf0xuiWB2ToDVjB8CB89whu3fcaOS3TofPLPrVFUIGfg2Sd7M41oL2MLjfre2/exLnvkBfqqnUcwSZh/iKJUBaCCvsgjNeoJJvlkPmoGCKSZL4SY+2FbedjA5bH/jpvlj7mJ5FVfTBf7gDQWPdvJhu/Yle3rULH1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qbgsrjunrc1uN/Ez/FcFpDbxwvyBQkSMJM/WPzeoe0U=;
 b=cPrbPUzbWgWAgB4A7A8h1pGzWnAPu5092FkfYMrbMTiGWOo3o+buUuI7DyK1hq009qsD2TOUbcTah0l2MmMDCRNV4xwGX3/TzipAFMaSoVrJfThwJTNd62wmiZmO6JrA/Cd/Y3jYjeAWDfvLL4F13hlgzUWwt59Vq7km0dPUiJU=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by DM4PR12MB8474.namprd12.prod.outlook.com (2603:10b6:8:181::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 07:41:49 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 07:41:49 +0000
Message-ID: <b66c5faa-1664-424d-9b32-c5e0729f3976@amd.com>
Date: Mon, 27 Oct 2025 08:41:44 +0100
User-Agent: Mozilla Thunderbird
To: Matthew Brost <matthew.brost@intel.com>, phasta@kernel.org
References: <20251017093146.169996-2-phasta@kernel.org>
 <aPK04r1E7IbAZ9QY@lstrano-desk.jf.intel.com>
 <7b53f502aa0eaee4ffe4350621ddbcbfaafcad06.camel@mailbox.org>
 <aPYabivOBSJ1UChg@lstrano-desk.jf.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aPYabivOBSJ1UChg@lstrano-desk.jf.intel.com>
X-ClientProxiedBy: BN9PR03CA0532.namprd03.prod.outlook.com
 (2603:10b6:408:131::27) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|DM4PR12MB8474:EE_
X-MS-Office365-Filtering-Correlation-Id: 3265d3e3-723f-41fc-92d3-08de152c4986
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bXpkTzZxOWJ3QXdmdEs0RVBQM0ZaVmt2MjNIN0pGY0E2N09TS3pmbUxZWFBN?=
 =?utf-8?B?b21iNGRyQnRLcTdmQ0RvMkVvS2tuTjBXb1hVR012cFpCT1U3MFdWSmJsU2px?=
 =?utf-8?B?aUFpUzJ5dFg4RWUwdGJFZFRuVXk5cThsM0ErVmFkWklrdHhTSHFqTlBSaGFz?=
 =?utf-8?B?SXNyR0hSU2paOE5aYWhtbzJFNm8ySlc4WUtBbUlWVWRmUjQzanIvWnlnSzlU?=
 =?utf-8?B?SVBVaEpxZDhMNS9iNTNrMFpWZklNOUsyOWFwa2M0T3dvUmRjWGhWYWdmbHpK?=
 =?utf-8?B?elFzN2pTelVZcEVGbTNqQUsweEI3MklsT3FucCt3VW1DYlVxRFFDQWZUNEYx?=
 =?utf-8?B?UXZ3TW40emtCZXJ2c003VFI5NlAwRWRkenBiSm5EUnB1RHJsTlRPT29ZUHkw?=
 =?utf-8?B?MSs2SlVxNWJvaW1wcUtDRFpZV1pyNFQ4Z3NmeVhXT3Z4WnpEVWtrZndtL2ZU?=
 =?utf-8?B?a0hzT2Jmb2gyUkdCOHVFTnBORjdJYU5DOFVqdFVGbUp1Q0dXV3k0Tzh1MlVT?=
 =?utf-8?B?MlAvWFNwOXNFOTVJalBKQ3hhMEoyMVZPSVZPbWxNM1lzZHA1NzFISVp2NTZo?=
 =?utf-8?B?Z1BqRTZWbmo0bEdPQU90SEJ1VHR0b3lLSlNvSk1vRDVCZ2xCNWhId3k3blRL?=
 =?utf-8?B?cDZabDZDbWhiMHhjb2k1NTI2MVB5TGtGK2lBcnAwQUgrVzczM0g1Z0R1Y2dl?=
 =?utf-8?B?VXIvNUFGaXZDTlBDQW1jQVBSb05McTJJYmsyUXREeVRXbEtTT0xZdjgxOEVK?=
 =?utf-8?B?Q2F2ekJ5K05kdnRuQ0YzU0gzeSt6RzlpUnFsekl5TnFsczZPcmgydG90Wnh4?=
 =?utf-8?B?TStJbm5JeHhwV2k3a25xRmlVTFY0ZkdtY3RFR3RXZzNPK3NhRnFzdnd3bWlk?=
 =?utf-8?B?S0lXWWRSWXBXY0I4b2Y3Sno4NS9zTU9TSWlYS1hiSGFWdjU1ZmFkZ2JVSThM?=
 =?utf-8?B?ZldjTG1VYWJ1NmZPcWVCcExRTkdYWm5WVkcvZ1lTU2crazNscC9UaHkwUytk?=
 =?utf-8?B?RFNJWUMwUFg0VFZJcXRmQWJRS0xtTGRERDB2SXJHOUdlZ1ZhV1locU1xOHBM?=
 =?utf-8?B?UUxQeDVYdmFUZkkrT2dSZkpBZktsdnE2RW1IM3lTNXVWSDlCV1ZzYXdZSUpB?=
 =?utf-8?B?bWVMTG5xODRkakRpZTFQK0dXOHRJaVdyem9KWjNXT0VjTkd6OGlmK004M3l2?=
 =?utf-8?B?UmNzYTdYejhhc2xGTkZtMnBUY3JDY3hKc2JIL1hKeHNMQ05RQ24wQ2JkOWhv?=
 =?utf-8?B?L09WNWswWk9yL1NQZVJiK00wc1FDa2tkbzJudW9zdDZpUVI0TStKOE9Odk9H?=
 =?utf-8?B?eHIyY0ZvSUQyQ1pLUjhvM1RJdlBNZU9uOG1nWmRJWUloNG9SZTRPdFRPNWpv?=
 =?utf-8?B?Snh2VW5iZVFYUFB6ZWgwV2ZLUTRIMGdXKzVmRVE4Q0xLc3FGRWlpWEdyT2pY?=
 =?utf-8?B?V1RkQTFLZXZaSUVMcTdCNVR2ZGNqZDllRXpYeWlWa1ZaTno0R0hJSWVaR3V2?=
 =?utf-8?B?UW9uUENaZGF4WFdIR3NqUDFiRXRMV080VnAwdHpFTDEwTXkzQS9NWHZveFRW?=
 =?utf-8?B?emNFV2EvQUU3TGxPVGRPYXRiT2dNSzZQdytnNVJnL3R2TWpreTUxL0hqRlFy?=
 =?utf-8?B?dU1hck9kMXJtY25CZDZzRzhHemxibVJSSHBxaVNWTS93QnByVGhUYmwwWXlC?=
 =?utf-8?B?M0xmNTNNZlNUcHgweWtEbFc1UTlJMDg0TEYzL1lRd2hjelVScW80YTlVMnEv?=
 =?utf-8?B?NHJlVnU4SXg0UlFVcWpNSEZoRzcxZFpWVXZDRGpzcXVOeWFSd0paWnNReVR5?=
 =?utf-8?B?SENXazE4dFdXWTJWbWpHTmE0ZExVS1p6TlkwOEpjaGh0Y04zU1RDODQ2ZVRD?=
 =?utf-8?B?em9sOUdxTXlCTktMZnFlNHJCelNTRmluRWxCSmxvTDExb2c9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L2tLOStqcEpLdDZ0eUkwaER5VjQvN1JpTmdRYnA0R2RVTHNXVEZ6SHJmaHdy?=
 =?utf-8?B?eDBSb1hRY3hjTUFwakREUlRkQmR5ZThJRnE2K08rdDhGQm13MUg3NnVzZFFi?=
 =?utf-8?B?L0YrZHRyMHVtWkxRSk9vbVpGZnRKSlJuM1RjZ1dTMmhBK3o0Z3duU3pNZVZu?=
 =?utf-8?B?VnVRSFFnQks2em05eDE0c2xUcGsrbVNZNnhOSXlNS0dvL2VuS215NUJjSnFF?=
 =?utf-8?B?NlRiZ2ZOQlk2UlY5LzJTSGQ4eXcyUklxSGNtTWxlcWIyaFhXdUU4VFdaOEUr?=
 =?utf-8?B?Zi9MRmpsenZFSjFFV2lqVnBQRER5OUpDZnZKNGgvUDlPMHpZVUd3eG1Bazdm?=
 =?utf-8?B?NThLeEp0UUhTNnBxSERtc05oUmh0UmZDb2JPWkVQRWxFT3hNamZ1NkxxcTA3?=
 =?utf-8?B?UFlJK0JnR1NaU0srd0RFT1VTWVJYUmxjNklsdXNZYmZJdHRJMVd0WTlaYlU4?=
 =?utf-8?B?b3FRcVRRY09IN25OSGtPT2VreW1XRWQrMlgrei9nS09WNnZod1d0RW1LUzJz?=
 =?utf-8?B?RTliUkZWazdLNk5oVXVOLy9XTSsvOXUvRlJ1eVZIL2JsSTJVZmVPVkV4MGt3?=
 =?utf-8?B?VnhOOGRzVENpQkd3UjdWR2piY2hmUFM3aVU0Q09NT3dOMDhTakNGdDMvQVdZ?=
 =?utf-8?B?d1ZyRlVnb0gwRUJpWU95bVVyQStFOWtMMjVCUmU3cndMWm5sanRnRVBCcG9J?=
 =?utf-8?B?TUVTWGFLalJnNGVnTkFkU2dBai9DVzQxRU1RbHA5TnhTVEl5alF5L3ByMWEv?=
 =?utf-8?B?M1EzMnpWSWQvdmdmS3hRZjREa0g2OW9hZjlqSzU2SmtpTWJub0xReW9mb2h5?=
 =?utf-8?B?a2lTUFdIYzFqcG5IWW1RNnpmRlU3dFQxdTVaTE83NkRNS3RJNGtoVERuY1cz?=
 =?utf-8?B?N21PTWF6aUF3bXBvOVVscWJ5MHJNeUtnWlNmYlprb0hVVzJTVWpyMDdCQVVy?=
 =?utf-8?B?Q0R3Yi9hNVdXYWdxejR1aEpqckw5cGdyVS9VMUo0TlZ0WXpyVDN5L1dOR2Y1?=
 =?utf-8?B?VWtTczFjdkIycE52U1ZrL0RLbFpHd0VncDRIdTJ1UzdCNmE5MFFIZW9idUZC?=
 =?utf-8?B?ZzZ6VC9VMklxVExZZ3Mzd0IrRklZN2kreUZDeXBqa3hFRzlFN1RPZ3Y2UXov?=
 =?utf-8?B?WDBCQXVueEFtNjd6elZid0x6UmJqeStnSm0vQkZIa3pNYkMyeHAzZkJVck5I?=
 =?utf-8?B?MEh6RWtncDBSekFMUlU1cUtqQ25QeXo1MldxQUpDOGNGeDQ0Q08yL05EcGRI?=
 =?utf-8?B?bCs5V1FpNkUyY1FINk4rMnMrK0dCSlU0ODFuNEFUUmhFczR3a0Z3WUFRTmxm?=
 =?utf-8?B?dXdIOTRVN2poVWVNMG5rSGNKa1JEM3NvcURObnV2N1R1RStkUDNMTEtxUjlL?=
 =?utf-8?B?VE1VUENhVlRoV3pHTHlaS1FMOWFqeWhmeTBrTHpmZ1Vqc3F3TmpBWkpYMGJH?=
 =?utf-8?B?cU51ZjdsL0xpNVgrejdISUd2V2l6dnNqS3FsSTNaS25DRlYyYXN6R3FFN2Z1?=
 =?utf-8?B?eG05Vk1ZUjYrTVp6LytOcnZLM1hpSHZVUlNITWZYb0MrWWNUY0hkaFlseFY3?=
 =?utf-8?B?K0x2L3ZtYndoQWs3NTVUam4wcXQzMks4ZUw1Yml5RFRRRkREdG1XeDBYbWJw?=
 =?utf-8?B?RlU1STRNRWRhUEs1UzZ6YVNlcWUrZElKL3pQSnBzYVVMTUYwcWJHSE5MZEdr?=
 =?utf-8?B?c1RtaXVjZWZPK3ZzYUNjSTVsb3I0aVFwc3kvTHdGYTdMNzNhZVNuNSt3R0Q4?=
 =?utf-8?B?TUZnRGVNc1IzNWRhUzFESVlJaFErL01VOXFCYzMxeHJKdU9rRUdnUVVRZk5a?=
 =?utf-8?B?N1lkS09CUWRacVRXRm9ESGpLSmxiZ0EyVU1Ya3NHWkRDL213RnRxckZ2MEZ2?=
 =?utf-8?B?VTVTSkJEZld2N2VIdmNwUks4YWQxVGtQVFc0R2pVc24xaG52YndxNG5rKzFj?=
 =?utf-8?B?RSs5Yk9pcU5kY3M4V3dCU2RmL0FRaHRZYjI1ZWRJaHRtektMU3RDdE1VOUZL?=
 =?utf-8?B?SWZ3bFhjZjFtazd0dk14Z3d4clpNOEQ2eTVGbjZqMmgvMUsrNnIwdGFmN2Vw?=
 =?utf-8?B?VzAzQ2pvYSsyR1ZRSTV2MUhONFpNY0hILzNoOUp0WjlHUkF2bUtzL2plRlBy?=
 =?utf-8?Q?3Rb+PLI/sZDSGVpyg0Oo2lxxm?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3265d3e3-723f-41fc-92d3-08de152c4986
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 07:41:49.1517
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e2oA/vJpEYBgkH5Rqa48FVyF8opQkBL1D75/ilHhouua5rrSD9dkxJ6BmfBfbB8J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB8474
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A7E223F78E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.46.15:from];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZO7SDQS6TX5X4ONXLSHEJM7ISYP5ZMLQ
X-Message-ID-Hash: ZO7SDQS6TX5X4ONXLSHEJM7ISYP5ZMLQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, tursulin@ursulin.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-fence: Remove 64-bit flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZO7SDQS6TX5X4ONXLSHEJM7ISYP5ZMLQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTAvMjAvMjUgMTM6MTgsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6DQo+IE9uIE1vbiwgT2N0IDIw
LCAyMDI1IGF0IDEwOjE2OjIzQU0gKzAyMDAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4+IE9u
IEZyaSwgMjAyNS0xMC0xNyBhdCAxNDoyOCAtMDcwMCwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4+
PiBPbiBGcmksIE9jdCAxNywgMjAyNSBhdCAxMTozMTo0N0FNICswMjAwLCBQaGlsaXBwIFN0YW5u
ZXIgd3JvdGU6DQo+Pj4+IEl0IHNlZW1zIHRoYXQgRE1BX0ZFTkNFX0ZMQUdfU0VRTk82NF9CSVQg
aGFzIG5vIHJlYWwgZWZmZWN0cyBhbnltb3JlLA0KPj4+PiBzaW5jZSBzZXFubyBpcyBhIHU2NCBl
dmVyeXdoZXJlLg0KPj4+Pg0KPj4+PiBSZW1vdmUgdGhlIHVubmVlZGVkIGZsYWcuDQo+Pj4+DQo+
Pj4+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+
Pj4+IC0tLQ0KPj4+PiBTZWVtcyB0byBtZSB0aGF0IHRoaXMgZmxhZyBkb2Vzbid0IHJlYWxseSBk
byBhbnl0aGluZyBhbnltb3JlPw0KPj4+Pg0KPj4+PiBJICpzdXNwZWN0KiB0aGF0IGl0IGNvdWxk
IGJlIHRoYXQgc29tZSBkcml2ZXJzIHBhc3MgYSB1MzIgdG8NCj4+Pj4gZG1hX2ZlbmNlX2luaXQo
KT8gSSBndWVzcyB0aGV5IGNvdWxkIGJlIHBvcnRlZCwgY291bGRuJ3QgdGhleS4NCj4+Pj4NCj4+
Pg0KPj4+IFhlIHVzZXMgMzItYml0IGhhcmR3YXJlIGZlbmNlIHNlcXVlbmNlIG51bWJlcnPigJRz
ZWUgWzFdIGFuZCBbMl0uIFdlIGNvdWxkDQo+Pj4gc3dpdGNoIHRvIDY0LWJpdCBoYXJkd2FyZSBm
ZW5jZSBzZXF1ZW5jZSBudW1iZXJzLCBidXQgdGhhdCB3b3VsZCByZXF1aXJlDQo+Pj4gY2hhbmdl
cyBvbiB0aGUgZHJpdmVyIHNpZGUuIElmIHlvdSBzZW50IHRoaXMgdG8gb3VyIENJLCBJ4oCZbSBm
YWlybHkNCj4+PiBjZXJ0YWluIHdl4oCZZCBzZWUgYSBidW5jaCBvZiBmYWlsdXJlcy4gSSBzdXNw
ZWN0IHRoaXMgd291bGQgYWxzbyBicmVhaw0KPj4+IHNldmVyYWwgb3RoZXIgZHJpdmVycy4NCj4+
DQo+PiBXaGF0IGV4YWN0bHkgYnJlYWtzPyBIZWxwIG1lIG91dCBoZXJlOyBpZiB5b3UgcGFzcyBh
IHUzMiBmb3IgYSB1NjQsDQo+IA0KPiBTZXFubyB3cmFwcy4NCj4gDQo+PiBkb2Vzbid0IHRoZSBD
IHN0YW5kYXJkIGd1YXJhbnRlZSB0aGF0IHRoZSBoaWdoZXIsIHVudXNlZCAzMiBiaXRzIHdpbGwN
Cj4+IGJlIDA/DQo+IA0KPiAJcmV0dXJuIChpbnQpKGxvd2VyXzMyX2JpdHMoZjEpIC0gbG93ZXJf
MzJfYml0cyhmMikpID4gMDsNCj4gDQo+IExvb2sgYXQgdGhlIGFib3ZlIGxvZ2ljLg0KPiANCj4g
ZjEgPSAweDA7DQo+IGYyID0gMHhmZmZmZmZmZjsgLyogLTEgKi8NCj4gDQo+IFRoZSBhYm92ZSBz
dGF0ZW1lbnQgd2lsbCBjb3JyZWN0bHkgcmV0dXJuIHRydWUuDQo+IA0KPiBDb21wYXJlZCB0byB0
aGUgYmVsb3cgc3RhdGVtZW50IHdoaWNoIHJldHVybnMgZmFsc2UuDQo+IA0KPiAJcmV0dXJuIGYx
ID4gZjI7DQo+IA0KPiBXZSB0ZXN0IHNlcW5vIHdyYXBzIGluIFhlIGJ5IHNldHRpbmcgb3VyIGlu
aXRpYWwgc2Vxbm8gdG8gLTEyNywgYWdhaW4gaWYNCj4geW91IHNlbmQgdGhpcyBwYXRjaCB0byBv
dXIgQ0kgYW55IHRlc3Qgd2hpY2ggc2VuZHMgbW9yZSB0aGFuIDEyNyBqb2Igb24NCj4gcXVldWUg
d2lsbCBsaWtlbHkgZmFpbC4NCg0KWWVhaCwgZXhhY3RseSB0aGF0J3Mgd2h5IHRoaXMgZmxhZyBp
cyBuZWVkZWQgZm9yIHF1aXRlIGEgbG90IG9mIHRoaW5ncy4NCg0KUXVlc3Rpb24gaXMgd2hhdCBp
cyBtaXNzaW5nIGluIHRoZSBkb2N1bWVudGF0aW9uIHRvIG1ha2UgdGhhdCBjbGVhcj8NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gTWF0dA0KPiANCj4+DQo+PiBCZWNhdXNlIHRoZSBv
bmx5IHRoaW5nIHRoZSBmbGFnIHN0aWxsIGRvZXMgaXMgZG8gdGhpcyBsb3dlcl8zMiBjaGVjayBp
bg0KPj4gZmVuY2VfaXNfbGF0ZXIuDQo+Pg0KPj4gUC4NCj4+DQo+Pj4NCj4+PiBBcyBJIG1lbnRp
b25lZCwgYWxsIFhlLXN1cHBvcnRlZCBwbGF0Zm9ybXMgY291bGQgYmUgdXBkYXRlZCBzaW5jZSB0
aGVpcg0KPj4+IHJpbmdzIHN1cHBvcnQgNjQtYml0IHN0b3JlIGluc3RydWN0aW9ucy4gSG93ZXZl
ciwgSSBzdXNwZWN0IHRoYXQgdmVyeQ0KPj4+IG9sZCBpOTE1IHBsYXRmb3JtcyBkb27igJl0IHN1
cHBvcnQgc3VjaCBpbnN0cnVjdGlvbnMgaW4gdGhlIHJpbmcuIEkgYWdyZWUNCj4+PiB0aGlzIGlz
IGEgbGVnYWN5IGlzc3VlLCBhbmQgd2Ugc2hvdWxkIHByb2JhYmx5IHVzZSA2NC1iaXQgc2VxdWVu
Y2UNCj4+PiBudW1iZXJzIGluIFhlLiBCdXQgYWdhaW4sIHBsYXRmb3JtcyBhbmQgZHJpdmVycyB0
aGF0IGFyZSBkZWNhZGVzIG9sZA0KPj4+IG1pZ2h0IGJyZWFrIGFzIGEgcmVzdWx0Lg0KPj4+DQo+
Pj4gTWF0dA0KPj4+DQo+Pj4gWzFdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2
LjE3LjEvc291cmNlL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jI0wyNjQNCj4+PiBb
Ml0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTcuMS9zb3VyY2UvZHJpdmVy
cy9ncHUvZHJtL3hlL3hlX2h3X2ZlbmNlX3R5cGVzLmgjTDUxDQo+Pj4NCj4+Pj4gUC4NCj4+Pj4g
LS0tDQo+Pj4+IMKgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHzCoCAzICstLQ0KPj4+PiDC
oGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmjCoMKgIHwgMTAgKy0tLS0tLS0tLQ0KPj4+PiDCoDIg
ZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4+Pj4NCj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KPj4+PiBpbmRleCAzZjc4YzU2YjU4ZGMuLjI0Nzk0YzAyNzgxMyAx
MDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+PiBAQCAtMTA3OCw4ICsxMDc4LDcgQEAg
dm9pZA0KPj4+PiDCoGRtYV9mZW5jZV9pbml0NjQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNv
bnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+Pj4+IMKgCQkgc3BpbmxvY2tfdCAqbG9j
aywgdTY0IGNvbnRleHQsIHU2NCBzZXFubykNCj4+Pj4gwqB7DQo+Pj4+IC0JX19kbWFfZmVuY2Vf
aW5pdChmZW5jZSwgb3BzLCBsb2NrLCBjb250ZXh0LCBzZXFubywNCj4+Pj4gLQkJCSBCSVQoRE1B
X0ZFTkNFX0ZMQUdfU0VRTk82NF9CSVQpKTsNCj4+Pj4gKwlfX2RtYV9mZW5jZV9pbml0KGZlbmNl
LCBvcHMsIGxvY2ssIGNvbnRleHQsIHNlcW5vLCAwKTsNCj4+Pj4gwqB9DQo+Pj4+IMKgRVhQT1JU
X1NZTUJPTChkbWFfZmVuY2VfaW5pdDY0KTsNCj4+Pj4gwqANCj4+Pj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4+
IGluZGV4IDY0NjM5ZTEwNDExMC4uNGVjYTJkYjI4NjI1IDEwMDY0NA0KPj4+PiAtLS0gYS9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmgNCj4+Pj4gQEAgLTk4LDcgKzk4LDYgQEAgc3RydWN0IGRtYV9mZW5jZSB7DQo+Pj4+IMKgfTsN
Cj4+Pj4gwqANCj4+Pj4gwqBlbnVtIGRtYV9mZW5jZV9mbGFnX2JpdHMgew0KPj4+PiAtCURNQV9G
RU5DRV9GTEFHX1NFUU5PNjRfQklULA0KPj4+PiDCoAlETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9C
SVQsDQo+Pj4+IMKgCURNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQo+Pj4+IMKgCURNQV9G
RU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KPj4+PiBAQCAtNDcwLDE0ICs0NjksNyBAQCBk
bWFfZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pj4+IMKgICov
DQo+Pj4+IMKgc3RhdGljIGlubGluZSBib29sIF9fZG1hX2ZlbmNlX2lzX2xhdGVyKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCB1NjQgZjEsIHU2NCBmMikNCj4+Pj4gwqB7DQo+Pj4+IC0JLyogVGhp
cyBpcyBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eSB3aXRoIGRyaXZlcnMgd2hpY2ggY2FuIG9u
bHkgaGFuZGxlDQo+Pj4+IC0JICogMzJiaXQgc2VxdWVuY2UgbnVtYmVycy4gVXNlIGEgNjRiaXQg
Y29tcGFyZSB3aGVuIHRoZSBkcml2ZXIgc2F5cyB0bw0KPj4+PiAtCSAqIGRvIHNvLg0KPj4+PiAt
CSAqLw0KPj4+PiAtCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TRVFOTzY0X0JJVCwgJmZl
bmNlLT5mbGFncykpDQo+Pj4+IC0JCXJldHVybiBmMSA+IGYyOw0KPj4+PiAtDQo+Pj4+IC0JcmV0
dXJuIChpbnQpKGxvd2VyXzMyX2JpdHMoZjEpIC0gbG93ZXJfMzJfYml0cyhmMikpID4gMDsNCj4+
Pj4gKwlyZXR1cm4gZjEgPiBmMjsNCj4+Pj4gwqB9DQo+Pj4+IMKgDQo+Pj4+IMKgLyoqDQo+Pj4+
IC0tIA0KPj4+PiAyLjQ5LjANCj4+Pj4NCj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
