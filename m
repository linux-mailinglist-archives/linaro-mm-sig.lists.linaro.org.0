Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOKEJqYHl2lmtwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 13:52:54 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3074815EC29
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 13:52:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3009E401C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 12:52:53 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012057.outbound.protection.outlook.com [52.101.48.57])
	by lists.linaro.org (Postfix) with ESMTPS id 0604F3F6F0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 12:52:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=MD6lNhAw;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.48.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LOQKpCKA8xKyfv0XjeXj1YTBlf53YTZ4laL/BaVdeccnr6dKA3N1FNg6cpSvOidJJSVOL306CK5IxA5+On/BJOOJn1SdfJVoyO4yJtDPauKwb3DLH647kGmYzrN5vFTUrvvUDD1cRwFEtl5h0y4cFBPbP6N9pAdhZOqLZzS8U+slrTYDIGSu6KE8bquMpH62P7Hg6Pp1/V9s8Egfi6tfT80atZZghSfGfwe87PI4Q9YQDtyI2nrkZ2mYPoLUcLaLvbkVh6+Eekr7OmAZw1wSNErtPyTCkAezOKDdGP+xXsdVxxtYq0RivNEfSeklaLNjT9WOAXQ2O4xj5F90wPUuag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uMvTJB+b2VrtbDibuE4J20li7RBzYQPJbB5DU2i309U=;
 b=HfzBFnP0v1Gf3G8JCI7ALq678YqUSPTzcpYxLhKzzhmP8g6tOtpOudv60GaO9IkcNoxEB+LbT2+Mp4mEcGUJiyOACysJxI/W0Al7NDuHEWSXHRPSb1eLq1kHWc2XzIrgubHrDO6eUEP58Ngomzp/p9A02jAfmHNPvWxK9UCqESOMfqY/71WrNMbMuJBTZeT4xwovnXSTK+dyxpkKVCfo9A9UzgU3Pb4DP6OzGMdGMWw5V5T3WtS6w+OcAQCdSK+wiu0aB7O7b6LMQC2bHhzbEEDLSMaGsOVMa9t86VwmldJpRbo8pVMGYoMB7AVJMHwr5MJRRDFgL1Gg4f4jeHr4ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uMvTJB+b2VrtbDibuE4J20li7RBzYQPJbB5DU2i309U=;
 b=MD6lNhAwnSh7ZZOw8cm0NE1H/pDiSRgSz6lq47EKUZziGNwHrk1DFMqdhuXADEh+9RulzrnYMIQG06DTgT8+O09cDpN+8Eclov63d9fvRDubW/hdHPmrwbf/q2XB+4qkqw09Wds1rv4n4Ov8kMQ1ppg0ABfpGUSNdz2Rm4MbKzk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB7333.namprd12.prod.outlook.com (2603:10b6:303:21b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Thu, 19 Feb
 2026 12:52:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9611.008; Thu, 19 Feb 2026
 12:52:47 +0000
Message-ID: <10fa03cc-6575-48ce-b2ff-401b6a8bf4ce@amd.com>
Date: Thu, 19 Feb 2026 13:52:43 +0100
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
 <20260210102232.1642-3-christian.koenig@amd.com>
 <20260213152257.2651e2bb@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260213152257.2651e2bb@fedora>
X-ClientProxiedBy: FR4P281CA0076.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB7333:EE_
X-MS-Office365-Filtering-Correlation-Id: ffed65e7-7df2-4504-cc7f-08de6fb5c805
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RFFiSG5aaTRMZDFRRDYvY3BBU3p1V3VxUEV6dEc5U2RKdEpoVFgvUWIwR3No?=
 =?utf-8?B?V0NXR0FSWmxTem5FRTY5a2xLbldRNUpKaHR0WWQ5ZHUzOENtNUhxeVBBNER6?=
 =?utf-8?B?UlI1NVJ4M0tkSTlUY3V0Qk1aWnY5Z2dybUlqOG1SeWpBWWxCRDJJVkxmaFQv?=
 =?utf-8?B?ZHZUcUdFejZMck9zajZRNFlKdXh4WkEyVkR3K1l0RjR5NUlVdGQ5NkxpMDJi?=
 =?utf-8?B?cDg5NTlwL2c2OHNTN0F2cSsxYnArVlhPN1FIZnRTRXd1NXZKdklHWFhaS09H?=
 =?utf-8?B?ODBZczFYN2pwQXg0ZjRiOXN0RVVUZ0dtSHdxTll6Ums1b1pqbXZ5S20rTkIx?=
 =?utf-8?B?U1lQKzFQb045QUh0TE51SkxhNzFXY1hZRkhlV2lYNFVTYkRUUThoOGZCUzZm?=
 =?utf-8?B?R3dXMWtqeTIyN3U3YTV5RmdGaFpxWmhNbkM2MGx0ZGhXTTd3MkFSbUtHenU0?=
 =?utf-8?B?TkRxcjcrUENMMWZrZHhsOWhaUlhnVGpBSmhQZ3NGaU1wSEQxZkZVeXExcG9R?=
 =?utf-8?B?QzFwVzNWMzM0OHpVV1NaSWFORkxQcE9URmxZTytLaU9SWFYvUDJ0STF0TGF6?=
 =?utf-8?B?U25PV3VWVU8ybGhmcmFkeThCcTI3VDJlRk1ieExHc2cvWVQzeXhOOGJ1MUoy?=
 =?utf-8?B?Z1dRR25JNlZWekVSWi8zT2pXcXhSOEhCTGpBYzQ3RTczMXVkUERhK09sS1Ni?=
 =?utf-8?B?Z2o2NlBOT1BsWVo3VXVEOWw1bVBzRnZQUGIvUnRUNEdwUVU5Zmd5djhtcXhK?=
 =?utf-8?B?M1I4VzFqRWZIT1doUXRPS2VrbittMHpzTVhJTVI2SzlLWUdseWtVWThGMXVp?=
 =?utf-8?B?aDZ6ai9RdEhodEpwS2kxeEhqcndRRTJCckM3S2xwMHlJOFNENDlYMC9nOWgr?=
 =?utf-8?B?SWtlRzhCNTJVa3ltZ3ZqSGhuOTA1VXcrMGdOYUxOWEdKTk5ZUE9FLzFNOVVh?=
 =?utf-8?B?cXNSd3lHSTR6UDViTVZIUVlwQU5qdFpucnMxWmJucW1VTE02NnR4QnR1anJr?=
 =?utf-8?B?ZFRkTEhySTRmTkxZenFKQ21oc2NBNk82Z3RxN0txQjlDdEpwTmJRQW9tZzN1?=
 =?utf-8?B?ODZ0RDJORWZ4ME1aWDcxVVdlZ1pvazIydnpXTzFwdnhFNWNuV3kza25VK0dV?=
 =?utf-8?B?TGgxS3BYQTIrMWxqME5GenExRWJ4M1BVa0lGa0hMazdCK2FWYmxIRWNoVWJN?=
 =?utf-8?B?ZlNSdVd3Y2d4RVNqK1BIL3RnaUlTL1hFT0VLT2h2dzRTWldKYUVsb2RsVFNY?=
 =?utf-8?B?cm43eTQrRU1RZHlyRDZ4ZHlFcXVyekZPNVc2TWxMOVFqbUtuTzIyS2tOdUJK?=
 =?utf-8?B?WlQrdE9xS2xPY2c1aU1zV0ZUZ3B5SWU2MG5tUU9yZTdNRmNNSHBhMUFUUlFE?=
 =?utf-8?B?RDZZMHVVZWxDU2lFNHZ0bzZHRFBhZUJPbUU4YXUyaENOTzJ3NkdZTnc1Y0Ix?=
 =?utf-8?B?MFlUaWRZaGR1SjhoMGw4cUYzY3V0QjByWGRGQStvZEFOUXFqcVpTako2MEQw?=
 =?utf-8?B?VjdBYmpSY3BacjdzWVFRaHMvdnFlckkxVkpkejkvSVM1U2pxRzE5QVpMVjBI?=
 =?utf-8?B?emxjeGMzck5DQTRZUm12c0Z1RXNCK0FOTFQzTk9OQVNSQTR2SFdvTmRwa2Yx?=
 =?utf-8?B?MU5pZ3VaWkQ1MFBBSXBJdjNPRXM4WmlodXJkNFZMS3lPRjdqOHlFUkZiU08v?=
 =?utf-8?B?eUtBQ2hGQUtuQVFvWldUK1RHYXZ4R2RvQUcxc1RpZVQ1cEwyYTBrU0RWNGV3?=
 =?utf-8?B?QVdjbkMzckF3S2x6WElkTG0vZVByaHJ1N2lXY3B5aEZYQ0l5dklOTkV6MUZa?=
 =?utf-8?B?TktGUXN1bjhvMkRiNWV5Q2NxTUNuODFuUERCVGt5NEtGdWp6UGhiVUFMTlBi?=
 =?utf-8?B?Q2lqWUlzenVkbExKT1E1b1I2Wm9ENXlwcXN1OXV2V0NIeU1ZbDNaSkZycktX?=
 =?utf-8?B?OExWVjJXYTIzdGFqYXBHeFFVUEgvazNIc2ZFYStCdWRBd1lKZFQydkVNN0lV?=
 =?utf-8?B?eERBN3dLU0hleGJBRUJGTCttOHpLdk5RUDFtMFU3bE9Ockp4Z2UvaDY4ZExv?=
 =?utf-8?B?V1dBM2REejlJNjdxaGVSV1ZMREZCMmhHeGFicE1QWllPVk1WK1BXL05ZWVFS?=
 =?utf-8?Q?PCks=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a2dqMEgvd3FuWklIVDhaZC9zR2twSFJMazlnWHRwNnhWa2V6K0NpUlN1cys0?=
 =?utf-8?B?YjVFUWFncStqQk5mM2I1VytKNHpRaWp3S29uMlpIUUlpOWp6TSs2cUtHK2dF?=
 =?utf-8?B?aHJTM3RFcFFGdDF0MWd4UHN0QzR3OHJnZkFqaUNLQXBidE1kNU9Da1ZYcExs?=
 =?utf-8?B?dDk4MTVwdHhhNDczZ0EzRHZxS0V2V1J0V2lneXp3ZnRiRVcvc29TSWpIRmlZ?=
 =?utf-8?B?RFBFWUJDZnZWaVdtZU1CcHh2T0E1akdIQUdyTThRQzBhVTIrSHYyUVRxbzBk?=
 =?utf-8?B?QkNtZ1lQRzh5QzZ2NndXSnFmbG9aSnh5NHVCUXhYWXgrZjI1OVZUMGw3V0du?=
 =?utf-8?B?b2Y2VEJyUFM4T3ZaMktDY0VJWDExQnhXVHhEZTBSNm85UXVOaU5XbU9EZUs4?=
 =?utf-8?B?SjVRZVhXNWNwaE45cFZtWjhZa2tlRVcxZ3RXKzZETWt5VElMa1orNG5uRjli?=
 =?utf-8?B?bys1Nk1zY1ZoczFLQnRTN0x6VHV0eExpNUpkSXVqM3FMTHQ0dWhSajZxdkdN?=
 =?utf-8?B?ZnllMlJmc0haSFhtUXdWS2N3aUlvSTlNcnlpL0kwSU91L0hUNXNlVFNONnlV?=
 =?utf-8?B?OVFCV0V4MERaLytCcGh6RkIvNVJYcDBDZjVLMkQzK0hmdVQvRlduMmJKU2ph?=
 =?utf-8?B?dFhRaEpKV0wwQkNyWDU1MWhGRS9YamtTbGF0VTJENTZJZVVGSHRHUVgwci9V?=
 =?utf-8?B?Z0hFaTdHcjF3dDBRWDNScVQ1aDh3K3FKYXZQTWtpRmQ5L1J6ZVhxUGtaV1pG?=
 =?utf-8?B?dDE3RWthL0NlMDVwd1VDUFZ6NURpdkxoRUI2aStwdlRWcXk0Wk5DT21NNGVI?=
 =?utf-8?B?c0U2TXdwZUZsbmo4UlE5bjBMZzNhZ0JTNHVVaGF5Z3FuMS8rNEdIMENpMzM3?=
 =?utf-8?B?b09YV3c0eW1YL2dMcGpjem10c1NwaU5FMnQveThKSGdWNWVmNy9tOUc2OVh3?=
 =?utf-8?B?OHJDSEpZUm52Wmc2dVlXOFNLWjZyRU5JQUQrdHl1SUxsczA4UWRudW1rcUcz?=
 =?utf-8?B?WW1UV3d4enYyaVVRYmZvQStNVzBjblIxYVlDU0VwWFhUUXFIcWh0RlFIZUFU?=
 =?utf-8?B?Ty9pUmZVMmRYVFNTR2EwaUJ1OFR4bHdXRmFQamFwUXpZTS81L1BsYWc0a1oz?=
 =?utf-8?B?aTQwQ0R6VHFnWjVQUDFqaWdRaUx1UnNiZXdpb0NQOGdPakZWYTVobUkxdE5t?=
 =?utf-8?B?ZXM0dEJ5dm1CNFBHblhrVVFVUDBnbzViK3E0cUg5elVkQWk1S0ZRV20yM2Zk?=
 =?utf-8?B?SjVSU0JMaGFzOEt1eXh3bmorL2orck1QWC9uQ2tDYTU0VG1XdytENjBiUFJk?=
 =?utf-8?B?elV5Sm93M3hNT3UvMm1PQm1XVWN5d1hlaE9TK0ZTZjhVbWs4NkxldldTd3dy?=
 =?utf-8?B?S0hXVFJTd05SZFRjOE5XNFpQMHprS0JiVDBuMyt3R3dYUDhWOXgwTzJyeHZl?=
 =?utf-8?B?VjAzdU9YQjI0enJheFJMNE5lYnpNRFBxZGFEQTY0dThYVVhyNmhVQUJrR004?=
 =?utf-8?B?bjdZTWtURC9rZFFzWGV0WHdOTXcvdlJIck1aOE03L0p5QkZWK2lndWFRdmYy?=
 =?utf-8?B?UGxJcW9FaThLejBSM1pUS21PaDFYcWpxMXBLRy9jMDFUeDNwalZUV1VHUjcv?=
 =?utf-8?B?cmt3NUVyMHRidFNXYUk5YWVRYVBmcWFqSU9PajhSMjIvK0dqU25vWmVWdDlq?=
 =?utf-8?B?bHlDMktKZmRRNzJzRm9PUGJPT3U3b3NCdzE4UlNEeHpUQkJab1g0VG1ncmpB?=
 =?utf-8?B?dzZ4dm9SSlhXcG55NTdrVStsRnFORE9rM3NNUVNvZm8vSDVnTHlOeWJBVnpq?=
 =?utf-8?B?K2o0dzNZYmJMbDFyOUlrYVBYUGh1L3RpU0tLT1VQYTM4Mk5zelhSdWxIOCs0?=
 =?utf-8?B?V0pGQnFHamFiZnhtNDdaZFFackxpbjgvZVBmaXRiM1Z0eWJHeWtoM25zbmoz?=
 =?utf-8?B?Lzh0SENOMDRzTWQ4cFVwUTNpcWpWaG5JcmE0TE1UN0RxeEQ4VGRBb3FpVEVQ?=
 =?utf-8?B?dkx3cGdQNWo2V2U3MVIwd1BVN1hLTmsyWS9uRmRSdjA1bWV1TmMzODJxRE5t?=
 =?utf-8?B?YWlZRWExYlNObFpCaElQci85N0UyN01xWEdXKytCUDlKN1pBQkhMQmhHUDBz?=
 =?utf-8?B?L3R4dUVyZ2ttUy9UaW5UTHRKNXJ6RlhvVTVhQWlRektnWFYzN0lmZjdoNHNj?=
 =?utf-8?B?R0VtTlk3TjhNQWN4WTNqS3ZqYUd0NHJldVZuWmozaFprTnZMaUs3Mm0rcnJt?=
 =?utf-8?B?d25IVy9UT1hSMlN6dkpFczdTMnhJOXJVRXdHQ1FCRFU1bWVBeThaWGpaYTBO?=
 =?utf-8?Q?DS7cmU1uEYE38nsapL?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffed65e7-7df2-4504-cc7f-08de6fb5c805
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 12:52:47.2529
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1kxiz+ihVXjRpxc4SdQ9Szutsx40ABawlXycUQWzkXO4lyCsoV46U4GsBlXxuMOl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7333
X-Spamd-Bar: ----
Message-ID-Hash: KJ76H35EK3J6R6X25IGN6DY5FMXYDHIE
X-Message-ID-Hash: KJ76H35EK3J6R6X25IGN6DY5FMXYDHIE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/8] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KJ76H35EK3J6R6X25IGN6DY5FMXYDHIE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: 3074815EC29
X-Rspamd-Action: no action

On 2/13/26 15:22, Boris Brezillon wrote:
>> ---
>>  drivers/dma-buf/dma-fence.c | 16 ++++++++++++----
>>  include/linux/dma-fence.h   |  4 ++--
>>  2 files changed, 14 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
>> index de9bf18be3d4..ba02321bef0b 100644
>> --- a/drivers/dma-buf/dma-fence.c
>> +++ b/drivers/dma-buf/dma-fence.c
>> @@ -371,6 +371,14 @@ void dma_fence_signal_timestamp_locked(struct dma_fence *fence,
>>  				      &fence->flags)))
>>  		return;
>>  
>> +	/*
>> +	 * When neither a release nor a wait operation is specified set the ops
>> +	 * pointer to NULL to allow the fence structure to become independent
>> +	 * from who originally issued it.
> 
> I think this deserves some comment in the dma_fence_ops doc, so that
> people know what to expect when they implement this interface.
There was already a warning added like ~5years ago that implementations shouldn't use the wait callback.

Completely independent of this patch set here we already had tons of trouble with it because it can't take into account when userpsace waits for multiple fences from different implementations.

It potentially was never a good idea to have in the first place, we basically only had it because radeon (and IIRC nouveau at that point) depended on it.

Regards,
Christian.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
