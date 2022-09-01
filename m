Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA7F5A8EA1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:49:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA4DB479B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:49:23 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2089.outbound.protection.outlook.com [40.107.243.89])
	by lists.linaro.org (Postfix) with ESMTPS id 7BED047965
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 06:49:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GK82JKVXMMEfjra4ba+Bbnyw4cyJHljQyH3Dupfx5ODHOu+mNpiLSKJRBocoP7hJoGiuBab3ngkHRVk454Py8fdfSHs8RkyAj3yBdx+6fAFhoWI2AASdv/d2s0jMeJDIuHeoduPavY3nOi92VfU/l63LhkBDNNuDNNrtVPZ2++MEOtSY0cBrQWXpXZ+rUHOg5KkgfrvSzAj4P8YVsu3vepaZBdwakvWX8u0Euloz1pypTfSIFXZK1gqNPA2DUK4RmKly/zOcLe4cEAZ2sQaupVmwMQEeGisUkbJpIou41gMihLlCcEgAG7iltFB16fjmAcUkW/swt8x8rzmtfm/fKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPV+fN/IgPonO2d/3mQjufZK877q8riVBr0uiCKDOKs=;
 b=MxBzX0ycYn7NuOzR+d0reLv08HGaVCZUjdk6L8HW85q9rU/N35LAdYPmE7kl+dHu9sLpPJFXWnDEm1xdAkeUxgtE3/K+UhYkDr/0BkoQLeKDm3Yo5Tz2rjIDWAikGihAWEIUsGCuu3GJ2uvcAFPGHaqLVLJV5r87fMYr4RuPyosS1JaPW/MBAmlZVLr5df0nO7CIFYRzzhmOyeerWDDxmWBQzYFlsrwE15/Z8xcK9+7ZA/T9PBSSBOcCMIX52Wq5UOWeOxPLh6xAjcPsdq8TEjs9wmClrXYOHsRO6bwj/72CRcwNie2oGtZ92Jg9HlQJm1UjSNGo5F4FRa5b6GXctA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZPV+fN/IgPonO2d/3mQjufZK877q8riVBr0uiCKDOKs=;
 b=EDEVblmhCaWwc0JcDYL8iCHEA+Q/XIDPzMYYzjJYCiod4e+Bo2QQMufj3WWEB22FjQ1bTwz0Hjo9hSQKe19+r1t1Wy9quBs/Cb0RIrVqakS1cWubGEW/abT/gMDGt81dAYzy0xjJXQHdzLNw1y+4WIp367b7RU9aB4iClVl+s8w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB4360.namprd12.prod.outlook.com (2603:10b6:208:266::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Thu, 1 Sep
 2022 06:49:16 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.011; Thu, 1 Sep 2022
 06:49:16 +0000
Message-ID: <7108c7c3-865e-c74b-b993-1227f31a0ef4@amd.com>
Date: Thu, 1 Sep 2022 08:49:05 +0200
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
 <20220831153757.97381-9-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-9-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AS8P189CA0045.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:458::14) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2e243b5-b0a1-453e-2ddf-08da8be6169c
X-MS-TrafficTypeDiagnostic: MN2PR12MB4360:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ViNPMCT6YUsrjN4C0212f9sdI8meg/rmTjuFjKvSUparj4FH3lWoT0Vy6WqkMavrm2vEYfpK+Llp+eCMWJ0PSQqNVDUCJFkvmCgnwmsiucgk9b9HeOe0F3DmMoTHGY1DZY/jBtN4F5yJQ5CcqxBMS/lDSXNjtDsskI6yzHjX3a35f+XOmhwoUfckYh9gkfw+UBDpiPxkPbZomH7dPCHzzBlC3jCeIKvi9C/oe2vniy6lrufsdoPDOjAf/d0tF1aEJ4f5xO0jVsLc5q6F764ytQtrUKNrIiHYONdZIGXT8LPY6RbIJncht7tC1Q/seLop8vtwQP4SWWaiw6PB41sFm7Se9ot+TE5NR1R0ITQ8ga0aDhMxBO9j6eEDZ8Um3IjEL2tt+rOI687PhyZ8endNT7YywBL//CKZRH/rAPUGl66dVNLTOYp+xGGIexTLyCP3A4G488WHR+COkt9OKvF71Di8COhb11BKMLcVVJklDhYHuJyE3ZzEhraHPVLVtdmqVBwvT/lkqIBRikS2KyTDrF3ltvM5yfGosBQsLnNxXxvMA4FK/xGrpRAwYwzKgLBCZXs57VyQVvX9wANGjfjjB1seTx5+BQHWguL0yUd93SzukAlsR+8EE5ryEiWUQxmqpKWZ9mvMvEJ2S9npUqpt3Z73Qt2V36ACRjlRM7YrJ4WeNNs2mh/KAZy4viJ5RGol3gRxdGtO7E9vQ2pJCQmVqf6f+tCjzChpOTUukc7zpiYq0aDhRS3BGb59bQ7ntRW9UaNl17JmIWXsBBlJ5BJ39Ia96F7DCFjOoqJ4XFzRpoywJZlOEwEMd//BsqQrZZU9
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(83380400001)(38100700002)(66556008)(110136005)(316002)(66476007)(4326008)(8676002)(66946007)(478600001)(36756003)(6486002)(31686004)(6666004)(5660300002)(41300700001)(8936002)(921005)(31696002)(86362001)(2616005)(66574015)(186003)(7416002)(7406005)(26005)(6506007)(2906002)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bjVVbmxuOUxGVUdNbVFGYXp4WXZ3cDdPMkVIdEdOUnFIVUd4UW53b2ROTUc4?=
 =?utf-8?B?REREK2tMQTdrRDVxWTFXWWRpM1AwQU9hdzV3OEd5amZBb3FWL1kvNkxPbmZm?=
 =?utf-8?B?K0M2cDFYL1ZreHpCYlJsSGtZczFZWW1PbVY2bmRqVXgvTWlhK0Z4Z1RiSWFD?=
 =?utf-8?B?TUdXKzQrNURNQlpEbE5IL1B5RC93eXIxaG52bGVxUkJqdWMvVTVXTTBxdkdo?=
 =?utf-8?B?blcrVEk1V0JYbDN5ZGRIZEVlZ1VLdm41ZHFJSm9KM2pZaFk3Z2NJUTU5YU45?=
 =?utf-8?B?YzQ0blpjaGR2K1lKYW5udktqS0VnQmtqcFR0ejFZVE1ITjNKcWZoRVpwdGFn?=
 =?utf-8?B?TVFVK0ErRS9Sc2tiOElZSkkxcmt3Z0xFU3EwRVNENTMxakJDNUNzOFc2endH?=
 =?utf-8?B?bG1LWTJpeVdqZHlmUFR5MnozK0xLaFJxSXUyL2lLdUZUWHpBelNxdmh0Rmwx?=
 =?utf-8?B?TWZza0dKWUNhRk9NeTZhYlFPUjVkT05QTmNNRENtUnpzOTkvNFlCRnJUV1Qv?=
 =?utf-8?B?bjBQZzFDS2ExRXRhSWJRayswQ091cGZ1RlBjL2FNcG9ZaXltdXFoN3hlMjg0?=
 =?utf-8?B?dkIydzl0MU9kRTlaUHZ6Y3FvV0lXOUdPLzYwcDFUYUNHRFhrdzljUTliam9P?=
 =?utf-8?B?c1E4WGVQMStNMnhGNEszbzlTVkM0U2pucE8rZk5vL3J6OXdaWCtBdEh6bmpY?=
 =?utf-8?B?ajl1T1FmM2hvNWVBc1FUdzRSb2lXMno4YjhzYlNFWTE5N2ZBMU1PQlAreEhz?=
 =?utf-8?B?ZmU4c0JUYjA1NThlczlNSDNhWUJVMXIxcy9yY2pseERwMjB3T1R3NEdhL0l1?=
 =?utf-8?B?bHZzY2gvaHpWbTUxUCtLcUNwdWhvVGxUZitnZHZMMk1wV0lrSHBDSk5FS3U1?=
 =?utf-8?B?QXZ1amcrSXU3azltS3hIeVdXTjhtVmp3NU1NNFdBcHNCRVdEOEsyMk1mR21w?=
 =?utf-8?B?dk1TcWd2emozczBCUGlEUXFmTis1WUNqVlRMaFJsQlNiNzFsRThVL2lNV2ZV?=
 =?utf-8?B?NEFaWDlnSUVtWUl4NVByNFhMUXVpWE5mMVY2NmRxV3BnWWtmMGUydjlPWnRE?=
 =?utf-8?B?Rjl6VENJOTcyWXB3WmNGc0JLTkI2T1AxMGp0UnRZaldhNmNtVk1VaStPRUo3?=
 =?utf-8?B?RW9XRzNYN3V2cVZOZi9UWXRESTRFS0JOelhYdDFUbzdpSW41ZVYzc01vWFZP?=
 =?utf-8?B?YnNPU2FublRFL3YzMWt3OTVIZ3FUVzBFMTZ3NTlxcXRxSjU2TjNrQ2hXSnJs?=
 =?utf-8?B?MWdycDZwcXpUSGdsTlg0WUJvbTVjOWcvTnF0TzVLNVJLekRmakhsNzE2WjNH?=
 =?utf-8?B?VVZLZVNicGFBUTNCaHg0OTM4ZlVxQmVXSXlNNlZIeVFyRDhjUVFWVW83NE1X?=
 =?utf-8?B?aWJCU2FlZlZvaDB1T2FVUFk1cTdhUmYzTzdMakw5R0E4VUdlNFFacWZlOEJl?=
 =?utf-8?B?TzNzYyt2azJXNkQ5cllTQm9xd3hBSmpqSlIrcG1LSHNRSXVpaE9XU28wdFor?=
 =?utf-8?B?bjFmWWdxMHlZTUo4RFc3dDF6U1o5dU8xbGlhOStHRit4NThZeWhOd1VwTW1m?=
 =?utf-8?B?NVFmV0lVL3lTSUVzM1h2K1ZkNjI2U29OSUhXMXN3TFRUQ2VwZnZmd2M1Wk9X?=
 =?utf-8?B?cHAvYmFmNGhSc3FTamhGSzRCVUZoTTdxSFJZTFhreE1GU3BPSHg4bDF0TUVs?=
 =?utf-8?B?cUVIZEQ5endJMzZCSk51K1FpT2cxNXJqelVqcjdQR3JrRVJORlpvSmVGS3NR?=
 =?utf-8?B?dGVMekd0cy9LVWI2ZmFnc2lYQUo0SVZGWld0VkdhTWNyU1MxOGQvdVZ6NW00?=
 =?utf-8?B?b0ZFbjFGelVRWks5WEl3UjdoNjRlUk5UN3NlN0RWSVhQWHZvY1duZUl1a24w?=
 =?utf-8?B?VDFBWlQ0RldmKzU0RzIwOS83QUtVMjJYblo4aGQ1WWgrMGwxNTliSVJJckdD?=
 =?utf-8?B?ay9ya2NIczBpV3dUQWtoZUlvYXg1WFdrUU1qV2xDQzFvWi9mS0lEdjZRR1ZP?=
 =?utf-8?B?NDhqaStleENNUFlGU0hYNVkyNXprTkNqWXhNa0pWb1krU0l5WTdPT2pSclV4?=
 =?utf-8?B?YmVydEcvRTdHSW9UQXhPMnh6cVN1MlJFcngvYis0L0JiVlBLS2lRVHc5bjJk?=
 =?utf-8?Q?RNBNDJiJ3tT74c54wYf2wtBGY?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2e243b5-b0a1-453e-2ddf-08da8be6169c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 06:49:16.6294
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yQm26iAz+Ydnnf2Sc1GurjvLZy0uzFmUkttuA2nmkIazZdgnldYVSgQ8pmGf0q9V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4360
Message-ID-Hash: 2LV7VM22IXK2MOKPI3V2VM76QVUVHIP6
X-Message-ID-Hash: 2LV7VM22IXK2MOKPI3V2VM76QVUVHIP6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 08/21] drm/tegra: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LV7VM22IXK2MOKPI3V2VM76QVUVHIP6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
VGVncmEgRFJNIGRyaXZlciB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nIGNv
bnZlbnRpb24NCj4gYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBvZiBk
bWEtYnVmIEFQSSBmdW5jdGlvbnMuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5r
byA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAgZHJpdmVycy9n
cHUvZHJtL3RlZ3JhL2dlbS5jIHwgMTcgKysrKysrKysrLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dlbS5j
DQo+IGluZGV4IDgxOTkxMDkwYWRjYy4uYjA5YjhhYjQwYWU0IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdGVncmEvZ2VtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2dl
bS5jDQo+IEBAIC04NCw3ICs4NCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaG9zdDF4X2JvX21hcHBpbmcg
KnRlZ3JhX2JvX3BpbihzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBob3N0MXhfDQo+ICAgCQkJ
Z290byBmcmVlOw0KPiAgIAkJfQ0KPiAgIA0KPiAtCQltYXAtPnNndCA9IGRtYV9idWZfbWFwX2F0
dGFjaG1lbnQobWFwLT5hdHRhY2gsIGRpcmVjdGlvbik7DQo+ICsJCW1hcC0+c2d0ID0gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChtYXAtPmF0dGFjaCwgZGlyZWN0aW9uKTsNCj4gICAJ
CWlmIChJU19FUlIobWFwLT5zZ3QpKSB7DQo+ICAgCQkJZG1hX2J1Zl9kZXRhY2goYnVmLCBtYXAt
PmF0dGFjaCk7DQo+ICAgCQkJZXJyID0gUFRSX0VSUihtYXAtPnNndCk7DQo+IEBAIC0xNjAsNyAr
MTYwLDggQEAgc3RhdGljIHN0cnVjdCBob3N0MXhfYm9fbWFwcGluZyAqdGVncmFfYm9fcGluKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGhvc3QxeF8NCj4gICBzdGF0aWMgdm9pZCB0ZWdyYV9i
b191bnBpbihzdHJ1Y3QgaG9zdDF4X2JvX21hcHBpbmcgKm1hcCkNCj4gICB7DQo+ICAgCWlmICht
YXAtPmF0dGFjaCkgew0KPiAtCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQobWFwLT5hdHRhY2gs
IG1hcC0+c2d0LCBtYXAtPmRpcmVjdGlvbik7DQo+ICsJCWRtYV9idWZfdW5tYXBfYXR0YWNobWVu
dF91bmxvY2tlZChtYXAtPmF0dGFjaCwgbWFwLT5zZ3QsDQo+ICsJCQkJCQkgIG1hcC0+ZGlyZWN0
aW9uKTsNCj4gICAJCWRtYV9idWZfZGV0YWNoKG1hcC0+YXR0YWNoLT5kbWFidWYsIG1hcC0+YXR0
YWNoKTsNCj4gICAJfSBlbHNlIHsNCj4gICAJCWRtYV91bm1hcF9zZ3RhYmxlKG1hcC0+ZGV2LCBt
YXAtPnNndCwgbWFwLT5kaXJlY3Rpb24sIDApOw0KPiBAQCAtMTgxLDcgKzE4Miw3IEBAIHN0YXRp
YyB2b2lkICp0ZWdyYV9ib19tbWFwKHN0cnVjdCBob3N0MXhfYm8gKmJvKQ0KPiAgIAlpZiAob2Jq
LT52YWRkcikgew0KPiAgIAkJcmV0dXJuIG9iai0+dmFkZHI7DQo+ICAgCX0gZWxzZSBpZiAob2Jq
LT5nZW0uaW1wb3J0X2F0dGFjaCkgew0KPiAtCQlyZXQgPSBkbWFfYnVmX3ZtYXAob2JqLT5nZW0u
aW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCj4gKwkJcmV0ID0gZG1hX2J1Zl92bWFwX3Vu
bG9ja2VkKG9iai0+Z2VtLmltcG9ydF9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+ICAgCQlyZXR1
cm4gcmV0ID8gTlVMTCA6IG1hcC52YWRkcjsNCj4gICAJfSBlbHNlIHsNCj4gICAJCXJldHVybiB2
bWFwKG9iai0+cGFnZXMsIG9iai0+bnVtX3BhZ2VzLCBWTV9NQVAsDQo+IEBAIC0xOTcsNyArMTk4
LDcgQEAgc3RhdGljIHZvaWQgdGVncmFfYm9fbXVubWFwKHN0cnVjdCBob3N0MXhfYm8gKmJvLCB2
b2lkICphZGRyKQ0KPiAgIAlpZiAob2JqLT52YWRkcikNCj4gICAJCXJldHVybjsNCj4gICAJZWxz
ZSBpZiAob2JqLT5nZW0uaW1wb3J0X2F0dGFjaCkNCj4gLQkJZG1hX2J1Zl92dW5tYXAob2JqLT5n
ZW0uaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCj4gKwkJZG1hX2J1Zl92dW5tYXBfdW5s
b2NrZWQob2JqLT5nZW0uaW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCAmbWFwKTsNCj4gICAJZWxzZQ0K
PiAgIAkJdnVubWFwKGFkZHIpOw0KPiAgIH0NCj4gQEAgLTQ2MSw3ICs0NjIsNyBAQCBzdGF0aWMg
c3RydWN0IHRlZ3JhX2JvICp0ZWdyYV9ib19pbXBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRybSwN
Cj4gICANCj4gICAJZ2V0X2RtYV9idWYoYnVmKTsNCj4gICANCj4gLQliby0+c2d0ID0gZG1hX2J1
Zl9tYXBfYXR0YWNobWVudChhdHRhY2gsIERNQV9UT19ERVZJQ0UpOw0KPiArCWJvLT5zZ3QgPSBk
bWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2VkKGF0dGFjaCwgRE1BX1RPX0RFVklDRSk7DQo+
ICAgCWlmIChJU19FUlIoYm8tPnNndCkpIHsNCj4gICAJCWVyciA9IFBUUl9FUlIoYm8tPnNndCk7
DQo+ICAgCQlnb3RvIGRldGFjaDsNCj4gQEAgLTQ3OSw3ICs0ODAsNyBAQCBzdGF0aWMgc3RydWN0
IHRlZ3JhX2JvICp0ZWdyYV9ib19pbXBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRybSwNCj4gICAN
Cj4gICBkZXRhY2g6DQo+ICAgCWlmICghSVNfRVJSX09SX05VTEwoYm8tPnNndCkpDQo+IC0JCWRt
YV9idWZfdW5tYXBfYXR0YWNobWVudChhdHRhY2gsIGJvLT5zZ3QsIERNQV9UT19ERVZJQ0UpOw0K
PiArCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYXR0YWNoLCBiby0+c2d0LCBE
TUFfVE9fREVWSUNFKTsNCj4gICANCj4gICAJZG1hX2J1Zl9kZXRhY2goYnVmLCBhdHRhY2gpOw0K
PiAgIAlkbWFfYnVmX3B1dChidWYpOw0KPiBAQCAtNTA4LDggKzUwOSw4IEBAIHZvaWQgdGVncmFf
Ym9fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpnZW0pDQo+ICAgCQl0ZWdyYV9i
b19pb21tdV91bm1hcCh0ZWdyYSwgYm8pOw0KPiAgIA0KPiAgIAlpZiAoZ2VtLT5pbXBvcnRfYXR0
YWNoKSB7DQo+IC0JCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChnZW0tPmltcG9ydF9hdHRhY2gs
IGJvLT5zZ3QsDQo+IC0JCQkJCSBETUFfVE9fREVWSUNFKTsNCj4gKwkJZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50X3VubG9ja2VkKGdlbS0+aW1wb3J0X2F0dGFjaCwgYm8tPnNndCwNCj4gKwkJCQkJ
CSAgRE1BX1RPX0RFVklDRSk7DQo+ICAgCQlkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koZ2VtLCBOVUxM
KTsNCj4gICAJfSBlbHNlIHsNCj4gICAJCXRlZ3JhX2JvX2ZyZWUoZ2VtLT5kZXYsIGJvKTsNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
