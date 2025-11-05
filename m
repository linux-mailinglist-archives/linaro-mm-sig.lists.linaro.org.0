Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD34C35C03
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 05 Nov 2025 14:03:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3158D3F807
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Nov 2025 13:03:30 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011034.outbound.protection.outlook.com [52.101.62.34])
	by lists.linaro.org (Postfix) with ESMTPS id 3BE0D3F792
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 13:03:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Z2dozj4Z;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.62.34 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nqkd5oeqUrMOZYWIqZmojtVUzNct285UfeIDmla9VrLMh6DVaFkduN9BQ0o3yjaoXhfBUJVynAgWZwlSASgTC/F0X2PeCuCWxLgs55AfF+MPZfxktYjK7QRa1Ev7JDRG4sGbJ5Xw+VR33tjnhh9iiGzhq07m6nljcHFJ0PHWxEnem5oiRJrpmyzrRVKJshDXdS+xYavctPvCV9Qbfudf8Sx1umwJbsi2jB1rTr5RBVHu7NYWE6cEfO0fYUz4PeGUCVmnCbkry6pHR69vcGBnbkxg4KyuuRrkgUqL5TS3wrHbhpp1gpsouJDaiCDa5WTniFs5YvAssCImNxo42rzJ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8AmX7zzo0CxA+lXPCSIvrPAcsTRIhV8NKQx2aM/k06g=;
 b=QXzecvXgCfb6ihppOm0dDJhVOu6aLlfNNCdNWLDZjxLtbRu0oNnJ9FMJlgjcUpCaAzgwDGppajmgWtW5hYRjdVwc20Xvyk0wkdu3su0qudUX44sBEjPka4Ly+QriDAKkUgpCVGSfz4nm5hk9t3c2PUdpnSNUac5NPUW5sGdlNU8yG5e4XMgdhfFUxNc7W9wvHZ8IhHhcDvbXpT+vSxy7Tn+c3b6Tdd6lwNOVrQFIqT4xvCtJfMx7DOzeCDuPFXzGW81HuQX/d1mTAY5crCv5ftpyTKkey7HZPY9bIfxg7wBkij5o/Va1+QwbD0GAb/RQZ+9gqbC4vtzS5up19Z3KrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8AmX7zzo0CxA+lXPCSIvrPAcsTRIhV8NKQx2aM/k06g=;
 b=Z2dozj4Z/+cqdEqyiAo/oNPnvthwATQekqFswooL4BQvdx4oYIGEqRPxo30jLSfVKm4oZdUk5X2qbWfikZGketf5o40kA72aQ3J+MuinSd8O3BjMSq6gsuSn1uvYfCOWrIlgOlOX/+nMGdHK9V4zTbOTgZgXYr0sHlXVEd9W6B8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4106.namprd12.prod.outlook.com (2603:10b6:5:221::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 13:03:15 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9298.007; Wed, 5 Nov 2025
 13:03:14 +0000
Message-ID: <29c2e42d-6d94-4462-9302-af71f489a928@amd.com>
Date: Wed, 5 Nov 2025 14:03:04 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
 <20251104083605.13677-12-pierre-eric.pelloux-prayer@amd.com>
 <0f9aa878-46c4-48d6-9ad5-774a0927b291@amd.com>
 <7395bf47-68fd-4af6-8720-e51dc75253bc@damsy.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <7395bf47-68fd-4af6-8720-e51dc75253bc@damsy.net>
X-ClientProxiedBy: BN9PR03CA0778.namprd03.prod.outlook.com
 (2603:10b6:408:13a::33) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4106:EE_
X-MS-Office365-Filtering-Correlation-Id: ad9ede8a-3b8f-4877-4164-08de1c6badee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|3122999009;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?b0ZjdlA1MUxUbGt0TjUra1FvSUp2R2FKb1dSRDlOckJJNEFYOGVWMWE2VXFj?=
 =?utf-8?B?b0pOWms5K0FXWTV0OUxCRmVYcGZ0T1g2eWV5OGU1T2hDeCtYWndQNjV1OU42?=
 =?utf-8?B?d0ZkeUxIQlBablpCa1ppQm1jZ0piOHY2bE84WUIwalFMcFExTEZHcEVGV002?=
 =?utf-8?B?alNYa3pGdW1Oek5mRVc1MlpxQUFmMXJvYnR2TS9URk5oTnMxRTFzZU9Bb1JH?=
 =?utf-8?B?eE1TbVU2ZmtMSTY3Sk15aVV0enlLZWhhcmxtcUoxUk5jRVNZSW91Tzg0QTRm?=
 =?utf-8?B?OHhZZis0VGlRZnhvZVk1S0ZqSUVhMlZFMEdtSjF0c3liak5CaDkxUHdoWjBP?=
 =?utf-8?B?Sjg3ZDNjRlBrNUZLZGNRNVE4VkwyWnlDNFhqNnFnamxkQksxVjZWUEVTQnc4?=
 =?utf-8?B?RWwydUx0VERIMzNyalVtRkVGQ0NoY3dyVVB2cEo4ZzVtWjRMd1lsNkgzSnlk?=
 =?utf-8?B?SjltVkw5bXNVRjNxQ3NLSTc5aUplS0QrK0s4K2FReHRzSm84UFBRMDg5eUdD?=
 =?utf-8?B?cC82cjVOcGpnSEdKUVhWeU44cDdQUjdXNTNudXdRck9KdFJkLzY5UmloYkQz?=
 =?utf-8?B?VFkwTmNheWJtcXZJNUNXdkh6NTFTSnU0ZlQ1MjVNcmszQk5RUUMwTnExV3F5?=
 =?utf-8?B?UFVvN3h1QnA1TG9HdDNPb3RxcllBRi9PV0pXdFdvMnpqOWZMRHlRVW1oRzBT?=
 =?utf-8?B?bjlBYWc3SDNBcjVqV294KzNaZ3hLTEdLaURXN3BiMVIvMVNtdjNFUDA5UnRM?=
 =?utf-8?B?VkkremltbWRFUzFpaVArQThqRnE1OWxMS2crYmdvcjJyYllUL2syNXNmUUJ5?=
 =?utf-8?B?V1NNRlcxeStreldwbE9DRmFuRjQvUTZRTmdrUTR0dXpETjZkV1J3VG1uQzVR?=
 =?utf-8?B?R21yeDdKN2N0dVNHYzUvMGYyOFJySTdwaVQ2bnh2RTNNbHRMN0V2Tno0aEhO?=
 =?utf-8?B?bUZESjJOd1pQMkVlQ3hxMThZblFGRTlXT2o4cnYwQXJ0Q2ZyWUw1c0pHRGpN?=
 =?utf-8?B?NGNWQTNBU2dzZVNUcDYreTVUZDFNeTNFQWV1TG51NmltSGNCQ0RJeE9RNDNq?=
 =?utf-8?B?WTZNRG15c1BXNG9WNm1WaHkwQXVuanFURkJZbS94a09Pd0wzdmxaall5Znpa?=
 =?utf-8?B?Y0ZvVG9GYVFVYmM5ZzdMS0VEZmRxa20rSktIRnJ6a0YyQ01DNXhSeTh6WjZz?=
 =?utf-8?B?VVRXV0ZHMXE1NDhMRG1maTJHSGRUMWdDNEZ0cWVBR21peUh0d0FFN2lVbXJU?=
 =?utf-8?B?aGgyeXl0WEFzVjJNQi9ERUN5RjVXcUczRHFtY0QvK2ZDNnlJYUNobnI2UU9B?=
 =?utf-8?B?Wi9EWDFrMXlBblI5djRsd2RWckt0eDZ4QzdXWEVyUWM0VWg2R2ZKZWs0bm9p?=
 =?utf-8?B?bmhRd3BpVGNtRldBUUhXSTVjVE82S0dKNnhORWtTMzJKSEVMUWhkZFBiVFhH?=
 =?utf-8?B?bUNLNmdxZnlBWXRKeDk5WXp3Q3Zkd1EvZ0l1RjNMckgyNnI3RWxFa0ZLVW9q?=
 =?utf-8?B?TGRwR3BHdmw1L2JBQUtNcEU2WkRqaWNqZ28vZHVDNWI3ZXkxZFgwTEJyb3BU?=
 =?utf-8?B?dWN1OHpORXJDbkpuZkdxQWZuaTRtY2xCRGtJUFcwTUw3WGg3L0l0Rk1JUW1U?=
 =?utf-8?B?VU9aRmZGS0Y5QUU2ZFJMNytYZnZyWlZ4ZXM0YTN4dW1Eb1paaEdpR2VLUGxa?=
 =?utf-8?B?dWludFlsYTBQcFpYcVJVUWhrVzF2QUJyczdXOWhnQmRVZnZEdStLRnFIU3RX?=
 =?utf-8?B?NjlEQmRyNVFNR3FLa3VTSGVtZlgvRlZJZ1YwNUxMczFLUGJlZUtuTng4NS94?=
 =?utf-8?B?LzVWS1Q4WFIxUDRTTUxwV1BEWVpxL2pvNFJOYjkzRzJ0VHV0b3dDenE4MlNQ?=
 =?utf-8?B?V3hPbEN0UkFRNkNzR05mTXZSUVFEVHR2d2xCcGNFeXpFZHVGV3l3MHA1Wkg0?=
 =?utf-8?Q?VjuxUcfub4nQFQG8GvSk4hZQiEfBGAh4?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(3122999009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TGRFWklROUdPMXBiRDg3M0xIV1hEQTd6bGFvVTFXNTZxYlVHVjlDcHNCcy83?=
 =?utf-8?B?cXByYzNKKzhHZGRrb25jRW9JL2plcHZuOFlKeDZiOU1aS2JnZCtQczU3UU1C?=
 =?utf-8?B?YnZBT056c2dQM2UzQ0xwN3kydDhFVDlDdFI2VzNET1FvcmJmU0NlbzFYeXlz?=
 =?utf-8?B?TStHbS9xQ0NtMjkxNTZNVUNwV0J4M08wdVpYVDVWVnhheVZ6THRMeHZwR0Qy?=
 =?utf-8?B?MFBCR0M2eWpDNEYzN3hLUk5hUTBXblNrNDU3ZnJNRithZXVWYngyS2RSSmVy?=
 =?utf-8?B?dzFmcnliVFpEOU1GSGNIYlZuV29TYmNsdzltMGlQWXV2a1pUcEwyVml2VzJD?=
 =?utf-8?B?eWhRL2NLdmtNTG9CZS9VdUxVTVFsTzZoZEk1MU5RZFVjTjZzQVVUemh6REls?=
 =?utf-8?B?ZWdnRjVhNVRUNGlQNjJXelU0WjNteEVQQk5xajlTLzJLSmRWdkNWUmptaTd2?=
 =?utf-8?B?a3drUjJDNjNvN3RGOWVWMDVSaW02T2FBNUFQSGZyT2dhRUJLVmhQWjB5c1ZJ?=
 =?utf-8?B?UXdCUjZCTzlTWDJNZVAvbUNwdjFSZ0QrSlcyZG93S3JwUk15THBsMm5VRy9r?=
 =?utf-8?B?UFZXVU1pZ3V0bjVLWTNxLzgwa2lXanJQRjlRSXFmbkZ4STEwM0VoVjBESnBq?=
 =?utf-8?B?QWpkeE1NbkhrMGF3RnU0ZDVLTngxc0lhOUdDVzljVER4OGdlLzY2WUJCM1VE?=
 =?utf-8?B?Y29pcWJiYzVMS1Y4QTNqMzFEcWJBY1dGUWVWNHU5Ymp4b0kvWm1xTWNwdlEz?=
 =?utf-8?B?V0RmVnNuZXNBc1NEM1Y1TUMxWDRsTkVtTjVvc1ZYc1FrQi8zS2hvV3JSVmkv?=
 =?utf-8?B?WDFYUUxESDFVQnBnTWgyRFVsT2xZNTZmS2FkU2UrMytnN3NzMmxxaEtnVTQw?=
 =?utf-8?B?UlJpVER1TkQ3di9tOWpZV3BiZWtza3hQMmJ1RHNmdUpUMVFnUGtUTzFTZjRD?=
 =?utf-8?B?QSs4QUprRkJZQTZjdDc5Y2xRcy9Nd1hVb0NJSUplN3JFeWYvd2g3ZGhYWDlZ?=
 =?utf-8?B?VUNFbVY1b29RU1pBYW5KVnNtbUV0ODlwRHI4MWZXNHNsbkViT3pBYml1K29n?=
 =?utf-8?B?R1JGQW5Zd282QW91ZzQxcTQrTk1jUjB6R1NaMUowSjlsc3R4YWpvcUJud3E4?=
 =?utf-8?B?OC93TFdSU1dGWEtBNEpGT3R6dm5DZ3RLa21ySmdhVWZxQXhmTzZFOVVMc09R?=
 =?utf-8?B?c1h6MDMzek9TVzdUTXptRG9Yd2ViblZHeFk1dmkvRmFZenAwdkdXWXNkMmVm?=
 =?utf-8?B?a08wcFFRTm9KaHlmZkdUczJwY1hyZEluYTA1NVE0cVp6eHlnTVpzZDFlN1FG?=
 =?utf-8?B?Q09xcVRPOEJpZmFyUWRXQURjK01OWG5CWDJCUU9QT0ZYanpvaUpBTDEwSGpZ?=
 =?utf-8?B?cnl6eUkvYkZqOVJoejZJakdOZDA2c0NtRk41S2FwR01BdVpkVGM3M2s2S0xl?=
 =?utf-8?B?S1hIY0NEWmZsYkUwVmJTRU42enkyNHpSMnAwSlIyZitoQmpTVzRKTGVqQmk2?=
 =?utf-8?B?ZDJ4SnJOcy9ndTZhYjA0eHgxU0grY0paNlpKRVNTZGh6Q2MzYU9YNjZ1WEgx?=
 =?utf-8?B?Um4yRVhzRTF4bHRmSk03ZzRFVklnUDVRcndxYWNiOHI4NkdGS3hIMERYOGhC?=
 =?utf-8?B?RXM2Wm5TaStJVlJiWkdRZmM4RDUyZ1IzK2NIWDkwUC9xcjJmTkpsNC9vbEZL?=
 =?utf-8?B?bEpRZW5JMktjZitYcHJ1S1J3dm55b0VMNGd6dmZadVdVM09QL2NqUFlINHZY?=
 =?utf-8?B?NU9OZlphS2gzRUtPamZhckZiSUxSTmRwRzdjSUUxN0JmRjl4R1FmSE10bWpS?=
 =?utf-8?B?cGh5eDdpbmlJWCtBbW93MHNtUFRQSjViU1ZNWi9ibmFvVThjNlRna0V2dmVo?=
 =?utf-8?B?RlhGSHJFRXd5ZzJRSDFQdWx3U3JUMzc5TG4rbEFTS2JMUElhR2ptSy9pcklC?=
 =?utf-8?B?blZYRGhIWGRXYVhpZndTZGQ5QzRWWW8venlmaXQ1YktLQVdzZ3UwMUV4K3Zu?=
 =?utf-8?B?Sk12UVcxOHl4TW5KQmxhN1FZeDdnZENNc1NaSjJXNU5oMjkwZWN4TGlueHpE?=
 =?utf-8?B?dUduUHR6UUdIcXk4S0VYR2MwR0hsSmQ4TGpiVWdFTHErVlB1V2JoaXRyaWFC?=
 =?utf-8?Q?GNZRbYLo8Z9Y6V10SNHno+Glg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad9ede8a-3b8f-4877-4164-08de1c6badee
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 13:03:13.9958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H1VcVt0bnp7B/c15ogX472CPAIGbF2d8tWGffqK6HlaCLptbuWrMe6FMLXf+WUDI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4106
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3BE0D3F792
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.62.34:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[damsy.net,amd.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
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
Message-ID-Hash: 5JU4IPB2LDJKEKHGZY4FZX4FPEYCULLK
X-Message-ID-Hash: 5JU4IPB2LDJKEKHGZY4FZX4FPEYCULLK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 11/20] drm/amdgpu: use multiple entities in amdgpu_fill_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5JU4IPB2LDJKEKHGZY4FZX4FPEYCULLK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvNS8yNSAxMTozOSwgUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgd3JvdGU6DQo+IExl
IDA0LzExLzIwMjUgw6AgMTc6NDAsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTCoDoNCj4+IE9u
IDExLzQvMjUgMDk6MzUsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPj4+IFRo
ZSBiZW5lZml0cyBvZiB1c2luZyBtdWx0aXBsZSBlbnRpdGllcyBpcyB0aGF0IG11bHRpcGxlIGZp
bGwgam9icw0KPj4+IGNhbiBydW4gaW4gcGFyYWxsZWwuIE90aGVyd2lzZSwgZXZlbiBpZiB0aGUg
ZW50aXR5IGhhcyBhY2Nlc3MNCj4+PiB0byBtdWx0aXBsZSBlbmdpbmVzLCBhIGJ1cnN0IG9mIE4g
aW5kZXBlbmRlbnQgam9icyB3aWxsIGFsbA0KPj4+IHJ1biBvbiB0aGUgc2FtZSBlbmdpbmUgYmVj
YXVzZSBhbiBlbnRpdHkgZ3VhcmFudGVlcyB0aGUgb3JkZXJpbmcNCj4+PiBvZiBleGVjdXRpb24g
bWF0Y2hlcyB0aGUgb3JkZXJpbmcgb2YgdGhlIHN1Ym1pc3Npb24uDQo+Pj4NCj4+PiBDYWxsZXJz
IGNhbiBvcHQtb3V0IG9mIHRoaXMgYmVoYXZpb3IgYnkgcGFzc2luZyB0aGUgZW50aXR5IHRoZXkN
Cj4+PiB3YW50IHRvIHVzZSAoc2VlIGFtZGdwdV9tb3ZlX2JsaXQpLg0KPj4NCj4+IFRoYXQgc3Rp
bGwgc291bmRzIGxpa2UgYSByZWFsbHkgYmFkIGlkZWEgdG8gbWUuDQo+Pg0KPj4gRmlyc3Qgb2Yg
YWxsIHdlIGNhbid0IHJlc2VydmUgc28gbWFueSBmZW5jZSBzbG90cyBpbiB0aGUgcmVsZWFzZSBo
YW5kbGVyLCBwcmV2aW91c2x5IHdlIGJhc2ljYWxseSBqdXN0IHJlbGllZCBvbiB0aGUgZmFjdCB0
aGF0IHRoZSBCTyB3aWxsIG1vc3QgbGlrZWx5IGJlIG1vc3RseSBpZGxlLg0KPj4NCj4+IEkgdGhp
bmsgd2Ugc2hvdWxkIGp1c3QgdXNlIGEgc2luZ2xlIFNETUEgZW5naW5lIGZvciBlYWNoIGNsZWFy
IGFuZCBkaXN0cmlidXRlIGNsZWFyaW5nIGRpZmZlcmVudCBCT3Mgb3ZlciBtdWx0aXBsZSBlbmdp
bmVzLg0KPiANCj4gU28gTiBjbGVhciBlbnRpdGllcywgZWFjaCBvbmUgaGF2aW5nIGFjY2VzcyB0
byBhIHNpbmdsZSBlbmdpbmUuIEFuZCBhbGwgam9icyB0byBjbGVhciBhIHNpbmdsZSBCTyBnbyB0
byB0aGUgc2FtZSBlbnRpdHk/DQo+IA0KPiBJcyB0aGF0IHdoYXQgeW91IG1lYW4/DQoNCk1vcmUg
b3IgbGVzcy4NCg0KTiBjbGVhciBlbnRpdGllcywgZWFjaCBvbmUgaGFzIGFjY2VzcyB0byBhbGwg
ZW5naW5lcy4gV2hlbiBhIEJPIG5lZWRzIHRvIGJlIGNsZWFyZWQgaXQgcGlja3MgdGhlIG5leHQg
YmVzdCBlbnRpdHkgYW5kIHN1Ym1pdHMgdGhlIGpvYnMuDQoNClRoaXMgd2F5IGNsZWFyIGVudGl0
aWVzIHN0aWxsIGxvYWQgYmFsYW5jZSB3aXRoIG1vdmVzIGFuZCBwYWdlIHRhYmxlIHVwZGF0ZXMg
YnV0IHdlIGNhbiBrZWVwIHRoZSBjbGVhcmluZyBsb2dpYyBzaW1wbGUuDQoNCkNocmlzdGlhbi4N
Cg0KPiANCj4gUGllcnJlLUVyaWMNCj4gDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4N
Cj4+DQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciA8
cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCj4+PiAtLS0NCj4+PiDCoCBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgfCA4NCArKysrKysrKysrKysrKysr
KystLS0tLS0tDQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5o
IHzCoCAxICsNCj4+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDY0IGluc2VydGlvbnMoKyksIDIxIGRl
bGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0u
Yw0KPj4+IGluZGV4IGMzNTdhNmQ5NzYzYS4uODM5ZWE4YzdmNmJlIDEwMDY0NA0KPj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPj4+IEBAIC0yMjI0LDYgKzIyMjQs
NyBAQCB1MzIgYW1kZ3B1X3R0bV9zZXRfYnVmZmVyX2Z1bmNzX3N0YXR1cyhzdHJ1Y3QgYW1kZ3B1
X2RldmljZSAqYWRldiwgYm9vbCBlbmFibGUpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGFkZXYt
Pm1tYW4uY2xlYXJfZW50aXRpZXMgPSBrY2FsbG9jKG51bV9jbGVhcl9lbnRpdGllcywNCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHNpemVvZihzdHJ1Y3QgYW1kZ3B1X3R0bV9lbnRpdHkpLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgR0ZQX0tFUk5FTCk7DQo+
Pj4gK8KgwqDCoMKgwqDCoMKgIGF0b21pY19zZXQoJmFkZXYtPm1tYW4ubmV4dF9jbGVhcl9lbnRp
dHksIDApOw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWFkZXYtPm1tYW4uY2xlYXJfZW50
aXRpZXMpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJvcl9mcmVlX2Vu
dGl0eTsNCj4+PiDCoCBAQCAtMjQ5OCwxMCArMjQ5OSwxMiBAQCBpbnQgYW1kZ3B1X2ZpbGxfYnVm
ZmVyKHN0cnVjdCBhbWRncHVfdHRtX2VudGl0eSAqZW50aXR5LA0KPj4+IMKgIHsNCj4+PiDCoMKg
wqDCoMKgIHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50
Ym8uYmRldik7DQo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcgPSBhZGV2
LT5tbWFuLmJ1ZmZlcl9mdW5jc19yaW5nOw0KPj4+ICvCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2VzW1RUTV9GRU5DRVNfTUFYX1NMT1RfQ09VTlRdID0ge307DQo+Pj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IE5VTEw7DQo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZG1h
X3Jlc3YgKnJlc3YgPSBOVUxMOw0KPj4+IMKgwqDCoMKgwqAgc3RydWN0IGFtZGdwdV9yZXNfY3Vy
c29yIGRzdDsNCj4+PiAtwqDCoMKgIGludCByOw0KPj4+ICvCoMKgwqAgdWludDY0X3QgY3VyX3Np
emUsIHRvOw0KPj4+ICvCoMKgwqAgaW50IHIsIGUsIG5fZmVuY2VzOw0KPj4+IMKgIMKgwqDCoMKg
wqAgLyogVGhlIGZlbmNlcyB3aWxsIGJlIGVpdGhlciBhZGRlZCB0byB0aGUgcmVzdiBvYmplY3Qg
b3IgdGhlIGxhc3QgZmVuY2UNCj4+PiDCoMKgwqDCoMKgwqAgKiB3aWxsIGJlIHJldHVybmVkIHRv
IHRoZSBjYWxsZXIuIEluIHRoZSBsYXR0ZXIgY2FzZSwgYWxsIGZpbGwgam9icyB3aWxsDQo+Pj4g
QEAgLTI1MTUsNTMgKzI1MTgsOTIgQEAgaW50IGFtZGdwdV9maWxsX2J1ZmZlcihzdHJ1Y3QgYW1k
Z3B1X3R0bV9lbnRpdHkgKmVudGl0eSwNCj4+PiDCoMKgwqDCoMKgIH0NCj4+PiDCoCDCoMKgwqDC
oMKgIGlmICghZW50aXR5KSB7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGVudGl0eSA9ICZhZGV2LT5t
bWFuLmNsZWFyX2VudGl0aWVzWzBdOw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXN2ID0gJmJv
LT50Ym8uYmFzZS5fcmVzdjsNCj4+PiAtwqDCoMKgwqDCoMKgwqAgciA9IGRtYV9yZXN2X3Jlc2Vy
dmVfZmVuY2VzKHJlc3YsIDEpOw0KPj4+ICsNCj4+PiArwqDCoMKgwqDCoMKgwqAgLyogRGV0ZXJt
aW5lIGhvdyBtdWNoIGZlbmNlcyB3ZSdyZSBnb2luZyB0byBhZGQgdG8gdGhlDQo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqAgKiByZXN2IG9iamVjdC4NCj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqLw0KPj4+
ICvCoMKgwqDCoMKgwqDCoCBuX2ZlbmNlcyA9IDA7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGFtZGdw
dV9yZXNfZmlyc3QoYm8tPnRiby5yZXNvdXJjZSwgMCwgYW1kZ3B1X2JvX3NpemUoYm8pLCAmZHN0
KTsNCj4+PiArwqDCoMKgwqDCoMKgwqAgd2hpbGUgKGRzdC5yZW1haW5pbmcpIHsNCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjdXJfc2l6ZSA9IG1pbihkc3Quc2l6ZSwgMjU2VUxMIDw8IDIw
KTsNCj4+PiArDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbl9mZW5jZXMgKz0gMTsNCj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhbWRncHVfcmVzX25leHQoJmRzdCwgY3VyX3NpemUp
Ow0KPj4+ICvCoMKgwqDCoMKgwqDCoCB9DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChuX2ZlbmNl
cyA9PSAwKQ0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOw0KPj4+ICsNCj4+
PiArwqDCoMKgwqDCoMKgwqAgLyogT25lIHNsb3QgcGVyIGVudGl0eSBhdCBtb3N0LiAqLw0KPj4+
ICvCoMKgwqDCoMKgwqDCoCBuX2ZlbmNlcyA9IE1JTihuX2ZlbmNlcywgYWRldi0+bW1hbi5udW1f
Y2xlYXJfZW50aXRpZXMpOw0KPj4+ICsNCj4+PiArwqDCoMKgwqDCoMKgwqAgciA9IGRtYV9yZXN2
X3Jlc2VydmVfZmVuY2VzKHJlc3YsIG5fZmVuY2VzKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKHIpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHI7DQo+Pj4gK8Kg
wqDCoCB9IGVsc2Ugew0KPj4+ICvCoMKgwqDCoMKgwqDCoCBtdXRleF9sb2NrKCZlbnRpdHktPmdh
cnRfd2luZG93X2xvY2spOw0KPj4+IMKgwqDCoMKgwqAgfQ0KPj4+IMKgIMKgwqDCoMKgwqAgYW1k
Z3B1X3Jlc19maXJzdChiby0+dGJvLnJlc291cmNlLCAwLCBhbWRncHVfYm9fc2l6ZShibyksICZk
c3QpOw0KPj4+IMKgIC3CoMKgwqAgbXV0ZXhfbG9jaygmZW50aXR5LT5nYXJ0X3dpbmRvd19sb2Nr
KTsNCj4+PiDCoMKgwqDCoMKgIHdoaWxlIChkc3QucmVtYWluaW5nKSB7DQo+Pj4gLcKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKm5leHQ7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgIHVpbnQ2
NF90IGN1cl9zaXplLCB0bzsNCj4+PiAtDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE5ldmVy
IGZpbGwgbW9yZSB0aGFuIDI1Nk1pQiBhdCBvbmNlIHRvIGF2b2lkIHRpbWVvdXRzICovDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGN1cl9zaXplID0gbWluKGRzdC5zaXplLCAyNTZVTEwgPDwgMjAp
Ow0KPj4+IMKgICvCoMKgwqDCoMKgwqDCoCBpZiAocmVzdikgew0KPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC8qIFBpY2sgYSBuZXcgZW50aXR5IGZvciBlYWNoIHBhcnRpYWwgY2xlYXIgc28g
dGhleSBjYW4NCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogZXhlY3V0ZSBpbiBwYXJh
bGxlbC4NCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovDQo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZSA9IGF0b21pY19pbmNfcmV0dXJuKCZhZGV2LT5tbWFuLm5leHRfY2xlYXJf
ZW50aXR5KSAlDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhZGV2LT5tbWFu
Lm51bV9jbGVhcl9lbnRpdGllczsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnRpdHkg
PSAmYWRldi0+bW1hbi5jbGVhcl9lbnRpdGllc1tlXTsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBtdXRleF9sb2NrKCZlbnRpdHktPmdhcnRfd2luZG93X2xvY2spOw0KPj4+ICvCoMKgwqDC
oMKgwqDCoCB9DQo+Pj4gKw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByID0gYW1kZ3B1X3R0bV9t
YXBfYnVmZmVyKCZlbnRpdHktPmJhc2UsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAmYm8tPnRibywgYm8tPnRiby5yZXNvdXJjZSwgJmRzdCwNCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudGl0eS0+
Z2FydF93aW5kb3dfaWQxLCByaW5nLCBmYWxzZSwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZjdXJfc2l6ZSwgJnRvLA0KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGVwZW5kZW5jeSwNCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc3YpOw0KPj4+IC3C
oMKgwqDCoMKgwqDCoCBpZiAocikNCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHIpIHsNCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtdXRleF91bmxvY2soJmVudGl0eS0+Z2FydF93aW5kb3df
bG9jayk7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJvcjsNCj4+PiAr
wqDCoMKgwqDCoMKgwqAgfQ0KPj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCByID0gYW1kZ3B1X3R0
bV9maWxsX21lbShyaW5nLCAmZW50aXR5LT5iYXNlLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcmNfZGF0YSwgdG8sIGN1cl9zaXplLCByZXN2LA0KPj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmbmV4dCwgdHJ1ZSwga19q
b2JfaWQpOw0KPj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocikNCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmZlbmNlLCB0cnVlLCBrX2pvYl9pZCk7DQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGlmIChyKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhf
dW5sb2NrKCZlbnRpdHktPmdhcnRfd2luZG93X2xvY2spOw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGdvdG8gZXJyb3I7DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmVz
dikgew0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X2FkZF9mZW5jZShyZXN2
LCBuZXh0LCBETUFfUkVTVl9VU0FHRV9LRVJORUwpOw0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGRtYV9mZW5jZV9wdXQobmV4dCk7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgIH0gZWxzZSB7DQo+
Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZmVuY2UgPSBuZXh0Ow0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCB9DQo+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGFtZGdwdV9yZXNfbmV4dCgmZHN0LCBjdXJf
c2l6ZSk7DQo+Pj4gKw0KPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocmVzdikgew0KPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC8qIERlbGF5IHRoZSBhZGRpdGlvbiBvZiB0aGUgZmVuY2VzIHRv
IHJlc3YsIG90aGVyd2lzZSB0aGUgbmV4dCBwYXJ0aWFsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqIGNsZWFycyB3aWxsIGRlcGVuZCBvbiB0aGlzIG9uZS4NCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICovDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmVuY2VzW2Vd
ID0gZmVuY2U7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZlbnRp
dHktPmdhcnRfd2luZG93X2xvY2spOw0KPj4+ICvCoMKgwqDCoMKgwqDCoCB9IGVsc2Ugew0KPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoKmYpOw0KPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICpmID0gZmVuY2U7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIH0NCj4+PiDC
oMKgwqDCoMKgIH0NCj4+PiDCoCBlcnJvcjoNCj4+PiAtwqDCoMKgIG11dGV4X3VubG9jaygmZW50
aXR5LT5nYXJ0X3dpbmRvd19sb2NrKTsNCj4+PiAtwqDCoMKgIGlmIChmKQ0KPj4+IC3CoMKgwqDC
oMKgwqDCoCAqZiA9IGRtYV9mZW5jZV9nZXQoZmVuY2UpOw0KPj4+IC3CoMKgwqAgZG1hX2ZlbmNl
X3B1dChmZW5jZSk7DQo+Pj4gK8KgwqDCoCBpZiAocmVzdikgew0KPj4+ICvCoMKgwqDCoMKgwqDC
oCBmb3IgKGUgPSAwOyBlIDwgYWRldi0+bW1hbi5udW1fY2xlYXJfZW50aXRpZXM7IGUrKykgew0K
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChmZW5jZXNbZV0pIHsNCj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X2FkZF9mZW5jZShyZXN2LCBmZW5jZXNb
ZV0sIERNQV9SRVNWX1VTQUdFX0tFUk5FTCk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBkbWFfZmVuY2VfcHV0KGZlbmNlc1tlXSk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfQ0KPj4+ICvCoMKgwqDCoMKgwqDCoCB9DQo+Pj4gK8KgwqDCoCB9IGVsc2Ugew0KPj4+
ICvCoMKgwqDCoMKgwqDCoCBtdXRleF91bmxvY2soJmVudGl0eS0+Z2FydF93aW5kb3dfbG9jayk7
DQo+Pj4gK8KgwqDCoCB9DQo+Pj4gKw0KPj4+IMKgwqDCoMKgwqAgcmV0dXJuIHI7DQo+Pj4gwqAg
fQ0KPj4+IMKgIGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4+PiBpbmRl
eCAzOGRmMmI1YjRiYzcuLjNmYzMxYzdjNmJmZSAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4+PiBAQCAtNzMsNiArNzMsNyBAQCBzdHJ1Y3QgYW1k
Z3B1X21tYW4gew0KPj4+IMKgIMKgwqDCoMKgwqAgc3RydWN0IGFtZGdwdV90dG1fZW50aXR5IGRl
ZmF1bHRfZW50aXR5OyAvKiBoYXMgbm8gZ2FydCB3aW5kb3dzICovDQo+Pj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgYW1kZ3B1X3R0bV9lbnRpdHkgKmNsZWFyX2VudGl0aWVzOw0KPj4+ICvCoMKgwqAgYXRv
bWljX3QgbmV4dF9jbGVhcl9lbnRpdHk7DQo+Pj4gwqDCoMKgwqDCoCB1MzIgbnVtX2NsZWFyX2Vu
dGl0aWVzOw0KPj4+IMKgwqDCoMKgwqAgc3RydWN0IGFtZGdwdV90dG1fZW50aXR5IG1vdmVfZW50
aXRpZXNbVFRNX0ZFTkNFU19NQVhfU0xPVF9DT1VOVF07DQo+Pj4gwqDCoMKgwqDCoCB1MzIgbnVt
X21vdmVfZW50aXRpZXM7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
