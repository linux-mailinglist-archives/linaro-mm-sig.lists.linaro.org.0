Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3683258E6D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 07:55:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61C884799D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 05:55:28 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2058.outbound.protection.outlook.com [40.107.244.58])
	by lists.linaro.org (Postfix) with ESMTPS id DCE294049D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 05:55:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gyBoNMO9NkNOUVJvairHGMt8Iv5/ol0FJhhnyGE3Jg3vnyLd5YVxvm23sCFjnOwRyGQr23Ee0C/G/MKR6s1eL++eaVj7e6PpIOl6aa0DgV12o68zwia9g3ywlRzh/hHEwzoJJuMzNPFY2cEy7NKmw5v4Zk9DFr9q6dnqd1bI8ht5gWGEqwuiJXmAAMnIXumLtdzzJ1LLN8aGbN6aYp9R7axkSZyV02FAV59eDIjGJ6jE4DTVY8E45rTXRnGAhSbm3JFJFvcQdVfEg0Vrk8khBVNLk+129UTSm8pN+aynnGw9dyo0PzPS3008UpJ2o7sLxywXq1dmxcDS4eYK5qGfnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A7/TDF2eWXC0UqWxTepQfK9zXwsTNOllxMc5CldvwJU=;
 b=JvJdyBtCBH2guvD3KiZ9lLEHcyTFTxiEOkznrC7ZoVdbRq2kysjx01Y2wFRPbP7oaumcszpIOzKnDmLJNAmvSo4pAtB5pPtYH8s63uaRAZ2sWPNRK8GP6NJuA6tn2Ym+1N3SzCES7y91wi7iVmbw5mz8z0BPuf3He7JkBGWY0rLt4g9kS/JbbBqbwLgJjrozv46j48t74I++eEBhakh+RRJ5YtFoYr5qFn3Y7g6grsL4RzS4HnGqlUCcgjF72al1bZcuIXISXvIzodYIyA5uDvzbji2KfwrAAlXb3puoGIWxNfVugn7XjrZQ4rPfDQmweWLfuNq504timyMHyFPj4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A7/TDF2eWXC0UqWxTepQfK9zXwsTNOllxMc5CldvwJU=;
 b=uVSwGm38yPWrqzEcWE+yQ8KeLiI5IulQdIyzp6gaarXAglpF5WjMbgLbt2jTieBiI2oYiEXLZiDwCOMBiTmJSOuNfs6T/WUilLA2Dph5GomicIA4LsxB2mtzRavIikkwk7t7OOfFbQ3+q22wPTXISonTWbTk1StZJMG+XkG+O9k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SJ0PR12MB6712.namprd12.prod.outlook.com (2603:10b6:a03:44e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Wed, 10 Aug
 2022 05:55:22 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Wed, 10 Aug 2022
 05:55:21 +0000
Message-ID: <298c183e-6608-6550-6a3f-3283edc43f39@amd.com>
Date: Wed, 10 Aug 2022 07:55:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Daniel Stone <daniel@fooishbar.org>, Pekka Paalanen <ppaalanen@gmail.com>,
 "Sharma, Shashank" <Shashank.Sharma@amd.com>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org,
 Sumit Semwal <sumit.semwal@linaro.org>,
 linux-media <linux-media@vger.kernel.org>
References: <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
 <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
 <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
 <05814ddb-4f3e-99d8-025a-c31db7b2c46b@amd.com>
 <708e27755317a7650ca08ba2e4c14691ac0d6ba2.camel@pengutronix.de>
 <6287f5f8-d9af-e03d-a2c8-ea8ddcbdc0d8@amd.com>
 <CAPj87rOykZv7bjNhHPT4StrsPz8Y_DWqab4Ryq=Qqh77LS2e=Q@mail.gmail.com>
 <578953dd-6298-2bfe-a8fb-52004b84fd17@amd.com>
 <YrY0cQY1BTL5H7Xp@phenom.ffwll.local>
 <5eeefadd-7804-3876-c8da-3e6f1bcb9dc0@gmail.com>
 <YvJzM1km0iJ3eFnR@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YvJzM1km0iJ3eFnR@phenom.ffwll.local>
X-ClientProxiedBy: FR3P281CA0149.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::20) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a016b1a-740a-405f-e58e-08da7a94e8d1
X-MS-TrafficTypeDiagnostic: SJ0PR12MB6712:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hK7k6b4aQcVRwvFyRtEvSic3S94dLudMnUC26kw8LVJU0FjOidfxcxm6oHb7H2RfhC3suEbevZPp1RdHAAVjt3w4KucyeFeQRB0b3jnYvaI1jRV1tIGuJLBo2FDNyoexsgRi7sC7yGdGcLpEiaWq72MGL7cAbOVPE/Qoxic5zs98p786sZszz6o72nZgXLXYcWwhV/+cufgUCYdu4DHK6Vb8GVjD4D+7c3aEu4OkkWEhNb0TCw1NCVCEZIideRtR1heFIwMJus7QqEENjchcv4n4g/ZpL1kpWOQBlQwgB6BcSuDk2cpdpQc31yCCitVh1yb16xY6rNF6d6dbGr/7lQ/sSmmSeSU/pucH3XWE12bPPbx71yKUSbz82HfXDUJD0SikGHul0yUvTSyGe6zXj0fenjdYCAX9neWzI6WilOcs/c603nkONeamBRazeg/KOsxQnNGI690DbGb24NKuYTPQ15LIzy5C/ZQjVBmGbznSqM4lk6mp7McS9UpbtnieWoTusSgVpEn9t7yJJQBzmpVoDQrZbiDcgJkOj7RYCirtz8tTZW6icyynsrkVLhm235lCXv5hNR3SdfVcfMua+zx5fdqS1NTHWi3n7+i27lqAWEBjyXyTMPxdn8dheahaVlDaIgEaBoW1wZAjzQz6CB6O7Dr4hIKNTfTbMtoagR7AfRebVGFrAn56nBUhHstY+EXMjYcCJE/ualjfRWGNJu1Olkjxt8VBsbWYwC+vk1S210pPuFMg2mcIDJEg8Z/DA7j8Ya4vzwfpNIRrNzT+wWhzKe6ALg2cIEgP0aMt+6RzNQ7n/8/KIyJcZ9ItWS431ab0C/cCnjz8PVjfBSxXWuZKds8/w+H09iSRcpDlx7U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(366004)(376002)(396003)(136003)(6486002)(478600001)(41300700001)(921005)(6666004)(6512007)(6506007)(86362001)(36756003)(31696002)(66574015)(186003)(31686004)(83380400001)(2616005)(110136005)(8936002)(8676002)(66476007)(66556008)(66946007)(316002)(5660300002)(2906002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?blZ3Q25lRFI0K1lBMkhlZU94Ym01S3VON2pkTUMrWTZ4OFhwMTE3MDB0cmdI?=
 =?utf-8?B?cmR1eFF1U1RHbEpRZmpXdGEyNVB5NGovaWc5VW1xK1RyR0M5UkRtMjczS1lY?=
 =?utf-8?B?WVNBUUtjV3B2M2FzQzhQYlRacFRVTTkyRmt3ZFkvZWxpS1RzdVJzUFBvdmNJ?=
 =?utf-8?B?ODBJSG1WUy8vblJGUGRJVm1wN1J4aDd0Wm5oT210eWxiTks0TG1UWmZYVzc2?=
 =?utf-8?B?NG0veXgzRG1RdVZYOTkwWGJvNk91Z2Y0dkM4NURieG9VaHc1MWNBa3JvZmEr?=
 =?utf-8?B?OVpqcDZ3MEZxUzJVTmNVYm5TakNsMUViL0h5UkFadFluWTBSZFIrK2QrSCtC?=
 =?utf-8?B?SEg1U1AvdFR1OEhZYTBUaU51cjlUUy9VMjByZXJtcHhCbHB0RHRncWFDLzdy?=
 =?utf-8?B?RDhTZEV4VHBhNmhKdlZMd3RGNHB4elBVMnpTWjVxZW53ZnE5VGoyS3FQeWdH?=
 =?utf-8?B?SmpabU83MTFLZHBRTXM5UUR6djlmRnBNZWptMGpUWnZaZzdnbXNFR1JWMjFX?=
 =?utf-8?B?RjB2U2ZXOEE0akJsdE00dWtLekNHVlh5aGNubit1YmFpMkNtYmJjR0tsbkZn?=
 =?utf-8?B?WDFYMzNneGtRbWlRbmhwTTd6NWF4Zndma2d2Vk1oZFQwc1ZtUklaVDZMb3B2?=
 =?utf-8?B?cW44S3NoeUdVNituTGpBYmhjTFZxVEhBSGZtVFVkQUMxeTJjQjVSaHYxai9a?=
 =?utf-8?B?eW44Rzl5TTRNMjdHMlIwQ1NMRjFzMldpdldpNEc3cy9RdktUd2IzY3QzeEox?=
 =?utf-8?B?VXNncmVieE1Nb3c2REszU3BsUEVJYnVjblhaaGJtclcydFVnQW1hQXZuS2Ix?=
 =?utf-8?B?K2RUaDQrRWFsRW1WeFp0V0VkaWVYY3NseTBYNWZBZnUvT2gxcloxbFg5b2hu?=
 =?utf-8?B?TU5uWS84ZXBJNjd5NjByUEYwclBFUnZBbENpUUtzUzk0VVcxMThvcjZrUStt?=
 =?utf-8?B?OVZHTjZsRVAwUUkvelZsd2tsMW9lR2ZJcUZYUURYYWlsNEMwc01NLzNhb1hk?=
 =?utf-8?B?eFJudm5Xb3RYRFRPWStCNXIzeTQ2MmZEdy8zVFY2djJsaU82N3BIdlErdG1Q?=
 =?utf-8?B?Sy9CM0RJN2lsVDJLa2dQcCtYdEdCaTRzeERjZlFVcWlqM0dKYno3SXJiQmpG?=
 =?utf-8?B?Y0dJYXVEL0pKRjIyN0xLbW5rSkZVamorQ2pPMTdZNHFKN3N5YTI5cVJFTE0z?=
 =?utf-8?B?RzlrUS8xVVgrTXA2NVJYN1I2MGxpNVZvT3h4cUNJTlJKbzRoS0Rtc2hxYmtU?=
 =?utf-8?B?bnRmbUpvc2RDRXh0VHhWalZ0QnRTUE5oN0FVQUNrYWNFMTZOTDZ4bG9SL0xi?=
 =?utf-8?B?U2ppVmREb0ZuS0YyYWI0L1dNRktQSi9UWnViWUpMek5EWlh2eDhXdVQ5QnA4?=
 =?utf-8?B?OWtla1pQa1BJY0I0QjFpeWRZcC9LbjVmZlJYU0R0NzJ4NWlpaWtJcDhVKzJN?=
 =?utf-8?B?bFpiL3FuZ1pqRXdXMGxGdmRtNENxQjgveExtejlEK0lxL0x0L3VUNndDbGha?=
 =?utf-8?B?SjZYVHkxMmhWVk1BVGRqZjMyNi93UjlCU3BLNG1NekFZNWFOb002TS9hL2xS?=
 =?utf-8?B?V2dVRmNSbCtOY0NzZ0hxSUozcmtpUHRkVU44cGM2a1kwQmZCRjlZeE4rZVhm?=
 =?utf-8?B?T2JMVmtPTnlxWnJDdFNEMVpmeDI4c0hUbzhoZ0RIZWh4WGkrNjlTZ3BxSXpI?=
 =?utf-8?B?MTlodWV6Y0xwZ05vOXBsbWt5WTNWM0psc3JPS0RpZVNJcE80UUNlR2QrRmNr?=
 =?utf-8?B?UGp0NTVUc09BMnYzRHhCRmsxK1BSc1VxMmdNMWZQVTBZb2FUbmNCTHRVYTJH?=
 =?utf-8?B?K0hXV20zY0ZZUzQzcVdscUtmY0ZHMFR0RHhVdTZiVW1tZ1UwbXBXTTh0bUxs?=
 =?utf-8?B?SmhYQWlhSWxwUlkwUUdqTFJzYk4wcVh6a095cUlteG0yV2RWRmVFZm5ucEI2?=
 =?utf-8?B?c1hUbnk0MFhqK3JWRnErU3hsOEZRRnUvM1hRaFJvemRVMk1HRlRJMWtRTVcy?=
 =?utf-8?B?ZE5HN0Z0WWxHMkNiVkc3ZWNiMnMxNnUzc3haOVExbGowUjNGNmYyZzYxZnNS?=
 =?utf-8?B?UmFYNkNRRFhNYStVajB4WVI1cm1tYzFESit3b2xmZVhjSTFBYWFGaUZOVU1F?=
 =?utf-8?B?VlJZdlRQRlBBUkNxWlNRY3VSSW1GaWRnUkpTcG1WZTdwZmsrNWtmWXZ2ZW1U?=
 =?utf-8?Q?kIg4V+venBtZSq6GQosUSEdnYmJnEmrHYI+B9uhbEz6u?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a016b1a-740a-405f-e58e-08da7a94e8d1
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2022 05:55:20.8664
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wcf0iiC0InK2h3Y/qJ5kS82TF+yM1adp6DTntXQhAR3xEe4CzaPDltyq3g5YfPSg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6712
Message-ID-Hash: 3HAG5H37ZO7LBUUQ2ATQWNZL77HGQNZY
X-Message-ID-Hash: 3HAG5H37ZO7LBUUQ2ATQWNZL77HGQNZY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HAG5H37ZO7LBUUQ2ATQWNZL77HGQNZY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDkuMDguMjIgdW0gMTY6NDYgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBNb24sIEp1
bCAwNCwgMjAyMiBhdCAwMzo0ODowM1BNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gSGkgRGFuaWVsLA0KPj4NCj4+IEFtIDI1LjA2LjIyIHVtIDAwOjAyIHNjaHJpZWIgRGFuaWVs
IFZldHRlcjoNCj4+PiBPbiBUaHUsIEp1biAyMywgMjAyMiBhdCAwMTozMjoxOFBNICswMjAwLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiBBbSAyMy4wNi4yMiB1bSAxMzoyNyBzY2hyaWVi
IERhbmllbCBTdG9uZToNCj4+Pj4+IFtTTklQXQ0KPj4+Pj4gSWYgaXQncyByZWFsbHkgeW91ciBi
ZWxpZWYgdGhhdCBkbWFidWYgcmVxdWlyZXMgdW5pdmVyc2FsIHNub29waW5nLCBJDQo+Pj4+PiBy
ZWNvbW1lbmQgeW91IHNlbmQgdGhlIHBhdGNoIHRvIHVwZGF0ZSB0aGUgZG9jdW1lbnRhdGlvbiwg
YXMgd2VsbCBhcw0KPj4+Pj4gdG8gcmVtb3ZlIERSSVZFUl9QUklNRSBmcm9tLCByZWFsaXN0aWNh
bGx5LCBtb3N0IG5vbi1QQ0lFIGRyaXZlcnMuDQo+Pj4+IFdlbGwsIHRvIGJlIGhvbmVzdCBJIHRo
aW5rIHRoYXQgd291bGQgaW5kZWVkIGJlIG5lY2Vzc2FyeS4NCj4+Pj4NCj4+Pj4gV2hhdCB3ZSBo
YXZlIGNyZWF0ZWQgYXJlIGVzc2VudGlhbGx5IHR3byBkaWZmZXJlbnQgd29ybGRzLCBvbmUgZm9y
IFBDSQ0KPj4+PiBkZXZpY2VzIGFuZCBvbmUgZm9yIHRoZSByZXN0Lg0KPj4+Pg0KPj4+PiBUaGlz
IHdhcyBpbmRlZWQgbm90IHRoZSBpbnRlbnRpb24sIGJ1dCBpdCdzIGEgZmFjdCB0aGF0IGJhc2lj
YWxseSBhbGwNCj4+Pj4gRE1BLWJ1ZiBiYXNlZCBQQ0kgZHJpdmVycyBhc3N1bWUgY29oZXJlbnQg
YWNjZXNzLg0KPj4+IGRtYS1idWYgZG9lcyBub3QgcmVxdWlyZSB1bml2ZXJzYWwgc25vb3Bpbmcu
DQo+Pj4NCj4+PiBJdCBkb2VzIGRlZmFjdG8gcmVxdWlyZSB0aGF0IGFsbCBkZXZpY2UgYWNjZXNz
IGlzIGNvaGVyZW50IHdpdGggYWxsIG90aGVyDQo+Pj4gZGV2aWNlIGFjY2VzcywgYW5kIGNvbnNp
c3RlbnQgd2l0aCB0aGUgZXhwb3J0ZXJzIG5vdGlvbiBvZiBob3cgY3B1DQo+Pj4gY29oZXJlbmN5
IGlzIGFjaGlldmVkLiBOb3QgdGhhdCBjb2hlcmVudCBkb2VzIG5vdCBtZWFuIHNub29waW5nLCBh
cyBsb25nDQo+Pj4gYXMgYWxsIGRldmljZXMgZG8gdW5zbm9vcGVkIGFjY2VzcyBhbmQgdGhlIGV4
cG9ydGVyIGVpdGhlciBkb2VzIHdjL3VjIG9yDQo+Pj4gZmx1c2hlcyBjYWNoZXMgdGhhdCdzIHBl
cmZlY3RseSBmaW5lLCBhbmQgaG93IGFsbCB0aGUgYXJtIHNvYyBkbWEtYnVmDQo+Pj4gc2hhcmlu
ZyB3b3Jrcy4NCj4+IFdlIHNob3VsZCBwcm9iYWJseSBzdGFydCBkb2N1bWVudGluZyB0aGF0IGJl
dHRlci4NCj4gQWdyZWVkIDotKQ0KPg0KPiBBcmUgeW91IHZvbHVudGVlcmluZyB0byB0eXBlIHVw
IHNvbWV0aGluZyB0aGF0IHJlZmxlY3RzIHRoZSBjdXJyZW50IHNvcnJ5DQo+IHN0YXRlIG9mIGFm
ZmFpcnM/IEknbSBub3Qgc3VyZSBJJ20gdGhlIGJlc3Qgc2luY2UgSSBndWVzcyBJJ3ZlIGJlZW4g
dG9vDQo+IGJhZGx5IGludm9sdmVkIGluIHRoaXMgLi4uDQoNClllYWgsIGFscmVhZHkgd29ya2lu
ZyBvbiB0aGlzLiBCdXQgeW91IGtub3csIG5vcm1hbCBodW1hbiBiZWluZyB3aXRoIHR3byANCmhh
bmRzIGFuZCBvbmUgaGVhZC4NCg0KV2l0aCBhbGwgdGhlIHdvcmtsb2FkIEknbSBwcmV0dHkgc3Vy
ZSBwZW9wbGUgd291bGQgaGF2ZSBjbG9uZWQgbWUgYnkgbm93IA0KaWYgdGVjaCB3b3VsZCBiZSBq
dXN0IGEgYml0IG1vcmUgYWR2YW5jZWQuDQoNCkNocmlzdGlhbi4NCg0KPg0KPj4+IFdlIGRpZCBv
cmlnaW5hbGx5IGhhdmUgdGhlIHdvcmRpbmcgaW4gdGhlcmUgdGhhdCB5b3UgaGF2ZSB0byBtYXAv
dW5hbXANCj4+PiBhcm91bmQgZXZlcnkgZGV2aWNlIGFjY2VzcywgYnV0IHRoYXQgZ290IGRyb3Bw
ZWQgYmVjYXVzZSBubyBvbmUgd2FzIGRvaW5nDQo+Pj4gdGhhdCBhbnl3YXkuDQo+Pj4NCj4+PiBO
b3cgd2hlcmUgdGhpcyB0b3RhbGx5IGJyZWFrcyBkb3duIGlzIGhvdyB3ZSBtYWtlIHRoaXMgd29y
aywgYmVjYXVzZSB0aGUNCj4+PiBpZGVhIHdhcyB0aGF0IGRtYV9idWZfYXR0YWNoIHZhbGlkYXRl
cyB0aGlzIGFsbC4gV2hlcmUgdGhpcyBtZWFucyBhbGwgdGhlDQo+Pj4gaGlsYXJpb3VzIHJlYXNv
bnMgYnVmZmVyIHNoYXJpbmcgbWlnaHQgbm90IHdvcms6DQo+Pj4gLSB3cm9uZyBjb2hlcmVuY3kg
bW9kZSAoY3B1IGNhY2hlZCBvciBub3QpDQo+Pj4gLSBub3QgY29udGlndW91cyAod2UgZG8gY2hl
Y2sgdGhhdCwgYnV0IG9ubHkgb25jZSB3ZSBnZXQgdGhlIHNnIGZyb20NCj4+PiAgICAgZG1hX2J1
Zl9hdHRhY2htZW50X21hcCwgd2hpY2ggc3RyaWN0bHkgc3BlYWtpbmcgaXMgYSBiaXQgdG9vIGxh
dGUgYnV0DQo+Pj4gICAgIG1vc3QgZHJpdmVycyBkbyBhdHRhY2gmbWFwIGFzIG9uZSBzdGVwIHNv
IG5vdCB0aGF0IGJhZCBpbiBwcmFjdGljZSkNCj4+PiAtIHdoZXRoZXIgdGhlIGRtYSBhcGkgd2ls
bCB0aHJvdyBpbiBib3VuY2UgYnVmZmVycyBvciBub3QNCj4+PiAtIHJhbmRvbSBzaGl0IGxpa2Ug
Im9oIHRoaXMgaXMgaW4gdGhlIHdyb25nIG1lbW9yeSBiYW5rIiwgd2hpY2ggSSB0aGluaw0KPj4+
ICAgICBuZXZlciBsYW5kZWQgaW4gdXBzdHJlYW0NCj4+Pg0KPj4+IHAycCBjb25uZWN0aXZpdHkg
aXMgYWJvdXQgdGhlIG9ubHkgb25lIHRoYXQgZ2V0cyB0aGlzIHJpZ2h0LCB5YXkuIEFuZCB0aGUN
Cj4+PiBvbmx5IHJlYXNvbiB3ZSBjYW4gZXZlbiBnZXQgaXQgcmlnaHQgaXMgYmVjYXVzZSBhbGwg
dGhlIGluZm9ybWF0aW9uIGlzDQo+Pj4gZXhwb3NlZCB0byBkcml2ZXJzIGZ1bGx5Lg0KPj4gWWVh
aCwgdGhhdCdzIHdoeSBJIGRlc2lnbmVkIFAyUCB0aGF0IHdheSA6KQ0KPj4NCj4+IEkgYWxzbyBk
b24ndCB0aGluayBpdCdzIHRoYXQgYmFkLCBhdCBsZWFzdCBmb3IgcmFkZW9uLCBub3V2ZWF1IGFu
ZCBhbWRncHUNCj4+IGFsbCB0aGUgbWlncmF0aW9uIHJlc3RyaWN0aW9ucyBhcmUgYWN0dWFsbHkg
aGFuZGxlZCBjb3JyZWN0bHkuDQo+Pg0KPj4gSW4gb3RoZXIgd29yZHMgd2hlbiBhIERNQS1idWYg
aXMgYWJvdXQgdG8gYmUgdXNlZCBieSBhbm90aGVyIGRldmljZSB3ZSB1c2UNCj4+IFRUTSB0byBt
b3ZlIHRoZSBidWZmZXIgYXJvdW5kIHNvIHRoYXQgaXQgY2FuIGFjdHVhbGx5IGJlIGFjY2Vzc2Vk
IGJ5IHRoYXQNCj4+IGRldmljZS4NCj4+DQo+PiBXaGF0IEkgaGF2ZW4ndCBmb3Jlc2VlbiBpbiBo
ZXJlIGlzIHRoYXQgd2UgbmVlZCB0byBkZWFsIHdpdGggZGlmZmVyZW50DQo+PiBjYWNoaW5nIGJl
aGF2aW9ycyBiZXR3ZWVuIGV4cG9ydGVyIGFuZCBpbXBvcnRlci4NCj4gWWVhaCB3ZSBzaG91bGQg
aGF2ZSBkb25lIGNhY2hpbmcgZXhwbGljaXRseSBhbmQgZnVsbCBvcHQtaW4gbGlrZSB3aXRoIHAy
cC4NCj4gVGhlIHRyb3VibGUgaXMgdGhhdCB0aGlzIHdvdWxkIGhhdmUgYmVlbiBhIG11bHRpLXll
YXIgZmlnaHQgd2l0aCBkbWEgYXBpDQo+IGZvbGtzLCB3aG8gaW5zaXN0IGl0IG11c3QgYmUgYWxs
IHRyYW5zcGFyZW50LiBTbyB0aGUgcG9saXRpY2FsbHkgY2xldmVyDQo+IHRoaW5nIHdhcyB0byBq
dXN0IGlnbm9yZSB0aGUgcHJvYmxlbSBhbmQgbGFuZCBkbWEtYnVmLCBidXQgaXQgY29tZXMgYmFj
aw0KPiB0byBiaXRlIHVzIG5vdyA6LS8NCj4NCj4+PiBUaGUgaXNzdWUgaXMgdGhhdCB0aGUgZGV2
aWNlIGRtYSBhcGkgcmVmdXNlcyB0byBzaGFyZSB0aGlzIGluZm9ybWF0aW9uDQo+Pj4gYmVjYXVz
ZSBpdCB3b3VsZCAibGVhayIuIFdoaWNoIHN1Y2tzLCBiZWNhdXNlIHdlIGhhdmUgZGVmYWN0byBi
dWlsZCBldmVyeQ0KPj4+IHNpbmdsZSBjcm9zcy1kZXZpY2UgdXNlLWNhc2Ugb2YgZG1hLWJ1ZiBv
biB0aGUgYXNzdW1wdGlvbiB3ZSBjYW4gY2hlY2sNCj4+PiB0aGlzICh1cCB0byBnbC92ayBzcGVj
cyksIGJ1dCBvaCB3ZWxsLg0KPj4+DQo+Pj4gU28gaW4gcHJhY3RpY2UgdGhpcyBnZXRzIHNvcnRl
ZCBvdXQgYnkgZW5kbGVzcyBwaWxlcyBvZiBoYWNrcyB0byBtYWtlDQo+Pj4gaW5kaXZpZHVhbCB1
c2UtY2FzZXMgd29yay4NCj4+Pg0KPj4+IE9oIGFuZDogVGhpcyBpcyBkZWZpbml0ZWx5IG5vdCBs
aW1pdGVkIHRvIGFybSBzb2NzLiB4ODYgc29jcyB3aXRoIGludGVsDQo+Pj4gYXQgbGVhc3QgaGF2
ZSBleGFjdGx5IGFsbCB0aGUgc2FtZSBpc3N1ZXMsIGFuZCB0aGV5IGdldCBzb2x2ZWQgYnkgYWRk
aW5nDQo+Pj4gdmFyaW91cyBzaGl0dHkgaGFja3MgdG8gdGhlIGludm9sdmVkIGRyaXZlcnMgKGxp
a2UgaTkxNSthbWRncHUpLiBMdWNraWx5DQo+Pj4gdGhlIGludGVsIGNhbWVyYSBkcml2ZXIgaXNu
J3QgaW4gdXBzdHJlYW0geWV0LCBzaW5jZSB0aGF0IHdvdWxkIGJyZWFrIGENCj4+PiBidW5jaCBv
ZiB0aGUgaGFja3Mgc2luY2Ugc3VkZGVudGx5IHRoZXJlIHdpbGwgYmUgbm93IDIgY3B1IGNhY2hl
DQo+Pj4gaW5jb2hlcmVudCBkZXZpY2VzIGluIGFuIHg4NiBzeXN0ZW0uDQo+Pj4NCj4+PiBJZGVh
bGx5IHNvbWVvbmUgZml4ZXMgdGhpcywgYnV0IEknbSBub3QgaG9wZWZ1bC4NCj4+Pg0KPj4+IEkg
cmVjb21tZW5kIHBvdXJpbmcgbW9yZSBkcmlua3MuDQo+Pj4NCj4+PiBXaGF0IGlzIGRlZmluaXRl
bHkgbm90IGNvcnJlY3QgaXMgY2xhaW1pbmcgdGhhdCBkbWEtYnVmIHdhc24ndCBtZWFudCBmb3IN
Cj4+PiB0aGlzLiBXZSBkaXNjdXNzZWQgY2FjaGUgY29oZXJlbmN5IGlzc3VlcyBlbmRsZXNzIGlu
IGJ1ZGFwZXN0IDEyIG9yIHNvDQo+Pj4geWVhcnMgYWdvLCBJIHdhcyB0aGVyZS4gSXQncyBqdXN0
IHRoYXQgdGhlIHJlYWxpdHkgb2YgdGhlIGN1cnJlbnQNCj4+PiBpbXBsZW1lbnRhdGlvbiBpcyBm
YWxsaW5nIHNob3J0LCBhbmQgZXZlcnkgdGltZSBzb21lb25lIHRyaWVzIHRvIGZpeCBpdCB3ZQ0K
Pj4+IGdldCBzaG91dGVkIGRvd24gYnkgZG1hIGFwaSBtYWludGFpbmVycyBmb3IgbG9va2luZyBi
ZWhpbmQgdGhlaXIgY3VycmVudC4NCj4+IFdlbGwgdGhhdCBleHBsYWlucyB0aGlzLCBJJ3ZlIGpv
aW5lZCB0aGUgcGFydHkgYSB5ZWFyIGxhdGVyIGFuZCBoYXZlbid0DQo+PiB3aXRuZXNzZWQgYWxs
IG9mIHRoaXMuDQo+IFlheSwgY2xlYXJlZCB1cCBhbm90aGVyIGNvbmZ1c2lvbiENCj4NCj4+PiB0
bGRyOyBZb3UgaGF2ZSB0byBtYWdpY2FsbHkga25vdyB0byBub3QgdXNlIGNwdSBjYWNoZWQgYWxs
b2NhdG9ycyBvbiB0aGVzZQ0KPj4+IG1hY2hpbmVzLg0KPj4gT3IgcmVqZWN0IHRoZSBhdHRhY2ht
ZW50LiBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoYXQgaXMgc3RpbGwgdGhlIGNsZWFuZXN0DQo+PiBv
cHRpb24uDQo+IFllYWggcmVqZWN0aW5nIGlzIGFsd2F5cyBhbiBvayB0aGluZyBpZiBpdCBqdXN0
IGRvZXNuJ3Qgd29yay4NCj4gLURhbmllbA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
