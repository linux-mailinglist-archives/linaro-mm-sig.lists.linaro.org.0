Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A436D3A7A6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 13:00:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54FE9400F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 12:00:41 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011049.outbound.protection.outlook.com [52.101.52.49])
	by lists.linaro.org (Postfix) with ESMTPS id 23E243F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 12:00:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=R+ptTWj5;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.49 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0fWz2YfkskrGX20ZtdLnmWcrIh5j80FI9TuEsh+BZGITArp4dm/3a+Yzlg0ZvVG6MWwDx+Fzp+OSmFvpEGGRNatgDmxSUsQSvz7GnbEn9aJLH+4pulS8KtdagED4qymx01uNKtwSPBATyArEZGpJ8geMMgvaedS0Iwxnj0TCkVSjkpr0xK9m2G0uNGsu3QyvrVIg5e6/fWA0cBwmPvJKLZZKwBC3GOGzNf9z8EGVC2jjMOaV6hs272CF5zgZmvV1dSvWcWl79mMhDeP63L7paBsFOiYuoqmogn6Bi1Z2+wxqDl+mZ5f7tpw77xJUCUSIHfmrS8+yS/iUE0TSVVtCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5rfPvKdeeK9HEq4Dyv+PlsBML6DyBWf0kelS2/V7CBI=;
 b=TFlcHpvhxDIfAywVQyBjappOzH3Lr+oaHcuWzCdyTC1bRFRT8zbZN0xTQYQdZpTZfuSHgf3A9sRTLr2I8/9kF1WXha7nxNSveUseUmZBwsf0RRnQ//pOZGZgm/XT7baUn/ABiMugTyYk0kDVIi5L07DhWxoVdAsky3WAPk0CV42b013CX1zN9LsUOV2PYVbwCV3/5TYKJpMXyiPIEzMXSmPFkrzln9R70OixlzwBaheeAPRLSL5HPPXttnCl2OhNiz46oVd11hISBQl9GszpWRiFCz7aUz+hOFqwMojRocGwGCl2Pg7UzmV+/fBp5wVuco5Nv5SuCFEt+CkQsiXITA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rfPvKdeeK9HEq4Dyv+PlsBML6DyBWf0kelS2/V7CBI=;
 b=R+ptTWj5LcePumySFTEKXqSq1HkF+ZySWIAfgZSbA/kFb4aha5MuPEQ8oUARLKI6AtSGV0eVdx+Jgm5VC/zbpM5TPTWUQYmZPFFpzC1UgnXSaO7JwrgSW+xv4fVmxipyJE+RosNgAoKxEFwEIDJL48JN+Zk8gWpoa6/dTRKbipw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB7845.namprd12.prod.outlook.com (2603:10b6:a03:4ce::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Mon, 19 Jan
 2026 12:00:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 12:00:31 +0000
Message-ID: <871628d8-14b6-4d38-b05e-a33822f8d71b@amd.com>
Date: Mon, 19 Jan 2026 13:00:18 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-1-a03bb27c0875@nvidia.com>
 <345b8dcb-5015-4801-b263-0dca4d1b3fca@amd.com>
 <20260119113809.GK13201@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260119113809.GK13201@unreal>
X-ClientProxiedBy: FR4P281CA0116.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:bb::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB7845:EE_
X-MS-Office365-Filtering-Correlation-Id: 62855fee-56a3-4df1-282d-08de57525806
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z0E4b2duY2dBOTdFbzhpOVZDc1lwVUZZQVh3TWFQeVI3QXpQMVQ5a3RCeVht?=
 =?utf-8?B?anhRdUJjcXZaeDNTcU5Td3JyOXhEM3JiL1JDallhc002T2dKK0t4L3BqZXBD?=
 =?utf-8?B?c0d6ak9CL2M0MXdHMVhvMk5iT1N5bE5URzd1UXh3ZjJENnR3aDFwQ0ZOUnhZ?=
 =?utf-8?B?WUwyUlViUWRBYzhnSE5ISjlucGxEeWVkcnkvMzJxTmtGeDFTUm5JN0dzSW1L?=
 =?utf-8?B?eXltUDJXOEFJUzFFemFxTjhxcFo1WCs3bklJQ3l2OFM2cVVDeFVSVkxPd08v?=
 =?utf-8?B?N29UVXhFdElqL1lXbG9hREp1Uzg3RGpYbzF0WU1abEgreGJvTi9ZRXVWMlVR?=
 =?utf-8?B?NjdoVmZWdjdicHduUnpLSXFDQ2UzS2d3M20yMFBVaU9GakVsVTlmV011bVNY?=
 =?utf-8?B?aWF3WXcrblo2N1lvRXNuZXA3RHIrRG0zK0ptYmR6MVlEcmo1L2lJT2F5UXNQ?=
 =?utf-8?B?cGI2S2ZZdUc2cFBMWGVlWnQ2c0djM0twRHFEUmt2NnVhL3RRRWxkMWMrUUpr?=
 =?utf-8?B?NUYrWDlXMTN6Q2UwRU5qeHU1RktLWXpEUWRKVzh1QThlZXh2dGoxU21uR2RT?=
 =?utf-8?B?ZjdiY3REMXdxYTM5Sk56MkRZaHFtNUlicDlDOEdWY2s2Y3d3WTE5MU9tRzhW?=
 =?utf-8?B?cUJISjd2QzUrTGIwODlYbjA1bDhLb096MktBUnhGdHRQV05sRWg3dXVUb1dm?=
 =?utf-8?B?OGQ1VlZLZjRWUVpiSElPeUtCNDhvV2svUmYzMEhsaWF0WERVWUcrdHRYZ2M5?=
 =?utf-8?B?bWVqcFV4SitqMGNzVzlmSFBXeXBNUElERWp3bFkrV1FSZStobTNPSzN5cHlM?=
 =?utf-8?B?alVtQytyVjB2dWE5TEZvQW9DUXR0OGhPbWVQNWNTMXNMMVptKzlPSGVNdkNU?=
 =?utf-8?B?NzgrVmtQVHVTZHNGbUYzUlpSSmtPY1BwWVJrekdJaDFyeWozQWZIblROUkli?=
 =?utf-8?B?SlhlMGt2OXFmb0YrWWtqWDVJbVVpMmdOUkJtRnYwbTJ2YmFBT0VwZFFIb1Jz?=
 =?utf-8?B?eHRISk1FbWMyNHFEZWxhSTVFQm01SFFWNjE4RkJQUllvQU04STZCZ0Y4L0dK?=
 =?utf-8?B?TU5NZ21FQjNOeENHZHZoVVQ3bXFVRXpVbmpBSlM0VzFVUGJuWURpNHRzTnZ0?=
 =?utf-8?B?bVNCeklab3I1WW8yMzIwL21pN1lUZzFuc1haTXVHZ1ozZ3NzN0E1Yml3T1BI?=
 =?utf-8?B?bTduRDNxd1diaWtacHh1M2VPV0JOT3owZysvaFI1ZEN3Wm1FYlErcXJvaDlU?=
 =?utf-8?B?cGdselEyS0tBOVNFeVIrbVpqRjZTRWxVc0ovVmxnU0xMczBpMCtDaG1Ib0JB?=
 =?utf-8?B?a0FJMk5mSFhIWitFUlg3ckRRbjFlMVlXSGlzL2pCYk9FSHEvcTVnbjZkSHF4?=
 =?utf-8?B?V0hqcG1Pek9vemZES2ZRT2thWnFVVmc3d0ZuUk5qN0hLZWh3RlhJS255Z1lY?=
 =?utf-8?B?UDMyOWJBSCtiS0lvYjMyZ2tUQmdXd0xjd2VnT1BpNTVabzJDZlNLcHk2M1M1?=
 =?utf-8?B?blFMRFF1RjFqTlFYWm9Ic21kUGxIcUtQTkJHV05aY2NKV0lNU3c2NzZaM2Y1?=
 =?utf-8?B?V09QcTBZSmduaTNHenRaWWdmN3dZM0dRRDdtS1FHYlNCWWo3UHRiK010Z2Mx?=
 =?utf-8?B?dk95cjVBUWlJekJnNyt1c0dDSWcydXN2SVlxaG93L21IZWZScFlPUXdweG1G?=
 =?utf-8?B?VWU2RnI3MmpWaDhNVzkzM29JVmx4WXdWdW8zUDRyaHVybU9NNkZreTNILzdm?=
 =?utf-8?B?YjdLL2NoZGtma01zRVZGL052clFESVorYWQraUxiaEhGSnFIK1ZObnBmNHYz?=
 =?utf-8?B?aFE2RVhqdWZPL2pCTEhtVXVlbmwwZ1AwdmhBUFFnUHVWUVlUcmRVM3o5ZDRT?=
 =?utf-8?B?UGNFYkpiS1VWemFpZWIwMExuSjlkRmJoN1gveWZwd0kzL1BDMll6Q0liRmYy?=
 =?utf-8?B?N1MwOVFGbDBzVXBDQVdNeUVxeWFDTXZaQXZuNzI1Wm5mNEswc0sxWXl3RWtZ?=
 =?utf-8?B?eHRabnRmSzVKNWlJVm0wOUVUOTZBeGxQcGxqT2tyazE2WktjT0NJa2NrNHFq?=
 =?utf-8?B?NGhvR01lUEFDSTlGZFcrVlVYNDdyR0dqRVZMS0hoN2E0UFdFZTNSeU9TVmRx?=
 =?utf-8?Q?BKH4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M25lNWJVYUdFYWZNWmRSMHI1c1Q0UWdET3NmVkNKSHpackxjWmc1OHBpZ1By?=
 =?utf-8?B?ZytVS3JoTVk0Snh6L1M2Uk5zYjlESjFWblJOUVdwL0dDZVJJQ0lXenVUeEVN?=
 =?utf-8?B?TUpHMFZhKzBBNGxxLzY1ZXY3RUQ5aXg2b1lGT2F5K1paSUZKWjVZelphUS81?=
 =?utf-8?B?NWdCUjFUVHZpdWk1YlQxSzdDMmUyZ3JlNWo0TU9XRDd0OGQxM0FRNE1zTTZM?=
 =?utf-8?B?cWo1b2IxVlB6djFQdVJKSXNNQll2NTV4YlpLT2dDejhQZFhnQzRSbmhxSkU3?=
 =?utf-8?B?allSNnM1alFHQUo4QTRoTFp6VWhSQmZFbEhEZ29UdmJGQlJ6V3RXTUxVbk9u?=
 =?utf-8?B?WENSL3l5TzhSQmR5ak1kNCtVOHFXa29Tb1BLSm1lNEMvdlBLN1U2WU5ISmVo?=
 =?utf-8?B?RHQ5cysvM1FybStzV3BjU3VYaDl1ZVNSZkpleElva1NnZk9HNll1L3JwT1Js?=
 =?utf-8?B?aEFYellVU09XWkw2dE5US3AxRGFHSlVuVklOalNmVG1hK0wyOUYySjFYL1hQ?=
 =?utf-8?B?SmlWTmRSazdZQk1kOXZWenJhSmVNVktZTE1XVXFSaWNIVjN0TXlKZ3gvTDhO?=
 =?utf-8?B?czF2ajEyRHc1aHFBS3dKZmpGb2dYbmxacmE0VmErN052K0R6ZDVwYUIvbmUr?=
 =?utf-8?B?K0srZnhEdWorbCtRZFVPVUxvWFJkczRwRkdDbE9pY2NTaTBBaEJTdncva21L?=
 =?utf-8?B?cG9kUnJ6YzFLZnMwMDFSbWVDdnFJVlhTcUpFd0M0YmJHWm1KNXZSMHRpQTNm?=
 =?utf-8?B?UmFRR1V4aVJtdEZ1c3A4bnovbmxKL3FNNjlWNmhxaEk1QWR4L3g0Z3VSMytO?=
 =?utf-8?B?SWxpVkF2UHBWdGFmSkhabm9BU3RjME5JZXNVY1hZSFVFQkdyaDdtK2FtdzZT?=
 =?utf-8?B?QnJKaGFZVmdrWkd1ckZEbzZHYis2Q1E2UlBKNGowWVZycFJ1bmsrY2J4dzJh?=
 =?utf-8?B?NDhXVlBrZnYxdTQ0TGlMOUVUVWJRY2puWnA4TDd3TjgwSkYraC93OGFKdmlZ?=
 =?utf-8?B?bUM2bmJNT2JhSWRhTDJydjc5c2w3aW5xaXh6c1Y4SG1FYWdpY3cwMVNraWdV?=
 =?utf-8?B?L3h1a0lhd2c3YXMxL2Z2M0UvZVVYaEFMQ0NMdlVWcFNTNkd6dm9MSDZvZGNm?=
 =?utf-8?B?bThqV1VaTkd6Yjkxb3FyaXVmWFVGZGdTZjBLSFdYczFueEc1R2dLYms3Qk9P?=
 =?utf-8?B?ZlpDRS90UWdSOEZ4TSt1REE3RVJzRHhNQUVlNmNVdnkxUVZLamp1d0JXZHp1?=
 =?utf-8?B?Vy91bUFXUWtnWkhTL09qN1Rwb01xbzBrcGlHdEh0R0NpUUEwS3VDVHF5cCtk?=
 =?utf-8?B?cWhVdTBXazdRbWtDVkVSclRlWEhITGJnc3oyakZqdzRxaG02aDlzYW9uSGU3?=
 =?utf-8?B?YjRqTURicWluZTd1QkNoMFdES3UxWGxSYWdacFNWTGlncVF0Z0daYXFrOTlB?=
 =?utf-8?B?RXlzQW1Cei9WaHpqVjdVS2MzMytFVURVVGlrQXkyKzhHREhOWkxEQ000QzZR?=
 =?utf-8?B?UnBYaWZsc1ZvcXErNUR6Q2ZDS0QvakEwNkhad29pcitoZTJpNDczR3pMTDNl?=
 =?utf-8?B?LzIrTk9TWXdDZ3hVazBySnVpY3Q4U2wwR1BnbnhwcTRwSFZqaTJ6dGQyY0Na?=
 =?utf-8?B?MVcwZFlDNi9SekhscDBmSVBNTkg2Q3MwRkdyMzNUMzNBTFRFNDJyVEQwZmln?=
 =?utf-8?B?S0dLaWFsa3V0WXpMZXNCRk8zclNBcG5Yc21QKzFqYlRIOTdKMjdiOU9xNTVK?=
 =?utf-8?B?dVp4VkNHTWVNMW9zZDZQL0lEQ3RKcU1nODVWM1A2K1l3QzcyVjRObW9xMkJQ?=
 =?utf-8?B?ZVRRYUgyVHVkZkxqN3JWeFk1NzduYjErVHl3Y1AydzZaU2tDWlZIZDZNdXUv?=
 =?utf-8?B?aXRWRmlyQ2ZwNzZSVHhCSUhhcGF5cTNRVmFPVFl1di9jcTBPY3dFOUJqcFdG?=
 =?utf-8?B?M0NMNjF6T2lqa2RpNmlySmZydk5wcXUyTktOanMxV2c0aWxCa2FFQ2RLOEJL?=
 =?utf-8?B?N2EvUGVoRXJDbWRaL3NwT3E5eDBiaC91QStjVHBPWDN6M2NKWlAwcDd6MGE4?=
 =?utf-8?B?REJFcUhLQUlLWC92dmNVaEVXLzZaZU9BQVZubG5pYlZyZGw4MXFWbFUvRU5Y?=
 =?utf-8?B?TGYzZ2tQSVRYUnU0L2lUWDhiWitpTitVdXE5RHNmaUp2SEpJVTFVY0RNcGdD?=
 =?utf-8?B?UnIwSzAwMG9qeTNiQXNkaEIyM3Jwbkp5NGZxbG94dTZwMitlZEI0cklHVHVo?=
 =?utf-8?B?M3AwRXN2M0duMVFPeWxXOWhEdTNmUW95QStkajBOak5wNU5wbk5Eayt4RzV4?=
 =?utf-8?Q?8x174mCkvz3PMzlSE5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62855fee-56a3-4df1-282d-08de57525806
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 12:00:31.1423
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CO7pfaIHX5QpStNnnGCYXeTrkOTgsuZyWSSJPYCXP88UlhR7R2xwQYUM9pgikRWO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7845
X-Rspamd-Queue-Id: 23E243F734
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.52.49:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KCNFJ23TIFWO5Q3MHZKTLIKK4KH64CPJ
X-Message-ID-Hash: KCNFJ23TIFWO5Q3MHZKTLIKK4KH64CPJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma
 @vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] dma-buf: Rename .move_notify() callback to a clearer identifier
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KCNFJ23TIFWO5Q3MHZKTLIKK4KH64CPJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xOS8yNiAxMjozOCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBNb24sIEphbiAx
OSwgMjAyNiBhdCAxMToyMjoyN0FNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8xOC8yNiAxMzowOCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IEZyb206IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBSZW5hbWUgdGhlIC5tb3Zl
X25vdGlmeSgpIGNhbGxiYWNrIHRvIC5pbnZhbGlkYXRlX21hcHBpbmdzKCkgdG8gbWFrZSBpdHMN
Cj4+PiBwdXJwb3NlIGV4cGxpY2l0IGFuZCBoaWdobGlnaHQgdGhhdCBpdCBpcyByZXNwb25zaWJs
ZSBmb3IgaW52YWxpZGF0aW5nDQo+Pj4gZXhpc3RpbmcgbWFwcGluZ3MuDQo+Pj4NCj4+PiBTdWdn
ZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+
PiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPj4N
Cj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQo+IA0KPiBUaGFua3MsDQo+IA0KPiBCVFcsIEkgZGlkbid0IHVwZGF0ZSB0aGUgdmFyaW91
cyB4eHhfbW92ZV9ub3RpZnkoKSBmdW5jdGlvbnMgdG8gdXNlDQo+IHh4eF9pbnZhbGlkYXRlX21h
cHBpbmdzKCkgbmFtZXMuIFNob3VsZCB0aG9zZSBiZSBjb252ZXJ0ZWQgYXMgd2VsbD8NCg0KTm8s
IHRob3NlIGltcG9ydGVyIHNwZWNpZmljIGZ1bmN0aW9ucyBjYW4ga2VlcCB0aGVpciBuYW1lLg0K
DQpNb3JlIGltcG9ydGFudCBpcyB0aGUgY29uZmlnIG9wdGlvbi4gSGF2ZW4ndCB0aG91Z2h0IGFi
b3V0IHRoYXQgb25lLg0KDQpQcm9iYWJseSBiZXN0IGlmIHdlIGVpdGhlciByZW5hbWUgb3IgY29t
cGxldGVseSByZW1vdmUgdGhhdCBvbmUsIGl0IHdhcyB0byBrZWVwIHRoZSBNT1ZFX05PVElGWSBm
dW5jdGlvbmFsaXR5IHNlcGFyYXRlIGZvciBpbml0aWFsIHRlc3RpbmcgYnV0IHdlIGhhdmUgY2xl
YXJseSBzdXBhc3NlZCB0aGlzIGxvbmcgdGltZSBhZ28uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4u
DQoNCj4gDQo+Pg0KPj4+IC0tLQ0KPj4+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAg
ICAgICAgICAgICAgIHwgNiArKystLS0NCj4+PiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RtYV9idWYuYyB8IDQgKystLQ0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3Zp
cnRncHVfcHJpbWUuYyAgICAgIHwgMiArLQ0KPj4+ICBkcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMv
eGVfZG1hX2J1Zi5jICAgICAgIHwgNiArKystLS0NCj4+PiAgZHJpdmVycy9ncHUvZHJtL3hlL3hl
X2RtYV9idWYuYyAgICAgICAgICAgICB8IDIgKy0NCj4+PiAgZHJpdmVycy9pbmZpbmliYW5kL2Nv
cmUvdW1lbV9kbWFidWYuYyAgICAgICB8IDQgKystLQ0KPj4+ICBkcml2ZXJzL2luZmluaWJhbmQv
aHcvbWx4NS9tci5jICAgICAgICAgICAgIHwgMiArLQ0KPj4+ICBkcml2ZXJzL2lvbW11L2lvbW11
ZmQvcGFnZXMuYyAgICAgICAgICAgICAgIHwgMiArLQ0KPj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaCAgICAgICAgICAgICAgICAgICAgIHwgNiArKystLS0NCj4+PiAgOSBmaWxlcyBjaGFuZ2Vk
LCAxNyBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
Pj4+IGluZGV4IGVkYWE5ZTRlZTRhZS4uNTljYzY0N2JmNDBlIDEwMDY0NA0KPj4+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jDQo+Pj4gQEAgLTk0OCw3ICs5NDgsNyBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwNCj4+PiAgCWlmIChXQVJOX09O
KCFkbWFidWYgfHwgIWRldikpDQo+Pj4gIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+Pj4g
IA0KPj4+IC0JaWYgKFdBUk5fT04oaW1wb3J0ZXJfb3BzICYmICFpbXBvcnRlcl9vcHMtPm1vdmVf
bm90aWZ5KSkNCj4+PiArCWlmIChXQVJOX09OKGltcG9ydGVyX29wcyAmJiAhaW1wb3J0ZXJfb3Bz
LT5pbnZhbGlkYXRlX21hcHBpbmdzKSkNCj4+PiAgCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsN
Cj4+PiAgDQo+Pj4gIAlhdHRhY2ggPSBremFsbG9jKHNpemVvZigqYXR0YWNoKSwgR0ZQX0tFUk5F
TCk7DQo+Pj4gQEAgLTEwNTUsNyArMTA1NSw3IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9i
dWZfcGluLCAiRE1BX0JVRiIpOw0KPj4+ICAgKg0KPj4+ICAgKiBUaGlzIHVucGlucyBhIGJ1ZmZl
ciBwaW5uZWQgYnkgZG1hX2J1Zl9waW4oKSBhbmQgYWxsb3dzIHRoZSBleHBvcnRlciB0byBtb3Zl
DQo+Pj4gICAqIGFueSBtYXBwaW5nIG9mIEBhdHRhY2ggYWdhaW4gYW5kIGluZm9ybSB0aGUgaW1w
b3J0ZXIgdGhyb3VnaA0KPj4+IC0gKiAmZG1hX2J1Zl9hdHRhY2hfb3BzLm1vdmVfbm90aWZ5Lg0K
Pj4+ICsgKiAmZG1hX2J1Zl9hdHRhY2hfb3BzLmludmFsaWRhdGVfbWFwcGluZ3MuDQo+Pj4gICAq
Lw0KPj4+ICB2b2lkIGRtYV9idWZfdW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoKQ0KPj4+ICB7DQo+Pj4gQEAgLTEyNjIsNyArMTI2Miw3IEBAIHZvaWQgZG1hX2J1Zl9tb3Zl
X25vdGlmeShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KPj4+ICANCj4+PiAgCWxpc3RfZm9yX2Vh
Y2hfZW50cnkoYXR0YWNoLCAmZG1hYnVmLT5hdHRhY2htZW50cywgbm9kZSkNCj4+PiAgCQlpZiAo
YXR0YWNoLT5pbXBvcnRlcl9vcHMpDQo+Pj4gLQkJCWF0dGFjaC0+aW1wb3J0ZXJfb3BzLT5tb3Zl
X25vdGlmeShhdHRhY2gpOw0KPj4+ICsJCQlhdHRhY2gtPmltcG9ydGVyX29wcy0+aW52YWxpZGF0
ZV9tYXBwaW5ncyhhdHRhY2gpOw0KPj4+ICB9DQo+Pj4gIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRt
YV9idWZfbW92ZV9ub3RpZnksICJETUFfQlVGIik7DQo+Pj4gIA0KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPj4+IGluZGV4IGUyMmNmYTdjNmQzMi4u
ODYzNDU0MTQ4YjI4IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kbWFfYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZG1hX2J1Zi5jDQo+Pj4gQEAgLTQ1MCw3ICs0NTAsNyBAQCBhbWRncHVfZG1hX2J1Zl9j
cmVhdGVfb2JqKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVm
KQ0KPj4+ICB9DQo+Pj4gIA0KPj4+ICAvKioNCj4+PiAtICogYW1kZ3B1X2RtYV9idWZfbW92ZV9u
b3RpZnkgLSAmYXR0YWNoLm1vdmVfbm90aWZ5IGltcGxlbWVudGF0aW9uDQo+Pj4gKyAqIGFtZGdw
dV9kbWFfYnVmX21vdmVfbm90aWZ5IC0gJmF0dGFjaC5pbnZhbGlkYXRlX21hcHBpbmdzIGltcGxl
bWVudGF0aW9uDQo+Pj4gICAqDQo+Pj4gICAqIEBhdHRhY2g6IHRoZSBETUEtYnVmIGF0dGFjaG1l
bnQNCj4+PiAgICoNCj4+PiBAQCAtNTIxLDcgKzUyMSw3IEBAIGFtZGdwdV9kbWFfYnVmX21vdmVf
bm90aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4+PiAgDQo+Pj4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGFtZGdwdV9kbWFfYnVmX2F0dGFj
aF9vcHMgPSB7DQo+Pj4gIAkuYWxsb3dfcGVlcjJwZWVyID0gdHJ1ZSwNCj4+PiAtCS5tb3ZlX25v
dGlmeSA9IGFtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+Pj4gKwkuaW52YWxpZGF0ZV9tYXBw
aW5ncyA9IGFtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+Pj4gIH07DQo+Pj4gIA0KPj4+ICAv
KioNCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1l
LmMgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfcHJpbWUuYw0KPj4+IGluZGV4IGNl
NDkyODIxOThjYi4uMTljNzhkZDJjYTc3IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS92aXJ0aW8vdmlydGdwdV9wcmltZS5jDQo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRp
by92aXJ0Z3B1X3ByaW1lLmMNCj4+PiBAQCAtMjg4LDcgKzI4OCw3IEBAIHN0YXRpYyB2b2lkIHZp
cnRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2gpDQo+Pj4gIA0KPj4+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB2
aXJ0Z3B1X2RtYV9idWZfYXR0YWNoX29wcyA9IHsNCj4+PiAgCS5hbGxvd19wZWVyMnBlZXIgPSB0
cnVlLA0KPj4+IC0JLm1vdmVfbm90aWZ5ID0gdmlydGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+
Pj4gKwkuaW52YWxpZGF0ZV9tYXBwaW5ncyA9IHZpcnRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeQ0K
Pj4+ICB9Ow0KPj4+ICANCj4+PiAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICp2aXJ0Z3B1X2dlbV9w
cmltZV9pbXBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS94ZS90
ZXN0cy94ZV9kbWFfYnVmLmMNCj4+PiBpbmRleCA1ZGY5OGRlNWJhM2MuLjFmMmNjYTVjMmY4MSAx
MDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jDQo+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYw0KPj4+IEBAIC0y
Myw3ICsyMyw3IEBAIHN0YXRpYyBib29sIHAycF9lbmFibGVkKHN0cnVjdCBkbWFfYnVmX3Rlc3Rf
cGFyYW1zICpwYXJhbXMpDQo+Pj4gIHN0YXRpYyBib29sIGlzX2R5bmFtaWMoc3RydWN0IGRtYV9i
dWZfdGVzdF9wYXJhbXMgKnBhcmFtcykNCj4+PiAgew0KPj4+ICAJcmV0dXJuIElTX0VOQUJMRUQo
Q09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkgJiYgcGFyYW1zLT5hdHRhY2hfb3BzICYmDQo+Pj4g
LQkJcGFyYW1zLT5hdHRhY2hfb3BzLT5tb3ZlX25vdGlmeTsNCj4+PiArCQlwYXJhbXMtPmF0dGFj
aF9vcHMtPmludmFsaWRhdGVfbWFwcGluZ3M7DQo+Pj4gIH0NCj4+PiAgDQo+Pj4gIHN0YXRpYyB2
b2lkIGNoZWNrX3Jlc2lkZW5jeShzdHJ1Y3Qga3VuaXQgKnRlc3QsIHN0cnVjdCB4ZV9ibyAqZXhw
b3J0ZWQsDQo+Pj4gQEAgLTYwLDcgKzYwLDcgQEAgc3RhdGljIHZvaWQgY2hlY2tfcmVzaWRlbmN5
KHN0cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0IHhlX2JvICpleHBvcnRlZCwNCj4+PiAgDQo+Pj4g
IAkvKg0KPj4+ICAJICogRXZpY3QgZXhwb3J0ZXIuIEV2aWN0aW5nIHRoZSBleHBvcnRlZCBibyB3
aWxsDQo+Pj4gLQkgKiBldmljdCBhbHNvIHRoZSBpbXBvcnRlZCBibyB0aHJvdWdoIHRoZSBtb3Zl
X25vdGlmeSgpIGZ1bmN0aW9uYWxpdHkgaWYNCj4+PiArCSAqIGV2aWN0IGFsc28gdGhlIGltcG9y
dGVkIGJvIHRocm91Z2ggdGhlIGludmFsaWRhdGVfbWFwcGluZ3MoKSBmdW5jdGlvbmFsaXR5IGlm
DQo+Pj4gIAkgKiBpbXBvcnRlciBpcyBvbiBhIGRpZmZlcmVudCBkZXZpY2UuIElmIHRoZXkncmUg
b24gdGhlIHNhbWUgZGV2aWNlLA0KPj4+ICAJICogdGhlIGV4cG9ydGVyIGFuZCB0aGUgaW1wb3J0
ZXIgc2hvdWxkIGJlIHRoZSBzYW1lIGJvLg0KPj4+ICAJICovDQo+Pj4gQEAgLTE5OCw3ICsxOTgs
NyBAQCBzdGF0aWMgdm9pZCB4ZV90ZXN0X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIoc3RydWN0
IHhlX2RldmljZSAqeGUpDQo+Pj4gIA0KPj4+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZf
YXR0YWNoX29wcyBub3AycF9hdHRhY2hfb3BzID0gew0KPj4+ICAJLmFsbG93X3BlZXIycGVlciA9
IGZhbHNlLA0KPj4+IC0JLm1vdmVfbm90aWZ5ID0geGVfZG1hX2J1Zl9tb3ZlX25vdGlmeQ0KPj4+
ICsJLmludmFsaWRhdGVfbWFwcGluZ3MgPSB4ZV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+Pj4gIH07
DQo+Pj4gIA0KPj4+ICAvKg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVf
ZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KPj4+IGluZGV4IDdj
NzRhMzFkNDQ4Ni4uMWI5Y2QwNDNlNTE3IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS94ZS94ZV9kbWFfYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1
Zi5jDQo+Pj4gQEAgLTI4Nyw3ICsyODcsNyBAQCBzdGF0aWMgdm9pZCB4ZV9kbWFfYnVmX21vdmVf
bm90aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4+PiAgDQo+Pj4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIHhlX2RtYV9idWZfYXR0YWNoX29w
cyA9IHsNCj4+PiAgCS5hbGxvd19wZWVyMnBlZXIgPSB0cnVlLA0KPj4+IC0JLm1vdmVfbm90aWZ5
ID0geGVfZG1hX2J1Zl9tb3ZlX25vdGlmeQ0KPj4+ICsJLmludmFsaWRhdGVfbWFwcGluZ3MgPSB4
ZV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+Pj4gIH07DQo+Pj4gIA0KPj4+ICAjaWYgSVNfRU5BQkxF
RChDT05GSUdfRFJNX1hFX0tVTklUX1RFU1QpDQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW5m
aW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVt
X2RtYWJ1Zi5jDQo+Pj4gaW5kZXggMGVjMmU0MTIwY2M5Li5kNzdhNzM5Y2ZlN2EgMTAwNjQ0DQo+
Pj4gLS0tIGEvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYw0KPj4+ICsrKyBi
L2RyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMNCj4+PiBAQCAtMTI5LDcgKzEy
OSw3IEBAIGliX3VtZW1fZG1hYnVmX2dldF93aXRoX2RtYV9kZXZpY2Uoc3RydWN0IGliX2Rldmlj
ZSAqZGV2aWNlLA0KPj4+ICAJaWYgKGNoZWNrX2FkZF9vdmVyZmxvdyhvZmZzZXQsICh1bnNpZ25l
ZCBsb25nKXNpemUsICZlbmQpKQ0KPj4+ICAJCXJldHVybiByZXQ7DQo+Pj4gIA0KPj4+IC0JaWYg
KHVubGlrZWx5KCFvcHMgfHwgIW9wcy0+bW92ZV9ub3RpZnkpKQ0KPj4+ICsJaWYgKHVubGlrZWx5
KCFvcHMgfHwgIW9wcy0+aW52YWxpZGF0ZV9tYXBwaW5ncykpDQo+Pj4gIAkJcmV0dXJuIHJldDsN
Cj4+PiAgDQo+Pj4gIAlkbWFidWYgPSBkbWFfYnVmX2dldChmZCk7DQo+Pj4gQEAgLTE5NSw3ICsx
OTUsNyBAQCBpYl91bWVtX2RtYWJ1Zl91bnN1cHBvcnRlZF9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+Pj4gIA0KPj4+ICBzdGF0aWMgc3RydWN0IGRtYV9i
dWZfYXR0YWNoX29wcyBpYl91bWVtX2RtYWJ1Zl9hdHRhY2hfcGlubmVkX29wcyA9IHsNCj4+PiAg
CS5hbGxvd19wZWVyMnBlZXIgPSB0cnVlLA0KPj4+IC0JLm1vdmVfbm90aWZ5ID0gaWJfdW1lbV9k
bWFidWZfdW5zdXBwb3J0ZWRfbW92ZV9ub3RpZnksDQo+Pj4gKwkuaW52YWxpZGF0ZV9tYXBwaW5n
cyA9IGliX3VtZW1fZG1hYnVmX3Vuc3VwcG9ydGVkX21vdmVfbm90aWZ5LA0KPj4+ICB9Ow0KPj4+
ICANCj4+PiAgc3RydWN0IGliX3VtZW1fZG1hYnVmICoNCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pbmZpbmliYW5kL2h3L21seDUvbXIuYyBiL2RyaXZlcnMvaW5maW5pYmFuZC9ody9tbHg1L21y
LmMNCj4+PiBpbmRleCAzMjVmYTA0Y2JlOGEuLjk3MDk5ZDNiMTY4OCAxMDA2NDQNCj4+PiAtLS0g
YS9kcml2ZXJzL2luZmluaWJhbmQvaHcvbWx4NS9tci5jDQo+Pj4gKysrIGIvZHJpdmVycy9pbmZp
bmliYW5kL2h3L21seDUvbXIuYw0KPj4+IEBAIC0xNjIwLDcgKzE2MjAsNyBAQCBzdGF0aWMgdm9p
ZCBtbHg1X2liX2RtYWJ1Zl9pbnZhbGlkYXRlX2NiKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQg
KmF0dGFjaCkNCj4+PiAgDQo+Pj4gIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIG1s
eDVfaWJfZG1hYnVmX2F0dGFjaF9vcHMgPSB7DQo+Pj4gIAkuYWxsb3dfcGVlcjJwZWVyID0gMSwN
Cj4+PiAtCS5tb3ZlX25vdGlmeSA9IG1seDVfaWJfZG1hYnVmX2ludmFsaWRhdGVfY2IsDQo+Pj4g
KwkuaW52YWxpZGF0ZV9tYXBwaW5ncyA9IG1seDVfaWJfZG1hYnVmX2ludmFsaWRhdGVfY2IsDQo+
Pj4gIH07DQo+Pj4gIA0KPj4+ICBzdGF0aWMgc3RydWN0IGliX21yICoNCj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgYi9kcml2ZXJzL2lvbW11L2lvbW11ZmQv
cGFnZXMuYw0KPj4+IGluZGV4IGRiZTUxZWNiOWEyMC4uNzZmOTAwZmExNjg3IDEwMDY0NA0KPj4+
IC0tLSBhL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jDQo+Pj4gKysrIGIvZHJpdmVycy9p
b21tdS9pb21tdWZkL3BhZ2VzLmMNCj4+PiBAQCAtMTQ1MSw3ICsxNDUxLDcgQEAgc3RhdGljIHZv
aWQgaW9wdF9yZXZva2Vfbm90aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkN
Cj4+PiAgDQo+Pj4gIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGlvcHRfZG1hYnVm
X2F0dGFjaF9yZXZva2Vfb3BzID0gew0KPj4+ICAJLmFsbG93X3BlZXIycGVlciA9IHRydWUsDQo+
Pj4gLQkubW92ZV9ub3RpZnkgPSBpb3B0X3Jldm9rZV9ub3RpZnksDQo+Pj4gKwkuaW52YWxpZGF0
ZV9tYXBwaW5ncyA9IGlvcHRfcmV2b2tlX25vdGlmeSwNCj4+PiAgfTsNCj4+PiAgDQo+Pj4gIC8q
DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51
eC9kbWEtYnVmLmgNCj4+PiBpbmRleCAwYmM0OTIwOTAyMzcuLjFiMzk3NjM1Yzc5MyAxMDA2NDQN
Cj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQo+Pj4gQEAgLTQwNyw3ICs0MDcsNyBAQCBzdHJ1Y3QgZG1hX2J1ZiB7DQo+
Pj4gIAkgKiAgIHRocm91Z2ggdGhlIGRldmljZS4NCj4+PiAgCSAqDQo+Pj4gIAkgKiAtIER5bmFt
aWMgaW1wb3J0ZXJzIHNob3VsZCBzZXQgZmVuY2VzIGZvciBhbnkgYWNjZXNzIHRoYXQgdGhleSBj
YW4ndA0KPj4+IC0JICogICBkaXNhYmxlIGltbWVkaWF0ZWx5IGZyb20gdGhlaXIgJmRtYV9idWZf
YXR0YWNoX29wcy5tb3ZlX25vdGlmeQ0KPj4+ICsJICogICBkaXNhYmxlIGltbWVkaWF0ZWx5IGZy
b20gdGhlaXIgJmRtYV9idWZfYXR0YWNoX29wcy5pbnZhbGlkYXRlX21hcHBpbmdzDQo+Pj4gIAkg
KiAgIGNhbGxiYWNrLg0KPj4+ICAJICoNCj4+PiAgCSAqIElNUE9SVEFOVDoNCj4+PiBAQCAtNDU4
LDcgKzQ1OCw3IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgew0KPj4+ICAJYm9vbCBhbGxv
d19wZWVyMnBlZXI7DQo+Pj4gIA0KPj4+ICAJLyoqDQo+Pj4gLQkgKiBAbW92ZV9ub3RpZnk6IFtv
cHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQgdGhlIERNQS1idWYgaXMgbW92aW5nDQo+Pj4gKwkg
KiBAaW52YWxpZGF0ZV9tYXBwaW5nczogW29wdGlvbmFsXSBub3RpZmljYXRpb24gdGhhdCB0aGUg
RE1BLWJ1ZiBpcyBtb3ZpbmcNCj4+PiAgCSAqDQo+Pj4gIAkgKiBJZiB0aGlzIGNhbGxiYWNrIGlz
IHByb3ZpZGVkIHRoZSBmcmFtZXdvcmsgY2FuIGF2b2lkIHBpbm5pbmcgdGhlDQo+Pj4gIAkgKiBi
YWNraW5nIHN0b3JlIHdoaWxlIG1hcHBpbmdzIGV4aXN0cy4NCj4+PiBAQCAtNDc1LDcgKzQ3NSw3
IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgew0KPj4+ICAJICogTmV3IG1hcHBpbmdzIGNh
biBiZSBjcmVhdGVkIGFmdGVyIHRoaXMgY2FsbGJhY2sgcmV0dXJucywgYW5kIHdpbGwNCj4+PiAg
CSAqIHBvaW50IHRvIHRoZSBuZXcgbG9jYXRpb24gb2YgdGhlIERNQS1idWYuDQo+Pj4gIAkgKi8N
Cj4+PiAtCXZvaWQgKCptb3ZlX25vdGlmeSkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoKTsNCj4+PiArCXZvaWQgKCppbnZhbGlkYXRlX21hcHBpbmdzKShzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gpOw0KPj4+ICB9Ow0KPj4+ICANCj4+PiAgLyoqDQo+Pj4NCj4+DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
