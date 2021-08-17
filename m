Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCF53EE8F9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Aug 2021 11:00:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB2256065A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Aug 2021 09:00:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A239261033; Tue, 17 Aug 2021 09:00:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24BCD6075B;
	Tue, 17 Aug 2021 09:00:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7CD3F6065A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Aug 2021 09:00:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A62A6075B; Tue, 17 Aug 2021 09:00:41 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam08on2079.outbound.protection.outlook.com [40.107.102.79])
 by lists.linaro.org (Postfix) with ESMTPS id 3AC126065A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Aug 2021 09:00:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZWrGtyDKPlPO8fI8DxFdjpdU+6l/UuS8yNQD7C/8R8FtMnVdylOQw0/6oUB4jjtekQu9+1LTD03Q0rckvC/OMRQwHt1kcN1oOdmEUuYFVa4kyDO1UyzZkbG2xxNPV34Cb7UFNvtfockpuyxOfdfPsmt+RjqcZ/rm4KQJ5dSBVPDmarRM70ja1AdQKEHUJc2kMBLnNJhFj7cR1QrmSDy8Ia7crGkBZFK+PtXzJU0fC4w6El9W01Oc8gKIVTGazvg1SxfHVONYP/ttk5YhZdC+Ze7Wd/TS2CQUcVG96mfEfCwmpRRody073G0uTVvhHFi1AQfujpoKbMZz5onWww9BGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1v1Ebg9SViRdsZNluCgN81CXay7Yrgc10drKIwbX/mI=;
 b=BPwh9qud2trdtlWJ7bjpgfTF8c4RAYBcaoEivQLKgY3azXx7DvkM/UKFAxt6Hhbo8UWlyFPLy5urmuL/t5MI0rSD5hA2igbrrLsI40wcRn8LRj6lXIff8a7txfWWG7ZjXokxClMSlqVmgmwmnCInfsat7J5u2cyMKXxYABhX7Bf3ZeKzPScAxlKh+ZD5jAgCib5ZagV3hS1FPUv2csL+xJUNh+S4PLX0PTy7E4Fs/w/4VKBDK2+hqcELA8BTzxmW2VJtZdEHRdaf1zO60Lm4O3cakPdVdi3YCJGWDGHv0QW01BXmJnUv31BWbsF04c3DlfJMKrgnw07sXqx+xwCVdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1v1Ebg9SViRdsZNluCgN81CXay7Yrgc10drKIwbX/mI=;
 b=VgkKTVOLY4pWkG/By+TZRatizeBsj9Lf+suFNhdU5PJzdMgV78Xk/rNrCpXoUk8EX9DzPtW+HFK0MZTgQOKmljRtWZDxTJol/9suAoZxVTXc7WcMvhgn7TtIPNprFYCavskQ7XD/4IQueNBn9JJKImkPLuJFx6KyPTNqhcqs4RU=
Authentication-Results: hisilicon.com; dkim=none (message not signed)
 header.d=none;hisilicon.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4551.namprd12.prod.outlook.com (2603:10b6:208:263::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Tue, 17 Aug
 2021 09:00:36 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe%6]) with mapi id 15.20.4415.024; Tue, 17 Aug 2021
 09:00:36 +0000
To: Rob Clark <robdclark@gmail.com>
References: <20210807183804.459850-1-robdclark@gmail.com>
 <9a7bdcb5-4f6f-539b-060e-d69ec15da874@amd.com>
 <CAF6AEGuwmLXW0xiFGGLie6qiL_ryE47pTiNYxmwwyshrb7eDpQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <76b14bb5-f17d-29ec-d64e-bfb0fc6d2cf9@amd.com>
Date: Tue, 17 Aug 2021 11:00:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAF6AEGuwmLXW0xiFGGLie6qiL_ryE47pTiNYxmwwyshrb7eDpQ@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM3PR05CA0085.eurprd05.prod.outlook.com
 (2603:10a6:207:1::11) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:4842:7f52:3f27:a3c2]
 (2a02:908:1252:fb60:4842:7f52:3f27:a3c2) by
 AM3PR05CA0085.eurprd05.prod.outlook.com (2603:10a6:207:1::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.15 via Frontend Transport; Tue, 17 Aug 2021 09:00:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 73a5c4ee-f101-4f95-3a4a-08d9615d7a1f
X-MS-TrafficTypeDiagnostic: MN2PR12MB4551:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4551155B3824FC53F41233D583FE9@MN2PR12MB4551.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rbY2vvs2oo8WJruGNAnIkuyO8IbajaiBsiKNip1EOlNaFmn+gVjUKirKh1UvwMe4KUHB2dhBqht5c7RhUexwAHlUzHtpt9EAHShBGNqD4unBNJlTznV8Qn8f8vA2Gu/MoxU6DyubJBL9sIOH+IcKddJN6rfUt/1gTj+1XfNZrGpCXWmQsFibCKCsqIiZQd5HxZRGVH6MUhhzNZZkMOfq5uxv7NPNrkdzHbzngN6wIzGUTFiENiFnw5bL2XqhbWalYJxKv4TGj9SumQUrwqjQTQE/LLtZLML/ie/EXx0LzN63VngdPKh1wHO3bHyrMpeLbl/BcGQMhfRVNjy7Qj1mZK3AH4YRZq9IHU2OyHbC4nNbRFivisS2/+GDRFcSyJ39pQRu04MC8l3+N3fQrQqbcJZorK5W/5LeMCSA8uL7JlcvSq6Om38olP6dS33w4iCIdOKN95V0mm9JQbkonTTKfAIjWXCiRM7k+uxrboT1sB9JerK5ZzKzzpxmsfzEj/XUUuLLSS5P0fxhayzSkzVjScoZAnyELnHWuv+eaR7uuJyvyV5INs9M+ntJnJeEsyU3IXWQ4uK/S6qoPREyzqk1mIanVVorbl4WRTb7/zNLVLtdy+weRmfe3IsdT1VPgLEu0hPL3WKKAHtBWoap05ElMKsQdtkORkowZlwcm5EeCRyyW3fkOvG3rYqJNaKfIh7vzAkuSyH9BaFgibPg91gPpyPnCWAr69gv8eeI6pN5N5irnm8Tg8DyEBC2yM8CWh5A
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(366004)(136003)(39860400002)(346002)(7416002)(6666004)(66946007)(316002)(6486002)(5660300002)(478600001)(45080400002)(38100700002)(31696002)(966005)(186003)(8936002)(31686004)(86362001)(54906003)(36756003)(83380400001)(8676002)(4326008)(66556008)(66476007)(6916009)(2906002)(66574015)(2616005)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzRZTC9xK2FrSWJzbGlvRi9odExyUnNCR0xCR2xSd2lsOW55Z2pyS1EwZnNC?=
 =?utf-8?B?eVpwZ2tQbCtIUDNSM09VQVlqWEdNSXIrNjYrWUxtVWZ3Uy91dTZWdjladnFq?=
 =?utf-8?B?QkpjM0g1d3FYYSs5LzZQUjR4VGNSaTc0OU9ENm9rd1NZejIyNm05YzZkcW5v?=
 =?utf-8?B?OG92cE1zRWtPc0VNV1NucUV0RXByWGx5YWhvaytiQXhCZUNhR0hRYVpxRE9i?=
 =?utf-8?B?NlNDQ0xrbEJEN2tXOUhuMjBRUUdMR1NrRFZIc1lhZzgwaHNtWC9XcDkxQXFZ?=
 =?utf-8?B?UFQxS0hsVTYxRVNOY2lkZW1IMkorbG9UUlFnM2VvWkpJL0NjWFhlZkh1dkli?=
 =?utf-8?B?TThlalI0SGVyT1V1WjNta1plV015c2paWVlCV1RVVTIvWWVPSXlOTGdQZ01k?=
 =?utf-8?B?YkUzdGVDZ00yWmFtR0pGbUxLYXk1WDZCYjgzKzM1c0d2dStDVmUwdklPcHo0?=
 =?utf-8?B?VHp5ZkN1RkhJd09SaU1wU05OOFQ3VkRzcU9GRVF5M3dtaTlzUmNFUm1DYUlE?=
 =?utf-8?B?MzFERDVNWFNua0dJRm9uYjd6d2h2dHpuSWlXOXV5SG1IRm02T1Rsbm1XSUI2?=
 =?utf-8?B?QmlWam9TTzdMV2RPaEg1eDZMZUdnekRvREFwWFIvMlYrdUtncEdZZndvQUFZ?=
 =?utf-8?B?ZW9CdEFHeklWVEpDaUtzSEFjQnZ6ZCtFUElRemZoMGlueVRIOTFUWnBxZWV6?=
 =?utf-8?B?SHdaOTk1RnZnbndtQnRGdXUwZUlGZDlYTWxMbTNCMmNUMWZTY2tnak9JSkZR?=
 =?utf-8?B?YUwyQnZ6cXZvdGxTVFpIbnNxVDlscXoxajNiK29OeUJwdW9LSk5xY0E2dHZk?=
 =?utf-8?B?ZmhBQUJTMTl4cDIzQ1N1ZnIzYWhVYUw2NFFuN1NPdjdmNjBMS0tncTR3TUNw?=
 =?utf-8?B?aW9aeFd5a1RtTkluMFJUaEFkWUpNRXBIa1ZMVTh3b2RBRzBQVlFERG0vcmlQ?=
 =?utf-8?B?K0NteWxOZlM3SnAwRlFPdkJ1RzF4RHM1OC81U3dRSUpoeVJQNUViN0RHQjNX?=
 =?utf-8?B?V2RuR2dMNm9kb3ZwYkxQdkpNN0lnVjBIZk1QdUs0bm10OUNSZ3pUbEg5bmdQ?=
 =?utf-8?B?bjlDUFVwalY3QTZ2bnZaUmhTRW92cGYzUVBCWWFBUEcreklUVXk4ck5XdVRy?=
 =?utf-8?B?dG1IRUNUVnlISVVaR3plU1B5UmVjWFpOVmR4MytSd1ZxQkRMQzI5djNMOEcy?=
 =?utf-8?B?bDZubVE2aVFUT29PM0NZUllyQ2NMVVdzR3cydVZZZmhqYmJDeTJNQlh1V1Mv?=
 =?utf-8?B?VnozbnVwQzZPVTZ5ZFB2aUM2SDFvWklQNXlvYjU4N1hnNGZyOXA0TWRVcDE5?=
 =?utf-8?B?b2x5R0o3dzRlRlY3Mm1WZys5RXFRdkhxbjFmRGVZR3djU2djY3MwYmtNVVVE?=
 =?utf-8?B?emNxellPcjF6YjhCYzRsVUFMdXFMUE05Q0hneFpQVjgyUmpnM0JDN1RTZlhj?=
 =?utf-8?B?RXhkWkhZOC9zREhvNlJyTm53NmV5MWIwQTUvRy9ISXd5RjlwWkp6ODFIY2kv?=
 =?utf-8?B?NmdwUTJ2Wkt3S01wNkx1bHhzKzFnUlJpNk03SjR4aHR6R2djaTlqdkErNVlC?=
 =?utf-8?B?VllIcEpqRzhiTkFYN1ZoT0NkMGhxL3B6WXZxYkFDVjlTenAxUVhZV0s3VlI0?=
 =?utf-8?B?MVg1MXRYWHZhTGd6YmVjSTZqSm9yOUsxY1JSN1RRMHZnOWpDS2V0aDhacUcz?=
 =?utf-8?B?Zk4rczF2VVlZZ2FDMENTbEwxWEFwQ01FLzJlcFpVak1sYzR5WGhOajlsRDdh?=
 =?utf-8?B?b2M2a1FBSzlQVjVHYXhaMFNXZ29jZmllNFVtWmpMTlZNTUlIN05jM0lEQzdQ?=
 =?utf-8?B?a21rYXJqaFUvNG0yZDE4NnlZSWYzMk9Zb1k1c0FLeUJjeFh5M1h0U0FXWEhU?=
 =?utf-8?Q?O/z7fwKTeD05r?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73a5c4ee-f101-4f95-3a4a-08d9615d7a1f
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2021 09:00:36.0104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JkrH4eS2xb/peMs77Khe6KiD0ohDt8w3qS+o0E/ZKF1nhCZyZhR0MoZ1t6O1KslX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4551
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2 0/5] dma-fence: Deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Jack Zhang <Jack.Zhang1@amd.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>, Steven Price <steven.price@arm.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTcuMDguMjEgdW0gMDA6Mjkgc2NocmllYiBSb2IgQ2xhcms6Cj4gZG1hX2ZlbmNlX2FycmF5
IGxvb2tzIHNpbXBsZSBlbm91Z2gsIGp1c3QgcHJvcGFnYXRlIHRoZSBkZWFkbGluZSB0bwo+IGFs
bCBjaGlsZHJlbi4KPgo+IEkgZ3Vlc3MgZG1hX2ZlbmNlX2NoYWluIGlzIHNpbWlsYXIgKGllLiBm
ZW5jZSBpcyBzaWduYWxsZWQgd2hlbiBhbGwKPiBjaGlsZHJlbiBhcmUgc2lnbmFsbGVkKSwgdGhl
IGRpZmZlcmVuY2UgYmVpbmcgc2ltcGx5IHRoYXQgY2hpbGRyZW4gYXJlCj4gYWRkZWQgZHluYW1p
Y2FsbHk/CgpObywgbmV3IGNoYWluIG5vZGVzIGFyZSBhbHdheXMgYWRkZWQgYXQgdGhlIHRvcC4K
ClNvIHdoZW4geW91IGhhdmUgYSBkbWFfZmVuY2VfY2hhaW4gYXMgYSBzdGFydGluZyBwb2ludCB0
aGUgbGlua2VkIG5vZGVzIAphZnRlciBpdCB3aWxsIHN0YXkgdGhlIHNhbWUgKGV4Y2VwdCBmb3Ig
Z2FyYmFnZSBjb2xsZWN0aW9uKS4KClRoZSB0cmlja3kgcGFydCBpcyB5b3UgY2FuJ3QgdXNlIHJl
Y3Vyc2lvbiwgY2F1c2UgdGhhdCB3b3VsZCBlYXNpbHkgCmV4Y2VlZCB0aGUga2VybmVscyBzdGFj
ayBkZXB0aC4gU28geW91IG5lZWQgc29tZXRoaW5nIHNpbWlsYXIgdG8gCmRtYV9mZW5jZV9jaGFp
bl9zaWduYWxlZCgpLgoKU29tZXRoaW5nIGxpa2UgdGhpcyBzaG91bGQgZG8gaXQ6CgpzdGF0aWMg
Ym9vbCBkbWFfZmVuY2VfY2hhaW5fc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LCAKa3RpbWVfdCBkZWFkbGluZSkKewogwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2NoYWluX2Zv
cl9lYWNoKGZlbmNlLCBmZW5jZSkgewogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWluKGZlbmNlKTsK
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmID0gY2hh
aW4gPyBjaGFpbi0+ZmVuY2UgOiBmZW5jZTsKCiDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAg
ZG1hX2ZlbmNlX3NldF9kZWFkbGluZShmLCBkZWFkbGluZSk7CiDCoMKgwqDCoMKgwqDCoCB9Cn0K
ClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBCUiwKPiAtUgo+Cj4gT24gTW9uLCBBdWcgMTYsIDIw
MjEgYXQgMzoxNyBBTSBDaHJpc3RpYW4gS8O2bmlnCj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4gd3JvdGU6Cj4+IFRoZSBnZW5lcmFsIGFwcHJvYWNoIHNlZW1zIHRvIG1ha2Ugc2Vuc2Ugbm93
IEkgdGhpbmsuCj4+Cj4+IE9uZSBtaW5vciB0aGluZyB3aGljaCBJJ20gbWlzc2luZyBpcyBhZGRp
bmcgc3VwcG9ydCBmb3IgdGhpcyB0byB0aGUKPj4gZG1hX2ZlbmNlX2FycmF5IGFuZCBkbWFfZmVu
Y2VfY2hhaW4gY29udGFpbmVycy4KPj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Pgo+PiBB
bSAwNy4wOC4yMSB1bSAyMDozNyBzY2hyaWViIFJvYiBDbGFyazoKPj4+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4KPj4+Cj4+PiBCYXNlZCBvbiBkaXNjdXNzaW9uIGZy
b20gYSBwcmV2aW91cyBzZXJpZXNbMV0gdG8gYWRkIGEgImJvb3N0IiBtZWNoYW5pc20KPj4+IHdo
ZW4sIGZvciBleGFtcGxlLCB2YmxhbmsgZGVhZGxpbmVzIGFyZSBtaXNzZWQuICBJbnN0ZWFkIG9m
IGEgYm9vc3QKPj4+IGNhbGxiYWNrLCB0aGlzIGFwcHJvYWNoIGFkZHMgYSB3YXkgdG8gc2V0IGEg
ZGVhZGxpbmUgb24gdGhlIGZlbmNlLCBieQo+Pj4gd2hpY2ggdGhlIHdhaXRlciB3b3VsZCBsaWtl
IHRvIHNlZSB0aGUgZmVuY2Ugc2lnbmFsbGVkLgo+Pj4KPj4+IEkndmUgbm90IHlldCBoYWQgYSBj
aGFuY2UgdG8gcmUtd29yayB0aGUgZHJtL21zbSBwYXJ0IG9mIHRoaXMsIGJ1dAo+Pj4gd2FudGVk
IHRvIHNlbmQgdGhpcyBvdXQgYXMgYW4gUkZDIGluIGNhc2UgSSBkb24ndCBoYXZlIGEgY2hhbmNl
IHRvCj4+PiBmaW5pc2ggdGhlIGRybS9tc20gcGFydCB0aGlzIHdlZWsuCj4+Pgo+Pj4gT3JpZ2lu
YWwgZGVzY3JpcHRpb246Cj4+Pgo+Pj4gSW4gc29tZSBjYXNlcywgbGlrZSBkb3VibGUtYnVmZmVy
ZWQgcmVuZGVyaW5nLCBtaXNzaW5nIHZibGFua3MgY2FuCj4+PiB0cmljayB0aGUgR1BVIGludG8g
cnVubmluZyBhdCBhIGxvd2VyIGZyZXF1ZW5jZSwgd2hlbiByZWFsbHkgd2UKPj4+IHdhbnQgdG8g
YmUgcnVubmluZyBhdCBhIGhpZ2hlciBmcmVxdWVuY3kgdG8gbm90IG1pc3MgdGhlIHZibGFua3MK
Pj4+IGluIHRoZSBmaXJzdCBwbGFjZS4KPj4+Cj4+PiBUaGlzIGlzIHBhcnRpYWxseSBpbnNwaXJl
ZCBieSBhIHRyaWNrIGk5MTUgZG9lcywgYnV0IGltcGxlbWVudGVkCj4+PiB2aWEgZG1hLWZlbmNl
IGZvciBhIGNvdXBsZSBvZiByZWFzb25zOgo+Pj4KPj4+IDEpIFRvIGNvbnRpbnVlIHRvIGJlIGFi
bGUgdG8gdXNlIHRoZSBhdG9taWMgaGVscGVycwo+Pj4gMikgVG8gc3VwcG9ydCBjYXNlcyB3aGVy
ZSBkaXNwbGF5IGFuZCBncHUgYXJlIGRpZmZlcmVudCBkcml2ZXJzCj4+Pgo+Pj4gWzFdIGh0dHBz
Oi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUy
RiUyRnBhdGNod29yay5mcmVlZGVza3RvcC5vcmclMkZzZXJpZXMlMkY5MDMzMSUyRiZhbXA7ZGF0
YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0NmMzRmYThjMjMxNjI0MWYx
NTE2NDA4ZDk2MTA0YzJjNyU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3
QzAlN0M2Mzc2NDc0OTU5MzA3MTIwMDclN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lN
QzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNE
JTdDMzAwMCZhbXA7c2RhdGE9NERvRXNhbjJuVzJjTndXcmhuSHNKRjJoME1ZMXVDc2xSZk9MbWJZ
dTZ1dyUzRCZhbXA7cmVzZXJ2ZWQ9MAo+Pj4KPj4+IHYxOiBodHRwczovL25hbTExLnNhZmVsaW5r
cy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZwYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnJTJGc2VyaWVzJTJGOTMwMzUlMkYmYW1wO2RhdGE9MDQlN0MwMSU3Q2Nocmlz
dGlhbi5rb2VuaWclNDBhbWQuY29tJTdDZjM0ZmE4YzIzMTYyNDFmMTUxNjQwOGQ5NjEwNGMyYzcl
N0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3NjQ3NDk1OTMw
NzIyMDAyJTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlq
b2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAmYW1wO3NkYXRh
PTMlMkJSRkUwbkVnWlhQWjUwaVZQaWxhNUNnelhFcmxsQkVLNllwTCUyRk9FR0djJTNEJmFtcDty
ZXNlcnZlZD0wCj4+PiB2MjogTW92ZSBmaWx0ZXJpbmcgb3V0IG9mIGxhdGVyIGRlYWRsaW5lcyB0
byBmZW5jZSBpbXBsZW1lbnRhdGlvbgo+Pj4gICAgICAgdG8gYXZvaWQgaW5jcmVhc2luZyB0aGUg
c2l6ZSBvZiBkbWFfZmVuY2UKPj4+Cj4+PiBSb2IgQ2xhcmsgKDUpOgo+Pj4gICAgIGRtYS1mZW5j
ZTogQWRkIGRlYWRsaW5lIGF3YXJlbmVzcwo+Pj4gICAgIGRybS92Ymxhbms6IEFkZCBoZWxwZXIg
dG8gZ2V0IG5leHQgdmJsYW5rIHRpbWUKPj4+ICAgICBkcm0vYXRvbWljLWhlbHBlcjogU2V0IGZl
bmNlIGRlYWRsaW5lIGZvciB2YmxhbmsKPj4+ICAgICBkcm0vc2NoZWR1bGVyOiBBZGQgZmVuY2Ug
ZGVhZGxpbmUgc3VwcG9ydAo+Pj4gICAgIGRybS9tc206IEFkZCBkZWFkbGluZSBiYXNlZCBib29z
dCBzdXBwb3J0Cj4+Pgo+Pj4gICAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jICAgICAgICAg
ICAgIHwgMjAgKysrKysrKwo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVy
LmMgICAgIHwgMzYgKysrKysrKysrKysrCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFu
ay5jICAgICAgICAgICAgfCAzMSArKysrKysrKysrCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9mZW5jZS5jICAgICAgICAgfCA3NiArKysrKysrKysrKysrKysrKysrKysrKysrCj4+PiAg
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5oICAgICAgICAgfCAyMCArKysrKysrCj4+
PiAgICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHUuaCAgICAgICAgICAgfCAgMSArCj4+PiAg
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9ncHVfZGV2ZnJlcS5jICAgfCAyMCArKysrKysrCj4+
PiAgICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgfCAyNSArKysrKysr
Kwo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgIHwgIDMgKwo+
Pj4gICAgaW5jbHVkZS9kcm0vZHJtX3ZibGFuay5oICAgICAgICAgICAgICAgIHwgIDEgKwo+Pj4g
ICAgaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oICAgICAgICAgICAgIHwgIDYgKysKPj4+ICAg
IGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICAgICAgICAgICAgICB8IDE2ICsrKysrKwo+Pj4g
ICAgMTIgZmlsZXMgY2hhbmdlZCwgMjU1IGluc2VydGlvbnMoKykKPj4+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
