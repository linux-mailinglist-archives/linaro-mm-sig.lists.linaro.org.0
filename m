Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1CDC1A80D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Oct 2025 14:06:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80DE13F7E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Oct 2025 13:06:28 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011000.outbound.protection.outlook.com [52.101.62.0])
	by lists.linaro.org (Postfix) with ESMTPS id 9032B3F73D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Oct 2025 13:06:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Zft4Qxvw;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.62.0 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tpHiRrICScorsDZR1TAM6QFyGCahIT/2sI8iGMzFP7c2UnUlU6xoNdI21ueDMCR0SBMAQuT9ZEN5YxBx3o+Ty5eXRGKOgAx8bEqWAVur4D0kMa2PAKwv2EXs2OZ0eBo4OIyXteOgiHHyDhrFv+473WtfQkRnGvVA/eB1hmFKgYSxtYnYDl/Ll2ei3/6UXMPq8ccB1yreW+yazkI3KC99uM/HHZV0m5D528te4KZPWXK8R03p3Ci78coj5qOijLjzOS2WGE6YlpFSW3FTzjNzVydC+0bOvUfxo2M/jQyI8o9VuvvL1Z0dspTii9Vt5BtRcZUlpRj5l/w1Lv4xdS9uAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AUD4K93MdB174fcdB8IKFqMOqaAJRd4EEq2I1yI7zhA=;
 b=c6eWOf6+JSMkvSJI1tImBUyckD+Rlu8vwXgtvzJlyNnORByQkuDJA/exDSQoJYmh+eFiXjfsioDq5Ca7yRB4i+FXI0iCmmdvlLhPm5xILKpDkiDTKQ+btCNc2eHj+rkN836XVBsECAzvFuW7nipecdFh3T5geDU0wPhgKYnb6z8ET0s4BnaGESr2FyAdnQEbVcvQR8sCMgX5Fy9KgI7via5F73eBP5OTJ9Wnn1f7wPqXmnTs/ReSGtUplNWw8QwESvuI2qBO3+84wz5NKHDAM4jGv8dULOG/SdP1do7pyfDBZzmK5B8A1t0W0jjGUNv/h5Gi5pCxJ46pVHGLZP+hnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AUD4K93MdB174fcdB8IKFqMOqaAJRd4EEq2I1yI7zhA=;
 b=Zft4QxvwDrOqU2iTPXD+mKp9blK6sn0mF1q+wmDAW71YO8YN5BCH6LgrQC/YHIOvCuBHeUHQcG99Zfu2KU9lb6ENNShaJsFxUvi9w4hma0d4QB3l5BB0FFysLgqd4qqr3DrRLBuU89KtyBkZIqhhlbHV+dOaVSz9fEz8YBOaB3A=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW6PR12MB8866.namprd12.prod.outlook.com (2603:10b6:303:24c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Wed, 29 Oct
 2025 13:06:12 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 13:06:12 +0000
Message-ID: <a3f41155-3c32-40dd-b750-1023d94e2923@amd.com>
Date: Wed, 29 Oct 2025 14:05:57 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Philipp Stanner <phasta@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251029091103.1159-1-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251029091103.1159-1-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: BN9P221CA0020.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:408:10a::32) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW6PR12MB8866:EE_
X-MS-Office365-Filtering-Correlation-Id: 61923fe9-a83a-451f-a67e-08de16ebef6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZEN5bm9aN082M1NHNmRhemhpZ2hxTjNuZWJZSlZ4QzB2RFZmaGhnSWZVMGVD?=
 =?utf-8?B?L3drN3Z4ZElrRmZQK1Q3emsxV0JNY3ViWmQ4VVhFbCs5ZkljM1NvWnpXWXNG?=
 =?utf-8?B?Z1k4KzhmRmZHRVJjaHlNQ0xUM3VVS0o3Qkk2eFlmeXN5U1hjMXhNd3RxaUph?=
 =?utf-8?B?S3l6S0ZJeENXZU1DSU5oSlllZVFFUzVZcW8xZWxnMUZnUkViS2VVUjNiSy9I?=
 =?utf-8?B?YUgzcU1vWXVoN1VnK0VVQ3A3MTgwamZ1VWNTYXYvTHFHOExzcjhVcnBBSXR3?=
 =?utf-8?B?Q1UvdTJwOTRndmFZanBoQ1RHVDBvSkpaRnpIblB1bDIrRzRlZVRRUE5HMHpu?=
 =?utf-8?B?MDM5VnlSN2pnSmhQK3NxZWdGNWF2SGJiNk1sejlZdzBpM2Y2cmxMdTVMeEJM?=
 =?utf-8?B?aXlXSW5oVStCTCsyVmkwTUVvQTNQb0MvU1o4UStyTWlWTFJSSHVLQXkzRmlK?=
 =?utf-8?B?WC82YVMyV3pYK0ZnWmJDOStuQmNBNVBRVU5NRVJVWnhJWXlZK3lEU1dCRUNC?=
 =?utf-8?B?dlM1MXVyeXc5N0VQaDg5cGJqTnY1ejF1dHUvSHlmdFBkdzFiNHVKRVlIeWZx?=
 =?utf-8?B?b0JqVW5sNlZRdjB1U2NlY2c1bFc4NCtzUSt3UVJRQmcwdEcwZHRubWZ1cXVJ?=
 =?utf-8?B?T3c0a0VScHArTmpyZFNVaXE2Y0Rib3NVTk95Y2l1aGM5OGU4Z1JFSytNeE44?=
 =?utf-8?B?c29rbGlSbzlWanlLK1F2Y3VRMzROeFJnU1BjRTM5L09BQ3NYODNLZ3d6OEpo?=
 =?utf-8?B?dHRmRU1QL0lVK2trVkIyYUFRdk8rOUN5Q0VkeWFOazdJVUNmekxDTWRmUUl4?=
 =?utf-8?B?My9hSVhQUnUzUHIxekZONlM0VTF1b2swcWxyOFhzaWw0b0kvRTBYUm5lL1dO?=
 =?utf-8?B?SVpheklacUM0OXN1RVZIeUJjZ2JGWEt3Q1IvTFNWQ2RqVDFhaSt6M1hpVy9m?=
 =?utf-8?B?VzhVVnNSL2I3UjJXNlFmNmVGSUM5MUxkL1BSaTg5TTRJeitvVUFFeGhaVWtr?=
 =?utf-8?B?OU1BUXpDUCtrRjNYNWVRWitBZTYwVjJBWVhqRlludXRRc05xT2hSL28ydG9q?=
 =?utf-8?B?VHlMY2RiQ21NK3ZNUHBXelU5QjRGaXFIRHh3emJRN1pVbzRWQ3c0R1F6K1pF?=
 =?utf-8?B?dmc2Y29ac0tJTCtXZDllSzBFQWpud1ROQ3dCZU16OXlFTEhZUU5KcTdKMUdn?=
 =?utf-8?B?cm8yL0JFZld1SEJ6akJ2QTdUT1pFR2lVdm9QTkVZTFZlOFNMQ2lySHZrdkxn?=
 =?utf-8?B?YUZBS25MR1BMUDh1eUpPL25HL0I3SjRaeDhzZGx4b2wvbWQ5cStLRVkyeDEy?=
 =?utf-8?B?bW9VdDEyTXdJWFdpL0tIVVR6RFpPZjAwWFVaUm9iMklqTFRSVW1oRjU2MUdR?=
 =?utf-8?B?bXRoQ1ROaFJQSSs1bDZtWElWNWZnb1J4R1JLcy92ODNlNE9sdHA1ZnppTlA5?=
 =?utf-8?B?VlpPdGpYQWFTOXQ0Y3EzaU9iN01CUks3eXJOenR3N2lwc29RYjM5UExXZ2Nm?=
 =?utf-8?B?Nmtnc1BpV3RBY293cndTQmFRQjg3SVlvbE1NU0o5MUhwTzdZZEMreS8rY0JG?=
 =?utf-8?B?MWpZLzVzb3NJclZ4NG1LSFRMQUtvZG1zQVZNQlptOExpSG82K0IxVmMxTitq?=
 =?utf-8?B?Y253QjR6UGxCQjlYeTRja3U2MityZk5tZjNScmZOTnZsZm14TUdJZ1hnWW45?=
 =?utf-8?B?WHQwOGkxYTNwbmF2QTNJV1BsVzVCTHZYSnVVSnhGZThTc1hsRktobUFFWWhR?=
 =?utf-8?B?bnRvd3pRNFhZcERIWWJyTTVnTWpwR0o0T29RdGMzcnJwekVPNnEzdFYvZGtY?=
 =?utf-8?B?c3Z2cyt5cUpxaGlZUFhNbUQ1VW42aDF1SGJCY3Y3OGd1VW8rZkZEK3lkV2ov?=
 =?utf-8?B?eURIQUcycnliY0FaUTZKSDRWd1NLRlpwbm9oRmFRQzkvRzR1YVBsVkVBeXpI?=
 =?utf-8?Q?SLcUmMtxOWzl2teaW1WTL5bp5+pg/dds?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?clpZSVEyV0w2VnA2K2hIOThDdFZUeDRPdlJSMVZJb3dYSTBqL1RFTXRXdk1m?=
 =?utf-8?B?SnNRSHJ4bE4wY3ZEcm5mdVBEOGd2RWgxa2l6VlFYMmpKTGRzMStqbjJJMUFG?=
 =?utf-8?B?N1BERzAvN3o1Y0poeU5KdnhoTEkrVDFneVFYUUl1a0JFbFpoOVYwQStxVDdt?=
 =?utf-8?B?M1NKVEF5aEFlMXQyWkxZWHlrL25PSU95OXYwTU96NENjS0lPT1NXcTYwZ3dD?=
 =?utf-8?B?aUVTcTVMRDhHVlU0RGZXbUZvKzduSEZDQTdNQzhLVTQyUHQ4ZEJCc0FOeFpr?=
 =?utf-8?B?SnpKeGczdm9leUZLWmR3TndsWTdrMDlHckwrLy9jV0NaclFKSmFTbTQ3bGdh?=
 =?utf-8?B?UDNQbXErdWhxYzBUZ3FCSTVRWnpFczRhOGwrQlhHclVmTGsrTEpkSnNyVVpJ?=
 =?utf-8?B?ZTErbnJsdHh1cE1lSVltOE92ak1OalNuUnA0UjMzQmdDQzRreE03L2F5RndC?=
 =?utf-8?B?eDRSdStIamxyV293SjdpUWxoRUM2QUlOWEszd0s1c1ZidHJoVjFOcm1KSFEy?=
 =?utf-8?B?d0RjTytkK2xmYWxGNzl5MWdKVkFTZCtoWkpWQXR1V2JramxBMmQrTFdncERR?=
 =?utf-8?B?RGF5STNxQkF4K2RUOEh6cTFQbXBpZmRBVGUzSk8zSUFLTGRYUUN3RkIyYW1T?=
 =?utf-8?B?MTl5bVgrRUdjM2lyUXMxTWFJZXhEZXk3b2d5eEtZYWJybGxFNGR6NDd6eDY5?=
 =?utf-8?B?OFQ4MEgzSFgyODcxTEo0bnRsUnJkRlBnNzFUdUFsZklKaUVYOExRd2VKSTQ5?=
 =?utf-8?B?SGx4d3J1c1VScUpTS096Tm8xQ0htRWFiZDJBQ2lTRG9mNHRERUxKSFBSS2s0?=
 =?utf-8?B?T1Vrdk1ZU2NEdDh5Mk1HZEJ4QiszcmFqVkRzVm9vMHl6OHBscm9MZE9tNllN?=
 =?utf-8?B?aDBibCswdlFtTXpkcGtxTnVuSnRUTGVsRm43R0phc1VTVzRBdks1NWxBcUEy?=
 =?utf-8?B?M0xoYjNwUk10TjRSQ2h4YS9CRjMvTlRXc3RQS1kwOVhkaVFiWjc0TDQ4Zm8w?=
 =?utf-8?B?NGZuTENVcGVpc3dXUlN3RzBaMkJKSmhOSmpCS1krcGU5YnN2WFBCSmJoZ3Rx?=
 =?utf-8?B?SXdpb3BSdEtQR1A3NUEvQkMxZmlVRkFsdThHOVJCM2RNdkpZMEJJUnN6MXM2?=
 =?utf-8?B?SGN3QWR4K1ZjUWhLQWh1UFBnUVIrVTdJSVdvbmY3RHZhSzgwNnZWa1h5K3lG?=
 =?utf-8?B?WGQ0aldGR0tHVmt0OExIanp1dWQxcy9BalRiK2JmNjJBc3E5NGliZmFkbitw?=
 =?utf-8?B?ZzJDeVJGNW92U3BEcWJRM1RkOUpHWFphcjRIZjRiMTFNV2tNQlNZZzNiT0o4?=
 =?utf-8?B?UGcwWUEvNjZqZEJFa2RLNlJNdTJ4azl5QUkzUXRPQVY3aWZuUTkwNnAyREhJ?=
 =?utf-8?B?bStHRlFuMTA1ZDNTSVMxdTVvSzZKOGE4cmMzMVVQZVcxQi9sY3RNaVVObzd2?=
 =?utf-8?B?OEJaVXBBaUVyc2JaUzA2RmxpUWZLUytrNVplWTg4QU9pMDFqNXNsZWM2dGgx?=
 =?utf-8?B?WTJJc0t0SGRrWjl2b0tzUmFvMXJDUTdvS2llb2M0SnducXJuYm11WllDQXdz?=
 =?utf-8?B?cVprLzQ2NzZwM1RvMDhpS0VtQTZWdXAwbjhqbjNHbGg0bktuaEdrYjc5YVN3?=
 =?utf-8?B?QjRWL3lXcU5ObEJkMWErWWV5YXR0K1ZzNDBjL2ZhK1VEb1Y0TGN6WXZtTUFN?=
 =?utf-8?B?RE0rR2dwMlpRMW0xOTFhcjUzcUIwVmszeUIyVXhqK1NjWkp2c2xTR3JUWkN3?=
 =?utf-8?B?MHdHd1h3eFl2dGRTQ29lTFdqYWpNMk5oYzFmUjVzdEErWkJkQUFUUFQ3M2FD?=
 =?utf-8?B?STE3WmFMSWJGTHFpQ2dTQnZ2ZVE4Sk5Xb0hsM1c3NjkzWDZIZjdKTEE5ZE9o?=
 =?utf-8?B?YUk3SzRBUFJpL2k4R3RESDM0T3NNRWZjZlI5YS9aOWdjVTRCZjdvN3NvV3pL?=
 =?utf-8?B?TFM4NEx5andiUUFxaVMwNENGdUVKYnFJUmJyalhrVG4vV2EwWmpYZWxhL0dm?=
 =?utf-8?B?amlpUW9HUlByeU1PTkpwdkFiVC9GdktMa1ppMFRVV1NEdkE0WWV3cE5UYWEz?=
 =?utf-8?B?TGhTc3ArdE9vb0RmY2tPNVpzM0k5S1hlQ1AvY010Z0p2L2FZTDFHYWRaaHBw?=
 =?utf-8?Q?pp+DSULJkxBHU86GaQeBAm8Mz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61923fe9-a83a-451f-a67e-08de16ebef6c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 13:06:12.5198
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A4UT/FRrQ53XcvPniHPIsH6L/c6Exet4aMw2I+RcVwFadtlXfD2BatB2tatiyhPD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8866
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9032B3F73D
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.62.0:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,52.101.62.0:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: LMSEZ4HE37FYSK2AC3QP7ZFVJ3C46AU7
X-Message-ID-Hash: LMSEZ4HE37FYSK2AC3QP7ZFVJ3C46AU7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] drm/sched: fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LMSEZ4HE37FYSK2AC3QP7ZFVJ3C46AU7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTAvMjkvMjUgMTA6MTEsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vaXNzdWVzLzEzOTA4IHBv
aW50ZWQgb3V0DQo+IGEgcG9zc2libGUgZGVhZGxvY2s6DQo+IA0KPiBbIDEyMzEuNjExMDMxXSAg
UG9zc2libGUgaW50ZXJydXB0IHVuc2FmZSBsb2NraW5nIHNjZW5hcmlvOg0KPiANCj4gWyAxMjMx
LjYxMTAzM10gICAgICAgIENQVTAgICAgICAgICAgICAgICAgICAgIENQVTENCj4gWyAxMjMxLjYx
MTAzNF0gICAgICAgIC0tLS0gICAgICAgICAgICAgICAgICAgIC0tLS0NCj4gWyAxMjMxLjYxMTAz
NV0gICBsb2NrKCZ4YS0+eGFfbG9jayMxNyk7DQo+IFsgMTIzMS42MTEwMzhdICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBsb2NhbF9pcnFfZGlzYWJsZSgpOw0KPiBbIDEyMzEuNjExMDM5
XSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9jaygmZmVuY2UtPmxvY2spOw0KPiBb
IDEyMzEuNjExMDQxXSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9jaygmeGEtPnhh
X2xvY2sjMTcpOw0KPiBbIDEyMzEuNjExMDQ0XSAgIDxJbnRlcnJ1cHQ+DQo+IFsgMTIzMS42MTEw
NDVdICAgICBsb2NrKCZmZW5jZS0+bG9jayk7DQo+IFsgMTIzMS42MTEwNDddDQo+ICAgICAgICAg
ICAgICAgICAqKiogREVBRExPQ0sgKioqDQo+IA0KPiBNeSBpbml0aWFsIGZpeCB3YXMgdG8gcmVw
bGFjZSB4YV9lcmFzZSBieSB4YV9lcmFzZV9pcnEsIGJ1dCBDaHJpc3RpYW4NCj4gcG9pbnRlZCBv
dXQgdGhhdCBjYWxsaW5nIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2sgZnJvbSBhIGNhbGxiYWNrIGNh
bg0KPiBhbHNvIGRlYWRsb2NrIGlmIHRoZSBzaWduYWxsaW5nIGZlbmNlIGFuZCB0aGUgb25lIHBh
c3NlZCB0bw0KPiBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrIHNoYXJlIHRoZSBzYW1lIGxvY2suDQo+
IA0KPiBUbyBmaXggYm90aCBpc3N1ZXMsIHRoZSBjb2RlIGl0ZXJhdGluZyBvbiBkZXBlbmRlbmNp
ZXMgYW5kIHJlLWFybWluZyB0aGVtDQo+IGlzIG1vdmVkIG91dCB0byBkcm1fc2NoZWRfZW50aXR5
X2tpbGxfam9ic193b3JrLg0KPiANCj4gU3VnZ2VzdGVkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFBpZXJyZS1FcmljIFBl
bGxvdXgtUHJheWVyIDxwaWVycmUtZXJpYy5wZWxsb3V4LXByYXllckBhbWQuY29tPg0KDQpSZXZp
ZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyB8IDM0ICsr
KysrKysrKysrKystLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMo
KyksIDE1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X2VudGl0eS5jDQo+IGluZGV4IGM4ZTk0OWY0YTU2OC4uZmUxNzRhNDg1N2JlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMNCj4gQEAgLTE3MywyNiArMTcz
LDE1IEBAIGludCBkcm1fc2NoZWRfZW50aXR5X2Vycm9yKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5
ICplbnRpdHkpDQo+ICB9DQo+ICBFWFBPUlRfU1lNQk9MKGRybV9zY2hlZF9lbnRpdHlfZXJyb3Ip
Ow0KPiAgDQo+ICtzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYihzdHJ1
Y3QgZG1hX2ZlbmNlICpmLA0KPiArCQkJCQkgIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKTsNCj4g
Kw0KPiAgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yayhzdHJ1Y3Qg
d29ya19zdHJ1Y3QgKndyaykNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iID0g
Y29udGFpbmVyX29mKHdyaywgdHlwZW9mKCpqb2IpLCB3b3JrKTsNCj4gLQ0KPiAtCWRybV9zY2hl
ZF9mZW5jZV9zY2hlZHVsZWQoam9iLT5zX2ZlbmNlLCBOVUxMKTsNCj4gLQlkcm1fc2NoZWRfZmVu
Y2VfZmluaXNoZWQoam9iLT5zX2ZlbmNlLCAtRVNSQ0gpOw0KPiAtCVdBUk5fT04oam9iLT5zX2Zl
bmNlLT5wYXJlbnQpOw0KPiAtCWpvYi0+c2NoZWQtPm9wcy0+ZnJlZV9qb2Ioam9iKTsNCj4gLX0N
Cj4gLQ0KPiAtLyogU2lnbmFsIHRoZSBzY2hlZHVsZXIgZmluaXNoZWQgZmVuY2Ugd2hlbiB0aGUg
ZW50aXR5IGluIHF1ZXN0aW9uIGlzIGtpbGxlZC4gKi8NCj4gLXN0YXRpYyB2b2lkIGRybV9zY2hl
ZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+IC0JCQkJCSAgc3Ry
dWN0IGRtYV9mZW5jZV9jYiAqY2IpDQo+IC17DQo+IC0Jc3RydWN0IGRybV9zY2hlZF9qb2IgKmpv
YiA9IGNvbnRhaW5lcl9vZihjYiwgc3RydWN0IGRybV9zY2hlZF9qb2IsDQo+IC0JCQkJCQkgZmlu
aXNoX2NiKTsNCj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmOw0KPiAgCXVuc2lnbmVkIGxvbmcgaW5k
ZXg7DQo+ICANCj4gLQlkbWFfZmVuY2VfcHV0KGYpOw0KPiAtDQo+ICAJLyogV2FpdCBmb3IgYWxs
IGRlcGVuZGVuY2llcyB0byBhdm9pZCBkYXRhIGNvcnJ1cHRpb25zICovDQo+ICAJeGFfZm9yX2Vh
Y2goJmpvYi0+ZGVwZW5kZW5jaWVzLCBpbmRleCwgZikgew0KPiAgCQlzdHJ1Y3QgZHJtX3NjaGVk
X2ZlbmNlICpzX2ZlbmNlID0gdG9fZHJtX3NjaGVkX2ZlbmNlKGYpOw0KPiBAQCAtMjIwLDYgKzIw
OSwyMSBAQCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYihzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmLA0KPiAgCQlkbWFfZmVuY2VfcHV0KGYpOw0KPiAgCX0NCj4gIA0KPiArCWRy
bV9zY2hlZF9mZW5jZV9zY2hlZHVsZWQoam9iLT5zX2ZlbmNlLCBOVUxMKTsNCj4gKwlkcm1fc2No
ZWRfZmVuY2VfZmluaXNoZWQoam9iLT5zX2ZlbmNlLCAtRVNSQ0gpOw0KPiArCVdBUk5fT04oam9i
LT5zX2ZlbmNlLT5wYXJlbnQpOw0KPiArCWpvYi0+c2NoZWQtPm9wcy0+ZnJlZV9qb2Ioam9iKTsN
Cj4gK30NCj4gKw0KPiArLyogU2lnbmFsIHRoZSBzY2hlZHVsZXIgZmluaXNoZWQgZmVuY2Ugd2hl
biB0aGUgZW50aXR5IGluIHF1ZXN0aW9uIGlzIGtpbGxlZC4gKi8NCj4gK3N0YXRpYyB2b2lkIGRy
bV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+ICsJCQkJ
CSAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9zY2hlZF9q
b2IgKmpvYiA9IGNvbnRhaW5lcl9vZihjYiwgc3RydWN0IGRybV9zY2hlZF9qb2IsDQo+ICsJCQkJ
CQkgZmluaXNoX2NiKTsNCj4gKw0KPiArCWRtYV9mZW5jZV9wdXQoZik7DQo+ICsNCj4gIAlJTklU
X1dPUksoJmpvYi0+d29yaywgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yayk7DQo+ICAJ
c2NoZWR1bGVfd29yaygmam9iLT53b3JrKTsNCj4gIH0NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
