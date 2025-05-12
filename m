Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A4EAB31A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 10:28:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D181450AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 08:28:50 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2042.outbound.protection.outlook.com [40.107.237.42])
	by lists.linaro.org (Postfix) with ESMTPS id 26E1043C33
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 08:28:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=pBe2PN+J;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UULXBRvPEHANtaHbk8wlPHqNBzFndCLMh+omRACNLY1PhU3ieCGtxhjwPKseHmZQCQQ5oFHmgkcxdayl4Ouo5yJ79Cl0EJ9FVa7gENTKe1wU01NcJPWvE7R5OhaC8gILVmMzB0CNl/yWMEEv+6BVF2k7SvTQFQ6ObBy8y0+OZYz6QMPg7AO3ujk86u7t8JEyfDMq05q+mBVLxm5jo85x9wqHpgOdCbTasXQ/I3pPHze3xywARAIY9LL3D8aRNbyTikhGnMGzOalfuxrHoa+UVFjpL71YJuc/xykJfeNHyGtqb5Y68zJ5SagXlYwHwMVWVo/DWhR9+eFrfLflKt+mAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M+a/DTvyxTr1sikYEEO+e+QwExvY4DHSpxYvzj1u51M=;
 b=w52oWLyfriynSPH3hmbycnMpCZffyqLOfCWRYfh7ctmmwD0cR+tOq9c1MnunRVl8wTlTpdHDRc2Y+lJuDkVmHNL9FR7KAf8y/my6oun8PjK+qfXDu6uyRvWvMI2tIuapcQmRXazG4WDLs+Rmk2im6nFvFtw5MR3bXqYXDwvFeUjXGtx4b210AQt1/zodzH0n4A306LtC4L7aInJ1c9oaWp83CMQjY/6PXdDR8eBzykMmggOtQzFWJTkAiZRvWXf6TnMtZmLNsoh3FJXzx8R/cMz1CY0NZLDtSab4OVQPUSQkssJI60BB4v4YNB+MyVhemtMtxCFBZEHo7OUoFMzgew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+a/DTvyxTr1sikYEEO+e+QwExvY4DHSpxYvzj1u51M=;
 b=pBe2PN+JRqmRBRNM1o83Ml37XiG8rGwnnK/TlRm6Dcd2+obYJ+m7myCn0OzSFmKAo1CSvxhqIurzgmLRP2rZGzvMRlrU4FU3Ep82fF8+zTKLdC+d3Rcu/+F/IwKgRXukarYIWK2SBgyVsg37NPcSQt9m78kMvUg0zVh9wrjBf7U=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV2PR12MB5751.namprd12.prod.outlook.com (2603:10b6:408:17d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 08:28:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 08:28:35 +0000
Message-ID: <e8974651-2c40-42b6-b3e4-f2aafff33dfa@amd.com>
Date: Mon, 12 May 2025 10:28:30 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20250509153352.7187-1-tvrtko.ursulin@igalia.com>
 <20250509153352.7187-10-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250509153352.7187-10-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: FR2P281CA0124.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV2PR12MB5751:EE_
X-MS-Office365-Filtering-Correlation-Id: 29d322e0-8067-44ec-1b47-08dd912efcf8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bE1VSEs5MDJIUUJlOEtCczVzYUs2VkNOV3J4VThMaS91SCtWNVZmU245dVN2?=
 =?utf-8?B?Z3hOSTRSazRWeXpra2RJdnFPQ1lpS3I4SHBwcnM5MVkxY0RvUVh2eVNUbXY3?=
 =?utf-8?B?MTRtUk5odGZ1R1gwQkxuaXYwN0c0OURHM3gxK0VFREZmVXgrbkszZU5RMWha?=
 =?utf-8?B?TnVxaFRqZGpNV3pxZ0E0aGd6SzErUVdjWFl2VTlFYlo5RGwyL0pjWk54cnE0?=
 =?utf-8?B?MnhJWVFuRC85emJSNFFCMnptNHNKVHZZWjdnOWdYaHQ0SlNzWFFERE5XY0xE?=
 =?utf-8?B?YmtaaWkyUmJibXAwSG9pSC9taXhMaXpmSW1WcEJydk1QeDYrckQyZXRhdmor?=
 =?utf-8?B?Z0pNaC9yR3NrVnhLb2IxUFg4bW56OGloRDducEVqVC80N3VSYitKQjZvZkVm?=
 =?utf-8?B?T1FaVmFlZzZOZnA4V2doOXhLZEFGeW0xUWx2bXpVdXpMVzFMVFJWQzU0ckxL?=
 =?utf-8?B?K2hQdGZnRnNkTkh3ekNkcGVwdGFoN2oxWmk1ZlpoalByZ1ZNSXRFMTYzV0l5?=
 =?utf-8?B?RDgwNG5jdnFhOTJaSGlqQlRHcVZ5UTdTVGRMOVFwYUNXYmxSOWhmMzh3K2pP?=
 =?utf-8?B?KzJ3ZFlNbGIzeDlQam1DREVvcEdTZG5jM3I1bXR2Rm1zUkZIWUdnZWtZMFZP?=
 =?utf-8?B?VE9WNDZheWFJcENUTTZ4aGhjdUpwc1RjdzJYR2J5NlE4MnVDVnNGS3JPVlh4?=
 =?utf-8?B?RXJmd045SFVKS2tMcEpkYW15U3R6b1N4bW9ibW1jRGRsc0NZRzB0TUNBeXpp?=
 =?utf-8?B?dWc2bEtYUE4zVEV4aUEyQzNUcGkycjhPNTVjNzFmUk0wOEMwQ2VGanllUnBw?=
 =?utf-8?B?MXU4a3dML0JyMzZsUzZZUzVXb3lwcVBZQk1UN3MxMnMrSFFsd0duQmpjTTUx?=
 =?utf-8?B?SFNPVWtOd3JCTEI4RXdULzIvNkpEbGhSWStQRnVYRHAwTEk0NW5aVHVhYUEx?=
 =?utf-8?B?Y0s3am96andLeWFXekl4ZEQ3NDhZRDZJdU9oWHZEekRKbVhtTFpqM3BGbGgw?=
 =?utf-8?B?UFhVNGdSTU9GVFVHVnVad3lXMjRqSEp4dkcyV2lWZXh6aTFmRWN4aWIxdzEx?=
 =?utf-8?B?T3JYblBmRGw1TGR1UFFkZDk1aGd6WDh0NTZ3QlZLZG9sY25NVmU2TTNXU1Vv?=
 =?utf-8?B?Wi9QeFg2YzFyN2tKcUNrUVg1MlZWdDc2eCtzMjZiV1pNUTY0SklwZkp5bUY3?=
 =?utf-8?B?V1lHZE95ZXRkM2VZcXREcGgvTC9zdDY3MWgzWXVIa09ZYXBrUnhhM3J0QUNq?=
 =?utf-8?B?ZS9HSnUrQm5JUXltZjUxQW51cEpWdEFvOVNwY2ptSnlXNFAzd1lycGdoKzlE?=
 =?utf-8?B?azZ0TFQyakdJWDJLNW85aFN5eFcydExXUkl1aXJxczFIMURyL25MSFd5bmVy?=
 =?utf-8?B?UUNqbVRLQmk3NmRrb3Q3cC9xaDA4V3Y0QXlWQlhSVy80Q0l4QkY0VTRCT25m?=
 =?utf-8?B?UjVsK0NHcDVFT0RBeWVjVzAvNGxnYUovK0laRmdNTHpHd20reTBKVHhhem55?=
 =?utf-8?B?ZXJ5VkJtV1R0U0VOYjRzbXhiMmlBcHFmWWpiMmZ5Rld5QnExdFVZcHdnQktX?=
 =?utf-8?B?YjJQSVA5TlBtQkNnKzA3NFVmTktnVHFQSTA2MXJ5eldmVHcrSXdsSDd2c0pP?=
 =?utf-8?B?dHV6RTFjQ0Qva3E0VHhuVUxBSkVEQXdPUG5OdUZlazVPZzYrQ3REUkdSQW5i?=
 =?utf-8?B?M0pCSHlKMDdEaDBteHJjeWJyOHZqbEo4Y2VUMVZwWFBpNENyaDN0WXRiZkQx?=
 =?utf-8?B?RTBQMWg2ZkpSNUtpT1hEbkhZMGxCQzlRMjFZUUdkRmlDcDVTQnhOcytMVTlG?=
 =?utf-8?B?YW55RVY3QW5zV3ZPWWVJanlPYWloUExBRCtnaFFsVHNPRXRuNlRnWVhsYjM0?=
 =?utf-8?B?M2x0VXdtT09GREJEMHpEWWUyQ0gvYmJlalduRmE2aW9FSXl6cTN0SjBrVEhN?=
 =?utf-8?Q?NhsZnBEb6k8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NmY1c1dzV2x2R3ZGOWcvYzNBQnIrZ2RRWnRodkdhNHYwTEVVZ3pIMmV0clpK?=
 =?utf-8?B?NDlaWlJ5RHFYNTBWeVY4aW9rZk9MVE9wVzJ5ZjFubzFpNWRwRlV1OUFDbURa?=
 =?utf-8?B?QjZTaXNiMUJISzBMeXZIaHB1M2ozdFFRUGV3OHdlMTZNM0lBMFFIWkQ4N1FV?=
 =?utf-8?B?aElKaTJ4UGFkUzBHL3ZyNmdoc3oxYjFOSVMySjNLTDU2NVA3VExlRW1nVDQw?=
 =?utf-8?B?dFNwaVcvcmUwb3NrSi9BTER3VEN5S2pUM1c0Y0JUN2JtS2FQS1BMYURmMmJx?=
 =?utf-8?B?N3o4cVB4Skc1OVdhc0poOXlOekRzY1RXMkdOYVVRdzErc1ZEYW9JTHFDcy9t?=
 =?utf-8?B?M2pBSUpqR1ZoTUdGdUhtRVNIQ0haRzBEY1pHRXdsRG9rS2NlSndrbG9sdHhP?=
 =?utf-8?B?WkFrSE56WXI0d044dDh6Y2ROVXNRTWRzUG9mL0t0MFBzdmhHQmdoMDM2bXd2?=
 =?utf-8?B?aWZWZHFNZGRBV1RObkFxdmFZQ2tIbksxTXpya1EyWlNJN2M1dDd4WjZ4cmI2?=
 =?utf-8?B?U0JVV2pQbk5pTXlzUlNrTW9ERDdEQUFiS01yeDdpK3VJdzR6anZ2UWRySW01?=
 =?utf-8?B?TW1nM3JXSkdDQnRpcXYzSWxWY0lMdGMzaEo0Nzd2cWVqL1BiWVFlUnVwNGMv?=
 =?utf-8?B?OEd0ZVRralR1N1NMejlIVlMvZm9yMHBYS0ZJVTBlM2RCemJSL0VZUzhXZUJa?=
 =?utf-8?B?a1MwV2QyOFRvZlBpUXYyUkZ6V2JYTGNNOTRqTk9SZUNvanFjV0F3RTQvbHlu?=
 =?utf-8?B?cW14eUhKcnltdEs3ekFCbVJIT2xsM3R5UW0xN2F6WlovS1RFSFU2bG5uZ2pN?=
 =?utf-8?B?WGpMQU5SbWNnaGxOZzlCWCtnemh3ZlFVWm9mSnRkVFVySmNWL3JBOU9rU2NN?=
 =?utf-8?B?YVhabWFxNGpwVUFLQ2dIaG5kVUtnZmthWVhUaW9FWWl2VnZMblFTNlFzdUYr?=
 =?utf-8?B?VFN1REs2aTlFV3FDdjNvSkdSLzc4NG1sSmdJSWVvVVVNd2tPdGpBTXNrdkUz?=
 =?utf-8?B?aTMvUXZ0emdvMkV2UjQvZ1pwdTBKRTBFcWFRZFlmNkhWNi9RWjg4UjhPem9J?=
 =?utf-8?B?MHJEeEVxY3BVWks0a05Eb25tbnk2a0pwdWE0WU5ybkNhQk05QVpucmxEWjNZ?=
 =?utf-8?B?KzI5MGVlOHVveHBOT2JIaXo1bTNzM2pXdmk3YnhmandxWUtJQXQ0ZVcvdFlE?=
 =?utf-8?B?ZWhHaWxaZm9GeHJKdGF1UVBPR1dTa1ZJbXZWZ0VmZlNTcWxsV09WUm1nZjR1?=
 =?utf-8?B?TEV3bnJNOTBNdW1GUUYrOXBPenQ2WTRBamVPK3JCYzZPWUFtaWxMS1BLclo5?=
 =?utf-8?B?VERSOXNpVGtsSVByTGZxU3ZGbGw2aHBwbnRKa0IwMEJENVFxd3FVQ3J5NzdZ?=
 =?utf-8?B?ZFlodFoxMFFWZDhySWtHc2Q5RWt0ZTRuRFhzZDZpVHJwRDRGU2JLYlkraVJU?=
 =?utf-8?B?OXUyWndJazlhL05CRWsvL0RCRWxMMGI2dkMvWWpIYzArMkJWaE9YWGZWZTFi?=
 =?utf-8?B?TktDRURGTndtQkpLMm5TbGI1eWhoaTV3NnprVHA4RUdheVg5L2hQbnlJNzQr?=
 =?utf-8?B?UytQOHZHeEFnNUJGb0NOY1NqV3BIdk4xbktMMzQ4NTdUcERlaTN0OEJTRCtU?=
 =?utf-8?B?R0tQNkV4MStTOVdUOTl0YmRLSUNUTENJcU01MzlRdXhwb3grbmJmVUNvSWNx?=
 =?utf-8?B?cUdyclJra24yeS81VFJuQnphdk5YTXRYTUJqb3NRcWVrdHRVTzI4aHlCdGVo?=
 =?utf-8?B?WGhMWWZqYzZoQ1RNYzhFbWxMVnhFSW4rNTNRVXFKU0o1TzMvSHgwOU1zR2JZ?=
 =?utf-8?B?dUJWejZSa1NFV2gvQ1FPZmVienAwMk9oUnBOKzliQnVWMjRkZC9SSGk1dHFv?=
 =?utf-8?B?aWtQQWRPQ21WTVI0SDNtMFBCRUxuY3cwTm1zeUluM0Z5QVBxQmgxMmNmSWJK?=
 =?utf-8?B?REExVEF4YThrVXNKYzFMQU1PTGdyS2M3VTNlNUFRQlpVV2w0MXBDUE54NWgv?=
 =?utf-8?B?QndXTHhLZ0VuWGhJekdiZ1RwRFhuNllRYnJUZERCd2hwWnRDZnFHQjYxaEl2?=
 =?utf-8?B?YWt5VUZ2ajNEMzNOZU4yODlaVXl4STZ4ZUtkWDlyV3NMcHcyR1RnNDBPVVdi?=
 =?utf-8?Q?mN5TW+wMWCTy0JfVIs9eYbHnR?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29d322e0-8067-44ec-1b47-08dd912efcf8
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 08:28:35.6544
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bWhBTMZeu6iDLsxSehJEFARcFbtapyThH0GH0Ilvw5TVvguuEOhm4L4bMBV7gUiN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5751
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 26E1043C33
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.42:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.237.42:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: RUFFPCNYKNAFDIHWEMRR7LN2SFIHT5PB
X-Message-ID-Hash: RUFFPCNYKNAFDIHWEMRR7LN2SFIHT5PB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Matthew Brost <matthew.brost@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 09/13] drm/i915: Use dma-fence driver and timeline name helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RUFFPCNYKNAFDIHWEMRR7LN2SFIHT5PB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS85LzI1IDE3OjMzLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gQWNjZXNzIHRoZSBkbWEt
ZmVuY2UgaW50ZXJuYWxzIHZpYSB0aGUgcHJldmlvdXNseSBhZGRlZCBoZWxwZXJzLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+
DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0
cy5jIHwgNCArKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAg
ICAgIHwgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jICAgICAg
ICB8IDQgKystLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcmVxdWVzdHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3Rz
LmMNCj4gaW5kZXggZDFhMzgyZGZhYTFkLi5hZTM1NTdlZDZjMWUgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYw0KPiBAQCAtMjUyLDggKzI1Miw4
IEBAIHZvaWQgaW50ZWxfZ3Rfd2F0Y2hkb2dfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmsp
DQo+ICAJCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmID0gJnJxLT5mZW5jZTsNCj4gIA0KPiAgCQkJcHJf
bm90aWNlKCJGZW5jZSBleHBpcmF0aW9uIHRpbWUgb3V0IGk5MTUtJXM6JXM6JWxseCFcbiIsDQo+
IC0JCQkJICBmLT5vcHMtPmdldF9kcml2ZXJfbmFtZShmKSwNCj4gLQkJCQkgIGYtPm9wcy0+Z2V0
X3RpbWVsaW5lX25hbWUoZiksDQo+ICsJCQkJICBkbWFfZmVuY2VfZHJpdmVyX25hbWUoZiksDQo+
ICsJCQkJICBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShmKSwNCj4gIAkJCQkgIGYtPnNlcW5vKTsN
Cj4gIAkJCWk5MTVfcmVxdWVzdF9jYW5jZWwocnEsIC1FSU5UUik7DQo+ICAJCX0NCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMNCj4gaW5kZXggYzNkMjdlYWRjMGE3Li40ODc0YzRmMWU0
YWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jDQo+IEBAIC0yMTg0LDcg
KzIxODQsNyBAQCB2b2lkIGk5MTVfcmVxdWVzdF9zaG93KHN0cnVjdCBkcm1fcHJpbnRlciAqbSwN
Cj4gIAkJICAgICAgIGNvbnN0IGNoYXIgKnByZWZpeCwNCj4gIAkJICAgICAgIGludCBpbmRlbnQp
DQo+ICB7DQo+IC0JY29uc3QgY2hhciAqbmFtZSA9IHJxLT5mZW5jZS5vcHMtPmdldF90aW1lbGlu
ZV9uYW1lKChzdHJ1Y3QgZG1hX2ZlbmNlICopJnJxLT5mZW5jZSk7DQo+ICsJY29uc3QgY2hhciAq
bmFtZSA9IGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKChzdHJ1Y3QgZG1hX2ZlbmNlICopJnJxLT5m
ZW5jZSk7DQo+ICAJY2hhciBidWZbODBdID0gIiI7DQo+ICAJaW50IHggPSAwOw0KPiAgDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMNCj4gaW5kZXggMWQ0Y2M5MWMwZTQwLi5lNTFj
YTdlNTBhNGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVu
Y2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMNCj4gQEAg
LTQzNSw4ICs0MzUsOCBAQCBzdGF0aWMgdm9pZCB0aW1lcl9pOTE1X3N3X2ZlbmNlX3dha2Uoc3Ry
dWN0IHRpbWVyX2xpc3QgKnQpDQo+ICAJCXJldHVybjsNCj4gIA0KPiAgCXByX25vdGljZSgiQXN5
bmNocm9ub3VzIHdhaXQgb24gZmVuY2UgJXM6JXM6JWxseCB0aW1lZCBvdXQgKGhpbnQ6JXBzKVxu
IiwNCj4gLQkJICBjYi0+ZG1hLT5vcHMtPmdldF9kcml2ZXJfbmFtZShjYi0+ZG1hKSwNCj4gLQkJ
ICBjYi0+ZG1hLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGNiLT5kbWEpLA0KPiArCQkgIGRtYV9m
ZW5jZV9kcml2ZXJfbmFtZShjYi0+ZG1hKSwNCj4gKwkJICBkbWFfZmVuY2VfdGltZWxpbmVfbmFt
ZShjYi0+ZG1hKSwNCj4gIAkJICBjYi0+ZG1hLT5zZXFubywNCj4gIAkJICBpOTE1X3N3X2ZlbmNl
X2RlYnVnX2hpbnQoZmVuY2UpKTsNCj4gIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
