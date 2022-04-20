Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A42BB508258
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 09:38:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9647C40461
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 07:38:15 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2083.outbound.protection.outlook.com [40.107.244.83])
	by lists.linaro.org (Postfix) with ESMTPS id 7CBA04030B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Apr 2022 07:38:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CELdDIJxkA7fGxd5/Rj0HNpFEsLrkGuNHxeTRzyPR8j4HnS93JhnXJOdzOLykaU7YAI4zA8efy59UIYXaQ4/IYVSFYCSajyaxwqjVm27889vs2KJkhcHunURxzUOKx1HxNjVmU1ZgD2Q/VJBF62MkiNqQzUNBt7mSlORfNVOCsb1DJAQHPiU7uW94cfRkP1AExSj6W93632fYQkQHWdK/Qg3RtJ7NByxu5cVvDiv8oS78u3XQyutlgMCwTMoFaUxcaGjXMgkRN35+PhEs3LytiFNFS8yHvNgHyzoGse5wVB8otBt27AZUflL3YhFgbJj9W7ho8DXdX24cb7D88Rs9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZ8WpUiugs/8svHRw5QRc3k2URCvwyQcTmBTkZAPuQM=;
 b=fo5th5TMeKIV7hXRqokJudWgUOvZUd91DhJihQTsSE3MRbr9e7M5RRqK1VTd2xi3dIzVzOEYnrd3LFFFPZOhm/qjSH0RlP1bo5WgBvvrikV3fjByuNPmB52FFHtK7hz+idgBEalsmzD8rViAelew8Fu26sJXdhX6VcgSG0CJ6tBaiAOzHBP5kplGC160jkj7es7EelO/2ayW6TnvwjR+YUPrQgp2XnoEZivNxNacmPJwHVgiqH3cceLrIAtmJOYXHAUrT+yI7CkmLYtmWLstZoOlfjMP/oOeE0T2zAuKCFk+rHQXKfizC8OQD0evWTmvZaW7avFZH9PCYDEe/LEGgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nZ8WpUiugs/8svHRw5QRc3k2URCvwyQcTmBTkZAPuQM=;
 b=CE+rUiVWARVoCKSfnF49PQHaQAZstgeXbv+eTlZARt6M0BbBPW87ohcaztyZNgsiVAqqAhqmhO41t8HhLY8eKfcx3LHYm12SLWzQS8t5M22sQSaT+NGfd+kgOa0y4Paj+Lf/0H90emFYbVfoELLge3o9l5eNu/wqW/lqmWUYNkw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN9PR12MB5177.namprd12.prod.outlook.com (2603:10b6:408:11a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Wed, 20 Apr
 2022 07:38:06 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5164.026; Wed, 20 Apr 2022
 07:38:05 +0000
Message-ID: <4c2e9414-3926-c9d7-8482-0d6d9191c2ac@amd.com>
Date: Wed, 20 Apr 2022 09:37:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Zack Rusin <zackr@vmware.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "ckoenig.leichtzumerken@gmail.com" <ckoenig.leichtzumerken@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-4-christian.koenig@amd.com>
 <60ab53ce1ce1333f5e6a15fc83c3c05cd9bd1084.camel@vmware.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <60ab53ce1ce1333f5e6a15fc83c3c05cd9bd1084.camel@vmware.com>
X-ClientProxiedBy: AM6PR10CA0056.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:80::33) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ffcc2d01-82ce-4951-74dd-08da22a0b4cd
X-MS-TrafficTypeDiagnostic: BN9PR12MB5177:EE_
X-Microsoft-Antispam-PRVS: 
	<BN9PR12MB517782E929574FF5B976219C83F59@BN9PR12MB5177.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YoIuKFZPsK5r25hfRBZ14LS8J43qHzANji17Zz1CtI4BNhlL/uUsIi5oO8pUye7UEYfqrD+pjZugR+a0l/Lj2Z76tCbHPPLRRabUWFGmIqktNiEf5+2J/DUP+fY22yfd7YNY9dhu4l92Z162urgXKk4V3o6HiBuDG4Qnl7nTfrx6v4rI7jY9m17boypPfdu1o3r6SQqq5ldXH3ywDkdYoXZJA4LisSU/S3EzMWA0kT0S1hehSN+zgW/NezTsVBSD07mV1lo7FTxlBAQnac/E5ZHORlwFVhHoH9XF4AOniWJi1ykdD+ZCtP/wWp8U9+UfaBUGELdZ+071hvRqSHvS3ERCl59sAB1XwcZu/Cw2vckriy96edZ09f4zrza4V6KBik+vCdFd33SPxXS6f4qXek4ncdkZ8K6LBeT3D8KbvBfqoNOhGJRevlhlOjdJH2gE0g/pa76yetixti21XZDXEwjaihsgDNP1umxf0PTh4Kmt5w68nvZcs7keY6u6VYeBnuTYujIM3QPQFbtKTsiNKlX/pIcfBWB8B4fW+nz+NmOrWjJbBqs6OEylMJe9Rgnf7F4fVT3phMgRkLlysRCDglqs6iCw8lr6aaEpp7lEd2Sk/yyZzdQx4imz5nd9/JjW1Q5JQIh/VSOYUKmdljnjMyGQMLsALtxB9XBG9KBRLuASUAXVc+onS10gvZYPhnTO+me4As83WG2uxtTsD58P2fbzPHwdAQuncjesaDGyVoA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(6666004)(6506007)(6512007)(66946007)(45080400002)(508600001)(316002)(4326008)(966005)(6486002)(66556008)(86362001)(31686004)(66476007)(110136005)(8676002)(31696002)(36756003)(66574015)(83380400001)(186003)(26005)(2616005)(5660300002)(8936002)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QndPQVlhYW0zNnlHRklJd2pDSlE4NXJ0YjFaT05HdlVucXl0dHFsSDRSaitP?=
 =?utf-8?B?OFJQcFlhZkZBd2trQWNSR2g0YUhRTzA5MEVweWlVdXc1bXMxZmMvaEF6bjI1?=
 =?utf-8?B?QzU2bHRGRVlUT25rdm9HOHdkYitUcEVGSmZyT2dKUnFkR1ZGanhXei94aVhN?=
 =?utf-8?B?K2E1Zm90Szlza0NoNFQ4R1VCdUlrQXZJV1pESUpwb2U3UDZqN25XSmVBbTRa?=
 =?utf-8?B?K3NaaVpURU5venlEZjU1Wm9HanpYTmVvUHlEUTRpbzBKYlMvZmpJQ2dpSXNw?=
 =?utf-8?B?MUlteG9Xdm83Um15cGszM0pLalhlS0Y2Nk82aXkzb0V6KzliNlh4Z2ROVXVs?=
 =?utf-8?B?TytCVHNNMmVENmtpVU03cFkxU1lEYmpOS3Y5clVMU1B4dFBIdC9hQ2xPL096?=
 =?utf-8?B?aXl2cjd6OE1jU3J5ZnBXbkJHVUJsV00wWWYycXdMQmFoQUNIWXFMenhxcDFE?=
 =?utf-8?B?b0RLR3hKbzZRS3NzK2RHaWpZTWMvNTlOUWMrc2ZhMlRaT2xLQ3VyaWtvU1hr?=
 =?utf-8?B?am1LYXhTSFRML0MvbmQzRmg2OEpOcC9raGJDZndkQnVaUlI0LzFDb1krd2Qr?=
 =?utf-8?B?UmVZM1cwTDJQREx6UmtvRjhZbXpFNWMzb0QwM0JuaG5jMWpDT3FPUzBITG9p?=
 =?utf-8?B?SzlFNm1Ca2J3a0dkVUdETm1zVS9DalVuL0c1VEE1WFBmUnczK29MdElVeC9B?=
 =?utf-8?B?VS9BcjNncjNYajBDbGozTld5eVJLM1hFbzRaMFZ3bU5KVlExSFV0SVhCMmJs?=
 =?utf-8?B?VFJrVGlZSkljNnU0NXpZb1YwUUJycGN2ZVVQeGRjTzY0R1JWOTAyT3R5YlFj?=
 =?utf-8?B?anlEU0dFcnJ6Z3ZpN3U1MWtveDJLeG91QllIZEoxY0VVT0Rnb0FaWkVKaVRS?=
 =?utf-8?B?ekNJckcwNHpOeXpqQTFZZVpRcGhINUVkbFFSVXN1bWM1UkV5T2gyVzVmbnEy?=
 =?utf-8?B?RjZBN3haNW5IaG5pb1ZDdFgvakU1MmxJUjExcHFVQlpuNkpkSDNVTE81emJK?=
 =?utf-8?B?WTMxQjlBcDJqejNGK1NvU2RtM2ppRGY2NHkrYkJ0aTc5bGoydDdmUW5ITSsv?=
 =?utf-8?B?NTRXRm9tZ203Sm12eTVLSk5DbkFNbGlMaXFSTU9kNjJqZitsRkhhMVZFTnZY?=
 =?utf-8?B?WTVaMWRZVGIzQ1Z1Q0w3d2pnb1JmdTNtS0QyS3p3Q1BQaGhSbGNHTkpBUmds?=
 =?utf-8?B?eFl0My85anlrZk80S0diRUpkaUdjRXFmS0tmMHkzTkRTMyt0c0IwdnhsVndz?=
 =?utf-8?B?bGtiSDVCZGlEbFF3RWZtb0lBN01NdlBWR09BV2tuM01JeS9qbDR2L1FmUkp2?=
 =?utf-8?B?dFRYV0xRSVB5OE9jQzhtM1FzL3JFTVRpd1M3SGl4dUdqd3J1WEZqc1Nuekh6?=
 =?utf-8?B?dEZ0cWFXUVh5bmNoSHhkendWd1FEUktPeWpCanRnTlhvaGZ6M1RJbjg2ajhG?=
 =?utf-8?B?dlhNTFlIaGVrMzJidjNKSmZ2R3p0NGJEUlRvMjU1UUJQUTRBQTZjbmRZa2FC?=
 =?utf-8?B?NzBwZ1dvb0pPbHZ6TUtuVm00QVVhTStZdUlaRTRNU1dCa0o0WDVPZ1h1UlA3?=
 =?utf-8?B?bHJja1luYUx1RlFmUFRsbks4dVQ5WnJ0TE9yM05nRExuRE52aEpaNm9zNkZH?=
 =?utf-8?B?UVF6WVRKQURiN1dMS3JoR3k5R1ZwRnRFbExBTlZRemlCQ0dlWldaSVI3SGJG?=
 =?utf-8?B?ek8zN2VPMkN3VitFY0NjWFFNYkFkL0ROL2RjVElVeSsrU3B6SUxDRWtaTmdD?=
 =?utf-8?B?dHZhOHdIdlhNNFVrUEJOWFptM2tXWmxtR1pRaXJLNWtwK1Q4Q3d6WGVpbFJx?=
 =?utf-8?B?b2RNRFZWbzBuaUFsT1RibmxPYlVLa1dSbGVkVlMvRENkUmxEbUJlUXVobXdI?=
 =?utf-8?B?VGZscWYrK3VBT2NpQ004Lzk3VVVYRW5lVkx4RGlwaFJiSVVYSzNmL1o3L1pC?=
 =?utf-8?B?Zi9LQzhER3F1aTFFSkZ4ZG1XTGxYWnByenhMbmRHMWM4STRZY1BsVDY5NWhJ?=
 =?utf-8?B?ZVhoYW12MEFnWkd6Umk2bzRURlhCSndBNWMzQ05heTQ1eEpKaDlPTllyWlNp?=
 =?utf-8?B?NlpMZVU2ZXdQcjAycXVXSEtJMUkyNGJsT1VNeldRS1F6SGI1SUl4QVo0Q1Zo?=
 =?utf-8?B?akpsdElIb0c5eTBpL0cyUk14S3FibmdLR3VrTHE4L1hKNVpKakl4VE5NWDhq?=
 =?utf-8?B?Sy96QzB6TWVEK2RvVXdUcGFXOGkzb0JHR3VxTHBIa0w1WGZHOEVLVktsT3Nx?=
 =?utf-8?B?OUNpdXc4bjNrWUFuOXloajFnQ1BOckNYQXdMOENzWHFSaVlXMk9DUnFTdXFD?=
 =?utf-8?B?TUJIOFBFaE9pUWR0SmFLMU1ROEdkVEJzZHpWMi8zTkUrNENqU2hVUT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffcc2d01-82ce-4951-74dd-08da22a0b4cd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2022 07:38:05.1540
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yEC4bEKE32r6p+k/nmh2jZydxfftm/79v5a36QHJsLX95X+g/I7ZN0tGQh6ZB/kd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5177
Message-ID-Hash: INYGZWMKY73ESCYGYLB7HQVBTBPPPPIW
X-Message-ID-Hash: INYGZWMKY73ESCYGYLB7HQVBTBPPPPIW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/15] dma-buf & drm/amdgpu: remove dma_resv workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/INYGZWMKY73ESCYGYLB7HQVBTBPPPPIW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgWmFjaywNCg0KQW0gMjAuMDQuMjIgdW0gMDU6NTYgc2NocmllYiBaYWNrIFJ1c2luOg0KPiBP
biBUaHUsIDIwMjItMDQtMDcgYXQgMTA6NTkgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBSZXdvcmsgdGhlIGludGVybmFscyBvZiB0aGUgZG1hX3Jlc3Ygb2JqZWN0IHRvIGFsbG93
IGFkZGluZyBtb3JlIHRoYW4NCj4+IG9uZQ0KPj4gd3JpdGUgZmVuY2UgYW5kIHJlbWVtYmVyIGZv
ciBlYWNoIGZlbmNlIHdoYXQgcHVycG9zZSBpdCBoYWQuDQo+Pg0KPj4gVGhpcyBhbGxvd3MgcmVt
b3ZpbmcgdGhlIHdvcmthcm91bmQgZnJvbSBhbWRncHUgd2hpY2ggdXNlZCBhIGNvbnRhaW5lcg0K
Pj4gZm9yDQo+PiB0aGlzIGluc3RlYWQuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQo+PiBDYzogYW1kLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4NCj4gYWZhaWN0IHRoaXMgY2hhbmdlIGJyb2tlIHZtd2dmeCB3aGlj
aCBub3cga2VybmVsIG9vcHMgcmlnaHQgYWZ0ZXIgYm9vdC4NCj4gSSBoYXZlbid0IGhhZCB0aGUg
dGltZSB0byBsb29rIGludG8gaXQgeWV0LCBzbyBJJ20gbm90IHN1cmUgd2hhdCdzIHRoZQ0KPiBw
cm9ibGVtLiBJJ2xsIGxvb2sgYXQgdGhpcyB0b21vcnJvdywgYnV0IGp1c3QgaW4gY2FzZSB5b3Ug
aGF2ZSBzb21lDQo+IGNsdWVzLCB0aGUgYmFja3RyYWNlIGZvbGxvd3M6DQoNCnRoYXQncyBhIGtu
b3duIGlzc3VlIGFuZCBzaG91bGQgYWxyZWFkeSBiZSBmaXhlZCB3aXRoOg0KDQpjb21taXQgZDcy
ZGNiZTlmY2U1MDUyMjhkYWU0M2JlZjlkYThmMmI3MDdkMWIzZA0KQXV0aG9yOiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpEYXRlOsKgwqAgTW9uIEFwciAxMSAx
NToyMTo1OSAyMDIyICswMjAwDQoNCiDCoMKgwqAgZHJtL3R0bTogZml4IGxvZ2ljIGludmVyc2lv
biBpbiB0dG1fZXVfcmVzZXJ2ZV9idWZmZXJzDQoNCiDCoMKgwqAgVGhhdCBzaG91bGQgaGF2ZSBi
ZWVuIG1heCwgbm90IG1pbi4NCg0KIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQogwqDCoMKgIEZpeGVzOiBjOGQ0YzE4YmZi
YzQgKCJkbWEtYnVmL2RyaXZlcnM6IG1ha2UgcmVzZXJ2aW5nIGEgc2hhcmVkIHNsb3QgDQptYW5k
YXRvcnkgdjQiKQ0KIMKgwqDCoCBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1
bGRAaW50ZWwuY29tPg0KIMKgwqDCoCBMaW5rOiANCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIyMDQxMTEzNDUzNy4yODU0LTEtY2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tDQoNCg0KSnVzdCBhIHN0dXBpZCBsb2dpYyBpbnZlcnNpb24uIFNvcnJ5IGZvciB0
aGUgbm9pc2UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gICAtLS0tLS0tLS0tLS1b
IGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0NCj4gICBrZXJuZWwgQlVHIGF0IGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jOjMwNiENCj4gICBpbnZhbGlkIG9wY29kZTogMDAwMCBbIzFdIFBSRUVNUFQg
U01QIFBUSQ0KPiAgIENQVTogMSBQSUQ6IDE2MDggQ29tbTogZ25vbWUtc2hlbGwgTm90IHRhaW50
ZWQgNS4xOC4wLXJjMS12bXdnZnggIzE4DQo+ICAgSGFyZHdhcmUgbmFtZTogVk13YXJlLCBJbmMu
IFZNd2FyZSBWaXJ0dWFsIFBsYXRmb3JtLzQ0MEJYIERlc2t0b3ANCj4gUmVmZXJlbmNlIFBsYXRm
b3JtLCBCSU9TIDYuMDAgMTEvMTIvMjAyMA0KPiAgIFJJUDogMDAxMDpkbWFfcmVzdl9hZGRfZmVu
Y2UrMHgyZWQvMHgzMDANCj4gICBDb2RlOiBmZiBmZiBiZSAwMSAwMCAwMCAwMCBlOCAzMSA3ZCBk
OSBmZiBlOSA4MCBmZCBmZiBmZiBiZSAwMyAwMCAwMA0KPiAwMCBlOCAyMiA3ZCBkOSBmZiBlOSBl
ZSBmZSBmZiBmZiAwZiAxZiA0NCAwMCAwMCBlOSBiYyBmZSBmZiBmZiA8MGY+IDBiDQo+IGU4IDRj
IGNjIDQ1IDAwIDY2IDY+DQo+ICAgUlNQOiAwMDE4OmZmZmZhMWU2ODQ2YzNhYjAgRUZMQUdTOiAw
MDAxMDI0Ng0KPiAgIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IGZmZmY5NGM1YzU1MDcxMzgg
UkNYOiA5MDJiYzI0ZTdiN2M3MGFlDQo+ICAgUkRYOiA5MDJiYzI0ZTdiN2M3MGFlIFJTSTogZmZm
ZmZmZmZhYWY3ZjQzNyBSREk6IGZmZmZmZmZmYWFmZmRlNjYNCj4gICBSQlA6IGZmZmZhMWU2ODQ2
YzNiMDggUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogMDAwMDAwMDAwMDAwMDAwMQ0KPiAgIFIx
MDogMDAwMDAwMDAwMDAwMDAwNCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiBmZmZmOTRjNWNi
YTkwNTc4DQo+ICAgUjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogZmZmZjk0YzVjYmE4YmMwMCBS
MTU6IDAwMDAwMDAwMDAwMDAwMDANCj4gICBGUzogIDAwMDA3ZjlhMTdjNmU2MDAoMDAwMCkgR1M6
ZmZmZjk0YzZmOWU0MDAwMCgwMDAwKQ0KPiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQo+ICAgQ1M6
ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KPiAgIENSMjog
MDAwMDdmOWExNDExMzAwMCBDUjM6IDAwMDAwMDAwMDE0NGMwMDMgQ1I0OiAwMDAwMDAwMDAwMzcw
NmUwDQo+ICAgQ2FsbCBUcmFjZToNCj4gICAgPFRBU0s+DQo+ICAgIHR0bV9ldV9mZW5jZV9idWZm
ZXJfb2JqZWN0cysweDU0LzB4MTEwIFt0dG1dDQo+ICAgIHZtd19leGVjYnVmX3Byb2Nlc3MrMHhj
YWUvMHgxMmEwIFt2bXdnZnhdDQo+ICAgID8gdm13X2V4ZWNidWZfcmVsZWFzZV9waW5uZWRfYm8r
MHg2MC8weDYwIFt2bXdnZnhdDQo+ICAgIHZtd19leGVjYnVmX2lvY3RsKzB4ZmIvMHgxNjAgW3Zt
d2dmeF0NCj4gICAgPyB2bXdfZXhlY2J1Zl9yZWxlYXNlX3Bpbm5lZF9ibysweDYwLzB4NjAgW3Zt
d2dmeF0NCj4gICAgZHJtX2lvY3RsX2tlcm5lbCsweGJhLzB4MTUwIFtkcm1dDQo+ICAgID8gX19t
aWdodF9mYXVsdCsweDc3LzB4ODANCj4gICAgZHJtX2lvY3RsKzB4MjQ3LzB4NDYwIFtkcm1dDQo+
ICAgID8gdm13X2V4ZWNidWZfcmVsZWFzZV9waW5uZWRfYm8rMHg2MC8weDYwIFt2bXdnZnhdDQo+
ICAgID8gZmluZF9oZWxkX2xvY2srMHgzMS8weDkwDQo+ICAgID8gX19mZ2V0X2ZpbGVzKzB4YzUv
MHgxOTANCj4gICAgPyBfX3RoaXNfY3B1X3ByZWVtcHRfY2hlY2srMHgxMy8weDIwDQo+ICAgID8g
bG9ja19yZWxlYXNlKzB4MTQyLzB4MmYwDQo+ICAgID8gZHJtX2lvY3RsX2tlcm5lbCsweDE1MC8w
eDE1MCBbZHJtXQ0KPiAgICB2bXdfZ2VuZXJpY19pb2N0bCsweGEzLzB4MTEwIFt2bXdnZnhdDQo+
ICAgIHZtd191bmxvY2tlZF9pb2N0bCsweDE1LzB4MjAgW3Ztd2dmeF0NCj4gICAgX194NjRfc3lz
X2lvY3RsKzB4OTEvMHhjMA0KPiAgICBkb19zeXNjYWxsXzY0KzB4M2IvMHg5MA0KPiAgICBlbnRy
eV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg0NC8weGFlDQo+ICAgUklQOiAwMDMzOjB4N2Y5
YTFhZjFhYWZmDQo+ICAgQ29kZTogMDAgNDggODkgNDQgMjQgMTggMzEgYzAgNDggOGQgNDQgMjQg
NjAgYzcgMDQgMjQgMTAgMDAgMDAgMDAgNDgNCj4gODkgNDQgMjQgMDggNDggOGQgNDQgMjQgMjAg
NDggODkgNDQgMjQgMTAgYjggMTAgMDAgMDAgMDAgMGYgMDUgPDQxPiA4OQ0KPiBjMCAzZCAwMCBm
MCBmZiBmZiA3Pg0KPiAgIFJTUDogMDAyYjowMDAwN2ZmZDgzMzY5NmMwIEVGTEFHUzogMDAwMDAy
NDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMTANCj4gICBSQVg6IGZmZmZmZmZmZmZmZmZmZGEg
UkJYOiAwMDAwN2ZmZDgzMzY5NzgwIFJDWDogMDAwMDdmOWExYWYxYWFmZg0KPiAgIFJEWDogMDAw
MDdmZmQ4MzM2OTc4MCBSU0k6IDAwMDAwMDAwNDAyODY0NGMgUkRJOiAwMDAwMDAwMDAwMDAwMDBk
DQo+ICAgUkJQOiAwMDAwMDAwMDQwMjg2NDRjIFIwODogMDAwMDAwMDAwMDAwMTI0OCBSMDk6IDAw
MDA3ZmZkODMzNjk4MDgNCj4gICBSMTA6IDAwMDAwMDAwMDAwMDAwMDggUjExOiAwMDAwMDAwMDAw
MDAwMjQ2IFIxMjogMDAwMDdmZmQ4MzM2OTgwOA0KPiAgIFIxMzogMDAwMDAwMDAwMDAwMDAwZCBS
MTQ6IDAwMDA1NTcxOWNiNjI5YzAgUjE1OiAwMDAwN2ZmZDgzMzY5ODA4DQo+ICAgIDwvVEFTSz4N
Cj4gICBNb2R1bGVzIGxpbmtlZCBpbjogb3ZlcmxheSBzbmRfZW5zMTM3MSBpbnRlbF9yYXBsX21z
ciBzbmRfYWM5N19jb2RlYw0KPiBpbnRlbF9yYXBsX2NvbW1vbiBhYzk3X2J1cyB2c29ja19sb29w
YmFjaw0KPiB2bXdfdnNvY2tfdmlydGlvX3RyYW5zcG9ydF9jb21tb24gdm13X3Zzb2NrX3ZtY2k+
DQo+ICAgLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tDQo+DQo+IHoNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
