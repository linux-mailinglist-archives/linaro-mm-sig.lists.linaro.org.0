Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE36599CEE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Aug 2022 15:33:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80CAC3F8D6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Aug 2022 13:33:17 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2044.outbound.protection.outlook.com [40.107.101.44])
	by lists.linaro.org (Postfix) with ESMTPS id 1DF093EBF9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Aug 2022 13:33:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARxUm7HTLdrU2aXi/CExY5CGeGqh76ivklmVMrPqIgHbzAndcnd5iKnNYFyZjbuEeLEohjsMK09V5IPAjHrbNZqR37bC2fQlglMuSd/E588uyKpSJYiKCrrPFiTgx9Gy/BBhX66JXWRJnc1JYWQIa8JMyur33lUAU61Voc6RcUBRXnm9/pR8R2H9BjhsEqmqideCT3+OeRJXc0ZeBjYJ1bJLNxxr2fKLlKJBMioi4jAvLFynTP/59TCfUIglXlhHt75y+y0eXYSae+z6+J4ci81Wl+cAy5CqkVHNgjUhSbg6RUYDipf1THOFa6vhlr12B3ZFfeS2HPMZlE9HLm2FNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/dp9n8uuGIph0BPgnT8ZXjuxclzQFNsjdT/RWYBflSw=;
 b=gtGj57xG5UXq9AHCKEogkqpa4WAtR/QKNCxxZwgte/5tK/Z8qik7mkMND8nEmpak0w4drac2DqnwgU6JHBNZqLCQ5A3GvOlEt/vlEaUR1y8GSkyO6xUdo3VNaxkAY6DdUTGB5WIarrqpeUr16yu7noaVb8hvpCPukl6GLQ/oJPU6hEE0+EsXZgP68TBcr1qENt4tlkLTNlnAzXUt9sYFV9X1++3Ubqwo6rzuDl4cTmAY5bX+Gz2HCM780ZhLwkzxpr+cs9AVeD/p4eEldiv0L3bEgwDZm2IfHuPt6jQRpLLmzSBAFPjv5bmB6X0zfIkzFN6jjBnGSYFhrjOIEFxwBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/dp9n8uuGIph0BPgnT8ZXjuxclzQFNsjdT/RWYBflSw=;
 b=mSQtnd0UyxLVVVkwsPsTpOKn/eAozk9oqy7FQHOgRDW7CtUA+59Qpbwvg49MXXp5VMm33lRzBQdhBD+ZDHKe/UzKsBS9h/111W6WHtBgIVOu6rmei7IfAM+8xX9qO5qdepnaBRtX0NJIXoiuc5lDcp9t8sEzor3AEbOh4MMrVbM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SA0PR12MB4400.namprd12.prod.outlook.com (2603:10b6:806:95::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Fri, 19 Aug
 2022 13:33:11 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Fri, 19 Aug 2022
 13:33:11 +0000
Message-ID: <a29de43e-2dec-fd27-2e24-31af1d3ce470@amd.com>
Date: Fri, 19 Aug 2022 15:33:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>
References: <0-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
 <921de79a-9cb3-4217-f079-4b23958a16aa@amd.com> <Yv4qlOp9n78B8TFb@nvidia.com>
 <d12fdf94-fbef-b981-2eff-660470ceca22@amd.com> <Yv47lkz7FG8vhqA5@nvidia.com>
 <23cb08e4-6de8-8ff4-b569-c93533bf0e19@amd.com> <Yv+MD44ET211LMIl@nvidia.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Yv+MD44ET211LMIl@nvidia.com>
X-ClientProxiedBy: AS9PR06CA0099.eurprd06.prod.outlook.com
 (2603:10a6:20b:465::34) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b76b0b7c-18d2-40a0-8c5c-08da81e75c42
X-MS-TrafficTypeDiagnostic: SA0PR12MB4400:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cvOg4XLyyroloMSEW7AyPaGkShkGeE/j18/O+a92NarbbahvwdSyKozCIKiNEiJLZLN9uMxSdus6dV2N/JbcyBw2fjpR4Fm6idTE3Fr9skp/t750NleZpeXwkTXB+96Muv+CVErKvuZCfwAPYolVT0ogHyaWr+w2lWrL9Uw3LuC10AHpyBET6BmDYhna0SwAlLD5Vi9Qfwb6udYwYJ5LIx1RKbZlGBqyadu8P+hyROM4OAHJcKvtbORGHw6+3GlPBn1vB/PFQC6egQRKILOvo6JVyiivoYe5hJJ7NV4I68PC9h98b0QA6pSjsOQXq5RR7LEtVEQ9FUT9pHjC3Wb8Hyoq6dcH6924e4+OA4CgwYlU5+AQv8OVDg9jfFHNvX/PFVuTpPKxRtYxTlNGvHJQlmgiICsVuLqc6wi86RxFMvFeliQ9TZHWvrkjoeUK+M39ol2gPk5ZWQJT8pg9eFZ4Yo5yN7tL6+JoC0aT4uFy2YM4Ge8ibZQN6L0Vcbb90szz6PfP32+uRYZTMoe2IxTKH0SJo/ay224mAK0M6EpnRydID6hYrGxv9zTPJlQ+XBiBlEUP4w1TVx3gjx7kOBH2QMkOdJe0Z6khuS7xOApKLaoKb9X9Yv2fhYh2BWpnSvIjBEFSbCzCwbjiUe372c5teK33F5aa3afnLogUPcjqkKdbBPpl0HSeBAq1NfsRLQNVMEJBfNcPfGLtqN+Pd3PzbJq2k1/3ZHoxBb0DSJ/YVV6SzM3+3q//zwiMqZEsINqDZSmtsXKSyLoQlSOhX9ferg2VbT7yAbdz63soi1kuE0A=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(2906002)(36756003)(41300700001)(4326008)(8676002)(31686004)(54906003)(6916009)(478600001)(6512007)(316002)(6486002)(6506007)(6666004)(2616005)(31696002)(66556008)(66476007)(186003)(66574015)(86362001)(8936002)(66946007)(7416002)(5660300002)(38100700002)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S3ZmTGR5Q2JjMTU3d1llREtMditGam1nOG1oNHJENm9HbW0rNCtFQlBOd25Q?=
 =?utf-8?B?OHpvRUxwZ0VjRTdrVi82cVZrcldQQWk0U3NtZGJDZmxiL0tSYyt5VjYydjZo?=
 =?utf-8?B?R2NPbVNwNno2eHdtcHlCaHNaQ3hXU3AySDlYaTRpZ3pPVUpBQkVaamNmMnBR?=
 =?utf-8?B?UWhGMit4QmhKWEk4bmpMUEFtZUVBd3lWMTdpckYvTzVaV0VkbmpLa2ZmUDZ0?=
 =?utf-8?B?YWJKZTBzWmlyWks3QW00RmJxaUt4dmJMaFlmS3BBT1lZekRJZURJbnZ6c1Qy?=
 =?utf-8?B?RUFQZTNTZlNmR25XSFhRR09xUEo1QnFnOWIvUDBBTmliR3hQUGlRckxrN21t?=
 =?utf-8?B?Nlh4RVFaWVJCdGVGelJCTDlNY3FiT1BLQ0xlNllPcnpHU09sZXBJUmx6NDEx?=
 =?utf-8?B?ZllCM3ZTSy82cHhFSFM1eDRDSkd1emJ2UVpLeE9VTjIvUXk4aFFybnJ5RFpn?=
 =?utf-8?B?ZFhFOGdHOTVhTDFuY2UvNmh1VXBiWHhCTklqOC9ZQzBpNDBUbUFaVEV0Szdn?=
 =?utf-8?B?S0p2VFhsTGcyTW5BS1FuRThtWi8zc3I3NWpCQ2tnUEt6THcvMVNud1A2YWJU?=
 =?utf-8?B?YW1STGZxdGxMeU1kYlJsVUJJbWtnMzc5cjNZYlhNMlU1SG45bDZSMmhkNytT?=
 =?utf-8?B?TmNlSUs3ZUY0MVlJN2EzbmVDcUhqY0g3a09vQlhRcDl3UytMd3cxZ1pKeUZU?=
 =?utf-8?B?MmRvcms2RTRCVzZGMDNlVUM4bThSMXo5Y1gvR3hDZ0txeEw3T252cG1rV01G?=
 =?utf-8?B?cERHUG83MXNtRnU0QVNOc0syb3lmemJYN0ZRT01LSWFGVjU2R3lQc2hVa3ZJ?=
 =?utf-8?B?WUtaTlBFUjh3YmcyZUZMdDFPTVlYRi9BTnpzM0RKR0VnY0pmTjNrelZCenpl?=
 =?utf-8?B?SWgyTlFKNUszL29aZnZ4ZlJFOTdpZ0hIUFBlNmtXeDdxcWx2bm9Dd2Nkb2xJ?=
 =?utf-8?B?ZDEvRm1jTThVbEVuYU9VVVQvTWhYZExNVzZCMExwd1Mvczg4Z0tkbzdRdmFT?=
 =?utf-8?B?MThVa2lVeG84Z2hhN0djb1RrR1BBZXNFcDFPZ0ZBcmM3YlhwU29tckh2RUlR?=
 =?utf-8?B?OW03bXJDaVNpeFlNTklLampxV2lHcVZoSFQ2OGpXdjFKWWtKcHlrek0wZDZZ?=
 =?utf-8?B?dEpYaU1vVXpmZ3NkRExoTzA3V0hTZ3E3Y2FoVzlBeUtpNHVTOUR0dmYzUEQ2?=
 =?utf-8?B?T1hOaUxqZTNnSXRydUh1cy9JZW1KMkNSV3pDRmlmU2MyazBDSXBYUU1SNE1V?=
 =?utf-8?B?ZG4zV2VIREdGU1h6UitEajgramhRSVR5QWdhcU9oWVQ3ZHNtUjVpMy9HRFdu?=
 =?utf-8?B?RDV2UmJRMi9CaWR2cjg5S0JKTVR3bDV6bjMwdFZROUYzNmNoM1lmbzd3VkEr?=
 =?utf-8?B?WTBsM3BDd3lJWWM4VnFHZFpVb3VkdkdTYTZUbHI0RWNnL3Rlbm9rU3M5cFhm?=
 =?utf-8?B?RjFPZDZLZENVcnZTYlh0Nkg4cittc24xU0c4YUxlVlgzRmJFUDFmSDFEYUU0?=
 =?utf-8?B?bHMwOU1kWktiTXA0TUxWSmZnWUl5eDNrbXZRaWc2Z01IdnVSUlJQQzZyVTdw?=
 =?utf-8?B?bGhSYk9CZ3lTZEJBZlhYa0lCV0E3TTlocGQxeUxydmZCUWpXdm1IU0FwbSsv?=
 =?utf-8?B?S01GeE5POWx2eWp1WHlpbnVDUjNvOU9WRmRDV3BxTHJsQXJteXJJNzN3NjlK?=
 =?utf-8?B?ZUpVSDN3Si9Fa1VHdTMwdjFKWnovV2huMnRwMmg4WmtBeDZjWVg2OU9NNzBZ?=
 =?utf-8?B?OUlrNEFPUmlKcHdjWTJCVDhLYmo2MUlSOUZhQmdTdVZjaDQ4dmZHZlBaM09G?=
 =?utf-8?B?TFQ4djVYd1lZaStyeVNCQ0VjUDd1cG9mR0xpMHhvTWUrVytDa1VrTWgvLzh5?=
 =?utf-8?B?NVVpT3o4akFRRGFqZU1uNTVvVGVPSE8wSEh5Qnd2dnZnU1d2WW5qUU4xQWNN?=
 =?utf-8?B?Z0xjQlFNUXhlYTBxL3NmMzltZ3d4djVrWEZZM01OS0JmQ3RGSFJVaFZtYWQ3?=
 =?utf-8?B?dlYrelBFU3dPb0xiV1Y4ZjhJVVB2ZGh2L1NvRm1uTFlCYnhaOEl0UCtPYkls?=
 =?utf-8?B?WFNSTFpadm8zdUtIcEdCYWRqUmNweXk5WTRJRWR1bjRVaklJcEtLMU05SkdF?=
 =?utf-8?B?QTl4SGw4dVNZSTJNOU5MellQYnUxc2E4TUFpUEJFWlViQ3NOQmtySGhXY2hU?=
 =?utf-8?Q?GTERU+iC+CkZy6oZZ3M76SEPLTRlQ1k7PTJzis/yE2uU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b76b0b7c-18d2-40a0-8c5c-08da81e75c42
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2022 13:33:11.3358
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F6N6TT73mHIXaDrYgAA99EllKoTEYh740FOYdd3/lBBNF6OdiRCsWHZ1VlHBaqsF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4400
Message-ID-Hash: HEU5U7IFG7NGNIWXUAFZXPU3PRYFCDVG
X-Message-ID-Hash: HEU5U7IFG7NGNIWXUAFZXPU3PRYFCDVG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HEU5U7IFG7NGNIWXUAFZXPU3PRYFCDVG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTkuMDguMjIgdW0gMTU6MTEgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+IE9uIFRodSwg
QXVnIDE4LCAyMDIyIGF0IDAzOjM3OjAxUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAxOC4wOC4yMiB1bSAxNToxNiBzY2hyaWViIEphc29uIEd1bnRob3JwZToNCj4+PiBP
biBUaHUsIEF1ZyAxOCwgMjAyMiBhdCAwMjo1ODoxMFBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPj4+DQo+Pj4+Pj4gVGhlIG9ubHkgdGhpbmcgSSdtIG5vdCAxMDAlIGNvbnZpbmNl
ZCBvZiBpcyBkbWFfYnVmX3RyeV9nZXQoKSwgSSd2ZSBzZWVuDQo+Pj4+Pj4gdGhpcyBpbmNvcnJl
Y3RseSB1c2VkIHNvIG1hbnkgdGltZXMgdGhhdCBJIGNhbid0IGNvdW50IHRoZW0gYW55IG1vcmUu
DQo+Pj4+Pj4NCj4+Pj4+PiBXb3VsZCB0aGF0IGJlIHNvbWVob3cgYXZvaWRhYmxlPyBPciBjb3Vs
ZCB5b3UgYXQgbGVhc3QgZXhwbGFpbiB0aGUgdXNlIGNhc2UNCj4+Pj4+PiBhIGJpdCBiZXR0ZXIu
DQo+Pj4+PiBJIGRpZG4ndCBzZWUgYSB3YXksIG1heWJlIHlvdSBrbm93IG9mIG9uZQ0KPj4+PiBG
b3IgR0VNIG9iamVjdHMgd2UgdXN1YWxseSBkb24ndCB1c2UgdGhlIHJlZmVyZW5jZSBjb3VudCBv
ZiB0aGUgRE1BLWJ1ZiwgYnV0DQo+Pj4+IHJhdGhlciB0aGF0IG9mIHRoZSBHRU0gb2JqZWN0IGZv
ciB0aGlzLiBCdXQgdGhhdCdzIG5vdCBhbiBpZGVhbCBzb2x1dGlvbg0KPj4+PiBlaXRoZXIuDQo+
Pj4gWW91IGNhbid0IHJlYWxseSBpZ25vcmUgdGhlIGRtYWJ1ZiByZWZjb3VudC4gQXQgc29tZSBw
b2ludCB5b3UgaGF2ZSB0bw0KPj4+IGRlYWwgd2l0aCB0aGUgZG1hYnVmIGJlaW5nIGFzeW5jaHJv
bm91c2x5IHJlbGVhc2VkIGJ5IHVzZXJzcGFjZS4NCj4+IFllYWgsIGJ1dCBpbiB0aGlzIGNhc2Ug
dGhlIGRtYS1idWYgaXMganVzdCBhIHJlZmVyZW5jZSB0byB0aGUgcmVhbC9wcml2YXRlDQo+PiBv
YmplY3Qgd2hpY2ggaG9sZHMgdGhlIGJhY2tpbmcgc3RvcmUuDQo+IFRoZSBnZW0gYXBwcm9hY2gg
aXMgYmFja3dhcmRzIHRvIHdoYXQgSSBkaWQgaGVyZS4NCg0KQXMgSSBzYWlkLCB3aGF0IEdFTSBk
b2VzIGlzIG5vdCBuZWNlc3NhcnkgdGhlIGJlc3QgYXBwcm9hY2ggZWl0aGVyLg0KDQo+IEdFTSBo
b2xkcyBhIHNpbmdsZXRvbiBwb2ludGVyIHRvIHRoZSBkbWFidWYgYW5kIGhvbGRzIGEgcmVmZXJl
bmNlIG9uDQo+IGl0IGFzIGxvbmcgYXMgaXQgaGFzIHRoZSBwb2ludGVyLiBUaGlzIG1lYW5zIHRo
ZSBkbWFidWYgY2FuIG5vdCBiZQ0KPiBmcmVlZCB1bnRpbCB0aGUgR0VNIG9iamVjdCBpcyBmcmVl
ZC4NCj4NCj4gRm9yIHRoaXMgSSBoZWxkIGEgIndlYWsgcmVmZXJlbmNlIiBvbiB0aGUgZG1hYnVm
IGluIGEgbGlzdCwgYW5kIHdlDQo+IGNvbnZlcnQgdGhlIHdlYWsgcmVmZXJlbmNlIHRvIGEgc3Ry
b25nIHJlZmVyZW5jZSBpbiB0aGUgdXN1YWwgd2F5DQo+IHVzaW5nIGEgdHJ5X2dldC4NCj4NCj4g
VGhlIHJlYXNvbiBpdCBpcyBkaWZmZXJlbnQgaXMgYmVjYXVzZSB0aGUgVkZJTyBpbnRlcmZhY2Ug
YWxsb3dzDQo+IGNyZWF0aW5nIGEgRE1BQlVGIHdpdGggdW5pcXVlIHBhcmFtZXRlcnMgb24gZXZl
cnkgdXNlciByZXF1ZXN0LiBFZyB0aGUNCj4gdXNlciBjYW4gc2VsZWN0IGEgQkFSIGluZGV4IGFu
ZCBhIHNsaWNlIG9mIHRoZSBNTUlPIHNwYWNlIHVuaXF1ZSB0bw0KPiBlYWNoIGVhY2ggcmVxdWVz
dCBhbmQgdGhpcyByZXN1bHRzIGluIGEgdW5pcXVlIERNQUJVRi4NCj4NCj4gRHVlIHRvIHRoaXMg
d2UgaGF2ZSB0byBzdG9yZSBhIGxpc3Qgb2YgRE1BQlVGcyBhbmQgd2UgbmVlZCB0aGUNCj4gRE1B
QlVGJ3MgdG8gY2xlYW4gdXAgdGhlaXIgbWVtb3J5IHdoZW4gdGhlIHVzZXIgY2xvc2VzIHRoZSBm
aWxlLg0KDQpZZWFoLCB0aGF0IG1ha2VzIHNlbnNlLg0KDQo+Pj4gU28gd2UgY291bGQgZGVsZXRl
IHRoZSB0cnlfYnVmIGFuZCBqdXN0IHJlbHkgb24gbW92ZSBiZWluZyBzYWZlIG9uDQo+Pj4gcGFy
dGlhbGx5IGRlc3Ryb3llZCBkbWFfYnVmJ3MgYXMgcGFydCBvZiB0aGUgQVBJIGRlc2lnbi4NCj4+
IEkgdGhpbmsgdGhhdCBtaWdodCBiZSB0aGUgbW9yZSBkZWZlbnNpdmUgYXBwcm9hY2guIEEgY29t
bWVudCBvbiB0aGUNCj4+IGRtYV9idWZfbW92ZV9ub3RpZnkoKSBmdW5jdGlvbiBzaG91bGQgcHJv
YmFibHkgYmUgYSBnb29kIGlkZWEuDQo+IElNSE8sIGl0IGlzIGFuIGFudGktcGF0dGVybi4gVGhl
IGNhbGxlciBzaG91bGQgaG9sZCBhIHN0cm9uZyByZWZlcmVuY2UNCj4gb24gYW4gb2JqZWN0IGJl
Zm9yZSBpbnZva2luZyBhbnkgQVBJIHN1cmZhY2UuIFVwZ3JhZGluZyBhIHdlYWsNCj4gcmVmZXJl
bmNlIHRvIGEgc3Ryb25nIHJlZmVyZW5jZSByZXF1aXJlcyB0aGUgc3RhbmRhcmQgInRyeSBnZXQi
IEFQSS4NCj4NCj4gQnV0IGlmIHlvdSBmZWVsIHN0cm9uZ2x5IEkgZG9uJ3QgbWluZCBkcm9wcGlu
ZyB0aGUgdHJ5X2dldCBhcm91bmQgbW92ZS4NCg0KV2VsbCBJIHNlZSBpdCBhcyB3ZWxsIHRoYXQg
Ym90aCBhcHByb2FjaGVzIGFyZSBub3QgaWRlYWwsIGJ1dCBteSBndXQgDQpmZWVsaW5nIHRlbGxz
IG1lIHRoYXQganVzdCBkb2N1bWVudGluZyB0aGF0IGRtYV9idWZfbW92ZV9ub3RpZnkoKSBjYW4g
DQpzdGlsbCBiZSBjYWxsZWQgYXMgbG9uZyBhcyB0aGUgcmVsZWFzZSBjYWxsYmFjayB3YXNuJ3Qg
Y2FsbGVkIHlldCBpcyANCnByb2JhYmx5IHRoZSBiZXR0ZXIgYXBwcm9hY2guDQoNCk9uIHRoZSBv
dGhlciBoYW5kIHRoaXMgaXMgcmVhbGx5IGp1c3QgYSBndXQgZmVlbGluZyB3aXRob3V0IHN0cm9u
ZyANCmFyZ3VtZW50cyBiYWNraW5nIGl0LiBTbyBpZiBzb21lYm9keSBoYXMgYW4gYXJndW1lbnQg
d2hpY2ggbWFrZXMgdHJ5X2dldCANCm5lY2Vzc2FyeSBJJ20gaGFwcHkgdG8gaGVhciBpdC4NCg0K
UmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBKYXNvbg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
