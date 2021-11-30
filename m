Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FB346356D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 14:26:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2726360ECA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 13:26:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C625F61A36; Tue, 30 Nov 2021 13:26:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48D816090F;
	Tue, 30 Nov 2021 13:26:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA57760604
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 13:26:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E83A76090F; Tue, 30 Nov 2021 13:26:33 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07on2085.outbound.protection.outlook.com [40.107.212.85])
 by lists.linaro.org (Postfix) with ESMTPS id CC69E60604
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 13:26:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YFqdvUQ8V9QsEfLco6IZ2tl5JQMFwERFQj1mqFD9fCyO0co58LMDLwd9V1k0pL9V+viFkgeHNs8pMcIwHfZ5do2dH3Q5f00XnbWwJsfLwuweyLw3c6e/Hq9bWwJDHrOcVz+epNwT8NQMUSc5DBYMrDgzsZ0C3Dbw5hf1zMpJp/WdX41D4GLsw5FMWELLnK84qredlnDInw+1uhyzMCUbMtzkCdKC6tC1Yx4TrTNwjyapNgiPU/Bo30J3566SaUOt9eEwnjNoaspOvcFZ0lpDb0SThFv0FIc9pxGDJodw1nVjrWdH7y15niIqB7NtGjjDg3/i6F67syJIocQqINLz5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JN5aZiccb9Gc2WGPjdaQK7RySp4OePBkZWADIK22Z0k=;
 b=fSfEMoEpYCFgiL1UWYanv4DhthLqPQ8Ry5xuGDLq715rNFwacFgNmCBeWVduZLacfuZ9oLwC4yhXKwcKrPk65WLJgZMCrB8Uuse5E3G0DcG00YBMCZ2D8i+uqL82ejor/GMRT9KGTyPRk9OsUnkRggnEvG2SomPiZ1T4Zf3xmEWEXdBuzcN20kI/+ILSchsjBlUNzJARTM0TBnyNXVQy57ox1BXpB0yPMakD3ixIjSKjNTjmOW/VQXiQHXHMb47cML2txEbX3EqfA7uz5bEDpjCKCuU4mqQr4zQ1VxyVgZKHqDQZ/LydAKLsm3M7TPvC1E49WMvSSZG8HlkOGxc/gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JN5aZiccb9Gc2WGPjdaQK7RySp4OePBkZWADIK22Z0k=;
 b=Dbjrk/5zxQbldGO9lwpCvEdxZB3/Bih79pSXp+ai2i/6/BdQ9gNKnqFrtHuSpfIW2Y4w0mDzgJ3WVUl8BM+2cpQatMLJxPvvGufuLTtxRoAYRSigWw+hnHG/ZEBLHFLJo8aDMpEcYxdqfFwfvLp/LkeDdrevfrCV8GEneln1tgs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR1201MB0189.namprd12.prod.outlook.com
 (2603:10b6:301:59::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Tue, 30 Nov
 2021 13:26:28 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4713.027; Tue, 30 Nov 2021
 13:26:28 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
 <20211130121936.586031-2-thomas.hellstrom@linux.intel.com>
 <c7502701-e85c-39f0-c249-702d029faa9e@linux.intel.com>
 <b440cfbc-2b9a-1aa2-76d6-17337f835777@linux.intel.com>
 <52a7cf8c-59c7-fec0-2274-d19bdc505314@amd.com>
 <57df8b0b-1d65-155f-a9a6-8073bbd4f28f@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <2551da4d-2e51-cc24-7d4a-84ae00a1547c@amd.com>
Date: Tue, 30 Nov 2021 14:26:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <57df8b0b-1d65-155f-a9a6-8073bbd4f28f@linux.intel.com>
Content-Language: en-US
X-ClientProxiedBy: AM6P195CA0024.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::37) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:fa20:e17b:e063:b6d3]
 (2a02:908:1252:fb60:fa20:e17b:e063:b6d3) by
 AM6P195CA0024.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:81::37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.11 via Frontend Transport; Tue, 30 Nov 2021 13:26:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2ccfe71-5068-4a6a-d6f2-08d9b40503af
X-MS-TrafficTypeDiagnostic: MWHPR1201MB0189:
X-Microsoft-Antispam-PRVS: <MWHPR1201MB0189E0222FFCB6B71B3381DE83679@MWHPR1201MB0189.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8el/09So/c3yHIv/IqJ4gseiqJ/b74Yw9klWy34FGP7d6Hu2TWoWg1mRCZ7P5eR1BNFur+4Upcq6ANi/Dmz1VWLXFt3OhRwxQUILfAfW/ceelBVTKjmJgyn32tlbQxHCSbYIcLOHkx8gc/OfFYTQK975mfv6ycCEyyYdEoeO1z0ByaPZ+/DMH2/UmocadxUhGJfJYiSM6NduLFySs+bDLi6hXc6TN3CHPhJfSRZ7MMPdyCKjK9CyjTV5K5hodCvC/TaSD3o8nV35GHQLqyQpLCaS9tSEekkRn6v+fb74EzLFHjoAoOdAsAIYI8OZUsvYpVIPBc0YY41C0WvBD2xT/blzXEhiTiYivFbnMvylCTCrwZ670uzM5hFpuar8ukxS0HIBnJEanX8MVBGBxeWM+xmdJE3ZXp17AvcSRmN95dnfSMKUfF38luJ3/ORbIMqDEU4i5A4Q2Qb4f0VU8PP07DIKXg7YrlnJGuFctQC/n12qvBgZRih6evno6ph3rj37iOYG9EU0rzHt4mNFpen6yyqHnCimtt46N8Yo99QWoM/R1ed8qiA2yUWS3ueSR2bz+GUgqrjFN50ZjB1+bvXFRxQ9hHXgD5oH8RxFog/uzGOo1w2AnoBXGP/jdoy69X31ZUPi4DIbuLImyvpmX/Cr5pgpkkhv9uF+dC1yNazMEeeWMiameFwOWfcK8JmzdsJ8LqV8KmGixnGJXb8TbNXDMJHqyvkwZlMXAhM4FehZ76PIEdAN0F4rmgjVkNLdvqDh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6666004)(508600001)(38100700002)(8936002)(66556008)(8676002)(86362001)(186003)(4326008)(6486002)(2906002)(5660300002)(110136005)(66476007)(53546011)(31686004)(66574015)(66946007)(2616005)(83380400001)(36756003)(316002)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am1obCtqeEVWQmJaV2NHM21hUU1VcHdnV0VNZElBbUgyNnFBNWNOaUhkZERH?=
 =?utf-8?B?V0xrZEtyQmVPbndFbHZoeHVMbXFmWUNsaG1CaHhjL1h5enVwQUVnTmhhMFl2?=
 =?utf-8?B?Z1BOd05lZGgyNTZxR3prT2NRczV0TmQ2bHYvRkd3NS9RUGlnaUl2Mlo1UDg1?=
 =?utf-8?B?QXh3dlE5TDNob2ZDV3lmMUJwZWNLRFNrSk9uZkFKL2J3NUhiVDlmSVpTUFhS?=
 =?utf-8?B?bmMrREF2QXcxMDRpLzNBbXRnQ0h2Wnl4aFgyOFpiYjFqUDNKTXZHOHcvTFU4?=
 =?utf-8?B?dEFpTVp4Z3lMWEdIZFlodDZpYWVXMXNTeEk3OU5XNXN2YUNpM3VPaXBtUlo2?=
 =?utf-8?B?NDZKbUZRKzNFTTArNCs0bTlHOWYxQ0NpTzlML0gzWmJ2WEhXd05QSWV6VHpt?=
 =?utf-8?B?a1VrU3ZZZ0pubW11ZTZYaXZRb1BHc0ZUSUgzUFNQM1d2TjUxeWwxeWtVSlBZ?=
 =?utf-8?B?d2ROZ2dPOGZwbzd5NjVraEpPcnpNeVJIM2xYUy9DNEY4cVEyckFlN1lBdFBs?=
 =?utf-8?B?VkRvT3JncC8xS1ZXWVUwREFMTmkxWjF4NnZoS2R1RDdBeHozUm9pdk1qc1hG?=
 =?utf-8?B?aEVkdjgrK2I5c3hvcUZtNENERXZWakU0Z1VVSFZqNHNwSk9pdlFIK3hNM2l3?=
 =?utf-8?B?dUJYdFZIY2pOZTJoU0dZUkcvbGZQOHNZUGt4T3k1ZVhuZ2ZmcitMY3RMOFNp?=
 =?utf-8?B?REEyaTVwZ1hPNndtR3ZOcnFZUnQrMktaVmlZa3ZkZ2Q5bjZyL1F0VWVqamVj?=
 =?utf-8?B?aGlkUWpHOCtTTW1TT3AwZFcwcFU0STh3QStGZURZMzlBSW1RQTNuT0daWTll?=
 =?utf-8?B?NTdOOTRKQ2gzUVNjcEZmWmx3NlZmTFVlaUkwbGw2UlRXZ2N4VTUrRzZVcnpB?=
 =?utf-8?B?U2M1Y20zK2ZCaHpNYUJramFwOFluZDhMZGwwaGJnNnhtd0dKTVlIUWdrQkd6?=
 =?utf-8?B?ekV0TW80Um5IRGd4bnJxbEM0dERYajhDOVRKcjBXTmVMb2RHMDZVcVBIY2R3?=
 =?utf-8?B?MWcvMXQ2SDd6akVYUkxnTmF5bzBWS2Z6QXFlSFVmZkd3YnltcEhCL2Fzcyt1?=
 =?utf-8?B?T3hGNFdJeDlDTTlUNTNBeWdSVTNxdm5NYmttaHdHQzlKVkFoTCtMYlI3b1Ar?=
 =?utf-8?B?T0d2a1FpcmVtQlNlRXY4SUVCUU9uczNFZ1pGREIyQ01tNHRpSndKRkN0OXcw?=
 =?utf-8?B?MmhYMXpqOC9qb25PSzk4bUt6dzd2OTQ4VldIOVE3c3ZzMU5xUFBLSThLTjlO?=
 =?utf-8?B?VVA4azZTck1wTVJxclRPZ2ZONko1QjVlM1dkaG1sS2VsQnR1NWc1Yk9JQ29H?=
 =?utf-8?B?bVBtTDFtWWZrRnJVV3JwOHNYQmpqU09SdkdqVGdlWVFkdDdQeEZKU2ZxeXoz?=
 =?utf-8?B?YmFWcjNnYXVpMnl0N1V3VDlUSWVSaStiZEFzNVhIcjUzemR5MldIL240RS9q?=
 =?utf-8?B?YkNoMUViVCtTV1RUaW83bi9yRzRzTVFjNDFWUFlGWHBIRVVMc3RlbGxwRlpS?=
 =?utf-8?B?MW56VmdzdWhpb3VWcCtYbEhvZEx5WmhOTVJXaGt0RjNTMVBQZllyUnJmSnUx?=
 =?utf-8?B?TVltWlE2U0RsTGF3NzVwZmJycDAxaTZGY2pRR3BvUmhSTWZNc2U5dmtRbExq?=
 =?utf-8?B?ZHNwb2FZSWV5WmVVS01aYVhWaitwelVUaExTdGswbEdHRTBJbUl2S3ZWTDNX?=
 =?utf-8?B?a2FsaVRCYTJhZ29HaWdpUHhJaG5XVjlIemVMYWRFbnFVZCtJVXNVN3BKcFVO?=
 =?utf-8?B?TVdTSFBCaHVuTFM2Wm1Od2N1R3J2c1ozVE15aHhOSTRITFh3UEtwTHhYSG9O?=
 =?utf-8?B?d1hqVXl0ZVhwTHlqQWMxNzJyUzFnZkZkS2p6UFdUc3VqQ0R2MkN0QkgvZ2Rr?=
 =?utf-8?B?TDg1Mzg2KzRrRWRTdk5rWXBiN1doaGQxUnQrM2x4M0VSQnlhRnd6RmMrWFRk?=
 =?utf-8?B?ZUI0SnJ6V2o2SWJuVHJ6ODVFUVRYNzRzZkVlV2Nsdk8xMGovblk5bk5lM2dW?=
 =?utf-8?B?d2djaDlvQWdRKzNPTklBWFlPWlN5SHJRM3loMHhJMlR6S2h3NW11ZHZLMzJN?=
 =?utf-8?B?VGlIM1h1OTJlNTNUdGlpNWtuaWc0N21qN095TTZxVHBKUEpGWFNaTnhpd0hH?=
 =?utf-8?B?V1BxS21mM1VYeHIwVHRxVW9DRE5YK2FsdnJ2T1hBNUJ4Vkd3K3ZaV1lKQnMr?=
 =?utf-8?Q?WOMlQFxuChQDgMw2eApPQI0=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ccfe71-5068-4a6a-d6f2-08d9b40503af
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 13:26:28.2456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mk8Yb6A+IDRPjBrhlS+K1Dj6RhZSguAQpwTNP5ZpBiQvxM0nSoy6jx6QGHeu0JbV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB0189
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 1/2] dma-fence: Avoid establishing a
 locking order between fence classes
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
Cc: linaro-mm-sig@lists.linaro.org, matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMzAuMTEuMjEgdW0gMTM6NTYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDEx
LzMwLzIxIDEzOjQyLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+PiBBbSAzMC4xMS4yMSB1bSAx
MzozMSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4gW1NOSVBdCj4+Pj4gT3RoZXIgdGhh
biB0aGF0LCBJIGRpZG4ndCBpbnZlc3RpZ2F0ZSB0aGUgbmVzdGluZyBmYWlscyBlbm91Z2ggdG8g
Cj4+Pj4gc2F5IEkgY2FuIGFjY3VyYXRlbHkgcmV2aWV3IHRoaXMuIDopCj4+Pgo+Pj4gQmFzaWNh
bGx5IHRoZSBwcm9ibGVtIGlzIHRoYXQgd2l0aGluIGVuYWJsZV9zaWduYWxpbmcoKSB3aGljaCBp
cyAKPj4+IGNhbGxlZCB3aXRoIHRoZSBkbWFfZmVuY2UgbG9jayBoZWxkLCB3ZSB0YWtlIHRoZSBk
bWFfZmVuY2UgbG9jayBvZiAKPj4+IGFub3RoZXIgZmVuY2UuIElmIHRoYXQgb3RoZXIgZmVuY2Ug
aXMgYSBkbWFfZmVuY2VfYXJyYXksIG9yIGEgCj4+PiBkbWFfZmVuY2VfY2hhaW4gd2hpY2ggaW4g
dHVybiB0cmllcyB0byBsb2NrIGEgZG1hX2ZlbmNlX2FycmF5IHdlIGhpdCAKPj4+IGEgc3BsYXQu
Cj4+Cj4+IFllYWgsIEkgYWxyZWFkeSB0aG91Z2h0IHRoYXQgeW91IGNvbnN0cnVjdGVkIHNvbWV0
aGluZyBsaWtlIHRoYXQuCj4+Cj4+IFlvdSBnZXQgdGhlIHNwbGF0IGJlY2F1c2Ugd2hhdCB5b3Ug
ZG8gaGVyZSBpcyBpbGxlZ2FsLCB5b3UgY2FuJ3QgbWl4IAo+PiBkbWFfZmVuY2VfYXJyYXkgYW5k
IGRtYV9mZW5jZV9jaGFpbiBsaWtlIHRoaXMgb3IgeW91IGNhbiBlbmQgdXAgaW4gYSAKPj4gc3Rh
Y2sgY29ycnVwdGlvbi4KPgo+IEhtbS4gT2ssIHNvIHdoYXQgaXMgdGhlIHN0YWNrIGNvcnJ1cHRp
b24sIGlzIGl0IHRoYXQgdGhlIAo+IGVuYWJsZV9zaWduYWxpbmcoKSB3aWxsIGVuZCB1cCB3aXRo
IGVuZGxlc3MgcmVjdXJzaW9uPyBJZiBzbywgd291bGRuJ3QgCj4gaXQgYmUgbW9yZSB1c2FibGUg
d2UgYnJlYWsgdGhhdCByZWN1cnNpb24gY2hhaW4gYW5kIGFsbG93IGEgbW9yZSAKPiBnZW5lcmFs
IHVzZT8KClRoZSBwcm9ibGVtIGlzIHRoYXQgdGhpcyBpcyBub3QgZWFzaWx5IHBvc3NpYmxlIGZv
ciBkbWFfZmVuY2VfYXJyYXkgCmNvbnRhaW5lcnMuIEp1c3QgaW1hZ2luZSB0aGF0IHlvdSBkcm9w
IHRoZSBsYXN0IHJlZmVyZW5jZSB0byB0aGUgCmNvbnRhaW5pbmcgZmVuY2VzIGR1cmluZyBkbWFf
ZmVuY2VfYXJyYXkgZGVzdHJ1Y3Rpb24gaWYgYW55IG9mIHRoZSAKY29udGFpbmVkIGZlbmNlcyBp
cyBhbm90aGVyIGNvbnRhaW5lciB5b3UgY2FuIGVhc2lseSBydW4gaW50byByZWN1cnNpb24gCmFu
ZCB3aXRoIHRoYXQgc3RhY2sgY29ycnVwdGlvbi4KClRoYXQncyBvbmUgb2YgdGhlIG1ham9yIHJl
YXNvbnMgSSBjYW1lIHVwIHdpdGggdGhlIGRtYV9mZW5jZV9jaGFpbiAKY29udGFpbmVyLiBUaGlz
IG9uZSB5b3UgY2FuIGNoYWluIGFueSBudW1iZXIgb2YgZWxlbWVudHMgdG9nZXRoZXIgCndpdGhv
dXQgcnVubmluZyBpbnRvIGFueSByZWN1cnNpb24uCgo+IEFsc28gd2hhdCBhcmUgdGhlIG1peGlu
ZyBydWxlcyBiZXR3ZWVuIHRoZXNlPyBOZXZlciB1c2UgYSAKPiBkbWEtZmVuY2UtY2hhaW4gYXMg
b25lIG9mIHRoZSBhcnJheSBmZW5jZXMgYW5kIG5ldmVyIHVzZSBhIAo+IGRtYS1mZW5jZS1hcnJh
eSBhcyBhIGRtYS1mZW5jZS1jaGFpbiBmZW5jZT8KCllvdSBjYW4ndCBhZGQgYW55IG90aGVyIGNv
bnRhaW5lciB0byBhIGRtYV9mZW5jZV9hcnJheSwgbmVpdGhlciBvdGhlciAKZG1hX2ZlbmNlX2Fy
cmF5IGluc3RhbmNlcyBub3IgZG1hX2ZlbmNlX2NoYWluIGluc3RhbmNlcy4KCklJUkMgYXQgbGVh
c3QgdGVjaG5pY2FsbHkgYSBkbWFfZmVuY2VfY2hhaW4gY2FuIGNvbnRhaW4gYSAKZG1hX2ZlbmNl
X2FycmF5IGlmIHlvdSBhYnNvbHV0ZWx5IG5lZWQgdGhhdCwgYnV0IERhbmllbCwgSmFzb24gYW5k
IEkgCmFscmVhZHkgaGFkIHRoZSBzYW1lIGRpc2N1c3Npb24gYSB3aGlsZSBiYWNrIGFuZCBjYW1l
IHRvIHRoZSBjb25jbHVzaW9uIAp0byBhdm9pZCB0aGF0IGFzIHdlbGwgaWYgcG9zc2libGUuCgpS
ZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gL1Rob21hcwo+Cj4KPgo+Cj4+Cj4+IFJlZ2FyZHMsCj4+
IENocmlzdGlhbi4KPj4KPj4+Cj4+PiBCdXQgSSdsbCB1cGRhdGUgdGhlIGNvbW1pdCBtZXNzYWdl
IHdpdGggYSB0eXBpY2FsIHNwbGF0Lgo+Pj4KPj4+IC9UaG9tYXMKPj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
