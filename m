Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B230E51C683
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 19:46:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C77294809F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 17:46:30 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam08on2055.outbound.protection.outlook.com [40.107.101.55])
	by lists.linaro.org (Postfix) with ESMTPS id C6F0E4655E
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 May 2022 17:46:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KcLgZbtqzcr3t22xQfTHT70ntLoxh9beqHpFfl/S4/okmFor21aUOCS5J7stYipWr3zTmUUxshBQDEoyoULrqraCKbFQaLEJwaTHFzv4swVqfxIEfOzBtyioAjHpNB8rnEKWAovyo9tCi68rJVJD5MahU24piAkc0uJZJLPTF37XlaAPsarYrRQ6OVQB5STGi4SHIoXOXXhI4WoCkVrGWdWxdrThYgKKH4NnE00An6sKnJ+BmlwL9NICYQDQXkRWVd+FZYfIbqCFHp5A6hlvnhoVqfv9bLSz5Ox0R2dfQzaRphRBIIYO3nLU9C9y7Nlj35q4Zoi4EPBA43BoGJ+Gxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bb8R8rcHoJ4WypX3wtRzfHknvnEBB1bjpOxZeLPtOUY=;
 b=Q8Loe9ASGXImPLSVY8m+0Id2nnsA4TgWx4Fl09UKQd3RZcQv1ZvNz9bprOwmikOGUbX0Yn7+SUUn4+ad9rQtIJMUrhfBz/Po/YzBJO2zK+0fK1bovWeQTEsaHHodng/uTHvE9817eJs9sNb9w7BrzZ2Rci0x/2LgnxIBvv/NfFm4RREnMRmNbxW0HUmv/6MlrLnKB8Qg68Nv7mr8ksv8ZWAgpuJe9sR73DJCKCuOoPGUt74zma8Qv5ugSdNgt+DBzmChdbzDwlVC8ONd+LEe9pSQ5UjSwcc+pfiYHUPuv64iQYGFBMaBEQvGKeB+0OT+PmWyaBNWZ5sczeJl+DDsbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bb8R8rcHoJ4WypX3wtRzfHknvnEBB1bjpOxZeLPtOUY=;
 b=wywHAdGaNQrngIk8smbFIqygRC/T2vVI/utcY0o3a9djkVqyYdyLZdEMRmrUAVIOQjTsHLF0PwkaEBbVZVZeZ+3vFNJVPS9XtvOXz7wvhl42o/xGY0JfTa8iyiSVNo9+JBiFS/hGNLESU8qtQC68yf8jybSU11umx63LrF2dvKk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MWHPR12MB1152.namprd12.prod.outlook.com (2603:10b6:300:7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.20; Thu, 5 May
 2022 17:46:22 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f%4]) with mapi id 15.20.5206.025; Thu, 5 May 2022
 17:46:21 +0000
Message-ID: <70344113-6dd7-3d56-9a87-26d91f2f766e@amd.com>
Date: Thu, 5 May 2022 19:46:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220504122256.1654-1-christian.koenig@amd.com>
 <YnPRL7ndeh9z01mW@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YnPRL7ndeh9z01mW@phenom.ffwll.local>
X-ClientProxiedBy: AM6PR10CA0051.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:80::28) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2877db00-3af9-49e8-b797-08da2ebf2a33
X-MS-TrafficTypeDiagnostic: MWHPR12MB1152:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR12MB1152A565C3DD99A599E9B5DB83C29@MWHPR12MB1152.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oq08dL5rWgHiB5EOLjVy/a3l2tcImjWtxsQUOeCtqmVQSDy2XesXo+O+brXqll5C7E3LKv56tRMGKmph2Q1mPreHa3mKBwqFmFtnN+yLBtp8u+K2xUrnU7h/jE5AlqwTvq1/7IRBldEu5wCu8l9rfbyswwDwtVP9HajYSk67Is0RBl/dSYjOhekENksMi2cNqOow9hGzeu95ecdih0w6buhZGIRvT2QKoG14LGkkry7bpklKJMO8cdW2y8SQwwC75gZSSfdnnvu3xAOWJxK7vKg4nEq6lYs86DtU617g/nveoupq0ODRuCzU3gE07QxFjXw+ZK6Ewb1WiAXvJ13ibwb96hZugpZTddanntloBDmfYC63N2LgIBpIehI96EfRfAuvvsWdniLABsHQQNVtH8w81xu9A4+ZwOyzuPnrItzsyoP4LEzS5X5LAw53+Cx4zYBrIHqh6LqYzbfuFID8BRlDhXeQjaL0N/GoIQacWq3HwaBifbH2vB+B9hP8sQ1zvTjXE1mKLtFOkSbSGH9OkCuJesZumserxWGVUQO71gDvoF7pxLN/A+19rhEzON/qf3NjUt0PMGhduYD5WSdACJ/8oGFKvf1Bx55prxrSixGggmyMHX0ehnXL//BeYKEyjunTr3P54qGGIuv7oUQw1xdbg/E0K5Wt+dxkLgM37fOHEm+1kZJ76jyy/EUpLlnzW/HRSckwZLpfkWgOlqFrvgWTzq51SLx6kcFySCOSsZbIWznQP22jXpRnpNRk+INr
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66476007)(38100700002)(110136005)(6486002)(6506007)(66556008)(8676002)(66946007)(8936002)(316002)(508600001)(4326008)(2616005)(5660300002)(86362001)(31696002)(6666004)(66574015)(186003)(36756003)(31686004)(2906002)(83380400001)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eWl0b2swd2hxU2dkY3JRMDFobDZSM3NOQkZ6NVJWZmJLd0YyZEJVUUhEVlE4?=
 =?utf-8?B?MU9YaE1TZTZQQ1ZsTmltbW44L3hlMUtKNFA0RWQ2ZnJ5Q1F2ODVIT3RmOS82?=
 =?utf-8?B?MTBqNVBscU12Ym1vOVdzTmxTUjJ5TUlVUUYyWHBNYVV5eTl5Tzk2YmdRM1F4?=
 =?utf-8?B?T2hkc1NUcjlqVzZudWw2SWp1THpwajJlRXNRYjhtYWFicEFlNGpRR20wTGJC?=
 =?utf-8?B?V0RodlpieGJRWGlxSkhxcnh4VmlNaXRYcDRqUzlTSGQ1R2J5TnoxRHpwM2F0?=
 =?utf-8?B?dk4xN1ZMNzluY1c5VHRYKzFuMWgzVkFxZDRLbHkrT1I3QTZqUDI2amI5UFc0?=
 =?utf-8?B?Y21zTG1OUHpVWmRvbUxrRGVwbFo3Ym1rYngzeWh2TnNqMnZPL29mS2JvOXFJ?=
 =?utf-8?B?QStKZ09NWVkvS2pPQXhEb1dTL1hoVjJoUzVEYU0rdzNXQlZ0MTJkbkgyN2dT?=
 =?utf-8?B?QkpRTm1IZS95VTgwdWpLZDIvSzg1VnRyWVVDb3N2cFNpMGc2YjJ4WWFIQmFY?=
 =?utf-8?B?S2RBK1VucFhhMWFPMHFtUDUrcWx5ajROcVpTeUNYQzl4K0gxMHVVbDNVTnc3?=
 =?utf-8?B?ZnhVQW5kbTNLMjhleXpHMzNTMUw0YjJqbVI5UWlUTmpWcFd3UHNSN2pLbk9k?=
 =?utf-8?B?bmVyc1d2ZGc2aURmc0pTeUtQRHRlUTJjSGkzelVWelo1U1E4b3pPbWdHZk9E?=
 =?utf-8?B?cU9vSW1mTTRQZ24xa1N1aTlPUDlIdk56d0VOWFNwaXVaSWZleDVCcUNvMUFD?=
 =?utf-8?B?Y3diQkRhNEpNVVRaYzR4OGFWRnBCcnc3eWRjcW1pOXJyK2hVRWNJSk00VlBZ?=
 =?utf-8?B?RW9yRzgxNGprdW1JNlRZZ2J2TXFEMDJpQ2x6clRxZTRrMTVHa2E3RXVoTU9M?=
 =?utf-8?B?Q1ovWHloK2JZVmxodHNTdWVaODFsOE9ndVlQcU55RTlzYTZFYTVVRWFiTHkx?=
 =?utf-8?B?WlhTVE5qcDdJaGJFdnp3THR2OXhlam9pRnVOekNzdDJJMjAxZzkvcmcvRWRJ?=
 =?utf-8?B?YWhkbDlHR1hXZ0dIMENpTjIxcjdFY0NYa2ttVitGaFN1R3BlcWwreXJ6N1E5?=
 =?utf-8?B?cHVKaTAwN0MwUjBHQTRIclQ1SG9mOHJDWjRRQUl2TUM2Rm1iaVgwODFUVFNp?=
 =?utf-8?B?MmNjRHUvYjhrRmxHeE00aUlkcHk1MDIvV0JRQjNUWUtZcWpBOVlReHRXQWVh?=
 =?utf-8?B?b0NUYWxkUlhHZExhMUpCNFA4R1ZuTTh4WEc3QVlSMjFSSWJmd3VUTWNqSUxv?=
 =?utf-8?B?RnhsRWVTWUJ5eWtnWFZVWk9BWkZjRGR4OWdFRGNxUHBLWDZEbmNOWDQ5VVpk?=
 =?utf-8?B?RzYzd0xCdUI2VVV0K2dicHRCMDArQm1Wc1FuVGNYUEgyUm9lMUprTk1Wb1pC?=
 =?utf-8?B?ZTMzWE41ZnZhZnloUER4K0NIOUNXRWZrSnN4QUpBVWpCV01xVEU4ejVBV2hK?=
 =?utf-8?B?cmZ2emVlMTR2TWpkVXdtb3MzR3A2TzQxMlE2TFYrdVAvYjRlaGR4TjVZRVJ1?=
 =?utf-8?B?SVNTYjJnd2F4Q3FLYUVFRUlkRUJHK1c1eVBvSFIyQlBnYUtTSWgxMm9CY2ly?=
 =?utf-8?B?L2UzSXluK0xvMjFKdU1yNWt0L0svZ1FEeURxcVNmWm5zUWhrL0t6cmRNbEl2?=
 =?utf-8?B?d0ZSZXp3SWdpVyswVUM5RENNMzViVHlPRWsrRmhYaktoREpNR0J1Ty9wcEs2?=
 =?utf-8?B?Q283YUFOZUJXbXFmVEkvMHZwaVRWL1R4TVhhazBWREdEZ2lFMTB2TVZzOGZZ?=
 =?utf-8?B?WGNIdUZIMk5mdHF5Wm9LTk8veVFZYVFSczFaMGpTZys5M045MEVwenc0OWw2?=
 =?utf-8?B?bnBwS2IyVjRWcDRXcFdVY3NhckpSQ2ROanJwbWRMYVNHR2IxVU01bTJQTUxn?=
 =?utf-8?B?c04zSUVSd3Fvc0tHNG1pT2s4OFNYaWlHbXQyUmtnd3E3cW5GcDVvV2daVURY?=
 =?utf-8?B?ckxaZXJ3dEVoQkVzS1RnRi9hazdWYTRlbzRIczllZ0tBRTVLUlM1K24xbWZp?=
 =?utf-8?B?a0hEWEtFbUxUd2Jhejk2OS93QW1BOERUNVpEOXhkbENsOEFmaFZRTjNFVUk5?=
 =?utf-8?B?cEcwUUJKVTlGNDVualZxV1d1K2g3c2NTZHBJd0VSQ2cwajZwS2lVK0ptc1hr?=
 =?utf-8?B?dGZkNGo0SnVyUVlMSkR4bDd2VmNrcGdnRlY2eGRRYXAwNGdVMjZQZlpnQUNy?=
 =?utf-8?B?VGQxVmVSVUw3OHZLRTgvd2lUWmJUM2FLZXJjVnNCZWFTTmZBWWdlZmhQZHZ3?=
 =?utf-8?B?NHZqdWIrZHNTVTJXa2Vmc1BIZnB0dVBjb2VqQThKUjA5WTVGM2M1S1lPc0t4?=
 =?utf-8?B?QU5oV21MQzZ0Tjl5VUdXNDBML0JzSXhoWWRTUFo1bWszOTlHeDdOTnd1T3p0?=
 =?utf-8?Q?qNPfwM2zFn2ZIZAB4TbzjqaQIpzPYj2xpzkRfiRYDECs0?=
X-MS-Exchange-AntiSpam-MessageData-1: DZ8TiKFad3hVQQ==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2877db00-3af9-49e8-b797-08da2ebf2a33
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2022 17:46:21.6290
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v2bMTgRhIWIoYhwYLq/b/o9ipRXu+vjlWDSugvzMENyZWQ8ZOHbTu1grE7vpq7Sp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1152
Message-ID-Hash: SEXNOEZVVVXUIO43QKL5BYAF44NQYCWY
X-Message-ID-Hash: SEXNOEZVVVXUIO43QKL5BYAF44NQYCWY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-buf: cleanup dma_fence_unwrap selftest
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SEXNOEZVVVXUIO43QKL5BYAF44NQYCWY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMDUuMjIgdW0gMTU6Mjkgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBXZWQsIE1h
eSAwNCwgMjAyMiBhdCAwMjoyMjo1MlBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gVGhlIHNlbGZ0ZXN0cywgZml4IHRoZSBlcnJvciBoYW5kbGluZywgcmVtb3ZlIHVudXNlZCBm
dW5jdGlvbnMgYW5kIHN0b3ANCj4+IGxlYWtpbmcgbWVtb3J5IGluIGZhaWxlZCB0ZXN0cy4NCj4+
DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAu
YyB8IDQwICsrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMgYi9kcml2ZXJzL2RtYS1idWYvc3Qt
ZG1hLWZlbmNlLXVud3JhcC5jDQo+PiBpbmRleCAwMzlmMDE2YjU3YmUuLjU5NjI4YWRkOTNmNSAx
MDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCj4+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCj4+IEBAIC00LDI3
ICs0LDE5IEBADQo+PiAgICAqIENvcHlyaWdodCAoQykgMjAyMiBBZHZhbmNlZCBNaWNybyBEZXZp
Y2VzLCBJbmMuDQo+PiAgICAqLw0KPj4gICANCj4+ICsjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNl
Lmg+DQo+PiArI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1hcnJheS5oPg0KPj4gKyNpbmNsdWRl
IDxsaW51eC9kbWEtZmVuY2UtY2hhaW4uaD4NCj4+ICAgI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5j
ZS11bndyYXAuaD4NCj4+IC0jaWYgMA0KPj4gLSNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4NCj4+
IC0jaW5jbHVkZSA8bGludXgva3RocmVhZC5oPg0KPj4gLSNpbmNsdWRlIDxsaW51eC9tbS5oPg0K
Pj4gLSNpbmNsdWRlIDxsaW51eC9zY2hlZC9zaWduYWwuaD4NCj4+IC0jaW5jbHVkZSA8bGludXgv
c2xhYi5oPg0KPj4gLSNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5oPg0KPj4gLSNpbmNsdWRlIDxs
aW51eC9yYW5kb20uaD4NCj4+IC0jZW5kaWYNCj4+ICAgDQo+PiAgICNpbmNsdWRlICJzZWxmdGVz
dC5oIg0KPj4gICANCj4+ICAgI2RlZmluZSBDSEFJTl9TWiAoNCA8PCAxMCkNCj4+ICAgDQo+PiAt
c3RhdGljIGlubGluZSBzdHJ1Y3QgbW9ja19mZW5jZSB7DQo+PiArc3RydWN0IG1vY2tfZmVuY2Ug
ew0KPj4gICAJc3RydWN0IGRtYV9mZW5jZSBiYXNlOw0KPj4gICAJc3BpbmxvY2tfdCBsb2NrOw0K
Pj4gLX0gKnRvX21vY2tfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikgew0KPj4gLQlyZXR1cm4g
Y29udGFpbmVyX29mKGYsIHN0cnVjdCBtb2NrX2ZlbmNlLCBiYXNlKTsNCj4+IC19DQo+PiArfTsN
Cj4+ICAgDQo+PiAgIHN0YXRpYyBjb25zdCBjaGFyICptb2NrX25hbWUoc3RydWN0IGRtYV9mZW5j
ZSAqZikNCj4+ICAgew0KPj4gQEAgLTQ1LDcgKzM3LDggQEAgc3RhdGljIHN0cnVjdCBkbWFfZmVu
Y2UgKm1vY2tfZmVuY2Uodm9pZCkNCj4+ICAgCQlyZXR1cm4gTlVMTDsNCj4+ICAgDQo+PiAgIAlz
cGluX2xvY2tfaW5pdCgmZi0+bG9jayk7DQo+PiAtCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNlLCAm
bW9ja19vcHMsICZmLT5sb2NrLCAwLCAwKTsNCj4+ICsJZG1hX2ZlbmNlX2luaXQoJmYtPmJhc2Us
ICZtb2NrX29wcywgJmYtPmxvY2ssDQo+PiArCQkgICAgICAgZG1hX2ZlbmNlX2NvbnRleHRfYWxs
b2MoMSksIDEpOw0KPj4gICANCj4+ICAgCXJldHVybiAmZi0+YmFzZTsNCj4+ICAgfQ0KPj4gQEAg
LTExMyw3ICsxMDYsNiBAQCBzdGF0aWMgaW50IHNhbml0eWNoZWNrKHZvaWQgKmFyZykNCj4+ICAg
CWlmICghY2hhaW4pDQo+PiAgIAkJcmV0dXJuIC1FTk9NRU07DQo+PiAgIA0KPj4gLQlkbWFfZmVu
Y2Vfc2lnbmFsKGYpOw0KPj4gICAJZG1hX2ZlbmNlX3B1dChjaGFpbik7DQo+PiAgIAlyZXR1cm4g
ZXJyOw0KPj4gICB9DQo+PiBAQCAtMTU0LDEwICsxNDYsMTAgQEAgc3RhdGljIGludCB1bndyYXBf
YXJyYXkodm9pZCAqYXJnKQ0KPj4gICAJCWVyciA9IC1FSU5WQUw7DQo+PiAgIAl9DQo+PiAgIA0K
Pj4gLQlkbWFfZmVuY2Vfc2lnbmFsKGYxKTsNCj4+IC0JZG1hX2ZlbmNlX3NpZ25hbChmMik7DQo+
PiArCWRtYV9mZW5jZV9wdXQoZjEpOw0KPj4gKwlkbWFfZmVuY2VfcHV0KGYyKTsNCj4gSSdtIGNv
bXBsZXRlbHkgbG9zdCBvbiB3aHkgeW91IGFkZCB0aGVzZSBfcHV0KCkgY2FsbHM/DQoNCkJlY2F1
c2UgbXkgZml2ZSB5ZWFyIG9sZCBoYWQgYSBuaWdodG1hcmUgYW5kIEkgaGFkIG5vdCBlbm91Z2gg
Y2FmZmVpbmUgDQppbiBteSBibG9vZCBzdHJlYW0gb24gdGhlIG5leHQgbW9ybmluZy4NCg0KRml4
ZWQgaW4gdGhlIG5leHQgcm91bmQuDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPiAgIFRoZSBy
ZWZlcmVuY2Ugd2UNCj4gY3JlYXRlIGFsbCBnZXQgdHJhbnNmZXJyZWQgb3ZlciB0byB0aGUgY29u
dGFpbmVyIG9iamVjdCwgYW5kIHRoYXQgdGFrZXMNCj4gY2FyZSBvZiByZWxlYXNpbmcgdGhlbS4N
Cj4NCj4gVGhlIG90aGVyIGJpdHMgd2l0aCBlcnJvciBoYW5kbGluZyBhbmQgY29kZSBjbGVhbnVw
IGFsbCBsb29rIGdvb2QsIGFuZA0KPiBkcm9wcGluZyBkbWFfZmVuY2Vfc2lnbmFsIGNhbGxzIGFs
c28gbWFrZXMgc2Vuc2UuIEJ1dCB0aGlzIG9uZSBJIGRvbid0DQo+IGdldC4NCj4gLURhbmllbA0K
Pg0KPj4gICAJZG1hX2ZlbmNlX3B1dChhcnJheSk7DQo+PiAtCXJldHVybiAwOw0KPj4gKwlyZXR1
cm4gZXJyOw0KPj4gICB9DQo+PiAgIA0KPj4gICBzdGF0aWMgaW50IHVud3JhcF9jaGFpbih2b2lk
ICphcmcpDQo+PiBAQCAtMTk2LDEwICsxODgsMTAgQEAgc3RhdGljIGludCB1bndyYXBfY2hhaW4o
dm9pZCAqYXJnKQ0KPj4gICAJCWVyciA9IC1FSU5WQUw7DQo+PiAgIAl9DQo+PiAgIA0KPj4gLQlk
bWFfZmVuY2Vfc2lnbmFsKGYxKTsNCj4+IC0JZG1hX2ZlbmNlX3NpZ25hbChmMik7DQo+PiArCWRt
YV9mZW5jZV9wdXQoZjEpOw0KPj4gKwlkbWFfZmVuY2VfcHV0KGYyKTsNCj4+ICAgCWRtYV9mZW5j
ZV9wdXQoY2hhaW4pOw0KPj4gLQlyZXR1cm4gMDsNCj4+ICsJcmV0dXJuIGVycjsNCj4+ICAgfQ0K
Pj4gICANCj4+ICAgc3RhdGljIGludCB1bndyYXBfY2hhaW5fYXJyYXkodm9pZCAqYXJnKQ0KPj4g
QEAgLTI0MiwxMCArMjM0LDEwIEBAIHN0YXRpYyBpbnQgdW53cmFwX2NoYWluX2FycmF5KHZvaWQg
KmFyZykNCj4+ICAgCQllcnIgPSAtRUlOVkFMOw0KPj4gICAJfQ0KPj4gICANCj4+IC0JZG1hX2Zl
bmNlX3NpZ25hbChmMSk7DQo+PiAtCWRtYV9mZW5jZV9zaWduYWwoZjIpOw0KPj4gKwlkbWFfZmVu
Y2VfcHV0KGYxKTsNCj4+ICsJZG1hX2ZlbmNlX3B1dChmMik7DQo+PiAgIAlkbWFfZmVuY2VfcHV0
KGNoYWluKTsNCj4+IC0JcmV0dXJuIDA7DQo+PiArCXJldHVybiBlcnI7DQo+PiAgIH0NCj4+ICAg
DQo+PiAgIGludCBkbWFfZmVuY2VfdW53cmFwKHZvaWQpDQo+PiAtLSANCj4+IDIuMjUuMQ0KPj4N
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
