Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD71A7B9DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 11:25:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C39BB3EACB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 09:25:31 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2055.outbound.protection.outlook.com [40.107.93.55])
	by lists.linaro.org (Postfix) with ESMTPS id 9EA4C4474A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 09:24:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ptcgaVxZ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.55 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uUrGS8id5ZKuYdlr9Gr6LVCphU1RXKVbNiFfFxfRQQ9zWSos26nRstXkiENmcidbpkQkUAoo6w6qFTd6zUcvj+p0juDwYrObjJ4R+5qsbcdBPMD4DMOf9yuXMv9nOA+BiZIXSoNy16GZ7X6OF92T8errz5oLm/hTZcofnnZovd4obAtRQILYhpWkujGd5V87HpXrXEv2QSon7iSewozw255wxXFQ6jVj/hVJT4WphRwH8vXjlRklYmCZEe0z5O3bIjkj/Z53u0UAA4XL4ZFeAMYKxDU52lRKu2GsvL5AEoDb9AiaqlbLTPhPO79S8x8MFSJRs3OkisvbVAZcQdlBoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QDC9U91G6SOURJBFk8ZZtDFeWtvU9AnpAAE9fve4PDg=;
 b=L1vYac5ZKlcLIdcQJ/rkOXAWD0pBwmldXFE64x/eosnHdwL8MBR0Ek+ltVvO8KitR1SghyREXVptPyICCQcu4ZKBOkPUkceSIZ3gDIlVrxn7D0bvDAv+rbcYpNn0s3YJCO7KPWU5AiY/EJXGPsrk6E4oooPL6vife5h1Q3xJmwmP/GPbOUwwobF/Z91cxPKLryfJryzT7KxA6QpUBMDxio0m1wWjiAu5TuwNVC1EXnyvYBjvfnWb+CQDi5mUnCTHi3muyeStfKWs80/D/r+Yw/imZGEkYUmkNOtCPxwTcBB+A7cQ7hJSyztai5LHTMiT2l7zYl+VNpp38mp5LKQJ6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QDC9U91G6SOURJBFk8ZZtDFeWtvU9AnpAAE9fve4PDg=;
 b=ptcgaVxZUINN6Rzzj+Ivry448Ev5HmSSOIXnBYY1qhLm2hRdZoblde1vDfYCbf8RIfdgIfrHSjrEeq6OKgPVXXpR3P2d8EmfXAzcAGWCWE/bjPLL11VY8j6wSYEUKWqWlEAW5dkA7w5u7O/kvyzGkXD2uGJdWC+S3rP0s9lkzBk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY5PR12MB9053.namprd12.prod.outlook.com (2603:10b6:930:37::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.50; Fri, 4 Apr
 2025 08:47:13 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8583.041; Fri, 4 Apr 2025
 08:47:13 +0000
Message-ID: <202c3a58-97a3-489c-b3f2-b1fd2735bd19@amd.com>
Date: Fri, 4 Apr 2025 10:47:05 +0200
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com>
 <20250310-eccentric-wonderful-puffin-ddbb26@houat>
 <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com>
 <e08f10da-b0cd-444b-8e0b-11009b05b161@amd.com>
 <CAPM=9twgFt43OKqUY0TNopTmibnR_d891xmV=wFM91n604NUCw@mail.gmail.com>
 <5ed87c80-6fe3-4f8c-bb98-ca07f1db8c34@amd.com>
 <20250403-quick-salamander-of-charisma-cab289@houat>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250403-quick-salamander-of-charisma-cab289@houat>
X-ClientProxiedBy: FR0P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY5PR12MB9053:EE_
X-MS-Office365-Filtering-Correlation-Id: 251ad719-98b2-4299-6250-08dd73554b3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NFQ3UGs0R28xYjlVV1ZkNHh4N2krSnV3cmNueFgyNS93S01KeEZPMFlraHNU?=
 =?utf-8?B?d0FLV2pUQTl6QjNYNWhCVkYyV3RmTVh1enNhNWJoMkRJU2FGQlB3eXR5dWhI?=
 =?utf-8?B?U3RoQXd0TVVrUTFnWGY2NlY1NGR3Y05iajliblMzcFJBKzlHK2dUWnZnT0V2?=
 =?utf-8?B?eVVtVzdlZzJQYjlFdlkwNVBaczBoNHVpNjFPRFR6RGZYcTBYMDl4MVZGL2ls?=
 =?utf-8?B?WWg5bmtVT0VESlVYRWN6NXR0ZW5KaHI5d3dZREdoMnZLc3Evc0h4NElMOVJq?=
 =?utf-8?B?R3dIdnZiOWRqSUlTamFYcDBnZllKdFRXVnN3bXhkMzFTbmZSQkt2LzJ6eTBF?=
 =?utf-8?B?Y2J5K1JuN3Y3ME1sVVRkc05wa0VSWHVOSVBDa0RSc1NETUpQdm1VTi9qVU5S?=
 =?utf-8?B?TEtmL2ZjeU5PaDRzWW5uLytnSmdWRStPNG1pekNKb3c1VTNzSis4bDBZVk5P?=
 =?utf-8?B?L1FWL1RDem1LcTB3SWR0UnRJekJORjZkb3BEUDZsQ3ZST3MrbVNQYkgySXFI?=
 =?utf-8?B?dHhGcTRScFhCL0p6ekhqcE9IR3JTWUtVWU1KRzdmcDNraE9kam5pbitLbUJl?=
 =?utf-8?B?NHVpT0xzc3lDZVJCK2FSMmpTNWNoU05EV25nMVlwSlYrbU1kT0Q3TTNzRXYw?=
 =?utf-8?B?dFZoR09JL0thTmQyNWg5WGtPQzVqeHpxM2Nvbkl4TTZHVWM0T0RmbXdUYzlS?=
 =?utf-8?B?RE4yOEE5ekFHQ3AvVEFMcWpGcnY5YXA1V1h0NFBEQ0hua2VmNG5uK25GRzNv?=
 =?utf-8?B?bFBRbldVUnloSzlDa2JjYS9BVHJEZldndEYxVlZaTENSRTdNbXBtRkZpeDNu?=
 =?utf-8?B?T1MzVVZEUEF1c1diSnp6SitZMWZiL1hLeE1kKzFTb2xrVE5hcTZkL1NuM0pZ?=
 =?utf-8?B?L0JhMWF4OVRtMzViRmVwWmhwT0pIM3craHRhU05zNkJ1RXFzSGhLR2FVcFJP?=
 =?utf-8?B?aURZeDJNTGt2STlnc0RjL2tmZEVuS05XWEZBdHE3Vm15UGxPZ25JR05PemZL?=
 =?utf-8?B?QzE4MXF6d2NJQS9RZnBMSHJyOEJQdUpFVEhWMnJ5Z0txR3I0dTlYaEFjOSsv?=
 =?utf-8?B?c1NhT1ZVcTFsb2FEdHRiUlBFWkE0K3EvVVBNeGFrMlBBUDIwVHV3RW5TMWRt?=
 =?utf-8?B?MmxQSUVLWmIwcmhSR2RNSnE2ZTdqWVNnZnVFMnlEdHVyY1lQQzlnWHhldU9z?=
 =?utf-8?B?cXNxV0wrWEtJQm9CbnhMUVlOYXdVRU1rWXdxb0ZXY0Y2b3dOUDhBM1c2V0s5?=
 =?utf-8?B?OFpGVWV1SDVqaHlxbXY0M0NhdlRwUTd1Znl3azA2aXVHT3RHRkI2UHMwbkxj?=
 =?utf-8?B?eUFCUHRaSzRRVUlwZDVDK0NIZXZQMmRGb0M0QUV3ODhtOVhpWmlUbm5UQXMx?=
 =?utf-8?B?aGpaS3NLRnBDcmZMTkl0bWdPUW5PaEpUU3pzdGc4K3FWSzJTVitpeCtDc0FP?=
 =?utf-8?B?dmFDaEtaWFZnMzVxQkpaM2xUcWxaU0xGaXVhWVBiREoyODkyVHFZNzFmUEli?=
 =?utf-8?B?ZEpkZnBTZi90czNZMlRMRHJ0SVpRK0x5b2svdDNDK1hpWVBzQUhWcEZLVWUw?=
 =?utf-8?B?VXc2Q3VUYURNWGVvaGxrTUhIYmNRMi81dE1NQVhtS25adFdhRmFITVUxSGd2?=
 =?utf-8?B?Tk51ckdObVo1SWNvTmxQUm90UGQ1a3psdE9rcng2TVRMZmJUMXVOSGxyTjJ5?=
 =?utf-8?B?N3Zrd0t5WkI5UUZaUXU1S1B0Q1ZmR0ZUOXE1YUV1a1RZNXNweXFUM2FqYUl2?=
 =?utf-8?B?T3kvR1k4SnlaTlJjTTZza0IxdTd3azJ3ZzdDM3B3MXA2UlVtMnJnRWRXZjAr?=
 =?utf-8?B?enFVdkNUUlVSWExNOG45aHU1TUpESDl5QUxIbzBxa1RHNDRzYVRRd05xb2dy?=
 =?utf-8?Q?QkNU23a9priN4?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Zlo3K29FeFFJZ0ZhUGxzYUp6OGxYdTYyZm9JMGI2Z2haL2IweWpQS2ZpY3Vm?=
 =?utf-8?B?L1BwN3UrNHFOMEVJV05pZElmYmQvWjBrWUg3a2I4NjM0WXhyREVIYVg5UUU0?=
 =?utf-8?B?VmZJWklmRzBXeGovR0hmZXVSb1dsTitmZENLamNjM0FmNHFLR1I3S2pSTzl1?=
 =?utf-8?B?UFhBY1F4QkRla3ZoTDZIeGNNNElIWEl2Qy83dTBZd1NTaVdFV1VXWC9WS013?=
 =?utf-8?B?SDg0TzR2OU0ySk5kQmkreHdBb3JYRkNTR3QzRUQxQk5TbWtYL2EzVUhpZklU?=
 =?utf-8?B?MUNvS29FbXRTS0srcnVCclpJQTlTMHdTblZUL1RLM0ZFNkpMY0xZNkkyZXdz?=
 =?utf-8?B?d0VPVEFvVVIrVTJkN25lcFJQOW1TRDB1OUluNndScFZWanYva3dyUjY4UG1B?=
 =?utf-8?B?d3o2ajNBMjA4T282L2wxc2NxaVdTVG1ObTRUMnpMWlNNL3BXZGp3aWVJSkti?=
 =?utf-8?B?VEJUa3R5MjhJbmh0WVVyQUFyKzltbXpldXFHTDNUUzAxZXd6cU1jb2VFVU1N?=
 =?utf-8?B?YS9iemozRkJta0ZyMnZsK2g0c3VicGJ6aXdtanV2N1FrSElNRkNBeXJBLzZw?=
 =?utf-8?B?TkNSaVdBbkIxeVVSVUZwd2RJRTh2ejNka3lnS1NZM1ZodkFrSkpMZVQ3dUlM?=
 =?utf-8?B?V1JFYmp2TkVCZlhZREVmZkZwNkxVVW9WL3hMWUkybU1MMHFvdE8zVXNHeFRq?=
 =?utf-8?B?RVBYdTdZYU9MQWZwM0phdC92bU80Zk43RitoTG5ieTlRcmNWZWpKNkZyUkYx?=
 =?utf-8?B?NytWcDdnNVFHdURIQlpjRjFWQ0U1bG1jSGswU0RKcDZmc1VSdFpzRTRyM3ZP?=
 =?utf-8?B?NWpxVU5JcEI4WmJZMHFqWUJRSDBIVGRySGlPZDNnOHptNldHdnlNSEd1Rm05?=
 =?utf-8?B?VkYyRSt3NlJOb3JWNE1Ec1I4ZFNjbkt2NExHZVVEZEJ2T21QUmRGRWlMY1A0?=
 =?utf-8?B?d0UvU0xvdGN2dFFUbkxYOUZrT2hNZUN5OFZIQzd3OUpuRk9Cc2J1T0JENUZP?=
 =?utf-8?B?dm0vQUdRc2ZoSzdtZkhocW0rV0hyTmloU0gzYWNXM1JvWTEweFZUMEF5OTJt?=
 =?utf-8?B?QlF6ZmRvWENvaUc0aXNDR1lZaytWZGduNzdKem5hTGRYTzMyQW4rMUpkOExS?=
 =?utf-8?B?SzJ0dnBGUUtRQTc5UXk3M0lRWjN0V3dPSmQ0a0NqR0V4VFFGSExnRjdLK3ZB?=
 =?utf-8?B?YWVvZGEyVlN4VUhmV2RUbHJlVFRjUkhoVjlTYmJDQW05TS9kU1gyK2hLczM1?=
 =?utf-8?B?bmQvaTlRVmNyOEttczhMQ3VFTm5uWFZOUFJOaFdPbE9xa3czVnQrM0NxK1d0?=
 =?utf-8?B?bGRVZVEyTWdsYzMranNOTCtqamRrRXFKeE9kWnZHRFE2b3ZXUUM0c3lURk9h?=
 =?utf-8?B?U3QwWEpscDNNUGdhcnlLd29KdUd0WndHcjdGNkFwd0hONlE0RlZEa2dDQmxF?=
 =?utf-8?B?SDVpUEEwVkp2djlhN3N2REtTYmJlc21JUlNiSHFvZndGTTRBeDhJd1NnY1R4?=
 =?utf-8?B?bTI4NmQwTjlLaUNURnZVeDd0Vm1DV1BiWFZsSEcvTU85d3dZekM5Y3pxbkFL?=
 =?utf-8?B?MU5MSEtabXBQdnUyczl4bXd6NndLc3VDT1pkSE9jNGtTa1Zra2RzRFhCelVx?=
 =?utf-8?B?QnltdGtuOFJQVmxUWEczNTBVTGM5d01OdmdBS2pHWmFheHJIUFFSQldqWThE?=
 =?utf-8?B?ZStmUnpvOUJ6RE9RalZjMU5hcE4wdExLR0Fqc2hvY1k1azVyTy9VK3NtQ2RM?=
 =?utf-8?B?MWFhb2U3Q0c1U0ZYTjQ1RTJxZVk2ZHZNRFY3QnNpeGxtNHhkUCtkS1BZZVdG?=
 =?utf-8?B?MGVCZE8wQTgvU0VtSk1maWRtcEMvcnVFWjJIazFXa3l5QUFCTHRLUllHU1dM?=
 =?utf-8?B?ME95enFrU3Vzb0dLekJ6WUU4am95UHVyUXlmTU1KS29FVTlFK2hrT2tlTzF6?=
 =?utf-8?B?SDl5NzdxclIxNWZDZ3F2akp3bGxuK1Vxb0M5M2RUbDkycUd0Sks4OU84c3VY?=
 =?utf-8?B?blhwVWllK0JIbW5PdTJQTTRZSHB4Q2JyL3FmYmwvcWx6YnBDR045aXJXVUd3?=
 =?utf-8?B?TUZwMHdHWHNqRTFIWVc1NisrZWdyV3Eyd1FqbTk3VmV3R2tJdzllZXFiL0Mr?=
 =?utf-8?Q?iaRvu3gGWG9b7barguubZgYTf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 251ad719-98b2-4299-6250-08dd73554b3d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 08:47:13.0304
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cdU8xAEBFWr8XiDlMZ/39FVMYwOXeecuoFmHYN2ukMrD+EMy0WvYhpL7GYcaK8pH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB9053
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.93.55:from];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.55:from];
	TAGGED_RCPT(0.00)[renesas];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:mid,mail-dm6nam10on2055.outbound.protection.outlook.com:rdns];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,ffwll.ch,chromium.org,kernel.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9EA4C4474A
Message-ID-Hash: UQAUP67SXUTRMEIQTHNQHJKZVNL56UR7
X-Message-ID-Hash: UQAUP67SXUTRMEIQTHNQHJKZVNL56UR7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UQAUP67SXUTRMEIQTHNQHJKZVNL56UR7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWF4aW1lLA0KDQpBbSAwMy4wNC4yNSB1bSAxNzo0NyBzY2hyaWViIE1heGltZSBSaXBhcmQ6
DQo+IE9uIFRodSwgQXByIDAzLCAyMDI1IGF0IDA5OjM5OjUyQU0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo+Pj4gRm9yIHRoZSBVTUEgR1BVIGNhc2Ugd2hlcmUgdGhlcmUgaXMgbm8g
ZGV2aWNlIG1lbW9yeSBvciBldmljdGlvbg0KPj4+IHByb2JsZW0sIHBlcmhhcHMgYSBjb25maWd1
cmFibGUgb3B0aW9uIHRvIGp1c3Qgc2F5IGFjY291bnQgbWVtb3J5IGluDQo+Pj4gbWVtY2cgZm9y
IGFsbCBhbGxvY2F0aW9ucyBkb25lIGJ5IHRoaXMgcHJvY2VzcywgYW5kIHN0YXRlIHllcyB5b3Ug
Y2FuDQo+Pj4gd29yayBhcm91bmQgaXQgd2l0aCBhbGxvY2F0aW9uIHNlcnZlcnMgb3Igd2hhdGV2
ZXIgYnV0IHRoZSBiZWhhdmlvdXINCj4+PiBmb3Igd2VsbCBiZWhhdmVkIHRoaW5ncyBpcyBhdCBs
ZWFzdCBzb21ld2hhdCBkZWZpbmVkLg0KPj4gV2UgY2FuIGhhdmUgdGhhdCBhcyBhIHdvcmthcm91
bmQsIGJ1dCBJIHRoaW5rIHdlIHNob3VsZCBhcHByb2FjaCB0aGF0DQo+PiBkaWZmZXJlbnRseS4N
Cj4+DQo+PiBXaXRoIHVwY29taW5nIENYTCBldmVuIGNvaGVyZW50IGRldmljZSBtZW1vcnkgaXMg
ZXhwb3NlZCB0byB0aGUgY29yZQ0KPj4gT1MgYXMgTlVNQSBtZW1vcnkgd2l0aCBqdXN0IGEgaGln
aCBsYXRlbmN5Lg0KPj4NCj4+IFNvIGJvdGggaW4gdGhlIENYTCBhbmQgVU1BIGNhc2UgaXQgYWN0
dWFsbHkgZG9lc24ndCBtYWtlIHNlbnNlIHRvDQo+PiBhbGxvY2F0ZSB0aGUgbWVtb3J5IHRocm91
Z2ggdGhlIGRyaXZlciBpbnRlcmZhY2VzIGFueSBtb3JlLiBXaXRoDQo+PiBBTURHUFUgZm9yIGV4
YW1wbGUgd2UgYXJlIGp1c3QgcmVwbGljYXRpbmcgbWJpbmQoKS9tYWR2aXNlKCkgd2l0aGluDQo+
PiB0aGUgZHJpdmVyLg0KPj4NCj4+IEluc3RlYWQgd2hhdCB0aGUgRFJNIHN1YnN5c3RlbSBzaG91
bGQgYWltIGZvciBpcyB0byBhbGxvY2F0ZSBtZW1vcnkNCj4+IHVzaW5nIHRoZSBub3JtYWwgY29y
ZSBPUyBmdW5jdGlvbmFsaXR5IGFuZCB0aGVuIGltcG9ydCBpdCBpbnRvIHRoZQ0KPj4gZHJpdmVy
Lg0KPj4NCj4+IEFNRCwgTlZpZGlhIGFuZCBJbnRlbCBoYXZlIEhNTSB3b3JraW5nIGZvciBxdWl0
ZSBhIHdoaWxlIG5vdyBidXQgaXQNCj4+IGhhcyBzb21lIGxpbWl0YXRpb25zLCBlc3BlY2lhbGx5
IG9uIHRoZSBwZXJmb3JtYW5jZSBzaWRlLg0KPj4NCj4+IFNvIGZvciBBTURHUFUgd2UgYXJlIGN1
cnJlbnRseSBldmFsdWF0aW5nIHVkbWFidWYgYXMgYWx0ZXJuYXRpdmUuIFRoYXQNCj4+IHNlZW1z
IHRvIGJlIHdvcmtpbmcgZmluZSB3aXRoIGRpZmZlcmVudCBOVU1BIG5vZGVzLCBpcyBwZXJmZWN0
bHkgbWVtY2cNCj4+IGFjY291bnRlZCBhbmQgZ2l2ZXMgeW91IGEgRE1BLWJ1ZiB3aGljaCBjYW4g
YmUgaW1wb3J0ZWQgZXZlcnl3aGVyZS4NCj4+DQo+PiBUaGUgb25seSBzaG93IHN0b3BwZXIgbWln
aHQgYmUgdGhlIGFsbG9jYXRpb24gcGVyZm9ybWFuY2UsIGJ1dCBldmVuIGlmDQo+PiB0aGF0J3Mg
dGhlIGNhc2UgSSB0aGluayB0aGUgb25nb2luZyBmb2xpbyB3b3JrIHdpbGwgcHJvcGVybHkgcmVz
b2x2ZQ0KPj4gdGhhdC4NCj4gSSBtZWFuLCBubywgdGhlIHNob3dzdG9wcGVyIHRvIHRoYXQgaXMg
dGhhdCB1c2luZyB1ZG1hYnVmIGhhcyB0aGUNCj4gYXNzdW1wdGlvbiB0aGF0IHlvdSBoYXZlIGFu
IElPTU1VIGZvciBldmVyeSBkZXZpY2UgZG9pbmcgRE1BLCB3aGljaCBpcw0KPiBhYnNvbHV0ZWx5
IG5vdCB0cnVlIG9uICF4ODYgcGxhdGZvcm1zLg0KPg0KPiBJdCBtaWdodCBiZSB0cnVlIGZvciBh
bGwgR1BVcywgYnV0IGl0IGNlcnRhaW5seSBpc24ndCBmb3IgZGlzcGxheQ0KPiBjb250cm9sbGVy
cywgYW5kIGl0J3Mgbm90IGVpdGhlciBmb3IgY29kZWNzLCBJU1BzLCBhbmQgY2FtZXJhcy4NCj4N
Cj4gQW5kIHRoZW4gdGhlcmUncyB0aGUgb3RoZXIgYXNzdW1wdGlvbiB0aGF0IGFsbCBtZW1vcnkg
aXMgdW5kZXIgdGhlDQo+IG1lbW9yeSBhbGxvY2F0b3IgY29udHJvbCwgd2hpY2ggaXNuJ3QgdGhl
IGNhc2Ugb24gbW9zdCByZWNlbnQgcGxhdGZvcm1zDQo+IGVpdGhlci4NCj4NCj4gV2UgKm5lZWQq
IHRvIHRha2UgQ01BIGludG8gYWNjb3VudCB0aGVyZSwgYWxsIHRoZSBjYXJ2ZWQtb3V0LCBkZXZp
Y2UNCj4gc3BlY2lmaWMgbWVtb3J5IHJlZ2lvbnMsIGFuZCB0aGUgbWVtb3J5IHJlZ2lvbnMgdGhh
dCBhcmVuJ3QgZXZlbiB1bmRlcg0KPiBMaW51eCBzdXBlcnZpc2lvbiBsaWtlIHByb3RlY3RlZCBt
ZW1vcnkgdGhhdCBpcyB0eXBpY2FsbHkgaGFuZGxlZCBieSB0aGUNCj4gZmlybXdhcmUgYW5kIGFs
bCB5b3UgZ2V0IGlzIGEgZG1hLWJ1Zi4NCj4NCj4gU2F5aW5nIHRoYXQgaXQncyBob3cgeW91IHdh
bnQgdG8gd29ya2Fyb3VuZCBpdCBvbiBBTUQgaXMgYWJzb2x1dGVseQ0KPiBmaW5lLCBidXQgRFJN
IGFzIGEgd2hvbGUgc2hvdWxkIGNlcnRhaW5seSBub3QgYWltIGZvciB0aGF0LCBiZWNhdXNlIGl0
DQo+IGNhbid0Lg0KDQpBIGJ1bmNoIG9mIGdvb2QgcG9pbnRzIHlvdSBicmluZyB1cCBoZXJlIGJ1
dCBpdCBzb3VuZHMgbGlrZSB5b3UgbWlzdW5kZXJzdG9vZCBtZSBhIGJpdC4NCg0KSSdtIGNlcnRh
aW5seSAqbm90KiBzYXlpbmcgdGhhdCB3ZSBzaG91bGQgcHVzaCBmb3IgdWRtYWJ1ZiBmb3IgZXZl
cnl0aGluZywgdGhhdCBpcyBjbGVhcmx5IHVzZSBjYXNlIHNwZWNpZmljLg0KDQpGb3IgdXNlIGNh
c2VzIGxpa2UgQ01BIG9yIHByb3RlY3RlZCBjYXJ2ZS1vdXQgdGhlIHF1ZXN0aW9uIHdoYXQgdG8g
ZG8gZG9lc24ndCBldmVuIGFyaXNlIGluIHRoZSBmaXJzdCBwbGFjZS4NCg0KV2hlbiB5b3UgaGF2
ZSBDTUEgd2hpY2ggZHluYW1pY2FsbHkgc3RlYWxzIG1lbW9yeSBmcm9tIHRoZSBjb3JlIE9TIHRo
ZW4gb2YgY291cnNlIGl0IHNob3VsZCBiZSBhY2NvdW50ZWQgdG8gbWVtY2cuDQoNCldoZW4geW91
IGhhdmUgY2FydmUtb3V0IHdoaWNoIHRoZSBjb3JlIE9TIG1lbW9yeSBtYW5hZ2VtZW50IGRvZXNu
J3QgZXZlbiBrbm93IGFib3V0IHRoZW4gaXQgc2hvdWxkIGNlcnRhaW5seSBiZSBoYW5kbGVkIGJ5
IGRtZW0uDQoNClRoZSBwcm9ibGVtYXRpYyB1c2UgY2FzZXMgYXJlIHRoZSBvbmUgd2hlcmUgYSBi
dWZmZXIgY2FuIHNvbWV0aW1lcyBiZSBiYWNrZWQgYnkgc3lzdGVtIG1lbW9yeSBhbmQgc29tZXRp
bWUgYnkgc29tZXRoaW5nIHNwZWNpYWwuIEZvciB0aGlzIHdlIGRvbid0IGhhdmUgYSBnb29kIGFw
cHJvYWNoIHdoYXQgdG8gZG8gc2luY2UgZXZlcnkgYXBwcm9hY2ggc2VlbXMgdG8gaGF2ZSBhIGRy
YXcgYmFjayBmb3Igc29tZSB1c2UgY2FzZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0K
PiBNYXhpbWUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
