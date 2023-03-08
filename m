Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 944FB6B0D25
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 16:43:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A93F3F0B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 15:43:09 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2057.outbound.protection.outlook.com [40.107.223.57])
	by lists.linaro.org (Postfix) with ESMTPS id 1BABB3EF47
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:42:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Xms1m8oR;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKjC8oX43M//bhoevDZtzY41sjLOiMLYVb1LcImD4UEw4BuqIMVOq8PbkBp2+0nGyD6NWtuS5deNeNSQ82rB8jBuoWwb2xriJW0e1G8XjZcoWeYng06OQhlBpq8WYyBDbQVtyiqnGZansL1f3kYldMbiH7IS2V7eoZ0wAEpBpDR9LntIhXuf1zAmddCsU+Jm4cFX4JIQNN9j0XP1kq2lVf8phrnO/5TRcr0y4n5oEDxBAKBu9fyATYdV6Lg7H7t7UsPPSlKAGTjIOvJ0dkzGqirDx3QH65NQvGlscqD6/kvg+5CyixbwyG5TpmGE4541UlV0Y+mdcwTGxlEVlddu9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCRNt3vCcZvQpdhgoNQZq2Xl9owEUwlhakuJ/93hQDY=;
 b=Kxdct5pnYWttFhLtHi/lDyyUZYCHhLnj03ykrIq+WTY7vqquxszoagdrz94skZC1uRpDY8w2e1Oxe10vO5+UhVod65QwwZvFydblJfpF75RiUpnNICHyQs/r9134V/Eu81JsOgYF4NItUmSwiKuVYogNFv0ahMYMd9LlGRsBROpvG04hMiAMkLgJguypBTuiZqdJjkwQJJOALcOWJrQtazFnkh9P/GI8mwuIGRH/40WatkQ8+XxK7Rx+jzQPoaT7W3BvSk3HCh/0BK93j+HNNhuntoWeHzoPwOjbSbcl+glpYavZcyyWEIE1re/UE2qJaNhUDv5ycnuQd8Btr47Svg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCRNt3vCcZvQpdhgoNQZq2Xl9owEUwlhakuJ/93hQDY=;
 b=Xms1m8oRzU0aMhP5vnI+1UGUkImV9J3pvGOlkekvzVDcT9ZDs8klBSIOwx0UKgQL0vL2dDkPzXHq26k47DYwwqf+t0zQ9IW5n07s+pwVr+cAXZ5l6Hxf9LuLXYwPRJyJN9fPEEjsASXp9T6mrAfAum1htn7FZuPacOiJlF/gJ2c=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH0PR12MB5043.namprd12.prod.outlook.com (2603:10b6:610:e2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Wed, 8 Mar
 2023 15:42:47 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 15:42:47 +0000
Message-ID: <7b39ef96-3ec5-c492-6e1b-bf065b7c90a2@amd.com>
Date: Wed, 8 Mar 2023 16:42:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Asahi Lina <lina@asahilina.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
 <bbd7c5ee-c2f0-3e19-757d-a9aff1a26d3d@linux.intel.com>
 <585fa052-4eff-940e-b307-2415c315686a@amd.com>
 <3320e497-09c0-6eb6-84c5-bab2e63f28ec@asahilina.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <3320e497-09c0-6eb6-84c5-bab2e63f28ec@asahilina.net>
X-ClientProxiedBy: FR2P281CA0074.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::16) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CH0PR12MB5043:EE_
X-MS-Office365-Filtering-Correlation-Id: 30c4b218-8d6d-41ad-a246-08db1febc454
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SY5M3FDVotZ3R+Yjx1vhrhBKEysG3m+AJy+dPL0qdwMHPaBN+jXGptpRVMeIWU3yIjg/N3tkyQqFT5DkkGRjubUiPrGUj6Z5yqo5DwHFzdsWR4hK2DywdltiGe1jV7IRIiu9Qqt+Ah68s3xmQMSt0wxhpCx3tXT1p7fHlbUb2pKrUgQycUuusv1sqVaPleHMrGKnD7TPOMLTSZDEaEi+Vm3sT5/LTfnFcUohuEEJ0jHEmpDiT2WvAFEu/UYvbLfaQdfEfIxZu8q1OfQt8eFSR893px5ZyAxkFuYr3pQwGdcbPqYq2abUHKR8gqw9vfvMRKvlHY0Sm1f5IyHEELr7HBi6sx9IBMi0cvNxijUWtnX7g5Q1FPpAW7GCV9c32ZzYFMJ6Eo1omYA8nK39HmdSzXHaG26wwUK9xdaJiopDeego62RfjHeykFUa8lCaZnv3R2kUO7U+g0OOKZDBzJVwCL5SJqDxfEC72QAxJkkFw+b+mtCw4aoBlFSXld6QQ8Fv1FphDLloS3u8hPUxrfbF88hVBXzdNtAZBKHgV5DKnYIwJ3oyrYOa9XMkqoDsqZ7YyMTESmxCi+FShDMfNj1quvd+t3J/KiVbJZVbYxG+SkQihWuxlu9Ura2TCptkSJfjpWlL/BoNyTFvDwW4uYQ5PJRjTa8IhSHG1xpNoW7fob0pTh4qxJDj9aPvSwJPY04Tqsz+Q9K0FQufz6BY9IYsU3BXsuKelVVmugG1xb5Srb8bIRsLju5MJKqexEJuu+u+
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(451199018)(2906002)(31686004)(66946007)(4326008)(5660300002)(7416002)(36756003)(8936002)(41300700001)(110136005)(31696002)(66556008)(66476007)(8676002)(86362001)(316002)(54906003)(478600001)(921005)(6486002)(6666004)(38100700002)(6512007)(6506007)(53546011)(186003)(2616005)(83380400001)(66574015)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VVZTVlB3UEl1K0hxU3ltUCtwU2NOQTRYcENYL1FKV2NuenFwdXVlVVhKeHUw?=
 =?utf-8?B?cG1IMElMWStSM1Q5NVcvOTAxSDhCa1FkVTluZDREajRNOWZHbTU5VlVSR2RE?=
 =?utf-8?B?YlF6RkJnWlQ0Q2VsNGkxNFlDT2lMNjE0Y2xYOHBPcE5iNUh3U1RZMVRYdW9n?=
 =?utf-8?B?RHc0Rjc0c3FQaVpYV2djQmlJUTR3bXNPVDV6eFFJQUpLSUJYaUVhd0Urb2NL?=
 =?utf-8?B?YUMzaHpJSE9qNG40LzRQc3JzYzUySjFZcGtEeXdETzZQTUZacndwUHVGR0N1?=
 =?utf-8?B?T2dPT1lJczNMdnNCRnhjVllRd3NDQW44YmRXRThadHh6eGswTnFPZFdOUkw4?=
 =?utf-8?B?c1RXK3FJYlRldmZnMDN1K1FUR0RhbVdha3llZkJuY1I4YnFPb29FQXF3Vk0x?=
 =?utf-8?B?bGZNOFNMZWE5VTZwT1VxMUJ1bmU4K0N2WVQrQ1o2bXZzS1ZQTkpJdDQ2TUl5?=
 =?utf-8?B?QWM2M01VSDBSR2ZsckRIOGdiZVBic2FSc1BuODNORWNkOU5ncklKcmJVZTho?=
 =?utf-8?B?aUpES2J1WkV0WjR6ZXh2WTVrRHlqcGVxMWkxSGVTWEtHMDB2c0QraGJ0S3hE?=
 =?utf-8?B?bHBtUENWeGpEUGYrb1N6amFFMUs0R2ZndEsrSm4wa0x0aXJtUEVHcXBHZFBP?=
 =?utf-8?B?aDIrSElSSVltdnNsZDQ0aFZYbGZPL3kyK0U3WmdZYmtJOTdZNGVicHRIYnRY?=
 =?utf-8?B?RW5BZnh3dWpLeFMvT0pkRWRodUxtZGRYVy8wR0FleGN1MEpDOHB6WEhjajFx?=
 =?utf-8?B?b1BQTVVuajE4TzBEUHErb3FreFRoWlJsajVlc2tkYWtSNW1rVm1MRlN1bnc0?=
 =?utf-8?B?RjUxNGEvSXhyQU83dVB4SllRTWx6L1FYTFZTeG9HeVdzWUZFbHRncHJDcDgr?=
 =?utf-8?B?L3paMEtZd1J5cFV1SCt1eFo5NlAxeXJLQW53NFlML1VjQnRkL0xmVm9ja0tk?=
 =?utf-8?B?NTR0ck9CSTNtSjAvVldKd0lvTGVEcDhGQy9oVGVXYm1aTmRiWk1ISEszZTZ4?=
 =?utf-8?B?cExZR0lOc05LT2hSclJLbXNUNVdnL3NvMXZVdk1WRkYzaUN5RFFkajhNVUNK?=
 =?utf-8?B?NXRseTlpbDA0QnZ6NkNuRm1kZXI1bW05R1UzSlplY3VmbE15N1huZHpJTHlz?=
 =?utf-8?B?cUZHbC9hdlF6aWdOOUpmb1MvTW95eVV0WUZwSHJkbUNBM1lyQW8vSmU0Nm1N?=
 =?utf-8?B?WXNkakRlVEFFU2JBY3hyWTc0dDJxQUJZcndwdVU4N0dzSmZVb0p4Q2VxQis2?=
 =?utf-8?B?OEhydXNaL0xCczlZKzZFM2Z1T3FIVXhQbkE2ZTNPTGYvQ20ycHh3ZG1FMXdR?=
 =?utf-8?B?QXdIYko3T3hOam5ucUN0NUpWNisrSVBnaUExRmhvS2QyQnF2ZHdYbWN0aHFu?=
 =?utf-8?B?UTUrUDcvbTVzcExtL09ydWx1TksxMTlpZWs5amlCTW94QVlZYjNZVmlITmRN?=
 =?utf-8?B?d29UdUgyZGM3SVc0VDM0MEdRMU95MlhaR3gxMktkZG4zREpOa2dXOVdBRFNO?=
 =?utf-8?B?RXY3TEhwN0NqTEhTUnJMeEpnYUp0VW5VcFVlTjY2N3FTcFVOODF2RjljZW93?=
 =?utf-8?B?ZlZKOU1iVDVBSmZvZStUSUVwMHBVbFhGTnFDbmc1UDVEMUdlbGJxaHIzRk5S?=
 =?utf-8?B?bzA4dlgveGdsQUNDa0d5RjI3ZXA0WG9OR2FkSDlBZi9XZFJjd3h2elQvTzdK?=
 =?utf-8?B?dzhjZm91VU1aNzlpaWlmZlFoWUY2UDlaRFNlWGtNbjBSblIrL1BsaVNEUnF1?=
 =?utf-8?B?bnEyTnc2S3UwVjZXRkhIUXBhV29hdzZqQi9tWWNVZHJWZlF4Mm16Zmg3aUNu?=
 =?utf-8?B?NGx1UXc4ekhWS2pNK2w2aXVURGhISk1jVzZGbnR5OWM3MkQ0Rkk5RWZiQUhl?=
 =?utf-8?B?YWdkbGlabjZybFJYb1hVK2g4K0o3YktaMnNMd0NLMGp0c3QwcUtYZmNsWXp2?=
 =?utf-8?B?UWREUHRzaVRneU9BMnFaZ3ZDL012SlNjNUhpM3h4M1pDM2dVYXcvN0lmVDlE?=
 =?utf-8?B?eDh2aXRlbmN1VU9uUkh5dktyY3Q4TnNlRy9iaDVyM0pxOHhpTWVIaUxrbjhk?=
 =?utf-8?B?RUVoK1BIYVo5a3E5OEJpMEU3dUNkV1RZdHhSYUg0RVZHNVVwZDRtRXNpQVBN?=
 =?utf-8?B?c3FydVpuc3ZXQnZSMURtSThKS1prWXZxc2ZNUUM5aDZKeStvSEdzVTloekZD?=
 =?utf-8?Q?/w6J4Qq3PC7rBXzEGEtOfTx/d4Y/ObY4N/JlrYGL0b0N?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30c4b218-8d6d-41ad-a246-08db1febc454
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 15:42:47.7994
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8kCTJe/VeNNy5KSaMLttBB1WZR3Xr8SJYpOfIsQLDrARPjfTNir4KwPkSsXlg/1f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5043
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1BABB3EF47
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.57:from];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: L7ZEXCCS25NULOWEAMI5J3EIGCAMGIKY
X-Message-ID-Hash: L7ZEXCCS25NULOWEAMI5J3EIGCAMGIKY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L7ZEXCCS25NULOWEAMI5J3EIGCAMGIKY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDMuMjMgdW0gMTY6MTggc2NocmllYiBBc2FoaSBMaW5hOg0KPiBPbiAwOC8wMy8yMDIz
IDE5LjAzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMDguMDMuMjMgdW0gMTA6NTcg
c2NocmllYiBNYWFydGVuIExhbmtob3JzdDoNCj4+PiBPbiAyMDIzLTAzLTA3IDE1OjI1LCBBc2Fo
aSBMaW5hIHdyb3RlOg0KPj4+PiBkcm1fc2NoZWRfZmluaSgpIGN1cnJlbnRseSBsZWF2ZXMgYW55
IHBlbmRpbmcgam9icyBkYW5nbGluZywgd2hpY2gNCj4+Pj4gY2F1c2VzIHNlZ2ZhdWx0cyBhbmQg
b3RoZXIgYmFkbmVzcyB3aGVuIGpvYiBjb21wbGV0aW9uIGZlbmNlcyBhcmUNCj4+Pj4gc2lnbmFs
ZWQgYWZ0ZXIgdGhlIHNjaGVkdWxlciBpcyB0b3JuIGRvd24uDQo+Pj4+DQo+Pj4+IEV4cGxpY2l0
bHkgZGV0YWNoIGFsbCBqb2JzIGZyb20gdGhlaXIgY29tcGxldGlvbiBjYWxsYmFja3MgYW5kIGZy
ZWUNCj4+Pj4gdGhlbS4gVGhpcyBtYWtlcyBpdCBwb3NzaWJsZSB0byB3cml0ZSBhIHNlbnNpYmxl
IHNhZmUgYWJzdHJhY3Rpb24gZm9yDQo+Pj4+IGRybV9zY2hlZCwgd2l0aG91dCBoYXZpbmcgdG8g
ZXh0ZXJuYWxseSBkdXBsaWNhdGUgdGhlIHRyYWNraW5nIG9mDQo+Pj4+IGluLWZsaWdodCBqb2Jz
Lg0KPj4+Pg0KPj4+PiBUaGlzIHNob3VsZG4ndCByZWdyZXNzIGFueSBleGlzdGluZyBkcml2ZXJz
LCBzaW5jZSBjYWxsaW5nDQo+Pj4+IGRybV9zY2hlZF9maW5pKCkgd2l0aCBhbnkgcGVuZGluZyBq
b2JzIGlzIGJyb2tlbiBhbmQgdGhpcyBjaGFuZ2Ugc2hvdWxkDQo+Pj4+IGJlIGEgbm8tb3AgaWYg
dGhlcmUgYXJlIG5vIHBlbmRpbmcgam9icy4NCj4+Pj4NCj4+Pj4gU2lnbmVkLW9mZi1ieTogQXNh
aGkgTGluYSA8bGluYUBhc2FoaWxpbmEubmV0Pg0KPj4+PiAtLS0NCj4+Pj4gIMKgIGRyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgMjcNCj4+Pj4gKysrKysrKysrKysrKysr
KysrKysrKysrKy0tDQo+Pj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9tYWluLmMNCj4+Pj4gaW5kZXggNWMwYWRkMmM3NTQ2Li4wYWFiMWUwYWViZGQgMTAwNjQ0
DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+Pj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+Pj4+IEBAIC0x
MTE5LDEwICsxMTE5LDMzIEBAIEVYUE9SVF9TWU1CT0woZHJtX3NjaGVkX2luaXQpOw0KPj4+PiAg
wqAgdm9pZCBkcm1fc2NoZWRfZmluaShzdHJ1Y3QgZHJtX2dwdV9zY2hlZHVsZXIgKnNjaGVkKQ0K
Pj4+PiAgwqAgew0KPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqc19l
bnRpdHk7DQo+Pj4+ICvCoMKgwqAgc3RydWN0IGRybV9zY2hlZF9qb2IgKnNfam9iLCAqdG1wOw0K
Pj4+PiAgwqDCoMKgwqDCoCBpbnQgaTsNCj4+Pj4gIMKgIC3CoMKgwqAgaWYgKHNjaGVkLT50aHJl
YWQpDQo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBrdGhyZWFkX3N0b3Aoc2NoZWQtPnRocmVhZCk7DQo+
Pj4+ICvCoMKgwqAgaWYgKCFzY2hlZC0+dGhyZWFkKQ0KPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuOw0KPj4+PiArDQo+Pj4+ICvCoMKgwqAgLyoNCj4+Pj4gK8KgwqDCoMKgICogU3RvcCB0aGUg
c2NoZWR1bGVyLCBkZXRhY2hpbmcgYWxsIGpvYnMgZnJvbSB0aGVpciBoYXJkd2FyZQ0KPj4+PiBj
YWxsYmFja3MNCj4+Pj4gK8KgwqDCoMKgICogYW5kIGNsZWFuaW5nIHVwIGNvbXBsZXRlIGpvYnMu
DQo+Pj4+ICvCoMKgwqDCoCAqLw0KPj4+PiArwqDCoMKgIGRybV9zY2hlZF9zdG9wKHNjaGVkLCBO
VUxMKTsNCj4+Pj4gKw0KPj4+PiArwqDCoMKgIC8qDQo+Pj4+ICvCoMKgwqDCoCAqIEl0ZXJhdGUg
dGhyb3VnaCB0aGUgcGVuZGluZyBqb2IgbGlzdCBhbmQgZnJlZSBhbGwgam9icy4NCj4+Pj4gK8Kg
wqDCoMKgICogVGhpcyBhc3N1bWVzIHRoZSBkcml2ZXIgaGFzIGVpdGhlciBndWFyYW50ZWVkIGpv
YnMgYXJlDQo+Pj4+IGFscmVhZHkgc3RvcHBlZCwgb3IgdGhhdA0KPj4+PiArwqDCoMKgwqAgKiBv
dGhlcndpc2UgaXQgaXMgcmVzcG9uc2libGUgZm9yIGtlZXBpbmcgYW55IG5lY2Vzc2FyeSBkYXRh
DQo+Pj4+IHN0cnVjdHVyZXMgZm9yDQo+Pj4+ICvCoMKgwqDCoCAqIGluLXByb2dyZXNzIGpvYnMg
YWxpdmUgZXZlbiB3aGVuIHRoZSBmcmVlX2pvYigpIGNhbGxiYWNrIGlzDQo+Pj4+IGNhbGxlZCBl
YXJseSAoZS5nLiBieQ0KPj4+PiArwqDCoMKgwqAgKiBwdXR0aW5nIHRoZW0gaW4gaXRzIG93biBx
dWV1ZSBvciBkb2luZyBpdHMgb3duIHJlZmNvdW50aW5nKS4NCj4+Pj4gK8KgwqDCoMKgICovDQo+
Pj4+ICvCoMKgwqAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHNfam9iLCB0bXAsICZzY2hlZC0+
cGVuZGluZ19saXN0LCBsaXN0KSB7DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBzcGluX2xvY2soJnNj
aGVkLT5qb2JfbGlzdF9sb2NrKTsNCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGxpc3RfZGVsX2luaXQo
JnNfam9iLT5saXN0KTsNCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrKCZzY2hlZC0+
am9iX2xpc3RfbG9jayk7DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBzY2hlZC0+b3BzLT5mcmVlX2pv
YihzX2pvYik7DQo+Pj4+ICvCoMKgwqAgfQ0KPj4+IEkgd291bGQgc3RvcCB0aGUga3RocmVhZCBm
aXJzdCwgdGhlbiBkZWxldGUgYWxsIGpvYnMgd2l0aG91dCBzcGlubG9jaw0KPj4+IHNpbmNlIG5v
dGhpbmcgZWxzZSBjYW4gcmFjZSBhZ2FpbnN0IHNjaGVkX2Zpbmk/DQo+Pj4NCj4+PiBJZiB5b3Ug
ZG8gbmVlZCB0aGUgc3BpbmxvY2ssIEl0IHdvdWxkIG5lZWQgdG8gZ3VhcmQNCj4+PiBsaXN0X2Zv
cl9lYWNoX2VudHJ5IHRvby4NCj4+IFdlbGwgdGhpcyBjYXNlIGhlcmUgYWN0dWFsbHkgc2hvdWxk
IG5vdCBoYXBwZW4gaW4gdGhlIGZpcnN0IHBsYWNlLg0KPiAiVGhpcyBzaG91bGQgbm90IGhhcHBl
biBpbiB0aGUgZmlyc3QgcGxhY2UiIGlzIGhvdyB5b3UgZW5kIHVwIHdpdGggQw0KPiBBUElzIHRo
YXQgaGF2ZSBjb3JuZXIgY2FzZXMgdGhhdCBsZWFkIHRvIGtlcm5lbCBvb3BzZXMuLi4NCj4NCj4g
VGhlIGlkZWEgd2l0aCBSdXN0IGFic3RyYWN0aW9ucyBpcyB0aGF0IGl0IG5lZWRzIHRvIGJlIGFj
dHVhbGx5DQo+IGltcG9zc2libGUgdG8gY3JlYXRlIG1lbW9yeSBzYWZldHkgcHJvYmxlbXMgZm9y
IHRoZSB1c2VyIG9mIHRoZQ0KPiBhYnN0cmFjdGlvbiwgeW91IGNhbid0IGltcG9zZSBhcmJpdHJh
cnkgY29uc3RyYWludHMgbGlrZSAieW91IG11c3Qgd2FpdA0KPiBmb3IgYWxsIGpvYnMgdG8gZmlu
aXNoIGJlZm9yZSBkZXN0cm95aW5nIHRoZSBzY2hlZHVsZXIiLi4uIGl0IG5lZWRzIHRvDQo+IGJl
IGludHJpbnNpY2FsbHkgc2FmZS4NCj4NCj4+IEpvYnMgZGVwZW5kIG9uIHRoZWlyIGRldmljZSwg
c28gYXMgbG9uZyBhcyB0aGVyZSBhcmUgam9icyB0aGVyZSBzaG91bGQNCj4+IGFsc28gYmUgYSBy
ZWZlcmVuY2UgdG8gdGhlIHNjaGVkdWxlci4NCj4gVGhlc2Ugc2NoZWR1bGVycyBhcmUgY3JlYXRl
ZCBkeW5hbWljYWxseSBwZXIgdXNlcnNwYWNlIHF1ZXVlLiBUaGUgbWVtb3J5DQo+IG1hbmFnZW1l
bnQgYW5kIHJlZmVyZW5jZSBjb3VudGluZyBpbnZvbHZlZCBtYWtlIGl0IHNhZmUgdG8gZGVzdHJv
eSB0aGUNCj4gc2NoZWR1bGVyIGV2ZW4gd2hlbiBiZWhpbmQgdGhlIHNjZW5lcyBoYXJkd2FyZSBq
b2JzIGFyZSBzdGlsbCBydW5uaW5nLA0KPiBhcyBsb25nIGFzIGRybV9zY2hlZCBpdHNlbGYgZG9l
c24ndCBjcmFzaCBvbiBmZW5jZXMgZmlyaW5nIHdpdGhvdXQgYQ0KPiBzY2hlZHVsZXIgKHdoaWNo
IGlzIHdoYXQgdGhpcyBwYXRjaCBmaXhlcykuDQoNCldlIGhhdmUgb3JpZ2luYWxseSByZWplY3Rl
ZCB0aGF0IGFwcHJvYWNoLCBidXQgSSBzdGlsbCB0aGluayBpdCBtaWdodCANCndvcmsgaWYgZG9u
ZSByaWdodC4NCg0KPiBUaGlzIGlzIHRoZSBwb3dlciBvZiBSdXN0OiBpdCBmb3JjZXMgeW91IHRv
IGFyY2hpdGVjdCB5b3VyIGNvZGUgaW4gYSB3YXkNCj4gdGhhdCB5b3UgZG9uJ3QgaGF2ZSBjb21w
bGV4IGhpZ2gtbGV2ZWwgZGVwZW5kZW5jaWVzIHRoYXQgc3BhbiB0aGUgZW50aXJlDQo+IGRyaXZl
ciBhbmQgYXJlIGRpZmZpY3VsdCB0byBwcm92ZSBob2xkLiBJbiBteSBkcml2ZXIsIHlvdSBjYW4g
a2lsbCBhDQo+IHByb2Nlc3MgYW5kIHRoYXQgZGVzdHJveXMgdGhlIGRybV9zY2hlZCwgY2xvc2Vz
IGFsbCBHRU0gb2JqZWN0cywNCj4gZXZlcnl0aGluZywgZXZlbiBpZiB0aGUgR1BVIGlzIHN0aWxs
IHJ1bm5pbmcgam9icyBmcm9tIHRoYXQgcHJvY2Vzcy4gVGhlDQo+IHdvcnN0IHRoYXQgY2FuIGhh
cHBlbiBpcyB0aGF0IHRoZSBHUFUgZmF1bHRzIGFzIGluLXVzZSB1c2Vyc3BhY2UgYnVmZmVycw0K
PiBhcmUgdW5tYXBwZWQgb3V0IGZyb20gdW5kZXIgdGhlIHJ1bm5pbmcgdXNlciBqb2IsIGJ1dCB0
aGF0J3MgZmluZSAoR1BVDQo+IGZhdWx0cyBhcmUgcmVjb3ZlcmFibGUpLiBUaGUgYWN0dWFsIGZp
cm13YXJlIHJlc291cmNlcywgcXVldWVzLCBldGMuIGluDQo+IHVzZSBhcmUgYWxsIGtlcHQgYWxp
dmUgdW50aWwgdGhlIGNvbW1hbmRzIGZpbmlzaCBleGVjdXRpbmcgKG9yIGZhdWx0LA0KPiB3aGlj
aCBpcyBqdXN0IGFuIGFibm9ybWFsIGNvbXBsZXRpb24pLCBldmVuIGlmIHRoZSB1c2Vyc3BhY2Ug
cHJvY2Vzcw0KPiB0aGF0IG93bmVkIHRoZW0gaXMgbG9uZyBnb25lLiBJJ3ZlIHRlc3RlZCB0aGlz
IGV4dGVuc2l2ZWx5IGJ5IGRvaW5nDQo+IHRoaW5ncyBsaWtlIGxhcmdlLXJlc29sdXRpb24gZ2xt
YXJrIHJ1bnMgaW4gYSBsb29wIHRoYXQgZ2V0IGBraWxsIC05YCdkDQo+IHJlcGVhdGVkbHksIGFu
ZCBpdCB3b3JrcyB2ZXJ5IHdlbGwhIFRvbnMgb2YgR1BVIGZhdWx0cyBidXQgbm8gZmlybXdhcmUN
Cj4gY3Jhc2hlcywgbm8gb29wc2VzLCBub3RoaW5nLiBBbmQgdGhlIGZpcm13YXJlICp3aWxsKiBj
cmFzaCBpcnJlY292ZXJhYmx5DQo+IGlmIGFueXRoaW5nIGdvZXMgd3Jvbmcgd2l0aCBpdHMgc2hh
cmVkIG1lbW9yeSBzdHJ1Y3R1cmVzLCBzbyB0aGF0IGl0DQo+IGRvZXNuJ3QgaXMgcHJldHR5IGdv
b2QgZXZpZGVuY2UgdGhhdCBhbGwgdGhpcyB3b3JrcyENCg0KV2VsbCB0ZXN0aW5nIGlzIG5vIHBy
b3ZlIGF0IGFsbCBvZiBhIGNvcnJlY3QgZGVzaWduLg0KDQo+PiBXaGF0IGNvdWxkIGJlIGlzIHRo
YXQgeW91IGhhdmUgYWxsb2NhdGVkIGEgc2NoZWR1bGVyIGluc3RhbmNlDQo+PiBkeW5hbWljYWxs
eSwgYnV0IGV2ZW4gdGhlbiB5b3Ugc2hvdWxkIGZpcnN0IHRlYXIgZG93biBhbGwgZW50aXRpZXMg
YW5kDQo+PiB0aGVuIHRoZSBzY2hlZHVsZXIuDQo+IFRoaXMgaXMgYWJvdXQgY3JlYXRpbmcgYSBz
YWZlIFJ1c3QgYWJzdHJhY3Rpb24sIHNvIHdlIGNhbid0IGltcG9zZQ0KPiByZXF1aXJlbWVudHMg
b24gdXNlcnMgbGlrZSB0aGF0LCB0aGUgYWJzdHJhY3Rpb24gaGFzIHRvIHRha2UgY2FyZSBvZiBp
dC4NCj4gVW5mb3J0dW5hdGVseSwgdGhlIGpvYnMgY2Fubm90IGRlcGVuZCBvbiB0aGUgc2NoZWR1
bGVyIGF0IHRoZQ0KPiBhYnN0cmFjdGlvbiBsZXZlbC4gSSB0cmllZCB0aGF0IChwdXR0aW5nIGEg
cmVmZXJlbmNlIGNvdW50ZWQgcmVmZXJlbmNlDQo+IHRvIHRoZSBzY2hlZHVsZXIgaW4gdGhlIGpv
YiBhYnN0cmFjdGlvbiksIGJ1dCBpdCBkb2Vzbid0IHdvcmsgYmVjYXVzZSBhDQo+IGpvYiBjb21w
bGV0aW5nIGNhbiBlbmQgdXAgZHJvcHBpbmcgdGhlIGxhc3QgcmVmZXJlbmNlIHRvIHRoZSBzY2hl
ZHVsZXIsDQo+IGFuZCB0aGVuIHlvdSBlbmQgdXAgdHJ5aW5nIHRvIHN0b3AgYW5kIGNsZWFuIHVw
IHRoZSBzY2hlZHVsZXIgZnJvbSBhDQo+IGNhbGxiYWNrIGNhbGxlZCBmcm9tIHRoZSBzY2hlZHVs
ZXIga3RocmVhZCBpdHNlbGYsIHdoaWNoIGRlYWRsb2Nrcy4gV2UNCj4gY291bGQgdGhyb3cgdGhv
c2UgY2xlYW51cHMgaW50byBhIHdvcmtxdWV1ZSBvciBzb21ldGhpbmcsIGJ1dCB0aGF0J3MNCj4g
anVzdCBhZGRpbmcgYmFuZGFnZXMgYXJvdW5kIHRoZSBwcm9ibGVtIHRoYXQgdGhlIGRybV9zY2hl
ZCBpbnRlcmZhY2UNCj4gdG9kYXkgaXMganVzdCBub3Qgc2FmZSB3aXRob3V0IHRoaXMgcGF0Y2gu
Li4NCg0KV2VsbCB0aGF0IHdvbid0IHdvcmsgbGlrZSB0aGlzLiBUaGUgc2NoZWR1bGVyIGhhcyBh
IHByZXR0eSBjbGVhciB0ZWFyIA0KZG93biBwcm9jZWR1cmUuDQoNCkFuZCB0aGF0IHByb2NlZHVy
ZSBpbXBsaWVzIHRoYXQgYWxsIGVudGl0aWVzIHdoaWNoIG1pZ2h0IHByb3ZpZGUgam9icyANCmFy
ZSBkZXN0cm95ZWQgYmVmb3JlIHRoZSBzY2hlZHVsZXIgaXMgZGVzdHJveWVkLg0KDQpEZXN0cm95
aW5nIHRoZSBlbnRpdGllcyBpbiB0dXJuIGNsZWFucyB1cCB0aGUgcGVuZGluZyBqb2JzIGluc2lk
ZSBvZiANCnRoZW0uIFdlIGNvdWxkIGFkZCBhIHdhcm5pbmcgd2hlbiB1c2VycyBvZiB0aGlzIEFQ
SSBkb2Vzbid0IGRvIHRoaXMgDQpjb3JyZWN0bHksIGJ1dCBjbGVhbmluZyB1cCBpbmNvcnJlY3Qg
QVBJIHVzZSBpcyBjbGVhcmx5IHNvbWV0aGluZyB3ZSANCmRvbid0IHdhbnQgaGVyZS4NCg0KPiBS
aWdodCBub3csIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBjcmVhdGUgYSBzYWZlIFJ1c3QgYWJzdHJh
Y3Rpb24gZm9yDQo+IGRybV9zY2hlZCB3aXRob3V0IGRvaW5nIHNvbWV0aGluZyBsaWtlIGR1cGxp
Y2F0aW5nIGFsbCBqb2IgdHJhY2tpbmcgaW4NCj4gdGhlIGFic3RyYWN0aW9uLCBvciB0aGUgYWJv
dmUgYmFja3JlZmVyZW5jZSArIGRlZmVycmVkIGNsZWFudXAgbWVzcywgb3INCj4gc29tZXRoaW5n
IGVxdWFsbHkgc2lsbHkuIFNvIGxldCdzIGp1c3QgZml4IHRoZSBDIHNpZGUgcGxlYXNlIF5eDQoN
Ck5vcGUsIGFzIGZhciBhcyBJIGNhbiBzZWUgdGhpcyBpcyBqdXN0IG5vdCBjb3JyZWN0bHkgdGVh
cmluZyBkb3duIHRoZSANCm9iamVjdHMgaW4gdGhlIHJpZ2h0IG9yZGVyLg0KDQpTbyB5b3UgYXJl
IHRyeWluZyB0byBkbyBzb21ldGhpbmcgd2hpY2ggaXMgbm90IHN1cHBvc2VkIHRvIHdvcmsgaW4g
dGhlIA0KZmlyc3QgcGxhY2UuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gU28gZmFy
LCBkcm1fc2NoZWQgaXMgdGhlIG9ubHkgRFJNIEFQSSB0aGF0IGhhcyBoYWQgc3VjaCBhIGZ1bmRh
bWVudGFsDQo+IEFQSSBzYWZldHkgaXNzdWUgdGhhdCBJIGhhZCB0byBtYWtlIGEgY2hhbmdlIGxp
a2UgdGhpcyB0byB0aGUgQyB0byBtYWtlDQo+IHRoZSBSdXN0IGFic3RyYWN0aW9uIHBvc3NpYmxl
L3JlYXNvbmFibGUuLi4gZHJtX3NjaGVkIGhhcyBhbHNvIGJlZW4gYnkNCj4gZmFyIHRoZSBoYXJk
ZXN0IERSTSBjb21wb25lbnQgQVBJIHRvIHVuZGVyc3RhbmQgZnJvbSBhIHNhZmV0eSBwb2ludCBv
Zg0KPiB2aWV3LCB3aXRoIHRoZSBtb3N0IGluY29uc2lzdGVudCBkb2N1bWVudGF0aW9uIGFib3V0
IHdoYXQgdGhlDQo+IG93bmVyc2hpcC9mcmVlaW5nIHJ1bGVzIGFyZSwgYW5kIHdoYXQgb2JqZWN0
cyBuZWVkIHRvIG91dGxpdmUgd2hhdCBvdGhlcg0KPiBvYmplY3RzIChJIGhhZCB0byBqdXN0IHJl
YWQgdGhlIGNvZGUgdG8gZmlndXJlIG1vc3Qgb2YgdGhpcyBvdXQpLiBUaGF0J3MNCj4gYWxzbyBv
bmUgbmljZSBvdXRjb21lIG9mIHdyaXRpbmcgUnVzdCBhYnN0cmFjdGlvbnM6IGl0IGZvcmNlcyB1
cyB0byBtYWtlDQo+IGFsbCB0aGVzZSBydWxlcyBhbmQgaW52YXJpYW50cyBleHBsaWNpdCwgaW5z
dGVhZCBvZiBsZWF2aW5nIHRoZW0gYXMNCj4gdW53cml0dGVuIGFzc3VtcHRpb25zIChhbG1vc3Qg
bm9ib2R5IGNvbnNpc3RlbnRseSBkb2N1bWVudHMgdGhpcyBpbiBDDQo+IEFQSXMuLi4pLg0KPg0K
PiBJZiBJIGdvdCBpdCByaWdodCwgYW55b25lIHVzaW5nIHRoZSBSdXN0IGRybV9zY2hlZCBhYnN0
cmFjdGlvbiBkb2Vzbid0DQo+IGhhdmUgdG8gd29ycnkgYWJvdXQgdGhpcyBhbnkgbW9yZSBiZWNh
dXNlIGlmIHRoZXkgZG8gc29tZXRoaW5nIHRoYXQNCj4gd291bGQgb29wcyB3aXRoIGl0LCB0aGVp
ciBjb2RlIHdvbid0IGNvbXBpbGUuIEJ1dCBJIG5lZWQgdGhpcyBwYXRjaCB0bw0KPiBiZSBhYmxl
IHRvIG1ha2UgdGhhdCBndWFyYW50ZWUuLi4NCj4NCj4gfn4gTGluYQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
