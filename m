Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BB608A16C2B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 13:14:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C97B44735
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 12:14:39 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2042.outbound.protection.outlook.com [40.107.236.42])
	by lists.linaro.org (Postfix) with ESMTPS id 5C7B23F604
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jan 2025 12:14:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=PRNnkbK2;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iFj+jNarWaZieliOmBcPiW2SZoJsWuSEK2OZOWmRlphuOY6oOPKLzyxSmQQj2IlOwiSzHlRXlvMLCqbUMR29YeskdQbNtIX3cAP1Xki4NVywGEPIrZkM03gtE2tiCBj6yfhiBXsjV05kDm3DCnoHmfqlDZQxJ6AJuecuNVzFNCV9UmQIQ0n+B0l+feJrFdh2r9lTUQk+YQ6lQt235fWxI0WeNsFnCLUou7ee+8FJbOg/SfV8ytw8PZnVxbptKC3IrlcClYCQUynJVtFuPDCqrabDAbkveLrdBxrRzI4wznY+mOKoPeNjsVZwfn1fz9JTUc8kKoxvhVM26Hx+wtnowQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmIGCcCxV+InFu8lURi95xI1fXXLJQsB6Yaw1WuvoDo=;
 b=C+7L7OARr6XPG/Hg7BpmuOGeMKfS3NFKql0iLx5R9MSrANZaj5/nHE1PyaKXp6U8PZjZbx6dUZHekdUwGLB1yMk2/u1zbjsfg2sAOAE8O9m/MXJC5n9VpqwiW+n0r//HNAgzHYtHWrVUyoboS3r8OmDFSOhxaaZyu/zvL5ROSolSjd+YlXBqiC9kCtbTwueMIfwjjM3dB36v4n80hCldXLfVCSFEkYChzO+62ghohvTowRDoA3+9ml7QoAjCH7fw2HF2PDCP3kz6jWZQjqwSVx0ZOGymKtGJkhnDQ41klevp7yGbZGvh3AduRjqZ5c3kFA4ngkNks+G+ci4o8b5i2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EmIGCcCxV+InFu8lURi95xI1fXXLJQsB6Yaw1WuvoDo=;
 b=PRNnkbK2iejoh8WzojUIZhuUotvgEtQPSlzaKLCAjC2+Dwb35Gmq5WNUHdSZCFFUG4Lz4baDdHluaKgZB8rZYVxOnj+IYkxouYCaJ1+wxno5dREE4KHxRPtXKcD78DuqYxlUXAT9UwoaEFd+6rblPYES5NNwWspcRGg187F3/+g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB7939.namprd12.prod.outlook.com (2603:10b6:510:278::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 12:14:20 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8356.014; Mon, 20 Jan 2025
 12:14:20 +0000
Message-ID: <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
Date: Mon, 20 Jan 2025 13:14:12 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>, Xu Yilun <yilun.xu@linux.intel.com>,
 Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>,
 kvm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com,
 alex.williamson@redhat.com, vivek.kasireddy@intel.com,
 dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com,
 linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de,
 yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com,
 zhenzhong.duan@intel.com, tao1.su@intel.com
References: <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <Z38FCOPE7WPprYhx@yilunxu-OptiPlex-7050>
 <Z4F2X7Fu-5lprLrk@phenom.ffwll.local> <20250110203838.GL5556@nvidia.com>
 <Z4Z4NKqVG2Vbv98Q@phenom.ffwll.local> <20250114173103.GE5556@nvidia.com>
 <Z4d4AaLGrhRa5KLJ@phenom.ffwll.local>
 <420bd2ea-d87c-4f01-883e-a7a5cf1635fe@amd.com>
 <Z4psR1qoNQUQf3Q2@phenom.ffwll.local>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <Z4psR1qoNQUQf3Q2@phenom.ffwll.local>
X-ClientProxiedBy: FR4P281CA0099.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB7939:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d39f5df-542e-4ef6-caf9-08dd394bf7cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dG1FVFZYbGtRMy92UmEwQm1kMW1NZzZtNVhBUEZDTFZ5MXpvWkR5M3RKbWVF?=
 =?utf-8?B?SEw1UE1sRU9IU3RnMXdBNFd4MU5LU2ZFaGVYQWV4a2FjbFBNNEtlYXdjQlNP?=
 =?utf-8?B?MFNTcWltVy9LSzg5YW1EZ08vUVdhVWVJZENXQUJFS3pBRVhEQ0t2dkRFejVT?=
 =?utf-8?B?bXdRK2QyQTlxSVdncU9uL04xTVlTUGpvVjFQdnFvQWlyNHpZQUE0UUFUODMv?=
 =?utf-8?B?cUplNFJXMkhRZ1l3K2tFdytOWVdRck15djk3VzZQSWVzQXZ4M2NmWk9WaGxq?=
 =?utf-8?B?MFdqOElvbVA3ZjBrakhUY2FpZ1Zvbk50M1RuZHpYLzZ5WGZoa01sb1dFcEZ0?=
 =?utf-8?B?aklEa2RmcVRRczJzUmVnVUdrWDR2ZGovc24xNFgyZGxicWRUTlM2dEw2Zlhh?=
 =?utf-8?B?TFdzSWpnS1V4SXU4MHpvaDByaFVnY3BDZ1N5eFpINGVyQ21acU9xVGJrN2lV?=
 =?utf-8?B?TXhFZE1YZHNQQVI1ck1maExhQjhDMVJkMTcyU2hxU2hCc3Y4Q0E0b1NrKzF5?=
 =?utf-8?B?ckwweWZkNGJnL1dEKzFjc3lOaWZHT1F6Z25TNytGMC85dGNTaGFpeU1VM2pW?=
 =?utf-8?B?NWhyeXFUOVFjYW1mQ3RzN0RYaGFyc29pZjZGblJ5ZEZ5SkxwbWJ0VHBwckx2?=
 =?utf-8?B?K0ZTOWZWdm02d0Q0dTRveElxWEgwbWwxMGUrcEtFMkNreW1INE5aTFRraW9s?=
 =?utf-8?B?NGF3cXBrbTFUWUthcjNLUnIvNVJqdDZFTlJQTHNvdk8zZE5vSmd6eGpmMGZO?=
 =?utf-8?B?M0NkVWxUd0tCS0Vlam9BQXBma0poK0JLVnpNWVA1Z3U1LzR3V1AwQXdMOGMy?=
 =?utf-8?B?YWlJZHdZaTFEWVRCWi9VQk1PR3pEV1ZKTTNFVEg2QkNoenhESTFod0g2TU9T?=
 =?utf-8?B?TldpZGR3dWJxaitWOFBiWW1GWFk2VzNMU2d1a2J6a2ZiQ2dWcUl3ZENoSUIx?=
 =?utf-8?B?Rjh4NlhwN0ppY3NmcWE3eDVHZC9ZOTRlWTRHNk1CcjdFcHVwWFZLY3BXaFB4?=
 =?utf-8?B?OG5lQVIvRWlFMk1kaWMweUFjb0E3WEp2VmNIR0NWTG1MVWFwaGRJcm5tanZR?=
 =?utf-8?B?UGlZbTg1UWZFMUlvOGpCLzJ4c2RxbHdQTnNqNnllamx6SGNtZy9lbEZsY1ZN?=
 =?utf-8?B?cWkrbFNYRGFBWFZWbFY0U3h3VWw5WHp0c2RjOUw1VWhneGwxUWdqMTlGVlQ2?=
 =?utf-8?B?eTlneHFLQkFKRVdtN2RVNWZMNDlOYnBrdGQ2WTcyaGlQWHRJRFU4MUtmRlhW?=
 =?utf-8?B?bmhQT2hINDJLbUFmSFlSWTFiZkxRUm5qZmlldzJHeXE2L2hMckd1cTExR0JI?=
 =?utf-8?B?bmNjS0V3Nld3Z0huOE9FMzBSSERMQjdvYTRtSUdxMGluWCtab3ZYaXVhTTJz?=
 =?utf-8?B?cm80TnRDbzRPakpFRnJDSU15WVJqN2paeGg4STRkcFlHQm1GY3NseGVUc1c0?=
 =?utf-8?B?R2RmZUlnZVRmeVYwSHRPN3JzcXgrd3RlZW94dEloRGxQYlBXYkJ4YUttb0VG?=
 =?utf-8?B?UkZRNDloaW1EUnE1OTg2UXZvS3M4czNyRit5M1lMYXJkbDFCZWppdXk3T080?=
 =?utf-8?B?TnN2T2gwWEwxWFMzSy84a2JMWFEzS2kyVncxdko3a2I2MXhUTCtCTjFYK09p?=
 =?utf-8?B?ZUFsZTdkVFhYSWxIYm1qcXExbkV0UWNHcVZUM2l3MEphdkVhRWVHZWRzem9q?=
 =?utf-8?B?UTh6NzQvanlKQ2NjaURTSFJWSmp3VXZXUlA2WWhyeWlwSHo0akZqdCtRREhX?=
 =?utf-8?B?NUd1Qmx2SzVkYllXd2xrVFh1ZXZQZThzRUs3L3RLbDNuNnNteHpPRjhxaW1H?=
 =?utf-8?B?Q0h6NmRrVEpoVUZsUFVTZVJsYVNJUFpIRnBoY25GSnRKS25Oc3dySnA5bkdq?=
 =?utf-8?B?TDlkV3VybkhHMk12YitVeGNNMFlHNkFiZ0Zva3pMb0ozS1NnVkNnei9YcjZj?=
 =?utf-8?Q?77K7bp9bG2M=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WHkxYWQrVW9mUnAxQjNkUTJNb0tzRmMvQWtaYStiVjNBZG81VWNTSDM0eko1?=
 =?utf-8?B?bXFtM21DOW1yNGM3MGMxTXJIVEs3dHFxY1EyZWVtY0ppK3ZCTnBpOHV5QUJN?=
 =?utf-8?B?OFFwL0RjQ0IwSklBNWRINkd5WDdLWnIzQy9YclByL25CRHY2RmlqS0J0Z1RI?=
 =?utf-8?B?ak9UaHA4NUR0bzFFYkFGdWxDV0pyYWQ2cXR4dmhPR0VQbC95UkY1Z2dvMkFP?=
 =?utf-8?B?Mk9UVlA1QS9XUXlZSmxlUkZtUU1TQ1FsMmgxMlExNEZrMVdMcG1FVnY4NHRl?=
 =?utf-8?B?Snhjd2RTcXY1ek5MY3RqRWdnMHhzeEJ1R2hyVHlmUnJQaWh2ajNpS3NOeW1t?=
 =?utf-8?B?ZlAvQ2EzYU9DNU1xWUJYSzA5OHR0VnAzTjF4R0ErVVB2Tm9tR29OQ1RIbFB3?=
 =?utf-8?B?QkFadEFuNGQvWTU2NmVCbU1Yb0FnRzRkU0EvZVZPSGRQREZaUWdPR0JuMmN3?=
 =?utf-8?B?S2tGQTU2SitmMDZBMm1BSFRwc0J4NVptOFVEYklqY3k4dFRqL2FvZVBQUlVk?=
 =?utf-8?B?U1FpcTNxRGVrYVRQSUVKV2RZMVA5TC9uTENjRWk5ZVh2cCt3b3IwNlVSRjFI?=
 =?utf-8?B?Ym5tUVN4VzFiNjc0VkVncFk0QVdiZzA1S1dEOHZNd29FRnlEYU0yeTByOWdz?=
 =?utf-8?B?NnN6T0tJb0tUcy9zZk9uc2pmV1RqT09tTUNrZTdHZ3MzZmhkR3RTaTNwcm5a?=
 =?utf-8?B?enBETktUK2hIUkIxRHphMzB0OXJpWGpRenBKZ1p1VWNBckZtcitVRU85dW9I?=
 =?utf-8?B?OUNhTkh1Nk93eXllWG0wcDMvQ0toYVF6NWhhc2tXaXFyZ1Z5U2Y3Q2pTc0xT?=
 =?utf-8?B?c1hUNmJFVU5oMUdVNmZUaFFsdjJoWTRrNDlIcngwMmRjN01RWUNnbUlvTnFl?=
 =?utf-8?B?SjNPZ0FLU0xuRnlwMGsyN1Rycy9iV3o3WmNaUU1rVDVZelJnYTlwTE1lcGxs?=
 =?utf-8?B?VlcybU1TOG44Rk92ellFaG9uRXJrck9ZTjZpWlFRT3FVMDI3WGFUU2I1ay9W?=
 =?utf-8?B?bkZRMFBiMVVRUW4zRCtEYmN1OWFVVUFvM1ZQOUhZWkVXWFJ3c1RIOVpQVm5h?=
 =?utf-8?B?K3lXekZCZVlzb1FBYUdjZi8zM0VnU1BpVXlqZFM0QndEVWZDNjJxNElYRWtJ?=
 =?utf-8?B?dzJLZlRSZUtpK09ELzRuMDVUdmpTWklqSHZpN3hJeDZrNzJqTjNPRkYyU2R4?=
 =?utf-8?B?bHpCMzRVYmZOeE9jZktLRGYyUnIrdzBPRmhvWWlqcmVrZkJmbWhQQmdTL3lu?=
 =?utf-8?B?a09FSS9SMjNWcnBhcE1jTUpJWVFmWTBqRmNwc2h1YTArcVgvWkN1Mi9obUtT?=
 =?utf-8?B?S3BpaVZTWUJnaFFVL1lyRGpZSHY3ZkhkeDZ5M044RFo4T05KdmJvS0x2OWV2?=
 =?utf-8?B?M3dkalhDTjhHblZ0NU4vaVVza3JXemoreW5TMVI1S2hCLzdONXA5NStoVDdK?=
 =?utf-8?B?VWhuVHdNQWxNRmRQUDNUNEJEcTh4bjRaanFieUFwa2JGZHFpUFlwOGlneU1D?=
 =?utf-8?B?UFhjdnhxblBUNjBCRWcxVmxxN3pObVZ4am52TnVUK2RIR2RGcFBsYWFSMytl?=
 =?utf-8?B?cVVsODhVQmFNOXFEbzIrZXpJRGhRTzB4YXkxVTBLSElpKy9YS01ud0dpK0pH?=
 =?utf-8?B?R0FzM0t5YVF1d2ZoazhkQ1ZYdnQxaVJjS3ZTdzl6QXNOWldIeFpJRWRZdkx2?=
 =?utf-8?B?dGxBYWJrZkdjTS9tN0ZQUU92Y2xIbDY1QVFJODhGR1NidzdTUW1nNWRxUGx3?=
 =?utf-8?B?emVSWW5aczQ2WjM2V3dRejV1UmpnN0lzck1WRGMzQ2pkR05FR3JuTkhubGlQ?=
 =?utf-8?B?a0dBRXJTN214a0FOV2QwMi9kYjZCS2tpdXdLM21MTE5HbWxRRGJpVEhpSjM1?=
 =?utf-8?B?bng3L2FpeFI0b2w4bld2VE40S1RrNGI4R1RKMVJxRVNxN1R1UWZ3a3hEQzZi?=
 =?utf-8?B?dHNLN0xrU1ljbTNiZHBSMFo3NmZOSmgxRGFod29hSmNJZlZQYUpxMDU0Qkxp?=
 =?utf-8?B?ZitKVHdGU25rcVRpUVRTVUdWRGdqRjRGK2FTd29BWWQ1VXg0eXNlZ0FvdURi?=
 =?utf-8?B?TnF3TlY0Vis1Z2loejdaUFFBemhZODRqWE1RRkxBR3VJbHBPMS9ZYlFPTW9n?=
 =?utf-8?Q?ilSMAZ69PU9GTZ8aEIlURhAts?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d39f5df-542e-4ef6-caf9-08dd394bf7cc
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 12:14:20.1430
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UCg5MDHSaLmhNtSb7zdMWB6acTN50eINlgukuXhnMc1x+h7PrIFU2Vlwjaarv4zS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7939
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5C7B23F604
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.236.42:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.42:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: IJSS3FR4KELLR5HGQJZA2UKTHSOIUBT7
X-Message-ID-Hash: IJSS3FR4KELLR5HGQJZA2UKTHSOIUBT7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IJSS3FR4KELLR5HGQJZA2UKTHSOIUBT7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMDEuMjUgdW0gMTU6NDIgc2NocmllYiBTaW1vbmEgVmV0dGVyOg0KPiBPbiBXZWQsIEph
biAxNSwgMjAyNSBhdCAxMTowNjo1M0FNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gW1NOSVBdDQo+Pj4gQW55dGhpbmcgbWlzc2luZz8NCj4+IFdlbGwgYXMgZmFyIGFzIEkgY2Fu
IHNlZSB0aGlzIHVzZSBjYXNlIGlzIG5vdCBhIGdvb2QgZml0IGZvciB0aGUgRE1BLWJ1Zg0KPj4g
aW50ZXJmYWNlcyBpbiB0aGUgZmlyc3QgcGxhY2UuIERNQS1idWYgZGVhbHMgd2l0aCBkZXZpY2Vz
IGFuZCBidWZmZXINCj4+IGV4Y2hhbmdlLg0KPj4NCj4+IFdoYXQncyBuZWNlc3NhcnkgaGVyZSBp
bnN0ZWFkIGlzIHRvIGdpdmUgYW4gaW1wb3J0aW5nIFZNIGZ1bGwgYWNjZXNzIG9uIHNvbWUNCj4+
IG1lbW9yeSBmb3IgdGhlaXIgc3BlY2lmaWMgdXNlIGNhc2UuDQo+Pg0KPj4gVGhhdCBmdWxsIGFj
Y2VzcyBpbmNsdWRlcyBDUFUgYW5kIERNQSBtYXBwaW5ncywgbW9kaWZ5aW5nIGNhY2hpbmcNCj4+
IGF0dHJpYnV0ZXMsIHBvdGVudGlhbGx5IHNldHRpbmcgZW5jcnlwdGlvbiBrZXlzIGZvciBzcGVj
aWZpYyByYW5nZXMgZXRjLi4uLg0KPj4gZXRjLi4uDQo+Pg0KPj4gSW4gb3RoZXIgd29yZHMgd2Ug
aGF2ZSBhIGxvdCBvZiB0aGluZ3MgdGhlIGltcG9ydGVyIGhlcmUgc2hvdWxkIGJlIGFibGUgdG8N
Cj4+IGRvIHdoaWNoIHdlIGRvbid0IHdhbnQgbW9zdCBvZiB0aGUgRE1BLWJ1ZiBpbXBvcnRlcnMg
dG8gZG8uDQo+IFRoaXMgcHJvcG9zYWwgaXNuJ3QgYWJvdXQgZm9yY2luZyBleGlzdGluZyBleHBv
cnRlcnMgdG8gYWxsb3cgaW1wb3J0ZXJzIHRvDQo+IGRvIG5ldyBzdHVmZi4gVGhhdCBzdGF5cyBh
cy1pcywgYmVjYXVzZSBpdCB3b3VsZCBicmVhayB0aGluZ3MuDQo+DQo+IEl0J3MgYWJvdXQgYWRk
aW5nIHlldCBhbm90aGVyIGludGVyZmFjZSB0byBnZXQgYXQgdGhlIHVuZGVybHlpbmcgZGF0YSwg
YW5kDQo+IHdlIGhhdmUgdG9ucyBvZiB0aG9zZSBhbHJlYWR5LiBUaGUgb25seSBkaWZmZXJlbmNl
IGlzIHRoYXQgaWYgd2UgZG9uJ3QNCj4gYnV0Y2hlciB0aGUgZGVzaWduLCB3ZSdsbCBiZSBhYmxl
IHRvIGltcGxlbWVudCBhbGwgdGhlIGV4aXN0aW5nIGRtYS1idWYNCj4gaW50ZXJmYWNlcyBvbiB0
b3Agb2YgdGhpcyBuZXcgcGZuIGludGVyZmFjZSwgZm9yIHNvbWUgbmVhdCBtYXhpbWFsDQo+IGNv
bXBhdGliaWxpdHkuDQoNClRoYXQgc291bmRzIGxpa2UgeW91IG1pc3NlZCBteSBjb25jZXJuLg0K
DQpXaGVuIGFuIGV4cG9ydGVyIGFuZCBhbiBpbXBvcnRlciBhZ3JlZSB0aGF0IHRoZXkgd2FudCB0
byBleGNoYW5nZSBQRk5zIA0KaW5zdGVhZCBvZiBETUEgYWRkcmVzc2VzIHRoZW4gdGhhdCBpcyBw
ZXJmZWN0bHkgZmluZS4NCg0KVGhlIHByb2JsZW1zIHN0YXJ0IHdoZW4geW91IGRlZmluZSB0aGUg
c2VtYW50aWNzIGhvdyB0aG9zZSBQRk5zLCBETUEgDQphZGRyZXNzLCBwcml2YXRlIGJ1cyBhZGRy
ZXNzZXMsIHdoYXRldmVyIGlzIGVjaGFuZ2VkIGRpZmZlcmVudCB0byB3aGF0IA0Kd2UgaGF2ZSBk
b2N1bWVudGVkIGZvciBETUEtYnVmLg0KDQpUaGlzIHNlbWFudGljcyBpcyB2ZXJ5IHdlbGwgZGVm
aW5lZCBmb3IgRE1BLWJ1ZiBub3csIGJlY2F1c2UgdGhhdCBpcyANCnJlYWxseSBpbXBvcnRhbnQg
b3Igb3RoZXJ3aXNlIHRoaW5ncyB1c3VhbGx5IHNlZW0gdG8gd29yayB1bmRlciB0ZXN0aW5nIA0K
KGUuZy4gd2l0aG91dCBtZW1vcnkgcHJlc3N1cmUpIGFuZCB0aGVuIHRvdGFsbHkgZmFsbCBhcGFy
dCBpbiBwcm9kdWN0aW9uIA0KZW52aXJvbm1lbnRzLg0KDQpJbiBvdGhlciB3b3JkcyB3ZSBoYXZl
IGRlZmluZWQgd2hhdCBsb2NrIHlvdSBuZWVkIHRvIGhvbGQgd2hlbiBjYWxsaW5nIA0KZnVuY3Rp
b25zLCB3aGF0IGEgRE1BIGZlbmNlIGlzLCB3aGVuIGV4Y2hhbmdlZCBhZGRyZXNzZXMgYXJlIHZh
bGlkIGV0Yy4uLg0KDQo+IEJ1dCBmdW5kYW1lbnRhbGx5IHRoZXJlJ3MgbmV2ZXIgYmVlbiBhbiBl
eHBlY3RhdGlvbiB0aGF0IHlvdSBjYW4gdGFrZSBhbnkNCj4gYXJiaXRyYXJ5IGRtYS1idWYgYW5k
IHBhc3MgaXQgYW55IGFyYml0cmFyeSBpbXBvcnRlciwgYW5kIHRoYXQgaXMgbXVzdA0KPiB3b3Jr
LiBUaGUgZnVuZGFtZW50YWwgcHJvbWlzZSBpcyB0aGF0IGlmIGl0IF9kb2VzXyB3b3JrLCB0aGVu
DQo+IC0gaXQncyB6ZXJvIGNvcHkNCj4gLSBhbmQgZmFzdCwgb3IgYXMgZmFzdCBhcyB3ZSBjYW4g
bWFrZSBpdA0KPg0KPiBJIGRvbid0IHNlZSB0aGlzIGFueSBkaWZmZXJlbnQgdGhhbiBhbGwgdGhl
IG11Y2ggbW9yZSBzcGVjaWZpYyBwcnBvc2Fscw0KPiBhbmQgZXhpc3RpbmcgY29kZSwgd2hlcmUg
YSBzdWJzZXQgb2YgaW1wb3J0ZXJzL2V4cG9ydGVycyBoYXZlIHNwZWNpYWwNCj4gcnVsZXMgc28g
dGhhdCBlLmcuIGdwdSBpbnRlcmNvbm5lY3Qgb3IgdmZpbyB1dWlkIGJhc2VkIHNoYXJpbmcgd29y
a3MuDQo+IHBmbi1iYXNlZCBzaGFyaW5nIGlzIGp1c3QgeWV0IGFub3RoZXIgZmxhdm9yIHRoYXQg
ZXhpc3RzIHRvIGdldCB0aGUgbWF4DQo+IGFtb3VudCBvZiBzcGVlZCBvdXQgb2YgaW50ZXJjb25u
ZWN0cy4NCg0KUGxlYXNlIHRha2UgYW5vdGhlciBsb29rIGF0IHdoYXQgaXMgcHJvcG9zZWQgaGVy
ZS4gVGhlIGZ1bmN0aW9uIGlzIA0KY2FsbGVkIGRtYV9idWZfZ2V0X3Bmbl8qdW5sb2NrZWQqICEN
Cg0KVGhpcyBpcyBub3QgZm9sbG93aW5nIERNQS1idWYgc2VtYW50aWNzIGZvciBleGNoYW5naW5n
IGFkZHJlc3NlcyBhbmQgDQprZWVwaW5nIHRoZW0gdmFsaWQsIGJ1dCByYXRoZXIgc29tZXRoaW5n
IG1vcmUgbGlrZSB1c2VycHRycy4NCg0KSW5zZXJ0aW5nIFBGTnMgaW50byBDUFUgKG9yIHByb2Jh
Ymx5IGFsc28gSU9NTVUpIHBhZ2UgdGFibGVzIGhhdmUgYSANCmRpZmZlcmVudCBzZW1hbnRpY3Mg
dGhhbiB3aGF0IERNQS1idWYgdXN1YWxseSBkb2VzLCBiZWNhdXNlIGFzIHNvb24gYXMgDQp0aGUg
YWRkcmVzcyBpcyB3cml0dGVuIGludG8gdGhlIHBhZ2UgdGFibGUgaXQgaXMgbWFkZSBwdWJsaWMu
IFNvIHlvdSANCm5lZWQgc29tZSBraW5kIG9mIG1lY2hhbmlzbSB0byBtYWtlIHN1cmUgdGhhdCB0
aGlzIGFkZHIgeW91IG1hZGUgcHVibGljIA0Kc3RheXMgdmFsaWQgYXMgbG9uZyBhcyBpdCBpcyBw
dWJsaWMuDQoNClRoZSB1c3VhbCBJL08gb3BlcmF0aW9uIHdlIGVuY2Fwc3VsYXRlIHdpdGggRE1B
LWZlbmNlcyBoYXZlIGEgDQpmdW5kYW1lbnRhbGx5IGRpZmZlcmVudCBzZW1hbnRpY3MgYmVjYXVz
ZSB3ZSBoYXZlIHRoZSBsb2NrIHdoaWNoIA0KZW5mb3JjZXMgdGhhdCBzdHVmZiBzdGF5cyB2YWxp
ZCBhbmQgdGhlbiBoYXZlIGEgRE1BLWZlbmNlIHdoaWNoIG5vdGVzIA0KaG93IGxvbmcgdGhlIHN0
dWZmIG5lZWRzIHRvIHN0YXkgdmFsaWQgZm9yIGFuIG9wZXJhdGlvbiB0byBjb21wbGV0ZS4NCg0K
UmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBDaGVlcnMsIFNpbWENCj4NCj4+IFRoZSBzZW1h
bnRpY3MgZm9yIHRoaW5ncyBsaWtlIHBpbiB2cyByZXZvY2FibGUgdnMgZHluYW1pYy9tb3ZlYWJs
ZSBzZWVtcw0KPj4gc2ltaWxhciwgYnV0IHRoYXQncyBiYXNpY2FsbHkgaXQuDQo+Pg0KPj4gQXMg
ZmFyIGFzIEkga25vdyB0aGUgVEVFIHN1YnN5c3RlbSBhbHNvIHJlcHJlc2VudHMgdGhlaXIgYWxs
b2NhdGlvbnMgYXMgZmlsZQ0KPj4gZGVzY3JpcHRvcnMuIElmIEknbSBub3QgY29tcGxldGVseSBt
aXN0YWtlbiB0aGlzIHVzZSBjYXNlIG1vc3QgbGlrZWx5IGZpdCdzDQo+PiBiZXR0ZXIgdGhlcmUu
DQo+Pg0KPj4+IEkgZmVlbCBsaWtlIHRoaXMgaXMgc21hbGwgZW5vdWdoIHRoYXQgbS1sIGFyY2hp
dmVzIGlzIGdvb2QgZW5vdWdoLiBGb3INCj4+PiBzb21lIG9mIHRoZSBiaWdnZXIgcHJvamVjdHMg
d2UgZG8gaW4gZ3JhcGhpY3Mgd2Ugc29tZXRpbWVzIGNyZWF0ZSBlbnRyaWVzDQo+Pj4gaW4gb3Vy
IGtlcm5lbGRvYyB3aXRoIHdpcCBkZXNpZ24gY29uc2Vuc3VzIGFuZCB0aGluZ3MgbGlrZSB0aGF0
LiBCdXQNCj4+PiBmZWVscyBsaWtlIG92ZXJraWxsIGhlcmUuDQo+Pj4NCj4+Pj4gTXkgZ2VuZXJh
bCBkZXNpcmUgaXMgdG8gbW92ZSBhbGwgb2YgUkRNQSdzIE1SIHByb2Nlc3MgYXdheSBmcm9tDQo+
Pj4+IHNjYXR0ZXJsaXN0IGFuZCB3b3JrIHVzaW5nIG9ubHkgdGhlIG5ldyBETUEgQVBJLiBUaGlz
IHdpbGwgc2F2ZSAqaHVnZSoNCj4+Pj4gYW1vdW50cyBvZiBtZW1vcnkgaW4gY29tbW9uIHdvcmts
b2FkcyBhbmQgYmUgdGhlIGJhc2lzIGZvciBub24tc3RydWN0DQo+Pj4+IHBhZ2UgRE1BIHN1cHBv
cnQsIGluY2x1ZGluZyBQMlAuDQo+Pj4gWWVhaCBhIG1vcmUgbWVtb3J5IGVmZmljaWVudCBzdHJ1
Y3R1cmUgdGhhbiB0aGUgc2NhdHRlcmxpc3Qgd291bGQgYmUNCj4+PiByZWFsbHkgbmljZS4gVGhh
dCB3b3VsZCBldmVuIGJlbmVmaXQgdGhlIHZlcnkgc3BlY2lhbCBkbWEtYnVmIGV4cG9ydGVycw0K
Pj4+IHdoZXJlIHlvdSBjYW5ub3QgZ2V0IGEgcGZuIGFuZCBvbmx5IHRoZSBkbWFfYWRkcl90LCBh
bHRvdWdoIG1vc3Qgb2YgdGhvc2UNCj4+PiAoYWxsIG1heWJlIGV2ZW4/KSBoYXZlIGNvbnRpZyBi
dWZmZXJzLCBzbyB5b3VyIHNjYXR0ZXJsaXN0IGhhcyBvbmx5IG9uZQ0KPj4+IGVudHJ5LiBCdXQg
aXQgd291bGQgZGVmaW5pdGVseSBiZSBuaWNlIGZyb20gYSBkZXNpZ24gcG92Lg0KPj4gQ29tcGxl
dGVseSBhZ3JlZSBvbiB0aGF0IHBhcnQuDQo+Pg0KPj4gU2NhdHRlcmxpc3QgaGF2ZSBhIHNvbWUg
ZGVzaWduIGZsYXdzLCBlc3BlY2lhbGx5IG1peGluZyB0aGUgaW5wdXQgYW5kIG91dA0KPj4gcGFy
YW1ldGVycyBvZiB0aGUgRE1BIEFQSSBpbnRvIHRoZSBzYW1lIHN0cnVjdHVyZS4NCj4+DQo+PiBB
ZGRpdGlvbmFsIHRvIHRoYXQgRE1BIGFkZHJlc3NlcyBhcmUgYmFzaWNhbGx5IG1pc3Npbmcgd2hp
Y2ggYnVzIHRoZXkgYmVsb25nDQo+PiB0byBhbmQgZGV0YWlscyBob3cgdGhlIGFjY2VzcyBzaG91
bGQgYmUgbWFkZSAoZS5nLiBzbm9vcCB2cyBuby1zbm9vcA0KPj4gZXRjLi4uKS4NCj4+DQo+Pj4g
QXNpZGU6IEEgd2F5IHRvIG1vcmUgZWZmaWNpZW50bHkgY3JlYXRlIGNvbXByZXNzZWQgc2NhdHRl
cmxpc3RzIHdvdWxkIGJlDQo+Pj4gbmVhdCB0b28sIGJlY2F1c2UgYSBsb3Qgb2YgZHJpdmVycyBo
YW5kLXJvbGwgdGhhdCBhbmQgaXQncyBhIGJpdCBicml0dGxlDQo+Pj4gYW5kIGtpbmRhIHNpbGx5
IHRvIGR1cGxpY2F0ZS4gV2l0aCBjb21wcmVzc2VkIEkgbWVhbiBqdXN0IGEgc2luZ2xlIGVudHJ5
DQo+Pj4gZm9yIGEgY29udGlnIHJhbmdlLCBpbiBwcmFjdGljZSB0aGFua3MgdG8gaHVnZSBwYWdl
cy9mb2xpb3MgYW5kIGFsbG9jYXRvcnMNCj4+PiB0cnlpbmcgdG8gaGFuZCBvdXQgY29udGlnIHJh
bmdlcyBpZiB0aGVyZSdzIHBsZW50eSBvZiBtZW1vcnkgdGhhdCBzYXZlcyBhDQo+Pj4gbG90IG9m
IG1lbW9yeSB0b28uIEJ1dCBjdXJyZW50bHkgaXQncyBhIGJpdCBhIHBhaW4gdG8gY29uc3RydWN0
IHRoZXNlDQo+Pj4gZWZmaWNpZW50bHksIG1vc3RseSBpdCdzIGp1c3QgYSB0d28tcGFzcyBhcHBy
b2FjaCBhbmQgdGhlbiB0cnlpbmcgdG8gZnJlZQ0KPj4+IHN1cnBsdXMgbWVtb3J5IG9yIGtyZWFs
bG9jIHRvIGZpdC4gQWxzbyBJIGRvbid0IGhhdmUgZ29vZCBpZGVhcyBoZXJlLCBidXQNCj4+PiBk
bWEtYXBpIGZvbGtzIG1pZ2h0IGhhdmUgc29tZSBmcm9tIGxvb2tpbmcgYXQgdG9vIG1hbnkgdGhp
bmdzIHRoYXQgY3JlYXRlDQo+Pj4gc2NhdHRlcmxpc3RzLg0KPj4gSSBtYWlsZWQgd2l0aCBDaHJp
c3RvcGggYWJvdXQgdGhhdCBhIHdoaWxlIGJhY2sgYXMgd2VsbCBhbmQgd2UgYm90aCBhZ3JlZWQN
Cj4+IHRoYXQgaXQgd291bGQgcHJvYmFibHkgYmUgYSBnb29kIGlkZWEgdG8gc3RhcnQgZGVmaW5p
bmcgYSBkYXRhIHN0cnVjdHVyZSB0bw0KPj4gYmV0dGVyIGVuY2Fwc3VsYXRlIERNQSBhZGRyZXNz
ZXMuDQo+Pg0KPj4gSXQncyBqdXN0IHRoYXQgbm9ib2R5IGhhZCB0aW1lIGZvciB0aGF0IHlldCBh
bmQvb3IgSSB3YXNuJ3QgbG9vcGVkIGluIGluIHRoZQ0KPj4gZmluYWwgZGlzY3Vzc2lvbiBhYm91
dCBpdC4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiAtU2ltYQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
