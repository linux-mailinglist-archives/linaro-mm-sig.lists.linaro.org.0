Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 394BC59FCE8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 16:11:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A7993F600
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 14:11:32 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2040.outbound.protection.outlook.com [40.107.223.40])
	by lists.linaro.org (Postfix) with ESMTPS id 5A1743EC34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 14:11:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nnu9eRxdokgHHfl+/+uOoH79qxNcD0SVs9cWBq5ZoF9j0UFCd7XseYc3AhPw0jPm5ije3Kb6wQMUBTHEKZJmSaYp5RYFbgoAnJokP/VVhMmXhpXevr7VDpX+b6lvqhfYrb2M33K6mb9uTqZMNxoURPJ/edrWyIhWvQkTKp8RA2Omz2Id/NOzDW9Mojlqq/FWsNBeA8JBs46rl/9bgYq59XXJgdfietMh2Dh3LxhxDI8tovBdESun4HH6yTY84u7eFpJqSTBs3iTVmNdeygetn7jWArP0HnTsaYJ8mLRL7cRR8U+PaIEl1QlfJOePwEJcMDAhZm6EgRc3/rwuEeUbcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqPUQCej5vuqxvtj8Chlk3T/0EwQ6MX8daIfGCr7o8M=;
 b=c/XYxqdneDEH/DkMoLFAsRp6iqvullaPOshGTd9IJExYzhHSUDR/lvxqVU8bJzAi+bG4bVC2GDFT/AnfpIM18YW45lz7zeybn1yJkTdHE7hbwZb8HQitbHjRZTPQPAJCtILuFDjiq6MJnMDr0rs6JHqgaZXccGMOQ/VfNaRGyHZhlVOPOFWV3yL9WKyaG/ol2pyw5Yhhktf1m+JEDiYO1maA0JSV6+adQNTgnaMt3LTNNXoWfng3OHb8k6jn/t9ivn02jtvgB9ELg5st2eo3ocrTnLV3fTfmCImt5aCCfCHbK//xhu/L84jCLav54YuhJIXO1RRAPH3QKLJKdTuHiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kqPUQCej5vuqxvtj8Chlk3T/0EwQ6MX8daIfGCr7o8M=;
 b=Qh3ShTDqYljGuzDiMNRcnLnEVaa1TnymlG57SvJVZ37XrCkhCzlZlcOdBD0onKcBMrrCqvRssSW7RmGJCKoAHPW84c+dPgar3Stm+B3OKYTy5D4B7HrG14exTta7wWOM7t7TfMu6ixQrqLYLY5bzTUWcfh5BsSrXlomsiN0ejSM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM6PR12MB2921.namprd12.prod.outlook.com (2603:10b6:5:182::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Wed, 24 Aug
 2022 14:11:16 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5546.024; Wed, 24 Aug 2022
 14:11:16 +0000
Message-ID: <ce79b696-339b-3505-5884-14a20489de57@amd.com>
Date: Wed, 24 Aug 2022 16:09:55 +0200
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
 Qiang Yu <yuq825@gmail.com>
References: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
 <20220824102248.91964-10-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220824102248.91964-10-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AS9PR06CA0185.eurprd06.prod.outlook.com
 (2603:10a6:20b:45d::6) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 67b7ec6f-b4af-4832-23c0-08da85da577d
X-MS-TrafficTypeDiagnostic: DM6PR12MB2921:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9NG0WZgeddmHQwKb4RZcp7HqbpXvkRxGZjf8wyn//i6nkI+GbEM6NxR1/40CDNMCQElwy/eStwFCrwZgaEyUVVlX2goeVG1d+IQ85CzYj/TM3kHYZit/pEWPukn8aSbCIFi0anF8TVxbP7sASoCyTZIE1JRZp6lyp2s2j509su11JpbWVYzWD+GMVOPNEDtRR4OYz915Thgdk7xVJ2aIMeM14Vmk18P/VO9HQzDaCXdRPXNIDnA2uaRBbor/PXHXcmWK7OLyL42WYgMYcuIIjzFf080beadL4TqaSejUCXWRcONHkmHJaPkVYXLMgTHxELmO9hsbZzEd4PZ1jaiUM+2mBFpuPFo4PMJKcxmPsaYLpu6Zih7foI2FwwEO1cOPZSVC9fWr5Ix4DZEdJLzvLi0rj1QRdV5YjptGrnc8bCCP0dfsWSRiuTLu2IdHfPdG/64xaxIBYO6px9rdwIwYtSXQgYQyD9vsloEdRthTFDTGjJZcc/P4R+DFz6WnrnNfnlxrpu0VlgKsIrKlAkHIcZBSZcdwwF2p8gBxzQVwUXi0WflZ2ElQ6/jr9rU9LnPlP8GomqxPPBiPxpJn1uP/FsU5Noi3rdri6PH3W7+3Rtui36W6VHY52RsEBfBbfX6yBqsXVMPXyEYvLM+vvK//37+PYV9Rb+oSE1O+RFDYGoBf4xoUnIJWkzCXxRDymyHOteQJ2EM/q4FwGctUsrXrjHNy+N0TN4Bg8cYeKOX+g3DGsGHY3AU2O7KPNi+UD3mdGgCm1LFf9tN8wWOLxEa5TyLAtup+3YFphHEvgVhuw4zMkKIsINbnr8+q3pGTt6f6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(66946007)(66556008)(8676002)(86362001)(31696002)(110136005)(316002)(83380400001)(6666004)(8936002)(186003)(38100700002)(2616005)(7416002)(921005)(41300700001)(478600001)(6486002)(66574015)(2906002)(36756003)(7406005)(31686004)(6512007)(6506007)(5660300002)(66476007)(4326008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RHZvZkdGS242YVZNUWVVU0x0d1dTYi90OXFsUW5vN3U2aERzQ3ArMFdpUy9q?=
 =?utf-8?B?aXdKaHVOTGhRTUgrMnNiWFNNRWxWai9hbWdEL1ZFV1FTWUZzYkltUkVtZTNE?=
 =?utf-8?B?UWV3Q2t5R1BYMGE3WFJZN2NtQ1BXaTU4RkJMbUF2Z1Nxc2tMNy9NRHFLN2hJ?=
 =?utf-8?B?K3BJWnVqaU5JS1lsOVl0UlIwd0w5bjFNNkpWZWNDZ3hCbkcyc04wR0VLSjdo?=
 =?utf-8?B?TXBiRFVMcWI4S2swSk1YVks1K0ZPSkZwVkJZbUhUSzR3anpWdTV1Z21ZRlJC?=
 =?utf-8?B?OS9xeXFZT1VYWnh5dWxaMERpaXdEd1NvUThpUG4xQ1R1SjJFRXIzQVBNRjFn?=
 =?utf-8?B?Mm5GaVg1ZjBXVk1BSm1yMlV2ZGNCekEram9LRXJScGsxeDZqVGZaUFRSTG5m?=
 =?utf-8?B?dU9PU01YU0FkTVhsZDZ5RzNEOGtCQ2t5VzhzQUFUK0prNmFSTGtyVjRCK0Y3?=
 =?utf-8?B?emNIakUxTXM2dWlBT2FFNGJHc3NCSXM3L3NybndiYmRmdmpZb0ZtNVlLVTFZ?=
 =?utf-8?B?YmorQmZRU1NLU1g3ZXJiaXRqTjVDZjNrcVB3USswdFRMVndJVHJpcFdZckRv?=
 =?utf-8?B?UEVVRFg1YlFQbEM2Nm4rVmNsaFl4a3grVXJsVGprQU9PR20xTmRyOU8rSkgw?=
 =?utf-8?B?MWxFbFlvSVI2T3dQWGRCWVZvSHRLb1FzWHdwL2lPUVV0VExmUVpjY3hJSGtQ?=
 =?utf-8?B?cCtKVHZ6REM5ZEdSdTNEdnhtcmxQWjNrMThhYzVQNTdqc0tuUEs0d2hsL2ky?=
 =?utf-8?B?cGxuSTd5SlIwYysrR1A0V1RKK2dYRnpvQ0RMMFl5M0NaalhqZmlPd2FYLzAw?=
 =?utf-8?B?dGxyZWtPUHhrSlBUOFZtQk5UOThNMkg2MzF6Z2dpd1NUODlIUzA4ZUJRd3Zy?=
 =?utf-8?B?d0JHNVR0cWNSYW1qSFdscWNYZ3ZIWVRhcm82Ymc1VzZ2Znh0VEVPQkJDTWVy?=
 =?utf-8?B?TUhNclNkcEdjN3ErT3g4NTBuNnVSQ0tQb3NTQUJqQnFaN3NNSUVXVjJSYkRQ?=
 =?utf-8?B?b0JiS3BHSUw3WHNRajlVbHUrUWRuczFnRm9hRkdBdFJyT1BVcGR5UG1lbkxy?=
 =?utf-8?B?dktzaHV6MksyTmQydzRCb1FHTnUyUnlmZys4Z01XR3VTeW1JNHQ1RWFtM29Z?=
 =?utf-8?B?cm5heWFuWUxsUHdtaFo5MHFQTXlUcjhwMHpwL0p1SlRoSFRCM2t0dG1vanRs?=
 =?utf-8?B?Q0pmZjVtdS8zVHBCamxVOUhzdGlnNXR3Q3ZpYWFpYkZJaCsvaWVlbWdWYkQy?=
 =?utf-8?B?UUdpa3ErSWlwdjAwY2ZabUQxS2p1Q0ZjcGxGTDRCcE5GOW4yY1pQS3NYNnNW?=
 =?utf-8?B?UXRSSDlIVksyUnhqTlIxVDc0aEp4YXUxcURnV0psRkYzMnNsMmszMG9HV1hV?=
 =?utf-8?B?RExuMU9xQmdLQ1paZUQ3Tyt3Y0pXVEdoVnRuemFCYmFCVXBrUHhyOE9GdTJt?=
 =?utf-8?B?WnRta1JEcWxlMEFpelJTYnNLMlVJUElOaEZ5MnNqK3NQTzhORjRadlhiOXhl?=
 =?utf-8?B?VmhFMHZYMTZuYnFqZGNVRDBySkI2bERRbGV3cnNHZ29HTm5MVCtXdFBZQmFu?=
 =?utf-8?B?d05QVnFVd2F3TDh4SEsyK2lSWVI5bHJYd0dvREtnV0dmelh1RFNhcVZWWFZC?=
 =?utf-8?B?cnBwdHEwcEl6bTFCOVY4RW95cWc1M1VDdFIwdmplbnA0ZDljc2d6bTZQSE5L?=
 =?utf-8?B?Q0lKOVhxeWNwbGVORGFrZ3RGNlBMVWxOeVJXM29sakplZlFkVTcvYy9oQWNN?=
 =?utf-8?B?ZzhFYitOWkRIZVo4aWptUWNWY0F5dEtqWTI5SkVoRzRyRmNZZjFFZjk2VG9G?=
 =?utf-8?B?UEtVcmJSNGJSc2VXQlNBUWFYWFRXRVBFakpJVUNHQk0rU3graGx6bFIwYnBr?=
 =?utf-8?B?TGVSYmk3NldxWFQ2NGkyZysxd01QUUpJUVB3MzdlalljMlluYjhlQlhGN1R0?=
 =?utf-8?B?dXdvczhUOWlMb1JmL0NGK1NSUEhiWGFia0NPTHlZVVNkdFRiL0NJbGwrV3Y5?=
 =?utf-8?B?M2h1SWhpa1pZZGtOcGU3QWV5QWxSamlRR0lpcEZzMU4vYUZzcWRtRytoMGhV?=
 =?utf-8?B?bjNMTXBVVnI5S1RmaHgzcSs3QW9GaDliWFBoeUQ3U0dVTE9BMGxNY2hFOFdQ?=
 =?utf-8?B?RGJwclNBQVhSSlg0Vi81TUZ1NEwxSThHU1pValk2RnVMbUsxZEw2bFQvVTRk?=
 =?utf-8?Q?u1j+2hwCp46rKu/IcbQa2dXCfG+/oPZl9unLUmkSzpyK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67b7ec6f-b4af-4832-23c0-08da85da577d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 14:11:15.3638
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MTY5k8ED+mNcVUDjvJ5HsDVekfcgtBKL3p44ies0fA2tsJvqTNu1kTc77Ran8cDH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2921
Message-ID-Hash: MTY52SWWW4DFVLMZKSD2XKGNHFB3YA4R
X-Message-ID-Hash: MTY52SWWW4DFVLMZKSD2XKGNHFB3YA4R
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 9/9] dma-buf: Remove internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MTY52SWWW4DFVLMZKSD2XKGNHFB3YA4R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDguMjIgdW0gMTI6MjIgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFRoZSBpbnRl
cm5hbCBkbWEtYnVmIGxvY2sgaXNuJ3QgbmVlZGVkIGFueW1vcmUgYmVjYXVzZSB0aGUgdXBkYXRl
ZA0KPiBsb2NraW5nIHNwZWNpZmljYXRpb24gY2xhaW1zIHRoYXQgZG1hLWJ1ZiByZXNlcnZhdGlv
biBtdXN0IGJlIGxvY2tlZA0KPiBieSBpbXBvcnRlcnMsIGFuZCB0aHVzLCB0aGUgaW50ZXJuYWwg
ZGF0YSBpcyBhbHJlYWR5IHByb3RlY3RlZCBieSB0aGUNCj4gcmVzZXJ2YXRpb24gbG9jay4gUmVt
b3ZlIHRoZSBvYnNvbGV0ZWQgaW50ZXJuYWwgbG9jay4NCj4NCj4gU2lnbmVkLW9mZi1ieTogRG1p
dHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0N
Cj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTQgKysrKy0tLS0tLS0tLS0NCj4gICBp
bmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgIDkgLS0tLS0tLS0tDQo+ICAgMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4g
aW5kZXggNjk2ZDEzMmIwMmY0Li5hMDQwNjI1NGYwYWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBA
QCAtNjU2LDcgKzY1Niw2IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ICAgDQo+ICAgCWRtYWJ1Zi0+
ZmlsZSA9IGZpbGU7DQo+ICAgDQo+IC0JbXV0ZXhfaW5pdCgmZG1hYnVmLT5sb2NrKTsNCj4gICAJ
SU5JVF9MSVNUX0hFQUQoJmRtYWJ1Zi0+YXR0YWNobWVudHMpOw0KPiAgIA0KPiAgIAltdXRleF9s
b2NrKCZkYl9saXN0LmxvY2spOw0KPiBAQCAtMTUwMyw3ICsxNTAyLDcgQEAgRVhQT1JUX1NZTUJP
TF9OU19HUEwoZG1hX2J1Zl9tbWFwX3VubG9ja2VkLCBETUFfQlVGKTsNCj4gICBpbnQgZG1hX2J1
Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4g
ICB7DQo+ICAgCXN0cnVjdCBpb3N5c19tYXAgcHRyOw0KPiAtCWludCByZXQgPSAwOw0KPiArCWlu
dCByZXQ7DQo+ICAgDQo+ICAgCWlvc3lzX21hcF9jbGVhcihtYXApOw0KPiAgIA0KPiBAQCAtMTUx
NSwyOCArMTUxNCwyNSBAQCBpbnQgZG1hX2J1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYs
IHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gICAJaWYgKCFkbWFidWYtPm9wcy0+dm1hcCkNCj4g
ICAJCXJldHVybiAtRUlOVkFMOw0KPiAgIA0KPiAtCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7
DQo+ICAgCWlmIChkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIpIHsNCj4gICAJCWRtYWJ1Zi0+dm1h
cHBpbmdfY291bnRlcisrOw0KPiAgIAkJQlVHX09OKGlvc3lzX21hcF9pc19udWxsKCZkbWFidWYt
PnZtYXBfcHRyKSk7DQo+ICAgCQkqbWFwID0gZG1hYnVmLT52bWFwX3B0cjsNCj4gLQkJZ290byBv
dXRfdW5sb2NrOw0KPiArCQlyZXR1cm4gMDsNCj4gICAJfQ0KPiAgIA0KPiAgIAlCVUdfT04oaW9z
eXNfbWFwX2lzX3NldCgmZG1hYnVmLT52bWFwX3B0cikpOw0KPiAgIA0KPiAgIAlyZXQgPSBkbWFi
dWYtPm9wcy0+dm1hcChkbWFidWYsICZwdHIpOw0KPiAgIAlpZiAoV0FSTl9PTl9PTkNFKHJldCkp
DQo+IC0JCWdvdG8gb3V0X3VubG9jazsNCj4gKwkJcmV0dXJuIHJldDsNCj4gICANCj4gICAJZG1h
YnVmLT52bWFwX3B0ciA9IHB0cjsNCj4gICAJZG1hYnVmLT52bWFwcGluZ19jb3VudGVyID0gMTsN
Cj4gICANCj4gICAJKm1hcCA9IGRtYWJ1Zi0+dm1hcF9wdHI7DQo+ICAgDQo+IC1vdXRfdW5sb2Nr
Og0KPiAtCW11dGV4X3VubG9jaygmZG1hYnVmLT5sb2NrKTsNCj4gLQlyZXR1cm4gcmV0Ow0KPiAr
CXJldHVybiAwOw0KPiAgIH0NCj4gICBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3ZtYXAs
IERNQV9CVUYpOw0KPiAgIA0KPiBAQCAtMTU3OCwxMyArMTU3NCwxMSBAQCB2b2lkIGRtYV9idWZf
dnVubWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4g
ICAJQlVHX09OKGRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlciA9PSAwKTsNCj4gICAJQlVHX09OKCFp
b3N5c19tYXBfaXNfZXF1YWwoJmRtYWJ1Zi0+dm1hcF9wdHIsIG1hcCkpOw0KPiAgIA0KPiAtCW11
dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7DQo+ICAgCWlmICgtLWRtYWJ1Zi0+dm1hcHBpbmdfY291
bnRlciA9PSAwKSB7DQo+ICAgCQlpZiAoZG1hYnVmLT5vcHMtPnZ1bm1hcCkNCj4gICAJCQlkbWFi
dWYtPm9wcy0+dnVubWFwKGRtYWJ1ZiwgbWFwKTsNCj4gICAJCWlvc3lzX21hcF9jbGVhcigmZG1h
YnVmLT52bWFwX3B0cik7DQo+ICAgCX0NCj4gLQltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7
DQo+ICAgfQ0KPiAgIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdnVubWFwLCBETUFfQlVG
KTsNCj4gICANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgNCj4gaW5kZXggZDQ4ZDUzNGRjNTVjLi5hZWQ2Njk1YmJiNTAgMTAw
NjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQo+IEBAIC0zMjYsMTUgKzMyNiw2IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4g
ICAJLyoqIEBvcHM6IGRtYV9idWZfb3BzIGFzc29jaWF0ZWQgd2l0aCB0aGlzIGJ1ZmZlciBvYmpl
Y3QuICovDQo+ICAgCWNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyAqb3BzOw0KPiAgIA0KPiAtCS8q
Kg0KPiAtCSAqIEBsb2NrOg0KPiAtCSAqDQo+IC0JICogVXNlZCBpbnRlcm5hbGx5IHRvIHNlcmlh
bGl6ZSBsaXN0IG1hbmlwdWxhdGlvbiwgYXR0YWNoL2RldGFjaCBhbmQNCj4gLQkgKiB2bWFwL3Vu
bWFwLiBOb3RlIHRoYXQgaW4gbWFueSBjYXNlcyB0aGlzIGlzIHN1cGVyc2VlZGVkIGJ5DQo+IC0J
ICogZG1hX3Jlc3ZfbG9jaygpIG9uIEByZXN2Lg0KPiAtCSAqLw0KPiAtCXN0cnVjdCBtdXRleCBs
b2NrOw0KPiAtDQo+ICAgCS8qKg0KPiAgIAkgKiBAdm1hcHBpbmdfY291bnRlcjoNCj4gICAJICoN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
