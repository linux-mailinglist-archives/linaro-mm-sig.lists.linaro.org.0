Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0485D362021
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 14:47:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D451667BD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 12:47:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1B312667CF; Fri, 16 Apr 2021 12:47:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,RCVD_IN_DNSWL_HI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BAB6667CD;
	Fri, 16 Apr 2021 12:46:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2A7A0667BD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 12:46:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F4F9667CD; Fri, 16 Apr 2021 12:46:56 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2066.outbound.protection.outlook.com [40.107.220.66])
 by lists.linaro.org (Postfix) with ESMTPS id 6AEC7667BD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 12:46:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DNJm020XyLWnVTMDjt7Fy1Heucw6bON4CKgEDGofGow3AMIeresJaEnq3CxsquHTscUzSm5Okp55AR5WHlREDH//dkmsIATHfIp9RqaQgmaRV+ZsOSCBHqcIoCf7Khs4WvyMrOgKmb9pMjWbLGXBY/ZMJb7FOP2vEBCQb3d322eujzg2SBR5QT49AC56oNFpuXHAbB7nSoWNcuJTXIl0UB2X031N5hz4xwN0F/fO0VsOUPsQ3ZyRdQut02/3KTFBTvomvtI8iQvK+awLZkfArrj9H3uoY+zuWBnOTvRoYb2F5GMgBLHdpyNzrMjJ39I9LDWT654t7b8QdexJMKc/TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gLQJj3VoS0pNsqZK3ojcV1ixz8x2vryDgtLmuArRshE=;
 b=XPMzam9DYvu/DQzvboZ/Kqa2piKuN6WPEc4+ztTzem5MfixiRzWLgqRiGiFaLwW/fG/IQFQvfTubVjHcg6aSPQXJKtMfxW3I8kIybgWGBNJY3m0Sizgib3tGjwZNfUEHRUrF3yNkQW8hDBUoPlUoVmnQZOtd6DnhNYrsGqUZRTMXBpmzuwvqGYjQtNY8aR4OurjNZRwn7fin1sRTEMaaaHlXJbx4lY1ZBrxcOwWkBMpS9I6qGZ4GOIZpTCHlZqvLlZrIsrTtacPxAM0mx8ymU/8fpi+sfcebH9aeTC0W77A5jj8gQTq7wbWG0ME1K2WmW2i0NtA8TuGqatOx7+EwvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4109.namprd12.prod.outlook.com (2603:10b6:208:1d9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Fri, 16 Apr
 2021 12:46:50 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4020.025; Fri, 16 Apr 2021
 12:46:50 +0000
To: Peter Enderborg <peter.enderborg@sony.com>, linux-kernel@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Muchun Song <songmuchun@bytedance.com>, Roman Gushchin <guro@fb.com>,
 Shakeel Butt <shakeelb@google.com>, Michal Hocko <mhocko@suse.com>,
 NeilBrown <neilb@suse.de>, Sami Tolvanen <samitolvanen@google.com>,
 Mike Rapoport <rppt@kernel.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Matthew Wilcox <willy@infradead.org>
References: <20210416123352.10747-1-peter.enderborg@sony.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <6979dc43-a7a3-e1de-6794-365bc1e2c904@amd.com>
Date: Fri, 16 Apr 2021 14:46:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210416123352.10747-1-peter.enderborg@sony.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:6a8a:26d6:7403:5ada]
X-ClientProxiedBy: PR3P195CA0018.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:102:b6::23) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:6a8a:26d6:7403:5ada]
 (2a02:908:1252:fb60:6a8a:26d6:7403:5ada) by
 PR3P195CA0018.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:b6::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16 via Frontend Transport; Fri, 16 Apr 2021 12:46:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 00e151b7-eb29-4e53-09bc-08d900d5b461
X-MS-TrafficTypeDiagnostic: MN2PR12MB4109:
X-Microsoft-Antispam-PRVS: <MN2PR12MB41096E855A275299FC6CE55C834C9@MN2PR12MB4109.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qYcn3FWW3zPIYnzpEeruroPzsuXxd/eOE52xJMLURY4XxVvkAtkIe86YTp0xHEckySWnWKRvEZsr3zpJcB8K+7bjxvhNf7Xy192uXwjetOE/c5LesctKuZMzsy49maNRw55+IHJeML4/AaKzBVyvVmFhZcvidcRCMl13w2nTR5lmOwuKqXqulliLJsEyxl2zWIOrYUcIJZEJhQjcT8AZwlssOPYgRgeRziLTCmK1thOHwN/g5nZ3ncaaTxvKe2x0R6jZVlEhtkbTgCR6evOMQ7OB2c+BP0w23oUTYzgo0s807ykxgtSQMHYlhlNoC6Xrpw/XBsnr2MZsHBiQ0Ag+Nl19kQ8Vo9Z27SPE/e51i72zrGSTOH0TEp+NwtYm2VJoBOcrKSDEfTV1er23lrEn1+l6QJzNdjcS4OL4icUrgR5h32C9X/vQW3vlJNl/sl3bKTjx4K8wk7lwk45nOh4NPMKqxXjrKjl81UhHfVltJnYZ0l4EvPQAgZHY4sjYCNWRil60s2qb3xby1rhNI3RX/jnnfh+Qv23sDy07wxWJ+x/KGXOBCFYDYmhjshgWmeyCPeM2H8PprFq6BmWOJUmJz3kW1QWeOhVYdXY+O5kj7XqwrSWjiS1PgMWD8+nssRz6AMMKnKlHRFl73F923cI3mVnzkNRorpFSowVpItDI+xMQv9Ts676OQvgv8fPHyq2cGQ/DZhRX5nE/AVHhE+fuJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(38100700002)(6666004)(66476007)(66556008)(66946007)(52116002)(6486002)(36756003)(2906002)(31696002)(110136005)(316002)(16526019)(31686004)(2616005)(186003)(8936002)(7416002)(86362001)(478600001)(8676002)(5660300002)(83380400001)(921005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NXMwZDNjTjNvSURyVnJFd2ozUVdxWmFIWld2bGU5cDJGUG1mNmFxOEVKYzVU?=
 =?utf-8?B?YkJ6VklkM2dRYUpzNmUrb1Vtb251eEh6WmJlZDAxd1RmZ2l0bjBIZ3BURXYr?=
 =?utf-8?B?YXNtNkl1Q1hLVlY2TlNaZ1E2aXhtWklOVXBqYmh3dzJpejd2V1JHeG1ZVngw?=
 =?utf-8?B?cVdpem0xbUxNQU1ZcjRDdXRLMUM3Mi9uOGl2MnkzYlZjL2xQZitoNnZpVkR1?=
 =?utf-8?B?dVJXNzFrWHl2aXlKTmNLMmlpWEsydUpWcldTL2E5eGNDT3NaQmExSkQ0Y1R1?=
 =?utf-8?B?bll1ZXVUVXozWExJUDEyVzRVOURndDNQZzN6eFZtTldqREFVWmh5dVRqc3pO?=
 =?utf-8?B?cndBV2ZSSWVIVEgxN211QmFtOTNteFlpSFl6QkZQL0lGNW01RnVoc2xZQ1Vp?=
 =?utf-8?B?SkUrb296WS9NUWNFZWFwRnR0UEVVR1JCMW1EbDF3SWVMd1hiaUVsa1Q4b1Zp?=
 =?utf-8?B?VHh3YkRwKy9JejRUVSt3dFRzQTNwWVl3U1NjdDBjME1FRE5FWmdGVk9jOVMy?=
 =?utf-8?B?cHhjclBWek9CcGIzalZaTTU1OTdydFpBcUt2OHh0QXNMOXZtL3R6YTArVCs3?=
 =?utf-8?B?Y2RMZ2w4NjZPQ0FNeTltbmJSZE9GK2hJazYyN3dVcVdlVmxXVk5XRmZ6MTlm?=
 =?utf-8?B?NlFORVluK05ySUFEdnJFbmpyUlNlcDFGbXhibDl1dFA4ZTZ5a1dnVThRREM5?=
 =?utf-8?B?SitzUWhBQUxxdjV5ZzhJTjFLNUJ4UHdnSDc4YkhNVWdKQnVsWlVRZmRUU0JM?=
 =?utf-8?B?dHVaYVZsZjM2UU0xQWFXbExBUk0yVTQrbGx6ZVU4NWtWYmNuSGQ3ZlFJcTdV?=
 =?utf-8?B?aExybUluWFc0UE9DT2k3enlLMXRFUjJsVEFqMjNzZGVHUTEwT3NvUEx4bnNi?=
 =?utf-8?B?R3cwZXdWSW53OTMwM2ZzVzNlaEFBNC9pMW4vTUhob0J1Q29pdUE5UVFsMTky?=
 =?utf-8?B?UDVDeVJlVERpNzB0aVpVQUsrSkFpRzRBR2lTaFR2TzdmY0J2N2JGVUVOTC9M?=
 =?utf-8?B?U2krbW1PaDFWVjFTVXBNS1NaU3pZdlFiYlJqSTNpZmtaTDRwZWwwS2diQmtS?=
 =?utf-8?B?TzNVU2RCbncrRGdkTE5oc2YvVVIvWDk1MUl5Z2EwZWh4NGt4NUZiTmxlTncx?=
 =?utf-8?B?SFhsU1BzUWFOdVFPSjQvemNoTHVJb2JPeEUwazFKazRyVkdTMjZMMFBObFhE?=
 =?utf-8?B?eDZ0YThwd2Nzem03MWk1RDhMUlg0T3pMSWdBaWlUait3VmRqUXgzaFZDdWVy?=
 =?utf-8?B?YytScTZSZXByZ1R2QWhYYUVRSWZMcXI2aHpGOVBMWitTbFNVUUg2QWJSbEQ5?=
 =?utf-8?B?cGZFSnBQSFRtYllnUG5tdnlLbEIyUzJDZDNCb0sxVCtQbks3K3ZlVmo4bHE5?=
 =?utf-8?B?ckk2UTlyWmVWakxrc2M2Z3pSWnF1Ty93eFpiRVpVNHFackhhbmZJRi9mdS8v?=
 =?utf-8?B?aHAxREt4Q0VabDJGdjFERXoxeUY2U0F0bDJYeHBJL2RUUEg1anlUdjM1VEtO?=
 =?utf-8?B?a1RRUjNrdGVOQnAwS3hOVFlpVlhuUnoyWWVTOTBaUEdmcSsxWGFVU3dTL0Mv?=
 =?utf-8?B?RlhQUXN2OHFIdWFtMUNSR1JHcWw4QmVKcWliaUVkamQwQUtBR1FxNitOTFU0?=
 =?utf-8?B?RVZHVCtPY0ZRUnJ2bmdWMksvZjBjTXpNZWcyc1BVeHV6MVdSbW1MZFdXc21L?=
 =?utf-8?B?ekk0ckRLZEoyL3dIRG9waUdDRU9PQ0tSTlhiSFErVkgydHh3VXk5NnEwMGlY?=
 =?utf-8?B?Y0duaVp3cEcrNVg5b2JBUCtoQ21WN1Fndm5WbUluU2t1b2ZiYStRTGFlY2JO?=
 =?utf-8?B?cXpnMVhTaUFWMFlFY2dWOExHaHk4UUVPSlMyc1RPUkdIZTZUbmltMFlPeWg0?=
 =?utf-8?Q?BXBX8HsFwfoM2?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e151b7-eb29-4e53-09bc-08d900d5b461
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2021 12:46:50.7536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bZkRQmCHLLYMZQZsfLLVq7nkYxb1/7uMeTmz7zcT+iiy+uUt2JbSQHVpq/tk1ayO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4109
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: Add DmaBufTotal counter in
	meminfo
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgpBbSAxNi4wNC4yMSB1bSAxNDozMyBzY2hyaWViIFBldGVyIEVuZGVyYm9yZzoKPiBUaGlzIGFk
ZHMgYSB0b3RhbCB1c2VkIGRtYS1idWYgbWVtb3J5LiBEZXRhaWxzCj4gY2FuIGJlIGZvdW5kIGlu
IGRlYnVnZnMsIGhvd2V2ZXIgaXQgaXMgbm90IGZvciBldmVyeW9uZQo+IGFuZCBub3QgYWx3YXlz
IGF2YWlsYWJsZS4gZG1hLWJ1ZiBhcmUgaW5kaXJlY3QgYWxsb2NhdGVkIGJ5Cj4gdXNlcnNwYWNl
LiBTbyB3aXRoIHRoaXMgdmFsdWUgd2UgY2FuIG1vbml0b3IgYW5kIGRldGVjdAo+IHVzZXJzcGFj
ZSBhcHBsaWNhdGlvbnMgdGhhdCBoYXZlIHByb2JsZW1zLgo+Cj4gU2lnbmVkLW9mZi1ieTogUGV0
ZXIgRW5kZXJib3JnIDxwZXRlci5lbmRlcmJvcmdAc29ueS5jb20+Cj4gLS0tCj4gICBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTIgKysrKysrKysrKysrCj4gICBmcy9wcm9jL21lbWluZm8u
YyAgICAgICAgIHwgIDUgKysrKy0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgMSAr
Cj4gICAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+IGluZGV4IGYyNjRiNzBjMzgzZS4uOWY4ODE3MWIzOTRjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4gQEAgLTM3LDYgKzM3LDcgQEAgc3RydWN0IGRtYV9idWZfbGlzdCB7Cj4gICB9Owo+
ICAgCj4gICBzdGF0aWMgc3RydWN0IGRtYV9idWZfbGlzdCBkYl9saXN0Owo+ICtzdGF0aWMgYXRv
bWljX2xvbmdfdCBkbWFfYnVmX3NpemU7CgpQcm9iYWJseSBiZXR0ZXIgdG8gY2FsbCB0aGlzIGFu
ZCB0aGUgZ2V0IGZ1bmN0aW9uIHNvbWV0aGluZyBsaWtlIApnbG9iYWxfYWxsb2NhdGVkLgoKQ2hy
aXN0aWFuLgoKPiAgIAo+ICAgc3RhdGljIGNoYXIgKmRtYWJ1ZmZzX2RuYW1lKHN0cnVjdCBkZW50
cnkgKmRlbnRyeSwgY2hhciAqYnVmZmVyLCBpbnQgYnVmbGVuKQo+ICAgewo+IEBAIC03OSw2ICs4
MCw3IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnkp
Cj4gICAJaWYgKGRtYWJ1Zi0+cmVzdiA9PSAoc3RydWN0IGRtYV9yZXN2ICopJmRtYWJ1ZlsxXSkK
PiAgIAkJZG1hX3Jlc3ZfZmluaShkbWFidWYtPnJlc3YpOwo+ICAgCj4gKwlhdG9taWNfbG9uZ19z
dWIoZG1hYnVmLT5zaXplLCAmZG1hX2J1Zl9zaXplKTsKPiAgIAltb2R1bGVfcHV0KGRtYWJ1Zi0+
b3duZXIpOwo+ICAgCWtmcmVlKGRtYWJ1Zi0+bmFtZSk7Cj4gICAJa2ZyZWUoZG1hYnVmKTsKPiBA
QCAtNTg2LDYgKzU4OCw3IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pCj4gICAJbXV0ZXhfbG9jaygmZGJf
bGlzdC5sb2NrKTsKPiAgIAlsaXN0X2FkZCgmZG1hYnVmLT5saXN0X25vZGUsICZkYl9saXN0Lmhl
YWQpOwo+ICAgCW11dGV4X3VubG9jaygmZGJfbGlzdC5sb2NrKTsKPiArCWF0b21pY19sb25nX2Fk
ZChkbWFidWYtPnNpemUsICZkbWFfYnVmX3NpemUpOwo+ICAgCj4gICAJcmV0dXJuIGRtYWJ1ZjsK
PiAgIAo+IEBAIC0xMzQ2LDYgKzEzNDksMTUgQEAgdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCkKPiAgIH0KPiAgIEVYUE9S
VF9TWU1CT0xfR1BMKGRtYV9idWZfdnVubWFwKTsKPiAgIAo+ICsvKioKPiArICogZG1hX2J1Zl9n
ZXRfc2l6ZSAtIFJldHVybiB0aGUgdXNlZCBuciBwYWdlcyBieSBkbWEtYnVmCj4gKyAqLwo+ICts
b25nIGRtYV9idWZfZ2V0X3NpemUodm9pZCkKPiArewo+ICsJcmV0dXJuIGF0b21pY19sb25nX3Jl
YWQoJmRtYV9idWZfc2l6ZSkgPj4gUEFHRV9TSElGVDsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQ
TChkbWFfYnVmX2dldF9zaXplKTsKPiArCj4gICAjaWZkZWYgQ09ORklHX0RFQlVHX0ZTCj4gICBz
dGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVu
dXNlZCkKPiAgIHsKPiBkaWZmIC0tZ2l0IGEvZnMvcHJvYy9tZW1pbmZvLmMgYi9mcy9wcm9jL21l
bWluZm8uYwo+IGluZGV4IDZmYTc2MWM5Y2M3OC4uMTc4ZjZmZmIxNjE4IDEwMDY0NAo+IC0tLSBh
L2ZzL3Byb2MvbWVtaW5mby5jCj4gKysrIGIvZnMvcHJvYy9tZW1pbmZvLmMKPiBAQCAtMTYsNiAr
MTYsNyBAQAo+ICAgI2lmZGVmIENPTkZJR19DTUEKPiAgICNpbmNsdWRlIDxsaW51eC9jbWEuaD4K
PiAgICNlbmRpZgo+ICsjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPgo+ICAgI2luY2x1ZGUgPGFz
bS9wYWdlLmg+Cj4gICAjaW5jbHVkZSAiaW50ZXJuYWwuaCIKPiAgIAo+IEBAIC0xNDUsNyArMTQ2
LDkgQEAgc3RhdGljIGludCBtZW1pbmZvX3Byb2Nfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZv
aWQgKnYpCj4gICAJc2hvd192YWxfa2IobSwgIkNtYUZyZWU6ICAgICAgICAiLAo+ICAgCQkgICAg
Z2xvYmFsX3pvbmVfcGFnZV9zdGF0ZShOUl9GUkVFX0NNQV9QQUdFUykpOwo+ICAgI2VuZGlmCj4g
LQo+ICsjaWZkZWYgQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSCj4gKwlzaG93X3ZhbF9rYihtLCAi
RG1hQnVmVG90YWw6ICAgICIsIGRtYV9idWZfZ2V0X3NpemUoKSk7Cj4gKyNlbmRpZgo+ICAgCWh1
Z2V0bGJfcmVwb3J0X21lbWluZm8obSk7Cj4gICAKPiAgIAlhcmNoX3JlcG9ydF9tZW1pbmZvKG0p
Owo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oCj4gaW5kZXggZWZkYzU2YjlkOTVmLi5mNjQ4MTMxNWEzNzcgMTAwNjQ0Cj4gLS0t
IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aAo+IEBAIC01MDcsNCArNTA3LDUgQEAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAq
LCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKiwKPiAgIAkJIHVuc2lnbmVkIGxvbmcpOwo+ICAgaW50
IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAg
Km1hcCk7Cj4gICB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0
cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsKPiArbG9uZyBkbWFfYnVmX2dldF9zaXplKHZvaWQpOwo+
ICAgI2VuZGlmIC8qIF9fRE1BX0JVRl9IX18gKi8KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
