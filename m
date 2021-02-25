Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4EF324E15
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 11:31:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 338C066787
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 10:31:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 28C4866790; Thu, 25 Feb 2021 10:31:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCD3766789;
	Thu, 25 Feb 2021 10:30:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 89F24610E8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 10:30:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7AB9866789; Thu, 25 Feb 2021 10:30:33 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2060.outbound.protection.outlook.com [40.107.237.60])
 by lists.linaro.org (Postfix) with ESMTPS id 5C34D610E8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 10:30:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHhPYkPuVyPvkoYj2rO2ex1bRqw6+BNhJVXncQnF75KqyLfi/iTwnVJCrFVl26xsQ3AEiPNmjpdwvc1l8UWIGDoxFhL9d1GAXiPnPxhl9wfZbnnsD4ZKGp2r8VOMQFL9oSM6lhCXqIBVM2uawrXQqwcnHPO8/n+tgtxdDSD65swDE17TYEFwmzLMDZqJXChQIL0twfUe7uwWTKVXO59ChAet7bQBbjtO6IN6Yfs7n/Zo6/G1zyqXYtCzTReLAMkSYYLYmauaMEfzX5SGnuACmLkre7PUjvOd5cjfNg59HwwMY3zpEywfTrHNws5IOdIRla1Il/VAQAziogkdPnWktA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H0VBUKJugv9h8+TZoo7xRCvZpoNKubgkcBissVheAcM=;
 b=DyTMRNA9pPCY40qcj2bmpwVDTZC5zKazGIi/Jf3Fbd90z05AwowEEEhEH4LujPCEXA51KjI4yUgmD2oH8VVD/KGSI4CxfOy0Tx26eH0N+KIDa3U1P/6CZPzDA2woaSRY2F+LOMWHzksRwdGW/pnATsEwfy3QhsTWliuaMLqFZsNnB2C0QxhydWLh6wviC0BTmcek2xuwA1EjaLogYHsHaMfY7LXCawir8uT2MnOmiczoKE9S94UiwTiVTcDCPFW7M8ohS2s7MF4iD3M0HBqy7qVPFM0TWZmj7N86h0eB88oHFhv+wVqN5hYapRTXD5vPH8BCVpRJz/gnp7KqCgnwhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4342.namprd12.prod.outlook.com (2603:10b6:208:264::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Thu, 25 Feb
 2021 10:30:28 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2%2]) with mapi id 15.20.3868.033; Thu, 25 Feb 2021
 10:30:28 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>, Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <20210224184657.GR2643399@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <b364d7e9-b323-e590-359d-32e067f3f5ee@amd.com>
Date: Thu, 25 Feb 2021 11:30:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20210224184657.GR2643399@ziepe.ca>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:fc8:43:f4c0:95af]
X-ClientProxiedBy: FRYP281CA0008.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::18)
 To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:fc8:43:f4c0:95af]
 (2a02:908:1252:fb60:fc8:43:f4c0:95af) by
 FRYP281CA0008.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.10 via Frontend Transport; Thu, 25 Feb 2021 10:30:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3eefa904-1d4c-457c-1fe0-08d8d9785ef7
X-MS-TrafficTypeDiagnostic: MN2PR12MB4342:
X-Microsoft-Antispam-PRVS: <MN2PR12MB43420A94D00612CBE4E97660839E9@MN2PR12MB4342.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UqlQ/6JpmemDKB33rCTxiPgHOoG96iPJKfxQ2hh3yjscs5Ef/fhNj3uRvstjT81a4dga78SP1o0nrWu//0qitXazMUU0j5LIF5BRjXkC7xz181vwjESUva7+8Cr/6JBwIud2KUpzlU2kYHBu+hQ+KkWcFCRi/HoRFLn2cG8sB9wjJPRw9V5JAEY0MxwppQAf0N5g6IQeU3wjPy3sqNi4hINHefAsserDpFmp09ShFKrDdLaSthA4JPtFO3xh3vxjF3ek7/Aqq2isAgApO8u4wfWJNrqeFu3oFtGXNhkCAf6qYcxqjddIXAdon//grs+tKrdZj+7e+OmiTOmhzaCLxIR0vlXoFBa7NlA7R0dfCbMbI8JlkEJ1LkQb55EPEYIaJX/Pyk+xgIwozrP8DBkQAtRj8eUAt7bmAHezmW5EA4K+KTGukehl6Q9yOusiVRScBdVks8qtRmug8q1NIInIA0Md9/2hNwbOwC7VzvtGm1gAjoIwOt4WASG+HxpWA2xMgILaRcsc7Gkl3vFqC62k9CBTC+nZvm0F867lvnKVD62IZYgF+OVSZZ0S/B0ldVL1GjMy1Q/7hWxKugn3w86eRrHlM2gvztevUG1NL4nR6lU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(376002)(39860400002)(396003)(346002)(478600001)(31696002)(6666004)(86362001)(7416002)(4326008)(2906002)(66946007)(16526019)(186003)(66476007)(66556008)(52116002)(31686004)(110136005)(316002)(2616005)(36756003)(8936002)(54906003)(4744005)(5660300002)(8676002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?RWZTem5McUZCYURaNWdST3cyMWk0c2pnb2pKbytKeUVkNjZZc0NBN2c1QXpv?=
 =?utf-8?B?cEJZbm83ejU2Ly9sbXRENFlRRW5LbGxRTzRaRkZJMldoSk5Qa0g1aHNoWFRW?=
 =?utf-8?B?cDBVa3djSFVweCs0RHhuMUVyNGVtbS8yMVdJTlcwc0M2S244YXZ2eWp2VzAz?=
 =?utf-8?B?NmkyREJ2S2w3NExpUGY3S1VBMGxMbU41RHljOFpRSnZxY0FtbFpTeG9VQmtV?=
 =?utf-8?B?RWdEdmhabllJMkhJaDhWdFJVZENoTkhZNFdmTGg3dUhySTRjTzFyNkFWVGth?=
 =?utf-8?B?TmNjUnFialEvR2FWcDgxbGZ6MnhzSXNaczg2N2NLd1h5Tmh5Y2xyMmhEMWVO?=
 =?utf-8?B?YTdUZzhaSTBnc1hiY3dZSW9tdENKc3l3MFBtbU92M20wRlRXUjJFeDRDZE0w?=
 =?utf-8?B?QU9WK2NPUUNUSkFyYnRldThzT0wvRytsMjZaM3p2TDVwaFZGSTNKZ2dHNmNv?=
 =?utf-8?B?elc0dmVnT0ZEa0dZNmJTKytwRHhTNlN2VXozTEQ0bmozdFl0Y1pzS3VJN3VB?=
 =?utf-8?B?cTVHVGRBZ1F0Rzhta0gxVHZMYUI3ZHAvQmpkdS9MMzRzUHJTSjhzSzV2clN3?=
 =?utf-8?B?cXNFU1AvanRjUTN6TVNrOE9wZWVOTG5MeEk2L0t1VmZ4WU9pNnp0Ylpycnp1?=
 =?utf-8?B?WlZ5ZEZ6MFlpa3l3NUtkU08yNmNLZHRkUHYvODExY2pZM3BSOU9nTGJud1NK?=
 =?utf-8?B?eVAxREY5OHlZZGRFdDljTHd4em1yaDNIa1A2NkgwV0FLWmNMa2FITjhoSGtV?=
 =?utf-8?B?QVdJNWhDWUMwM201SzN3ajVudm9Ebk5ycFQwSm8zdlFwVWZDeklseUJHZkI1?=
 =?utf-8?B?dnUyZmNoQjFlcit2RUZuWTdndzBoR3ZveVczOFFrRzBPZzh3blg3bm5lejlR?=
 =?utf-8?B?Q1NpdFlsWmpiMm1QUnNicXBEMVVIcmltSkwwc21kcmxPcytIWlpQUXl0Q21a?=
 =?utf-8?B?aGNOVXdxM0VyYWp5Ukk0MnYxa3FmclZtOXo1SjVZSFF6cHgxbDRNaFFYV2hz?=
 =?utf-8?B?Um5hYVEzeFd6ajZpcEJXRkxJRjIzKzJSUnIyTEdKN1MyNWw4SEV5M3B0bURP?=
 =?utf-8?B?Vzkyb2lHM0FaRlF3dHh5VzFQMXBZbE5JY0NTQmplaG03SXlhQTFqWG80T0E3?=
 =?utf-8?B?WFRCdlVuM2doUDRxOFJjTjRjcEF3RUwrR1lvYlUwK2Z4VUVOUnA5SGJNWE5q?=
 =?utf-8?B?SzQ4K0EzdFMySllMK2N6Nmh1QTAwMnZrTi9mQU0rZ2hVUmhqVnF1Zzc2engx?=
 =?utf-8?B?MG9WK1E3aUd6WEI0M042TzdjYmc3UjhaRWE5QmNiNGNiTDhRcThUZnhJdzhr?=
 =?utf-8?B?ajhMeUpzTFJKdzZMT255ZUp3WndmNk80QVpaVXhKZ2VTempWbGNwMExDUy9K?=
 =?utf-8?B?TXZRVXNYa2JmSm1XN2IyOTAzaElFWlRDdmtaR1NkZW8vL3d2d2ptZUhZOW92?=
 =?utf-8?B?azl3cWJlQnQ4NWl0WFRINW44Z1BrZjlMMlh3aHNGYlFpQlVod05vc0xjQkxR?=
 =?utf-8?B?Q3lqeENyNCtUN0ZneDR0cHlDQUdMQW1UNGJ6SUZ3L292VWdUVjVDOGxCVURJ?=
 =?utf-8?B?UkVNTyt0M2xPMjluREg4Mm1JZ2wzYkFkUUEybEF5UUlMc1BJa2ZjR3JhOTQw?=
 =?utf-8?B?TzVsMFJsR2dXV2dWU3BtOWZFWHcxTFBEVHRnaDlEaXdzVmlIdVAyVTJGV0o3?=
 =?utf-8?B?YVBOdWRJZmhpaVZ2d0V4QXBoZEk2WWhnb2ZXM1JmeFcva2o0VW55L2NMRmRR?=
 =?utf-8?B?UWJnRmFnOURmekhoVXZscUs4b2llaTlKRkRLckw4ZWNIaDJkQmQwb1Ewc1ll?=
 =?utf-8?B?SkJIZnAwc0dLOFdKcDYwV0U2NUdDem50T1hWN3FSWURIeXg2eGR6QWNMb21T?=
 =?utf-8?Q?oihztBvpSRohK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eefa904-1d4c-457c-1fe0-08d8d9785ef7
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2021 10:30:28.6821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lvKYim9Wi7+CK08hWbU8L0OJ38uq2GChsKbOJiDiNs8Y5/UPhdgbk8jSElZ9W8/g
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4342
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
 mmap
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

CgpBbSAyNC4wMi4yMSB1bSAxOTo0NiBzY2hyaWViIEphc29uIEd1bnRob3JwZToKPiBPbiBXZWQs
IEZlYiAyNCwgMjAyMSBhdCAwOTo0NTo1MUFNICswMTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+
Cj4+IEhtIEkgZmlndXJlZCBldmVyeW9uZSBqdXN0IHVzZXMgTUFQX1NIQVJFRCBmb3IgYnVmZmVy
IG9iamVjdHMgc2luY2UKPj4gQ09XIHJlYWxseSBtYWtlcyBhYnNvbHV0ZWx5IG5vIHNlbnNlLiBI
b3cgd291bGQgd2UgZW5mb3JjZSB0aGlzPwo+IEluIFJETUEgd2UgdGVzdAo+Cj4gZHJpdmVycy9p
bmZpbmliYW5kL2NvcmUvaWJfY29yZV91dmVyYnMuYzogICAgICAgaWYgKCEodm1hLT52bV9mbGFn
cyAmIFZNX1NIQVJFRCkpCj4KPiBEdXJpbmcgbW1hcCB0byByZWplY3QgdXNlIG9mIE1BUF9QUklW
QVRFIG9uIEJBUiBwYWdlcy4KClRoYXQncyBhIHJlYWxseSBnb29kIGlkZWEuIE1BUF9QUklWQVRF
IGFuZCBhbnkgZHJpdmVyIG1hcHBpbmdzIGRvZXNuJ3QgCnJlYWxseSB3b3JrIGF0IGFsbC4KCkNo
cmlzdGlhbi4KCj4KPiBKYXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
