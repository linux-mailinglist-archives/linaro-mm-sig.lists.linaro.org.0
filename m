Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wF9vJTONeGlprAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 11:02:27 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1764F925A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 11:02:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39EAA40140
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 10:02:26 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011001.outbound.protection.outlook.com [40.107.208.1])
	by lists.linaro.org (Postfix) with ESMTPS id 267613F726
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 10:02:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Op5Sd4y5;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.1 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LjkGa7KPpZe4a1hSY9FTnsWsj8qyHoKPqt27M6R/8+K1FCB7qCUNxcJhnNpQzKfgsMYl+rQmwsjU3eZjuytHGHZ8PHOINJwe9BDTGAs8nOFwGpxn18b5HO6MT/19KDsGaPdpbi1qtt3TnBkcP1OPlb9n02mtKrU4AhMVv+vhCCG+SMgTbNJTpNqNhQnm2Seu2TDNgLgL0P0P2sT1WobNZf4cPUYokxRH0HYO2gUj1bB7vE1bFvpm8bj31QDwJISUFyE74HilzhWmNBz95hJK3tA+SINRAgSoCKfl4cEMsDmNTzA1EdXXbJntSlNBtkXSwmClv0HVMzzXv5A4E//ocA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a5OG70meHMNFS9hLg4HUd2dgegalGNxG1begs2OWnbg=;
 b=jRDGhpWa9IMp9NGYg958bmMHLJePi8zribrOC48VlP5zpOtFJ5FAoZvkvbhkmPJ8ZHy8G7K4iN60fbufgjdsGis2XTWE5wbwfTmD6l9FrgLuXT5UE0dyvXvM/EZNojMtc5a7v8tMLnMWyLK2rXjYdaJmn2vLgbma4/XzG+5DrjSxhfn14C8YI5CKRPryo908oLyCLWYo+cAlDqoPbEP9lc1cdtLcY43DsPZZZAlVr1GJZvEZx3+/Wm8ta6az6TZdclBEGrfzV6y1rl2dMRNPOl0yVM+FlmrP4IGzWzR6UwQuu798hGQsUTlsCd55KFkVIxKqs4WwvxfZeaG+T3/DTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a5OG70meHMNFS9hLg4HUd2dgegalGNxG1begs2OWnbg=;
 b=Op5Sd4y5+e6a8mi5nqdl5y63wFNi/BhEI9tVnr/wcu6V8ClrEYdIGWvJ5JqEfot9U/y4YPYN1iVjPtDz90Z07ISwEZd+/GNR3+32NycOD3dKhBJWlU4rlUYHEPGYmZOxXq0GpC9Gaxj0vbKAOHlJX6jAI79pjExE4iUbwREGajE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB7263.namprd12.prod.outlook.com (2603:10b6:303:226::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Tue, 27 Jan
 2026 10:02:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.009; Tue, 27 Jan 2026
 10:02:16 +0000
Message-ID: <83cd911c-99ea-4fab-821e-fcf703209731@amd.com>
Date: Tue, 27 Jan 2026 11:02:03 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-3-f98fca917e96@nvidia.com>
 <0d2ec2d6-c999-45d8-a2bd-b5b21883db47@amd.com>
 <20260127095831.GR13967@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260127095831.GR13967@unreal>
X-ClientProxiedBy: BN9PR03CA0850.namprd03.prod.outlook.com
 (2603:10b6:408:13d::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB7263:EE_
X-MS-Office365-Filtering-Correlation-Id: 074df125-e27e-4bf3-9200-08de5d8b26cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?S0N5YmZtczlOYmFodjZ3b1RWTWhEWEdFQzNWUWZtU0xFODQxbS9CSHZodkJ0?=
 =?utf-8?B?ck80TUQzYzcxd0pBdUR5di9qcUF5VjBvNlY3aTEyWmRlU1FZamsxa1ozMW1Q?=
 =?utf-8?B?enlaNU1taDgxdW1BYStwZDhvVnk2OUV3cGtrUmMwdjQ2T09mY0JCV3hSWVI1?=
 =?utf-8?B?NWh4dHhUZTBLQU1CN1Mya0VQZ3RMRzZqTTZjSncvZWdQLzREdjZPYzVrOTI2?=
 =?utf-8?B?cWtuaWI4ckZwUFUwSFR3WTl3bVhld29YWCs5TkxaazNua1dDRllaeFVvMlVH?=
 =?utf-8?B?SU1iN3B6M3c1L0t1Y2gramhFQy9YaFRuTTJ1Szc2WkJCRGMzcE51NW5IMVl2?=
 =?utf-8?B?RnJpR1hPZUFsdmMwRU5rNEI5VVM5U0wvT3RmOEdrKzN1REhZcVdrMWJYVHd5?=
 =?utf-8?B?N2h1UExsQUR4Tkg4bXdxbTJ0TFA3Z0FPd21tQmp6Qk1RdjU4MFR2Y0doOXA3?=
 =?utf-8?B?WTNpMFNXT2xRcGh2NGVLSlFrVlF5eDJxNDhuNndlZTJtbTZUQ2srTXpCUWNa?=
 =?utf-8?B?aUUrUHAwS2ttYVB1emRYZjNWTEh6VmJLTEltTVArNlhuNkQ0bVZzVlRYZGVv?=
 =?utf-8?B?QXh3eko4dUJYVjFNKzN5b2puZDgwSEllSTlWZ0laazlrWFBlbktOYjBYWnVo?=
 =?utf-8?B?Sk9PWi9qT25OcHNPVEhZUDlkTGsxWjJhbVZSTkpZYWFVNVRQY3dVUEYxZ0s0?=
 =?utf-8?B?bnlNeUp2YlY2TkZVRE9EOGVmSWFtU1ZIclF5S05MT1RyUzdhZjNpUEJxTGVv?=
 =?utf-8?B?WFVsZmNiSXpua1Z5ZncveVB1Y2psK05jL0QzT3FURkdGdU1qVmp5ejA5Q2ZR?=
 =?utf-8?B?T3ZRcG14dmgwSDk5RldyWm9qVVFJVzhSZUVWM28vSGNUYzdKNVhzWVZBNDJZ?=
 =?utf-8?B?L0pSSE1xQ0lObVB1dVFtNWJmdS9tTkhSS09HYjdFUWZhSWEzREk0R2hTVXZk?=
 =?utf-8?B?MzBaYXRyRElCMkloZEtUNU5QcE1rdUpPSFIvVDdVbnY2RGlBb3ZZVXpYZm5N?=
 =?utf-8?B?MDdJdDB5SkJKZExlMmp4ckVjWis1YVZEWlEveVlVRkl1Ny9wVG1rejd0VUV5?=
 =?utf-8?B?TDEyMVhrV080YmgvMkRBVVVlOGNlcEJpMldsZ0Zwd1JlWElGVS9FNkgxN3Yy?=
 =?utf-8?B?RExqaHloaFpSYW9BUEJKamYxOXNweEVJaGhyTzZhaXdhQVQ4MFlRQ0txc1k2?=
 =?utf-8?B?YnFzSnVhdENyMkppbThRVzIzZmUyRHZDRmVyMlAvUGVFTHhrcVZBeVFvbmlI?=
 =?utf-8?B?MUJaV1phRGRqbG44UGdhUFk2bU0xbFphYmNZT1pYSXJEdjdZaGJJSGYrWGox?=
 =?utf-8?B?Tk5KZzg5YTNxSXB5d2pnQ3M3anRIYXlrTkZVbWpzOTBST2FJeFQ1Tkl1MXpm?=
 =?utf-8?B?aUc3NWg0cnhuWEpSQmZIMHp0N2RBNG41VXhaWXFXYSs2MUhDMEdYVkFLQmlD?=
 =?utf-8?B?a3FhYldwckdoVlo0Q21pU3ozblcwb1hZeU9mL1JWa04yUmFsV0RsOEU5Y1pz?=
 =?utf-8?B?d1VnVE1waDAxc3ZRb1JQb2E1OENVZmFpYzVuQS9KSGZSN0ZYZVJHOVp3dGlM?=
 =?utf-8?B?Zlo4UjFXVTJBN2pVVXFoQnJVdUltMHBlbVNTeG5TSTU0UFdCMm41VWdMajAy?=
 =?utf-8?B?ZkZ4UGtnQzgwd0U0Z0VucW9rVmF6K2NRTWg4c01SUnBmUStFczEyR1lkaks3?=
 =?utf-8?B?YjVBVTMyN25MU0xpY0crd09LMmp1aUc5YnJINnFtZzRmREcxSmFrbVZjN3hq?=
 =?utf-8?B?NDY0V0pJelRUZXptYURJeHdaVkc3emhpQmVsWmxvNWcwckJ1b2lIWUpac0Zw?=
 =?utf-8?B?Q1FrNnhCQ2hBd2V0ZHFyOWZmdVFnYkhDK0RxcDBSWVlPRjB0ckN2cjZKeFoy?=
 =?utf-8?B?VVd5bXlkLzAzTjhkeGozTGErWTQ3OFc0dENrY2d6UXZ4cmVZSk5UbkFOUmNq?=
 =?utf-8?B?UEdBR2htcXpPYXNZdUJRbnYxSkFhclVtNmZhKzhHbjBDY3RTTmVLYUJIYTMx?=
 =?utf-8?B?T3VheWdKUzJLZFpYQTZCOSs4K29naXp0YW14NWZBUENpVG1kMXlPWSt0dGpo?=
 =?utf-8?B?K0p5M1I0dS9CMkVrajhLbk51ck50ci9mL2tKT1BzY3BMNVdHRXFzd0JuVVFT?=
 =?utf-8?Q?9soA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eUdmdEgvOEZDTXZYZmpQUWdieXdLUktnOGJyOHZzQmFIditkVUV5bVFJVHVS?=
 =?utf-8?B?UTk4cnNvVmdoMGwzMitMY3g2QWgvUExZeUxxeE5ya0FBUVVTcjZlS0FNVkQz?=
 =?utf-8?B?bmtFa3loSGNwMTBRNWRHeXhxVzR2eFgvM05NSXhadFpNMkc3Qys4dkNBZzQ1?=
 =?utf-8?B?QkgwRHBUdFhRS2tiOFFhRHhaZm0zYUxEWlArb1NtUGtRWDlzQ05ocnpnd2x6?=
 =?utf-8?B?VlhuUlp5T2JRekEwRXVrRU1jRjhuNERPWU9kSy92WDJiUTlGM29US0FIMDda?=
 =?utf-8?B?UThjVXMzYmVpRGhyc2Fad0RVbjdxbVBraFhIZ3VERjJ4QWZEWi9Za0crT1ph?=
 =?utf-8?B?cHRkVW1iQXg1T0V0S1VGSkdXNEFpMlVNZUt5a2RSZmdNY1lWSCsvUUtCbkVP?=
 =?utf-8?B?eDdoZWlDc0d1Q0xhMnNiM1daTW5abFRWWDJjNzVQMGcyNnhKMjNrZXpzNnRX?=
 =?utf-8?B?dHZRYmhlY0xGY1piQ1kyV3grdWNJaC9Mc3ZKL1cyVC9BeWNvdklianNFZ1Ar?=
 =?utf-8?B?ZFR6UjdsU0VmZXZZdytBUWZEVEw4SFl5ZVlzVWJvU09iZXRGdlZidnYzYVRO?=
 =?utf-8?B?OFBOblRQOVZJRTdJdWVXREt0OVNBazZnM1ZnYnlTQTA0ZDEyYmdsc2VTcUcr?=
 =?utf-8?B?NTZXQVYwVnhJTUxUTmx4dlJ6SWdLQUkvK1JXRE04QlRBcmdZbXFKa2s3THF5?=
 =?utf-8?B?elBJaHdHY0crdk1nOXI4QW12Q01RSnFOMVZWeGtUOHZ2QnB1NzZpejI3Mzhu?=
 =?utf-8?B?YmVKVjdhWUFWbTVFMzdmZThGcWFFc3FjczE5UkhzcVVyQkRjeW1xZFljQndm?=
 =?utf-8?B?UVZRVGpMK3lkb1ZOeWY3WjZqKzRISTZ2Z1MzTTJRRjRXbWlyQ051M3RWTXdI?=
 =?utf-8?B?L0ZYSUVsVE4wYy9ycVBMejhjZlVJaFh0TGhPcmZOT29LbkR0QlpNYlFWUGw0?=
 =?utf-8?B?Y0NGaVFjdmR6TUEvdERMTGhEQVMyc3hEYWt4U0tOU0JLb1Nvd3VSYlNPWEZG?=
 =?utf-8?B?ZGVvc2Y2ZGZLeXB0dmUwM0ozaENTT2JXamtCMHdkRllJRlpYbmZqbEdiblh4?=
 =?utf-8?B?MWdpSWZXYW4vUCtDaGJYQW9zbXg4MjlXNHROZXVzYzkwY3cxUy9VaVRRTUFO?=
 =?utf-8?B?WU94aW4zY3FZK21WckEwdEk3MFZHSnJmR2VIVERZMmI3bFVhUUxlRXpPMWUy?=
 =?utf-8?B?SFRuTVZXSEdNZEFKdDNTQUd6ZDE3UmlQcDVrK3JqaHN0cmNIUzIyL2F6ODBX?=
 =?utf-8?B?ckMvMmhVTHJYd05MSnZXU0Q3WUlScGtYV1d4dlhWTjBETUZ6SElYVFJBNFhi?=
 =?utf-8?B?ZUc3TWFYZGVicUdQZm5ydXNlZCt5Y2c5ekVOcG1aVlpGakhBUkFnb0tsS2Qr?=
 =?utf-8?B?T1ZiTG9VVlBzUkJoTno4anF2QVRLNG9ENENkWE1RTStCOFZsZ1NVWVlaRW1S?=
 =?utf-8?B?TGMxYUl4RTduZHdsR1RQamY0QmI2RWQ1UWlwZDh0KzBydDAzSE5hVHdpU2tN?=
 =?utf-8?B?QlJBUFB3aXdyV1F5ejlaU1pQdEZEb2xRV203eTNBM1ExTmU0V2Z2UlBFQnp3?=
 =?utf-8?B?U0FreWY5T0RHdm1yY2grc1JCbncxK3VaOUVvWVZKcWl5OFdRTkViL3cxOTdq?=
 =?utf-8?B?bFpyUWxBV0pIckdkaldsSU5PNHA0U2xlTkhiVElmcW5VSTFqSlM2NGVuMXpR?=
 =?utf-8?B?dkZkRkJyZEQvNDU2SUs2VjIrZXIvazZSZ1c4TmE5b3gvRm80cHdnQzhlMnJO?=
 =?utf-8?B?cDBiWnlLbG1LdFJDNHpzQU4yOE1QaGJ2MHNHSGpwb296cVBWNE9zcW5nRzU5?=
 =?utf-8?B?VGlGNW54eVJZQTNWRWEyeitqSjBIb2RwblRSU3d2d3N6WUlnOFJJOVNPd0Ix?=
 =?utf-8?B?MVRTMzAwcmRTRmRiWXdzWk1pN2FJOHlIMXpTd0o4OWRnL1ZpNGRIWUQ3bjc5?=
 =?utf-8?B?VDVFd1lKeHBpOGhxVzczK3dhdjVkd29tR0w2UTNBcFdXUUpNV1lJdXl3L0ZY?=
 =?utf-8?B?YUp3NlFUcmtSRDRUZEFmS040QWdMaWdZRmEwY2hGelRZOHpLU3Qzb1lja2U4?=
 =?utf-8?B?T3RtQnNleTVrRXEzM3hyVVN2THc1eG05bnJhTWJoNlRuSTYzT1VHMXQzbGVV?=
 =?utf-8?B?RzlmZlQ0ak1mMFJ6cDgwczNXaHFrdWZOL2FJSlJNRlI3L1dhR0tnVnJwRmUv?=
 =?utf-8?B?eTlESkRVK2JXcmJ5bk1nVll5NnoxUmJONVBMSDJtNEx3YUFsWjRGS04ramRw?=
 =?utf-8?B?Mk5vTndyWGRqbGplWWxQQm1GZUE1RGVxSkdjMFYvbk1HV05nSmdHQ1hqbENz?=
 =?utf-8?Q?WqOhCM8APO6L25QH6X?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 074df125-e27e-4bf3-9200-08de5d8b26cb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 10:02:16.7533
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c/5aUzbgDB5/NnCfXXNdvCr1DqRs+RQlGB48aCIojHsQrUysfaq80Gxl3Qz8XdYX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7263
X-Spamd-Bar: ----
Message-ID-Hash: KDMQ5H5CLHVRQKEVWZOYORTVA2MWPDMH
X-Message-ID-Hash: KDMQ5H5CLHVRQKEVWZOYORTVA2MWPDMH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@v
 ger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 3/8] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KDMQ5H5CLHVRQKEVWZOYORTVA2MWPDMH/>
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
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.778];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,v,lists.linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 1764F925A2
X-Rspamd-Action: no action

T24gMS8yNy8yNiAxMDo1OCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBUdWUsIEphbiAy
NywgMjAyNiBhdCAxMDoyNjoyNkFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8yNC8yNiAyMDoxNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IEZyb206IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBETUFCVUZfTU9WRV9OT1RJ
Rlkgd2FzIGludHJvZHVjZWQgaW4gMjAxOCBhbmQgaGFzIGJlZW4gbWFya2VkIGFzDQo+Pj4gZXhw
ZXJpbWVudGFsIGFuZCBkaXNhYmxlZCBieSBkZWZhdWx0IGV2ZXIgc2luY2UuIFNpeCB5ZWFycyBs
YXRlciwNCj4+PiBhbGwgbmV3IGltcG9ydGVycyBpbXBsZW1lbnQgdGhpcyBjYWxsYmFjay4NCj4+
Pg0KPj4+IEl0IGlzIHRoZXJlZm9yZSByZWFzb25hYmxlIHRvIGRyb3AgQ09ORklHX0RNQUJVRl9N
T1ZFX05PVElGWSBhbmQNCj4+PiBhbHdheXMgYnVpbGQgRE1BQlVGIHdpdGggc3VwcG9ydCBmb3Ig
aXQgZW5hYmxlZC4NCj4+Pg0KPj4+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNr
eSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pg0KPj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+DQo+PiBBcyBsb25nIGFzIG5vYm9keSBz
dGFydHMgc2NyZWFtaW5nIGluIHRoZSBsYXN0IHNlY29uZCBvciBJIGVuY291bnRlciBzb21lIG90
aGVyIHByb2JsZW0gSSdtIGdvaW5nIHRvIHB1c2ggdGhlIGZpcnN0IHRocmVlIHBhdGNoZXMgdG8g
ZHJtLW1pc2MtbmV4dCBub3cuDQo+IA0KPiBIb3cgZG8geW91IHNlZSBwcm9ncmVzcyBvZiBvdGhl
ciBwYXRjaGVzPw0KPiBDYW4gdGhleSBiZSBxdWV1ZWQgZm9yIHRoYXQgdHJlZSBhcyB3ZWxsPw0K
DQpJIHdhcyBob3BpbmcgdG8gZ2V0IHRocm91Z2ggdGhlbSBieSB0aGUgZW5kIG9mIHRoZSB3ZWVr
Lg0KDQpKdXN0IHdhbnRlZCB0byBtYWtlIHN1cmUgdGhhdCBDSSBzeXN0ZW1zIHN0YXJ0IHRvIHNl
ZSB0aGUgZmlyc3QgdGhyZWUgcGF0Y2hlcyAod2hvIGFmZmVjdCBldmVyeWJvZHkpLCBzbyB0aGF0
IHdlIGdldCBlYXJseSBmZWVkYmFjayBzaG91bGQgd2UgaGF2ZSBtaXNzZWQgc29tZXRoaW5nLg0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBUaGFua3MNCj4gDQo+Pg0KPj4gVGhleSBh
cmUgYmFzaWNhbGx5IGp1c3QgY2xlYW51cHMgd2Ugc2hvdWxkIGhhdmUgZG9uZSBhIGxvbmcgdGlt
ZSBhZ28uDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
