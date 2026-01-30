Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAinBlmwfGmbOQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:21:29 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D75BAF06
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:21:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D76E3F914
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:21:27 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012017.outbound.protection.outlook.com [52.101.48.17])
	by lists.linaro.org (Postfix) with ESMTPS id B97173F7C4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:21:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=DK4jqK8N;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.48.17 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jjO2ua9sp2fCQcveWDi6OXFrK4egujjdPbfZ2fXCMKBzsRrhYJdgV88LUCjiUEIxhta0RIZgVXUOrOXRb39WqUKcAE79OcrP6bRAGeP1gPwRZsix24BQ4Pvm1O7YRQ+IfjSSnuCYGiemlbEm1DuLKK2nSNGlCxoItfEg/njJKC50kVivycN414RALnOY11kkXO6ns9uc4K+w729u3UkkhxuWszy9Xmd8S8LCy6WW02aMGGYOvScbTeBlOL7ThoeHbi4Pza56mF6FpK4muJIj4safyzWUNpq+M0OnYkBdR6YcE343IsUMzriLRp60Fsn6HaEU5ZqtlpURQOy+kApt4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5IQjennPt/LlCVJ9R7VBQf0OtN9qohRUg3VGDVzgCkw=;
 b=vVh3dfNfFyus+EVEIOZjAJS1y89/mhXnLrCQvPQYSb+wpeRHvGmvebL+naTtSc17V50AeHcMGwJGjG4uqZdaEKBow81eRNV34FJm0Qk089PqZ7xgSzWsIxQwm+SzqTORtfTg/v+nA8AMGbuuZOIpKD5ocrAuZfyOQEt52gixAyU7J7Dk5mKb5zhuiYl5tG8zftiYi+NS9e8Cy8xx8YcrSf9Pqj6bwDKZ8QdwSU48Il604GzqLcpt8MdkQRZ6VFz0tG7VpowZfbuvGJpsKazf4myVp+r50mTUCmkOlxhvXPiMw+eMU8lSgMWmfYLuKx4io+Aj/JJIFK8/2HKl+DEtGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5IQjennPt/LlCVJ9R7VBQf0OtN9qohRUg3VGDVzgCkw=;
 b=DK4jqK8NZavHss7++DBGuScVj3H8VbpshWIhoxszY7u59E+dG0FOJd7V2A7c/1ZmokHhcw7b4H+3eSgwv+r4oaCQ69WNy4VubXyQHA0oxVKNwgZx4lmX7wpshtcLQnmRp2oOvbAj27tF1q+PvAgH4XaCKS7oY64PfUFdGeBa4qE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CYYPR12MB8854.namprd12.prod.outlook.com (2603:10b6:930:b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Fri, 30 Jan
 2026 13:21:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9564.010; Fri, 30 Jan 2026
 13:21:17 +0000
Message-ID: <d25bead8-8372-4791-a741-3371342f4698@amd.com>
Date: Fri, 30 Jan 2026 14:21:08 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
 <20260130130131.GO10992@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260130130131.GO10992@unreal>
X-ClientProxiedBy: FR2P281CA0182.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CYYPR12MB8854:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d1d0440-e085-42cd-36e6-08de600272d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q0lhVmx0WXJFMUdtck1OUUZrdW5vQXh1VERndGhuaEVjd0RVSS9Ba1dRWjBV?=
 =?utf-8?B?ZEJEV1JXV0VzOEhXYVVrN0VvMXhkclVKRjVIUGJ4YWFCVlFvcTZJbEQyNE0v?=
 =?utf-8?B?VEI3b3ZIV2tENjlTRktmTjVqQzAvb3JjMjYxdXJkNllxdHBzWDV1d2xpT29q?=
 =?utf-8?B?OERNVFArUVhnWXNhc0dIVnJhTGhyQmlNU0hOVE9wbDRaSGh0MFFUdnFjQmZx?=
 =?utf-8?B?TmhBekhoakZSNE9JaUE0bnZNeks5WmR4Y1haTHZJQlBBUEZ0Vjh4VzF2NS9C?=
 =?utf-8?B?QU9UUURib3UyQnJGcFkvbkVLbWd4czZwdEVMUFFEbnN2YitSRjNEWGtERW0z?=
 =?utf-8?B?a216RW1TTXFYUVJFMW0vWmRXc3VuTGQybnhkRFFoUFErU1hJU2NMMHdBOENF?=
 =?utf-8?B?RGF2azhSSERLVWczM0V2bUptMDVaandCeWI2NWRndXFUUmZtU2IrRysrUVR4?=
 =?utf-8?B?ZjVVNkY4V1l1Q2g2Z2VlM0dBejVsZmZ3bFJUWGNReVNWVzhHZUk1UHVwTlgv?=
 =?utf-8?B?ZkdMQ2hsTmNXdzYrK2V2NUhaRnk4R095a1lQanFuYndkVkZyQXdqMTczT1dE?=
 =?utf-8?B?VFlhYnZCeW41eGlSUjM2OUFGNnRucVdlR3pVdkFhbzVSRGxWQllycmhSOTFO?=
 =?utf-8?B?NGtyRG5vT3lmZDY3SDV5ZGxZbWJRYUM2OGFJR0Z2WTdYRFRrNGVUakxKZCs0?=
 =?utf-8?B?QkVYVE5Lc3BlaUFxNFY4ZVpoOGhnU0xTQWN2NXVuZXhkbVF5OEJjMkMyZ0pH?=
 =?utf-8?B?TWdzbm5MQTFIM0dFQmlZQkJ5NzJYd29JeitLekkybnpYbmhhRCs1a3JlTGVh?=
 =?utf-8?B?VVpBeGp3K2lXR0twODczQmxrSjVwVnhDTGkzeXlLazZJdjFOUEVZdWRnM1Rv?=
 =?utf-8?B?cFl4ZGd3eWtYZEdmRUo4a3VkUDZWNnBLdDRCWFF6bXY2VksyRlhrcFZjREhv?=
 =?utf-8?B?VWJBQmY0S1FiUVd3ZzF0K00vRFU1NkpRUjRYZm1vK3gvcWU1dnN6YTlKTGhT?=
 =?utf-8?B?ai9FWlpKV1ZpV2tHaldzZDRhQ3l5Zk1nS0U0a0J1VmxBMXkxRkxhcG5qVUhR?=
 =?utf-8?B?UG54RzVzQUE4ZFRaMVVwb3F1REhnOFFHVlhTQ0xrcXZkNkphRkt1cm5zeHo3?=
 =?utf-8?B?a0tBWjhXUFFpRnV1MDBOVUI2alpLWlJRTEZObFUwUitwYWpNUk9qVm81Sitl?=
 =?utf-8?B?THZ1L2cwQ3pBaEwwNzA5Qkt4VDZKaGZCMk5JR0ZLQTJIL2kybWJOMFl3Tzlh?=
 =?utf-8?B?WnBEb3VOWmZmNzVQMG9jdVhTZFd4eVVFMEpWSEFnRzZ2YzJFcGgyL1N6dkY0?=
 =?utf-8?B?WFl4SWdEK3MwRTdxbnFDTFJ2dmxEK2hhcUlPNDBZQTFTM0NWSUlUdlRsTVRH?=
 =?utf-8?B?ZWVvNW1hQjFCZVpxOHhFZUZ1OVh3TkJObktTcmRIMHcxdFpQNVJES2hsdkVH?=
 =?utf-8?B?THMrZXEzeW1BcS9BamVmeHFsbzhDbHdrRHVCQ0ZCZUZIRFg4RkdpSFZTY0Q2?=
 =?utf-8?B?bkNaUUxub0FsZjZjcG9TdWllZEZQM21WZ3FLTHhoMWlQMkRTZUpqUmhDZEVa?=
 =?utf-8?B?ekszc1VVRTNqS01KeEtDS1IxZnlTMXRHMzN6ak1nbkVZb2hlQU5ib1ZXNFZL?=
 =?utf-8?B?WEhkc21OeDhYMmxFS3FCZXNvZVBnbWs5Tm9NYnNjSTE0NXA0dmdRbHBqa0l3?=
 =?utf-8?B?Vi8yT1ZjZFZhek1FdTVkcDBDZGtEVWZrbkZOMkRtY1pZK3lCQnh4MWF4RWl3?=
 =?utf-8?B?aVNwKzVuZzdseUkzRkxiekJicEw3WFVqUlpPeWNsem1SR2Z6RHU5NlV5dy9p?=
 =?utf-8?B?ak5vNTFSK2d6eTFGNlh3Q2toZGdkV3NqMnVTQllPOE5JK2laMGl6YkNsQ2VJ?=
 =?utf-8?B?TThYOUxDbktyQ3NFZkEzMFZtSk84UFVYR0h5VUhHYnB4YmxpRUlrZVBHdEtx?=
 =?utf-8?B?Wnp4UjlxZHVpUkdXZ2dQMWQzWkYvN21Tby9PR3ZxTW1BSnZ2NE5YTEZOZldF?=
 =?utf-8?B?RWRkRStIS0lXV2hVYzhza2JCQTI1RStIVGR6Yk1LMjJMRzQ3emo4aER0QWlv?=
 =?utf-8?B?SVBWMVdka3BDemllSHQ3VkxXaTVxMCtQNGRnak5ZTFdQYXhZTm80MFhrbFRk?=
 =?utf-8?Q?OFCc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SStXL3d6QVJkRld6ekRxaTc1NW45cDNBYTRqSTNxSnVwNCtaZnJHSVF2T0g1?=
 =?utf-8?B?WnFYN05vVTRpSk1TcDVnVUVmMDJFSE03RFZqeWlTa1JmR0R0ZFRmRVZsaU10?=
 =?utf-8?B?bXFSanloU1oxK3lBbTQxWURYOTRKWjlZK0pXL2xuYjRYbUJmTXM2MlEzVHJN?=
 =?utf-8?B?YlBRSzFzT2FGS0V0MmNrcHhKOENVTlNqcThhWFA0RE1JcWkzdUR5Um90MC9M?=
 =?utf-8?B?MktUNnpKcEZlMURLbktUeHdmRkpzbmpmZnpDZzN5M0YyQ0g3bW5DR0c1ZFdI?=
 =?utf-8?B?cktKN3JST3hmWGwvUnNTbzNCQ0R3L04wUGRvamlLQW45bW5HK212RXBFTWRE?=
 =?utf-8?B?STcvai9LSWRKaE91TlVsNUNFdkdDNEQ1Ym1EeWtnRzk1YVduNTlHVk1Gd0My?=
 =?utf-8?B?VjhrVFpHcjlkOWxyTGkwb1RDVXFJdG53MkJhMGUycjZPNVdvdk9nNFpQZll3?=
 =?utf-8?B?UGNub0RnQWM4OHB1dmEyU1dUd05BMC9SZitRc0NXNHErSW96RlBONnN4K0d2?=
 =?utf-8?B?akdiOWx1L3YxVVdNN2xuTGp1Q0JmMTBDWGNWRWx4WVhHSmZFc1MvbXcySDc3?=
 =?utf-8?B?TWM4YUhBYy9raWtDUktBVVhJZ1kxN1FzMFpxbUE3OXNsWVU5TEVmSWwxMitZ?=
 =?utf-8?B?ZzdOQVBjZm5iSVI3WlhTU1hJMjhBeGd6RkNPeHZCblpIRUV5SHZ0OUM5alBY?=
 =?utf-8?B?VFRqanhmOCtTQnFqZFlJM1lTRmk5UmRzV3hldVVqVG9uT3J6YUphSm8zRzJI?=
 =?utf-8?B?Qm9uWmh2ZmxxcUZucW1lWnhSYWdpb0NZRFppclR1Z01UVW5NL09Eb0pqSG95?=
 =?utf-8?B?aVlsR2FGaUd5R2VxQU1oeFd5ZTBpdVBObjM2MkhIejlHZEFMQVhDUEgvY0F2?=
 =?utf-8?B?NnZHZnFJUTh1TG9CVkVEODJ5Q25CUkh0YTZTNUdacHV2UjVlM0NtcWRxSXlR?=
 =?utf-8?B?bjBjakppUW45Z2VIbml2UXlIazB1Mmx6ZDNTMGtIUHdoZmE2SjliUlJkRnBj?=
 =?utf-8?B?cmU4dGc4YlpzREI2YVpGMFJCWHR0UkZpWVo5MjVEL0s1ZFRacHN2M0RsS2hz?=
 =?utf-8?B?MEtUQkJ5c3FERDJPNjNTTndPYm9CU1J1Y0tqSTkzMVMrUDNFOGt2c2dKTUpt?=
 =?utf-8?B?TDhPV0ZuWUk1UWFUTVJkd0VrMlU1ajZmd3ZZTU5rS2lhRE1uMjJ4M2d5R2VL?=
 =?utf-8?B?SW0vb2NSZDd2d1RzS3dWZzk0cjljN3Q2TWF1amZiTytnVkxZVXFtYkU1dUJ0?=
 =?utf-8?B?WW5aT2VYWGNxV1d3NHNNNWYwQzNwTDF3OEFLc3drcTRDSVdOdmN0eU4yYmJz?=
 =?utf-8?B?eWZlNjJUNjI2WklHczdONmFmOG15MENpSnM4bkxjTnptcjMxT0Foa1BsYWxN?=
 =?utf-8?B?VUIyaE51VFd1T01KZzhqQVVBaUx4aFdwUHlVelBQVmEzZCtHUHU0MzVKTGZs?=
 =?utf-8?B?aXFPYjJrMm1mUWFzaFBGdXFGVTZoRmpFNEs5b3dEU0p3MXE3NERobVhiUkg0?=
 =?utf-8?B?OEpHRWZHOFk0UkZBWXVrNGRPZzBEbXhJQ3Y2UjBmZDQzWHNEZWhybzlHdUh4?=
 =?utf-8?B?ZVdzMDFNSGpXZjVCVzdXRTFqanV0c293S3JobGxBaXhxWFFCTEZXZEU0eHlT?=
 =?utf-8?B?MHhqdnR1UlRYMzN3eFRFY2U0WkZ0RDdaRmU0MklNZXRZZmRFeW81aERya3Jp?=
 =?utf-8?B?L3RRblpSM3FlZ2tyOGdXY2RES3BES2U5T21VWC9jVkl0NzZUZFZLbHo5OTUw?=
 =?utf-8?B?MTZHcWtkdnEzaURTUVJNcnMyNVlxbmRhK2VndmxUUTh0L01yT0FZTDFDOW1I?=
 =?utf-8?B?eThOUnVmdlA3Wi9wV0RGckh4M0NHdmVjY1Zrd2hXaEtjVFc3UXpqQWIzeG9t?=
 =?utf-8?B?aUhzVUpXVzdlWHRXUWo0cHNncUhpS29hL1dzRmY4WHhrOHlvMll6RzIxdmZR?=
 =?utf-8?B?Q0lOUFBXWERUaDRFbVllWGNYTWl6b09XZHhqbVJZQzJtNS9zbXFlT1kyQzFz?=
 =?utf-8?B?cW4zWWFTdkJGeiswM0ErQklaeWJwVm1LTWpkYXN4bU5Vd2Z6cElOb005SzdR?=
 =?utf-8?B?NmovdUpzUU1yTkxqYzFMMDZOY2VHUmpSRUtNMTgxNjJRS3lHdFVoc0JXMHpU?=
 =?utf-8?B?clBUZEV3a2JPL0FuM0IybklwQmdoeFR1cHBCK2gvcnFUazBnbEwySk5VODEv?=
 =?utf-8?B?YnhhUW5pRkxSZGI3YmM1bEwyUzM5cWJoM1d2LzB6UFVlTXlXaThzbkdOcGZx?=
 =?utf-8?B?akJZdVhRNXNwc1NLUDVOMElFTStRZTNuc2ViNXFyaSthL1BZcjk2dzV2b1Yx?=
 =?utf-8?Q?yB20w0ucIJ3kA9kfz3?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d1d0440-e085-42cd-36e6-08de600272d2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2026 13:21:16.8963
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0EqoeMi8MbAh3PswTkpaLRgh7grjOHess/rTNKn3ioNe5aewX3ZTKu8r/lD0r/DX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8854
X-Spamd-Bar: -----
Message-ID-Hash: 3JSAIWH7XFFIZGALXIP25TOUQLM24O5O
X-Message-ID-Hash: 3JSAIWH7XFFIZGALXIP25TOUQLM24O5O
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@v
 ger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3JSAIWH7XFFIZGALXIP25TOUQLM24O5O/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,v,lists.linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,amd.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 80D75BAF06
X-Rspamd-Action: no action

T24gMS8zMC8yNiAxNDowMSwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBGcmksIEphbiAz
MCwgMjAyNiBhdCAwOTozMDo1OUFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8yNC8yNiAyMDoxNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IEZyb206IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBkbWEtYnVmIGludmFsaWRh
dGlvbiBpcyBoYW5kbGVkIGFzeW5jaHJvbm91c2x5IGJ5IHRoZSBoYXJkd2FyZSwgc28gVkZJTw0K
Pj4+IG11c3Qgd2FpdCB1bnRpbCBhbGwgYWZmZWN0ZWQgb2JqZWN0cyBoYXZlIGJlZW4gZnVsbHkg
aW52YWxpZGF0ZWQuDQo+Pj4NCj4+PiBJbiBhZGRpdGlvbiwgdGhlIGRtYS1idWYgZXhwb3J0ZXIg
aXMgZXhwZWN0aW5nIHRoYXQgYWxsIGltcG9ydGVycyB1bm1hcCBhbnkNCj4+PiBidWZmZXJzIHRo
ZXkgcHJldmlvdXNseSBtYXBwZWQuDQo+Pj4NCj4+PiBGaXhlczogNWQ3NDc4MWViYzg2ICgidmZp
by9wY2k6IEFkZCBkbWEtYnVmIGV4cG9ydCBzdXBwb3J0IGZvciBNTUlPIHJlZ2lvbnMiKQ0KPj4+
IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4g
LS0tDQo+Pj4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgfCA3MSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQ0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgNjgg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3Bj
aV9kbWFidWYuYw0KPj4+IGluZGV4IGQ4Y2VhZmFiZWY0OC4uNDg1NTE1NjI5ZmU0IDEwMDY0NA0K
Pj4+IC0tLSBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4+PiArKysgYi9k
cml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+Pj4gQEAgLTE3LDYgKzE3LDggQEAg
c3RydWN0IHZmaW9fcGNpX2RtYV9idWYgew0KPj4+ICAJc3RydWN0IGRtYV9idWZfcGh5c192ZWMg
KnBoeXNfdmVjOw0KPj4+ICAJc3RydWN0IHAycGRtYV9wcm92aWRlciAqcHJvdmlkZXI7DQo+Pj4g
IAl1MzIgbnJfcmFuZ2VzOw0KPj4+ICsJc3RydWN0IGtyZWYga3JlZjsNCj4+PiArCXN0cnVjdCBj
b21wbGV0aW9uIGNvbXA7DQo+Pj4gIAl1OCByZXZva2VkIDogMTsNCj4+PiAgfTsNCj4+PiAgDQo+
Pj4gQEAgLTQ0LDI3ICs0Niw0NiBAQCBzdGF0aWMgaW50IHZmaW9fcGNpX2RtYV9idWZfYXR0YWNo
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+Pj4gIAlyZXR1cm4gMDsNCj4+PiAgfQ0KPj4+ICAN
Cj4+PiArc3RhdGljIHZvaWQgdmZpb19wY2lfZG1hX2J1Zl9kb25lKHN0cnVjdCBrcmVmICprcmVm
KQ0KPj4+ICt7DQo+Pj4gKwlzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJpdiA9DQo+Pj4gKwkJ
Y29udGFpbmVyX29mKGtyZWYsIHN0cnVjdCB2ZmlvX3BjaV9kbWFfYnVmLCBrcmVmKTsNCj4+PiAr
DQo+Pj4gKwljb21wbGV0ZSgmcHJpdi0+Y29tcCk7DQo+Pj4gK30NCj4+PiArDQo+Pj4gIHN0YXRp
YyBzdHJ1Y3Qgc2dfdGFibGUgKg0KPj4+ICB2ZmlvX3BjaV9kbWFfYnVmX21hcChzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LA0KPj4+ICAJCSAgICAgZW51bSBkbWFfZGF0YV9k
aXJlY3Rpb24gZGlyKQ0KPj4+ICB7DQo+Pj4gIAlzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJp
diA9IGF0dGFjaG1lbnQtPmRtYWJ1Zi0+cHJpdjsNCj4+PiArCXN0cnVjdCBzZ190YWJsZSAqcmV0
Ow0KPj4+ICANCj4+PiAgCWRtYV9yZXN2X2Fzc2VydF9oZWxkKHByaXYtPmRtYWJ1Zi0+cmVzdik7
DQo+Pj4gIA0KPj4+ICAJaWYgKHByaXYtPnJldm9rZWQpDQo+Pj4gIAkJcmV0dXJuIEVSUl9QVFIo
LUVOT0RFVik7DQo+Pj4gIA0KPj4+IC0JcmV0dXJuIGRtYV9idWZfcGh5c192ZWNfdG9fc2d0KGF0
dGFjaG1lbnQsIHByaXYtPnByb3ZpZGVyLA0KPj4+IC0JCQkJICAgICAgIHByaXYtPnBoeXNfdmVj
LCBwcml2LT5ucl9yYW5nZXMsDQo+Pj4gLQkJCQkgICAgICAgcHJpdi0+c2l6ZSwgZGlyKTsNCj4+
PiArCXJldCA9IGRtYV9idWZfcGh5c192ZWNfdG9fc2d0KGF0dGFjaG1lbnQsIHByaXYtPnByb3Zp
ZGVyLA0KPj4+ICsJCQkJICAgICAgcHJpdi0+cGh5c192ZWMsIHByaXYtPm5yX3JhbmdlcywNCj4+
PiArCQkJCSAgICAgIHByaXYtPnNpemUsIGRpcik7DQo+Pj4gKwlpZiAoSVNfRVJSKHJldCkpDQo+
Pj4gKwkJcmV0dXJuIHJldDsNCj4+PiArDQo+Pj4gKwlrcmVmX2dldCgmcHJpdi0+a3JlZik7DQo+
Pj4gKwlyZXR1cm4gcmV0Ow0KPj4+ICB9DQo+Pj4gIA0KPj4+ICBzdGF0aWMgdm9pZCB2ZmlvX3Bj
aV9kbWFfYnVmX3VubWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsDQo+
Pj4gIAkJCQkgICBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwNCj4+PiAgCQkJCSAgIGVudW0gZG1hX2Rh
dGFfZGlyZWN0aW9uIGRpcikNCj4+PiAgew0KPj4+ICsJc3RydWN0IHZmaW9fcGNpX2RtYV9idWYg
KnByaXYgPSBhdHRhY2htZW50LT5kbWFidWYtPnByaXY7DQo+Pj4gKw0KPj4+ICsJZG1hX3Jlc3Zf
YXNzZXJ0X2hlbGQocHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4+PiArDQo+Pj4gIAlkbWFfYnVmX2Zy
ZWVfc2d0KGF0dGFjaG1lbnQsIHNndCwgZGlyKTsNCj4+PiArCWtyZWZfcHV0KCZwcml2LT5rcmVm
LCB2ZmlvX3BjaV9kbWFfYnVmX2RvbmUpOw0KPj4+ICB9DQo+Pj4gIA0KPj4+ICBzdGF0aWMgdm9p
ZCB2ZmlvX3BjaV9kbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+PiBA
QCAtMjg3LDYgKzMwOCw5IEBAIGludCB2ZmlvX3BjaV9jb3JlX2ZlYXR1cmVfZG1hX2J1ZihzdHJ1
Y3QgdmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsIHUzMiBmbGFncywNCj4+PiAgCQlnb3RvIGVy
cl9kZXZfcHV0Ow0KPj4+ICAJfQ0KPj4+ICANCj4+PiArCWtyZWZfaW5pdCgmcHJpdi0+a3JlZik7
DQo+Pj4gKwlpbml0X2NvbXBsZXRpb24oJnByaXYtPmNvbXApOw0KPj4+ICsNCj4+PiAgCS8qIGRt
YV9idWZfcHV0KCkgbm93IGZyZWVzIHByaXYgKi8NCj4+PiAgCUlOSVRfTElTVF9IRUFEKCZwcml2
LT5kbWFidWZzX2VsbSk7DQo+Pj4gIAlkb3duX3dyaXRlKCZ2ZGV2LT5tZW1vcnlfbG9jayk7DQo+
Pj4gQEAgLTMyNiw2ICszNTAsOCBAQCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfbW92ZShzdHJ1Y3Qg
dmZpb19wY2lfY29yZV9kZXZpY2UgKnZkZXYsIGJvb2wgcmV2b2tlZCkNCj4+PiAgCWxvY2tkZXBf
YXNzZXJ0X2hlbGRfd3JpdGUoJnZkZXYtPm1lbW9yeV9sb2NrKTsNCj4+PiAgDQo+Pj4gIAlsaXN0
X2Zvcl9lYWNoX2VudHJ5X3NhZmUocHJpdiwgdG1wLCAmdmRldi0+ZG1hYnVmcywgZG1hYnVmc19l
bG0pIHsNCj4+PiArCQl1bnNpZ25lZCBsb25nIHdhaXQ7DQo+Pj4gKw0KPj4+ICAJCWlmICghZ2V0
X2ZpbGVfYWN0aXZlKCZwcml2LT5kbWFidWYtPmZpbGUpKQ0KPj4+ICAJCQljb250aW51ZTsNCj4+
PiAgDQo+Pj4gQEAgLTMzMyw3ICszNTksMzcgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21vdmUo
c3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQo+Pj4gIAkJ
CWRtYV9yZXN2X2xvY2socHJpdi0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4+PiAgCQkJcHJpdi0+
cmV2b2tlZCA9IHJldm9rZWQ7DQo+Pj4gIAkJCWRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyhw
cml2LT5kbWFidWYpOw0KPj4+ICsJCQlkbWFfcmVzdl93YWl0X3RpbWVvdXQocHJpdi0+ZG1hYnVm
LT5yZXN2LA0KPj4+ICsJCQkJCSAgICAgIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQLCBmYWxzZSwN
Cj4+PiArCQkJCQkgICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7DQo+Pj4gIAkJCWRtYV9yZXN2
X3VubG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0KPj4+ICsJCQlpZiAocmV2b2tlZCkgew0KPj4+
ICsJCQkJa3JlZl9wdXQoJnByaXYtPmtyZWYsIHZmaW9fcGNpX2RtYV9idWZfZG9uZSk7DQo+Pj4g
KwkJCQkvKiBMZXQncyB3YWl0IHRpbGwgYWxsIERNQSB1bm1hcCBhcmUgY29tcGxldGVkLiAqLw0K
Pj4+ICsJCQkJd2FpdCA9IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgNCj4+PiArCQkJCQkm
cHJpdi0+Y29tcCwgc2Vjc190b19qaWZmaWVzKDEpKTsNCj4+PiArCQkJCS8qDQo+Pj4gKwkJCQkg
KiBJZiB5b3Ugc2VlIHRoaXMgV0FSTl9PTiwgaXQgbWVhbnMgdGhhdA0KPj4+ICsJCQkJICogaW1w
b3J0ZXIgZGlkbid0IGNhbGwgdW5tYXAgaW4gcmVzcG9uc2UgdG8NCj4+PiArCQkJCSAqIGRtYV9i
dWZfaW52YWxpZGF0ZV9tYXBwaW5ncygpIHdoaWNoIGlzIG5vdA0KPj4+ICsJCQkJICogYWxsb3dl
ZC4NCj4+PiArCQkJCSAqLw0KPj4+ICsJCQkJV0FSTighd2FpdCwNCj4+PiArCQkJCSAgICAgIlRp
bWVkIG91dCB3YWl0aW5nIGZvciBETUFCVUYgdW5tYXAsIGltcG9ydGVyIGhhcyBhIGJyb2tlbiBp
bnZhbGlkYXRlX21hcHBpbmcoKSIpOw0KPj4NCj4+IFlvdSBjYW4gZG8gdGhlIHJldm9rZSB0byBk
byB5b3VyIHJlc291cmNlIG1hbmFnZW1lbnQsIGZvciBleGFtcGxlIHJlLXVzZSB0aGUgYmFja2lu
ZyBzdG9yZSBmb3Igc29tZXRoaW5nIGVsc2UuDQo+Pg0KPj4gQnV0IGl0IGlzIG1hbmRhdG9yeSB0
aGF0IHlvdSBrZWVwIHRoZSBtYXBwaW5nIGFyb3VuZCBpbmRlZmluaXRlbHkgdW50aWwgdGhlIGlt
cG9ydGVyIGNsb3NlcyBpdC4NCj4+DQo+PiBCZWZvcmUgdGhhdCB5b3UgY2FuJ3QgZG8gdGhpbmdz
IGxpa2UgcnVudGltZSBQTSBvciByZW1vdmUgb3IgYW55dGhpbmcgd2hpY2ggd291bGQgbWFrZSB0
aGUgRE1BIGFkZHJlc3NlcyBpbnZhbGlkLg0KPj4NCj4+IEFzIGZhciBhcyBJIGNhbiBzZWUgdmZp
b19wY2lfZG1hX2J1Zl9tb3ZlKCkgaXMgdXNlZCBleGFjdGx5IGZvciB0aGF0IHVzZSBjYXNlIHNv
IHRoaXMgaGVyZSBpcyBhbiBhYnNvbHV0ZWx5IGNsZWFyIE5BSyBmcm9tIG15IHNpZGUgZm9yIHRo
aXMgYXBwcm9hY2guDQo+Pg0KPj4gWW91IGNhbiBlaXRoZXIgc3BsaXQgdXAgdGhlIGZ1bmN0aW9u
YWxpdHkgb2YgdmZpb19wY2lfZG1hX2J1Zl9tb3ZlKCkgaW50byB2ZmlvX3BjaV9kbWFfYnVmX2lu
dmFsaWRhdGVfbWFwcGluZ3MoKSBhbmQgdmZpb19wY2lfZG1hX2J1Zl9mbHVzaCgpIGFuZCB0aGVu
IGNhbGwgdGhlIGxhdGVyIHdoZW5ldmVyIG5lY2Vzc2FyeSBvciB5b3Uga2VlcCBpdCBpbiBvbmUg
ZnVuY3Rpb24gYW5kIGJsb2NrIGV2ZXJ5Ym9keSB1bnRpbCB0aGUgaW1wb3J0ZXIgaGFzIGRyb3Bw
ZWQgYWxsIG1hcHBpbmdzLg0KPiANCj4gTm8gcHJvYmxlbSwgSSBjYW4gY2hhbmdlIGl0IHRvIGJl
Og0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMg
Yi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jDQo+IGluZGV4IGQwODdkMDE4ZDU0
Ny4uNTM3NzJhODRjOTNiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNp
X2RtYWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMNCj4g
QEAgLTM1NywyMyArMzU3LDcgQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX21vdmUoc3RydWN0IHZm
aW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2LCBib29sIHJldm9rZWQpDQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0KPiAgICAgICAg
ICAgICAgICAgICAgICAgICBpZiAocmV2b2tlZCkgew0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGtyZWZfcHV0KCZwcml2LT5rcmVmLCB2ZmlvX3BjaV9kbWFfYnVmX2RvbmUpOw0K
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qDQo+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICogTGV0J3Mgd2FpdCBmb3IgMSBzZWNvbmQgdGlsbCBhbGwgRE1BIHVu
bWFwDQo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICogYXJlIGNvbXBsZXRlZC4g
SXQgaXMgc3VwcG9zZWQgdG8gY2F0Y2ggZG1hLWJ1Zg0KPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAqIGltcG9ydGVycyB3aGljaCBsaWVkIGFib3V0IHRoZWlyIHN1cHBvcnQNCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKiBvZiBkbWFidWYgcmV2b2tlLiBTZWUg
ZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKCkNCj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKiBmb3IgdGhlIGV4cGVjdGVkIGJlaGF2aW91ci4NCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgKi8NCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3
YWl0ID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KA0KPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgJnByaXYtPmNvbXAsIHNlY3NfdG9famlmZmllcygxKSk7DQo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyoNCj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKiBJZiB5b3Ugc2VlIHRoaXMgV0FSTl9PTiwgaXQgbWVhbnMgdGhhdA0K
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqIGltcG9ydGVyIGRpZG4ndCBjYWxs
IHVubWFwIGluIHJlc3BvbnNlIHRvDQo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICogZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKCkgd2hpY2ggaXMgbm90DQo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICogYWxsb3dlZC4NCj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKi8NCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBXQVJO
KCF3YWl0LA0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIlRpbWVkIG91
dCB3YWl0aW5nIGZvciBETUFCVUYgdW5tYXAsIGltcG9ydGVyIGhhcyBhIGJyb2tlbiBpbnZhbGlk
YXRlX21hcHBpbmcoKSIpOw0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdhaXRf
Zm9yX2NvbXBsZXRpb24oJnByaXYtPmNvbXApOw0KPiAgICAgICAgICAgICAgICAgICAgICAgICB9
IGVsc2Ugew0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qDQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICogS3JlZiBpcyBpbml0aWFsaXplIGFnYWluLCBiZWNh
dXNlIHdoZW4gcmV2b2tlDQo+IA0KPiBEbyB5b3Ugd2FudCBtZSB0byBzZW5kIHY2Pw0KDQpUaGF0
IHdvdWxkIHdvcmsgZm9yIG1lLg0KDQpRdWVzdGlvbiBpcyBpZiB5b3UgcmVhbGx5IHdhbnQgdG8g
ZG8gaXQgdGhpcyB3YXk/IFNlZSB1c3VhbGx5IGV4cG9ydGVycyB0cnkgdG8gYXZvaWQgYmxvY2tp
bmcgc3VjaCBmdW5jdGlvbnMuDQoNCldoYXQgZXhwb3J0ZXJzIHVzdWFsbHkgZG8gaW5zdGVhZCBp
cyB0byBncmFiIHJlZmVyZW5jZXMsIGUuZy4gY2FsbCBwbV9ydW50aW1lX2dldF9zeW5jKCkgd2hl
biBlaXRoZXIgYSBETUEtYnVmLCBhIERNQS1idWYgYXR0YWNobWVudCBvciBpbiB5b3VyIGNhc2Ug
aGVyZSBhIG1hcHBpbmcgb2YgdGhpcyBhdHRhY2htZW50IGlzIG1hZGUuDQoNCkJ1dCBhbGwgb2Yg
dGhpcyBpcyBqdXN0IGEgc3VnZ2VzdGlvbiwgaWYgeW91IGFyZSBmaW5lIHdpdGggYmxvY2tpbmcg
dGhlbiBmZWVsIGZyZWUgdG8gYWRkIG15IHJiLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+
IA0KPiBUaGFua3MNCj4gDQo+Pg0KPj4+ICsJCQl9IGVsc2Ugew0KPj4+ICsJCQkJLyoNCj4+PiAr
CQkJCSAqIEtyZWYgaXMgaW5pdGlhbGl6ZSBhZ2FpbiwgYmVjYXVzZSB3aGVuIHJldm9rZQ0KPj4+
ICsJCQkJICogd2FzIHBlcmZvcm1lZCB0aGUgcmVmZXJlbmNlIGNvdW50ZXIgd2FzIGRlY3JlYXNl
ZA0KPj4+ICsJCQkJICogdG8gemVybyB0byB0cmlnZ2VyIGNvbXBsZXRpb24uDQo+Pj4gKwkJCQkg
Ki8NCj4+PiArCQkJCWtyZWZfaW5pdCgmcHJpdi0+a3JlZik7DQo+Pj4gKwkJCQkvKg0KPj4+ICsJ
CQkJICogVGhlcmUgaXMgbm8gbmVlZCB0byB3YWl0IGFzIG5vIG1hcHBpbmcgd2FzDQo+Pj4gKwkJ
CQkgKiBwZXJmb3JtZWQgd2hlbiB0aGUgcHJldmlvdXMgc3RhdHVzIHdhcw0KPj4+ICsJCQkJICog
cHJpdi0+cmV2b2tlZCA9PSB0cnVlLg0KPj4+ICsJCQkJICovDQo+Pj4gKwkJCQlyZWluaXRfY29t
cGxldGlvbigmcHJpdi0+Y29tcCk7DQo+Pj4gKwkJCX0NCj4+PiAgCQl9DQo+Pj4gIAkJZnB1dChw
cml2LT5kbWFidWYtPmZpbGUpOw0KPj4NCj4+IFRoaXMgaXMgYWxzbyBleHRyZW1lbHkgcXVlc3Rp
b25hYmxlLiBXaHkgZG9lc24ndCB0aGUgZG1hYnVmIGhhdmUgYSByZWZlcmVuY2Ugd2hpbGUgb24g
dGhlIGxpbmtlZCBsaXN0Pw0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+
ICAJfQ0KPj4+IEBAIC0zNDYsNiArNDAyLDggQEAgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX2NsZWFu
dXAoc3RydWN0IHZmaW9fcGNpX2NvcmVfZGV2aWNlICp2ZGV2KQ0KPj4+ICANCj4+PiAgCWRvd25f
d3JpdGUoJnZkZXYtPm1lbW9yeV9sb2NrKTsNCj4+PiAgCWxpc3RfZm9yX2VhY2hfZW50cnlfc2Fm
ZShwcml2LCB0bXAsICZ2ZGV2LT5kbWFidWZzLCBkbWFidWZzX2VsbSkgew0KPj4+ICsJCXVuc2ln
bmVkIGxvbmcgd2FpdDsNCj4+PiArDQo+Pj4gIAkJaWYgKCFnZXRfZmlsZV9hY3RpdmUoJnByaXYt
PmRtYWJ1Zi0+ZmlsZSkpDQo+Pj4gIAkJCWNvbnRpbnVlOw0KPj4+ICANCj4+PiBAQCAtMzU0LDcg
KzQxMiwxNCBAQCB2b2lkIHZmaW9fcGNpX2RtYV9idWZfY2xlYW51cChzdHJ1Y3QgdmZpb19wY2lf
Y29yZV9kZXZpY2UgKnZkZXYpDQo+Pj4gIAkJcHJpdi0+dmRldiA9IE5VTEw7DQo+Pj4gIAkJcHJp
di0+cmV2b2tlZCA9IHRydWU7DQo+Pj4gIAkJZG1hX2J1Zl9pbnZhbGlkYXRlX21hcHBpbmdzKHBy
aXYtPmRtYWJ1Zik7DQo+Pj4gKwkJZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KHByaXYtPmRtYWJ1Zi0+
cmVzdiwNCj4+PiArCQkJCSAgICAgIERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQLCBmYWxzZSwNCj4+
PiArCQkJCSAgICAgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsNCj4+PiAgCQlkbWFfcmVzdl91bmxv
Y2socHJpdi0+ZG1hYnVmLT5yZXN2KTsNCj4+PiArCQlrcmVmX3B1dCgmcHJpdi0+a3JlZiwgdmZp
b19wY2lfZG1hX2J1Zl9kb25lKTsNCj4+PiArCQl3YWl0ID0gd2FpdF9mb3JfY29tcGxldGlvbl90
aW1lb3V0KCZwcml2LT5jb21wLA0KPj4+ICsJCQkJCQkgICBzZWNzX3RvX2ppZmZpZXMoMSkpOw0K
Pj4+ICsJCVdBUk5fT04oIXdhaXQpOw0KPj4+ICAJCXZmaW9fZGV2aWNlX3B1dF9yZWdpc3RyYXRp
b24oJnZkZXYtPnZkZXYpOw0KPj4+ICAJCWZwdXQocHJpdi0+ZG1hYnVmLT5maWxlKTsNCj4+PiAg
CX0NCj4+Pg0KPj4NCj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
