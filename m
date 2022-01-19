Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 874F84B642F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B990E3EE1A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:22 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2044.outbound.protection.outlook.com [40.107.237.44])
	by lists.linaro.org (Postfix) with ESMTPS id 66D123ED6C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 15:58:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hZKxie5buYGzC2rFvEwMlp5rJg6oIFIBefKgtDY7PbPnoPiDK9NAr6pbu5Wo1ryhgDgCF8N4E+OOFtk189nvl7gtL8ZLsTMGAkQzbJHjqFOgt4OThAdnMOneaK7vz+IdbGtKaJe1LN08usLFZZEEjQ0coh98sydRnPbg4SBxIS1TVllhLBSknmcr8S9Wm3ch3Pho5zTTWYdI8WAv2oX2rHrHBIsu8+zEs9y2HcCYtqSsRJtKCfc+49pMyHgg5HvxQy/QcJ1SrU833+8QbW49c5S2/NeYELU+I4N9ko/UC/Esv8Qtux+ZJlNfRMzpNnJRUvR/vEmaa30U2avETQfg5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+4/YeMl2TEMpTeoo5r3iFsKRGITSfa4Dl/Y3WVvxr5o=;
 b=gGpuMZNmRuC4qBKBdX8gAijJQroU2gZGy7RVRItifwygTewaWNkTpQ9aLI331QFAhUi77LyVfH42sD6X+XAySNtQgIFd6UTfPNqES9/x6xXO/K1jSCvwgKSZnlsBhrV/gIQAoBEBmjsJWYoC4YYym2bsoz3H5tI6KUSCOX0gwkkt0XTezAg7ZW+swwvyFhn96Zc4jiuYCfSio4gKqLMYnbivnJC1NVTJOXKGRAM5F5OikDuDmlA0AfD76FHGYKfQvqlWnv8zDO9/CFZF/DAzmiZfEmIIPFfIQd9O6qfKsuL9zzaX4rhfjHAeiW0RyskuSP7TEuE1b09UEJqJcmXTsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+4/YeMl2TEMpTeoo5r3iFsKRGITSfa4Dl/Y3WVvxr5o=;
 b=lFSRcNDzAU/WM1JIpxTGPJmH4n+kUYYFD45mWj2jVAfAe6s5UYdkodwksbBnauuQIWrIY9PJEDl6bDUmKaSE9dXutcmAkpKZfHx7ip1vV8pxOH2VPlEW14lCarLx9FZ+67r3XhOI8x5AClzAs+ZNpHIBn3DYRdu19ClGZQCRgmU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BL1PR12MB5224.namprd12.prod.outlook.com (2603:10b6:208:319::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Wed, 19 Jan
 2022 15:58:42 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::b03b:7df9:d733:13b2]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::b03b:7df9:d733:13b2%5]) with mapi id 15.20.4888.014; Wed, 19 Jan 2022
 15:58:42 +0000
To: Hridya Valsaraju <hridya@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>,
 Suren Baghdasaryan <surenb@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
 Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Dave Airlie <airlied@redhat.com>,
 Jason Ekstrand <jason@jlekstrand.net>, Matthew Auld
 <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>,
 Li Li <dualli@google.com>, Marco Ballesio <balejs@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Hang Lu <hangl@codeaurora.org>,
 Wedson Almeida Filho <wedsonaf@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Chris Down
 <chris@chrisdown.name>, Vipin Sharma <vipinsh@google.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Vlastimil Babka <vbabka@suse.cz>,
 Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 cgroups@vger.kernel.org, Kenny.Ho@amd.com, daniels@collabora.com,
 kaleshsingh@google.com, tjmercier@google.com
References: <20220115010622.3185921-1-hridya@google.com>
 <20220115010622.3185921-5-hridya@google.com>
 <f8c8b196-7d12-6242-97ac-38149f3a3ba3@amd.com>
 <CA+wgaPMjCfjQS4LA8hmVwAaGfXZhoJvvTUnOGt3duOhFb3orTw@mail.gmail.com>
 <Yeg0GGi0tdnnCLHg@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <5cc27a05-8131-ce9b-dea1-5c75e994216d@amd.com>
Date: Wed, 19 Jan 2022 16:58:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <Yeg0GGi0tdnnCLHg@phenom.ffwll.local>
Content-Language: en-US
X-ClientProxiedBy: AS8P250CA0002.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:330::7) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b62f1d92-664c-4e53-30ca-08d9db6490a6
X-MS-TrafficTypeDiagnostic: BL1PR12MB5224:EE_
X-Microsoft-Antispam-PRVS: 
	<BL1PR12MB5224CEA486659CD6BF31D09B83599@BL1PR12MB5224.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	shQLBLBhuWmduF3Qt0muQxSZh5ZyIE8ODFf4Y30CHyxtJ8Xz4WTfn7Xamgy22zfWq8g6wCp694chfJU0ycungJuf+66gGajY7UWusvIavdNUQL7sdCauel1t8/eoxmrMFAROSM2uGcN01WexIdZAkWfEzY5h3i8xrZqUlA+/wlheQn6EY0nzH1XCpB7qC+PZc9uU1LaToFxRFy5RVcVWClyh5cZfRAa00PI56ykgSdYvTQdsabDmbsbjbJNriwp8bRZ+hN1tGz2x6Ca2oHOzgiGX8w7pQ/1FNHcmjMM86EQ4VRnOAWRA34Ib8Opwg9zDv3srGySBomxprsVq73MPu01aXFWI3OdxcWlKpdxk12Y8bOnRcZ6lqFPbMI/lS+6H0yQPtj7xUCy9bf+nqFKT0PGq/IugMnan/AMHPsobZRzYDjsq6YreDsc2o9V5BOR2iMMkcrJmn2hPL5YgUaSF/OwzubVJkDElJxH526K0RWdrJFilFdWaDd/Keb07dH3udC68MoUIheEbReG+eamjOzfiwdmbDCuIgdrVeBsQPxUxggCv4bNzo1U/3T8Tll7DYkSV7AfoCMHLXtBC/GrX8vgeUQQBF8Y7coZVirs5JKqH1p2xoseUOl0e5pGGOwDfSkY76JDirNddQFlzMa8Xt7By70tt66tM+rgB53gMPX52IxGFlLhkAKGSh/DZbMAwBBvQNPDH8BUvOF+q2tziIPARIjF2crm84lMYHHNYrv9nOo5/a47/6FVd89ZkWah5YyBvHF7xR5gHMSyPpsMVMTSz4YcLklNakU/ZGUkosoWT0SrsaBYZMN2Zi4FtO7DIsLLq5l1pjUavxVIFBJUCyA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(7406005)(6666004)(508600001)(36756003)(6506007)(53546011)(7366002)(6512007)(8936002)(31686004)(45080400002)(31696002)(966005)(2616005)(7416002)(921005)(1191002)(8676002)(316002)(6486002)(86362001)(186003)(66574015)(5660300002)(66946007)(2906002)(110136005)(66476007)(66556008)(38100700002)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R3R3UTI4RGpJTjlEWTYrNzNMdDNJVkdWQnFEc2NITWFVQkN1bDlocmhzT0hh?=
 =?utf-8?B?WjB4akJ2cjNPVml5QnNHRUs2QlNMTldndjlFR2ZwOHpwMCtxdzlOc1JjWjdP?=
 =?utf-8?B?dU9wYUlTVEVtUnk3VW4yOWx4ZXpUSGVBT2o2ZFEzb3pCZTJWdGpNdFFDdmRi?=
 =?utf-8?B?WldHOGd3K2xZeXdVSjEzVVR2ZUxwVGdJSHVKYVc5SnlkaU82NDNzODlQYk5C?=
 =?utf-8?B?dDNMZGJTS2NTWVBnWW9CeVNDTGU2anVjU2lOT2E5c3BzUktBbDVGVXJ6aUlD?=
 =?utf-8?B?eTNWRlZJNU5FUWlET3FZUjRaRTRxdWJ4cE0wRFlJNFFGMXJGQjlVWHkxckhr?=
 =?utf-8?B?cnBvKy9TQ21lbUxCdHpQMm9SOUcxWVRwUzl5TmphUEEwRkxJR2JGQzJmdFNo?=
 =?utf-8?B?UzkzR0dmbnlaVnkrZlY3QXVOUjlDcVl5cXMvbVlHV1FUdjNML0o2ODhBNHFi?=
 =?utf-8?B?QnE0d0V1dXBidkFlZjlvV1ZWa3FQVXllSVFOY2k0Q3IwdUI5ejRwWWh5Rzh6?=
 =?utf-8?B?OEhKRVhuZGYvd2JVVitLYXhWUXF6d2JBaWcyTWpnQ3lQclNENk53Zk5CNnpJ?=
 =?utf-8?B?elRMa0J0YWdPU0F3SklYK21yS0NDN1N2K2V6UGhMaitHcjAwVUo2RHhvK3lh?=
 =?utf-8?B?aURPZG5Ta2JCc2FSMGJQeWpBSGI2L0w4ZGdPODdTTlNmcFJhM0VUemFRQlp4?=
 =?utf-8?B?MHRlQmkwMVFBZVpqYUdsZjBoblBNQ0N1VlU0RktzRW1OWGVFZ1dndTNDUm5v?=
 =?utf-8?B?SVpHUmoza1UwR3lwTjNsTlloVkNVVmxCU1RjYTF5WlVlamFlYUNDWUpScjVO?=
 =?utf-8?B?QSt6MDBBNVFpVDlIN0VBWnMyRW9wU2pOd3RUbUk5blhIemhBcmtrVGtpcU11?=
 =?utf-8?B?V3JIbWVoWlYrenZGcWJ0SVZ2b0pFeWRUUUdWbm40aEhlV3hyNi9jNFlJSTVi?=
 =?utf-8?B?Q1ZyVStUR0l1QmpiYXZFS1drZ3RRamNwSjltTlBNUTR0QXpZM0FYcmt4RGQv?=
 =?utf-8?B?b2ZiOGVIUVkwZ1I0bDVYbmt0ZWtjaCtoQzVQbW5LNXhTSmZ1YkxLczY5Zm5D?=
 =?utf-8?B?cVd1Z3RsaHZhR3dXQ3VJVXRtdG4xcmgyb1dJYVN6Y1FrNXdlYTJRY3VMTTBz?=
 =?utf-8?B?ZW1nUHZGSmxablRzOUlRWjRyeFQ5Y1IyK0oza3owOVBNSzB2bFMwRS9BaGtB?=
 =?utf-8?B?NVhFSXBnVG1nZzJFMGJCTWx3NEJlR1h5anFBbDJubk5sc1VKTzUvQkxPWnlK?=
 =?utf-8?B?Y0Q3VGI1cWhyVnNXdEFtQUJiZnJ1WFNwM3RCY3JVS3RUYmxSRndITTJvNVJv?=
 =?utf-8?B?TDRKM2NFSGYzaWE4a0cyVnRJL0JtN0svaVoyNXEzVnp3UVZzeW4rc0d0d3FO?=
 =?utf-8?B?aUsxajFRMzZua0VnVGRFWHROQWNhL1c2TmVnZVhPMjJnVjZ0S01JUE55RGkr?=
 =?utf-8?B?amxEazFjSkJnWndiL2dRWTlHOUpYaDZlSFpKZE00bzBDRmMraGg3a04xQ044?=
 =?utf-8?B?NVkxTWRtaUNnVEZ5bjNKblF0TS9hR09XeGdGMnRtazJKaEJtK0lqRDc4bkg2?=
 =?utf-8?B?WGtJcDZPMWNCNVRvalU5Wm5uSytxZlFvY0RjTEU4OXNxbU03WlNMNEExR2FP?=
 =?utf-8?B?eHhmaDBFSTd4WldQM0VtOHE0cWpSbFVxVlNzeitQRVlzbjAweEkyWXMvTEdP?=
 =?utf-8?B?aHZIdjhlU3MyVGt6SnhsUmlndWQvTVhQY3pkRTlYem0vekF5bkFhdUYrcDZH?=
 =?utf-8?B?WVVXMDRhZEp2ZFEyWHZsVWsyZnBIak9idW1pampsMFh6TExSZHRhRWt3K0x5?=
 =?utf-8?B?SzRWaE9rbkd3eTYveCtKWDJielU3WEpzanA1cUVVT2lSWStSbU9RelZDc1o1?=
 =?utf-8?B?QnVHQ25XWllUMjVmNXR0TkNOK1NFdU9TUHVOTjZFdW9oQ0lGRXUrZ1FyMHRl?=
 =?utf-8?B?aE5OWThobUVISmVPN29EN2VhSVJHcGQ5ZmIxakNHZkFWZWdqSlVEektyWGhk?=
 =?utf-8?B?RWoyOEIrUjBQaTJmUkdrNnc5WkNRdWpZeEtKZi83Zk5QN0JWSWdBQ3lsdWlB?=
 =?utf-8?B?Z2hOT1Y1SjIzRWN6VHZ1dzhVRlhHL0NCZXRkTVJuSGtJd2V3TkdVM24raW5S?=
 =?utf-8?B?bzRzZlIwVmQrRnJjNVgwMnZoSVMxRTdhTlowbVgxb2lFOG56Mkl2MnpSZ0l3?=
 =?utf-8?Q?ZZHjFSh5giqzajgX7F93Jks=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b62f1d92-664c-4e53-30ca-08d9db6490a6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2022 15:58:42.4346
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v+g1CnHcA7nE6SJcY09D4acmY1WsQB+p4AlprQRKIGPz551IBEhNvZNs9vVPoe1h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5224
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: QPZJVDQQBHTBBBR7XRK2CQXCJU2MKXLR
X-Message-ID-Hash: QPZJVDQQBHTBBBR7XRK2CQXCJU2MKXLR
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:07 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 4/6] dma-buf: Add DMA-BUF exporter op to charge a DMA-BUF to a cgroup.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QPZJVDQQBHTBBBR7XRK2CQXCJU2MKXLR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTkuMDEuMjIgdW0gMTY6NTQgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUdWUsIEph
biAxOCwgMjAyMiBhdCAxMDo1NDoxNkFNIC0wODAwLCBIcmlkeWEgVmFsc2FyYWp1IHdyb3RlOg0K
Pj4gT24gU3VuLCBKYW4gMTYsIDIwMjIgYXQgMTE6NDYgUE0gQ2hyaXN0aWFuIEvDtm5pZw0KPj4g
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+Pj4gQW0gMTUuMDEuMjIgdW0gMDI6
MDYgc2NocmllYiBIcmlkeWEgVmFsc2FyYWp1Og0KPj4+PiBUaGUgb3B0aW9uYWwgZXhwb3J0ZXIg
b3AgcHJvdmlkZXMgYSB3YXkgZm9yIHByb2Nlc3NlcyB0byB0cmFuc2Zlcg0KPj4+PiBjaGFyZ2Ug
b2YgYSBidWZmZXIgdG8gYSBkaWZmZXJlbnQgcHJvY2Vzcy4gVGhpcyBpcyBlc3NlbnRpYWwgZm9y
IHRoZQ0KPj4+PiBjYXNlcyB3aGVyZSBhIGNlbnRyYWwgYWxsb2NhdG9yIHByb2Nlc3MgZG9lcyBh
bGxvY2F0aW9ucyBmb3IgdmFyaW91cw0KPj4+PiBzdWJzeXN0ZW1zLCBoYW5kcyBvdmVyIHRoZSBm
ZCB0byB0aGUgY2xpZW50IHdobw0KPj4+PiByZXF1ZXN0ZWQgdGhlIG1lbW9yeSBhbmQgZHJvcHMg
YWxsIHJlZmVyZW5jZXMgdG8gdGhlIGFsbG9jYXRlZCBtZW1vcnkuDQo+Pj4+DQo+Pj4+IFNpZ25l
ZC1vZmYtYnk6IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KPj4+PiAtLS0N
Cj4+Pj4gICAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggfCAxOCArKysrKysrKysrKysrKysrKysN
Cj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykNCj4+Pj4NCj4+Pj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVm
LmgNCj4+Pj4gaW5kZXggN2FiNTAwNzZlN2E2Li5kNWU1MmY4MWNjNmYgMTAwNjQ0DQo+Pj4+IC0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oDQo+Pj4+IEBAIC0xMyw2ICsxMyw3IEBADQo+Pj4+ICAgICNpZm5kZWYgX19ETUFfQlVG
X0hfXw0KPj4+PiAgICAjZGVmaW5lIF9fRE1BX0JVRl9IX18NCj4+Pj4NCj4+Pj4gKyNpbmNsdWRl
IDxsaW51eC9jZ3JvdXBfZ3B1Lmg+DQo+Pj4+ICAgICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLW1h
cC5oPg0KPj4+PiAgICAjaW5jbHVkZSA8bGludXgvZmlsZS5oPg0KPj4+PiAgICAjaW5jbHVkZSA8
bGludXgvZXJyLmg+DQo+Pj4+IEBAIC0yODUsNiArMjg2LDIzIEBAIHN0cnVjdCBkbWFfYnVmX29w
cyB7DQo+Pj4+DQo+Pj4+ICAgICAgICBpbnQgKCp2bWFwKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
LCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7DQo+Pj4+ICAgICAgICB2b2lkICgqdnVubWFwKShz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7DQo+Pj4+ICsN
Cj4+Pj4gKyAgICAgLyoqDQo+Pj4+ICsgICAgICAqIEBjaGFyZ2VfdG9fY2dyb3VwOg0KPj4+PiAr
ICAgICAgKg0KPj4+PiArICAgICAgKiBUaGlzIGlzIGNhbGxlZCBieSBhbiBleHBvcnRlciB0byBj
aGFyZ2UgYSBidWZmZXIgdG8gdGhlIHNwZWNpZmllZA0KPj4+PiArICAgICAgKiBjZ3JvdXAuDQo+
Pj4gV2VsbCB0aGF0IHNlbnRlbmNlIG1ha2VzIGFic29sdXRlbHkgbm8gc2Vuc2UgYXQgYWxsLg0K
Pj4+DQo+Pj4gVGhlIGRtYV9idWZfb3BzIGFyZSBzdXBwb3NlZCB0byBiZSBjYWxsZWQgYnkgdGhl
IERNQS1idWYgc3Vic3lzdGVtIG9uDQo+Pj4gYmVoYWx2ZXMgb2YgdGhlIGltcG9ydGVyIGFuZCBu
ZXZlciBieSB0aGUgZXhwb3J0ZXIgaXRzZWxmLg0KPj4+DQo+Pj4gSSBob3BlIHRoYXQgdGhpcyBp
cyBqdXN0IGEgZG9jdW1lbnRhdGlvbiBtaXh1cC4NCj4+IFRoYW5rIHlvdSBmb3IgdGFraW5nIGEg
bG9vayBDaHJpc3RpYW4hDQo+Pg0KPj4gWWVzLCB0aGF0IHdhcyBwb29yIHdvcmRpbmcsIHNvcnJ5
IGFib3V0IHRoYXQuIEl0IHNob3VsZCBpbnN0ZWFkIHNheQ0KPj4gdGhhdCB0aGUgb3Agd291bGQg
YmUgY2FsbGVkIGJ5IHRoZSBwcm9jZXNzIHRoZSBidWZmZXIgaXMgY3VycmVudGx5DQo+PiBjaGFy
Z2VkIHRvIGluIG9yZGVyIHRvIHRyYW5zZmVyIHRoZSBidWZmZXIncyBjaGFyZ2UgdG8gYSBkaWZm
ZXJlbnQNCj4+IGNncm91cC4gVGhpcyBpcyBoZWxwZnVsIGluIHRoZSBjYXNlIHdoZXJlIGEgcHJv
Y2VzcyBhY3RzIGFzIGFuDQo+PiBhbGxvY2F0b3IgZm9yIG11bHRpcGxlIGNsaWVudCBwcm9jZXNz
ZXMgYW5kIHdlIHdvdWxkIGxpa2UgdGhlDQo+PiBhbGxvY2F0ZWQgYnVmZmVycyB0byBiZSBjaGFy
Z2VkIHRvIHRoZSBjbGllbnRzIHdobyByZXF1ZXN0ZWQgdGhlaXINCj4+IGFsbG9jYXRpb24oaW5z
dGVhZCBvZiB0aGUgYWxsb2NhdGluZyBwcm9jZXNzIGFzIGlzIHRoZSBkZWZhdWx0DQo+PiBiZWhh
dmlvcikuIEluIEFuZHJvaWQsIHRoZSBncmFwaGljcyBhbGxvY2F0b3IgSEFMIHByb2Nlc3NbMV0g
ZG9lcw0KPj4gbW9zdCBvZiB0aGUgZ3JhcGhpY3MgYWxsb2NhdGlvbnMgb24gYmVoYWxmIG9mIHZh
cmlvdXMgY2xpZW50cy4gQWZ0ZXINCj4+IGFsbG9jYXRpb24sIHRoZSBIQUwgcHJvY2VzcyBwYXNz
ZXMgdGhlIGZkIHRvIHRoZSBjbGllbnQgb3ZlciBiaW5kZXINCj4+IElQQyBhbmQgdGhlIGJpbmRl
ciBkcml2ZXIgaW52b2tlcyB0aGUgY2hhcmdlX3RvX2Nncm91cCgpIERNQS1CVUYgb3AgdG8NCj4+
IHVuY2hhcmdlIHRoZSBidWZmZXIgZnJvbSB0aGUgSEFMIHByb2Nlc3MgYW5kIGNoYXJnZSBpdCB0
byB0aGUgY2xpZW50DQo+PiBwcm9jZXNzIGluc3RlYWQuDQo+Pg0KPj4gWzFdOiBodHRwczovL25h
bTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZz
b3VyY2UuYW5kcm9pZC5jb20lMkZkZXZpY2VzJTJGZ3JhcGhpY3MlMkZhcmNoLWJxLWdyYWxsb2Mm
YW1wO2RhdGE9MDQlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDODM4ZDI1ZGE5
NzRkNGVhNDI1NzUwOGQ5ZGI2M2ViNzAlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgz
ZCU3QzAlN0MwJTdDNjM3NzgyMDQ0NDg4NjA0ODU3JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5
SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJ
Nk1uMCUzRCU3QzMwMDAmYW1wO3NkYXRhPVFuN0pleUY1UnE5dG5yR3cxS2dOdVFrcHU1UmJjcnZQ
aERPYTFPQko2VFUlM0QmYW1wO3Jlc2VydmVkPTANCj4gRm9yIHRoYXQgdXNlLWNhc2UsIGRvIHdl
IHJlYWxseSBuZWVkIHRvIGhhdmUgdGhlIHZmdW5jIGFic3RyYWN0aW9uIGFuZA0KPiBmb3JjZSBh
bGwgZXhwb3J0ZXJzIHRvIGRvIHNvbWV0aGluZyByZWFzb25hYmxlIHdpdGggaXQ/DQoNCkkgd2Fz
IGFib3V0IHRvIHdyaXRlIHVwIGEgc2ltaWxhciBhbnN3ZXIsIGJ1dCBtb3JlIGZyb20gdGhlIHRl
Y2huaWNhbCBzaWRlLg0KDQpXaHkgaW4gdGhlIHdvcmxkIHNob3VsZCB0aGF0IGJlIGRvbmUgb24g
dGhlIERNQS1idWYgb2JqZWN0IGFzIGEgDQpjb21tdW5pY2F0aW9uIGZ1bmN0aW9uIGJldHdlZW4g
aW1wb3J0ZXIgYW5kIGV4cG9ydGVyPw0KDQpUaGF0IGRlc2lnbiBtYWtlcyBhYnNvbHV0ZWx5IG5v
IHNlbnNlIGF0IGFsbCB0byBtZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBJIHRo
aW5rIGp1c3Qgc3RvcmluZyB0aGUgY2dycHVzIGdwdSBtZW1vcnkgYnVja2V0IHRoaXMgaXMgY2hh
cmdlZCBhZ2FpbnN0DQo+IGFuZCBkb2luZyB0aGlzIGluIGEgZ2VuZXJpYyB3YXkgd291bGQgYmUg
YSBsb3QgYmV0dGVyLg0KPg0KPiBUaGF0IHdheSB3ZSBjYW4gYWxzbyBlYXNpbHkgYWRkIG90aGVy
IG5lYXQgZmVhdHVyZXMgaW4gdGhlIGZ1dHVyZSwgbGlrZQ0KPiBlLmcuIHR0bSBjb3VsZCB0YWtl
IGNhcmUgb2YgY2hhcmdlLWFzc2lnbmVtZW50IGF1dG9tYXRpY2FsbHkgbWF5YmUsIG9yIHdlDQo+
IGNvdWxkIHByaW50IHRoZSBjdXJyZW50IGNncm91cHMgY2hhcmdlIHJlbGF0aW9uc2hpcCBpbiB0
aGUgc3lzZnMgaW5mbw0KPiBmaWxlLiBPciBhbnl0aGluZyBlbHNlIHJlYWxseS4NCj4NCj4gSSBk
byBmZWVsIHRoYXQgaW4gZ2VuZXJhbCBmb3IgZ3B1IG1lbW9yeSBjZ3JvdXBzIHRvIGJlIHVzZWZ1
bCwgd2Ugc2hvdWxkDQo+IHJlYWxseSBoYXZlIG1lbW9yeSBwb29scyBhcyBhIGZhaXJseSBzdHJv
bmcgY29uY2VwdC4gT3RoZXJ3aXNlIGV2ZXJ5DQo+IGRyaXZlci9hbGxvY2F0b3IvdGhpbmcgaXMg
Z29pbmcgdG8gY29tZSB1cCB3aXRoIHRoZWlyIG93biwgYW5kIHZlcnkgbGlrZWx5DQo+IGluY29t
cGF0aWJsZSBpbnRlcnByZXRhdGlvbi4gQW5kIHdlIGVuZCB1cCB3aXRoIGEgc3VwcG9zZWQgZ2Vu
ZXJpYyBjZ3JvdXBzDQo+IGludGVyZmFjZSB3aGljaCBjYW5ub3QgYWN0dWFsbHkgYmUgdXNlZCBp
biBhIGRyaXZlci92ZW5kb3IgYWdub3N0aWMgd2F5IGF0DQo+IGFsbC4NCj4gLURhbmllbA0KPg0K
Pj4gUmVnYXJkcywNCj4+IEhyaWR5YQ0KPj4NCj4+DQo+Pj4gUmVnYXJkcywNCj4+PiBDaHJpc3Rp
YW4uDQo+Pj4NCj4+Pj4gICAgVGhlIGNhbGxlciBtdXN0IGhvbGQgYSByZWZlcmVuY2UgdG8gQGdw
dWNnIG9idGFpbmVkIHZpYQ0KPj4+PiArICAgICAgKiBncHVjZ19nZXQoKS4gVGhlIERNQS1CVUYg
d2lsbCBiZSB1bmNoYXJnZWQgZnJvbSB0aGUgY2dyb3VwIGl0IGlzDQo+Pj4+ICsgICAgICAqIGN1
cnJlbnRseSBjaGFyZ2VkIHRvIGJlZm9yZSBiZWluZyBjaGFyZ2VkIHRvIEBncHVjZy4gVGhlIGNh
bGxlciBtdXN0DQo+Pj4+ICsgICAgICAqIGJlbG9uZyB0byB0aGUgY2dyb3VwIHRoZSBidWZmZXIg
aXMgY3VycmVudGx5IGNoYXJnZWQgdG8uDQo+Pj4+ICsgICAgICAqDQo+Pj4+ICsgICAgICAqIFRo
aXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuDQo+Pj4+ICsgICAgICAqDQo+Pj4+ICsgICAgICAqIFJl
dHVybnM6DQo+Pj4+ICsgICAgICAqDQo+Pj4+ICsgICAgICAqIDAgb24gc3VjY2VzcyBvciBuZWdh
dGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuDQo+Pj4+ICsgICAgICAqLw0KPj4+PiArICAgICBp
bnQgKCpjaGFyZ2VfdG9fY2dyb3VwKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZ3B1
Y2cgKmdwdWNnKTsNCj4+Pj4gICAgfTsNCj4+Pj4NCj4+Pj4gICAgLyoqDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
