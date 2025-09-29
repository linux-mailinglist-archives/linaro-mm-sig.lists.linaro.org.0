Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 194A4BA85F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 10:16:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 327E1446D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 08:16:53 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010036.outbound.protection.outlook.com [52.101.56.36])
	by lists.linaro.org (Postfix) with ESMTPS id B8D4544ACE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 08:16:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=popVkK5f;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.36 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DC/4b4RKApLBqyugL26N8KDfZCENc0otBWIcs5LwX9DqVBl97W9xt4Ym4r+UItPaBjy9qxnzn2pKhKngRksnC/9qvnE91l3NGkufvDLOnPjykOeiP3SkuHj7ECygC7oePQCHvgWDqc5PyyXJAe8lLPArS9+qitKoQVgbVa4L3tKPNdYPULXLCqrDfyd3qxE6hRa24niOMJcWQDGluGyV95wqP2GqW4JW9t0KsKQ5gCZI8p+sOgEVlT6mKsJ3T/vOf/+45apUDKYI0sOJX3uiyqPEvd0qFaNWJ9NPqZ0X+gyEddUQUcq964dvwbxgrDNFHKZlKEuOCjIeOWKNcP2psw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EpS/D4OSN3OI8pt9Q9okV/i8POlW9hTg57pxsmBxM4w=;
 b=mgHfy1xeCxRzs4qKK13TgHLf0HGq/CIoLQGHyXDbali3hZN/GIBLqJ8Ieg89M25/PuG3mQbyCfHklZoxIzWg1B9W2wA8AkCu8vT5DBgKPhOfponTHplL8dDA2SmqTfHh86xj8t1hlDGZABQN6q2gq85FOrv/F3KUUdFtgNFQJZdJdyR2y9389sz74msm327HcLNP6djyqM4HKdyo6P4OsJUwDlPp/+msOhLiqvaGzqEwyCv+qXCNqCzi7H3Dp4QJXweDAOSnlZgGbzpl9JDnOOvK2G+n2O8KdUP4yRL8ptf+6sJXNC4rLF7TzYSwVSH8HzhNQCXpZpU7Z8R7+SnwAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EpS/D4OSN3OI8pt9Q9okV/i8POlW9hTg57pxsmBxM4w=;
 b=popVkK5fH3+DQ72Eruj80Wemc7XxvB+cnqdqX747PKx0KHVgzxdFYsLoi4GgWjdpCU777cHG6dZj3DoCZ5HzOXKJQ+Fumn4ewJzq2QdNBAGhcmO5mtl7k4cHRvxPGHGONRDfi/9gib7PWwyJ771QJXMnOPo0H/W5CNa1UsDU1VY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4143.namprd12.prod.outlook.com (2603:10b6:208:1d0::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 08:16:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 08:16:35 +0000
Message-ID: <f33a4344-545a-43f4-9a3b-24bf070d559c@amd.com>
Date: Mon, 29 Sep 2025 10:16:30 +0200
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
 <20250926144128.GD2617119@nvidia.com>
 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
 <20250926160036.GE2617119@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250926160036.GE2617119@nvidia.com>
X-ClientProxiedBy: BL1PR13CA0434.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4143:EE_
X-MS-Office365-Filtering-Correlation-Id: 699673b8-072a-4fb0-93ac-08ddff3081ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WkdLSHd1M0E0cUNvWVc2V2lndVZHRWluYitwUVZIWlNDVzg5OTY4anBvUkRE?=
 =?utf-8?B?TnVaU21TdnIzcnN5cXM0WTR4WWJLdGRrN0E3TjJQQ1ZrU0hHWStCUGdETmdy?=
 =?utf-8?B?aTZzZjhIeENGMzhrb2dQMzFNcDRGZTI2NzRCc0lwdE92eUdXT3d3YW1SS2dF?=
 =?utf-8?B?ZGYvSXh0M3ZiY1huTDB6aVBRNlduRGJ2TmEwN0lYQTJsakRPSFBwYzJJVkVn?=
 =?utf-8?B?cC9LRjUzTExETGFyQmN4UmpISXJ2TE1LcjZYL0FyUFVoTHYrQ3JNRlFoV0F6?=
 =?utf-8?B?Z2JhdnZoV3UrNjAwMndUY3BlY2N2dkwyTmJRQ3ZBY3pmQnN4b1dmS1RvVm5i?=
 =?utf-8?B?dy9jQ2VQa05wR3ZFTXNNVzJrWDg1Sk9Gb2srSHgzMTlXL3ZNVzYwVWdLelNR?=
 =?utf-8?B?dWpiSHU4R2JUUzNLWmpIRDVvUXhxenBLc1NoS1Q3RnFuV1MvU1NLMjd5Y3Fi?=
 =?utf-8?B?V3JKaGdYY3hOeEhQU2J6bnExdE1qMURTNEVlN1JoRlJqZnlud0hLc28xTmtx?=
 =?utf-8?B?TGdkaXRYd0hvSkJwbUlNWGdScjlUc000N0Vibzg3VFJWSjIvajRhQ2ptOUZT?=
 =?utf-8?B?YVNmSVQ5VG03UXE1QW5zdytBeTIvdTlIN1Roc1I4cHFKd1RWR2IyUTgrZE1R?=
 =?utf-8?B?MzFFYjFqc3JwM3BiVXAxQ2hoTDVTRmpNdlNwcjU3enNiRDZrTGhVcklrUXFt?=
 =?utf-8?B?YzgzdWpOMDR2V21UMlpzUC9tSnR2RHpIb1J4djF1dVZORmhsa1J4SkZ1cm9o?=
 =?utf-8?B?U01ZNGltcGpSQkZTbGVnZWVuTER6VlBINVRSUDN6eHdOYnJ2SUxZTlNpWVZT?=
 =?utf-8?B?UGRORmU4WW5VOGQzOGZqTFl5L1I1alVKa3FuNHE4R0tqbkljSUNiRkMyZ05r?=
 =?utf-8?B?WTNJY1BDMzN0NHBUYUhiQmtDTy9NYkorNWVHendwcWxOV2R4MU51Z0hiaXlD?=
 =?utf-8?B?b2lJbjdFTTR5S1lDcVlqK0RtNlFvcU9lVTB4U25ZaDhnVGx2ODJHeEFTVnpG?=
 =?utf-8?B?dUdrUFBtaGpPYW1STDV6Rm1DM0dodVBuUTkzdWtBckEvSVczdks4RkxSZElU?=
 =?utf-8?B?ODJqbkE1azB1czNFMDhhVjJGSTJDMlNkYlNzYk0xbXZTQkliaWh2K09rVkdP?=
 =?utf-8?B?L0lPa1FLOUh3aTZSREFiWldQYXpiMmVxVkc1RmR4RXVrVlBZRStzcjBFa3p6?=
 =?utf-8?B?dENyTUk5M1RkeHlJdjFTYTFjd0lyTTBGZUxTcVN3Zmlia1RMVW1GZWlKc0tE?=
 =?utf-8?B?eWJaOUdyb1pSSitDQ2FtRld5YzZhdmg5eXdRK0M2YnNKTDNPekprUmtpWWFP?=
 =?utf-8?B?MXRwSVdnRmhRa1BtRjRSRHUyUFhFQzFUSDhPSXVKR0t3WEQweENZQ3prclJH?=
 =?utf-8?B?L2E1QkQrdjlEUGlpSUtiYXVZbWZ6dkFBdjVQRVVGNTdXakpCQW1hLzJGT1Zl?=
 =?utf-8?B?RUROM253TnBUby9SdElHMkVXQThNSEJYWDRJdWR4NmFrOXBLaFFuYTJ1NVlR?=
 =?utf-8?B?Q2FKVTYzR3pwVGFrVVQ3b3dOaHJqeFZxckRKd2gzTDMyYURiOFliWTJCMXMw?=
 =?utf-8?B?anZvSHgyV2hZMmZtRzN3Rkp0MmFIclVJclFOdnVGdG5sZm82Z3N1eGdFZHlp?=
 =?utf-8?B?NStpVlJXc0p2clNHc3YvaS9hNk9aUi9VMlJyQ2pDKzBOQUl4UU9lQUJxb2xI?=
 =?utf-8?B?alpLYnR3aWRodDhjeGgyVjNhZ2QyMFlQZjd2NDIrYjRZT29Wa2hkZ3JKMm0y?=
 =?utf-8?B?eHkzeG01aXI5ZGJBTVNtVzZsL0NGTS9DR204NGtPanliaWVFMjJGcm05NVlt?=
 =?utf-8?B?MFdwSGpkRCtmbVJuUFR6VXRvZDN1NHdDZTJNM1kyMTJ1eVhEU2t5S0lQZ0ZZ?=
 =?utf-8?B?Q1NIdVlvYjczTGNOYjNCUkdTZlo0RkJoWjJETlRBN29QOTRIWFBtbHF2T1VL?=
 =?utf-8?Q?G4/m+p23KXJPzkIBuRCOwbRIj/V6Sz+/?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VWNBNmY3WjJOVmRPZVUxNXJWL00vQWUzZEV0bTB1LzBNc2I4VlB2UDl5d3RY?=
 =?utf-8?B?ZGlmUnJuMGJjWkRqZ0h1dzdVZ3l6N2pqKy9LOVBYWEdreVJQM3lJbm9FSE5H?=
 =?utf-8?B?SXdxaXdLWFNsLzNnZFNNQm9PUXRyWUZvM2NaNDJVaElpNkdCWEYyQ0hJVDJT?=
 =?utf-8?B?N2lUUWtCNHRXd2IzaSttdHdCS1c0aW9IQzFMWlBZUXVzbHQya0lUMmtZaVBB?=
 =?utf-8?B?bndzYXppR1lqMUUxTjh3RExiT3RJUVZHbXYxb2ZLTnNHNThiaU9rNjYwQUkr?=
 =?utf-8?B?RlBCWkxQeHBuais0N2MzNHZIRkpBdlRaVzkyRmlTTlVmejJraEw3dWRqOGlT?=
 =?utf-8?B?aHFnNzh1bDR3TzRaVnpkN3dFcmJRRkNSTnN3Snk1UHRCcU81THNwUy9OTWww?=
 =?utf-8?B?eEtqNlhRTmx4MVhZeXdXcWRjcWhCdHRtOHIzRVZxNnl1VXV0S3RTNjlpVllv?=
 =?utf-8?B?MFE4eGNYMTh2WXM2OVdiRkdoZEFKV0RoMGVtMXdybW5uTmdrOHFYY3RkVUhG?=
 =?utf-8?B?YkdyVHU0WUFtNlZsdHRUKzBMb0dGS2x1M1lUM0Jjci94VXpmVUlmM0p2VzhU?=
 =?utf-8?B?NVVkYkJjVEF1UE9VT2tPa3JqbUh1NysxNnZhMGlzcFFpSmxWTHp5dDdCS3ZE?=
 =?utf-8?B?dFFDWU1hak40Q2ZaVnIvUkdJSldtMXpnbFExMytzeWxTa2xFbjFXK0FncHZk?=
 =?utf-8?B?c3FJa1Z0TWJIV0s0bnhaUldEVDkzSVBnZjVYME5hUmgweThKc09qKy90eEpj?=
 =?utf-8?B?WUJMU3hiRXJHVEMyRllYQVM2cU9SUjJVVTZzU05USnhvZXAxenE3cFQ2UmN4?=
 =?utf-8?B?cWdONWlzSkpuNXBWd0M2bUJWTk9CZkMyV2ZGMTBsaldQUllnTmJyVVVyalMz?=
 =?utf-8?B?d3JrUjNwSFE0Zkk0cndMdUlMektkR1c4djRjSElpSkZQQWdTV2R1S2lRMVRw?=
 =?utf-8?B?cXlocS9MZEdqTlNWNHFUUEhVejBtMGVuU1hERkRTeWdVWWJXV21KUWFWQXN2?=
 =?utf-8?B?UkxLWGVxRGJMb3gzU3Bsam1YYjJkemh0anBvdE1xTjJ5NFdYWWk5TjQ5OVRZ?=
 =?utf-8?B?Sm5NY0lhV1JtLzJocEc3bFI0SHA5VE1ETFFmNmprOUN6MDJZektKWEJXdGFX?=
 =?utf-8?B?bVF6VFJQVEZRU0cvQ3d0SWxtMCtocXJqTU82dFBOdjFSczYrU3dqZGJZaVo0?=
 =?utf-8?B?dUhRRmM3TUd1S2FMQVBmNHJxcytFYy8rR2hrd29PTmFwRlBBTzdDK0IxSWsv?=
 =?utf-8?B?K2NrU0ZJSTdpZ3hQRjE4SEREc1N4dXYwVSt3aitIbW5XUnM4ZWFlWWxpQms4?=
 =?utf-8?B?V2RCZjkwTkJIVUFYck9EWEFDZTN0dkpMbjJkSnl2MElwMmxkUGFrcURXU211?=
 =?utf-8?B?TWVCYUloRk12RzM1enpkTnlpR1AwWnZBcytnSjJUM2JQTlNrZ3EwK1lUZTU3?=
 =?utf-8?B?WG00TUJCRU8vMGdmRjJQUmNTU3dBaTRST2pydmcyOEtUenhCZkZXKzRqbmdn?=
 =?utf-8?B?Z2pVbnpnLzBHNVJDdEcxbUVNbzlFUHQ0RExVcWFIbFYweEViUmVhWlVDbUtx?=
 =?utf-8?B?N3ZWWUlwL1hJaGlQY1FWWmtRWWJCQjdqcytXWmtabnF3am9QS1ZUR3M2VU05?=
 =?utf-8?B?TTQwNzR1UnJYb1g2NUw3dDhLdXBtcVdoNzVLZGNGaFA2Mk9hNyttUUNZZkt4?=
 =?utf-8?B?alExbXY5ZHNuS1NvOS9jMlNXMExLTUFLb3RFT3lSRFE5NHV5ckRkTStmUXd0?=
 =?utf-8?B?MWR6Z3JOSEpabW54T3l2bXZ0UmpLYzcxYlp4NW5lL0V5OUFMVFRLbDZ4eVpV?=
 =?utf-8?B?Q1g4R1BwTnN0UDI4cmNCbTVDUFc4UnNZa3g2eWNhQzA1TlJrS0Zsa3R3cFR5?=
 =?utf-8?B?OUk5L0J4ZzZqQjc1THcvQWVIbTcyUHlKRjVaOXVXQnpYaGRFQTlweE9mSnJK?=
 =?utf-8?B?elkxbC9odWZvdlRCSGdkTTN5a1lNZitPeEFwSkdmNFJUT2R1QUt0aFB2TVpI?=
 =?utf-8?B?WUp0RVNLbjlzYUV1T2NTU2t1WHNkMlY4TzE5Uy8vRWxoazlCSU1DaGdkNUU2?=
 =?utf-8?B?eEMzRXJ0bjlHcHV2VlRxYzYxVzhwQnlJTGFPTWprSk9maDBacmxRbUEwRTRO?=
 =?utf-8?Q?gI2hTAVqKKDfZuE2ZZk0gldOU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 699673b8-072a-4fb0-93ac-08ddff3081ad
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 08:16:35.8122
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dIOTlGMOXjC7DEbP549aAaELgoeslCBOMQ9GYB+gL7E5/gVs+wfxXcGwP8i7dadQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4143
X-Rspamd-Queue-Id: B8D4544ACE
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[9];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.56.36:from];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YEG7NNGU4C35L2XS4LVA2TOYYWZHQHFP
X-Message-ID-Hash: YEG7NNGU4C35L2XS4LVA2TOYYWZHQHFP
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YEG7NNGU4C35L2XS4LVA2TOYYWZHQHFP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjYuMDkuMjUgMTg6MDAsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4gT24gRnJpLCBTZXAg
MjYsIDIwMjUgYXQgMDQ6NTE6MjlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
IE9uIDI2LjA5LjI1IDE2OjQxLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6DQo+Pj4gT24gRnJpLCBT
ZXAgMjYsIDIwMjUgYXQgMDM6NTE6MjFQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6
DQo+Pj4NCj4+Pj4gV2VsbCBib3RoIGV4cG9ydGVyIGFuZCBleHBvcnRlciBoYXMgc3BlY2lmaWMg
aW5mb3JtYXRpb24gV1JUIHRoaXMuIFRoZQ0KPj4+PiB1bHRpbWF0ZSBkZWNpc2lvbiBpcyBkb25l
IGluIHRoZSBleHBvcnRlciBhdHRhY2goKSBjYWxsYmFjaywganVzdCBsaWtlDQo+Pj4+IHBjaWVf
cDJwLiBBbmQgdGhlIGV4cG9ydGVyIGFja25vd2xlZGdlcyB0aGF0IGJ5IHNldHRpbmcgdGhlDQo+
Pj4+IGRtYV9idWZfYXR0YWNobWVudDo6aW50ZXJjb25uZWN0X2F0dGFjaCBmaWVsZC4gSW4gYW5h
bG9neSB3aXRoIHRoZQ0KPj4+PiBkbWFfYnVmX2F0dGFjaG1lbnQ6OnBlZXIycGVlciBtZW1iZXIu
DQo+Pj4NCj4+PiBIYXZpbmcgYSBzaW5nbGUgb3B0aW9uIHNlZW1zIHRvbyBsaW1pdGVkIHRvIG1l
Li4NCj4+DQo+PiBZZWFoLCBhZ3JlZS4NCj4+DQo+Pj4gSSB0aGluayBpdCB3b3VsZCBiZSBuaWNl
IGlmIHRoZSBpbXBvcnRlciBjb3VsZCBzdXBwbHkgYSBsaXN0IG9mDQo+Pj4gJ2ludGVyY29ubmVj
dHMnIGl0IGNhbiBhY2NlcHQsIGVnOg0KPj4+DQo+Pj4gIC0gVlJBTSBvZmZzZXQgd2l0aGluIHRo
aXMgc3BlY2lmaWMgVlJBTSBtZW1vcnkNCj4+PiAgLSBkbWFfYWRkcl90IGZvciB0aGlzIHN0cnVj
dCBkZXZpY2UNCj4+PiAgLSAiSU9WQSIgZm9yIHRoaXMgaW5pdGlhdG9yIG9uIGEgcHJpdmF0ZSBp
bnRlcmNvbm5lY3QNCj4+PiAgLSBQQ0kgYmFyIHNsaWNlDQo+Pj4gIC0gcGh5c19hZGRyX3QgKHVz
ZWQgYmV0d2VlbiB2ZmlvLCBrdm0sIGlvbW11ZmQpDQo+Pg0KPj4gSSB3b3VsZCByYXRoZXIgc2F5
IHRoYXQgdGhlIGV4cG9ydGVyIHNob3VsZCBwcm92aWRlIHRoZSBsaXN0IG9mIHdoYXQNCj4+IGlu
dGVyY29ubmVjdHMgdGhlIGJ1ZmZlciBtaWdodCBiZSBhY2Nlc3NpYmxlIHRocm91Z2guDQo+IA0K
PiBFaXRoZXIgZGlyZWN0aW9uIHdvcmtzLCBJIHNrZXRjaGVkIGl0IGxpa2UgdGhpcyBiZWNhdXNl
IEkgdGhvdWdodA0KPiB0aGVyZSB3ZXJlIG1vcmUgaW1wb3J0ZXJzIHRoYW4gZXhwb3J0ZXJzLCBh
bmQgaW4gdGhlIGZsb3cgaXQgaXMgZWFzeQ0KPiBmb3IgdGhlIGltcG9ydGVyIHRvIHByb3ZpZGUg
YSBsaXN0IG9uIHRoZSBzdGFjaw0KDQpUaGUgcG9pbnQgaXMgdGhhdCB0aGUgZXhwb3J0ZXIgbWFu
YWdlcyBhbGwgYWNjZXNzZXMgdG8gaXQncyBidWZmZXIgYW5kIHRoZXJlIGNhbiBiZSBtb3JlIHRo
YW4gb25lIGltcG9ydGVyIGFjY2Vzc2luZyBpdCBhdCB0aGUgc2FtZSB0aW1lLg0KDQpTbyB3aGVu
IGFuIGV4cG9ydGVyIHNlZXMgdGhhdCBpdCBhbHJlYWR5IGhhcyBhbiBpbXBvcnRlciB3aGljaCBj
YW4gb25seSBkbyBETUEgdG8gc3lzdGVtIG1lbW9yeSBpdCB3aWxsIGV4cG9zZSBvbmx5IERNQSBh
ZGRyZXNzIHRvIGFsbCBvdGhlciBpbXBvcnRlcnMgYXMgd2VsbC4NCg0KQnV0IGluIGdlbmVyYWwg
aWYgd2Ugc3RhcnQgd2l0aCB0aGUgZXhwb3J0ZXIgb3IgdGhlIGltcG9ydGVyIGxpc3QgZG9lc24n
dCByZWFsbHkgbWF0dGVyIEkgdGhpbmsuDQoNCj4gSSBkaWRuJ3Qgc2tldGNoIGZ1cnRoZXIsIGJ1
dCBJIHRoaW5rIHRoZSBleHBvcnRlciBhbmQgaW1wb3J0ZXIgc2hvdWxkDQo+IGJvdGggYmUgcHJv
dmlkaW5nIGEgY29tcGF0aWJsZSBsaXN0IGFuZCB0aGVuIGluIGFsbW9zdCBhbGwgY2FzZXMgdGhl
DQo+IGNvcmUgY29kZSBzaG91bGQgZG8gdGhlIG1hdGNoaW5nLg0KDQpNb3JlIG9yIGxlc3MgbWF0
Y2hlcyBteSBpZGVhLiBJIHdvdWxkIGp1c3Qgc3RhcnQgd2l0aCB0aGUgZXhwb3J0ZXIgcHJvdmlk
aW5nIGEgbGlzdCBvZiBob3cgaXQncyBidWZmZXIgaXMgYWNjZXNzaWJsZSBiZWNhdXNlIGl0IGtu
b3dzIGFib3V0IG90aGVyIGltcG9ydGVycyBhbmQgY2FuIHByZS1yZWR1Y2UgdGhlIGxpc3QgaWYg
bmVjZXNzYXJ5Lg0KDQpJdCBjYW4gYWxzbyBiZSB0aGF0IHRoaXMgbGlzdCBjaGFuZ2VzIHdoZW4g
bmV3IGltcG9ydGVycyBjb21lIGFsb25nICh0aGF0IHdhcyBvbmUgb2YgdGhlIGJpZyBtb3RpdmF0
aW9ucyBmb3IgdGhlIG1vdmVfbm90aWZ5IGNhbGxiYWNrKS4NCg0KSW4gb3RoZXIgd29yZHMgd2Ug
aGF2ZSB1c2UgY2FzZXMgd2hlcmUgd2UgbmVlZCB0byBkbyBzY2Fub3V0LCByZW5kZXIgYW5kIFY0
TCB0byB0aGUgc2FtZSBidWZmZXIgYXQgdGhlIHNhbWUgdGltZSBhbmQgYWxsIHRocmVlIG9mIHRo
YXQgYXJlIGRpZmZlcmVudCBkZXZpY2VzIHdpdGggZGlmZmVyZW50IHJlcXVpcmVtZW50cy4NCg0K
PiANCj4gSWYgdGhlIGltcG9ydGVyIHdvcmtzIGFzIEkgc2hvd2VkLCB0aGVuIHRoZSBleHBvcnRl
ciB2ZXJzaW9uIHdvdWxkIGJlDQo+IGluIGFuIG9wOg0KPiANCj4gaW50IGV4cG9ydGVyX25lZ290
aWF0ZV9vcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiAgICBzdHJ1Y3QgZG1hX2J1Zl9pbnRl
cmNvbm5lY3RfbmVnb3RpYXRpb24gKmltcG9ydGVyX3N1cHBvcnQsIHNpemVfdCBpbXBvcnRlcl9s
ZW4pDQo+IHsNCj4gICAgICBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfbmVnb3RpYXRpb24g
ZXhwb3J0ZXJfc3VwcG9ydFsyXSA9IHsNCj4gICAgICAgICAgWzBdID0gey5pbnRlcmNvbm5lY3Qg
PSBteXNlbGYtPnhlX3ZyYW19LA0KPiAgICAgICAgICBbMV0gPSB7LmludGVyY29ubmVjdCA9ICZk
bWFidWZfZ2VuZXJpY19kbWFfYWRkcl90LCAuaW50ZXJjb25uZWN0X2FyZ3MgPSBleHBvcnRlcl9k
ZXZ9LA0KPiAgICAgIH07DQo+ICAgICAgcmV0dXJuIGRtYV9idWZfaGVscGVyX25lZ290aWF0ZShk
bWFidWYsIGV4cG9ydGVyX3N1cHBvcnQsDQo+ICAgICAgICAgICAgICBBUlJBWV9TSVpFKGV4cG9y
dGVyX3N1cHBvcnQpLCBpbXBvcnRlcl9zdXBwb3J0LCBpbXBvcnRlcl9sZW4pOw0KPiB9DQo+IA0K
PiBXaGljaCB0aGUgZG1hX2J1Zl9uZWdvdGlhdGUoKSBjYWxscy4NCj4gDQo+IFRoZSBjb3JlIGNv
ZGUgZG9lcyB0aGUgbWF0Y2hpbmcgZ2VuZXJpY2FsbHksIHByb2JhYmx5IHRoZXJlIGlzIGENCj4g
c3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0IG1hdGNoKCkgb3AgaXQgdXNlcyB0byBoZWxwIHRo
aXMgcHJvY2Vzcy4NCj4gDQo+IEkgZG9uJ3QgdGhpbmsgaW1wb3J0ZXIgb3IgZXhwb3J0ZXIgc2hv
dWxkIGJlIG9wZW4gY29kaW5nIGFueSBtYXRjaGluZy4NCg0KQWdyZWUsIHRoYXQgc2hvdWxkIGJl
IHNvbWVob3cgaGFuZGxlZCBieSB0aGUgZnJhbWV3b3JrLg0KDQo+IEZvciBleGFtcGxlLCB3ZSBo
YXZlIHNvbWUgc3lzdGVtcyB3aXRoIG11bHRpcGF0aCBQQ0kuIFRoaXMgY291bGQNCj4gYWN0dWFs
bHkgc3VwcG9ydCB0aG9zZSBwcm9wZXJseS4gVGhlIFJETUEgTklDIGhhcyB0d28gc3RydWN0IGRl
dmljZXMNCj4gaXQgb3BlcmF0ZXMgd2l0aCBkaWZmZXJlbnQgcGF0aHMsIHNvIGl0IHdvdWxkIHdy
aXRlIG91dCB0d28NCj4gJmRtYWJ1Zl9nZW5lcmljX2RtYV9hZGRyX3QncyAtIG9uZSBmb3IgZWFj
aC4NCg0KVGhhdCBpcyBhY3R1YWxseSBzb21ldGhpbmcgd2UgdHJ5IHJhdGhlciBoYXJkIHRvIGF2
b2lkLiBFLmcuIHRoZSBleHBvcnRlciBzaG91bGQgb2ZmZXIgb25seSBvbmUgcGF0aCB0byBlYWNo
IGltcG9ydGVyLg0KDQpXZSBjYW4gb2YgY291cnNlIGRvIGxvYWQgYmFsYW5jaW5nIG9uIGEgcm91
bmQgcm9iaW4gYmFzZXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gVGhlIEdQVSB3b3Vs
ZCBkbyB0aGUgc2FtZS4gVGhlIGNvcmUgY29kZSBjYW4gaGF2ZSBnZW5lcmljIGNvZGUgdG8NCj4g
ZXZhbHVhdGUgaWYgUDJQIGlzIHBvc3NpYmxlIGFuZCBlc3RpbWF0ZSBzb21lIFFPUiBiZXR3ZWVu
IHRoZSBvcHRpb25zLg0KPiANCj4gSmFzb24NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
