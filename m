Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 421EF5A9101
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 09:46:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69610479AF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 07:46:29 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2048.outbound.protection.outlook.com [40.107.220.48])
	by lists.linaro.org (Postfix) with ESMTPS id 139273F55D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 07:46:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JYF6CATeI+6DMfZ2tRRlKduD8WPzHMv6bSYyirIfsQu2hQSZuuCBYXLnNhIbQjuOSb1Zw04E5IKL1SFnAggA30jBLh8KBwl8wlGVdoszP5rOxkubv8msRT1fjJ6ZVON65L0rfqCqKsdf20VkOqEubVB4VEB8Z3jlknyg4JUAmgyMuwM2squqFyVPLFAp6OI3hn1P/z+cLnlMzVsTOW8Vf5L5K0cPnt8RXTKN9ukn6R06PhJ8jYbbVgFCZSKUiXokJibF6LIZGnUS9/vCpfgkyvTwj2XuMG8pIWd9MZwitYFAS8FjLjT2FO55Y0gG9bEm1DGcD8SmyLQSzCyR2Qegjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OB6rZhHYcnVAQMefbqlbTnswcKBiw5jcMh1AY9IE3Tk=;
 b=Od6Xl8ZThS84xk0Rk/lR52x3IgyukWM0sjhepRr10A5G3USqphH/eDF90x76pNUhNOV4Uwg2xty7SG+mTTLy/IPgKvQyBurw7Fa9G4XsCHtgtW37yaAicnyx4MKXXOKJVfOUhlVC4fjdPqzCf5UopwROC1cNsyq+gpt9HJHMgVzmgF/8hGI+SeJVyAh4tV973rXbd9SCXBslKxzCab1jqDIQmIrwBuhIrZ9E32wKG6FwOq/1/dT7SaQlMaORZS9UL7ZpiwxfBvBHV4aNpbbjpiRLjQydR/kIf3bXlh2wSWvZRN919MvtCU41m4DWM1xT2n4TMuog+4dbmxcNXJ3wSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OB6rZhHYcnVAQMefbqlbTnswcKBiw5jcMh1AY9IE3Tk=;
 b=oVczly8sePR3s3duE7P+4uNT72RxjAKYAKkF4EuQ6O/6i3gHPxpD8jkTRGoftXQCTtdREXCrQaJYEhVDUwyWuIPzEIItN4fjN61NFaZgMXKvb1CxEZsCO2rpwbW8Yo1VoLJKLr+aUdl0RdAfWar2vXo4/naHdzquJirUQ5n7UE8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DS0PR12MB6461.namprd12.prod.outlook.com (2603:10b6:8:c7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21; Thu, 1 Sep
 2022 07:46:21 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.012; Thu, 1 Sep 2022
 07:46:18 +0000
Message-ID: <23cc241c-5710-895e-eb33-3f12ce8e865a@amd.com>
Date: Thu, 1 Sep 2022 09:46:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-21-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-21-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: FR0P281CA0062.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::23) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd114ec9-afa8-42d0-86bf-08da8bee0e0c
X-MS-TrafficTypeDiagnostic: DS0PR12MB6461:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HY7yeMjY4Da+bR91y3J01f9hYzkvgzrI9W1QEAGtrdocWAen0H+9fJbMmYFOX/CHE8Aij+4F3AIr9PJ92gFdHhtNJkb7oWCS6Z7o6DAMIQYeYzyca9gQUJse6tlrrOCfwATRkiPj5TIghVOOLkM7AEO6g3bnyQ+UXJ/hyO8UCS/8ZWk86ZjfWzEeKjRqfjndTDtMf5PaT6La6TgJzta6tWnafgcQFnc9+wvfZtk7MfCJvEhz42oinqObPNWX5pkIOnJPliScpUFgxGrmiLn3lK0sQhwX4JqiTG4SkrqobQ45KECtUIdge9b1e2h4cfDSI5CKe9mSajZJAgC4F0cR1IzX+saRoUO69tTZABH6mRQV1emvM75Q4fsW3e/PzwhDh96sbleurY1w+ONP8DCoKacd4iur6/ajnA542hCYo7iuBJfpA8tc+QKdLf1O1qbWvIbE5nV0KW9g2bGBqhq3bFe++urPvEb6pTLNZ7VQ6p3xJpf+L51/6UBCPjGbMplMcVSWuTdN5H8bnmUdz70iKdjWM8TON1k2vXkxmVeTQ1Qr0sfao7Xl+omVgcsyNJnA9qlVXpGrqrSIGp7LUYT7JDj1eiOgM3UXfSnOHHV0CkbRjOWhdHusT8RNpF/5eLVczQJYoSvGYYYzVPfu0wWP0nvSB8m9Jvilpag2wvud8T7AOtjX1oo522Xe6zdN9LdoDpt440ffN+WvN5rPygsbgrbC2P5N/Qq9BpoP838d4IMmwQJmP37G5J1ReMDci2Pop9suNfB4C2a6ItyZ4HnvXBjtkYPpK8i1+936I5FS0AjTPDhy3PCQgfrr1PGC0Moe
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(66476007)(38100700002)(186003)(2616005)(66574015)(4326008)(8936002)(66946007)(316002)(36756003)(83380400001)(7406005)(8676002)(110136005)(7416002)(31686004)(2906002)(66556008)(5660300002)(6512007)(6666004)(921005)(31696002)(86362001)(6506007)(41300700001)(478600001)(26005)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d3ZlczRPaGNOd3hRV2pOdVNnUnVoak1pV0FJWnpIanFSNThFWENtbWVmemxi?=
 =?utf-8?B?Tk9tWkErK2ZuckVMZGp5NDVVZUpZcmxjVHJPSjF4QnhIWTBjT0NLYVIyS0or?=
 =?utf-8?B?TEtLVWtxTDJjbDFUdFpsaHo1MUdiR1RzY05TR1NmNENJTGhVOHlFb0NaaVJZ?=
 =?utf-8?B?YjNCK0ZnRjNya3ZvS0xkSGc4a1FHZTRZOERDVHlqZ3BYdDgrZ1pHMXVYckc3?=
 =?utf-8?B?NmFITlVTcnR4bHRucDZVbVFxbFlEcytRTDRKWHpjZjVvY280a2dDS0VqbmdR?=
 =?utf-8?B?OEhLSXc4OUYwWmUyanhRbVNqY0RPbU9ueUZDSEw0WVVGeHJiMWVoU05QTzNF?=
 =?utf-8?B?eHZqSFBLU2RyaTJ4T09wT2FUdzlLRkpXbnBFYWZiYmk0ZFRqR3VLMjg5ZFkv?=
 =?utf-8?B?alF6MHBuamp4a3htaG8xZUlmQ1lVTXhIcHB1STJXUWhoaXZ3bHBVNnFacTdt?=
 =?utf-8?B?a0o0S2pYRVpqRUxtTExXU0Izbktya2xoZWdRaS9TZzdTNjhrTi8ram1lWEda?=
 =?utf-8?B?TE5qM1R3M3pkcmxuMWlVZkpaU1p4L290Rk1lMDIyYURzUFNoZ0RRQm81aXd0?=
 =?utf-8?B?WU5UV1lNNVNsYWRJQTd3MkVWSUxobE1RNnhYTHEwTExERzdUUndGQzlZRlJ6?=
 =?utf-8?B?YVFPT0NlZ3VpT0RldFVFMjRISks0SFhqK2tSZ0dRYU9pMG5OMURxVHg2cm82?=
 =?utf-8?B?WS84ZSt3cGpYYVA4ZGVNMVRoZXlYdnBTOEhvcEV0blVoQUF5dTZHalVIZlU4?=
 =?utf-8?B?NVNWcEVpL0FWUlhSMExiU2xCRjlIZ2QrZUtOYmFIYnY0ZTE4L08yNjN6cnd6?=
 =?utf-8?B?T0dLU0luMUg5NTd1NEF6WUlWQkFYNEs0dFpVR0xCVTAzTzNCZjFNYzBWeUVU?=
 =?utf-8?B?U0MwcnQrRzEwMVovNFdiSEtHNmJSUE82bWt3bmxLa2ErY2hVLzFGMjV6T1lh?=
 =?utf-8?B?cytLT3FjWU8zU2VHRE1qZ2NYdDJXaXhtOHhYN1VyRnVaZ01oNU1NS0t3MmJO?=
 =?utf-8?B?MW5tTzNnV05YK3dtd1V0NDdSUmdPVUsyaHBYSzNLSkljMUprcWZRcWhxTnZ1?=
 =?utf-8?B?TU9Ranh6TU1uR3dFR2wyVk8yTkVoTTZsQnBxTUtGV09GV25PbVdORi95cEww?=
 =?utf-8?B?cklNYUZWYVluY2ZROUNYSXNEd2g4c3ZSblFIMktXUW5NZzFpL2NxbzJPQmhO?=
 =?utf-8?B?NzltRHRGc1ZsRi9QU05IMWVsWld2cEphUUZabXFSY1F0MzUvSGx4UnlXc3Zt?=
 =?utf-8?B?RUNnU3JpVHcvd3FVNXRCVzBTVVovRUZOVFA3MUIyalp6d1pGRTlTdSt3Qkp5?=
 =?utf-8?B?MThuV2ZHSlJad2tzdVV4VDBZSTdmM0FLY3duVklRaEZHR0kzZXB1NjA4OTB6?=
 =?utf-8?B?L0xSWHFqVDNlVXd6K0p1N3owUXFOejVpZmUwb1RjTmswanpjazF0MHNpc3hJ?=
 =?utf-8?B?OXhwNCtvYzJ3RXlJcTNHZUdJZmVwNHhPblFibnBHekowem5rOGVtVmZ3Uld4?=
 =?utf-8?B?MmpSWFFxa0xQUkxkZTBJSGM1c0FpTjZYcnJaSXVtRUlkUG0wS1VucFJETGdE?=
 =?utf-8?B?UlVQangxQytoYlZpWVJsandpendCRW1ZY0pIdG1kTGM4ZzdjL1g1Ris1N0pj?=
 =?utf-8?B?cWUvQk01MXJQOVRKNWdqcHFYdHRlL3ZsbTZYQllINFJTU2JXakNyVHBpeDQr?=
 =?utf-8?B?bEpQSGNMNUJmRUNCaU9tdk5KYkp1UUJodFI1TURGN3Vqc2tMTTVOK1lqYysv?=
 =?utf-8?B?Rll3dEpJTDJscWtNYk9rZmp6aDM2NDFrM1k1N256K0liQ3VNZjFvN1VrTzF3?=
 =?utf-8?B?akY2d2doUVZKQU1mNVZmRmdzTEdESGQyN3F5QXlGVWlVMlpyUmFQUFc0SjJv?=
 =?utf-8?B?bTNKM1BCZWNMYzBnR2JQdVBpaWV3a2tNQXVPdGRRdzJ2MTY5Y3A4ZEVIOTRh?=
 =?utf-8?B?ZUkweHlwV1pPeDVNWk10Z0RTeEVsLzhuekt6MlZNSHF1UGV3bGEwSWRIYTRN?=
 =?utf-8?B?eTJJa1VTU21CaTBSQ2FFU2JvU3F3NW84YXYyNmMzMFdmTkZPdWY5aEdKVWZT?=
 =?utf-8?B?NkptSmxCTktvenVFMUN6RkdoRU1zRTJPUGg0c1JQMTQwdGUxM2M1ZkxocHZY?=
 =?utf-8?Q?H1eB4HsNweQWCW0HB70BzFWI8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd114ec9-afa8-42d0-86bf-08da8bee0e0c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 07:46:18.5369
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pLxtFJx0qx+lCPScLqVYvHbiuZEbwwFcWElc/PZZ8hTRYZ0m2hwf5oPEikT89ypv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6461
Message-ID-Hash: L4ZL3TTRDMIYX6UFSMWMIRLHEPHTNWT7
X-Message-ID-Hash: L4ZL3TTRDMIYX6UFSMWMIRLHEPHTNWT7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 20/21] media: videobuf2: Stop using internal dma-buf lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L4ZL3TTRDMIYX6UFSMWMIRLHEPHTNWT7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IEFsbCBkcml2
ZXJzIHRoYXQgdXNlIGRtYS1idWZzIGhhdmUgYmVlbiBtb3ZlZCB0byB0aGUgdXBkYXRlZCBsb2Nr
aW5nDQo+IHNwZWNpZmljYXRpb24gYW5kIG5vdyBkbWEtYnVmIHJlc2VydmF0aW9uIGlzIGd1YXJh
bnRlZWQgdG8gYmUgbG9ja2VkDQo+IGJ5IGltcG9ydGVycyBkdXJpbmcgdGhlIG1hcHBpbmcgb3Bl
cmF0aW9ucy4gVGhlcmUgaXMgbm8gbmVlZCB0byB0YWtlDQo+IHRoZSBpbnRlcm5hbCBkbWEtYnVm
IGxvY2sgYW55bW9yZS4gUmVtb3ZlIGxvY2tpbmcgZnJvbSB0aGUgdmlkZW9idWYyDQo+IG1lbW9y
eSBhbGxvY2F0b3JzLg0KPg0KPiBBY2tlZC1ieTogVG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVt
Lm9yZz4NCj4gQWNrZWQtYnk6IEhhbnMgVmVya3VpbCA8aHZlcmt1aWwtY2lzY29AeHM0YWxsLm5s
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xs
YWJvcmEuY29tPg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItZG1hLWNvbnRpZy5jIHwgMTEgKy0tLS0tLS0tLS0NCj4gICBkcml2ZXJzL21lZGlh
L2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jICAgICB8IDExICstLS0tLS0tLS0t
DQo+ICAgZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12bWFsbG9jLmMg
ICAgfCAxMSArLS0tLS0tLS0tLQ0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAzMCBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24v
dmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMNCj4gaW5kZXggNzlmNGQ4MzAxZmJiLi41
NTViZDQwZmE0NzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVm
Mi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jDQo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3Zp
ZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jDQo+IEBAIC0zODIsMTggKzM4MiwxMiBAQCBz
dGF0aWMgc3RydWN0IHNnX3RhYmxlICp2YjJfZGNfZG1hYnVmX29wc19tYXAoDQo+ICAgCXN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmRiX2F0dGFjaCwgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24g
ZG1hX2RpcikNCj4gICB7DQo+ICAgCXN0cnVjdCB2YjJfZGNfYXR0YWNobWVudCAqYXR0YWNoID0g
ZGJfYXR0YWNoLT5wcml2Ow0KPiAtCS8qIHN0ZWFsaW5nIGRtYWJ1ZiBtdXRleCB0byBzZXJpYWxp
emUgbWFwL3VubWFwIG9wZXJhdGlvbnMgKi8NCj4gLQlzdHJ1Y3QgbXV0ZXggKmxvY2sgPSAmZGJf
YXR0YWNoLT5kbWFidWYtPmxvY2s7DQo+ICAgCXN0cnVjdCBzZ190YWJsZSAqc2d0Ow0KPiAgIA0K
PiAtCW11dGV4X2xvY2sobG9jayk7DQo+IC0NCj4gICAJc2d0ID0gJmF0dGFjaC0+c2d0Ow0KPiAg
IAkvKiByZXR1cm4gcHJldmlvdXNseSBtYXBwZWQgc2cgdGFibGUgKi8NCj4gLQlpZiAoYXR0YWNo
LT5kbWFfZGlyID09IGRtYV9kaXIpIHsNCj4gLQkJbXV0ZXhfdW5sb2NrKGxvY2spOw0KPiArCWlm
IChhdHRhY2gtPmRtYV9kaXIgPT0gZG1hX2RpcikNCj4gICAJCXJldHVybiBzZ3Q7DQo+IC0JfQ0K
PiAgIA0KPiAgIAkvKiByZWxlYXNlIGFueSBwcmV2aW91cyBjYWNoZSAqLw0KPiAgIAlpZiAoYXR0
YWNoLT5kbWFfZGlyICE9IERNQV9OT05FKSB7DQo+IEBAIC00MDksMTQgKzQwMywxMSBAQCBzdGF0
aWMgc3RydWN0IHNnX3RhYmxlICp2YjJfZGNfZG1hYnVmX29wc19tYXAoDQo+ICAgCWlmIChkbWFf
bWFwX3NndGFibGUoZGJfYXR0YWNoLT5kZXYsIHNndCwgZG1hX2RpciwNCj4gICAJCQkgICAgRE1B
X0FUVFJfU0tJUF9DUFVfU1lOQykpIHsNCj4gICAJCXByX2VycigiZmFpbGVkIHRvIG1hcCBzY2F0
dGVybGlzdFxuIik7DQo+IC0JCW11dGV4X3VubG9jayhsb2NrKTsNCj4gICAJCXJldHVybiBFUlJf
UFRSKC1FSU8pOw0KPiAgIAl9DQo+ICAgDQo+ICAgCWF0dGFjaC0+ZG1hX2RpciA9IGRtYV9kaXI7
DQo+ICAgDQo+IC0JbXV0ZXhfdW5sb2NrKGxvY2spOw0KPiAtDQo+ICAgCXJldHVybiBzZ3Q7DQo+
ICAgfQ0KPiAgIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYy
L3ZpZGVvYnVmMi1kbWEtc2cuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRl
b2J1ZjItZG1hLXNnLmMNCj4gaW5kZXggMzZlY2RlYThkNzA3Li4zNjk4MWE1YjVjNTMgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNn
LmMNCj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEt
c2cuYw0KPiBAQCAtNDI0LDE4ICs0MjQsMTIgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqdmIy
X2RtYV9zZ19kbWFidWZfb3BzX21hcCgNCj4gICAJc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAq
ZGJfYXR0YWNoLCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkbWFfZGlyKQ0KPiAgIHsNCj4gICAJ
c3RydWN0IHZiMl9kbWFfc2dfYXR0YWNobWVudCAqYXR0YWNoID0gZGJfYXR0YWNoLT5wcml2Ow0K
PiAtCS8qIHN0ZWFsaW5nIGRtYWJ1ZiBtdXRleCB0byBzZXJpYWxpemUgbWFwL3VubWFwIG9wZXJh
dGlvbnMgKi8NCj4gLQlzdHJ1Y3QgbXV0ZXggKmxvY2sgPSAmZGJfYXR0YWNoLT5kbWFidWYtPmxv
Y2s7DQo+ICAgCXN0cnVjdCBzZ190YWJsZSAqc2d0Ow0KPiAgIA0KPiAtCW11dGV4X2xvY2sobG9j
ayk7DQo+IC0NCj4gICAJc2d0ID0gJmF0dGFjaC0+c2d0Ow0KPiAgIAkvKiByZXR1cm4gcHJldmlv
dXNseSBtYXBwZWQgc2cgdGFibGUgKi8NCj4gLQlpZiAoYXR0YWNoLT5kbWFfZGlyID09IGRtYV9k
aXIpIHsNCj4gLQkJbXV0ZXhfdW5sb2NrKGxvY2spOw0KPiArCWlmIChhdHRhY2gtPmRtYV9kaXIg
PT0gZG1hX2RpcikNCj4gICAJCXJldHVybiBzZ3Q7DQo+IC0JfQ0KPiAgIA0KPiAgIAkvKiByZWxl
YXNlIGFueSBwcmV2aW91cyBjYWNoZSAqLw0KPiAgIAlpZiAoYXR0YWNoLT5kbWFfZGlyICE9IERN
QV9OT05FKSB7DQo+IEBAIC00NDYsMTQgKzQ0MCwxMSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxl
ICp2YjJfZG1hX3NnX2RtYWJ1Zl9vcHNfbWFwKA0KPiAgIAkvKiBtYXBwaW5nIHRvIHRoZSBjbGll
bnQgd2l0aCBuZXcgZGlyZWN0aW9uICovDQo+ICAgCWlmIChkbWFfbWFwX3NndGFibGUoZGJfYXR0
YWNoLT5kZXYsIHNndCwgZG1hX2RpciwgMCkpIHsNCj4gICAJCXByX2VycigiZmFpbGVkIHRvIG1h
cCBzY2F0dGVybGlzdFxuIik7DQo+IC0JCW11dGV4X3VubG9jayhsb2NrKTsNCj4gICAJCXJldHVy
biBFUlJfUFRSKC1FSU8pOw0KPiAgIAl9DQo+ICAgDQo+ICAgCWF0dGFjaC0+ZG1hX2RpciA9IGRt
YV9kaXI7DQo+ICAgDQo+IC0JbXV0ZXhfdW5sb2NrKGxvY2spOw0KPiAtDQo+ICAgCXJldHVybiBz
Z3Q7DQo+ICAgfQ0KPiAgIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlk
ZW9idWYyL3ZpZGVvYnVmMi12bWFsbG9jLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KPiBpbmRleCA3ODMxYmY1NDU4NzQuLjQxZGI3MDdlNDNh
NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVm
Mi12bWFsbG9jLmMNCj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVv
YnVmMi12bWFsbG9jLmMNCj4gQEAgLTI2NywxOCArMjY3LDEyIEBAIHN0YXRpYyBzdHJ1Y3Qgc2df
dGFibGUgKnZiMl92bWFsbG9jX2RtYWJ1Zl9vcHNfbWFwKA0KPiAgIAlzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICpkYl9hdHRhY2gsIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRtYV9kaXIpDQo+
ICAgew0KPiAgIAlzdHJ1Y3QgdmIyX3ZtYWxsb2NfYXR0YWNobWVudCAqYXR0YWNoID0gZGJfYXR0
YWNoLT5wcml2Ow0KPiAtCS8qIHN0ZWFsaW5nIGRtYWJ1ZiBtdXRleCB0byBzZXJpYWxpemUgbWFw
L3VubWFwIG9wZXJhdGlvbnMgKi8NCj4gLQlzdHJ1Y3QgbXV0ZXggKmxvY2sgPSAmZGJfYXR0YWNo
LT5kbWFidWYtPmxvY2s7DQo+ICAgCXN0cnVjdCBzZ190YWJsZSAqc2d0Ow0KPiAgIA0KPiAtCW11
dGV4X2xvY2sobG9jayk7DQo+IC0NCj4gICAJc2d0ID0gJmF0dGFjaC0+c2d0Ow0KPiAgIAkvKiBy
ZXR1cm4gcHJldmlvdXNseSBtYXBwZWQgc2cgdGFibGUgKi8NCj4gLQlpZiAoYXR0YWNoLT5kbWFf
ZGlyID09IGRtYV9kaXIpIHsNCj4gLQkJbXV0ZXhfdW5sb2NrKGxvY2spOw0KPiArCWlmIChhdHRh
Y2gtPmRtYV9kaXIgPT0gZG1hX2RpcikNCj4gICAJCXJldHVybiBzZ3Q7DQo+IC0JfQ0KPiAgIA0K
PiAgIAkvKiByZWxlYXNlIGFueSBwcmV2aW91cyBjYWNoZSAqLw0KPiAgIAlpZiAoYXR0YWNoLT5k
bWFfZGlyICE9IERNQV9OT05FKSB7DQo+IEBAIC0yODksMTQgKzI4MywxMSBAQCBzdGF0aWMgc3Ry
dWN0IHNnX3RhYmxlICp2YjJfdm1hbGxvY19kbWFidWZfb3BzX21hcCgNCj4gICAJLyogbWFwcGlu
ZyB0byB0aGUgY2xpZW50IHdpdGggbmV3IGRpcmVjdGlvbiAqLw0KPiAgIAlpZiAoZG1hX21hcF9z
Z3RhYmxlKGRiX2F0dGFjaC0+ZGV2LCBzZ3QsIGRtYV9kaXIsIDApKSB7DQo+ICAgCQlwcl9lcnIo
ImZhaWxlZCB0byBtYXAgc2NhdHRlcmxpc3RcbiIpOw0KPiAtCQltdXRleF91bmxvY2sobG9jayk7
DQo+ICAgCQlyZXR1cm4gRVJSX1BUUigtRUlPKTsNCj4gICAJfQ0KPiAgIA0KPiAgIAlhdHRhY2gt
PmRtYV9kaXIgPSBkbWFfZGlyOw0KPiAgIA0KPiAtCW11dGV4X3VubG9jayhsb2NrKTsNCj4gLQ0K
PiAgIAlyZXR1cm4gc2d0Ow0KPiAgIH0NCj4gICANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
