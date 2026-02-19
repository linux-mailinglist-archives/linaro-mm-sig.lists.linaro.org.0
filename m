Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EA+iOcoGl2lWtwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 13:49:14 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A22D15EB04
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 13:49:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42484401C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 12:49:13 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010054.outbound.protection.outlook.com [52.101.201.54])
	by lists.linaro.org (Postfix) with ESMTPS id 70F423F6F0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 12:49:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=NNiFOeEI;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.201.54 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UuNu9Ppl2MjKf6HWeCyEXk9LhCAWH8GvEVPhsB0tu/3HuH+//NIj3BYMEuEGEMLitP97rwesjt0dzvqGjyPWGtvZWCsCUupu8wOyQA7a1PIeSsqVB0fAjYWhXPO7Dj7DR1QEI3mNsD9sKtT0rSLm8gmQz8YTjQFKM3vAmIlbmcbM8ECbdvF2xxplZ40PJ8aFriYjHnSItWfWM5X1yx/ohEDg38zUKo5wMcdQPOlYC6jRM2LGMa4vpwVj58IKraJAu9MqtYLQ8fuCvnY+u+SMJkW9RWLPqaaC9lZrJtRkfkkTFsj67iLy42JZEulID4IxkS8wh9Sq5OE/dsianYHioA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=omLmkGEJjmpqyWoUjKGDA6Oa1iQhSWT/QQDYkllHxwk=;
 b=eM2ywDQ1L4SIf4mSv2Y/boBLCX/Ii3X+yAOx6Z9SVmpE3raW+yC42UakN7fmSzUSe0yBJbFTRlhvNLR1OzSbh4+uzn3mS9hO61UQnTaF6tTu0CDkzvkE6QBvdRyilmJHAfhdTdnWt5hXYARO6ec2Lg7DLxs73O0xTCbp5vagDk5DxAGmVL8sFC7RGVkqD0rSHPXS9DP1bqi3QjQ2r5uddSh9jWITYxFJxNTFSbpIALulH4E/lsfq+MrZHbgHcbkmCcfB8zVKsnHxRtVgCcfksVvZw+deGquNCIoOWYtfdN093FO7ij6Hs/HlzTPGhSQQ9A+BJSLjAXH+iCQ41Uxvyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=omLmkGEJjmpqyWoUjKGDA6Oa1iQhSWT/QQDYkllHxwk=;
 b=NNiFOeEI8QCyvDCHNtLqxbAxKepU91pr8ycy8+gdpWxBxHXzLfUCYOTe/30OaxdUT7Whi5v6hRr14fiaBvRIjaxCe5KOKgs0FuH4zhaBLT6PadgigvqpVAxZJY9He8AqM6ib/fx8uRAVXxTx1GRTaRJzxI4mnQov7ec3jpkFSdc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH2PR12MB9541.namprd12.prod.outlook.com (2603:10b6:610:27e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 12:49:05 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9611.008; Thu, 19 Feb 2026
 12:49:05 +0000
Message-ID: <78a4d1de-0e0c-486a-8054-1a89d6db15f0@amd.com>
Date: Thu, 19 Feb 2026 13:49:01 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260210102232.1642-1-christian.koenig@amd.com>
 <20260210102232.1642-2-christian.koenig@amd.com>
 <f1345723cc5a61cdec5a6f168f71a323b822b7e2.camel@mailbox.org>
 <f357c2fc-3c72-42ac-b079-849222de4c6e@gmail.com>
 <9f929535744546bcb4eed26f6c27b4497ebc37bb.camel@mailbox.org>
 <53a84ddb-9202-48bb-bcb1-e76ee3097eb7@amd.com>
 <4d5d718fb646f8723ab31452b906f9bfee029e9f.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <4d5d718fb646f8723ab31452b906f9bfee029e9f.camel@mailbox.org>
X-ClientProxiedBy: FR2P281CA0071.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH2PR12MB9541:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fd009f4-7ea0-4234-c4ef-08de6fb543e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z1RMOFhvUjdCQ0Fjc3ZEYUNZcVcxaytabS9aOVZDbU0wYXQyTzVod1djajBr?=
 =?utf-8?B?SW5hOHpBYVpnaVZrVHowalFLYzRDc0tTaVYyeithYjVPcnh6cmQreDhFTjdF?=
 =?utf-8?B?dExvbDVTcXYyS0FWQjhydFFxWm9vOE5HQ2tiTFBUWmM2YTRYdlJkejFhQksv?=
 =?utf-8?B?S1lLL2UvOVBrN2ZFU2FOQnVFc3pUZktCcEoyakNOaDdtZjRWNGZFc1VGWmVZ?=
 =?utf-8?B?dExzQXppTE5vVHk1OW9DN09VakFIMkpTbTZ6QjZabnJjR1dzOThhVXp6Y2U0?=
 =?utf-8?B?R1B6bzZuVS9nSHRHTmFKQXQ2ZWVQMWtZVU5ESVUvYUxJRnVYSFFqUXEwT294?=
 =?utf-8?B?K0VBWml3Z2dsZmo4TkJFdjV5a3hERnMxVjlqZytEbmdNVnRMWVNadUdZc0tX?=
 =?utf-8?B?ZjZhTldFTm1wZjFxVlVPc3U1ZUFLNEk1WjZpYlhSWXArMTdVU1NlSVhXYXd5?=
 =?utf-8?B?OHdZd2V4bk9xZmVJK0FBS3p1dWtHaElqWGpOanBsdVIreEVxNGhrMkJtcTg4?=
 =?utf-8?B?bVpYMks2b05EWjhZM3FvbmlhTzlJemJBWHBkSWY1N1FLSVJEMjF1eEpRNFRm?=
 =?utf-8?B?clNnayswazhNT05wZkJIWU1oazE5K3pBelU5K25KRk5nSmUrZlBZUkNoRXVW?=
 =?utf-8?B?SG83RUdteHJOZWVRZG4wcTl5UkJySlRsblBmU3NuVGZZb3EvOEIydU90cE8x?=
 =?utf-8?B?SGN2cjdNUGdWM1pLR3hGVFNpaGJLeWZ1Rm84T1ZDWXliajFkMm5PU3ZobnpJ?=
 =?utf-8?B?TytPQjFrK2Ryd3pXMm9xeUV6d1lac3Jxc2wwMno5Y1lpRDltaUpGaUN6dWJX?=
 =?utf-8?B?aXg5RTJMVmFYT3BIdHpPYnZWdjYwWDF1YU8xRVNjRHFqY0lNMG05MVpCRmRU?=
 =?utf-8?B?TExrS1FnOUpuajVNN3FLdGtzL0toL0htQ1duZ3F5RFM1eEV1NTJhcFFuT3VB?=
 =?utf-8?B?b09FU2NKRHNFOEUrN3Ruck1VS21xdFEwTmMzQVh2cDNVVHFHQk5abGRBQkVG?=
 =?utf-8?B?OEM1WTRVMGdiMVkwUWg5QWpaRWNvdTJpOVVsQjFKWUZJTkp6c0ZmWHJIUHFZ?=
 =?utf-8?B?UFR1NTQzUE5wRUxFQ2pjVGdNelRrSlBjUGJnR2dSRzZ6cE4ySzVLZWpVUHpH?=
 =?utf-8?B?WGZ1YURaTHoxUjFja1dZeDFWd3FTWGFMK2dKcGJuV01zSmV5VDgwbU5aY0dz?=
 =?utf-8?B?MFhIQnkzUkp1a1IxbWJtR3Q2WlB4M3hDWEl6NTdrVmk1eVdTNTI0ZWM3L2JC?=
 =?utf-8?B?YWZQU1JRRUZPaSsxajB2b2pzTjJ1YkhHT1E5b3NCWExlV3VIVTdmcjlHSGhw?=
 =?utf-8?B?cXJ6aWpBVnp3NXRVSlFsZWZCdndleVo4YWNmdTB1UDVqMGo4QzFFcEJZN2FI?=
 =?utf-8?B?MldWeUJNMTl6aDVsaURpU0ZNUTdXV1FoUFVWNnpZQmxVT2RJMlcvbkFyY2dH?=
 =?utf-8?B?M0FwT2dJU3BjOHA2bURFak0zb1Nmb2RaQ2dUZmNpcmtBaHZ4a1dGTUVkSkpF?=
 =?utf-8?B?WXBMcFVDb3FObDFjM2Q0K3FoQ2lLaVVkcnNMWlo2K1ZDaVcyZlU3bjRzM1Uv?=
 =?utf-8?B?V2F0SEVvMllBK3ZtUzJCRmxwR093b1FpK1czK3prREE5YXQrQTl4TmFySUxZ?=
 =?utf-8?B?N2I3TmVsVWsxbHFpYTk4R3UxUk5oZVdqYTlGRjZLbE9EaE14bEQrSnRtUG9N?=
 =?utf-8?B?amhlVXNFWVdXbzFNTWs1cklXam9YSEVlNlVIQ3grcTRRYnBWSzB3c2ltN3da?=
 =?utf-8?B?WlZSdU1OQStDVnhEZDY5aVVCVzZFdGw1MTM5Si85bE1UT0g1VVlGU1ZXcXJV?=
 =?utf-8?B?ZUQ0Q0hIZTZHSk9SYnU1MVpjRUxRdE1TVWhJVFpQQVoxNkVRbkJGREh0Q3NH?=
 =?utf-8?B?R1RwQ2NWa2t6c2tsVVhrVEM2L084R0xWYkhSaUFKbmtRb2Y3aWk2YlEyZmlB?=
 =?utf-8?B?TWU1RjRZMXZGdHo2MHM5TXljcmYwWkVIOW9WV1A2WHdUV0NTVmh4NVM1UGZR?=
 =?utf-8?B?VC9EUGJFL2crNDRIL2dNQU9UdDdSTFMzNEZvNm4yUFlHQU9yYzRkVHMzL3JV?=
 =?utf-8?B?OWMwdUlyVVl6S085U2dRTzAzU1N2blpSekxmK3p2QVFFblFRMkI2dlY3QTVD?=
 =?utf-8?Q?2Noo=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZkVaYk1yZmNRalAyV1pOSk0xLzdNREx6blNBMTV6N2IzaDlnNGliZEczT1hS?=
 =?utf-8?B?bXRyZzVZYmZsYVc3S1JEV3M2T2pyM2YyQzd5L3JYMmlEWDh1Wnk3azF1UVp1?=
 =?utf-8?B?QWJKeGNOQkdhRW4xR2FvTlAzczZ6QjRIcURHS3dyWEUzUE1xQVpDRzhWUS8r?=
 =?utf-8?B?Vk5sbExaZU4vbnA4MDhaOHpuaEhpaXdoMTRmL3QwRGo3eS9hQWc3WGplaGdV?=
 =?utf-8?B?MkpWM092dkR2R2F3QURhTWtsZWhQK2hLY1FwWUZoZXJjZlBHbUhBMWlZcHFR?=
 =?utf-8?B?YkpzYTlRTjVjOTdURUYxUTYzL2M5QUF1eldNbUNTSnVHL0JMMmd2KzU0TTJw?=
 =?utf-8?B?emIxa1pBOGc3ajZYbldFaW0wYVJQV05kQTV1QnoyU1JJMnp0NXlMSU1IM2Rm?=
 =?utf-8?B?OWZEYTMzQ2NJcUE5YVFPUjcyYlJLS2tVMmxHeTZLMmhJa3ExRzNBdzJMRVFw?=
 =?utf-8?B?SjBUQitMYWtWU3orejg5dGJBdWp1ZzIzS2tvM3J5KzJCNHI5dHpTYVpaOWNr?=
 =?utf-8?B?SjI4cXhGRGpRZmRJUmFGOVIzTnYxYWk1M2JyL25HZjlGUlFhbVJhemRBdDlv?=
 =?utf-8?B?TXFLRVdWTXFRYURaK010bEZNRnlMK2grV2pIeDYwRE9hSTRjK25HNkZtRWVs?=
 =?utf-8?B?a3N1UWJ0eTBnSjd4NzJXa0RWOEtNTjJ6T3pzT04xYVIrVm53ejBxZjdtMDVB?=
 =?utf-8?B?V1VwSnJGc2M5eGVtaEtzNDRSYW53ZHZ2R1VjTlcxbVBocDdxTnhPY1prUlVY?=
 =?utf-8?B?RVJhRkxReHJrUzBuY2ViMUNWUjdTV1diOHZlZkkvRy9qN0ZGT0Jlbm1jRy9v?=
 =?utf-8?B?WXNRLzczR0FyU0d2NXNNVFVQZTR5YUdmNGtSKzdSR0ZqVkVTNHJLN3JvS2I0?=
 =?utf-8?B?NmdmTi8rR1VTYjVCSFlzVjhGWkZNSy90UzVScERrSGZmM2RINzZ2QlJ1UWZy?=
 =?utf-8?B?QWxwaUFZYmk5T0tuNDFYUE1jZDVxZ2ZLdjcxYllnQmNVemJXdm13aktZQjBh?=
 =?utf-8?B?a0VreXo4NXYxM0xZcW4rd3NVNEtDUUhzaEZPUHhtbmErdjgxclkvQ0g3UmZE?=
 =?utf-8?B?MEdZT2xESUduU3RxSFhURllQS1BRUXRyaWxMWGFUN1A5MUhUejhENlk3K0ZR?=
 =?utf-8?B?a004ZUxzMEowMFFXTXdsRDFVOEVabVQ2OUZkZVpydG9hY2VIMXZWenNhKzlu?=
 =?utf-8?B?dGxFdUtqUDlLTjl2WlpIT3UwK04zYWFWYUtvTW56TzZpSm12VkZ2WkpWTHNO?=
 =?utf-8?B?ZzRPc2l5OEtDRnlheVdBVFkrZWFScHBQYjQ3alBLcWwzTDZMY3NPUXArV2Jt?=
 =?utf-8?B?akp1S0dUZnNyTXh3WWJackJoU3Z2dkhYQmpPV0tBZVZzbS9DejdoRnJTbEd5?=
 =?utf-8?B?ZGFOWGkyQUI2SU54bU1rd25YNE8ydTVZWDNUb0NwWVpKM1cwNXM2Y1hkUWlE?=
 =?utf-8?B?VjhaOEpPbk0vS2dTOHIvRVVPcmlsYWp5RGY0dmI2M1NnN0hIUi9tV2NZNXFq?=
 =?utf-8?B?ZERqYjFxUW1XSnRoR0U4dnRiMUxUUml0eTdoTTZRYTY3QVpDTlM0Z1J0VmpD?=
 =?utf-8?B?NnNrbHZzc2J4d1pNSHZVYUVHR05CcEJTYmVpdVE1OUZRYzZpOWtqMG5UTUE4?=
 =?utf-8?B?NnhIblZucEQrVS9WaDhHbHQ5dmxpMkRCMFR4U21aVnFRMTQxVWZ5UExsMHlL?=
 =?utf-8?B?eFZ5aUlxS25qekdwVmpxMDJ5OU51akJ1ZHJlTnJSQXRJeTcwTGIyRTlRR1U4?=
 =?utf-8?B?N2h4S3VJZDRqbUQ0YSsyaVd6T1hPdHcyNjBFZ0ZxMGN3a0dJTlhWcVBkTVhL?=
 =?utf-8?B?UEV4aDdjcmZiQUtyZEFEYkh0YmYyV1dPaktXSE5wTUc3MG9IZmdaYnhISk5u?=
 =?utf-8?B?aURybzFPdllJY0o4VkdZZW5waVpIWmdEejA3LzIwaWg2dTgxTWNhdjQ3dzFv?=
 =?utf-8?B?SjlQUDZvM3VuRm5EUnBaMmhCN2lZTVpHdFZEYnNrNDVpUERXRXViN3NYYlA4?=
 =?utf-8?B?aUNtR3NRWUsyVlEvTkZiR2NIVVJkM2VvZXhaUW9iVksrK3h5cGN2M0FwV2VH?=
 =?utf-8?B?OE9sRnBaN0NlRDhmZU1KWjJGQjdpTnN6VUNTeEdSWlJwYVdmWndpWjVITW16?=
 =?utf-8?B?SjZTblJPeDJuaTR6Ym5OWDNzSGV5QlFWM0tkTHkzdmNZZXA1Tm9jSGNDR0p0?=
 =?utf-8?B?MkFXaUhrUjh2aTBQQldoaVM5eTJ5bjRFaXhBTkY4Y0hvM2NjUWF5bGNzSlNB?=
 =?utf-8?B?THNFenlpRTNrNVJTZzRtL2M5ZHl5WGtIQVZ3TFRrY1R2dGFIN0hrQi9PSXZ3?=
 =?utf-8?Q?ZcQ2gY+HTrVFDjji71?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fd009f4-7ea0-4234-c4ef-08de6fb543e9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 12:49:05.5661
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKdWY1bXlMytcG6jqoaWcxBDF1Ex7+mY7O61cSRgX3pNGx/5Qtrz4y8PrkfgxqxL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB9541
X-Spamd-Bar: ----
Message-ID-Hash: WV5I6BQCTTGCA54EBOLM7HVET2M6J46L
X-Message-ID-Hash: WV5I6BQCTTGCA54EBOLM7HVET2M6J46L
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/8] dma-buf: protected fence ops by RCU v5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WV5I6BQCTTGCA54EBOLM7HVET2M6J46L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5A22D15EB04
X-Rspamd-Action: no action

T24gMi8xOS8yNiAxMTozNSwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBUaHUsIDIwMjYt
MDItMTkgYXQgMTE6MjMgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiAyLzEy
LzI2IDA5OjU2LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+Pj4+Pj4gQEAgLTQ1NCwxMyArNDY1
LDE5IEBAIGRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpDQo+Pj4+Pj4gwqBzdGF0aWMgaW5saW5lIGJvb2wNCj4+Pj4+PiDCoGRtYV9mZW5jZV9pc19z
aWduYWxlZF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pj4+Pj4gwqB7DQo+Pj4+
Pj4gKwljb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOw0KPj4+Pj4+ICsNCj4+Pj4+PiDC
oAlpZiAoZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmZW5jZSkpDQo+Pj4+Pj4gwqAJCXJl
dHVybiB0cnVlOw0KPj4+Pj4+IMKgDQo+Pj4+Pj4gLQlpZiAoZmVuY2UtPm9wcy0+c2lnbmFsZWQg
JiYgZmVuY2UtPm9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+Pj4+Pj4gKwlyY3VfcmVhZF9sb2Nr
KCk7DQo+Pj4+Pj4gKwlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+Pj4+Pj4g
KwlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkgew0KPj4+Pj4NCj4+
Pj4+IE1heWJlIHlvdSBjYW4gZWR1Y2F0ZSBtZSBhIGJpdCBhYm91dCBSQ1UgaGVyZSDigJMgY291
bGRuJ3QgdGhpcyBzdGlsbA0KPj4+Pj4gcmFjZT8gSWYgdGhlIG9wcyB3ZXJlIHVubG9hZGVkIGJl
Zm9yZSB5b3UgdGFrZSByY3VfcmVhZF9sb2NrKCksDQo+Pj4+PiByY3VfZGVyZWZlcmVuY2UoKSB3
b3VsZCBnaXZlIHlvdSBhbiBpbnZhbGlkIHBvaW50ZXIgaGVyZSBzaW5jZSB5b3UNCj4+Pj4+IGRv
bid0IGNoZWNrIGZvciAhb3BzLCBubz8NCj4+Pj4NCj4+Pj4gUGVyZmVjdGx5IGNvcnJlY3QgdGhp
bmtpbmcsIHllcy4NCj4+Pj4NCj4+Pj4gQnV0IHRoZSBjaGVjayBmb3IgIW9wcyBpcyBhZGRlZCBp
biBwYXRjaCAjMiB3aGVuIHdlIGFjdHVhbGx5IHN0YXJ0IHRvIHNldCBvcHMgPSBOVUxMIHdoZW4g
dGhlIGZlbmNlIHNpZ25hbHMuDQo+Pj4+DQo+Pj4+IEkgaW50ZW50aW9uYWxseSBzZXBhcmF0ZWQg
dGhhdCBiZWNhdXNlIGl0IGlzIGJhc2ljYWxseSB0aGUgc2Vjb25kIHN0ZXAgaW4gbWFraW5nIHRo
ZSBzb2x1dGlvbiB0byBkZXRhY2ggdGhlIGZlbmNlIG9wcyBmcm9tIHRoZSBtb2R1bGUgYnkgUkNV
IHdvcmsuDQo+Pj4+DQo+Pj4+IFdlIGNvdWxkIG1lcmdlIHRoZSB0d28gcGF0Y2hlcyB0b2dldGhl
ciwgYnV0IEkgdGhpbmsgdGhlIHNlcGFyYXRpb24gYWN0dWFsbHkgbWFrZXMgc2Vuc2Ugc2hvdWxk
IGFueWJvZHkgc3RhcnQgdG8gY29tcGxhaW4gYWJvdXQgdGhlIGFkZGl0aW9uYWwgUkNVIG92ZXJo
ZWFkLg0KPj4+Pg0KPj4+DQo+Pj4gQWxyaWdodCwgbWFrZXMgc2Vuc2UuIEhvd2V2ZXIgdGhlIGFi
b3ZlIGRvZXMgbm90IHJlYWQgY29ycmVjdC4uDQo+Pj4NCj4+PiBCdXQgdGhlbiBteSBxdWVzdGlv
biB3b3VsZCBiZTogV2hhdCdzIHRoZSBwdXJwb3NlIG9mIHRoaXMgcGF0Y2gsIHdoYXQNCj4+PiBk
b2VzIGl0IHNvbHZlIG9yIGFkZHJlc3MgYXRvbWljYWxseT8NCj4+DQo+PiBBZGRpbmcgdGhlIFJD
VSBhbm5vdGF0aW9uIGFuZCByZWxhdGVkIGxvZ2ljLCBlLmcuIHJjdV9yZWFkX2xvY2soKS9yY3Vf
cmVhZF91bmxvY2soKS9yY3VfZGVyZWZlcmVuY2UoKSBldGMuLi4NCj4+DQo+PiBUaGlzIGFsbG93
cyB0aGUgYXV0b21hdGVkIHN0YXRpY2FsbHkgUkNVIGNoZWNrZXIgdG8gdmFsaWRhdGUgd2hhdCB3
ZSBkbyBoZXJlIGFuZCBwb2ludCBvdXQgcG90ZW50aWFsIG1pc3Rha2VzLg0KPj4NCj4+IEFkZGl0
aW9uYWwgdG8gdGhhdCBzaG91bGQgYWRkaW5nIHRoZSByY3VfcmVhZF9sb2NrKCkgcHJvdGVjdGlv
biBjYXVzZSBwZXJmb3JtYW5jZSBwcm9ibGVtcyBpdCB3aWxsIGJpc2VjdCB0byB0aGlzIHBhdGNo
IGhlcmUgYWxvbmUuDQo+IA0KPiBBbHJpZ2h0LCB0aHggZm9yIHRoZSBpbmZvLiBWZXJ5IHVzZWZ1
bA0KPiANCj4+DQo+Pj4gQWRkaW5nIFJDVSBoZXJlIGRvZXMgbm90IHlldCBjaGFuZ2UgYmVoYXZp
b3IgYW5kIGl0IGRvZXMgbm90IHNvbHZlIHRoZQ0KPj4+IHVubG9hZGluZyBwcm9ibGVtLCBkb2Vz
IGl0Pw0KPj4NCj4+IE5vcGUsIG5vIGZ1bmN0aW9uYWwgYmVoYXZpb3IgY2hhbmdlLiBJdCdzIHB1
cmVseSB0byBnZXQgdGhlIGF1dG9tYXRlZCBjaGVja2VycyBnb2luZy4NCj4+DQo+Pj4gSWYgaXQn
cyBhIG1lcmUgcHJlcGVyYXRpb25hbCBzdGVwIGFuZCB0aGUgcGF0Y2hlcyBzaG91bGQgbm90IGJl
IG1lcmdlZCwNCj4+PiBJJ2QgZ3VhcmQgdGhlIGFib3ZlIHdpdGggYSBzaW1wbGUgY29tbWVudCBs
aWtlICJDbGVhbnVwIHByZXBhcmF0aW9uLg0KPj4+ICdvcHMnIGNhbiB5ZXQgbm90IGJlIE5VTEws
IGJ1dCB0aGlzIHdpbGwgYmUgdGhlIGNhc2Ugc3Vic2VxdWVudGx5LiINCj4+DQo+PiBBIGNvbW1l
bnQgYWRkZWQgaW4gdGhpcyBwYXRjaCBhbmQgcmVtb3ZlZCBpbiB0aGUgbmV4dCBvbmU/IE5hLCB0
aGF0IHNvdW5kcyBsaWtlIG92ZXJraWxsIHRvIG1lLg0KPiANCj4gQUNLLg0KPiBCdXQgdGhlbiBs
ZXRzIGRvIGEgbm9ybWFsa2lsbCBieSBhZGRpbmcgdGhlIGluZm8geW91IHByb3ZpZGVkIGFib3Zl
DQo+IGludG8gdGhlIGNvbW1pdCBtZXNzYWdlLCBzaGFsbCB3ZT8gXl9eDQo+IA0KPiAiQXQgZmly
c3QgZ2xhbmNlIGl0IGlzIGNvdW50ZXIgaW50dWl0aXZlIHRvIHByb3RlY3QgYSBjb25zdGFudCBm
dW5jdGlvbg0KPiBwb2ludGVyIHRhYmxlIGJ5IFJDVSwgYnV0IHRoaXMgYWxsb3dzIG1vZHVsZXMg
cHJvdmlkaW5nIHRoZSBmdW5jdGlvbg0KPiB0YWJsZSB0byB1bmxvYWQgYnkgd2FpdGluZyBmb3Ig
YW4gUkNVIGdyYWNlIHBlcmlvZC4iDQo+IA0KPiBUaGlzIGRvZXNuJ3QgcmV2ZWFsIHdoYXQgdGhl
IHBhdGNoIGlzIGFjdHVhbGx5IGFib3V0LCBqdXN0IHRoYXQNCj4gc29tZXRoaW5nIGlzIGNvdW50
ZXItaW50dWl0aXZlIHRvIHNvbWVvbmUgYWxyZWFkeSB2ZXJ5IGZhbWlsaWFyIHdpdGgNCj4gdGhl
IHNlcmllcycgaW50ZW50IGFuZCB0aGUgY29kZSdzIGRlZXBlciBiYWNrZ3JvdW5kIDopDQo+IA0K
PiAiVGhpcyBvciB0aGF0IGFib3V0IGRtYV9mZW5jZSBzaGFsbCBiZSBjbGVhbmVkIHVwIGluIHN1
YnNlcXVlbnQNCj4gcGF0Y2hlcy4gVG8gcHJlcGFyZSBmb3IgdGhhdCwgYWRkIOKApiB3aGljaCBh
bGxvd3MgdGhlIFJDVSBjaGVja2VyIHRvDQo+IHZhbGlkYXRlIOKApiINCg0KSSd2ZSBhbHJlYWR5
IGFkZGVkIHRoZSBzZW50ZW5jZSAiLi4uQXMgZmlyc3Qgc3RlcCB0byBzb2x2ZSB0aGlzIGlzc3Vl
IHByb3RlY3QgdGhlIGZlbmNlIG9wcyBieSBSQ1UuIiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdG8g
bWFrZSBpdCBjbGVhciB0aGF0IHRoaXMgaXMgbm90IGEgZnVsbCBzb2x1dGlvbiB0byB0aGUgaXNz
dWUuDQoNCj4gKlBoaWxpcHAgcmVhZHMgdGhhdCo6IFsiQWgsIHRoaXMgcGF0Y2ggaXMgaW4gcHJl
cGFyYXRpb24gYW5kIGFsbG93cyB0aGUNCj4gUkNVIGNoZWNrZXIgdG8gdmFsaWRhdGUgZXZlcnl0
aGluZyEiXQ0KDQpZZWFoLCBtZW50aW9uaW5nIHRoZSBSQ1UgY2hlY2tlciBpcyBjbGVhcmx5IGEg
Z29vZCBpZGVhLiBHb2luZyB0byBhZGQgdGhhdC4NCg0KQ2hyaXN0aWFuLg0KDQo+IA0KPiA7cA0K
PiANCj4gUC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
