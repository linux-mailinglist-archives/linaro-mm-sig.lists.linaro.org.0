Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA38358BBEF
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 19:14:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E42E947EE8
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 17:14:55 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2088.outbound.protection.outlook.com [40.107.94.88])
	by lists.linaro.org (Postfix) with ESMTPS id 9C1903F47D
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Aug 2022 17:14:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bNi0ma+mu8CMkVmhzpz20iIhJk90GjURe1L5bkUX/MF2V5fZB1NVKxuhUkSUvNyvKQtQBJ1bhDn8TTjrazv4zcge0ImcJ1I7mcj8DRdMLPl6rCdwhp8AI5merYasDSUK+DMC6xAQ27vHSMOne88ZnRed4Y2owQKv5gq6dkKyCim1duJJ+Y0kQR5BAG7ZH6oEgPEO1ouYLmtzROPy6eGeXWOA+PgKP1WHzpANXQpELmFlUpclmstHNiab+AfzvHuCVBMHjjJI5WaTWwFeKrg3fzPCtJh7SL5OOv90gOuZ0oQq0SjEHJB4UDrgLESQ3/RFgxLarkq5myXn3ZEQ0CqxeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oG2k+mkRaPtAaLPE7WgdHy53dcRhS5z+rzU8gkd9BMQ=;
 b=SIqmRl6XJO2dmUrXffobJhgA81UPJ86w0EPfOK1tQMCqukbhAaRjgzcZLLbdGtS03L2z33JMF3UUxgiFvan24ISRyNFMX3elg7K4GQ/Qigu3XMbSIXm1y0OrV4EFhy8D4y2/XvbEzDQRnoZTapsWqOg0v3Ax6JJzSN1AkPXOBlL9mVTmD/7b2j2JpYrBxGI/wpKgrWvhxJt2a2N93acZQpoTthw8Gdmvz2S1gbUu0NvklE6WFoOV+zLw3x+uGW1kNJJR8y67BCX7GjVl4PloQS5+zBnSJREA7oDwvPFoLFaO+ly0ZYg0Vi3ERtrd85T3eKD1KA1G/qij8rzUt2JPmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oG2k+mkRaPtAaLPE7WgdHy53dcRhS5z+rzU8gkd9BMQ=;
 b=Fm4PiRwJWW1b5USqQm/GJVwlwHiu3bG2qWtGyxvOpXwhdOgNySWGzWcyQB+gG/Vvc0ZgbeePO1bkVXtzp18Gp+doE4f17zO27e9IA596+GSIO/WWdR4LBjhzckeLGdxRMNGqHtj16yArGbel2C5793G1447XZGeetNhsx8DPdi4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SJ0PR12MB6880.namprd12.prod.outlook.com (2603:10b6:a03:485::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Sun, 7 Aug
 2022 17:14:49 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.019; Sun, 7 Aug 2022
 17:14:49 +0000
Message-ID: <973de2f8-75e4-d4c7-a13a-c541a6cf7c77@amd.com>
Date: Sun, 7 Aug 2022 19:14:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220729170744.1301044-1-robdclark@gmail.com>
 <20220729170744.1301044-2-robdclark@gmail.com>
 <3d2083aa-fc6c-6875-3daf-e5abe45fb762@gmail.com>
 <CAF6AEGvKdM3vyCvBZK=ZcdGmak7tsrP1b8ANyyaMjVfNDViqyw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGvKdM3vyCvBZK=ZcdGmak7tsrP1b8ANyyaMjVfNDViqyw@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0126.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::6) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 001f63e6-d9f6-4b24-35c4-08da78985580
X-MS-TrafficTypeDiagnostic: SJ0PR12MB6880:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FQDOkYKOzVVpy1HqW8Mwmd/3Lni/i0W12yhqJao6Gp3rcaXOpukRAzJqI1KxNtBQ1VHL2JcbsYz8etcggLq7mRgvP5KINkJ1c3v/oSC2URSLvyO1jCmvDRO9d6+98gnyyTG8YNK2walze4zRPYOAfVEZjGQJDtzPBe9XTD4/0IIrpu6dBh6tST2p9fCSoGA5aL+SAU/Gc7Y5aLeuehO/AFn1qSGpfnSFXpYzaf1Z7YVgESyfL2a+CY3zVl8e4cOKriKZSl2BzbB/0H+37SAl+jNwlO3fUd62MMMiIvbaaatSaNnNz58Igsj+0y+qbvx4JG/sBAUcgZiD0rNo5vp2gUrlGPBD0CPTqO9ijmolmSzpyC/5q/upMiNYBq0PGIBKzRh197jLYmwQN5vzEDcGNDf6pNveYmS74LxW/KAMCoMhpff7BTh+dgL9v3ws/rhr+O0ThtXeqQUsaKEeWhH5zTRxifQvYT2PM6TR7BkU4zCH1P93Oxhzq6NQMYpkCoQ+DlAV8M/c/cLFlpCCqdcUytTvg6hRWTcZnqxYR/etT62P3yO9BDgdanXBEkEInVWHWfphGH+CsHn93RZphYPuDwm6OULzv4A5uRaX8HjC70T2jUlpN7NkY893GjEW2eTyktRkWGz2mXgQMevVdbjgmcEFdinjK/fTCwgWUVCNRHxZrGOvPGUHA3UXsfu47oETcGm1VW052htlEk8Z5trpwHjnoKgzUptl2Cz/JFtV7EYJO+7YlB4MnBH69RpDgh4OvLGXv4MFjsslt8RV10DIcnDPZBN727cAk2Qk9BHjiwgu6QOuO00+R9/x+azLxLodoFIpdHxIYQ8rIGW2NZC1kA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(39860400002)(366004)(136003)(346002)(396003)(8936002)(31686004)(5660300002)(7416002)(66556008)(8676002)(66946007)(66476007)(4326008)(2906002)(316002)(54906003)(6486002)(478600001)(36756003)(110136005)(38100700002)(41300700001)(31696002)(53546011)(6666004)(2616005)(86362001)(6512007)(6506007)(66574015)(186003)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MzZqWXhKOG9LZGdXRWVKam1PTE1rNzFQZG9KS2UwWkdsZE02MUh2MjliZTcr?=
 =?utf-8?B?clVUcUNDb2hTUlJ6ZytPbWRJRkxYOW5laVhNenQ3Ylc1b0tPRFZYekFZV2g4?=
 =?utf-8?B?L2ljWVM4LzRzZXNTeG4ycWRKWHpyL1l4Sk1COVQ1RWhpTEo2aTk1cTJyL1Ex?=
 =?utf-8?B?SFN2b2NuMjZTZFJmN3NIbVR2UjltVTRUNWpsZmhCeTRSbW1GeDNEaDNvK1ZU?=
 =?utf-8?B?TyttRS9yVTUxRE1venIzR1ZxenFsRDdHTXVyNmNYRGpVVVQyWGJyQWJzenVa?=
 =?utf-8?B?NGsxWlpuK1Y3Wmo2Yk9OYkFXZjBneUtjVjJxTElVUGcrWTN1cHZRNG9kL1p3?=
 =?utf-8?B?YndzcG5VMFBITS8vSElqRTRYZk9hSHZFeWk1RTJVWW1wZCtXRG8zb3BvemJy?=
 =?utf-8?B?R1R3MmE1T0FVb2E5RFUzM09HRVFFOStqSzJjdHd0UCszRUhQMmM0eGxEa0kr?=
 =?utf-8?B?RzNCaDZ0OHZjRXRrTStualVUVitKMTVWNlFBeFduVXZEN3RUdncwdC81NVBH?=
 =?utf-8?B?WkhwNjUxckZZQURIbjBkanpQRjNQRkJqeDJwaU92UWVGbjRsU0NvbFluTFdG?=
 =?utf-8?B?a25hT1c3SVhFa2VYUVlCakxFK3ZoM1VjTFEweWpGYi9MeEtIOVFPLy80QWpN?=
 =?utf-8?B?Y0pzczBmQWQzdEJMc1ZKT1dlcXVEdXJrUG40SC8xUTJiK0xDdTdZaUVpSnVF?=
 =?utf-8?B?ekFqUlFwL09RRWVDNm1HZW81OUU3NSttSTE1cUlRYys1TlhSZ1FkUnBFVEMw?=
 =?utf-8?B?RmVwRnBUZ2V0ODVxdlRsVXN2VWFZVnNubWR4eW1FME5GQjhLSk1MRytpMXVL?=
 =?utf-8?B?SVlrQm01Y0k0YzBjMzQ4aUlTYmYwY1pQQ2xjSmJZU1VKOElkcFU5L0E4clVz?=
 =?utf-8?B?aHRFOEc4QU1ETXBMczNiMnNiUUVqQTFhRWFxUDlFalVZRW5NL20xZ0UzbXRn?=
 =?utf-8?B?am8xZEk4M3cxWVFacmVVM3ZnZjV5cy9McHEzNjFWZGJHd0cxUms2MFNPMmFJ?=
 =?utf-8?B?U25HY3hzajNDelR1OU9hT3ZIMk0rWldSeDhMT3E0MG5nbDZwZkEySENNOFJW?=
 =?utf-8?B?MzBXaHdvSzJhS3hjMW9ScCs5WXY4WTVxbGZPUWRDNjNiSlcvZzVkV0Zxa3l4?=
 =?utf-8?B?c1Exd1dka1IyZnVSMHpRZENKU1RkWnc1S3B5ejBWSG1mZW1mKzRDUS90SVhj?=
 =?utf-8?B?alFJdldKclR6SDNQR256bVh2ZDRYR0hOd25JSndYamYyMXgxYjFOOGpDT2xR?=
 =?utf-8?B?dWNQUUFtdkJIZVRHUHVBMjBpK1B6WkR5WHI4RHNoUEdvV2tkNHFkNDh1Z2lK?=
 =?utf-8?B?RXNQTjV5cmFnUkJ1N2VUQjFrY29QUFh0ZEd0QzZ6ZnI0MFVublc1L2JMcW9S?=
 =?utf-8?B?NEZjYWRHTEJ4b1JYWXgyYUNNbHF2citOWTJuNkdUOSsxaGdzd0dpVUdmS2dU?=
 =?utf-8?B?ZmpUVnJwbVN1NkpwL3pzUWNXTmM4S0doT0h3UFhRMG9DQi9XVjNGVUJiZlZ2?=
 =?utf-8?B?VitSNDE5aUJXN1RDQVlXVUpoMkluUVM3NGd0OG0zL2NUZ0VscTU2OVczQzRX?=
 =?utf-8?B?VWFnN2s3Z2xodm5NMzlnNzJ5Nml3ZG96Rlp0WFJ0a0FSb3hsbDdhY3dqcFFS?=
 =?utf-8?B?bDBBUVAzQ2VvYWRUZFdIY2hWOG9XQWlNd1plbmdiNTB0eXoyNS90N1lkU1Vs?=
 =?utf-8?B?RlJPZmk5OElFZEdEcU42aHVvUnpTZG16eGN0UENMalY3SGlMdnpOZVBXME8z?=
 =?utf-8?B?SXdVbnJqWGFWQ2VhbEVXalhBOVFDSFIzdmFmNk1VclNXbGplYzA2aDM5MWtH?=
 =?utf-8?B?ODFVOSttRVc2bGxXYzNwT3hLVlgvRFNXc3IrbDVjdTBCd2paajk1RVpCa05n?=
 =?utf-8?B?K0NjeUwxTGY4SU45Ymg1dmZKdVNZTHFVSmtxelI0L1RZOTVOcUtuMEVEWDlp?=
 =?utf-8?B?QURaeFRrTnZLdGhXSUI2cWdyYTBETklCMTN3QU5pU3hDZEpuaGJOUEdHWkkw?=
 =?utf-8?B?cDFDL1FRdDRaMHA3WU1FSGs3V2RkWUF0ckpFMDJZUW9GYm1GMkpWNU9sNUZO?=
 =?utf-8?B?bHpzaURZM1d6WGk1QjBtTkVVM3g4eGlBY2F2N1NUMmY1SSt3ODV6ZXNPZ3c5?=
 =?utf-8?B?cDRiNXdhVVRkRzdzNzlPcjgzbEdCZHBxSjRyV0dCUVhvNjZlc3RMRWs0M2tO?=
 =?utf-8?Q?T7HsfV8jR37iOqVv/XB/zznzoD3g6hrKgeChxzNeaVlV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 001f63e6-d9f6-4b24-35c4-08da78985580
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2022 17:14:49.2580
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BVwbSz6Gc7Yxf9/dPywXzbNJ+TrIp7xnnwAW/NBXah38lnngQTsGNTQVdSctpLCw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6880
Message-ID-Hash: ZSS7TG5QLHCMLFDFPJKFQ7TKYFUEUIP4
X-Message-ID-Hash: ZSS7TG5QLHCMLFDFPJKFQ7TKYFUEUIP4
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZSS7TG5QLHCMLFDFPJKFQ7TKYFUEUIP4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMDguMjIgdW0gMTk6MDIgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFN1biwgQXVnIDcs
IDIwMjIgYXQgOTowOSBBTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxja29lbmlnLmxlaWNodHp1bWVy
a2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBBbSAyOS4wNy4yMiB1bSAxOTowNyBzY2hyaWViIFJv
YiBDbGFyazoNCj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+
Pj4NCj4+PiBUaGlzIGlzIGEgZmFpcmx5IG5hcnJvd2x5IGZvY3VzZWQgaW50ZXJmYWNlLCBwcm92
aWRpbmcgYSB3YXkgZm9yIGEgVk1NDQo+Pj4gaW4gdXNlcnNwYWNlIHRvIHRlbGwgdGhlIGd1ZXN0
IGtlcm5lbCB3aGF0IHBncHJvdCBzZXR0aW5ncyB0byB1c2Ugd2hlbg0KPj4+IG1hcHBpbmcgYSBi
dWZmZXIgdG8gZ3Vlc3QgdXNlcnNwYWNlLg0KPj4+DQo+Pj4gRm9yIGJ1ZmZlcnMgdGhhdCBnZXQg
bWFwcGVkIGludG8gZ3Vlc3QgdXNlcnNwYWNlLCB2aXJnbHJlbmRlcmVyIHJldHVybnMNCj4+PiBh
IGRtYS1idWYgZmQgdG8gdGhlIFZNTSAoY3Jvc3ZtIG9yIHFlbXUpLg0KPj4gV293LCB3YWl0IGEg
c2Vjb25kLiBXaG8gaXMgZ2l2aW5nIHdob20gdGhlIERNQS1idWYgZmQgaGVyZT8NCj4gTm90IHN1
cmUgSSB1bmRlcnN0YW5kIHRoZSBxdWVzdGlvbi4uIHRoZSBkbWEtYnVmIGZkIGNvdWxkIGNvbWUg
ZnJvbQ0KPiBFR0xfTUVTQV9pbWFnZV9kbWFfYnVmX2V4cG9ydCwgZ2JtLCBvciBzaW1pbGFyLg0K
Pg0KPj4gTXkgbGFzdCBzdGF0dXMgd2FzIHRoYXQgdGhpcyBkZXNpZ24gd2FzIGlsbGVnYWwgYW5k
IGNvdWxkbid0IGJlDQo+PiBpbXBsZW1lbnRlZCBiZWNhdXNlIGl0IHJlcXVpcmVzIGludGVybmFs
IGtub3dsZWRnZSBvbmx5IHRoZSBleHBvcnRpbmcNCj4+IGRyaXZlciBjYW4gaGF2ZS4NCj4gVGhp
cyBpb2N0bCBwcm92aWRlcyB0aGF0IGluZm9ybWF0aW9uIGZyb20gdGhlIGV4cG9ydGluZyBkcml2
ZXIgc28gdGhhdA0KPiBhIFZNTSBkb2Vzbid0IGhhdmUgdG8gbWFrZSBhc3N1bXB0aW9ucyA7LSkN
Cg0KQW5kIGV4YWN0bHkgdGhhdCB3YXMgTkFLZWQgdGhlIGxhc3QgdGltZSBpdCBjYW1lIHVwLiBP
bmx5IHRoZSBleHBvcnRpbmcgDQpkcml2ZXIgaXMgYWxsb3dlZCB0byBtbWFwKCkgdGhlIERNQS1i
dWYgaW50byB0aGUgZ3Vlc3QuDQoNClRoaXMgd2F5IHlvdSBhbHNvIGRvbid0IG5lZWQgdG8gdHJh
bnNwb3J0IGFueSBjYWNoaW5nIGluZm9ybWF0aW9uIGFueXdoZXJlLg0KDQo+IEN1cnJlbnRseSBj
cm9zdm0gYXNzdW1lcyBpZiAoZHJpdmVybmFtZSA9PSAiaTkxNSIpIHRoZW4gaXQgaXMgYSBjYWNo
ZWQNCj4gbWFwcGluZywgb3RoZXJ3aXNlIGl0IGlzIHdjLiAgSSdtIHRyeWluZyB0byBmaW5kIGEg
d2F5IHRvIGZpeCB0aGlzLg0KPiBTdWdnZXN0aW9ucyB3ZWxjb21lLCBidXQgYmVjYXVzZSBvZiBo
b3cgbWFwcGluZyB0byBhIGd1ZXN0IFZNIHdvcmtzLCBhDQo+IFZNTSBpcyBhIHNvbWV3aGF0IHNw
ZWNpYWwgY2FzZSB3aGVyZSB0aGlzIGluZm9ybWF0aW9uIGlzIG5lZWRlZCBpbg0KPiB1c2Vyc3Bh
Y2UuDQoNCk9rIHRoYXQgbGVhdmVzIG1lIGNvbXBsZXRlbHkgcHV6emxlZC4gSG93IGRvZXMgdGhh
dCB3b3JrIGluIHRoZSBmaXJzdCBwbGFjZT8NCg0KSW4gb3RoZXIgd29yZHMgaG93IGRvZXMgdGhl
IG1hcHBpbmcgaW50byB0aGUgZ3Vlc3QgcGFnZSB0YWJsZXMgaGFwcGVuPw0KDQpSZWdhcmRzLA0K
Q2hyaXN0aWFuLg0KDQo+DQo+IEJSLA0KPiAtUg0KPg0KPj4gQERhbmllbCBoYXMgYW55dGhpbmcg
Y2hhbmdlZCBvbiB0aGF0IGlzIG9yIG15IHN0YXR1cyBzdGlsbCB2YWxpZD8NCj4+DQo+PiBSZWdh
cmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiAgICAgSW4gYWRkaXRpb24gdG8gbWFwcGluZyB0
aGUNCj4+PiBwYWdlcyBpbnRvIHRoZSBndWVzdCBWTSwgaXQgbmVlZHMgdG8gcmVwb3J0IHRvIGRy
bS92aXJ0aW8gaW4gdGhlIGd1ZXN0DQo+Pj4gdGhlIGNhY2hlIHNldHRpbmdzIHRvIHVzZSBmb3Ig
Z3Vlc3QgdXNlcnNwYWNlLiAgSW4gcGFydGljdWxhciwgb24gc29tZQ0KPj4+IGFyY2hpdGVjdHVy
ZXMsIGNyZWF0aW5nIGFsaWFzZWQgbWFwcGluZ3Mgd2l0aCBkaWZmZXJlbnQgY2FjaGUgYXR0cmli
dXRlcw0KPj4+IGlzIGZyb3duZWQgdXBvbiwgc28gaXQgaXMgaW1wb3J0YW50IHRoYXQgdGhlIGd1
ZXN0IG1hcHBpbmdzIGhhdmUgdGhlDQo+Pj4gc2FtZSBjYWNoZSBhdHRyaWJ1dGVzIGFzIGFueSBw
b3RlbnRpYWwgaG9zdCBtYXBwaW5ncy4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4+PiAtLS0NCj4+PiAgICBkcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jICAgIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgICBp
bmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgIHwgIDcgKysrKysrKw0KPj4+ICAgIGluY2x1ZGUv
dWFwaS9saW51eC9kbWEtYnVmLmggfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+
Pj4gICAgMyBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCj4+PiBpbmRleCAzMmY1NTY0MDg5MGMuLmQwMmQ2YzJhM2I0OSAxMDA2NDQNCj4+PiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KPj4+IEBAIC0zMjYsNiArMzI2LDI5IEBAIHN0YXRpYyBsb25nIGRtYV9idWZfc2V0
X25hbWUoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgY29uc3QgY2hhciBfX3VzZXIgKmJ1ZikNCj4+
PiAgICAgICAgcmV0dXJuIDA7DQo+Pj4gICAgfQ0KPj4+DQo+Pj4gK3N0YXRpYyBsb25nIGRtYV9i
dWZfaW5mbyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBjb25zdCB2b2lkIF9fdXNlciAqdWFyZykN
Cj4+PiArew0KPj4+ICsgICAgIHN0cnVjdCBkbWFfYnVmX2luZm8gYXJnOw0KPj4+ICsNCj4+PiAr
ICAgICBpZiAoY29weV9mcm9tX3VzZXIoJmFyZywgdWFyZywgc2l6ZW9mKGFyZykpKQ0KPj4+ICsg
ICAgICAgICAgICAgcmV0dXJuIC1FRkFVTFQ7DQo+Pj4gKw0KPj4+ICsgICAgIHN3aXRjaCAoYXJn
LnBhcmFtKSB7DQo+Pj4gKyAgICAgY2FzZSBETUFfQlVGX0lORk9fVk1fUFJPVDoNCj4+PiArICAg
ICAgICAgICAgIGlmICghZG1hYnVmLT5vcHMtPm1tYXBfaW5mbykNCj4+PiArICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIC1FTk9TWVM7DQo+Pj4gKyAgICAgICAgICAgICBhcmcudmFsdWUgPSBk
bWFidWYtPm9wcy0+bW1hcF9pbmZvKGRtYWJ1Zik7DQo+Pj4gKyAgICAgICAgICAgICBicmVhazsN
Cj4+PiArICAgICBkZWZhdWx0Og0KPj4+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+
Pj4gKyAgICAgfQ0KPj4+ICsNCj4+PiArICAgICBpZiAoY29weV90b191c2VyKHVhcmcsICZhcmcs
IHNpemVvZihhcmcpKSkNCj4+PiArICAgICAgICAgICAgIHJldHVybiAtRUZBVUxUOw0KPj4+ICsN
Cj4+PiArICAgICByZXR1cm4gMDsNCj4+PiArfQ0KPj4+ICsNCj4+PiAgICBzdGF0aWMgbG9uZyBk
bWFfYnVmX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLA0KPj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICB1bnNpZ25lZCBpbnQgY21kLCB1bnNpZ25lZCBsb25nIGFyZykNCj4+PiAgICB7DQo+Pj4g
QEAgLTM2OSw2ICszOTIsOSBAQCBzdGF0aWMgbG9uZyBkbWFfYnVmX2lvY3RsKHN0cnVjdCBmaWxl
ICpmaWxlLA0KPj4+ICAgICAgICBjYXNlIERNQV9CVUZfU0VUX05BTUVfQjoNCj4+PiAgICAgICAg
ICAgICAgICByZXR1cm4gZG1hX2J1Zl9zZXRfbmFtZShkbWFidWYsIChjb25zdCBjaGFyIF9fdXNl
ciAqKWFyZyk7DQo+Pj4NCj4+PiArICAgICBjYXNlIERNQV9CVUZfSU9DVExfSU5GTzoNCj4+PiAr
ICAgICAgICAgICAgIHJldHVybiBkbWFfYnVmX2luZm8oZG1hYnVmLCAoY29uc3Qgdm9pZCBfX3Vz
ZXIgKilhcmcpOw0KPj4+ICsNCj4+PiAgICAgICAgZGVmYXVsdDoNCj4+PiAgICAgICAgICAgICAg
ICByZXR1cm4gLUVOT1RUWTsNCj4+PiAgICAgICAgfQ0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gaW5kZXggNzE3
MzE3OTZjOGMzLi42ZjRkZTY0YTU5MzcgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgNCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+IEBAIC0yODMs
NiArMjgzLDEzIEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7DQo+Pj4gICAgICAgICAqLw0KPj4+ICAg
ICAgICBpbnQgKCptbWFwKShzdHJ1Y3QgZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3Qg
KnZtYSk7DQo+Pj4NCj4+PiArICAgICAvKioNCj4+PiArICAgICAgKiBAbW1hcF9pbmZvOg0KPj4+
ICsgICAgICAqDQo+Pj4gKyAgICAgICogUmV0dXJuIG1tYXBwaW5nIGluZm8gZm9yIHRoZSBidWZm
ZXIuICBTZWUgRE1BX0JVRl9JTkZPX1ZNX1BST1QuDQo+Pj4gKyAgICAgICovDQo+Pj4gKyAgICAg
aW50ICgqbW1hcF9pbmZvKShzdHJ1Y3QgZG1hX2J1ZiAqKTsNCj4+PiArDQo+Pj4gICAgICAgIGlu
dCAoKnZtYXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7
DQo+Pj4gICAgICAgIHZvaWQgKCp2dW5tYXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVj
dCBpb3N5c19tYXAgKm1hcCk7DQo+Pj4gICAgfTsNCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91
YXBpL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmgNCj4+PiBp
bmRleCBiMTUyM2NiOGFiMzAuLmE0MWFkYWMwZjQ2YSAxMDA2NDQNCj4+PiAtLS0gYS9pbmNsdWRl
L3VhcGkvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1i
dWYuaA0KPj4+IEBAIC04NSw2ICs4NSwzMiBAQCBzdHJ1Y3QgZG1hX2J1Zl9zeW5jIHsNCj4+Pg0K
Pj4+ICAgICNkZWZpbmUgRE1BX0JVRl9OQU1FX0xFTiAgICAzMg0KPj4+DQo+Pj4gKw0KPj4+ICsv
KioNCj4+PiArICogc3RydWN0IGRtYV9idWZfaW5mbyAtIFF1ZXJ5IGluZm8gYWJvdXQgdGhlIGJ1
ZmZlci4NCj4+PiArICovDQo+Pj4gK3N0cnVjdCBkbWFfYnVmX2luZm8gew0KPj4+ICsNCj4+PiAr
I2RlZmluZSBETUFfQlVGX0lORk9fVk1fUFJPVCAgICAgIDENCj4+PiArIyAgZGVmaW5lIERNQV9C
VUZfVk1fUFJPVF9XQyAgICAgIDANCj4+PiArIyAgZGVmaW5lIERNQV9CVUZfVk1fUFJPVF9DQUNI
RUQgIDENCj4+PiArDQo+Pj4gKyAgICAgLyoqDQo+Pj4gKyAgICAgICogQHBhcmFtOiBXaGljaCBw
YXJhbSB0byBxdWVyeQ0KPj4+ICsgICAgICAqDQo+Pj4gKyAgICAgICogRE1BX0JVRl9JTkZPX0JN
X1BST1Q6DQo+Pj4gKyAgICAgICogICAgIFF1ZXJ5IHRoZSBhY2Nlc3MgcGVybWlzc2lvbnMgb2Yg
dXNlcnNwYWNlIG1tYXAncyBvZiB0aGlzIGJ1ZmZlci4NCj4+PiArICAgICAgKiAgICAgUmV0dXJu
cyBvbmUgb2YgRE1BX0JVRl9WTV9QUk9UX3gNCj4+PiArICAgICAgKi8NCj4+PiArICAgICBfX3Uz
MiBwYXJhbTsNCj4+PiArICAgICBfX3UzMiBwYWQ7DQo+Pj4gKw0KPj4+ICsgICAgIC8qKg0KPj4+
ICsgICAgICAqIEB2YWx1ZTogUmV0dXJuIHZhbHVlIG9mIHRoZSBxdWVyeS4NCj4+PiArICAgICAg
Ki8NCj4+PiArICAgICBfX3U2NCB2YWx1ZTsNCj4+PiArfTsNCj4+PiArDQo+Pj4gICAgI2RlZmlu
ZSBETUFfQlVGX0JBU0UgICAgICAgICAgICAgICAgJ2InDQo+Pj4gICAgI2RlZmluZSBETUFfQlVG
X0lPQ1RMX1NZTkMgIF9JT1coRE1BX0JVRl9CQVNFLCAwLCBzdHJ1Y3QgZG1hX2J1Zl9zeW5jKQ0K
Pj4+DQo+Pj4gQEAgLTk1LDQgKzEyMSw2IEBAIHN0cnVjdCBkbWFfYnVmX3N5bmMgew0KPj4+ICAg
ICNkZWZpbmUgRE1BX0JVRl9TRVRfTkFNRV9BICBfSU9XKERNQV9CVUZfQkFTRSwgMSwgX191MzIp
DQo+Pj4gICAgI2RlZmluZSBETUFfQlVGX1NFVF9OQU1FX0IgIF9JT1coRE1BX0JVRl9CQVNFLCAx
LCBfX3U2NCkNCj4+Pg0KPj4+ICsjZGVmaW5lIERNQV9CVUZfSU9DVExfSU5GTyAgIF9JT1dSKERN
QV9CVUZfQkFTRSwgMiwgc3RydWN0IGRtYV9idWZfaW5mbykNCj4+PiArDQo+Pj4gICAgI2VuZGlm
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
