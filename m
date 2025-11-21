Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD77C791AE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 14:02:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F3CE3F803
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 13:02:03 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011057.outbound.protection.outlook.com [40.93.194.57])
	by lists.linaro.org (Postfix) with ESMTPS id 5688F3F803
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 13:00:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yoyl0JJv;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rtMeBOhHxFBe/U1jHUeBrfF07ZlnUcYNlZagerT91UXtcaZraCqIvS7cwCrKI84gu7GsncxH8+2HZxLz2curO41i47zTq78jhsxs9B/lwMfHzOyBQ9pz7tqmaSknT5/JFS7lANrQoqN0yr99ZKJYG94MahVZYL5vT9TZ9b79GAbgdbzEkvd/s58uHVhvrsPZ85njUHGgJIAgnMmFyn/MGFjUbrcnoLvxqJOX2BKTWVkNc7i34swbjCH/vvbu0bHeLsTnWImchph3j7Q1YMp1ylG2xSwekyd78QymjtLuL1hLKGZE2teSwpD+vz7ernVBc3yBMkyUQczi9zB9fEzEgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tqDvL9rpF8Th9n3uh2s59GARa//ATzDrBjOxKA2Plng=;
 b=T6Tgvqn3EucoeKXKMiMN55vM2kw3rwSNRDOqvl0bCHtm1n0OItR9W1H7NoNGZuGEWOIZ1ib8g0OooZgQFjyvMZ14Ww8sDLcFFLgr8+G/La7EmhF39t8b4SQdQ6UF1CCeRz4R8CdDKm7E8BIrREabgOdTNgEh2yajHoc9bw8g+sRbpo11kx9lhfs6ORYMC+7Aka7FyTeTvxmffbee1pW92oaN1vQMczCP5snoJq3u/ag2FLv5kprIAaXaxnzZ2zEZFMIUv1Pp2gKSa1weu1MHwNThsbp7A/U/EJlIU3FDnEwlxyx3ZZmendO0NAuBOHIxXJ0b95y7kumYsbDYH7DEeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tqDvL9rpF8Th9n3uh2s59GARa//ATzDrBjOxKA2Plng=;
 b=yoyl0JJvnFiD1tA589g6v4SGPbimF7cThfjx4Kd8aQdrVR4JYp5YEq8DaA9XlTYkoEfLvJ7g+hLUA6erXIwEqQKnlJghOAmbpaRBebLPxjYW8p2SIZT0wHhjFOUWLZbZ5CXwsroDjqHbrAwhvohtQsZC91VHKWB5ImbYeUBp18s=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL3PR12MB6476.namprd12.prod.outlook.com (2603:10b6:208:3bc::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.14; Fri, 21 Nov
 2025 13:00:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Fri, 21 Nov 2025
 13:00:55 +0000
Message-ID: <16d9d7df-1ea6-453a-83b6-8de0681e8aa5@amd.com>
Date: Fri, 21 Nov 2025 14:00:46 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
 <20251121101315.3585-7-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251121101315.3585-7-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: SG2PR03CA0124.apcprd03.prod.outlook.com
 (2603:1096:4:91::28) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL3PR12MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: 003e099c-1a85-4429-3812-08de28fe019b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MWNJQmxob05LWU55OER5T1A0OXZycDlSRW1rb1F0aVdJazMyNlE4SXdkblN2?=
 =?utf-8?B?K29vQTk4NERmVDZuTkhPMDh5cWordStScWlzaHhOTUh4YmVQQ05nMXgrYzh2?=
 =?utf-8?B?M2JsUWUvRHFQazdWWGpobnhZRHMyQlkvc2xTYlV6cXdVSjNwL2VQMFgwNDRS?=
 =?utf-8?B?L2x5aFdkLzA2SzRyK2RtNUQ4UEt5b01oeEhLT25LNnNhcklPaGhkaGFBL3dV?=
 =?utf-8?B?T2thcWt0cjd1dnBXRE1oWEtaSUZNYnlMcnlWZTJKM1hqNDJwSkk3S2krQkYv?=
 =?utf-8?B?NzJRUndJWk8yallxMHNJSVJ5YUNTaE9kR3lETFpMRXNpQkZYUlpENVhRSEJp?=
 =?utf-8?B?MGRiNGtYWmhxd3ZLTGNSWm1SZ0piVlFxTWN6SjRIYUV3eWllU0o0T0xQbVAv?=
 =?utf-8?B?TzhYUjJIT3pSYmJyNzhBSWovRmpsazBCSnhySXJGOTNNa1dIQ0lFZklPckpL?=
 =?utf-8?B?V0RuNUt5S3Nsc0FYQjV0WGdtblk0cjN3QW9JM215Nm9JdEZQQ0VsOXZTQlhB?=
 =?utf-8?B?YU03VSs0M0RJLzZRNkpxclJpL3c4UFd0WGo0VksvRE1jTnBNUkpBRXZ3VFBM?=
 =?utf-8?B?cHlTT2NyYWk4TGxpc1RPVisxQUFuZkVUVjhCWTdVRkxub1dNT3RaR1hDT1Ay?=
 =?utf-8?B?VWJOOFpuRU5sc3duZTdWdnRHTGljRHhYTm95YldtODM2ek84aGVQdTA1VTRz?=
 =?utf-8?B?R3JVZVM4TTJ2VmEvdDZ4cGRPRlJuSHYzT1NkTml0TlJuVnoxM3crRFdESUV5?=
 =?utf-8?B?VGpnSlJyQUJKVU9Xc1FpRXQvOFVnd3ZCdFNwVlhNanRlRXVQNW9rblZKQmNP?=
 =?utf-8?B?cHZvVmJQVTFUREJucTU2bEJhbXJsSFFzT2tDby9ONG5PdVFBYkR0MG5TNm9a?=
 =?utf-8?B?U3dZc1hWUWNhWWl2bk1Da0g2b3pPaEVMV2FTTzMrRVJQYWN1dFRrMkltTU9m?=
 =?utf-8?B?VjA3Rk1oYytxaElKSFp0QmtuTy9QZGJ1eTQraHB6YkFsOFBJVGo5QlVTNHE0?=
 =?utf-8?B?K1dFSU9GRmU3WndqNnZ3S1drQ2FkZlRWN2NYV3FramJrTlJIQ3loTWgxRGJH?=
 =?utf-8?B?cyswcXRvQkVINlgxT1V4aXhrMWwrOE56L0dCVWZ3VUhLNHJzTS9sVGljOFpm?=
 =?utf-8?B?b0JMVHZpb1ZSVFMzM2xtdTVCZnEyMFIxeUIyN2xVMzN0UkI3ZHV4eFpPNk5H?=
 =?utf-8?B?ZGFPa3p3TDB6dUwrQnRUdXN0MWZmVmtSL01nSWhhbDV3SlViZUY4cGZyc1lp?=
 =?utf-8?B?RkJ3a21HVGo5K2FOV2lWQldlYnNoYktBcVBseUR6VjU0K2l6czhpN3Z4K2wr?=
 =?utf-8?B?RHZ2L29nclNpRXpqYXNOZmRlSEQwOXZ1SElldittY1VpeGZzNDhSZFdGY09x?=
 =?utf-8?B?RDJrYmN6Y1pRRzJjN2p3VVNsMEV2ZEc0ZDd4MGd5SUJwRUc3QlNwczhHMzFw?=
 =?utf-8?B?MVd4N1poR01IenIrY21Wck1jQVBOWW8wT3FTcm9XUWE2OGJPWDhQSGFwaWdX?=
 =?utf-8?B?TjJDcnBOVlAvaTEzUlV2NVRxLzVhTE1LeEd1Zm9KWXVudmUzaWZFbkhNZDcy?=
 =?utf-8?B?R2xsWktBY2cvalVOWGVXYzZZVXFtSVNWZ29wNmRkTE9hcWhwN0UrRklSRGZU?=
 =?utf-8?B?aFU1Qm9ZRGQ2eDFtV2Y5VDlueS9wMDNUbHFLcEFuaWRMd2R3V1pEYzNxTjJR?=
 =?utf-8?B?SUIrTG1FTVNYemluYWpDUFJEOEpWWXlBSkZBL0IrdnR4RTdLLyt6S0RsWjg4?=
 =?utf-8?B?bzJEVE1La3NTUlpLMTZWbG1Xb2lLd3NPQUpvWUJCR0pFbHl0Q3dualVJWkdi?=
 =?utf-8?B?cjFpYnMxdUR4cXkxZWJiNVhqQm5tdyt0eS9NUFBibWlBS2N3ZTZMbGFZcmJ6?=
 =?utf-8?B?dHN5RFFqS2xGYnV2MWlNYkYyOC9oeUxXWXYyTVpIQ1hiYkdkMjMwMExzTHMw?=
 =?utf-8?Q?0mz9jlIOd0xs669bAmn5MID2wWj0zNkF?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZEEwcWFuNkJKUCtoTzVJcnVreFZJU3MrcTAzTnNnbE9iZDAzUXoxWXZORGRq?=
 =?utf-8?B?eVdoRWpEeUZ0Nm1FRm5qeXJtRHd2K2N5eHRvWmFwekJ3VndYZ2hkUzFERVEv?=
 =?utf-8?B?aTllaXNPTHgvaFpiWTE5aUc0NW01dWVMRlZEdG5wVWlIQWUySU52bkI2bmQ4?=
 =?utf-8?B?czRudEk4TjVWQ3ljSGY2Z1NuWktmc0xqUU1HWXFEdm9mSlE4NU9JWnVuNm1U?=
 =?utf-8?B?SVJHbVRvRGpLa2ZzMDZySVRZMEttcmxYTXlnaVprZmVEUFJFTVRUTGZDcHBk?=
 =?utf-8?B?VFZESVNDSmRjblZQUi9oTzQwM3FBWVVaVS9HNDNMcncyUnNLQk9zK0RZdHlB?=
 =?utf-8?B?aENJTExMUHNrZzZqRllGRTJrV09uc3pXQStDWUtLTVdZMEdOUzZpZHFBWVd5?=
 =?utf-8?B?U08rL1k5Zks4MEhnbkUva0xSZVQ3bjVHdDZxeVh6ckY3c0cyMzBrYlZ4U0w2?=
 =?utf-8?B?aktPalgwcFRvTzAyZmVyMzExWThnQi83U3hpcTNIdGtIaGRmdWZWTzZ1QlFD?=
 =?utf-8?B?Y3E3ZXFKdjZSdjgzNWpIU0JvN2tPRndyMGkyZm9EYmtsNVFXRERMbS9SQTJv?=
 =?utf-8?B?enRlRitiZFdLSVV5QnRQQTRwcFhRamZCRTlvYlNaQ3pHYTVMeGQzMkFFTjBP?=
 =?utf-8?B?cHhDdXMvU1NCeGZ6TUQ5WG1Xa0FpYVRLNXFmR3UvOXloQ0tSaVRRSlgxNk0v?=
 =?utf-8?B?eEZVZFA4QmJhZVdsNEJSZXg3SjcrSGVpcmxmaGU5SWlqbjFZeWlYM2ppSWg5?=
 =?utf-8?B?dUZVVFNITXVEMHZoY3lpYkxIMDZjeVhvOVhiVW5WamNKbGd4UGJiQnBNUjBz?=
 =?utf-8?B?aSt0V2hibUN2TW10Nk5uMmNhaTc1ZWtQQ3NWdmQzSy9CL3JMQjI4VXNOa3Jj?=
 =?utf-8?B?cnYzZ3hHZVlzUWx6YlNleXc2RUVnOU5LQjBYdVlGeHFrS3VhczlqZjhkWFEv?=
 =?utf-8?B?emRjakE5dDBSVDdrVXRtVG16WlYveDNJK3lOMEtMbENTbFQwM0hqcnVWRE5m?=
 =?utf-8?B?d1oyMitHbUlkSjRGaThLVlF1NkcyRWE4cmtmdGdZMlAzU3R1eU9YQit2d2xu?=
 =?utf-8?B?VG5xNmZOc1lJY2R1cmlYc1YzeG1BdWFMdENYWUhwb0hKbVNVcHdLaWp1R21I?=
 =?utf-8?B?ZW51ZkhJbUZ6dFF6QWxFN2orLzd1MTBMNzRnQ01YU1Rwcjl4OURrQXkyNlZE?=
 =?utf-8?B?OUVpRVZILzJjM1AxS0FNUnE2Z2ZhRU5QNS92ZkFHSXAxWkRwSFpyU0dOZGhJ?=
 =?utf-8?B?a1pNeGdoVFd5dHIxSDhMT2gxOWxicS96V2duLzBaNUJRd1loclcyMkNQREVS?=
 =?utf-8?B?QngwQUdieXQzRUEvT2c1a1ZudUdVemhIbjFGd29XNzVyR2JmdW9OUGJQUjc1?=
 =?utf-8?B?ZGtKeGU4RGMwdFhrYXVsTmVIMjA0R1FaR3BIbTB1K3p4M0VWTFltNTlyU3hu?=
 =?utf-8?B?TjkvSkpHKzR6MFc1ZEx1VDNPcHpTOE56eFR6N0tJSUhJQkhRaFdzU2J2a0xu?=
 =?utf-8?B?aXYyOUhsQjZBVEpyV29DcFRjUzF4NkZ5eFVOYUhkSGUyNE1NbzJYRkZ4MVFr?=
 =?utf-8?B?NHhxbjhwU2FaeW1zSk9EaEtyNWZidUQwNjlualR2UWR1WW5oaHlycXVSOWFW?=
 =?utf-8?B?c0FSK3BsNWJMVTdNN1BiL21hYmV0OGJtaU5ING1hbERhdDk1dWNyMVNHUkxx?=
 =?utf-8?B?RC9PUjFDN1V1aUlIdGo0ZEJnQWF0ZEt4UjJiejhqSUVmd0xUV3k0cFlybWtq?=
 =?utf-8?B?YVF6U0thWVNIMnV2azZMSmV2MVp2YUNwUHgraytVY1FUa29TU2NSaW11bHFL?=
 =?utf-8?B?Zi90aTNQQldtRWYyMXJBMGdJa0JKdzJaaVJNRkc3OTBtY2M1b0xkQkgwOGxB?=
 =?utf-8?B?TEg2bmwzbWVSZjBSc2VWL0lwZjJBSytBK0Z2STc3aTVqeVYxQ0JXVWZnMDBN?=
 =?utf-8?B?M2dURUNrbEVKL2hVYlUxV3Y4UGpsK20wdDdENmR2WiszdnFlYm1nK0FjM1BN?=
 =?utf-8?B?Y1RaQjNuZ0xac2NYYzhDN2trb1RxNmgvNXVxMkVRbWE1blZJZU8yM21oWDJq?=
 =?utf-8?B?ek1WM1F5UWc1T0hSSjBONzFXSVhLSXN2dmZWQUwyaldnSXFnb3NqL0dtS3lp?=
 =?utf-8?Q?CCwlETKmnQ4MQPpu13/mnkDHV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 003e099c-1a85-4429-3812-08de28fe019b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 13:00:55.0463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xzmUT2kJRdltbZNU2Uh6kduIFkrKgFMkwpcj16mWrJ0GuxNSQS0iqfrDnVNbA7es
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6476
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.57:from];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:mid,amd.com:email,amd.com:dkim,amd.com:from_smtp,amd.com:from_mime,mail-southcentralusazon11011057.outbound.protection.outlook.com:rdns,SN4PR0501CU005.outbound.protection.outlook.com:helo];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5688F3F803
X-Spamd-Bar: -----
Message-ID-Hash: SGMX7KXZFZMT2R26IBJXYGDGB3WN5WNL
X-Message-ID-Hash: SGMX7KXZFZMT2R26IBJXYGDGB3WN5WNL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 06/28] drm/amdgpu: add amdgpu_ttm_job_submit helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SGMX7KXZFZMT2R26IBJXYGDGB3WN5WNL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjEvMjUgMTE6MTIsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiBE
ZWR1cGxpY2F0ZSB0aGUgSUIgcGFkZGluZyBjb2RlIGFuZCB3aWxsIGFsc28gYmUgdXNlZA0KPiBs
YXRlciB0byBjaGVjayBsb2NraW5nLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMg
UGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQoNClJl
dmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoN
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgfCAzNCAr
KysrKysrKysrKystLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3R0bS5jDQo+IGluZGV4IDE3ZTE4OTJjNDRhMi4uYmUxMjMyYjJkNTVlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+IEBAIC0xNjIsNiArMTYyLDE4
IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9ldmljdF9mbGFncyhzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvLA0KPiAgCSpwbGFjZW1lbnQgPSBhYm8tPnBsYWNlbWVudDsNCj4gIH0NCj4gIA0KPiAr
c3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKg0KPiArYW1kZ3B1X3R0bV9qb2Jfc3VibWl0KHN0cnVj
dCBhbWRncHVfZGV2aWNlICphZGV2LCBzdHJ1Y3QgYW1kZ3B1X2pvYiAqam9iLCB1MzIgbnVtX2R3
KQ0KPiArew0KPiArCXN0cnVjdCBhbWRncHVfcmluZyAqcmluZzsNCj4gKw0KPiArCXJpbmcgPSBh
ZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jc19yaW5nOw0KPiArCWFtZGdwdV9yaW5nX3BhZF9pYihyaW5n
LCAmam9iLT5pYnNbMF0pOw0KPiArCVdBUk5fT04oam9iLT5pYnNbMF0ubGVuZ3RoX2R3ID4gbnVt
X2R3KTsNCj4gKw0KPiArCXJldHVybiBhbWRncHVfam9iX3N1Ym1pdChqb2IpOw0KPiArfQ0KPiAr
DQo+ICAvKioNCj4gICAqIGFtZGdwdV90dG1fbWFwX2J1ZmZlciAtIE1hcCBtZW1vcnkgaW50byB0
aGUgR0FSVCB3aW5kb3dzDQo+ICAgKiBAYWRldjogdGhlIGRldmljZSBiZWluZyB1c2VkDQo+IEBA
IC0xODUsNyArMTk3LDYgQEAgc3RhdGljIGludCBhbWRncHVfdHRtX21hcF9idWZmZXIoc3RydWN0
IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICB7DQo+ICAJdW5zaWduZWQgaW50IG9mZnNldCwgbnVt
X3BhZ2VzLCBudW1fZHcsIG51bV9ieXRlczsNCj4gIAl1aW50NjRfdCBzcmNfYWRkciwgZHN0X2Fk
ZHI7DQo+IC0Jc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nOw0KPiAgCXN0cnVjdCBhbWRncHVfam9i
ICpqb2I7DQo+ICAJdm9pZCAqY3B1X2FkZHI7DQo+ICAJdWludDY0X3QgZmxhZ3M7DQo+IEBAIC0y
NDAsMTAgKzI1MSw2IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKHN0cnVjdCBh
bWRncHVfZGV2aWNlICphZGV2LA0KPiAgCWFtZGdwdV9lbWl0X2NvcHlfYnVmZmVyKGFkZXYsICZq
b2ItPmlic1swXSwgc3JjX2FkZHIsDQo+ICAJCQkJZHN0X2FkZHIsIG51bV9ieXRlcywgMCk7DQo+
ICANCj4gLQlyaW5nID0gYWRldi0+bW1hbi5idWZmZXJfZnVuY3NfcmluZzsNCj4gLQlhbWRncHVf
cmluZ19wYWRfaWIocmluZywgJmpvYi0+aWJzWzBdKTsNCj4gLQlXQVJOX09OKGpvYi0+aWJzWzBd
Lmxlbmd0aF9kdyA+IG51bV9kdyk7DQo+IC0NCj4gIAlmbGFncyA9IGFtZGdwdV90dG1fdHRfcHRl
X2ZsYWdzKGFkZXYsIGJvLT50dG0sIG1lbSk7DQo+ICAJaWYgKHRteikNCj4gIAkJZmxhZ3MgfD0g
QU1ER1BVX1BURV9UTVo7DQo+IEBAIC0yNjEsNyArMjY4LDcgQEAgc3RhdGljIGludCBhbWRncHVf
dHRtX21hcF9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICAJCWFtZGdwdV9n
YXJ0X21hcF92cmFtX3JhbmdlKGFkZXYsIHBhLCAwLCBudW1fcGFnZXMsIGZsYWdzLCBjcHVfYWRk
cik7DQo+ICAJfQ0KPiAgDQo+IC0JZG1hX2ZlbmNlX3B1dChhbWRncHVfam9iX3N1Ym1pdChqb2Ip
KTsNCj4gKwlkbWFfZmVuY2VfcHV0KGFtZGdwdV90dG1fam9iX3N1Ym1pdChhZGV2LCBqb2IsIG51
bV9kdykpOw0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiAgDQo+IEBAIC0xNDk3LDEwICsxNTA0LDcg
QEAgc3RhdGljIGludCBhbWRncHVfdHRtX2FjY2Vzc19tZW1vcnlfc2RtYShzdHJ1Y3QgdHRtX2J1
ZmZlcl9vYmplY3QgKmJvLA0KPiAgCWFtZGdwdV9lbWl0X2NvcHlfYnVmZmVyKGFkZXYsICZqb2It
Pmlic1swXSwgc3JjX2FkZHIsIGRzdF9hZGRyLA0KPiAgCQkJCVBBR0VfU0laRSwgMCk7DQo+ICAN
Cj4gLQlhbWRncHVfcmluZ19wYWRfaWIoYWRldi0+bW1hbi5idWZmZXJfZnVuY3NfcmluZywgJmpv
Yi0+aWJzWzBdKTsNCj4gLQlXQVJOX09OKGpvYi0+aWJzWzBdLmxlbmd0aF9kdyA+IG51bV9kdyk7
DQo+IC0NCj4gLQlmZW5jZSA9IGFtZGdwdV9qb2Jfc3VibWl0KGpvYik7DQo+ICsJZmVuY2UgPSBh
bWRncHVfdHRtX2pvYl9zdWJtaXQoYWRldiwgam9iLCBudW1fZHcpOw0KPiAgDQo+ICAJaWYgKCFk
bWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBmYWxzZSwgYWRldi0+c2RtYV90aW1lb3V0KSkN
Cj4gIAkJciA9IC1FVElNRURPVVQ7DQo+IEBAIC0yMjg1LDExICsyMjg5LDkgQEAgaW50IGFtZGdw
dV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgdWludDY0X3Qgc3JjX29m
ZnNldCwNCj4gIAkJYnl0ZV9jb3VudCAtPSBjdXJfc2l6ZV9pbl9ieXRlczsNCj4gIAl9DQo+ICAN
Cj4gLQlhbWRncHVfcmluZ19wYWRfaWIocmluZywgJmpvYi0+aWJzWzBdKTsNCj4gLQlXQVJOX09O
KGpvYi0+aWJzWzBdLmxlbmd0aF9kdyA+IG51bV9kdyk7DQo+IC0JKmZlbmNlID0gYW1kZ3B1X2pv
Yl9zdWJtaXQoam9iKTsNCj4gIAlpZiAocikNCj4gIAkJZ290byBlcnJvcl9mcmVlOw0KPiArCSpm
ZW5jZSA9IGFtZGdwdV90dG1fam9iX3N1Ym1pdChhZGV2LCBqb2IsIG51bV9kdyk7DQo+ICANCj4g
IAlyZXR1cm4gcjsNCj4gIA0KPiBAQCAtMjMwNyw3ICsyMzA5LDYgQEAgc3RhdGljIGludCBhbWRn
cHVfdHRtX2ZpbGxfbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1aW50MzJfdCBzcmNf
ZGF0YSwNCj4gIAkJCSAgICAgICB1NjQga19qb2JfaWQpDQo+ICB7DQo+ICAJdW5zaWduZWQgaW50
IG51bV9sb29wcywgbnVtX2R3Ow0KPiAtCXN0cnVjdCBhbWRncHVfcmluZyAqcmluZzsNCj4gIAlz
dHJ1Y3QgYW1kZ3B1X2pvYiAqam9iOw0KPiAgCXVpbnQzMl90IG1heF9ieXRlczsNCj4gIAl1bnNp
Z25lZCBpbnQgaTsNCj4gQEAgLTIzMzEsMTAgKzIzMzIsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV90
dG1fZmlsbF9tZW0oc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHVpbnQzMl90IHNyY19kYXRh
LA0KPiAgCQlieXRlX2NvdW50IC09IGN1cl9zaXplOw0KPiAgCX0NCj4gIA0KPiAtCXJpbmcgPSBh
ZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jc19yaW5nOw0KPiAtCWFtZGdwdV9yaW5nX3BhZF9pYihyaW5n
LCAmam9iLT5pYnNbMF0pOw0KPiAtCVdBUk5fT04oam9iLT5pYnNbMF0ubGVuZ3RoX2R3ID4gbnVt
X2R3KTsNCj4gLQkqZmVuY2UgPSBhbWRncHVfam9iX3N1Ym1pdChqb2IpOw0KPiArCSpmZW5jZSA9
IGFtZGdwdV90dG1fam9iX3N1Ym1pdChhZGV2LCBqb2IsIG51bV9kdyk7DQo+ICAJcmV0dXJuIDA7
DQo+ICB9DQo+ICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
