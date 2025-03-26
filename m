Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E22A7118B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 08:41:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 95A1F45F69
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 07:41:44 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2063.outbound.protection.outlook.com [40.107.244.63])
	by lists.linaro.org (Postfix) with ESMTPS id 5513640431
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Mar 2025 07:41:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="a9/5a9N/";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.63 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OC2YfaNZXEhLsnlZ/IhWj1YTkpkJ+WzOwEvylBcz7ZNiZIR5Eb9KpuFvV+VGtDdrtYgcTlsascKnZ03+GF/iGyKOZ29udoEo22Vm9K8+fcIXfwVJAfCvyGoqKKJSDfwbybJfm9H6GqMokXWiEE8OBV7f68nL0Cc9SsHoIpJZB6n6VIMjmay7UhOQ36rijY9zqh7cMhWAkpF9w1dXUqfeVF7W+f4luFlkCl/eBmKhoB/c5UuHoyWNLgQkHxUKYdpHvHfNNLvE5a+4E2uxd1GK7ZC18onCqxfUxsumPp0Q1flyaID4D3dbrG7A3eK8DYxk5ZKzHqgs39j8yxEXe5zDUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PzlnwZI3uF+kJk3AMVJPsJif5BmqhopC1bZS4M6v1Pg=;
 b=LzOOz07JEcV+zpWtgekZgtNXHQuavsf/HMrOyCzEQ30A7ganQ3052LUlOLdvTvD6Jsj4A5t9sHgnefo6l9Oijn9tBQkoPL0Nl4SZAG7lmKJZmvDw4Z1rqYsDg41YqfDeDqMXXegRmm/fq2E1Es2JrQXN+aWLVdGpYxSw9YM3R2DDCZ1Eakqta54XzPsvSLJ2a15ZInD8CfF66m+Wah8u0X/zNILasxSsYX3DeSF9/bxhSXt4i4w6DAvodIGD0fvc0O1gFhJUlj1TmjoJpFDktkUe67kw3qyLFvG2RDxiBBFCfmVXpC3gAEcgMAtV7DorSbEpIl/saQIMffYJRHMVtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PzlnwZI3uF+kJk3AMVJPsJif5BmqhopC1bZS4M6v1Pg=;
 b=a9/5a9N/UU1Gc2sp6KXzX1p/HDsAbpP3X06TkeQXINV155pqqmFRW9ttHg/006QXmFIWr65/CwtOd1Wykr4gjxgrhDbMKv8X4kU9339YJyrOAUd1pcetYoARWAGbxQRYK342qlJQXvr8pBJ73e0IU3SrlFPoiRun9yBX7yQJPOU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA5PPF5D41D38AD.namprd12.prod.outlook.com (2603:10b6:80f:fc04::8cb) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.43; Wed, 26 Mar
 2025 07:41:29 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8511.026; Wed, 26 Mar 2025
 07:41:29 +0000
Message-ID: <366587a4-9097-40d8-b21b-a2e82ae79476@amd.com>
Date: Wed, 26 Mar 2025 08:41:23 +0100
User-Agent: Mozilla Thunderbird
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>,
 "Xiaogang.Chen" <xiaogang.chen@amd.com>,
 "kraxel@redhat.com" <kraxel@redhat.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
References: <20250321164126.329638-1-xiaogang.chen@amd.com>
 <555feb70-5d80-4a36-818f-f00fbc3dff23@amd.com>
 <IA0PR11MB718563F5C571E07F1314F152F8A72@IA0PR11MB7185.namprd11.prod.outlook.com>
 <099dbff3-42fb-4445-b5a0-1c4031bb9e7c@amd.com>
 <IA0PR11MB71859EE03E705A33BB5274F3F8A62@IA0PR11MB7185.namprd11.prod.outlook.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <IA0PR11MB71859EE03E705A33BB5274F3F8A62@IA0PR11MB7185.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0270.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA5PPF5D41D38AD:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a51fe0e-67a8-4497-249b-08dd6c399ed4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TXFxelVodW9xb2FpOW45ZGF5NlJwVUNmYzduM1Y5Y0FyVEZMSWxrZTA5V1NE?=
 =?utf-8?B?ZVdRWnZnMjFUWEo4VXN1YTQzZVpOeFZoYWpVeXhXNkVoSUNURWJSSlZVWE14?=
 =?utf-8?B?NlArVDJZZmp1S005SkRlbStBaXZOdVdwQ0MrM2MwczcrN1FPdzJkazduQmJv?=
 =?utf-8?B?aWQ1VW10OWhVNXFNRDkrOG5uZmNBeWh5dU1GZUc0OVkzcVhJQmhXa0lvbTk2?=
 =?utf-8?B?RkRCQzVySXNnVUlEczArL1lIVFdhako1N3pIV2hBUW5neSsxWjJzM09KbjhP?=
 =?utf-8?B?ZWd0QmljWUE0ZzN6cDA1ekJGK29XaGtaV3dSbitrN2tsOWRyL21VcDlpK1Ni?=
 =?utf-8?B?UTBBYmQ5RVRDOGVGWWEzMWIyeHFkVDdZSUxLU2FXQjMzMmtzS2pCdmdDRTBI?=
 =?utf-8?B?OXRoRklwTUVVY2NpZng0L1RUSWV3K0ZpSm1MekorVUJIVjhTVU9NYVQ5Nkp2?=
 =?utf-8?B?S1k1eHAvSnd2UXlaVUM0Mld3STZ6SjgzYXBmL2Y1OUZsNEcxYk1rdTFmZVJ1?=
 =?utf-8?B?RStmMWZYNlJicmIzcDNpZVljNUhvQ1Z4ZndFWWdOczZqVVoyanZNYlh2Q1F1?=
 =?utf-8?B?ODNlZWlYNTFnZksvS3FKZnlSRjRjUkc2UVlFOXRnMEdnWHEzVkROMTFRcGtp?=
 =?utf-8?B?R1F6NGpvWjdFaW9IbTEwalhRcVBFUWxBRWZXdStDSTloQkRiTG9EUUlyRktD?=
 =?utf-8?B?eU1YWVY3QWtXZSt5K2IwMVlpaC9WWklHNTdVSG5oMXlvVkhDM3BlM25xWGs0?=
 =?utf-8?B?THlRWGNOSkpyZTNSRWNITzVuamRKTk9Wa3BUQ3N2YndwOXQzUVFLUU1KQXZ3?=
 =?utf-8?B?MHJPM2kxR2w4ZTRKOEtlZlJnNFJoTnZXMHFJL2ZDSGJORlNPL1dwdzFrUm9p?=
 =?utf-8?B?RHhiYnVJWm1PekVydVNXVVhoZmtEUkNUaDAzdlVPRy9xWnRHbTU2dUlta1Ux?=
 =?utf-8?B?ZXJlQWV4WWgrNnhHS3dXRU9iV3dXMGMwdkxJaEdGMkpvZ1E4Nmh4Smpjb2xN?=
 =?utf-8?B?TXdnL2tzOWtjQUpmNzZ2amVIdGpadFQ3OWhEVVJRUVdOaSsySzZnaFZwaEI5?=
 =?utf-8?B?OTY3YWxjcnJ5aUJMdU9DQWtEREd0MXI2Z0FJN2ttUTMwbGJ4NTMvWklNanhr?=
 =?utf-8?B?M0pFem9Id0xEbnd6TWFUdEJUb1NCMGZEU2NXb1pjU3J2RHRSbWY2VnoyQnBz?=
 =?utf-8?B?ZVN6L0hPQnNhWG96NExsa3duUFllUTk3WXJGTlJwSE5QSHFjeG1zaEJpVVZh?=
 =?utf-8?B?akdVREovcGptQWtoSk5kcTUwdWNvVVlRN00yVmdRdytMSjBwTTJ3WnNBbjNP?=
 =?utf-8?B?eWpWY2Z3SWdyMnZXUjRRQTlRTlJJYVV0NWRoc2Q3V1poUi9qRGNVblVUdWw1?=
 =?utf-8?B?U3lqaU82elF5eXVydWZtZXdndVRLMDFPbmdYU3JKUEF2dmh6emNaeGFTT253?=
 =?utf-8?B?VTdTbGZxZHpOTVVQRDZncE5WNFlFYVRwaThGbVVpK0g1eGZPUVdaZk9nNEVM?=
 =?utf-8?B?Q09xVzBUcEhrcVJFVUZXcWIxVVVZazVnSEFRYVlDQWR2aytRdEVHckdBTjNW?=
 =?utf-8?B?LzZOTW4rNE1ESFRYbjluTGNOTXdraUJPdk5QMUh4ZklPTExGOU1CRXd0MUxh?=
 =?utf-8?B?Rnk4djNRR1EzNytCdHlxUHM4aFAvaVYyeHBSZlZhUzdtcmNzamQvQjE0ZUp2?=
 =?utf-8?B?ZlJFc2xxYWR1TlU5VmRQQ2VHUE55LzM5T2dnT3VpbEVSSjBXSklWU3ZqRSti?=
 =?utf-8?B?eVF5UmRtQ2ZpTEplb3ZYZGpWOE1aUm10dkRUTDY4YkhqOVI2TFlwc3B2SjFp?=
 =?utf-8?B?RmRLQW55S3pXK1Y3UlZISEFhMkZqWVdXN3ovZndoZHhJQ3d0VGVLY0VYMUJQ?=
 =?utf-8?B?WTBhMGVDREZCUXBCZFFyUDlxV0JHUmJCTEZKa0Z2bzhlNFVwd1pWVkExU1lU?=
 =?utf-8?Q?xB2z/99QybA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZUVKVnFrbWVvQm55MldUeng1QnJocC9uU2libTBhbnJiNEpGdE9IRzkzZmpD?=
 =?utf-8?B?RGkwMVBvMnRVNGs4Smd6dmNjT0plbmRoTTV1MFlOWHRCY3o2ZVhnY0t1T0lu?=
 =?utf-8?B?ZFBuMGhOdWdnL0s3Z2JBVzVGS0t3TUhqL3B2TWVvTm9XQ2pLOW1ITTlWWU5l?=
 =?utf-8?B?WTFVQldLMEJVdCtvcWNuMWU3TWFmUGxXR2lYVFlQSTRwQk51SXZ3WlZpNzQv?=
 =?utf-8?B?YXB1T2lFMWJHcTBUeDNoeTc3bTFGS2MzUXZ4bC9MOTdVV01OOW5ZV0NqWDY4?=
 =?utf-8?B?ankxWFRlcjF4bnNhc1NpSGZtR2UrVnpHNHNGRW96eEw4V3FWY1NQL0VwVGJh?=
 =?utf-8?B?QlN0YWFWYldYUDI0WWVsYnc4MDVCcmpzY0RpRG0xeFh4YllEUVNObDB6dGRQ?=
 =?utf-8?B?T2tJTEsvSXpxcDhFK3dBWlFsaXJSSTZseEN4eDU1dnd6YzJBSnM0RGdmMUxU?=
 =?utf-8?B?b3NpNnFWdVJZVkFYN25uV1Fwbm83ZlVIMW5kd3pSVGZoR2lnb3FrTEtTTkM1?=
 =?utf-8?B?U3d6QWV6UHoydWlVajRpazBDVHNSSGErOTBoRWsxWStaZFYrQzV5YVJ1UGlW?=
 =?utf-8?B?bFlHbGRadkN0VUZQUFh3QlhCMEExTC9NSFcxRUxHbGJZTk5RODZGUEw3Vitj?=
 =?utf-8?B?M1AzSmVCRjRBNTdwelhHQThiLzVMMXFoTzZ3SHRXaDV1YzU2SEh3YmRYRTZt?=
 =?utf-8?B?WVFmTEhOKzFqS25IczF4eGRqL0Z0SEw5VzJWdDh3bTlMTFlrbGphSzJ5L3FO?=
 =?utf-8?B?aTkwV1RTb1VlMHg1cHZ1Nzk3eVdOemluS1hkNkVobnFsL0VCRk5hcUtVWkRQ?=
 =?utf-8?B?RjdtWnNlRytVK05mUjFScG93aC8xdU9qdW9tTy9oTytEZGlRMnJPYnNoVXRW?=
 =?utf-8?B?WkdLTVlaZW1EOFpnVUZjd3dDaHV4L20rRDBhVFUyemphQnBGU1J5bXhLYUov?=
 =?utf-8?B?TWQya3l5WmhpZTJnNUo5dDdqQmdlcWxodjgvUURQdXhtUUpOVnE2SFBwdnN2?=
 =?utf-8?B?WC9rYmdhbGNtRHZ1ZXNTczMvU05DcFdUTVREWmV0eFFmb2pYQUdNa2h5ZW1k?=
 =?utf-8?B?VWlyZ1JOc3N5em4vU0lNb09qakFCWE5oWFFwckhvemgwWm5WTGNXdjJGNkhS?=
 =?utf-8?B?eTlVRDFEcitVRlhTWEt5L285Tml5SExRbGkwQWpWQVRoN0xiUzZhL1dUNzNi?=
 =?utf-8?B?Ym5kZk9mb1ZVc3lLTmZEdnYzbndNWDdxSnZSWUhpYUxIWWsrRCtESjlpYXpR?=
 =?utf-8?B?NG45YzhnSlRKcUE0dlhoREN0eTBHY0tBQlVOWnZYNFFhbGhKak1NdXdIOHhC?=
 =?utf-8?B?M096amlhV3lsZy9mamY0cHJ6bU1IWXRvYitSMUsrQTg3WVRWNmNldERFbnFP?=
 =?utf-8?B?REM2V0gyRVZPNUdoUlpDc1VtSFhFcFRuelJNTnFFR01oOXZINFRlRk5JNUZC?=
 =?utf-8?B?NnVQQWN0RW81a3h1aWx3OGxCSXk1RTZsdzdUWVRqelVVUTBReGQ1aU5BdlJr?=
 =?utf-8?B?TldhenNNSHBCMWx5dkdYVnY1c1I1cDdYejdKbUptcmMvclVTbTJpUnFJWDE4?=
 =?utf-8?B?NlpSYmFubE9JVlArQ3BwbEM5S20zSTUyNkgvcFlvUTUra1pwMjZhNTltdVlm?=
 =?utf-8?B?cHJ0Y0pQZEdycEZBQjhKK0VkK253OUhOT25qb0k5bU9PTFdLR0p2UEdteGhZ?=
 =?utf-8?B?eDdZQVorejJmVWRTNFVPdk5aT1YwSHowQTJPKzVpRys3eGJvQzhjcllONm5K?=
 =?utf-8?B?TW02YllBT1JjZXBFMzMycXVBY1hURkJzZ3lQQm5ueEp6YjNsQjBCMkRxeFZt?=
 =?utf-8?B?QjBLVnkxclFCNXg2NFdXYzYwYWpCa0owdnFYUlhaakIydG15cXQ5VTNvNXYy?=
 =?utf-8?B?TWxKa1E3R2JlemxkS1pMSjZFa1pQVldLL1Nla2dYVmJjTWVCZENjR0NRWjVD?=
 =?utf-8?B?eTFuUHJXWkI1WktubUVMd3F5NWFBWjJPWUlJdDN0RTFaeXBDTFlMa0RjK2Rs?=
 =?utf-8?B?RDlRdlFTcGQ2M3ZKWmkvdllDd1k0ejVPalA3MGgrMjBrWkJ1Yk5MZG1Sbnh5?=
 =?utf-8?B?WE5NdkczbXpIL2gyM1BWSWRpMjBiWDc5Y0h1enJUcENTM0tjYVI3VHZub3lJ?=
 =?utf-8?Q?F16hA6jkXbV3UaFHVZp0pXUVn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a51fe0e-67a8-4497-249b-08dd6c399ed4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 07:41:29.2676
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: abDZOfhC6RbyAizma2Tft+Vm2BdZJd2d8rz/3w9imKGaSIFYU0j//DjYN7Vep8A+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPF5D41D38AD
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5513640431
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.244.63:from];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.63:from];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: MQJK4NISRHX77CPH63XPZAUF3FAOADUX
X-Message-ID-Hash: MQJK4NISRHX77CPH63XPZAUF3FAOADUX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: fix a buf size overflow issue during udmabuf creation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MQJK4NISRHX77CPH63XPZAUF3FAOADUX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMjYuMDMuMjUgdW0gMDM6NTkgc2NocmllYiBLYXNpcmVkZHksIFZpdmVrOg0KPiBIaSBDaHJp
c3RpYW4sDQo+DQo+PiBTdWJqZWN0OiBSZTogW1BBVENIXSB1ZG1hYnVmOiBmaXggYSBidWYgc2l6
ZSBvdmVyZmxvdyBpc3N1ZSBkdXJpbmcgdWRtYWJ1Zg0KPj4gY3JlYXRpb24NCj4+DQo+PiBBbSAy
NS4wMy4yNSB1bSAwNzoyMyBzY2hyaWViIEthc2lyZWRkeSwgVml2ZWs6DQo+Pj4gSGkgQ2hyaXN0
aWFuLA0KPj4+DQo+Pj4+IEFtIDIxLjAzLjI1IHVtIDE3OjQxIHNjaHJpZWIgWGlhb2dhbmcuQ2hl
bjoNCj4+Pj4+IEZyb206IFhpYW9nYW5nIENoZW4gPHhpYW9nYW5nLmNoZW5AYW1kLmNvbT4NCj4+
Pj4+DQo+Pj4+PiBieSBjYXN0aW5nIHNpemVfbGltaXRfbWIgdG8gdTY0ICB3aGVuIGNhbGN1bGF0
ZSBwZ2xpbWl0Lg0KPj4+Pj4NCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFhpYW9nYW5nIENoZW48WGlh
b2dhbmcuQ2hlbkBhbWQuY29tPg0KPj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+Pg0KPj4+PiBJZiBub2JvZHkgb2JqZWN0cyBJ
J20gZ29pbmcgdG8gcHVzaCB0aGF0IHRvIGRybS1taXNjLWZpeGVzLg0KPj4+IE5vIG9iamVjdGlv
biBidXQgSSB3aXNoIHRoZSBhdXRob3Igd291bGQgaGF2ZSBhZGRlZCBtb3JlIGRldGFpbHMgaW4g
dGhlDQo+PiBjb21taXQNCj4+PiBtZXNzYWdlIHBhcnRpY3VsYXJseSB0aGUgdmFsdWUgdGhleSBo
YXZlIHVzZWQgdG8gdHJpZ2dlciB0aGUgb3ZlcmZsb3cuIEkNCj4+IGd1ZXNzDQo+Pj4gWGlhb2dh
bmcgY2FuIHN0aWxsIGNvbW1lbnQgaGVyZSBhbmQgYnJpZWZseSBkZXNjcmliZSB0aGUgZXhhY3Qg
dXNlLQ0KPj4gY2FzZS90ZXN0LWNhc2UNCj4+PiB0aGV5IGFyZSBydW5uaW5nIHdoZXJlIHRoZXkg
ZW5jb3VudGVyZWQgdGhpcyBpc3N1ZS4NCj4+IElzbid0IHRoYXQgb2J2aW91cz8gQXQgbGVhc3Qg
aXQgd2FzIGZvciBtZS4NCj4+DQo+PiBBcyBzb29uIGFzIHlvdSBoYXZlIGEgdmFsdWUgbGFyZ2Vy
IHRoYW4gNDA5NSB0aGUgMzJiaXQgbXVsdGlwbGljYXRpb24NCj4+IG92ZXJmbG93cywgcmVzdWx0
aW5nIGluIGluY29ycmVjdGx5IGxpbWl0aW5nIHRoZSBidWZmZXIgc2l6ZS4NCj4gUmlnaHQsIHRo
YXQgcGFydCBtYWtlcyBzZW5zZS4gSSB3YXMgbW9zdGx5IGN1cmlvdXMgYWJvdXQgd2h5IG9yIGhv
dyB0aGV5DQo+IHdlcmUgdXNpbmcgc3VjaCBhIGxhcmdlIGJ1ZmZlciAodXNlLWNhc2UgZGV0YWls
cykuDQoNCldlbGwgSSBzdWdnZXN0ZWQgdGhhdCB3ZSB1c2UgdWRtYWJ1ZiB0byBpbXBsZW1lbnQg
c2hhcmVhYmxlIGRtYS1idWZzIHdoaWNoIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSBhIHNwZWNpZmlj
IE5VTUEgbm9kZSBhbmQgYXJlIGFsc28gYWNjb3VudGVkIGluIG1lbWNnLg0KDQpCdXQgdG8gYmUg
aG9uZXN0IEkgaGF2ZSBhYnNvbHV0ZWx5IG5vIGlkZWEgd2hhdCdzIHRoZSB1c2UgY2FzZSBmb3Ig
YSBidWZmZXIgbGFyZ2VyIHRoYW4gNEdpQi4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiAg
DQo+DQo+IFRoYW5rcywNCj4gVml2ZWsNCj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+
Pg0KPj4+IFRoYW5rcywNCj4+PiBWaXZlaw0KPj4+DQo+Pj4+IFJlZ2FyZHMsDQo+Pj4+IENocmlz
dGlhbi4NCj4+Pj4NCj4+Pj4+IC0tLQ0KPj4+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMg
fCAyICstDQo+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMg
Yi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+Pj4+PiBpbmRleCA4Y2UxZjA3NGMyZDMuLmU5
OWUzYTY1YTQ3MCAxMDA2NDQNCj4+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMN
Cj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4+Pj4+IEBAIC0zOTgsNyAr
Mzk4LDcgQEAgc3RhdGljIGxvbmcgdWRtYWJ1Zl9jcmVhdGUoc3RydWN0IG1pc2NkZXZpY2UNCj4+
Pj4gKmRldmljZSwNCj4+Pj4+ICAJaWYgKCF1YnVmKQ0KPj4+Pj4gIAkJcmV0dXJuIC1FTk9NRU07
DQo+Pj4+Pg0KPj4+Pj4gLQlwZ2xpbWl0ID0gKHNpemVfbGltaXRfbWIgKiAxMDI0ICogMTAyNCkg
Pj4gUEFHRV9TSElGVDsNCj4+Pj4+ICsJcGdsaW1pdCA9ICgodTY0KXNpemVfbGltaXRfbWIgKiAx
MDI0ICogMTAyNCkgPj4gUEFHRV9TSElGVDsNCj4+Pj4+ICAJZm9yIChpID0gMDsgaSA8IGhlYWQt
PmNvdW50OyBpKyspIHsNCj4+Pj4+ICAJCXBnb2ZmX3Qgc3VicGdjbnQ7DQo+Pj4+Pg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
