Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEb1I4GtcGkgZAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:42:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8415562D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:42:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE899401B8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:42:07 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011050.outbound.protection.outlook.com [40.93.194.50])
	by lists.linaro.org (Postfix) with ESMTPS id 52F6E3F6BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 10:42:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=mRxS2fei;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mPamIJIWLUwTmOefhKfxqREYIuq+aCzkTsJTknRCAsD4MP5W/fAVFY/JiBoKdc5Qst6Tycm6PBdzKKkp8V3GRg0tB29p2uZjWQGkt+mRfA2X6UWCPyp1p+rUOD0Qu19gVS4TCIhTxnvYMjb5oqcYb2tpPx14riTmC5VV3+4VWVVUFkhJ2nszQYpD0cuxcNM2dlYYJ9j/S30PWjpFAhMd5hdfsnh6dvmaS+SDllMpu3HOcTqhFPvetuV3sxONW2gLgxaYo7KLTCVKK1ph60RLxGYhe6F5/6ozxgv5u2CZVrkcEVcffICV54UDrkoWUnLx+kdux4v/N/5jhaz47kw7Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eZ7PpEz6FJSaH1PvMB78D+0D9ySJR+zivDsoO5jbcSk=;
 b=nqwLJ91AboujHZuZ+AfF3MShi7xMDZb5CiDe7Tue6BwuvdPo4GpcyMJGygGQCTzbHDqsVRdJN0Cfmy1B7YSVdlm/qCZE5UTY0UGXpF6KnVG+Gm+MvwsezJF1p+80DBtGiAuWXO0wkAt+5jMVOTyyAvsbAX2dmgZksfrKiVD8luIs3N0thENAdt911ozW7LuUTKkgn2qkSVgtyxsYP3IQazCNdGJl75UatH2vHbwKM9HG57Ov6DqZ26vyscBleXFVYntQ2OO4Gc4xYha81KNkEJMTseiemPK9wrG+rswWLIswQzNrPe2YKSnv7L0vGxmaXPT8fH1xL+IGF1qXKOHZ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZ7PpEz6FJSaH1PvMB78D+0D9ySJR+zivDsoO5jbcSk=;
 b=mRxS2fei13rAayC3/xv8WNghrIjAKKIzd0CzQ6e4J/oN36gG3zKDyVzTCi70yKyDxMSrgSFscpaCrhOegkBgByIpo5hBHUq+2RVCmd2UPoIegohJEjy+n9E2FlNDTxRICGDoYY5bJU2QD60bMKflqPZXNd+nYHYH10yApJbLeV4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB6713.namprd12.prod.outlook.com (2603:10b6:806:273::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Wed, 21 Jan
 2026 10:41:57 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:41:57 +0000
Message-ID: <015b25e6-cfe1-4110-963f-5f8dc4720d1b@amd.com>
Date: Wed, 21 Jan 2026 11:41:48 +0100
User-Agent: Mozilla Thunderbird
To: Matthew Brost <matthew.brost@intel.com>, Leon Romanovsky <leon@kernel.org>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com>
 <aW/pQmOO8komCgOK@lstrano-desk.jf.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aW/pQmOO8komCgOK@lstrano-desk.jf.intel.com>
X-ClientProxiedBy: BN9PR03CA0308.namprd03.prod.outlook.com
 (2603:10b6:408:112::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB6713:EE_
X-MS-Office365-Filtering-Correlation-Id: d5b8e0c4-0252-4539-8f7c-08de58d9b36a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?a0Y2UnlKTjNDWFRvRDJhMDV4aERlWFQ5eXMySU1uNkpqRXlwY0dwK0dDL3B2?=
 =?utf-8?B?TGZvcXJDeTR5ejFMbWFpSlpVa3JVenBnZi9VOXdUaklRQXBtUjNnaXI0MnBU?=
 =?utf-8?B?a01sQ3B0RVpVcHBhVldYL2RJeTRubVl3YjIrSHIyM0Q3NDFYeGE3V2F4QmdO?=
 =?utf-8?B?MlNIUzlHUU11NjNFVGhXa2hILzhmOFlQWFR0d0NvMUtwalJaREtEbFREOENN?=
 =?utf-8?B?SVMyNG5BQURWejNkeGlPd0V6bmIyeG9IYVQ2L1VSU1lyUkJJenprVzFVSWpj?=
 =?utf-8?B?ZlB0WnRPNnlvYmlJSnJxMDRHU04zcHJmeGM4Yy81emtUNXExejcrL090dUxS?=
 =?utf-8?B?UkJXZnlacFJ6M2RVRDB5eURudE9aYmtQRFZuRGs2Q3NrV0hvQjgzbGlraGJ5?=
 =?utf-8?B?OWc1U2hWTmZ0a3JJdjBHT0w5VVl4ZzBYcUI4Kzc3dzVhRzFENHhTOXpUZW9a?=
 =?utf-8?B?YS9IT2E1Z2p4MDBKTi91NmhtMk9QVUdxWDhyREZnMHRPUzgvRHNDMDVBbDBs?=
 =?utf-8?B?Z1Z0R2NxZHNFV3JXK2NtcEwyWFlsc0lvbWRSOS9IbjVHZDFnU1ZBNlloOUJN?=
 =?utf-8?B?TXlKMlQvUm9pdU41eDFLOU9EVEhCcXpwNUZ5NTVEemd1VTRvaE1PQS9tUklS?=
 =?utf-8?B?Ti9QbHRSM3o5ZS80WVlQdXlwUGdnRWp2cmdwaDgxZzVpdW5OclhBVVJ5V2JP?=
 =?utf-8?B?b0FKZzNmQWgxam11ZGs3eVJqMjByc1VnczNoaWtTWUJFME9Rd3EzSDh2RkRi?=
 =?utf-8?B?WHpVUDNoaTdRREdRczlHS2tvRVFDQnVTNmtBM3ExeFR0MVE2VTJ6cS9WSjhp?=
 =?utf-8?B?K0JzUE9FYnlQUnRVYlpXejJLSzRpSW82NVY1NGZTb3BlWUN3dWF0cGJyOUYy?=
 =?utf-8?B?YW1kemdKV09kRkx2RHpNVkJGS05la2tETTQ1eGlKTXpndmdhNkRlMWw5Z1Nl?=
 =?utf-8?B?SGRVcit3ajdKVDJmdFNIMWc3OHF0SDV6YzNCL3Y2OWJmT0VTdUN2T2tnREtP?=
 =?utf-8?B?ajlEVkVhQ3RWa1VxZHNYQy9nM3FtNDFibWtVbmxob29iSytpdzBnMGRqNkVq?=
 =?utf-8?B?cldBSUdvWHVoNU9GdXg3bGpVdkhZZ2srY2xyakxxVW1NQWk4N2dBR2NVZlN1?=
 =?utf-8?B?Z1RzN0ZQbHBzWGdVaXUvalc2QmxSRVQ0T0RjQ3RqVmRuc0lpN0g2L1dmSDdZ?=
 =?utf-8?B?cW80eHphZTE0QW01WHNUMjNnQWlJSXMyNnlobE16VVF6VFZ5YVFzVTZkMGg1?=
 =?utf-8?B?WmcwelZ3Y2hSNnZReWxKMzl1anVweHNHaEtwT1JrMXo3aTVXRHV3aWRtMlls?=
 =?utf-8?B?b1MwYm52VklEMm9wWk1KUXlDMStZSGR6a0VBZlRlSlBpSW1nUFZDczNJV2FP?=
 =?utf-8?B?NTBkTWJZRGhiREhxdXRGOXBNSG9rcGNMMm84c3JQOXVobXFZV0MzMHNUTCt4?=
 =?utf-8?B?RHhwVGVZTmV0THBHYmlMeVZZOFBxTkdBNGZKNG1SVVNwUWxXeUdoeGJQQU1F?=
 =?utf-8?B?RW5JWFZMQ2h4VDNGN2lscHArVGZWU2s5TjJIM3h1ZXA2aFpEZzBaYUVPdm4x?=
 =?utf-8?B?L2hIT1gzK3d6blhURHU3YlF3MUw0QmcrNWRtQ2xKVHdTeDlQODBmTlc1VllU?=
 =?utf-8?B?K2xpbnA2bWprTnc2WGF4elBtdmJvWnRlU2ZzU2ZFbXYrSzkvd1pCTVBjMUw5?=
 =?utf-8?B?UytVekhQdnJaNDdEUXlVVGlJcVcxcENwTWtPall4N3NzNlNlTHArbUV1bFMw?=
 =?utf-8?B?LzdGYTRZcWlNTjFpSHpZVVI0Yk1EdXBVdkdKZ1IweGJaUy9Ja1ZEZ0MwUDVu?=
 =?utf-8?B?eXJlOU5CTFpqM05vRWNCU3V4dGdoaEV2d3JWOFdJR2xwY2lERjJib2M1V0Rs?=
 =?utf-8?B?UFhsTjBRY3NyNS9WVDRWc1Q5blJhclpCNUs0UElUaU1HMk1OSElYQi85ZzRH?=
 =?utf-8?B?NGdRMmZIYmdQcFBaZmNra0QvOHc0SzY0NkdLOEZjZGtOM1Vxb01HQSt4M2NH?=
 =?utf-8?B?Ym9SV1ZSSE1TVzRjSEFtTVFESkxHZVp6QzVXK010NHdrdyt2ZEJ0UGtPNWFV?=
 =?utf-8?B?dWJVRG1BN3FnNThkTktaeEZjNDJvT3EwTjg2STBuN2dRbTE2QnlaZ1kzbTgy?=
 =?utf-8?Q?8Leo=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VkpKcXlGYzhlMktYZzZxVTJiM3ZFNzc3ci94L3BCKzF4K2EvbG1nb2syRFV3?=
 =?utf-8?B?ZmtaZVRaTjNGMUY4VVkvRFRpK2NxTWF3YjFuNDBHR3NhZEJWdG9ZUHk5Nkdk?=
 =?utf-8?B?VmZKMmVMN3laWGpFcmdkYXMzVEtNUU1NYlFtc2FMdFZmU3poWFVBclcwb2FD?=
 =?utf-8?B?VWFpNGNYdGQ1N2JjUFgvaUxGMWZlOGVUQ1NZZzNRTlJodGR1Z2U4VzdJNXlz?=
 =?utf-8?B?NXZyNlVjeHM3c01ONTQ1YkFVZENMb05QRTc2M0o3Y3llaGFmSWcwTldpWTZT?=
 =?utf-8?B?MzJMRVVZaGt6NzhJQUMvZS82SUtmZkUwQ0VKOUNSMTdVSVlsWVlSck5RdkFn?=
 =?utf-8?B?Z1I0bExPN00vQmFzVW4ra0wyTko2cFlzY0lxZVYvSmZpZ2UydVBtbE55Z1Iz?=
 =?utf-8?B?OTRpSmpmWE1XMGRKY3FvSXVtT204anlmbGgrQjhHQ29IeEM0ZlFBQ1d4MlVo?=
 =?utf-8?B?bVg1UzF1UHdlVmxybzZMVDBSNE5zeS8zdFVIQUtGbGIxNGVQdWRvTTJ1Sy8x?=
 =?utf-8?B?NWVoTW0vYnVrdkRzcTFPNFRLYU9OVi9zRGNuMmdsVVVCMFZ3T1UvVG5vYndo?=
 =?utf-8?B?NmVwUjA3bkwrUjRTeVgzbW95UGhCQ2FhU2pWUUVYQjE1WWJ0YzhNaUN4cm52?=
 =?utf-8?B?RDlOT2JQQTRKOWR6a2JKQzVUdlc4L1BEZ1ZyOXc3cjB2eTIwNnVhYVVlbVFV?=
 =?utf-8?B?QVVqQ0VjZ2d2ZlNjL2VYdFlNN1MxOUh3SElmZWgvdUNXZHFlYU1sNUJpdE1x?=
 =?utf-8?B?b1JteHA2d0hpNVFPN2oraTJWR2p2M0ZLMGZTYUhJVTdoRjc5UDVlT1NSUkpi?=
 =?utf-8?B?QVpIMzhYaGhmYXRWTDJIU3d0U3J2YStKM1JkMFFLaG02M2xjNDNhaUpyY2c0?=
 =?utf-8?B?QjA4YkNHVlRhUm5KVWdyYmhuNXNWbE54WHAyMGgwU1oya0xxcGdtK1MvaWZx?=
 =?utf-8?B?bEVEbHg5YjFlVkhmZ2tlS3diOWszK2VoZU1xUVowZlgvQk9sVXN6dUtYRlBx?=
 =?utf-8?B?U3dnUTlBOTJLWG10aWQzeG1jbWZVQjZ4ZHpBL25UMTIwTC9FZ3JGYnY4RmZJ?=
 =?utf-8?B?OXFabk5CKzJJT3VIMVlWaUJNSDdWcWxaS2V2RnRlckRFSXJYL3lwS3BJRUFU?=
 =?utf-8?B?aWREZ0I2K21heFBRSVpMZ0J3cDBuV2NHVVB2aUFYN0E5cUNvZUQ2MGZZU08v?=
 =?utf-8?B?d0VLM3VmWTU3VUhQc1N3MDl2bnZMZEVEUGlzUkI4RkRsUWpnbU9GcTVGb0sy?=
 =?utf-8?B?c1ZKQ2t1QlMyTHJNK3QyZGFTaFEyWU1iQzJYTlF2UzFUcFhhaGVmZmg3aXE0?=
 =?utf-8?B?aHI2eSthZWNITDNiMXVSbGg1QnlYVnc4TEtJNllRMGFJOWJ0aUhmN0xvSGFv?=
 =?utf-8?B?dnNmNFFtUWY5dXNjZ0hMMk5hYU9mRVQyTExqYjV4Umc0Tzc2WllJMFhSUTZi?=
 =?utf-8?B?Y21SL2svb3VsMmVOaWlndktweHZ1M1l1Y0h4S2k1b2xwenFXd0dZclhpbDZC?=
 =?utf-8?B?S1E3UHRiSE0vNDFFbnEzVU84aWdwcGdDbW4zNy9sRFExczVYcWNhUDRZWm12?=
 =?utf-8?B?REFkdW0wNFNaaW02Q05rSTJyZEl4aGxKaWNxK3RZb2U3dlcwaXhJSXppZUpP?=
 =?utf-8?B?ZTFzL1NTZ0hiMmZzbU50S3J2b2JjVzNzVHo2SmZlcW1QQ0lJZk42cnR4ckd4?=
 =?utf-8?B?TUo5SkFOMllJT1FiSFhXdEtmY25tQjBhZEpMWkZxSndmRXdjMVo4UlZIb0ho?=
 =?utf-8?B?UjdKWXJvVk1kWWozUFRFRDFNQ0h1YW13WlUxQTBrUjM1eEYyUVFVN1BwbVNy?=
 =?utf-8?B?cjN4Mlkyc1luMm40MkpvZkEvT1hMeUd6SHQ5Q2tIeTZqbUp6MldMbk1XVTFk?=
 =?utf-8?B?MmM5TVdBd0tYTHVyaXFXQU9TRy9jQzhwWjdaQmlzN0dYYUtiTGZzOWJ2RnRm?=
 =?utf-8?B?Wk52dHBORXBXQitPMHk4TzVkb3ptT3dvWTllblFWYkZ4UjNLZU9EdTZQM1la?=
 =?utf-8?B?MW15N1JsMG52Z1V6Kzd4VktYVkNnNkpCTUpNUUhOVmRFc1FJeHZQR1lIL2Vt?=
 =?utf-8?B?SFFFejhPZkg0WmZMMnRCVm5NaHQ3L1Y4U3hkWFE4UlVqVXpvazE0ZmE5OHVh?=
 =?utf-8?B?ZEFheENKYjlXVEU1YXI0ZWl4bnRNNGFtRVdITy9SQitxbFQyemlhcFI0Y1dQ?=
 =?utf-8?B?d0hDN1Q2SHhsb3gyNXFrYWVRcm9YbVB5ZzNRbHFyUG5wNVMvZzJMRE4wOVhl?=
 =?utf-8?B?aXBmd09SMWR0dVk0LzFxeGFVK3BpeThidXdWNDZVZFFUc0oyanFHa01WTGFU?=
 =?utf-8?Q?ILzGvCpxLFdb8emJfK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5b8e0c4-0252-4539-8f7c-08de58d9b36a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 10:41:57.5526
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: omFBqJ0aS9Hwr7YXf4UFa/MoCZkjVG5sfYgntO1idXTvqVHMhPlcUcl487iqipAG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6713
X-Spamd-Bar: ----
Message-ID-Hash: TDH5GA3ZJQCY3HX5RR3AVDX4MHRG5AVE
X-Message-ID-Hash: TDH5GA3ZJQCY3HX5RR3AVDX4MHRG5AVE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@v
 ger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/7] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TDH5GA3ZJQCY3HX5RR3AVDX4MHRG5AVE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,v,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,amd.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: DF8415562D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMC8yNiAyMTo0NCwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4gT24gVHVlLCBKYW4gMjAs
IDIwMjYgYXQgMDQ6MDc6MDZQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4gRnJv
bTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4+DQo+PiBkbWEtYnVmIGlu
dmFsaWRhdGlvbiBpcyBwZXJmb3JtZWQgYXN5bmNocm9ub3VzbHkgYnkgaGFyZHdhcmUsIHNvIFZG
SU8gbXVzdA0KPj4gd2FpdCB1bnRpbCBhbGwgYWZmZWN0ZWQgb2JqZWN0cyBoYXZlIGJlZW4gZnVs
bHkgaW52YWxpZGF0ZWQuDQo+Pg0KPj4gRml4ZXM6IDVkNzQ3ODFlYmM4NiAoInZmaW8vcGNpOiBB
ZGQgZG1hLWJ1ZiBleHBvcnQgc3VwcG9ydCBmb3IgTU1JTyByZWdpb25zIikNCj4+IFNpZ25lZC1v
ZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+PiAtLS0NCj4+ICBk
cml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIHwgNSArKysrKw0KPj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92Zmlv
L3BjaS92ZmlvX3BjaV9kbWFidWYuYyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVm
LmMNCj4+IGluZGV4IGQ0ZDBmN2QwOGM1My4uMzNiYzZhMTkwOWRkIDEwMDY0NA0KPj4gLS0tIGEv
ZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPj4gKysrIGIvZHJpdmVycy92Zmlv
L3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPj4gQEAgLTMyMSw2ICszMjEsOSBAQCB2b2lkIHZmaW9f
cGNpX2RtYV9idWZfbW92ZShzdHJ1Y3QgdmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsIGJvb2wg
cmV2b2tlZCkNCj4+ICAJCQlkbWFfcmVzdl9sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7
DQo+PiAgCQkJcHJpdi0+cmV2b2tlZCA9IHJldm9rZWQ7DQo+PiAgCQkJZG1hX2J1Zl9tb3ZlX25v
dGlmeShwcml2LT5kbWFidWYpOw0KPj4gKwkJCWRtYV9yZXN2X3dhaXRfdGltZW91dChwcml2LT5k
bWFidWYtPnJlc3YsDQo+PiArCQkJCQkgICAgICBETUFfUkVTVl9VU0FHRV9LRVJORUwsIGZhbHNl
LA0KPj4gKwkJCQkJICAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOw0KPiANCj4gU2hvdWxkIHdl
IGV4cGxpY2l0bHkgY2FsbCBvdXQgaW4gdGhlIGRtYV9idWZfbW92ZV9ub3RpZnkoKSAvDQo+IGlu
dmFsaWRhdGVfbWFwcGluZ3Mga2VybmVsLWRvYyB0aGF0IEtFUk5FTCBzbG90cyBhcmUgdGhlIG1l
Y2hhbmlzbQ0KPiBmb3IgY29tbXVuaWNhdGluZyBhc3luY2hyb25vdXMgZG1hX2J1Zl9tb3ZlX25v
dGlmeSAvDQo+IGludmFsaWRhdGVfbWFwcGluZ3MgZXZlbnRzIHZpYSBmZW5jZXM/DQoNCk9oLCBJ
IG1pc3NlZCB0aGF0ISBBbmQgbm8gdGhhdCBpcyBub3QgY29ycmVjdC4NCg0KVGhpcyBzaG91bGQg
YmUgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVAgc28gdGhhdCB3ZSB3YWl0IGZvciBldmVyeXRoaW5n
Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBZZXMsIHRoaXMgaXMgcHJvYmFibHkg
aW1wbGllZCwgYnV0IGl0IHdvdWxkbuKAmXQgaHVydCB0byBzdGF0ZSB0aGlzDQo+IGV4cGxpY2l0
bHkgYXMgcGFydCBvZiB0aGUgY3Jvc3MtZHJpdmVyIGNvbnRyYWN0Lg0KPiANCj4gSGVyZSBpcyB3
aGF0IHdlIGhhdmUgbm93Og0KPiANCj4gIAkgKiAtIER5bmFtaWMgaW1wb3J0ZXJzIHNob3VsZCBz
ZXQgZmVuY2VzIGZvciBhbnkgYWNjZXNzIHRoYXQgdGhleSBjYW4ndA0KPiAJICogICBkaXNhYmxl
IGltbWVkaWF0ZWx5IGZyb20gdGhlaXIgJmRtYV9idWZfYXR0YWNoX29wcy5pbnZhbGlkYXRlX21h
cHBpbmdzDQo+ICAJICogICBjYWxsYmFjay4NCj4gDQo+IE1hdHQNCj4gDQo+PiAgCQkJZG1hX3Jl
c3ZfdW5sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdik7DQo+PiAgCQl9DQo+PiAgCQlmcHV0KHByaXYt
PmRtYWJ1Zi0+ZmlsZSk7DQo+PiBAQCAtMzQyLDYgKzM0NSw4IEBAIHZvaWQgdmZpb19wY2lfZG1h
X2J1Zl9jbGVhbnVwKHN0cnVjdCB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldikNCj4+ICAJCXBy
aXYtPnZkZXYgPSBOVUxMOw0KPj4gIAkJcHJpdi0+cmV2b2tlZCA9IHRydWU7DQo+PiAgCQlkbWFf
YnVmX21vdmVfbm90aWZ5KHByaXYtPmRtYWJ1Zik7DQo+PiArCQlkbWFfcmVzdl93YWl0X3RpbWVv
dXQocHJpdi0+ZG1hYnVmLT5yZXN2LCBETUFfUkVTVl9VU0FHRV9LRVJORUwsDQo+PiArCQkJCSAg
ICAgIGZhbHNlLCBNQVhfU0NIRURVTEVfVElNRU9VVCk7DQo+PiAgCQlkbWFfcmVzdl91bmxvY2so
cHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4+ICAJCXZmaW9fZGV2aWNlX3B1dF9yZWdpc3RyYXRpb24o
JnZkZXYtPnZkZXYpOw0KPj4gIAkJZnB1dChwcml2LT5kbWFidWYtPmZpbGUpOw0KPj4NCj4+IC0t
IA0KPj4gMi41Mi4wDQo+Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
