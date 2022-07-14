Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C895747FD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jul 2022 11:13:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6ADEC402CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jul 2022 09:13:18 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2083.outbound.protection.outlook.com [40.107.94.83])
	by lists.linaro.org (Postfix) with ESMTPS id DD6563EF7C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jul 2022 09:13:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYk5ySgQKsnr7MPVmmbUBRhDhFJmKwx6rUxza9aDxbklb+T3W5zPz9+PGsPsIhLSnK3pV42u1fdudXa3L6g4K6EjTula4VHNT4PmiPSMzydC/3nsuDp23Q1WHoeQNXEKGrzsVHLqK425wv23KTJcx8JsMfBjO5xU5sZ/JC8N+Gg1NLW52AnsOMmFzxNj5MSInrU6Y7JC9ShgW/cFn4FYDEvuPfBbivapoFYxIbTmUB/dxTAHHjijAsj1gGHATdxJRUtAME2IjO0ivYskDANwxfRBxXdaKvOe3WySrpOr+8s0wuc/j1P8LlMBwVYfbXuPqIMcZHcSS8JOpBVTUY3bDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWMTMT+KU1gDyurIiQHQKrXQb1nYB+26FqiV7yebWUw=;
 b=jLEAX8mWvoeLZaTJUZT/LtEjROlXJKFEb5QZY5apt/uNMksumHct8aPGkgXAmWIlmKWGRcrnBApQpgobz3lgL3puv++TESdO8e+ficJoIj8VEGD4j8oaS/7uzVIOnmANPSQgH7/z6xSTj3U43QcFIS3MXD80fwaU1l/PidS8d1EFAkRFfeG0EQ7TwBQ3yrwI0s6UY6Veo+MJ8t0HZlM6YMqn1Uvjs3U1Ytc4fYwMP8CGnLdpWanhUZX80GOXKB5BCmJ0pRFFQJ2KygG4ovc6KazFtYG8eYM6o4bv7q5p1SIQyUgvV+TlgccsvAUT7y/8CNKWixSvDKlCOc9rl3HLVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JWMTMT+KU1gDyurIiQHQKrXQb1nYB+26FqiV7yebWUw=;
 b=tGbKlDTCdU9AQEDXlU9heINgOCaeW9csVO2eX+d43ufmI1VBZF4BgOaH0tL92CaFAUWdDQZX3Vglq12Ous1nJzIAxwtvSDX6mApWhobDEAb5y+tgdQGzIQ+6oIXNSVHjUrJI3QNOZ1/tEeAoPN/Q8kejlOi5bJnv/AQZgfWDxsQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB3533.namprd12.prod.outlook.com (2603:10b6:208:107::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Thu, 14 Jul
 2022 09:13:11 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5438.013; Thu, 14 Jul 2022
 09:13:11 +0000
Message-ID: <25194bfc-4670-02a9-f494-9eab41fd0b74@amd.com>
Date: Thu, 14 Jul 2022 11:13:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 karolina.drobnik@intel.com, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
References: <20220712102849.1562-1-christian.koenig@amd.com>
 <5b8aa549-c2f1-19b2-d0f4-26d4ea1a7ade@suse.de>
 <e3accc2e-75e5-459a-ea72-116e44f73238@amd.com>
 <b16e783a-e7a2-09d5-a8c0-b3b8d18a3e1f@suse.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <b16e783a-e7a2-09d5-a8c0-b3b8d18a3e1f@suse.de>
X-ClientProxiedBy: FR3P281CA0097.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fce2a93b-868f-4397-daae-08da657912ef
X-MS-TrafficTypeDiagnostic: MN2PR12MB3533:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3Fbqei3L5qBjUcLmqbGWYHy6V8PLoeydpF5AnVT0mb3ythg3rKmYTW7UE3hZcoxE/VJYUe7sqduwc3ym2sy2IIwLleruPsqOIinXnglz+Z8cCkoj3iCprIePwbQyWSpSvoHUZy5pSSontJom8JCZ0PpEJz7snz2quZjo8RcKCIXrVcDTEjsr6KcrxpqsQgprmUWX+0FDVs/rxqjHqWsPkhc2hAdEH9DAwuwkPK0XzjbedJqGBfgme7BGsWWv3oak7FlK1gAj12+szdNrbhGFv//9HR6qYvU5cf7lygoDhoa/erVvF0f/Y7d0tkv5Dfq7JULR6/HinD+nJNbvH7Uw6WSZy8qRxTbzic22jBV1ZfhY52+exQKe9csfswVQ90K9Tnh3eRMfCg9UI4swxqP1ZzEqVdsIUcyVQlYkcjL1Mmgaofn8wdlUQWqGpnFcNIQWUL2Nst3MgClEf3q400gWPGBUOsYuogPZJMtlljgFWkEq8bOVvXBeCGejfqrBu8FUZnvVQuxVFTekYlY/n0zcbcApzxhb7HRiJ3q2h3OYKMBgJSOMTea3zT1xwv/QrEJp9KZKrB2j2Fhs45OR1HMvgwXDBb02BtpjAeJw0bB3gPK5r3M1MdPvAzBGQP6eupvVburzlSwH6CVsWNlVkCAoyovtJQN6DtncYlPCIGNsyXesgpSS3ePpDvy8TUsHjBk2cInOc81tKrvxiCbk6YzSRVZD8ZbG2v/mjYi4DHCzXIbaSYRIgDm5FItyiLM0vbNGBwQP3qTvhZsZgkrPLL+E6mxne0tM1Wybz/cKt2EgC8SyCtLqYpX30M5PGBOq2o3iXXSfL6W1humDgRuEyQ+PS95ZNr7SMR1HNmyxyMseQQo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(366004)(346002)(39860400002)(396003)(136003)(186003)(6506007)(66574015)(6666004)(41300700001)(2616005)(26005)(6512007)(2906002)(38100700002)(83380400001)(478600001)(86362001)(8676002)(31696002)(316002)(5660300002)(31686004)(66946007)(6486002)(110136005)(66556008)(36756003)(66476007)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YVYrejMrVEZsMlNSSTErMFRqQ2ZTc0hyQWhVbXhkOWFRbjVnK25mVFIwS29D?=
 =?utf-8?B?OUJ4MGhUdHVRL21kV0dXcHdzTVJDUnVmeG8wanVIcVpIOC84dWF4SjBVWlln?=
 =?utf-8?B?c0NIbC9lRjN0ZEx4aEVhek9GSVNOL2JrSGV6MysrOERsUWZVV05Eby9QOUNx?=
 =?utf-8?B?ckdEQ0xjYnFsQjV1TC8wamk2b2liWWlOMGUvd1BwdVhITjRCaU9ubTg5ZjJN?=
 =?utf-8?B?MVFDdWtsQ2sxU1M3NS80L1haMjI4UkQza0ZoQkYxbC9DTFNyaUVpb0ZiKzJo?=
 =?utf-8?B?cUhZd1h0R2xZRHcwS1g1bldOSDNmQ1ovUjhBSFR2eURDLy9MaGI5eFprRnAy?=
 =?utf-8?B?NFlNNGtnSWJPbkR1eEtNQWNaY1plSlVSaUVMK2t5Y2RNTzdXM08wOThaRXV0?=
 =?utf-8?B?bStWZUE2RzZtaFU0YzdwakpqYjc4M2VyYWJ0aHlxZ1dHWjk4QW1GcnE1cWVm?=
 =?utf-8?B?dkFYMmx2RStvRWVrZndENkoxeldLV0dOUnZpOUhxS3FMQXF3Y2NZSW4ramU3?=
 =?utf-8?B?bW4vRUhUSmZxd2hzZEE1anIrVERDQnA5allDTU00NUJBRjl3N2loandoMktM?=
 =?utf-8?B?aE9OcUxxaUplV082eU5FZHllcmg5ekJSK3hPaUNtVm53b2pHeXRnWDg3NjQ2?=
 =?utf-8?B?YmtoRGhQWjVzNDZ4Y280a0RJR2puK21wUFFIUlV2YkNBN2RwYjQxeEtvc2l1?=
 =?utf-8?B?N1NFNld3TE9mbHk2Y29aaGpxNk9iRUpGR0drVzF1akwydWRCbFY5UkpwTE10?=
 =?utf-8?B?MGJVNHhMZUk1Q1VDd0RHeDZud3ZOZFZnZGRrUXd6NkhpRU5kQXRha1dXZUdp?=
 =?utf-8?B?S0E2OThxUDlRMVRSelVLRUlQYnQ0SnhNYUF3anZubkdsVE1DQ2M0VWdoUEtO?=
 =?utf-8?B?VHRSS3pOMHlOd0tRRnRiYmRsV0FiOFRxMDZQVmNFbVdFaE1ac242OCtYZFl3?=
 =?utf-8?B?MjdxME9XV1RuRWwzTlZURnV0T25mbUxSWTFkNEt0OFBDeWExNjY5YjQya2FP?=
 =?utf-8?B?dnpicXFhNEpTUkZDSmdOd3hWZ2NQK1BkSmtJbWNjY0UvbXhyUE9xbzR3bkZW?=
 =?utf-8?B?N3ZhVmlNWW4rdUVlRjhnOFVRVDhqTURqa1dvbjhoMUpMNDJpRG1ucUh2ZlAr?=
 =?utf-8?B?cC9uS1RlQXFKdHk1NWdLTUZJeHRrTWYvOUQ1aGFENWJZUko4S0FsdmFxMGUr?=
 =?utf-8?B?QmI4OFVvZzNSMkxTRzlLOW5Tb2UzRG5ManlsemFocWVTVVFzVUk5eFUrZkxZ?=
 =?utf-8?B?S2xkMzJkMktqdkxEZnNPQkcwMkxaTS90Qkx3NjVjQWFOcmc0KzNiZ09XYzcx?=
 =?utf-8?B?ZGY0WlhJb2VBZ2h6eVZTdDM1ZFZqNm9WcGhNdG1mUFFOVGR5ODZzU2I0aHli?=
 =?utf-8?B?bk11WllWOUw4dDFXb0pFWGNId1JHTXVkd05nMTN0czhHRlcwdzIzMTR3b2pI?=
 =?utf-8?B?WjRVOHl2aXpmeVpxN3cwUWIwU1Mwd2N0RWYrVkVUeWt4SCtOb0ZkNlBjYWZx?=
 =?utf-8?B?VVVKNEhvbHdmQkQrd0hHZ0FOZkxNOU1ELy81MDZpVjdER05jU05lNmJRMjRD?=
 =?utf-8?B?Z1ZkOTFibjJRUzhQaml1ZlJXeThBYlJJbFB0ODRZU1R5RFNVMms3MkVDZDgz?=
 =?utf-8?B?V1YvOXdvMnZlcENwYXB2K0VhaUVFYUhUL2E2K0RESDlVMmJDVEt2Y0Z4REt5?=
 =?utf-8?B?b2xrQ1R4MUVsc3plYlUvekxqdzZ1cHdzcm1aSDRpc0wzQ2JHaGFqaEJmQzR4?=
 =?utf-8?B?bk9wbkUwdzVQcjNVV2dpUFlzMmNmQ3NDOGpXZzNPUFhyc2REeCtqVisyNzdP?=
 =?utf-8?B?THJWWWt2cWI4SnZwcHBhUlNpMDExczcyVnB0MW50aDhKbjkyUUlJY1ZOYjVs?=
 =?utf-8?B?RHFtRENHcXJiaCt3elQvd0luemZRVlpqNjZ1TTFXSERUUEMwMXRnOHhFOVFE?=
 =?utf-8?B?di9zNUFmMFdEeEF6aERKUmJ0bmVBeHIzdzRFYWFaaXgwNzRpaXR0QXFkaGZs?=
 =?utf-8?B?aXNIYW5UdGpqbVI2OG40UFI3SWpwYUljVTRvNVhkdmZRWGV5a2I1UUJzeE1l?=
 =?utf-8?B?RHYraEdMclNJYXhpNWpiNWZ5cGN2OE4veDhiYnl3eFRpUWR6Unh5TlorYXow?=
 =?utf-8?Q?q/+xXL7rPduliX7KjgswT3+Nh?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fce2a93b-868f-4397-daae-08da657912ef
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 09:13:11.2628
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dYkMELlMBdl7L9zx5fAjYvOoaEUAnG18X0fluP4N283o8SXffdjhOagWZ1qt+ghE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3533
Message-ID-Hash: QREKSETSTCN764K76PMC5JBILOUSAQ4W
X-Message-ID-Hash: QREKSETSTCN764K76PMC5JBILOUSAQ4W
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QREKSETSTCN764K76PMC5JBILOUSAQ4W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTQuMDcuMjIgdW0gMTE6MDYgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4gSGkNCj4N
Cj4gQW0gMTQuMDcuMjIgdW0gMTA6NDkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4gSGkg
VGhvbWFzLA0KPj4NCj4+IEFtIDE0LjA3LjIyIHVtIDEwOjQwIHNjaHJpZWIgVGhvbWFzIFppbW1l
cm1hbm46DQo+Pj4gSGkgQ2hyaXN0aWFuDQo+Pj4NCj4+PiBBbSAxMi4wNy4yMiB1bSAxMjoyOCBz
Y2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+Pj4+IFRoaXMgcmV2ZXJ0cyBjb21taXQgOGY2MTk3
MzcxODQ4NWYzZTg5YmM0ZjQwOGY5MjkwNDhiN2I0N2M4My4NCj4+Pg0KPj4+IEkgb25seSBmb3Vu
ZCB0aGlzIGNvbW1pdCBpbiBkcm0tbWlzYy1uZXh0LiBTaG91bGQgdGhlIHJldmVydCBiZSANCj4+
PiBjaGVycnktcGlja2VkIGludG8gZHJtLW1pc2MtbmV4dC1maXhlcz8NCj4+DQo+PiB5ZXMgZm9y
IGFsbCB0aHJlZSBwYXRjaGVzIHlvdSBqdXN0IHBpbmdlZCBtZS4NCj4+DQo+PiBJJ3ZlIGFscmVh
ZHkgdHJpZWQgdG8gcHVzaCB0aGVtIHRvIGRybS1taXNjLW5leHQtZml4ZXMsIGJ1dCB0aGUgDQo+
PiBwYXRjaGVzIHNvbWVob3cgd291bGRuJ3QgYXBwbHkuIEkgdGhpbmsgdGhlIC1uZXh0LWZpeGVz
IGJyYW5jaCB3YXMgDQo+PiBzb21laG93IGxhZ2dpbmcgYmVoaW5kLg0KPg0KPiBJIGp1c3QgZm9y
d2FyZGVkIGRybS1taXNjLW5leHQtZml4ZXMgdG8gdGhlIGxhdGVzdCBzdGF0ZSBvZiBkcm0tbmV4
dC4gDQo+IENoYW5jZXMgYXJlLCB0aGVzZSBwYXRjaGVzIHdpbGwgYXBwbHkgbm93Lg0KDQpUaGFu
a3MsIHNob3VsZCBJIGNoZXJyeSBwaWNrIHRoZW0gb3IgYXJlIHlvdSBnb2luZyB0byBkbyBpdD8N
Cg0KQW5kIGNhbiB3ZSBzb21laG93IG1ha2Ugc3VyZSB0aGF0IHdoZW4gdGhlIGRybS1taXNjLW5l
eHQgaXMgbWVyZ2VkIGludG8gDQpkcm0tbmV4dCBmb3IgdXBzdHJlYW1pbmcgdGhhdCBkcm0tbWlz
Yy1uZXh0LWZpeGVzIGlzIHVwIHRvIGRhdGUgYXMgd2VsbD8gDQpUaGF0IHdvdWxkIG1ha2UgdGhp
bmdzIG11Y2ggZWFzaWVyLg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQmVzdCByZWdh
cmRzDQo+IFRob21hcw0KPg0KPj4NCj4+IFRoYW5rcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4N
Cj4+PiBCZXN0IHJlZ2FyZHMNCj4+PiBUaG9tYXMNCj4+Pg0KPj4+Pg0KPj4+PiBJdCB0dXJuZWQg
b3V0IHRoYXQgdGhpcyBpcyBub3QgY29ycmVjdC4gRXNwZWNpYWxseSB0aGUgc3luY19maWxlIGlu
Zm8NCj4+Pj4gSU9DVEwgbmVlZHMgdG8gc2VlIGV2ZW4gc2lnbmFsZWQgZmVuY2VzIHRvIGNvcnJl
Y3RseSByZXBvcnQgYmFjayB0aGVpcg0KPj4+PiBzdGF0dXMgdG8gdXNlcnNwYWNlLg0KPj4+Pg0K
Pj4+PiBJbnN0ZWFkIGFkZCB0aGUgZmlsdGVyIGluIHRoZSBtZXJnZSBmdW5jdGlvbiBhZ2FpbiB3
aGVyZSBpdCBtYWtlcyANCj4+Pj4gc2Vuc2UuDQo+Pj4+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4gLS0tDQo+Pj4+
IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAzICsrLQ0KPj4+PiDCoCBp
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaMKgwqAgfCA2ICstLS0tLQ0KPj4+PiDCoCAy
IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4+Pj4NCj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgDQo+Pj4+
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KPj4+PiBpbmRleCA1MDJhNjVl
YTZkNDQuLjcwMDJiY2E3OTJmZiAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS11bndyYXAuYw0KPj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVu
d3JhcC5jDQo+Pj4+IEBAIC03Miw3ICs3Miw4IEBAIHN0cnVjdCBkbWFfZmVuY2UgDQo+Pj4+ICpf
X2RtYV9mZW5jZV91bndyYXBfbWVyZ2UodW5zaWduZWQgaW50IG51bV9mZW5jZXMsDQo+Pj4+IMKg
wqDCoMKgwqAgY291bnQgPSAwOw0KPj4+PiDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBudW1f
ZmVuY2VzOyArK2kpIHsNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV91bndyYXBf
Zm9yX2VhY2godG1wLCAmaXRlcltpXSwgZmVuY2VzW2ldKQ0KPj4+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCArK2NvdW50Ow0KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWRtYV9m
ZW5jZV9pc19zaWduYWxlZCh0bXApKQ0KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICsrY291bnQ7DQo+Pj4+IMKgwqDCoMKgwqAgfQ0KPj4+PiDCoCDCoMKgwqDCoMKgIGlmIChj
b3VudCA9PSAwKQ0KPj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53
cmFwLmggDQo+Pj4+IGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4+Pj4gaW5k
ZXggMzkwZGUxZWU5ZDM1Li42NmIxZTU2ZmJiODEgMTAwNjQ0DQo+Pj4+IC0tLSBhL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLXVud3JhcC5oDQo+Pj4+IEBAIC00MywxNCArNDMsMTAgQEAgc3RydWN0IGRtYV9mZW5jZSAq
ZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KHN0cnVjdCANCj4+Pj4gZG1hX2ZlbmNlX3Vud3JhcCAqY3Vy
c29yKTsNCj4+Pj4gwqDCoCAqIFVud3JhcCBkbWFfZmVuY2VfY2hhaW4gYW5kIGRtYV9mZW5jZV9h
cnJheSBjb250YWluZXJzIGFuZCBkZWVwIA0KPj4+PiBkaXZlIGludG8gYWxsDQo+Pj4+IMKgwqAg
KiBwb3RlbnRpYWwgZmVuY2VzIGluIHRoZW0uIElmIEBoZWFkIGlzIGp1c3QgYSBub3JtYWwgZmVu
Y2Ugb25seSANCj4+Pj4gdGhhdCBvbmUgaXMNCj4+Pj4gwqDCoCAqIHJldHVybmVkLg0KPj4+PiAt
ICoNCj4+Pj4gLSAqIE5vdGUgdGhhdCBzaWduYWxsZWQgZmVuY2VzIGFyZSBvcHBvcnR1bmlzdGlj
YWxseSBmaWx0ZXJlZCBvdXQsIA0KPj4+PiB3aGljaA0KPj4+PiAtICogbWVhbnMgdGhlIGl0ZXJh
dGlvbiBpcyBwb3RlbnRpYWxseSBvdmVyIG5vIGZlbmNlIGF0IGFsbC4NCj4+Pj4gwqDCoCAqLw0K
Pj4+PiDCoCAjZGVmaW5lIGRtYV9mZW5jZV91bndyYXBfZm9yX2VhY2goZmVuY2UsIGN1cnNvciwg
aGVhZCnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwNCj4+Pj4gwqDCoMKgwqDCoCBmb3IgKGZlbmNl
ID0gZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChoZWFkLCBjdXJzb3IpOyBmZW5jZTvCoMKgwqAgXA0K
Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoCBmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfbmV4dChjdXJz
b3IpKSBcDQo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChm
ZW5jZSkpDQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgIGZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9u
ZXh0KGN1cnNvcikpDQo+Pj4+IMKgIMKgIHN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vu
d3JhcF9tZXJnZSh1bnNpZ25lZCBpbnQgDQo+Pj4+IG51bV9mZW5jZXMsDQo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNl
ICoqZmVuY2VzLA0KPj4+DQo+Pg0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
