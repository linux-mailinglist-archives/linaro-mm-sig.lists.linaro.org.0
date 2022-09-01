Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4A05A8F4A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 09:07:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AFD4479B6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 07:07:22 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2058.outbound.protection.outlook.com [40.107.212.58])
	by lists.linaro.org (Postfix) with ESMTPS id D093C3ED3D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 07:07:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5g0ZS9cdUzwdawSvHTk45POPngoABamcvme7l2d6A4/bCLFyavQ3bEj/OCV0QzUfhqfTV+RfKXYpoKYcDqnpwcH2eEVaKQiCkZYgTwSr5YlWzzqlYCHGJ9k5pZ3D6Xv1+UGO7nDTFgNpRWvkh48lMKupPu0VGQGnbjPoqpVklp9ug3zown95x8ZE21tZQ0NzK6hIjT/6Wa0dOoO2dSUHTvNB/n8T7NMT0vzPkNG0m4t7DscW5SeOH/0GFPj9p7NiBPkIQ1mj0Z0zgWXr673vIkaqFxSAvZP+XAswliFsVH3D8cjmPXgj0h/VIS3/A5dzWiyv55u7/Na9ySekyrVeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/wS6hoZqqxTAYIbFTrNeuiGnw4mq9SD4ZnSLOxh3OOo=;
 b=ReTFtTsEGBynKm0mtbQReJ3WzMDdtp/ZT+IvPmDZRlEScpWvKp042J6CFeAqlZ1nm2wGCouT7qQM2VQvaQXhWuwdClMtmGa2FibOxZ95vmct2qoHr/GkNP88tEXz4XgGOcAKL1mx64FiPuK4wuhTXUzAo9qkhHip0SJvo18gWHPzFqRa0UZj04++Y+EpNKdp5qwGoFGnG3SjbAL2xPY2pyoSN08s2GjR2se7B/DAT9Su6XTRA1TkDCHFHaoasl26eVg4UXvhXv2KQP5u4TO5WPejSvjExUBpgc3rwID6d2QiDfyi4uuT1Jm6bHxdn4rcmF8iomRCvJ4tenheyPbpNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/wS6hoZqqxTAYIbFTrNeuiGnw4mq9SD4ZnSLOxh3OOo=;
 b=aauMJWVGvAJCh0vXZSzbJOmK7QJxZMzEaBqIIPibKb1PQy0KYeMVmMSnDFhM+nHr0E7y7k+TTUvRwSLoI8vNph0g36SbJAjS76pej4quWHR2+OlosC/a3M7cev/glKjaiRh2AQkroTRjzQNyISAr7bXgHGBvAofoUIYCBAtA+BI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by DM6PR12MB4299.namprd12.prod.outlook.com (2603:10b6:5:223::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 07:07:15 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a%4]) with mapi id 15.20.5566.021; Thu, 1 Sep 2022
 07:07:15 +0000
Message-ID: <4e82d32f-6e5f-edaf-17f4-4381f762ac21@amd.com>
Date: Thu, 1 Sep 2022 09:07:00 +0200
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
 <20220831153757.97381-17-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-17-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AM5PR0301CA0007.eurprd03.prod.outlook.com
 (2603:10a6:206:14::20) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: da19bc91-840c-4876-7f25-08da8be8994b
X-MS-TrafficTypeDiagnostic: DM6PR12MB4299:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Jga8O1+qmXnK5URUTFGLeQXsXW8cBLVK00eGD0wz7a+W6Hvvr/9PBvfOyhSeYVJ0JXKo0lAiG3a5cmMPDbjH45hVHYovIOYGXOhOvb1YHqvGbO9x61ZYy7M362ViA7bnJyVXuYi5HFTdDdbpRkUQ2D/NPQzNEGCyOI6xC47nYPU1shjclVTMCgqYcGLdXGhtcQPvELeFwZrQv3eFEx0+Aczb0/cgRjbSGwgfk/pxD0ui1OmGIAbL1bv3k42pKPxx4iHyEAWZewCwJSgczFMeKlRrGR8dXCXGJpcdx1eLpVahBGktTbSN3d+w9LiHpR6DwGTMfmdgk3V6z4FgGWUZmPadVs8rJi1im5MRBrvWDS4e8BRlETfqLE2MW9GcXKHgpNeDMeUq+UVEhMiVt5E5CuVjkBA4+2S/GCwP0DKKmMqbG0l6I8TvuV8mbMcu1+t49CuHgI5VCrB8kt1FUwLL1HKF1OzJiRM/gIKEBGvDYbsbak6nnhRDWKxfMw+y5iFs9S2y0QZWGiVRjLeENT/IWq1l3v2v3fNZWUegWknLyxLCNPoFKUrMYkb6OjbaiphArEFlXOock2iJlfrkFykuXiAlm4bDoiVyFP2la6GykNACwIpn/3F7A2qZzbVb/e9JF18YcE+2ocQekJ+DvEe88BRFEVjrLzCmt9RUZ5h5Or2bC0s79Of6+6le5lyfqwtT7NJ9AgN5eKqDvORFNSBkGaOKpIZeNd9tpCTbmoGy/M8QAgXUFvPm3IMgB2JyxxOy26XeUttRtSlIdQjLbSm07TaluKfCb5jnKQ5PjWYszHlz2622aPwK1YravZLQscm3
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(39860400002)(136003)(376002)(346002)(41300700001)(6486002)(26005)(6506007)(316002)(6512007)(6666004)(2906002)(86362001)(66476007)(36756003)(31686004)(31696002)(478600001)(110136005)(66574015)(2616005)(921005)(186003)(8676002)(66556008)(7416002)(7406005)(66946007)(38100700002)(4326008)(5660300002)(83380400001)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N1dMK0xpRUFSTHNBaTE5U0VOMlJPczJhZ1BBTUhqYWtkOUxzM2pIWlRGOXlw?=
 =?utf-8?B?Y1JGOUk1REVmQ3ZPUVhYeTZSZ21tYTg4bnBrVWNTOTR4ZGNyOGNZeVg4d2lo?=
 =?utf-8?B?UmdKVzIxNWN6ak8yak92anU1eUZydmRTallmVEJrekNJbk9BTVZFQU9qQ29H?=
 =?utf-8?B?cUg4SE5mSDlyVFRlazJxOTVOM05IUkRYT0d2RzRjSlhSUDZlVkZwK0ticlAv?=
 =?utf-8?B?Vk1Gb1hvSTZBRzhDZ3dvTzlydkhMdlhtRTlyQzRucDBYWDlGN2hFcjk3UWow?=
 =?utf-8?B?UnVEazRMKzZVc2tmRDVIZjFubHdYUmtZaXNyeFRKUzBYQkovVmd4bElIeTMr?=
 =?utf-8?B?SkRmRlhSTjVuRFdRVmtKUlE5NXZIc3RIeWI1aHFHU25XTDd3ZlNtZGhWTkpn?=
 =?utf-8?B?Zy9US3ZiMDYzc0RmMUhlLzV5ZXd0NXVYV3BqdHVZWTlwU0treE9MSkpSYW1C?=
 =?utf-8?B?OXJncUk0SzBqbENYaVZnRmsydEZtNzBTK3Y0OHpjSlRGVFJ0cGFUMXVHU2hw?=
 =?utf-8?B?UXIxOUROaXNmMjRWWjVmY2ZKN2dNOExONGI5SDRWRE1FTEJOdnNPcHB3VE9s?=
 =?utf-8?B?Y2hYNjBOZTUrdFU5T3NxYnZzVzN1aTZ5S2c2ZzZlVUh1bGJuOXNiZFU4aS9u?=
 =?utf-8?B?TDJOb1I4ZXRLRmFZVmh2ZVBIK1lMYVBNbDZnUG44emU2bjFJcDdHcVVSSVhD?=
 =?utf-8?B?YmpmdkdDdmYzc0t4citaMWg3ZkVGV1l0ei9KaHFMQitSTlRXRFlSdzFQcFM0?=
 =?utf-8?B?T2JjcW1pMFB5TER0dFpYRUVVTXdhVUpTWDc4Y1NUZkFtZjhBU2JLUEVZamFz?=
 =?utf-8?B?Qk4wRXRqcENSY1lPYU1RUGdTcUw3cVloSWphNGRjM3o3QWFNSFF3NDJjd3pv?=
 =?utf-8?B?TGlmdEVnd1IzandVOTRVY3c4dnNtQ1lQVmltemlxSzltTnhNQ3pqNWh5UVFh?=
 =?utf-8?B?N2cxbHdiQ0NmVG5mZ3lMTDJybGdOdUYxTTNZREE4ZXMxSDZNT2IyNm5qTng2?=
 =?utf-8?B?UjM5OU8wS0JvOHRLcHpkcnlqQklZMEJTY25qQkNVSXE0ZUhIbU53TTRsQk5W?=
 =?utf-8?B?L04zMG9oeDdvc2lrME92UXdZb3BjMHY0eHhxaHA1QVdQUU04WmJQNksxQVZE?=
 =?utf-8?B?YmdJUGVucU5kaGRSTVNKaytLV1pUdGdTR2JNYkJJeWpkUFVGdU5BSkEwb2dR?=
 =?utf-8?B?cGZadXdwcGNaWHNiU1k4OUpSWVlvTGZXREtybzRnanpjS1EwNjRFZVIrU0M3?=
 =?utf-8?B?dHZjYklhRHFhSWRtZy9Edm1ab0hmZjNGSEFWNVZnM2ZmZWlldzJEQ2gyS1dC?=
 =?utf-8?B?aFNHUUFkUjI2ZWpZUzFUVE56MXhnUmVoUkRLRVhWZEhqbXZpUUswNWRDYkNO?=
 =?utf-8?B?eHZqWkg4bHVjRE5GcjltS0REaTRVVTdRWjlHOWt0MEVpRUNhSXIyYlZZa2xL?=
 =?utf-8?B?OHk5S0FiUXMyeDMxZ0NYVVRock5rdFEzWWt5V0JiNDk2MGlUeCs0N1lxbkZy?=
 =?utf-8?B?VnFNYzB0cDZrK2tDemVlTzA2RVpxUmQ2Ym1kSEd0V04rQ3dKOHQ1RXljUElB?=
 =?utf-8?B?d1BLZzZ6NFJ2WVBnSmFCQUtQb0Fnb1JUbVlNRHJaSWMzRWtXWnJkMTZMT1dl?=
 =?utf-8?B?VW4zTHlkb2QrY2U1azF1cS83Q2VXQVh0QU9QVHlrbUMwcmdTc0JoR1BSYlho?=
 =?utf-8?B?bVNkbnFQM2pkbFA4byt3em8rMFRIQWhvNW96WTNWa0VNYzEvOUIza1F6UWFY?=
 =?utf-8?B?alRITkZYMXdUWC9UZ1BzTERRWThtRUhnSEs4bkpWaTlSaFo5Qkx4TGpXdkZP?=
 =?utf-8?B?U09tMXRuSmQ5dmkyeHhzdGFFNW1BeWFMbitIWTBsTFBKcDMxK2Z5MXFTSzlj?=
 =?utf-8?B?WUd4SHNGWUxDMHo0Ty8wQTFFelZ5UjJYMzdxajl3YjlNeE5iV2FvUjlsWHJG?=
 =?utf-8?B?OGlkeDNwQnN6THhGbkpYRG5MVHo4UmFEQ2tiN2MrN2FiRXFRNDZkMDZzRzY1?=
 =?utf-8?B?WllQWWxQU3hNRktqWklRaHp2YmFDd0svU01WNk9nMDYra1BKRTJyTmNoSy9o?=
 =?utf-8?B?WG44RkV1QS9rZDE5dHcrSVN3VDRsSFEwdHRYYlY2QkxJL0RGRXd1cit3VVJ6?=
 =?utf-8?Q?pnLQBUsL5Virsb6FREZFrWrO8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da19bc91-840c-4876-7f25-08da8be8994b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 07:07:15.1569
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PvzbArcMq3mDU8GvFplzH0g4T8J/PaOoEbUFEI2mfageRT7wPRLZ2Sx4eOa6MqWr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4299
Message-ID-Hash: 2OBENIFLBP4Z4PN4YIHCRQTY2WBNI4SM
X-Message-ID-Hash: 2OBENIFLBP4Z4PN4YIHCRQTY2WBNI4SM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 16/21] dma-buf: Move dma_buf_attach() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2OBENIFLBP4Z4PN4YIHCRQTY2WBNI4SM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IE1vdmUgZG1h
LWJ1ZiBhdHRhY2htZW50IEFQSSBmdW5jdGlvbnMgdG8gdGhlIGR5bmFtaWMgbG9ja2luZyBzcGVj
aWZpY2F0aW9uDQo+IGJ5IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhcm91bmQgdGhlIG1h
cHBpbmcgb3BlcmF0aW9ucy4gVGhlIHN0cmljdA0KPiBsb2NraW5nIGNvbnZlbnRpb24gcHJldmVu
dHMgZGVhZGxvY2sgc2l0dWF0aW9ucyBmb3IgZG1hLWJ1ZiBpbXBvcnRlcnMgYW5kDQo+IGV4cG9y
dGVycy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVu
a29AY29sbGFib3JhLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIHwgMjAgKysrKysrKystLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IGNlZWE0
ODM5YzY0MS4uMDczOTQyYmY1YWU5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTg1OCw4ICs4
NTgsOCBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0
cnVjdCBkZXZpY2UgKmRldiwNCj4gICAJICAgIGRtYV9idWZfaXNfZHluYW1pYyhkbWFidWYpKSB7
DQo+ICAgCQlzdHJ1Y3Qgc2dfdGFibGUgKnNndDsNCj4gICANCj4gKwkJZG1hX3Jlc3ZfbG9jayhh
dHRhY2gtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQo+ICAgCQlpZiAoZG1hX2J1Zl9pc19keW5hbWlj
KGF0dGFjaC0+ZG1hYnVmKSkgew0KPiAtCQkJZG1hX3Jlc3ZfbG9jayhhdHRhY2gtPmRtYWJ1Zi0+
cmVzdiwgTlVMTCk7DQo+ICAgCQkJcmV0ID0gZG1hYnVmLT5vcHMtPnBpbihhdHRhY2gpOw0KPiAg
IAkJCWlmIChyZXQpDQo+ICAgCQkJCWdvdG8gZXJyX3VubG9jazsNCj4gQEAgLTg3Miw4ICs4NzIs
NyBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVj
dCBkZXZpY2UgKmRldiwNCj4gICAJCQlyZXQgPSBQVFJfRVJSKHNndCk7DQo+ICAgCQkJZ290byBl
cnJfdW5waW47DQo+ICAgCQl9DQo+IC0JCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5k
bWFidWYpKQ0KPiAtCQkJZG1hX3Jlc3ZfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCj4g
KwkJZG1hX3Jlc3ZfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCj4gICAJCWF0dGFjaC0+
c2d0ID0gc2d0Ow0KPiAgIAkJYXR0YWNoLT5kaXIgPSBETUFfQklESVJFQ1RJT05BTDsNCj4gICAJ
fQ0KPiBAQCAtODg5LDggKzg4OCw3IEBAIGRtYV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRt
YV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAqZGV2LA0KPiAgIAkJZG1hYnVmLT5vcHMtPnVu
cGluKGF0dGFjaCk7DQo+ICAgDQo+ICAgZXJyX3VubG9jazoNCj4gLQlpZiAoZG1hX2J1Zl9pc19k
eW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkNCj4gLQkJZG1hX3Jlc3ZfdW5sb2NrKGF0dGFjaC0+ZG1h
YnVmLT5yZXN2KTsNCj4gKwlkbWFfcmVzdl91bmxvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOw0K
PiAgIA0KPiAgIAlkbWFfYnVmX2RldGFjaChkbWFidWYsIGF0dGFjaCk7DQo+ICAgCXJldHVybiBF
UlJfUFRSKHJldCk7DQo+IEBAIC05MzYsMjEgKzkzNCwxOSBAQCB2b2lkIGRtYV9idWZfZGV0YWNo
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCkNCj4gICAJaWYgKFdBUk5fT04oIWRtYWJ1ZiB8fCAhYXR0YWNoKSkNCj4gICAJCXJldHVybjsN
Cj4gICANCj4gKwlkbWFfcmVzdl9sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4g
Kw0KPiAgIAlpZiAoYXR0YWNoLT5zZ3QpIHsNCj4gLQkJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhh
dHRhY2gtPmRtYWJ1ZikpDQo+IC0JCQlkbWFfcmVzdl9sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2
LCBOVUxMKTsNCj4gICANCj4gICAJCV9fdW5tYXBfZG1hX2J1ZihhdHRhY2gsIGF0dGFjaC0+c2d0
LCBhdHRhY2gtPmRpcik7DQo+ICAgDQo+IC0JCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNo
LT5kbWFidWYpKSB7DQo+ICsJCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYp
KQ0KPiAgIAkJCWRtYWJ1Zi0+b3BzLT51bnBpbihhdHRhY2gpOw0KPiAtCQkJZG1hX3Jlc3ZfdW5s
b2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCj4gLQkJfQ0KPiAgIAl9DQo+IC0NCj4gLQlkbWFf
cmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQo+ICAgCWxpc3RfZGVsKCZhdHRhY2gtPm5v
ZGUpOw0KPiArDQo+ICAgCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0KPiArDQo+ICAg
CWlmIChkbWFidWYtPm9wcy0+ZGV0YWNoKQ0KPiAgIAkJZG1hYnVmLT5vcHMtPmRldGFjaChkbWFi
dWYsIGF0dGFjaCk7DQo+ICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
