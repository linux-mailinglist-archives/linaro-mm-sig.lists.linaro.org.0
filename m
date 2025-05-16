Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8877FAB97CC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 10:36:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AACE454F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 08:36:36 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2067.outbound.protection.outlook.com [40.107.237.67])
	by lists.linaro.org (Postfix) with ESMTPS id EED8C40C78
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 May 2025 08:36:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="LNyG/mH6";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.67 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kO88bcHneD/w28DOD/9jVoGRu8iIFwDzGlWj8lW6mY+EEz9I/8PMenDhs5rQpiHgaCGtyKZezg1msmU8xTe+TgELnwOXWzsEu7qXlPNTqeDptaL6DvN8vPsvJBs163ZZu2VyWorf8BMEspzpchYZVSPTOtVglSGayoUyLszMTKbXyqsEEObqwwTWpDJ2nnI8oj65tTPDIb5NnjIkNqJS0aN5zwomYlyTVafxmXnY1Bq/uCVnmtJADtOp15OYIIIyEyS5AvRot2k+/jjBJDhn4YNSFdYrZwI+4fQDjm4dzl1O3riCR5jNVef5xSBU1ve4DuNqlW3cV7c410RkAgLXKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y/cRNckzpJFd40AMTLZEfNweRtQ1ySIqGKLG4b7Mr9k=;
 b=OkRff4pRYMRrDxOYHbiukQMihtsqHFNl4lmOR5LEiI15TFOF/2ZAPXww9C5/nTcLAOOT4hUSe7RWdvYLYnCp195PMKZWLJpEcO+sccnbpXpN9myYgul0MADO888pj3ZEqcmkYs5Q9tmCkTzi/ks2tdErgUY2tkYqGp6u7zU6fsYSS8YgyJxf0yNSHldAp0rhC3pWmQRAHxgGVJt2/IXM6taRkRNOINt001O4uL/TVPx6UgTw5TfCUPdELlcGr2Q5hSqfjwcPMpq36mbjaGDjUQHlhHDyXodhbHp9woeyV0R0hylM+NRhBjtoxlqJnqDihwyL7Mo22mqJ8mJFo7XY+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/cRNckzpJFd40AMTLZEfNweRtQ1ySIqGKLG4b7Mr9k=;
 b=LNyG/mH6/1KsgYXl6uijfm/HKsfhe8st/kPJ489JS8gvQ/ty5JmDJbzv5DNvpbCmFjs9CkY33Gtsg7bG5wpA6vC/0XydVS1lUqtyAAE6vslhdgmIxiEWpIcqToOvQqAiKpou9t2nfMlAlVlWfjn9IAsHmZS6/ErFWIypXTEzwZQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB7596.namprd12.prod.outlook.com (2603:10b6:610:14b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.32; Fri, 16 May
 2025 08:36:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 08:36:17 +0000
Message-ID: <5c11b50c-2e36-4fd5-943c-086f55adffa8@amd.com>
Date: Fri, 16 May 2025 10:36:11 +0200
User-Agent: Mozilla Thunderbird
To: wangtao <tao.wangtao@honor.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>,
 "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "tjmercier@google.com" <tjmercier@google.com>
References: <20250513092803.2096-1-tao.wangtao@honor.com>
 <fdc8f0a2-5b2f-4898-8090-0d7b888c15d8@amd.com>
 <5b68b2a50d48444b93d97f5d342f37c8@honor.com>
 <ef978301-6a63-451d-9ae6-171968b26a55@amd.com>
 <9f732ac8b90e4e819e0a6a5511ac3f6d@honor.com>
 <50092362-4644-4e47-9c63-fc82ba24e516@amd.com>
 <2755aae2f1674b239569bf1acad765dc@honor.com>
 <2487bad4-81d6-4ea2-96a7-a6ac741c9d9c@amd.com>
 <a3f57102bc6e4588bc7659485feadbc1@honor.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <a3f57102bc6e4588bc7659485feadbc1@honor.com>
X-ClientProxiedBy: BL1PR13CA0200.namprd13.prod.outlook.com
 (2603:10b6:208:2be::25) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB7596:EE_
X-MS-Office365-Filtering-Correlation-Id: f130d784-1e91-4827-5acf-08dd9454b9e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SzR0UEpLZUNaWGgzRk12Z3JPcnhYRnNlTk5VelVGVmpFTDY1cytnOWxZTy9q?=
 =?utf-8?B?cW9DZ1FLSkJLRkdmcjJuL1JxWVluMmZiWmJ6dHYzSWJJaFZIUCs5UDhzZWYx?=
 =?utf-8?B?OGhFeEVwYUZXamdVVjFYS3ZNQ1BWcXNSYVJFbERnbGsyMFhTa29yMEgyMEc1?=
 =?utf-8?B?VGllQnpnSDhyUUZnTG9oU3BUZDBGL2hHc3VqU2Y5QXhyZTNrQnRPaHhYOVkx?=
 =?utf-8?B?aTdQR25jUWdkRmxwdE4rVDIzYWx2YWVYOUU3dnozRXNiRzc5NWJnaXI2MGhY?=
 =?utf-8?B?MHR3aHVBanhLUncrMmpleWVhY1RlNFRTUjRHZU4rT1FHZHlVTHA1YzJsTk44?=
 =?utf-8?B?YmZwV1I1b2pVa29maG1BN0lCSjhZV2RwbUJlMkJ1aFBWb3QvbkhxVnR4Sm5z?=
 =?utf-8?B?eWloMmc4Y0VXcFJHUll3c3V2YWJSWTVoYXNVWVFTV1VlTjRvL21uQ0g5bjJC?=
 =?utf-8?B?Q1JRanVxUlhpUXFsMHI1c0hlR29vcGc3bzY2djhNZVY3T3V5eFoydTlROGh2?=
 =?utf-8?B?QkdzQnpTamdpVU5OUEZ3MWw1YkwwTDNrMkVZL0hXU3V3cEN3YlRPMGRtZUs1?=
 =?utf-8?B?d0w3WjlMRndmMC95aytFc1NMc0R6NDZrRURpRDBiTHNUNDdjTGs2M0dkbmpU?=
 =?utf-8?B?NitHeUJLang2dmFLdThhMHl6MkQwTnVJRndNSzZJVW9DdjFYdTVsMG5NQ0Rs?=
 =?utf-8?B?V2ZaUml5QXEwUGsrVkpEaWsvYllrdEtMdTFLTWNZK1krQkJVb21xYU1mbUVX?=
 =?utf-8?B?Vld0bEhBdUpvR1QyMXFjYkVUTWFzYXNwK1BpcmF1ZXpiUTRXbjgvMVljK0Fu?=
 =?utf-8?B?NS9qN29qaENvRUFZQXdONjg1VlBETnFmbGt0MlJFZGVvdm82Rm5ESWEvd2hs?=
 =?utf-8?B?eGcwb29tNlJ6bmpKa2d2MWpTWkdWTm1KdXN2b2dTQzBXdEs0MEZjRHN0M1A4?=
 =?utf-8?B?Ymhlc1pxM2F2RnJTWFh1bkVLb00yekJ6UkpOTE1mT1cyUXVtZ2FqclUwUUw3?=
 =?utf-8?B?VFJQVkZLcUpOMm1rcytPVTV1MWZ4SU5ieDVEcmhsSlBJQlI2dUphY0VsZm9O?=
 =?utf-8?B?c056NjJIN3NhL1Y2Tkx2emFGU051QXYvTHhFRUNoNVR4Um8rRHliS1UxeXBa?=
 =?utf-8?B?a2lhMElZOXdQRXRYdVBkMXl2WE5OQWVXUEYxZ255elkvNGEvVTJGWDNma2lB?=
 =?utf-8?B?M2xpbXdaNDV4MFNSdEdFZGlEbmh0anNBK0I4TlZJU1ViZERGMERlK1V1VFVH?=
 =?utf-8?B?V1A4TEZCUnZLRjhwUW1JT0hLbEszTTJQYms4eHllU1ZvR0VyeHBDYVc2Tm96?=
 =?utf-8?B?Z1NiSlAwRURyVk5JTks0MmQyQ2U4ZVI5bTBPcjBwOE1QSlhvUDdDalR4RWRD?=
 =?utf-8?B?RHBWWGx1QUlhdjdrbmVtenNDc1Z0Y01ncUhJd0NHWUxVNmhqZXpDQkM2MDUy?=
 =?utf-8?B?cW5qN3JJVFl6QytSb3BSZ055UDVGaHdPR09MeTVKdzJyRkU1WnZDTHZQVlJy?=
 =?utf-8?B?MlhReGUvbTdrMGkreDI1TFhuQis3dFBWMVFuU3kxWW5kMkJhUmdzc1pNb2lL?=
 =?utf-8?B?SzZKb21xVWIwRUlPcGZIdGhUT1krdy9xNmEzTEUrT3R3V0ZOcTdYMkdVUzJX?=
 =?utf-8?B?RW1jSFFXMytsdkkvUzJ2ajlETzM4eGgzY2U0dXo4NjZPUlBWZTM5YWFabEgy?=
 =?utf-8?B?Sy9BMFpONktMSHdka1g5UzJYQnJ1cnQwTDFvVHAxcm5mYys5dHN0MFZ6S3Nm?=
 =?utf-8?B?bTZGY1hicXBCNzRhMmxKd0ZMNjBUVHZ3M0QzSnJ0V1FSWkpoenJIdzZ1dkZJ?=
 =?utf-8?B?M3NBUjFjS0xHYjAzaEVSUzI1L04vZ091eFh5UUtaTTBvNmFHcHN5cGF2cDdB?=
 =?utf-8?B?YkFRRkRHd3ZpakZSaUZLdFRVa2hGTmE2K01uSEZzWHV0K1hFTktKTXd6d2FW?=
 =?utf-8?Q?/+So//fcDyo=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R0dsd3ZHM0hhVlpDZXVObG15TjM4VU5lYnV4ZHBINjBmVzIwUWVyanp2NVBN?=
 =?utf-8?B?cTBpYVVWcFc0SU9Kd2RpMEt4YTZ6d1h6SkIydjZNZWdYeVhHeUtUU2wrYmdY?=
 =?utf-8?B?Sy9lNU40MEhFUmdvSUt4azJmTHdsMURRWmNNb1FLU1NVdUF3bmErRFlGVFhW?=
 =?utf-8?B?bTh3S0F4dGlwWDJHUWtTby92VnhPZS82YTBmSzVYWjluZzZoM2d5ZkVDNXdU?=
 =?utf-8?B?WGJvUllpVzdtYkdmdzVtbFU2eFVMMENpaFV0WkpOcUd0WWE2UXdkZzY1Ullr?=
 =?utf-8?B?b1FRa05RSlZialNTbzVNa1VTc012R1dkMjdiNk1FY04zZ1VVMDZwU1JYamtB?=
 =?utf-8?B?MWlLei9pRjNlSC9NSUdhU2V6eUh1MWhaRmdUbHExeVNlcHR0SDhHWitvQ3pv?=
 =?utf-8?B?U1QzVnpaczJFd20zWTlIWjRaa0JlN2VRSm9UY2NuL2NTSVZpZmkvNis0aldi?=
 =?utf-8?B?UkY4RUJjNVVLc01yYXZvZ1hKanFMV1V6OENGR21CUGQyclRDZ254TFYxcy80?=
 =?utf-8?B?eUdjakYyQUIrODlncEZsRlRNZ2crVkhNcGN0Z283MWRxcmd1RmJzNWl4V1Vm?=
 =?utf-8?B?MVFKNlZVbGNURS9nSERLaDMwMDBsQmFXNWhaMGJQUk5wZE40a0ZWQ0c3a0hI?=
 =?utf-8?B?djQ5RHVkK1ZUYzB2R3hwTjA0MkNuQkNXdkoxNlV0YmpZbFpScXlvSThVM1hr?=
 =?utf-8?B?Uy9xQzlld1hpUS9BcnVXSDQ4L3FoSFpIYVlIcElZem0vbU83Z28yamhBRGNI?=
 =?utf-8?B?M1NsT2w2aWd0THZnMWJBemEvTURVUXhJT3Q2L0J5TUZ0RXpTZnY1Q1IxaTZ5?=
 =?utf-8?B?ck1HRE1rUFBRWlp2ZGwvWHNncFdsNnNRcTNVOHJsTWNiWkQ5emNZN3d4VUJw?=
 =?utf-8?B?NS9PQnUwL3FPdzI5aXNkTjBIeTNITytlZS80WUc4Q2VQdm5uYUxjUjBJZ3hw?=
 =?utf-8?B?c3RqUkZNc2t4b0cvYmNBbTBiOEhlY3pid3cwRUJvc3AzRWxDcjM2RHRzVG9n?=
 =?utf-8?B?M0VKcTZsSkNycnNoM0w2Z2pkdnYwN0tzL1lUUk9FT0o1SWgwa2I4ZGMraUJS?=
 =?utf-8?B?S25hRkRUQUdvNlFpS3V3eS9Bc2dXZDJvMnZNUlpCNmkxZU1MNTIxQ0NRQ3R6?=
 =?utf-8?B?R2RrVkNvMXJCdmNuSWozWEtHREczbUNTZHk0c1hqRVhRaFpuS1VoSGpxdlp3?=
 =?utf-8?B?dzg0UEpFUTJUczYwMTg0VXZHV1pwcGl0UlU1N2Q5cG8wNFNZcWxSdjdvZThm?=
 =?utf-8?B?dGR1Y0ZjNGZMMU9HaGF3RUxqM0h1WGcycXhFTi9pKzUrV1hkczdHRjA0d2o0?=
 =?utf-8?B?UDhDeXVXSkp3TjczbStDU3JrUzNrOUxRR2wzMlRLckNjYTk5TzUzMmhXa1ZW?=
 =?utf-8?B?RVF3My90d3U2TUEweVpjTldBdFhXUXRreExJK3Z4RDJabVZxR25OcDZtNlBR?=
 =?utf-8?B?OXd0OEJyTSs3OTQrakJzTWI2T1UxbjRwNkNwLy9KRHA3MzFXTWhFanlDaUNx?=
 =?utf-8?B?ZVVYa3YvRFluWEdhTlNVMk54dDlLUm1LZG01S1lLVlJlMXdWL2pVbm1CNW52?=
 =?utf-8?B?Tis3ZXJLYjZ3RUNCY2JrbjIzT0FqZGt1UVB2c1dWZjlvRGV0bXdPL3R1TlVB?=
 =?utf-8?B?MVcrK1BxS3JLSmNLU0ZpbWdWWnIvQmhGOWlhc3MxeGVmY3A1SHRJMzFaQnR4?=
 =?utf-8?B?NTJ4aUN2SFY4TThwNDZLVU1sdDZ3dUhVSFNsMWRMcjZQNDZldGdncTZnYnFH?=
 =?utf-8?B?YXJUMjlXT1lHKzFob1BXZnVMbnJpa25OQ084L1hmWXhla2hHR0UyQXkvOHI5?=
 =?utf-8?B?V0w4bG9XMS9iSTJjV2RmN2xJNG9FdHFmRWVta2RDYXVaVHBQRHRTalBsSjlm?=
 =?utf-8?B?RDNDcHcrM0VjcWRwMy96NCs3K1N2QlkwTDU1VEMreDNKSXg5Rm9sMDlIdVgx?=
 =?utf-8?B?enk0VGpTZVhUUHZOdlh4clBWK1BkcTNpYmdhK3Z5dWFYZVlJL1pXL1QyZHZB?=
 =?utf-8?B?M1lFOTFvbElVWDhNUmhqU2VnSnh3ZGYvekExZG9DaytKZ09EOHZmTVA0Rldt?=
 =?utf-8?B?Rk0wbzVBK2hiTGhmdThNbmtDWUk2d1E2Z2JtbDdZcXloQVh0dUdzOW1hMVRL?=
 =?utf-8?Q?rooByNgDMOf8HTvCqkjBDAbBd?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f130d784-1e91-4827-5acf-08dd9454b9e4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 08:36:17.5463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rbVl6POnh5jYjT/7jYo4vPpWbG3fIT9GeOEjzHbB7U63sfANNtjNHWPp2oEgu8Ev
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7596
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EED8C40C78
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.67:from];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[NAM12-BN8-obe.outbound.protection.outlook.com:helo,mail-bn8nam12on2067.outbound.protection.outlook.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.237.67:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: VNYVPQQLJPXMJDLT62AQZLW756WLU62K
X-Message-ID-Hash: VNYVPQQLJPXMJDLT62AQZLW756WLU62K
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dmabuf/heaps: implement DMA_BUF_IOCTL_RW_FILE for system_heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VNYVPQQLJPXMJDLT62AQZLW756WLU62K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xNi8yNSAwOTo0MCwgd2FuZ3RhbyB3cm90ZToNCj4gDQo+IA0KPj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4+IEZyb206IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCj4+IFNlbnQ6IFRodXJzZGF5LCBNYXkgMTUsIDIwMjUgMTA6MjYgUE0NCj4+
IFRvOiB3YW5ndGFvIDx0YW8ud2FuZ3Rhb0Bob25vci5jb20+OyBzdW1pdC5zZW13YWxAbGluYXJv
Lm9yZzsNCj4+IGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb207IEJyaWFuLlN0YXJrZXlA
YXJtLmNvbTsNCj4+IGpzdHVsdHpAZ29vZ2xlLmNvbTsgdGptZXJjaWVyQGdvb2dsZS5jb20NCj4+
IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmc7IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7IGxpbmFyby0NCj4+IG1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnOyBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnOw0KPj4gd2FuZ2JpbnRpYW4oQmludGlhbldhbmcpIDxiaW50aWFu
LndhbmdAaG9ub3IuY29tPjsgeWlwZW5neGlhbmcNCj4+IDx5aXBlbmd4aWFuZ0Bob25vci5jb20+
OyBsaXVsdSAwMDAxMzE2NyA8bGl1bHUubGl1QGhvbm9yLmNvbT47IGhhbmZlbmcNCj4+IDAwMDEy
OTg1IDxmZW5nLmhhbkBob25vci5jb20+DQo+PiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZG1h
YnVmL2hlYXBzOiBpbXBsZW1lbnQNCj4+IERNQV9CVUZfSU9DVExfUldfRklMRSBmb3Igc3lzdGVt
X2hlYXANCj4+DQo+PiBPbiA1LzE1LzI1IDE2OjAzLCB3YW5ndGFvIHdyb3RlOg0KPj4+IFt3YW5n
dGFvXSBNeSBUZXN0IENvbmZpZ3VyYXRpb24gKENQVSAxR0h6LCA1LXRlc3QgYXZlcmFnZSk6DQo+
Pj4gQWxsb2NhdGlvbjogMzJ4MzJNQiBidWZmZXIgY3JlYXRpb24NCj4+PiAtIGRtYWJ1ZiA1M21z
IHZzLiB1ZG1hYnVmIDY5NG1zICgxMFggc2xvd2VyKQ0KPj4+IC0gTm90ZTogc2htZW0gc2hvd3Mg
ZXhjZXNzaXZlIGFsbG9jYXRpb24gdGltZQ0KPj4NCj4+IFllYWgsIHRoYXQgaXMgc29tZXRoaW5n
IGFscmVhZHkgbm90ZWQgYnkgb3RoZXJzIGFzIHdlbGwuIEJ1dCB0aGF0IGlzDQo+PiBvcnRob2dv
bmFsLg0KPj4NCj4+Pg0KPj4+IFJlYWQgMTAyNE1CIEZpbGU6DQo+Pj4gLSBkbWFidWYgZGlyZWN0
IDMyNm1zIHZzLiB1ZG1hYnVmIGRpcmVjdCA0NjFtcyAoNDAlIHNsb3dlcikNCj4+PiAtIE5vdGU6
IHBpbl91c2VyX3BhZ2VzX2Zhc3QgY29uc3VtZXMgbWFqb3JpdHkgQ1BVIGN5Y2xlcw0KPj4+DQo+
Pj4gS2V5IGZ1bmN0aW9uIGNhbGwgdGltaW5nOiBTZWUgZGV0YWlscyBiZWxvdy4NCj4+DQo+PiBU
aG9zZSBhcmVuJ3QgdmFsaWQsIHlvdSBhcmUgY29tcGFyaW5nIGRpZmZlcmVudCBmdW5jdGlvbmFs
aXRpZXMgaGVyZS4NCj4+DQo+PiBQbGVhc2UgdHJ5IHVzaW5nIHVkbWFidWYgd2l0aCBzZW5kZmls
ZSgpIGFzIGNvbmZpcm1lZCB0byBiZSB3b3JraW5nIGJ5IFQuSi4NCj4gW3dhbmd0YW9dIFVzaW5n
IGJ1ZmZlciBJTyB3aXRoIGRtYWJ1ZiBmaWxlIHJlYWQvd3JpdGUgcmVxdWlyZXMgb25lIG1lbW9y
eSBjb3B5Lg0KPiBEaXJlY3QgSU8gcmVtb3ZlcyB0aGlzIGNvcHkgdG8gZW5hYmxlIHplcm8tY29w
eS4gVGhlIHNlbmRmaWxlIHN5c3RlbSBjYWxsDQo+IHJlZHVjZXMgbWVtb3J5IGNvcGllcyBmcm9t
IHR3byAocmVhZC93cml0ZSkgdG8gb25lLiBIb3dldmVyLCB3aXRoIHVkbWFidWYsDQo+IHNlbmRm
aWxlIHN0aWxsIGtlZXBzIGF0IGxlYXN0IG9uZSBjb3B5LCBmYWlsaW5nIHplcm8tY29weS4NCg0K
DQpUaGVuIHBsZWFzZSB3b3JrIG9uIGZpeGluZyB0aGlzLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFu
Lg0KDQoNCj4gDQo+IElmIHVkbWFidWYgc2VuZGZpbGUgdXNlcyBidWZmZXIgSU8gKGZpbGUgcGFn
ZSBjYWNoZSksIHJlYWQgbGF0ZW5jeSBtYXRjaGVzDQo+IGRtYWJ1ZiBidWZmZXIgcmVhZCwgYnV0
IGFsbG9jYXRpb24gdGltZSBpcyBtdWNoIGxvbmdlci4NCj4gV2l0aCBEaXJlY3QgSU8sIHRoZSBk
ZWZhdWx0IDE2LXBhZ2UgcGlwZSBzaXplIG1ha2VzIGl0IHNsb3dlciB0aGFuIGJ1ZmZlciBJTy4N
Cj4gDQo+IFRlc3QgZGF0YSBzaG93czoNCj4gdWRtYWJ1ZiBkaXJlY3QgcmVhZCBpcyBtdWNoIGZh
c3RlciB0aGFuIHVkbWFidWYgc2VuZGZpbGUuDQo+IGRtYWJ1ZiBkaXJlY3QgcmVhZCBvdXRwZXJm
b3JtcyB1ZG1hYnVmIGRpcmVjdCByZWFkIGJ5IGEgbGFyZ2UgbWFyZ2luLg0KPiANCj4gSXNzdWU6
IEFmdGVyIHVkbWFidWYgaXMgbWFwcGVkIHZpYSBtYXBfZG1hX2J1ZiwgYXBwcyB1c2luZyBtZW1m
ZCBvcg0KPiB1ZG1hYnVmIGZvciBEaXJlY3QgSU8gbWlnaHQgY2F1c2UgZXJyb3JzLCBidXQgdGhl
cmUgYXJlIG5vIHNhZmVndWFyZHMgdG8NCj4gcHJldmVudCB0aGlzLg0KPiANCj4gQWxsb2NhdGUg
MzJ4MzJNQiBidWZmZXIgYW5kIHJlYWQgMTAyNCBNQiBmaWxlIFRlc3Q6DQo+IE1ldHJpYyAgICAg
ICAgICAgICAgICAgfCBhbGxvYyAobXMpIHwgcmVhZCAobXMpIHwgdG90YWwgKG1zKQ0KPiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS18LS0tLS0tLS0tLS18LS0tLS0tLS0tLS0N
Cj4gdWRtYWJ1ZiBidWZmZXIgcmVhZCAgICB8IDUzOSAgICAgICAgfCAyMDE3ICAgICAgfCAyNTU1
DQo+IHVkbWFidWYgZGlyZWN0IHJlYWQgICAgfCA1MjIgICAgICAgIHwgNjU4ICAgICAgIHwgMTE3
OQ0KPiB1ZG1hYnVmIGJ1ZmZlciBzZW5kZmlsZXwgNTA1ICAgICAgICB8IDEwNDAgICAgICB8IDE1
NDYNCj4gdWRtYWJ1ZiBkaXJlY3Qgc2VuZGZpbGV8IDUxMCAgICAgICAgfCAyMjY5ICAgICAgfCAy
NzgwDQo+IGRtYWJ1ZiBidWZmZXIgcmVhZCAgICAgfCA1MSAgICAgICAgIHwgMTA2OCAgICAgIHwg
MTExOA0KPiBkbWFidWYgZGlyZWN0IHJlYWQgICAgIHwgNTIgICAgICAgICB8IDI5NyAgICAgICB8
IDM0OQ0KPiANCj4gdWRtYWJ1ZiBzZW5kZmlsZSB0ZXN0IHN0ZXBzOg0KPiAxLiBPcGVuIGRhdGEg
ZmlsZSgxMDI0TUIpLCBnZXQgYmFja19mZA0KPiAyLiBDcmVhdGUgbWVtZmQoMzJNQikgIyBMb29w
IHN0ZXBzIDItNg0KPiAzLiBBbGxvY2F0ZSB1ZG1hYnVmIHdpdGggbWVtZmQNCj4gNC4gQ2FsbCBz
ZW5kZmlsZShtZW1mZCwgYmFja19mZCkNCj4gNS4gQ2xvc2UgbWVtZmQgYWZ0ZXIgc2VuZGZpbGUN
Cj4gNi4gQ2xvc2UgdWRtYWJ1Zg0KPiA3LiBDbG9zZSBiYWNrX2ZkDQo+IA0KPj4NCj4+IFJlZ2Fy
ZHMsDQo+PiBDaHJpc3RpYW4uDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
