Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E6E59FCDF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 16:11:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A824A3F614
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 14:11:26 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2052.outbound.protection.outlook.com [40.107.223.52])
	by lists.linaro.org (Postfix) with ESMTPS id DE8973EC34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 14:11:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUI5psnn9YU88ESkQsnWyG7rcl64OJ0HFnQy+NKXu/3hgGBbyryJqkMXNM50xs7AcnKggsGtidGGtKncR4lMjc/zmjhv7JObR12jzchpaTlURCy9zOipDk66ih+tHS3u9TAr/mChASsUXdvrRsyxfRy4KC6adfhpmws1i1gfjMYnjiWC1PLNLrnfCRPQ+Eji2ERhdbFe/pcanj4PhOPAykZ8flSCoZhMjnoor8pJ+8UVuOhYIVBGLGAOCBl5aTWMvmIf+iwmBA9thEJ4cXW0iF2P8vPH4VIP9A3qWxT0EbBR/KuO3hfcuAaEwivMENQn+uWNWnfbKSMfWZcBjI+4ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqPUQCej5vuqxvtj8Chlk3T/0EwQ6MX8daIfGCr7o8M=;
 b=Q/zpjzsd8PKzPRAiGtKOrNm8p3Q2b3e9k4ieBxDDyjh3EzefJ9Me1ZYtYK068+Rf4ZvEUam/56iYSNLWZlrr6RmaxFmC9GcKvAPuMehh989ef8FXBMu6lNNBYOjCeUeoTuhIKAbI9rw+w3/wZBHGX7BbKnvBxNuXfL4Eky+pL6EsN21RXyb8jzxiUMWLRlcT0e9ugLTt8n2ZKj8C+9s6Sg/0rX1BBNWrlomGiS9Q5FeUcg390XHLcsy2OGNafpV1JWwjg0uMTd4Ix7iudzEiWJHkENSurCy0kQKKLZwln0gR0ozM+PY1NphkAL5wFdM61fzZRWJlk2EOKClnFMdjPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kqPUQCej5vuqxvtj8Chlk3T/0EwQ6MX8daIfGCr7o8M=;
 b=Y//LBNIdSuEbi5KCGlt4AFPCl3nZqXVMxwAGSM0Xo5DjjgK3mybzaJy3nO/JGgUaCnA0OnmX91jzkmUpZqAa2s7ZIZidepaK0UpO6DCUtdG+3c1KxaIH0m+AIRiU17Sr+vqOtpsh3tZCYF5XPGSW/+O6p7nJ+8XLC5jSnKUTPfM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BYAPR12MB2648.namprd12.prod.outlook.com (2603:10b6:a03:69::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Wed, 24 Aug
 2022 14:11:15 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5546.024; Wed, 24 Aug 2022
 14:11:15 +0000
Message-ID: <d21197ef-79ba-3506-85aa-559e485cfc5a@amd.com>
Date: Wed, 24 Aug 2022 16:10:31 +0200
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
X-ClientProxiedBy: AS9PR06CA0201.eurprd06.prod.outlook.com
 (2603:10a6:20b:45d::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76c69caa-e6d6-4c43-2812-08da85da6d0c
X-MS-TrafficTypeDiagnostic: BYAPR12MB2648:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5VSKBO3XVc60D6700YOxH3qjcLUmE2UHEi2mI+MhmJ/MabENgXv175BTq9gicdOwsbLl6DboRwf3C0R4iUsSUlzUB+FErIFQujRWLaidiKxMNQpLmrftNqJiZtlUiRPPSmACZw8ngw/BmNnOR0cwbi5crKHiRsEYZwVO7kUUOkumfcWSsa014UC5Qif5PGZB+i65ibarH3vPad91UpSDM/7CDwtU6D35gvKLk9d7iuIpALo4ma+JTP9hTu3+hhfXDk32XQmPEkNMi1HGJ4a5y+ahZiuxzUJ4n1VWIQDTlIjySXqAAhI0ov69HTKzb/el3qeYKRXbxAhDY9RnxABZUiPWmpn/xAyALiEFv56f03dptW4bVGHeUaS8wOM/q0FnjnS8WF9FdTRVuhMWvcVmqD29hXtoVU61iESxVTeccAHajR50eum37uvIo9eKEvA3AuO4IRTI3Zz6MpUlBtvg2LR97P76fBFZLZUhrF34r3eI3EYO10cQhD8bnEPaIYvsHsRD9waTEIKjmX2FoZcE+cBGnXbZKzZYoVfurESKtTUvDuiwIuQ7ekARRFLnEHrFjbMczY+oaBrmBBf/5Uy99FCaLMl9joHpNQ25ZdI6ePwg2m5eEul94KmFbcn4vATqoT2+1pZo4jjX/GQ1ltpkNkHBJngnvOnGnu+1mY1hkbbjY7iQZ8HTFI6fTtIjd+ggyVzELS14e0/7y4vK30BcGroHHHIGBXDjt7OvdjSbVNkaR9O/oxyULbWkEauoZPlmwBBRHg79EZfpjxeXkwgTm38lhqcWN/6m5N9RP1/Era0rJl3yuBe7y/cWaej4H757
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(8676002)(4326008)(316002)(66476007)(66946007)(110136005)(66556008)(8936002)(7416002)(7406005)(5660300002)(2906002)(38100700002)(36756003)(86362001)(31696002)(921005)(6506007)(41300700001)(6512007)(6666004)(6486002)(478600001)(66574015)(83380400001)(186003)(2616005)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bDRhU3QzVEpIbHdENXZYMmJVYi95UjdFWVQ1c2Rxem1hQnd2YnpyZW1wSE1q?=
 =?utf-8?B?U2JJT0NzK1NEZ3Q2Q2w0YVlpOWdrUmI4UWdZeWYzNm9ZQnpWV0EvU0pGR3RV?=
 =?utf-8?B?eXlJTEVnTmJIdHpxbXVjMm1FZnJOdVE5dkxqM2NuTXFHdkl5dnRCOHhSTkwv?=
 =?utf-8?B?OUNuNXgwY0FESjhadlZxTUxZZ09mWFFDc2tWa1FMQzQ2K0NVU2JZSnZVakJ1?=
 =?utf-8?B?RXNzdHZkN0hNOGpveTJxZUV2T0haYUVZQW5wZGNrUWRCMGJZN05FUk8xVmZ4?=
 =?utf-8?B?VzJXV1JDalpWVWVuZWRHQ1kzZWlSVi93YlhiRVRNcERHR3JFaDR2S3hqRHV4?=
 =?utf-8?B?SkxJRThRb0Z3OVYxRUs2eVhlcVpuUHRHT1NGWGlXTTNtUnZwbnhWS01WRjdw?=
 =?utf-8?B?c1N4WDhsdUxsQjFkamNYM2VzMWhOeXZPT1Y4a1ZzKy9iS0lPUEp3UjJEVi9z?=
 =?utf-8?B?R1p2d2NtUVpuaVBlTWszZU80M3lTRjdXZkJya01RV0gyR3lkMnVUZmJvKy9X?=
 =?utf-8?B?ekxYaEJlbjcwU0paYVFmcld3bFBwUGZWSFRJVXNHMURORmN6UDdodlV1Q2xG?=
 =?utf-8?B?bW4wZWVPOTJWdnd2c2NaQ3dLcm02V2hsUENmUDNOeVNsNU5zWUNqc1VZUkJm?=
 =?utf-8?B?N04zVTZHcVRNVEp1cC8rMHg0WENGYWp0c0VGWTVHRjRNdVUzMDk1L25KVkFT?=
 =?utf-8?B?MjJPeWxneWx6K3NjY0VIdFhkOVE5dW94WThNSjcyRmVEK29EaXlLbGFVbXIw?=
 =?utf-8?B?eklrQzRsN3JTay9sOXJwVnp5VnppL1NHaGxyc0pmRU4xVnJWUlVjK2ZBcUtT?=
 =?utf-8?B?ZkNIS0lOUU0zVysrcU8wc25CeTRBeUJ1dlFBMVVZOXFKOHVJNU9qV0lzcjk5?=
 =?utf-8?B?NUVPb0JhekpLaDVEQUxNQVFmeXAvOVhZZ0ZHNWhFaGJYV1p1TFRCaGdvYTBN?=
 =?utf-8?B?U1BqdlBML3cwaXVOUksrUTducXduV2xYbkJMNHI0aWFoczNUOTl6ZEo5VG9K?=
 =?utf-8?B?QUxhdmFZNWFjbHhQWlI1eUsremV3blNFUUlPL1NDM3llcy80ZlV3eXlYeWQ3?=
 =?utf-8?B?RTRjYkI2Z2t4NUxidE5TV3NpNDFLeHB4YUt6MzNNcmJid25mdVZuZ3hqaVFQ?=
 =?utf-8?B?MExudlV0VFZCQmUyNVY4R2hSdkZEc0tnRENKZDNoK1lNVnEzVklDa1RmZGQy?=
 =?utf-8?B?dDMyaFp6eEdadVRyVCtYL1puN3RQS3VxT01ndENZMTNFblBvSnArOUJ0OFIx?=
 =?utf-8?B?ejVnUGIycnd1YU4vZ1lzem12R3NJQUhjQUMvQmRSdTJ1VVVCalMrTHlsWlJC?=
 =?utf-8?B?TlcwS0hDSnY3SCtqdTVmMnowQ25PUHQ4cTY0VWZEU2poeWo3SU9yWjNXbDlT?=
 =?utf-8?B?K3pkTlgwWDYzbmE4RzdjNU55bzVtSUlJWHNqMi9ZUGFtL1JtREpRTnAwZlNQ?=
 =?utf-8?B?QXJ0ZW5oTzJOS2tJc0E4ckF0bUY0bFpzUjFQUEZqb1kzazdJWXdIQ21LZFhS?=
 =?utf-8?B?ZXd2NnNNc3lkSTJvaGdzNHhCK01oSWpTYllLUzZ1cXRGWkYrUmNGcXRaQlNF?=
 =?utf-8?B?SXFpcllTa3EzWjN6WkRscGVGdURjS1MzdlFWcVlkcmQ1WW5pdDhhL3RJMjg4?=
 =?utf-8?B?NEh3Uk1RaFVZMFJKMW40bG9PQkgwQjlMSUd4ZzRMbExVcDJmOXVHYUQyZ2Zz?=
 =?utf-8?B?RGFDaTBBdi9LdjMzejEyRFh2cFU0dUo0cTkzMm8rVmlqVDZON1JEUFhObVlo?=
 =?utf-8?B?YUVWblVmaVZhVS9XMWVWYy8vaVdhZnhNdkNOWmVlbXZjbEE4OVgzay9Wa3VZ?=
 =?utf-8?B?cXFWZVBmQll6Q2ZiWVoyRllwRlRIQzFqYUJkVHNtVUthZjdYc1RHRE9mYjFq?=
 =?utf-8?B?dmpDUXhLZW1QeTRxZDRueklqUGpzSyt5bDhpUkxHVHRGVWJnUU1pQ2k2LzJv?=
 =?utf-8?B?UWtldHhvOU1ORzRXYTJUaGU4QVVLaDY4MHFXbFNPeldZTk1zUU5GTkUvQ1FS?=
 =?utf-8?B?WjlXRDlzRW16MXNpbUYrTEJSaVhtRFJZdmY0dzkxRHRBZUF0UUY3bGVVQmJJ?=
 =?utf-8?B?aWFwb21NK29nYTlvRkpVZHVjcTJ4bllycGJpcmlnY0lDaVJnM0lIbFYyUTl3?=
 =?utf-8?B?WHBMNDNqTklPTzV3VzQzK0dzekduNnRPWHVYTFpFWUxQSmZRU2x5MVhpbUpG?=
 =?utf-8?Q?ILnLIrs5Ygm+v/XQ6cJZqkDh2bCP9E1S12oQDCawdwHH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c69caa-e6d6-4c43-2812-08da85da6d0c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 14:11:15.3482
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jp+ksizDe2sYMUnT835OV/S/9lhwOXHwCsiMjF3DqrQWyU7iN8QBhkiekMxXDHKY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2648
Message-ID-Hash: 75TRV7AB3KKBTTYXYMEQZ5PG4HLC4K2X
X-Message-ID-Hash: 75TRV7AB3KKBTTYXYMEQZ5PG4HLC4K2X
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 9/9] dma-buf: Remove internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/75TRV7AB3KKBTTYXYMEQZ5PG4HLC4K2X/>
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
