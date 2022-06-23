Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 574CE5573E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 09:26:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8032F3F303
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 07:26:27 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2060.outbound.protection.outlook.com [40.107.244.60])
	by lists.linaro.org (Postfix) with ESMTPS id 0E5793EF4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 07:26:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LbE173cYM+qZsLaMLMbxfo4hfe2yAoQbtxvDpMQfkhtry91YhImYyD3ZmKeIKXqBMK8Tpd+hqh0ZcBc9/YUWWPHg95jntpg+S+MXXp67Fo45rHgZWSl7sJDaQzDJx3eEtr0eSmQZpGzTZ6EKfgn/9vNrytxnpM7IyisDG+c5nyO14oflKOneSDGdrO7F2Gl4C5/QKmBqJe8aKsDjo3JekXsow35nimKBR8h2JWlPBvEATVcXTQDLon3nTFOlY7IU1f0e1CdGCeYs04nnjxzbjvRinWAV8ZK+RW6VxZ1wLHmuj12au+O7MqL052QbqfF0VbTYZ0k1I8Fn+YoyAwT0pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tf1jyA/8RtYQD5q1EWnuBulPu1HoSDEiFDnmFJzzFPU=;
 b=CMEtsXuIJFUQRecKrZf+18yhm9yuah1zi5oFB8q063bfE1Qlg1mwNzZd0hBYk/BL5eGHVu0z2FlRU63KaZC96FucxYS5z+okbuhucEHmaENfF6hHpf7FFgWm4UvWaHD1BmaUMlbNeC27u2U0vXS5Zgck6946C+QMpfJmAyNmM9wE/A4r2rlZlyVyYr+WbOioI9a1z8DeR75lC97Vhv0xMQp4WGKj0fsmOdT0rP31FHgEm2NGq0+bUxlpMzWXi04iHqh+5lBI9AzjLmEEWnXIkDRp3SNoZahGxJJpcy5GTWwry1l32T1lFjLFPWFC6SzADuC70lzWzbItBoRZtzMpOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tf1jyA/8RtYQD5q1EWnuBulPu1HoSDEiFDnmFJzzFPU=;
 b=Rjm+R+eMl6REX8vAKIS3tR4RB3NnExyr0OAYA3ylx2GC8bMrLTYvmpFEaYXnhS9rypLCSF7hjkCdAr+ONq/OsGxHv8Cw6iN0n0wj/nGbWUx6NVLlp/npUGZ1+tHu8XgXny8WYMr/lQITADqqtmsjEGdGot7IS+NQqf+LCKUdyGw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR12MB1147.namprd12.prod.outlook.com (2603:10b6:3:79::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Thu, 23 Jun
 2022 07:26:20 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 07:26:20 +0000
Message-ID: <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
Date: Thu, 23 Jun 2022 09:26:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
 <20220623101326.18beeab3@eldfell>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220623101326.18beeab3@eldfell>
X-ClientProxiedBy: AM5PR0201CA0005.eurprd02.prod.outlook.com
 (2603:10a6:203:3d::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 754263c8-a544-4651-d9d9-08da54e9ab37
X-MS-TrafficTypeDiagnostic: DM5PR12MB1147:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR12MB1147A10B5E5744445F22CF9C83B59@DM5PR12MB1147.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	F75Ve+l/1tri36U6WXuFkLHmPpRuUHKkXHXZKP61vgCHOkht8g58PWNZt91wZRhBeINEspvPtVYarvS6fK6zmteHJPKQhaHUu+BFlOjO0S54sXJqZzypbjBmKDl5cbi+CWXqH+Nlie8QhvQk3hkGx02JAOv03cm/xu9QxOt0GbMlN+zLpQ2q/Qq7xZ6abShaMCk5CkNmeod+O4UrWaUEWQmhiomRkPXBPhlYAiPEyEnGO5zukRxfbSD6KeX9yN91uM8VXlguLZ6sKAStzo4NlOj3GTPOz4prFHTKjk3FnlyLe6RkdgsHEIYf1NUk74b6arRyqJV+byDYmOrjg5uvP3/UYeE7zmIao9e/uJ2+l+StzAbvMuYMyLGBmui8E1hRv/ePhS0op3KLM760c2Xsrcyeq65rsok6zpgKDmtdqdYjG5AI+fNNMzfZCef8Os3qu5qY9sFJvfAOUFaIAnrtdAGYs6w2Z/yHoWGizhXabftXdTgTcZEfl/0/f/J0eq3/Q59zY3QDcCjtTd9Pe0ZXwUdMNJbQsc7GyOQgWJ2bi9PKxWxKfz+Y4uz+ITEqDZOiGzDgyQxZzjq17nWFr1hOoWIhXyC9DT/WS3zIWYuM1nTpKzwO0TuOoR6KqaWp9HPqeX/m9VLAMCZMA3veDGiNH0KinLd1/gj5dK6tGMSaHhqoDljLu58duWgYsqLrpoHfB879JkyHjAdmEw9tgmxranpP5UGE1KTWvD+S/kbbL2OECgf2lq+ltCHgbFNvLpzdD20lKQSRmXQAFjkahknhH9csNgi0Y1ZrFIMoIbyWpY4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(4326008)(8936002)(66574015)(66476007)(8676002)(86362001)(6666004)(6506007)(66556008)(6512007)(66946007)(31686004)(186003)(6916009)(83380400001)(2616005)(54906003)(5660300002)(36756003)(41300700001)(31696002)(38100700002)(26005)(316002)(6486002)(478600001)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T09NNHZ3MW04WE9LR2E4bWFiWUxpZmxLL05hbmp1bVUrMmdvaWhBYVZkK3JG?=
 =?utf-8?B?RlpEL3plTmZ2MWtRRkJQSXE0ZTduZERwd3VpU2lhTkk5VERJN0xLNEhFSlIw?=
 =?utf-8?B?Z09oUUJCWWxyQVBIZllqelovLzgrNE5kSFVieThhWThSdCtHTlFWNFV4ZUw4?=
 =?utf-8?B?WnhlY0d0UHllWkxBaEw2S09HMm5zbkN6WEMvVkNqVFJhM1lMcGtLVXpPTjN1?=
 =?utf-8?B?OUpIZ0hIUXJTenZQNkxqanJuSUIrejVuTVZwL2RGVU1KZldzYVY0bGsrdFR4?=
 =?utf-8?B?K3VIVFRNMnFJTXNGUzA5RDc5M3Aya0NWYzNOUGpBdVIzQklhbVdIYXRGeWNQ?=
 =?utf-8?B?TEYwV0E2UU54YVdod3JyRldBM25SRklSNDhIMFlaMVpqMDczUjZmLzVxTTk0?=
 =?utf-8?B?SCtkekNtVFJKejdTdDhUWlFCRzBLUEtCb3BnbzgrRlh6VDBhYWpuT3UzdW40?=
 =?utf-8?B?YXcxdU1DZkY4WisyNXF1REt1R005TWkvV01WWmFMNGFpMms3ckVsczA5dmpJ?=
 =?utf-8?B?SHRxaEZvNlMvU3J1UThOZkxYNmU0ckx6RkR3YnMxTklMcWoxajNicmJTR2NN?=
 =?utf-8?B?VWVJNWNTaEZ4ZFdsT2N2ZXB0Y1lwQXlkZTMva2dJQ2dNMHBjc2pqM3JvZFlQ?=
 =?utf-8?B?V3Z6OUxUWE0wZW1qcVIvNEg3bU5qaGRUYjF1bzRtVmYwbGtJNG04YkExOGYz?=
 =?utf-8?B?V2ZwWWt1VTh4VU9BbzBQR09DZXRBaFRCNzZzcHIxWUhSeDRtQUx4K1JjRURa?=
 =?utf-8?B?ckhHWUFQREl2U2xVaGcyRUNZMDRYV1pUaTBoK2FtdnpiRHpBWG1nenl1endR?=
 =?utf-8?B?TWZ5QlRxMjcvMnN2Vjl3ek1tQlE5SmN3Q1ZDbHV4ZXY3OUgya1lZampiY1dF?=
 =?utf-8?B?NnR5R0I3RGRITnlTZVIzaHh1WUlRUnpuN0lMMnV0L1VOUGVhSnk5VHpmdGNo?=
 =?utf-8?B?MWNqWEYzRnhVRExHSjh0WFM5SkM0VGttMTIwanpwWWxkSklSYytuRG5UbGh0?=
 =?utf-8?B?dlJta01TS0Q4eE84UlYvbnRxblUxQTFZaVVTTm5JeXVxM0JveTNNTzRIYUVR?=
 =?utf-8?B?ODVFOHNCUURXcUN3eklFOFFNWitlRFhVSTc3ZEZwczdXcTdFZUx3UTIxcCtW?=
 =?utf-8?B?M2JKM1dJNGJDNGdUTjRnbUNTV1FZUjVhSzQ2THYvelk1cWtUSm1UeHhxN3Zt?=
 =?utf-8?B?cndwZmVERWkvMTBDOUlCSVFKU1FFOXIwQTdOeUxnOUw1aGVkWTY0UmpmQloz?=
 =?utf-8?B?YUt0WGV1RWpPZlFLT0IyV3BVZm1OWjlJaUgrVHJCSGc0VWh4a3JGeGJwZ3Ru?=
 =?utf-8?B?Y1R5NVJDa0ZPdEY0UnRKeE40T2Z6MDVqT0JSdzZTaFpOMXpFUkIxVXJuRGNy?=
 =?utf-8?B?b1Y0a1B0VlRIMGNncDQ5bE9QVmtVb0JRM0pmNkFOR2Eycm1BY293MWZFakxX?=
 =?utf-8?B?TUZ3MERpN2FFMlAwM2Vncnh0ZHlxTEQxTDc3YWR3R2NKOVNLUlhCQnArNGNm?=
 =?utf-8?B?clQyUVFZY01zMi93d2hDYXRiaEFWUkRpeVh6UGU2VWIyWXpPV2JmYVlBVjY1?=
 =?utf-8?B?ZlNxM2lYeC80b09kMC9neEIxVUpKZ3N1ME0rY2h4bFZ4b3E3UFUrT0JubFZ5?=
 =?utf-8?B?SDBnTUh4a0M4cTFGeDRMdmtza3ViYTVDL09ObTMyb0NPUUpqS2gvNUxybFIy?=
 =?utf-8?B?cnVFeDFENHN3ZnNRbmVkMmxrdkJzZTJ2RDdxWWJsczFxWjVKVGxjSmptTW9o?=
 =?utf-8?B?a3E0eml4dGlZL1dGNFoxSkJGOU5Bd3VrQnlQMVQvSjNUd3Bzd0d2R0pYTWVs?=
 =?utf-8?B?aEMxa2t3bFpubEJPVWJrZUJncTBPbE1NbFJvRHh2V0Q0WjZSdnpPUk1HSGVV?=
 =?utf-8?B?RVhXOG5HTmlYTWpOQi9XNnBTN0tOSk5UQmdWYlI0VW01b3dPMDFwZ0cvcVBk?=
 =?utf-8?B?RFFSVzdrczNVREhBQWRrcTNQdU1rcWFldmpQOThuYUxmcEtvQStuU2g4Q0V0?=
 =?utf-8?B?NlhLUk9oSDRCR0UvZkV3eWc5dHgzNEtXejc5eEVrbGw1WkdKKy9adEorUkUr?=
 =?utf-8?B?UEJCcXhnbFRCRENkODkzdExJWnZJWXc0TU82MHh5STR6YnJ1dkQvZ2ZxdGkz?=
 =?utf-8?Q?C5+ctV6PmTbYBvaubuDvbc/hw?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 754263c8-a544-4651-d9d9-08da54e9ab37
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 07:26:20.4898
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AieHjsVjyjMkJG2ZFxkfn0/eQNqI0XMWwtCrtXTy1oW6p547iiH0jT8GbwK4Pffs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1147
Message-ID-Hash: 5L2IAW23YGPY3F4GLWWHTVGEKM3HPHYW
X-Message-ID-Hash: 5L2IAW23YGPY3F4GLWWHTVGEKM3HPHYW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Stone <daniel@fooishbar.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Vetter <daniel@ffwll.ch>, "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5L2IAW23YGPY3F4GLWWHTVGEKM3HPHYW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDYuMjIgdW0gMDk6MTMgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoNCj4gT24gVGh1LCAy
MyBKdW4gMjAyMiAwODo1OTo0MSArMDIwMA0KPiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPj4gVGhlIGV4cG9ydGVyIGlzbid0IGRvaW5nIGFu
eXRoaW5nIHdyb25nIGhlcmUuIERNQS1idWYgYXJlIHN1cHBvc2VkIHRvIGJlDQo+PiBDUFUgY2Fj
aGVkIGFuZCBjYW4gYWxzbyBiZSBjYWNoZSBob3QuDQo+IEhpLA0KPg0KPiB3aGF0IGlzIHRoYXQg
c3RhdGVtZW50IGJhc2VkIG9uPw0KDQpPbiB0aGUgZGVzaWduIGRvY3VtZW50YXRpb24gb2YgRE1B
LWJ1ZiBhbmQgdGhlIGFjdHVhbCBkcml2ZXIgDQppbXBsZW1lbnRhdGlvbnMuDQoNCkNvaGVyZW5j
eSBhbmQgc25vb3Bpbmcgb2YgdGhlIENQVSBjYWNoZSBpcyBtYW5kYXRvcnkgZm9yIGRldmljZXMg
YW5kIA0Kcm9vdCBjb21wbGV4ZXMgaW4gdGhlIFBDSSBzcGVjaWZpY2F0aW9uLiBJbmNvaGVyZW50
IGFjY2VzcyBpcyBqdXN0IGFuIA0KZXh0ZW5zaW9uLg0KDQpXZSBpbmhlcml0ZWQgdGhhdCBieSBi
YXNpbmcgRE1BLWJ1ZiBvbiB0aGUgTGludXgga2VybmVsIERNQS1BUEkgd2hpY2ggaW4gDQp0dXJu
IGlzIGxhcmdlbHkgYmFzZWQgb24gdGhlIFBDSSBzcGVjaWZpY2F0aW9uLg0KDQo+IFdlcmUgdGhl
IChtYW5kYXRvcnkgZm9yIENQVSBhY2Nlc3MpIGNwdV9hY2Nlc3NfYmVnaW4vZW5kIGZ1bmN0aW9u
cyAmDQo+IGlvY3RscyBub3Qgc3VwcG9zZWQgdG8gZW5zdXJlIHRoYXQgQ1BVIGNhY2hlIGlzIHVw
LXRvLWRhdGUgLyBDUFUgY2FjaGUNCj4gaXMgZnVsbHkgZmx1c2hlZCBvdXQ/DQoNCk5vLCB0aG9z
ZSBmdW5jdGlvbnMgYXJlIHRvIGluZm9ybSB0aGUgZXhwb3J0ZXIgdGhhdCB0aGUgaW1wb3J0ZXIg
aGFzIA0Kc3RhcnRlZCBhbmQgZmluaXNoZWQgYWNjZXNzaW5nIHRoZSBidWZmZXIgdXNpbmcgdGhl
IENQVS4NCg0KVGhlcmUgaXMgbm8gc2lnbmFsaW5nIGluIHRoZSBvdGhlciBkaXJlY3Rpb24uIElu
IG90aGVyIHdvcmRzIHRoZSANCmV4cG9ydGVyIGRvZXNuJ3QgaW5mb3JtIHRoZSBpbXBvcnRlciBh
Ym91dCBDUFUgYWNjZXNzZXMgYmVjYXVzZSBpdCBpcyANCnRoZSBvd25lciBvZiB0aGUgYnVmZmVy
Lg0KDQpJdCdzIHRoZSByZXNwb25zaWJpbGl0eSBvZiB0aGUgaW1wb3J0ZXIgdG8gbWFrZSBzdXJl
IHRoYXQgaXQgY2FuIA0KYWN0dWFsbHkgYWNjZXNzIHRoZSBkYXRhIGluIHRoZSBidWZmZXIuIElm
IGl0IGNhbid0IGd1YXJhbnRlZSB0aGF0IHRoZSANCmltcG9ydGVyIHNob3VsZG4ndCBpbXBvcnQg
dGhlIGJ1ZmZlciBpbiB0aGUgZmlyc3QgcGxhY2UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4NCj4NCj4gVGhhbmtzLA0KPiBwcQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
