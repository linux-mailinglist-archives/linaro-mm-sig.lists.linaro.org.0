Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 464CAC8A21B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 15:02:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 454CA3F8E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 14:02:43 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013043.outbound.protection.outlook.com [40.93.196.43])
	by lists.linaro.org (Postfix) with ESMTPS id AF9983F80B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 14:02:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=0aZli1eD;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.43 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n28XFyW+Qj6DLLplO1IynpIea+JDwTI8CUyQmdU6+1oe/5242deELnVzxXbTRKm9NjdCrYlMco+TcitFrFrPkCKD9ANca9Ej/vSdKUuoW4q0Qt5gWuNTNu2jg3Ruf1dOi4x/7QvLFw4x9pRQQ/J1d4kavORCN6wnp/zh6KOjcCQc6rv5T9+eT4vOxMdzfJnyRouWH8xYbBlzNXWCYOCeTEX/aDmwo1xTkywgRQbSImzBpgTSsseK3vxYL1Fvj9hrhutjnH6GCw+Pot2nQm4txloGtSeO2QmXbRTy9o9NO5C1vHOGxThSPdaPMl34JrHrAINj0//l9BQCipT0AeuW3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FdqxEJ049lxdtNJFYEeNKTbb6RguV4HHUEawpNCsdoM=;
 b=f5tCetHhDg1tnW8ausj4pbJDpsKXsoammObN7paq5rJYpGZ0HYo4/NKIq3fexD/NFrj3VN876X5f0g8H/3ID4bcdBZsRHGrSBHTEqCi72NM6ChHD71X3qokJsKh2V2xprXwNyTrQNfPk7STKVVnFu6aWgMKgQA/q/LEXXho9ZPO3AEi9O1geUxjYe6GD25DPCFisXppFkjk0/EfxhknwVlPeLHkQOYEh9JJvUnrwxPG6ppfLq1kHBvgUc8twpEpVzemsN7oQJMjpMZIrCpZ7imLlhmZ1DUS35/SqA5GvvgHB1cPoJ1h6s4EGYTac2rsgG2jUY/IY566gXBEii9Xw7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdqxEJ049lxdtNJFYEeNKTbb6RguV4HHUEawpNCsdoM=;
 b=0aZli1eDa11OFjExwNwftoWvg3F77HYZ4yXW9eqDCe2ttZoWjK6kGpltkAE4D2C/QlkD4zof5P8/j2TgsWC8lkK//0Sw0IralqvypiOOw6VgdBJiu8QJ2ZA7zh1POtgFrSRe+I0nEKoxdsnYALhV89orKfAXlh15Grji6kLBcJE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6394.namprd12.prod.outlook.com (2603:10b6:510:1fe::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Wed, 26 Nov
 2025 14:02:22 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 14:02:22 +0000
Message-ID: <48352d7e-5e43-4683-9f00-b77ae571d8f6@amd.com>
Date: Wed, 26 Nov 2025 15:02:15 +0100
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan
 <gustavo@padovan.org>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
References: <20251126131914.149445-2-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251126131914.149445-2-phasta@kernel.org>
X-ClientProxiedBy: FR4P281CA0039.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: 46bc984c-12e7-4f62-8276-08de2cf46bb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|7416014|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TWhzb2JHU0VtYVZBRnlMSHdybDJqTTI1Q2d2QnZiVDZESU1YT1o4YmJNZzM4?=
 =?utf-8?B?Ri83eFo3TnRTdWNDcm1YRTBsbmsrVlJYKy9hYXoyYWRhWUR5ZW5EakJvUmcv?=
 =?utf-8?B?Z2NzZUxJcHY4aVNxY2taT2xaSmdhc1BCS0pnT1dQUWxYWUdNSVR0UVdTMVZ3?=
 =?utf-8?B?enhORXVDU3Y3WkMzUFp5VXpiZnZSc3BzTGYxWGhJcTVwRndONjF0ckJpNTI0?=
 =?utf-8?B?MGNSOUFtL2pQRTZjV2xPYmpEVmRuQWU2WTYwaXkyRmxKOVVjYlZHdE9OM0dC?=
 =?utf-8?B?Q1crd1FINDUrbUd2SzcyZFUyWXgrdEI4c0RHZ1RqVEQ2V0VSL0lVa0FPWDlO?=
 =?utf-8?B?aTVGc29ValpERnZPbnpucFl1L3puMmoySCtQbW1PMDZ1bDVhM3RTM3pYTlNx?=
 =?utf-8?B?ejJVU1ZYQlQzb1h3SlhJRHJPNExmcnZKWExvWDIwLzRySFVBcjA1Z3R3MzF2?=
 =?utf-8?B?OHFkek5UL1ZvNXFDd3Z4aVo0cmtQV1BlWFBqcU5vaWl5SXVpbk1WZmxlQ1M1?=
 =?utf-8?B?RFo4QkNwNGZXdkhRdEhaSWV0Z3lvVGhsZ2RaZ2hwZGxiVkNGMTRid3U1TUts?=
 =?utf-8?B?TFZMZnBuSHdOenVmaGp4WVh5a1B0eGNRLzdUWWdCdllvM0w2ZHVnYzZPdkxJ?=
 =?utf-8?B?ZElDL1RsOFhwSmJNdG5MYW5WREk4RUdHaC9TRjIyYTFLSDZTcVp5ZENtcmxq?=
 =?utf-8?B?K2sxcU9Ib1QvQlRpalFnUWxMazBzRGhRelA1ZlhBT3B4cnJ4TVBwN1RTYXAr?=
 =?utf-8?B?NStrekVvbEFQSGJ2V2hRd2RPd0NtOVEwdkZ2SmJSTENhbjBjZVFNaU9RelBk?=
 =?utf-8?B?R1hpSDhwbE1qNTA4YUpBLzVhSGpTL0kvUjh4U21nMVR1RXQ1SjhEcGgvWHBN?=
 =?utf-8?B?amZOOFQ0NXg3V1dDYkU1MzBieFBWM0dxcksrUUhKVTUwaVYvMUJ0eXpWUEYw?=
 =?utf-8?B?b2tNaTc1SVo2RUs4SUEwVENNdXFYMTVNdlNHaGtXd3Bsb0M0bDExSzk0S0ky?=
 =?utf-8?B?S1AxZVVPVlI2bmVtVXNCSHYwcHF4ekN4eDlaUGtXVDh3WXFkeUZaN3BMQk9Y?=
 =?utf-8?B?WTI5dWJmSXJObmVyOU50WE82L3BNQk13azQyY3VPSGxSc2I3ZFhiYklHWWFU?=
 =?utf-8?B?ZGtUVnBWakowWkUvNFU0QStuOU80MC9OMko5RXNscVdub2tucmY2MnhObWUx?=
 =?utf-8?B?REltcGJjT3hlSmsvSDhibzUzenp2K0YzbjZ4a2Q1eVo4S2prdjFQVXhkRXVJ?=
 =?utf-8?B?SG5zMU02dmtpMDZHSVpubkQvWkYwT085WHIrbFIrTk1iR2dWS2ZHMnhtZTZt?=
 =?utf-8?B?bXdHRVRhTTlURE4rSkJGU2NNTVpxS1FoeUw4eExwWUFSZzVsbGRWVlk5TkdK?=
 =?utf-8?B?WUFuZXAwVWo1aDZQTVBPSEJxOTdyS2NoWVVVNTRKZFlSYnR2eVlRRzRoakE3?=
 =?utf-8?B?UU1aMFNMaHVzeHJybE04czZ1anJpcXFYN09nUG9KeHk5bDdRaHk2Y3BjZVJr?=
 =?utf-8?B?K29HcE9GbThoT054Wm5Fc3Y2U2lrOTlnN3ZSZEM4QUdFM0JwMVY5bE5VR0lp?=
 =?utf-8?B?UnU2aDlOb1VSZ2lud0pyUDNGNk9VaWxuSGkxcy83SDNad1AzelhzL3g1MFcv?=
 =?utf-8?B?V05CSERIMWlwRDlSWU93RnA2ZmprN2xNeUljaEpQQ1ZSWS9WcUdJcS9IM0FD?=
 =?utf-8?B?NTJiRllYLzJaVEF0b091Q0ZZSnkwNXpwMnJiTE9xeDVDSk05NWF1SVBBRys0?=
 =?utf-8?B?VmdibmlDUGJYQ2Q0QmJKNHV4MzRkVWowRGtJN0xSZW9nbHpKOCtBTUdDYzFM?=
 =?utf-8?B?dEUwN0wwdUlPVi8xOE8zT3Q5VVF2K2licFAxdU53anBrcmRCL1MvR2xScTNT?=
 =?utf-8?B?U3luMlByMWNIdjBBaG1uYklzMmlybHdkVmtQYS9vRncvOENiYnZaNjEwWUtZ?=
 =?utf-8?B?MDRZM0U0bHc1dStwOW5vVUJvL2NwT0o2UlZ3SlpXRE5CY2hZWmd1aGVUNmlv?=
 =?utf-8?Q?z+uilDyCD9YtMOOeTeFZuPcQorp/wc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b2RvZlRReDlXeEo4c0ZWWWl6d0hNbWU5QitkN2ZLQ2JHZEROZ0Erbkw1YU53?=
 =?utf-8?B?b1Y1eDAvVnNWaHhRL29PRCtVVnR6eDRVSXFzOFIweHNVMW9HSFJnT21BUzgw?=
 =?utf-8?B?V1E5ZmdvZS95aGlpR0g4MnZuaFhDSndMRXhKNUFzVVQ0cVQ2V2pVdEhESVlN?=
 =?utf-8?B?eDVRYlJnQ3Rmb2FoWTlPRFZGS2pRNVlPUk1mcEhWV0g5Q2pvSWhma1J5TU9t?=
 =?utf-8?B?NGxBUm5pNERSeHhEUHZNRERsZ3NXT1QzeGVjTmdDM3BzUURkblo1MVJOR2hs?=
 =?utf-8?B?L3U2QWkxVW5XcW93bENuSmJZRFZIbytXbUVJVUxFK3V4MkNUVFRVNEVHR0JW?=
 =?utf-8?B?dDZDaDdrZm8rNUdkTjk2amtwa0wyTEZsUTBsVUxVL21RU29nejVqNmNaLzg2?=
 =?utf-8?B?a3Jja1Z1d1NBSGk4UTFmdGQrZ0MyeTMxV0owcDFjQzZJaWJhanZoZVloVFRM?=
 =?utf-8?B?UkxqNnc4VGRrekFrTWhxb1B5R0NybmI2eXZkL3Z1dmtQazVRbGNGWGE0VTlT?=
 =?utf-8?B?RHI0YlZXRGRFR015Y1BJVEU0UGFyZVFhZEJMVVd5cW1PK3UrQ0FVYjhzb0E3?=
 =?utf-8?B?UFo1WUVDZ3lQdWVDYWxVS0w5S3VyYTNrWUpEUTZjQ3VKdkl6Q1J5NjQ4eWFJ?=
 =?utf-8?B?alB4eU1zQlZuZUp0Q05VSStNRko4M2tVYm9SZWtWZHFhb05WOWhoWXowNHFG?=
 =?utf-8?B?U09JS1ZNMXlHcGJYQkQxaWEvb2hjOW1WNjFjczhLZUlPWmpMYkM5UHl1UHRO?=
 =?utf-8?B?anByN0d5RTRiZGlrRElPZkxOZEVsTThNdXBFWmVLVklHTTJNcVNDdUhxekxq?=
 =?utf-8?B?bGxsL3FxY3I4bFZSOXcxY3pINGk4ZnZZeElhNnBTaVVPRlJ3SXZ6bTAwa3ZN?=
 =?utf-8?B?RnVBUFdEUUtrcE0vNmJTTjBwcUhObllSRTB4alpBdkpDcGRaUmppLzZENSsv?=
 =?utf-8?B?WWdOR2VmTkdUVU51UnNHU0U2RG1BZ3R6SEkxZkljZDdaKzY1QzhkUExwS01K?=
 =?utf-8?B?Z2FRTUxMT3NkOFgyNE5HbDNJUmhRZlFLR0d2VUpvQUU0bWpJUVhncTUzMGJD?=
 =?utf-8?B?Z1Q0WGI2VmROYmoxejV6VTA4aHZnMGtrVzhmdmFJOG42Q3RTY1o0aVhodjFL?=
 =?utf-8?B?dkJqbW1YQWtvVENoSjdSclNkWVhYc0JBdjZLYjZYdnV3UnI0ZUdFdkMxRFBh?=
 =?utf-8?B?Y1ZJWEh0N3FFSjRVeW5tOWMvU1lLeUhWYjVGMUh0T1RzL3ZFanRxdlJ3V1Zr?=
 =?utf-8?B?allyS3BvYXFpaUwzdjY3NXlqU245Mmt2WU0vbmJJQ05ITUFJOEJ4eXV3c1dP?=
 =?utf-8?B?OVRWa0tXYkhOcDl3T3NNUGJ4ZkVjTDhZc0ZPM3duZ24zdnBweXN4WktqR1cx?=
 =?utf-8?B?N1YwY3VkcjZnRFcyTmFXbGpWSytTYS8xZ0F0T2xDYjU3bnc3czY5V2IyZG43?=
 =?utf-8?B?aUNYVlU0bFNpQ050VFJCR0RLeVhXVU5oY0xZaWgyZ054V3YyMmRrOVdsbW9S?=
 =?utf-8?B?d3U4T2JiT3ExL1U1ZHdDMWxiTlFvNmdqdG9VeUU0eDJGbnZ0eFVpa0ZKd3g0?=
 =?utf-8?B?aWFJWGgxNytoNEZuTDBpbm5pZTFFN0VvWjRxTFA0Wm1tTEJBNkVwQ1VkMTgz?=
 =?utf-8?B?MFpHNnF2My82MUk1dzRtTG5uNHplMndTSnJydjBWOEhKQzZma2UrR0V4OHpC?=
 =?utf-8?B?bEZQSUhWY3RjbitPV2VGMWJmRmRUQXVjU1B1aytrTnlOazkvK1FrckwxQThN?=
 =?utf-8?B?OHB4bjgxdnVnOHYybmk3aE1GWU1LbXJzZjJjMGphWjBnMXF5V0Q2NWZHY1o4?=
 =?utf-8?B?eDRnSHByeks3Q2tpWFZpd3RUQzVyQzd3aFl5aE54T0IrWWd0K2I5Y3pnc2Ey?=
 =?utf-8?B?c1o0bFMwN21IeTFDTkFQQTZPMTVFNHFBVDRCVnN2YUdZS0ZJOTljOUJVMG16?=
 =?utf-8?B?b1paV2g2TUp4emlMc0ZlR3Q5M3BycnJ0T1RKVGJqeXRNN0ZnYUxobDdGeTh0?=
 =?utf-8?B?NURNVXJpMWx5YnhhTVNiV2kyWFUvZ2pSdUI4V1FDWVMrTEZ0czJ0M3lQL2px?=
 =?utf-8?B?M2ZBckNoODlOS0d4TDNjTHd3dytTdFhDdzBFWU8yUDhKeldQQUMzUUZMcnRY?=
 =?utf-8?Q?ptM8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46bc984c-12e7-4f62-8276-08de2cf46bb1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 14:02:22.5792
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7hmYJ1Lzhg1tOeOnwQQ40twm/yKDRHPD6tOirwBjbFOwQmUug0y5EPXcySJtorP2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6394
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,suse.de];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.196.43:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AF9983F80B
X-Spamd-Bar: ----
Message-ID-Hash: I3QNQHANHN37ZVGCELYOX5HWMA4PNEBY
X-Message-ID-Hash: I3QNQHANHN37ZVGCELYOX5HWMA4PNEBY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/6] dma-fence: Remove return code of dma_fence_signal() et al.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I3QNQHANHN37ZVGCELYOX5HWMA4PNEBY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjYvMjUgMTQ6MTksIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gQmFyZWx5IGFueW9u
ZSB1c2VzIGRtYV9mZW5jZV9zaWduYWwoKSdzIChhbmQgc2ltaWxhciBmdW5jdGlvbnMnKSByZXR1
cm4NCj4gY29kZS4gQ2hlY2tpbmcgaXQgaXMgcHJldHR5IG11Y2ggdXNlbGVzcyBhbnl3YXlzLCBi
ZWNhdXNlIHdoYXQgYXJlIHlvdQ0KPiBnb2luZyB0byBkbyBpZiBhIGZlbmNlIHdhcyBhbHJlYWR5
IHNpZ25hbCBpdD8gVW5zaWduYWwgaXQgYW5kIHNpZ25hbCBpdA0KPiBhZ2Fpbj8gO3ANCg0KUmV2
aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gZm9y
IHRoZSBlbnRpcmUgc2VyaWVzLg0KDQpQbGVhc2UgcHVzaCB0byBkcm0tbWlzYy1uZXh0IG9yIGxl
YXZlIG1lIGEgbm90ZSB3aGVuIEkgc2hvdWxkIHBpY2sgaXQgdXAuDQoNCj4gUmVtb3ZpbmcgdGhl
IHJldHVybiBjb2RlIHNpbXBsaWZpZXMgdGhlIEFQSSBhbmQgbWFrZXMgaXQgZWFzaWVyIGZvciBt
ZQ0KPiB0byBzaXQgb24gdG9wIHdpdGggUnVzdCBEbWFGZW5jZS4NCg0KQlRXLCBJIGhhdmUgYW4g
cmIgZm9yIGVtYmVkZGluZyB0aGUgbG9jayBhbmQgSSdtIG5vdyB3cml0aW5nIHRlc3QgY2FzZXMu
DQoNCldoZW4gdGhhdCBpcyBkb25lIHlvdSBzaG91bGQgYmUgYWJsZSB0byBiYXNlIHRoZSBSdXN0
IERtYUZlbmNlIGFic3RyYWN0aW9uIG9uIHRoYXQgYXMgd2VsbC4NCg0KUmVnYXJkcywNCkNocmlz
dGlhbi4NCg0KPiANCj4gUGhpbGlwcCBTdGFubmVyICg2KToNCj4gICBkbWEtYnVmL2RtYS1mZW5j
ZTogQWRkIGRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoKQ0KPiAgIGFtZC9hbWRrZmQ6IEln
bm9yZSByZXR1cm4gY29kZSBvZiBkbWFfZmVuY2Vfc2lnbmFsKCkNCj4gICBkcm0vZ3B1L3hlOiBJ
Z25vcmUgZG1hX2ZlbmNfc2lnbmFsKCkgcmV0dXJuIGNvZGUNCj4gICBkbWEtYnVmOiBEb24ndCBt
aXN1c2UgZG1hX2ZlbmNlX3NpZ25hbCgpDQo+ICAgZHJtL3R0bTogUmVtb3ZlIHJldHVybiBjaGVj
ayBvZiBkbWFfZmVuY2Vfc2lnbmFsKCkNCj4gICBkbWEtYnVmL2RtYS1mZW5jZTogUmVtb3ZlIHJl
dHVybiBjb2RlIG9mIHNpZ25hbGluZy1mdW5jdGlvbnMNCj4gDQo+ICBkcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMgICAgICAgICAgICAgICAgICAgfCA1OSArKysrKystLS0tLS0tLS0tLS0tDQo+
ICBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgICAgICAgICAgICAgICAgfCAgNyArLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9jZXNzLmMgICAgICB8ICA1ICst
DQo+ICAuLi4vZ3B1L2RybS90dG0vdGVzdHMvdHRtX2JvX3ZhbGlkYXRlX3Rlc3QuYyAgfCAgMyAr
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL3hlX2h3X2ZlbmNlLmMgICAgICAgICAgICAgIHwgIDUg
Ky0NCj4gIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICAgICAgICAgICAgICAgICAgICB8IDMz
ICsrKysrKysrLS0tDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDU5IGRl
bGV0aW9ucygtKQ0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
