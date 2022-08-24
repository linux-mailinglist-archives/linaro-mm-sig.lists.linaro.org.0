Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACEE5A00A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 19:45:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 836663F61C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 17:45:32 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2070.outbound.protection.outlook.com [40.107.96.70])
	by lists.linaro.org (Postfix) with ESMTPS id 05A1F3F5AC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 17:45:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sk0FeJXZspU2IsynjBlAMVcZmEFlX6N5cGB3Ir7YVTKUB6/TsHHqrNDxo5ZYT2FDhtGCLqJm2+TjswPytN9DXbA0UPPQ8TqZxZrtGd5df0SiI4QBk9QbL7fGiNbqQMbnM2lFwh2KUwnUoBPYHbk7ZBZSdO3+MDc2j4YTybvQRcxq8DDap9FP+2reouTjMrwhTb6sMv34t9Sy+p51qjFz7jUubY0W/Exu1mXmewfWsTEe/JY1HYSkLaWS+X2Rn/cW88JP+fHp/qO/SZ1TyBBcVAJFit0EldxSDkJce7wSdLzC5ObtMK/DawRx4Zc/ppTNJSpvr8Aqx9yyh+I0CMdHoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8GEB4Gmf8gYzYzw0SauFbEYt7He09/ibyOEjSkXO9CY=;
 b=DDt3k5QJvEbQ7XmTsFzzTJIV4feVrOlVExqDFZ8CahUfZouK4EpTh6K8IH2br4tQf+lhLW/jD6cx+suhj0AuGIPQIO7JhWsHodpd2DXuEb9eDcdLBdqJNZApWQidCWDHefGcWzDxaF5BDU9Tay2rKVCf4NZz3d87T7HqYHd7HtY5M9rFt97FMwy9tDcnFuaGaGdCDByZi/YKYUlsKOI/GB9Q25Ht8QIDhtt3hqmzfEggWVu/rjvO2daC3+C9nOcXYarQdwxgEFnWNvUgOi6pxfF2SDhQ7qpa7oTN2fZ+cPAc7k73PTcdDpSCPhj5J2BMHaogrDNUX0SZFmu5So8ltg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8GEB4Gmf8gYzYzw0SauFbEYt7He09/ibyOEjSkXO9CY=;
 b=YerBgSf/XFpE4iZnDoi4PdcU89++Ab5YebBHtep9vpBfkO9NM95ZkO1zvEUZJww/ZyfP8KYERR9PlBKxYEYes3oej/siq7tlxUslb8sSAOM8c9d7sUTm9n9ug90Hur0jH+cvmne2MSfenSiPCyESZmlr5K6BftLWA8CRo3gqGM8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN8PR12MB3426.namprd12.prod.outlook.com (2603:10b6:408:4a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Wed, 24 Aug
 2022 17:45:19 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5546.024; Wed, 24 Aug 2022
 17:45:19 +0000
Message-ID: <e7576ab7-ff1e-e6da-b0fd-0315f1b37ed1@amd.com>
Date: Wed, 24 Aug 2022 19:45:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
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
 <20220824102248.91964-7-dmitry.osipenko@collabora.com>
 <055c3c05-ac4c-430e-f2b9-08f000acf435@gmail.com>
 <25d6b7e7-bbcc-7613-42d1-13c2b9ab2937@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <25d6b7e7-bbcc-7613-42d1-13c2b9ab2937@collabora.com>
X-ClientProxiedBy: FR0P281CA0050.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f7c82e3-68ba-4b44-e526-08da85f86966
X-MS-TrafficTypeDiagnostic: BN8PR12MB3426:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QkEyVwKuUGqaWjF1MugYM3eqay2SkldryTEYCa8fcn8T+/ffBrdLrmie2jlarrGb3vL3WTSkS80Slp//Lk6V243xs1mHY6JS/zL2HG4LIwbxU22EXbp8NPRkXQW8qysi/1rmwapGb8BjDbsIFxSPc0h1HwTXaTMQWSRj0zAXHqp1wQXuquisDWUTp1WMN4ahcZBfsD1HSOzmVUjOfSjPKXqMOkscLRODHntcSmvsgYiKZJAI37cnKT1KuiJMzVaCSFn0VUtKNbZKeD5Zi7x4Hei6LcDUDRoYnPv4Kzhm6eExFFwds3MApBRXe4MYUaE3/OgBygkQ4xXaysIfyg/9umsRz79tbWhoInrPG3O5M91HdUbHHeBvV8h8uEXrci9x+3COgA8ZAgxDi3hH3rzfXRBaQFNSKTRP3QZVHXCUJG+r0ceHhsmw6EP+fIrdjzn3gmkwh8VuQj9WVFUQoILkq7Jt1ei24BxcIJYyuAFXpto2tM8kyGl/Hz0tvLgO9dNUZoTuBb0JVq9mZ13cXmG5j5nHSqppmUqY1ENIjKIyrMR6sKyEMTJtLIC4ztLjQosmUUTI1Z0T64AaV+EOh+GuXwmWcDvb/lPbAjczo2Vs6nhfNgC4h2d7V18ZEmSPouJ5g2ejXDZBcf4I12GbE8Ej44ga0Kb+NmGJhttT4qYvHV9lgDFHtZDOnZcfX41e/R1NlIE02aNFBjc7reqg3EyJsg3hq6vYx3ySE9LAKALdeXOiMx1nI23q7Si2pSynsdup+A+Lv5DyAAY048pYM1TTEZxp1ZsXn2JeH/Lo/fXQEJpaGZZFzz9QiLF9gtUG6JLh
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(66556008)(66476007)(8676002)(110136005)(66946007)(316002)(7406005)(5660300002)(7416002)(4326008)(2906002)(38100700002)(8936002)(6666004)(31696002)(86362001)(921005)(478600001)(36756003)(6506007)(53546011)(6486002)(41300700001)(186003)(66574015)(2616005)(6512007)(31686004)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QitJVWFodnhyVEVnVHM5VUErc3UvdnpzRWpWbTFOQmNBZE1zU0c4VytTRXhY?=
 =?utf-8?B?cXdaeXVaRWZZNklnNkdjdjJSUjRsQlYyM0xDTjNFNHB0Y2hnSE5xU2docGtJ?=
 =?utf-8?B?S0d3ZTh2UG54Znk2S1RJQW9DMXpsWDZRcytwN3JMZzdXdHpQOFVFNkhKRlVX?=
 =?utf-8?B?anNMelBVQ1RtZGVuUmxyMHRKWnVnYlJrbHNuMUhFamhBelhJRkJxaDN6Nk4r?=
 =?utf-8?B?OGp3QU0wVlIxWlZyL1o5UFQxNDdVNEpBK1NPQkplOEZ4RFFldVRkejJWOTFn?=
 =?utf-8?B?UURLMVdzK3JJTGlQZzZiaHFVaHpsOXdrNE56MktTakxlUG5maDFEQ3FKZzR0?=
 =?utf-8?B?TVZ2NHprdXZYV3IweExFZzR0dDZuckJtVllIcWFhM3B0QWwxWU10S0lzR0pB?=
 =?utf-8?B?UStTYUFMdENrYzN5b0Y2anNDOTBmbXZFanNLbnM3dXFna1dIbHNoQWZaeGJu?=
 =?utf-8?B?Njg2UnFIZHdpNWZsY21jQmVpSDV6ZG5iRU1jMjFkMlZxRGRJQld0RDY0dzBO?=
 =?utf-8?B?YlpaZ3UxbGVNa29rdVJMbDJVYUxYZWZpSUEzaEp6bzd3VSt1azVnT2JTb3Ux?=
 =?utf-8?B?VXNuMHN0L1BvS1FuUjdHS1lMeVNUM3FscFlYNXZjN09XbmsrdzN2OWtBT0hu?=
 =?utf-8?B?TGN2Tkt6MnRCemMzSU90T3krYytyQzJDbVpDc2FuQmhyZ2VlVFJRQjBQcXBo?=
 =?utf-8?B?d1dTc3FKWWVPMFpxK0JzVUpJQk00T2FxOTNyWHkwYUdOajBPZDFjeFlZejRr?=
 =?utf-8?B?MWQ5ZzNSdktOMkNONGVuR01sRUIzc1JNUFFOKzEvVWl6QmFZSlpYNXJqU3k2?=
 =?utf-8?B?b2hPRHpsTEhPTjhXbUpZajc2M3FPMUNpbk5Kd3cxQndsRmhCeEY3QkNaL0xm?=
 =?utf-8?B?U1JNRzhIYkR4SWZIbUZUb01NTWtMY2JyZEsrNlM1SnlXb2dZYk9SRGVnZitZ?=
 =?utf-8?B?TnczWDJrSDNUK3I2Q3FSUXIwN0dweHJ4dTA1aStVOWNiWDV2NWdIUGtzTWFV?=
 =?utf-8?B?UnJGMDB1S2NrNWxYRW1SZ1hNbXhFTVY3UkVoQU1xM0Y2RGlRYnlnRE9GbXFq?=
 =?utf-8?B?c2NhcW1lVm41eXFBVXlRT25Jc2krenA0Qi9TVkhDOXJadUJGRVlPZmIrbkVJ?=
 =?utf-8?B?c3pXaXFyc3QranE4TUZDcElEdS9abHZZQW43U0tmcnlJd1R6Z2twUDB3NStR?=
 =?utf-8?B?NEJaNDU5cTJ1bU5MYmVKS20yTGVYaklNZC9GRnBUd1hQcm9XdkJRR3o1MGFk?=
 =?utf-8?B?Z21zdzg2L2NOY3JYQ0ZVcXg0NS9mMTNWWmJ4YTVzVE1SVnY3ZjM5QndYRERu?=
 =?utf-8?B?bE9lSkMrV2FIQnd4NEdRNEN3TGVLdU15aVAxQVRwekJ6M25oZmpNY2VVQlBV?=
 =?utf-8?B?ZUtZQ3B1NDdGazRIVFI3eEZnZW0yNFRMTHhyb2d5TTZGQlNXbllzZlJ0bmFx?=
 =?utf-8?B?bERkaDNGRldTWWkxUXY4Zi9ScktsZE1NY1RwdGptRU9zNDRRalRYY2RWSVdW?=
 =?utf-8?B?TjB2cmczZnB3WVpzWlRpcktVTVBKYWZYdDB1eDZiTEhtcnJNOW1BNWcrVzBu?=
 =?utf-8?B?azkzdnVUcExOd0EzemJaRjZwUzgxVkVnUzZwcnpoSVUvNWpPenJ4K3E1OWd3?=
 =?utf-8?B?TWtMNGsyN1VCRGQ4dUZ2cXhrenh4Qk1yQjdEZFp3U0N0clJaNk11U1RscitW?=
 =?utf-8?B?MFc3N3B1a0FXMXJzdnI3L280UU1NREE3Sk5GeUkwOXFUYWl1TURPOStlQmZu?=
 =?utf-8?B?SDhDR3c3N0FzTWtSdkhYSUxyVmo1Uk1vUXRwR1VMZEp2cE1iMUxSRUNzN1dG?=
 =?utf-8?B?M2lJMS9odjUwbUliMnBpUnMzaDFSRzd4RXNhd01hdVhhTFRKVzFqZzNxLzVR?=
 =?utf-8?B?MjZzbjJTcmhES1p1dWV6ek8zYm5TOVlaTGlRdSs5U0xMQlQybWNKYTl0dlcz?=
 =?utf-8?B?bG0rdXlnamM3UEFBS25LbGJyM2d6cG5EaXZMdW5kWVFaN3FoczAyY2d0dG1p?=
 =?utf-8?B?S2Mzb21hREdWTXZOV0tKUkIvd1JlZG0vQlNxUHpkMFVDQlZmTGw2cEtpa1Rk?=
 =?utf-8?B?cDR3RE1LV1Fjc1hDdHZPZTVaWnE3Y1FqOGJPSFpHMHdLa0tNY2dtTlJRTHps?=
 =?utf-8?B?Q2ViSWtjcXRlRFJUSlpIeTZjRXR4cFlvcVV6WWZ3S3kyNVNia0VkeFh1QjQx?=
 =?utf-8?Q?+q0X1NCwY9F7xJQvnm9ob74uSjJfdZphK3Sy/3p4i8L7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f7c82e3-68ba-4b44-e526-08da85f86966
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 17:45:19.5580
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zPrGMwPHue4l/e7DGFyu0HCfpuG9Q1fJZsvvjg1IoIJ2DIdvG62xn+wC2RVbMS9P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3426
Message-ID-Hash: 6R7VR3HK4IGWFMKZADVUHZGQPRHZSW4J
X-Message-ID-Hash: 6R7VR3HK4IGWFMKZADVUHZGQPRHZSW4J
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] dma-buf: Move dma-buf attachment to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6R7VR3HK4IGWFMKZADVUHZGQPRHZSW4J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDguMjIgdW0gMTc6NDkgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IE9uIDgvMjQv
MjIgMTg6MjQsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAyNC4wOC4yMiB1bSAxMjoy
MiBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4+PiBNb3ZlIGRtYS1idWYgYXR0YWNobWVudCBB
UEkgZnVuY3Rpb25zIHRvIHRoZSBkeW5hbWljIGxvY2tpbmcNCj4+PiBzcGVjaWZpY2F0aW9uLg0K
Pj4+IFRoZSBzdHJpY3QgbG9ja2luZyBjb252ZW50aW9uIHByZXZlbnRzIGRlYWRsb2NrIHNpdHVh
dGlvbnMgZm9yIGRtYS1idWYNCj4+PiBpbXBvcnRlcnMgYW5kIGV4cG9ydGVycy4NCj4+Pg0KPj4+
IFByZXZpb3VzbHksIHRoZSAidW5sb2NrZWQiIHZlcnNpb25zIG9mIHRoZSBhdHRhY2htZW50IEFQ
SSBmdW5jdGlvbnMNCj4+PiB3ZXJlbid0IHRha2luZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBhbmQg
dGhpcyBwYXRjaCBtYWtlcyB0aGVtIHRvIHRha2UNCj4+PiB0aGUgbG9jay4NCj4+Pg0KPj4+IElu
dGVsIGFuZCBBTUQgR1BVIGRyaXZlcnMgYWxyZWFkeSB3ZXJlIG1hcHBpbmcgdGhlIGF0dGFjaGVk
IGRtYS1idWZzDQo+Pj4gdW5kZXINCj4+PiB0aGUgaGVsZCBsb2NrIGR1cmluZyBhdHRhY2htZW50
LCBoZW5jZSB0aGVzZSBkcml2ZXJzIGFyZSB1cGRhdGVkIHRvIHVzZQ0KPj4+IHRoZSBsb2NrZWQg
ZnVuY3Rpb25zLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0
cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4NCj4+PiAtLS0NCj4+PiAgwqAgZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMTUgKysr
KysrKysrKysrKystLS0tLS0tDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV90dG0uY8KgwqDCoCB8wqDCoCA0ICstDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9kbWFidWYuYyB8wqDCoCA4ICstDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyB8wqAgMTIgKysrDQo+Pj4gIMKgIGluY2x1ZGUv
bGludXgvZG1hLWJ1Zi5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
IDIwICsrLS0NCj4+PiAgwqAgNSBmaWxlcyBjaGFuZ2VkLCAxMTAgaW5zZXJ0aW9ucygrKSwgNDkg
ZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiBpbmRleCA0NTU2YTEyYmQ3NDEu
LmYyYTVhMTIyZGE0YSAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+IEBAIC01NTksNyArNTU5
LDcgQEAgc3RhdGljIHN0cnVjdCBmaWxlICpkbWFfYnVmX2dldGZpbGUoc3RydWN0IGRtYV9idWYN
Cj4+PiAqZG1hYnVmLCBpbnQgZmxhZ3MpDQo+Pj4gIMKgwqAgKiAyLiBVc2Vyc3BhY2UgcGFzc2Vz
IHRoaXMgZmlsZS1kZXNjcmlwdG9ycyB0byBhbGwgZHJpdmVycyBpdCB3YW50cw0KPj4+IHRoaXMg
YnVmZmVyDQo+Pj4gIMKgwqAgKsKgwqDCoCB0byBzaGFyZSB3aXRoOiBGaXJzdCB0aGUgZmlsZSBk
ZXNjcmlwdG9yIGlzIGNvbnZlcnRlZCB0byBhDQo+Pj4gJmRtYV9idWYgdXNpbmcNCj4+PiAgwqDC
oCAqwqDCoMKgIGRtYV9idWZfZ2V0KCkuIFRoZW4gdGhlIGJ1ZmZlciBpcyBhdHRhY2hlZCB0byB0
aGUgZGV2aWNlIHVzaW5nDQo+Pj4gLSAqwqDCoMKgIGRtYV9idWZfYXR0YWNoKCkuDQo+Pj4gKyAq
wqDCoMKgIGRtYV9idWZfYXR0YWNoX3VubG9ja2VkKCkuDQo+PiBOb3cgSSBnZXQgd2h5IHRoaXMg
aXMgY29uZnVzaW5nIG1lIHNvIG11Y2guDQo+Pg0KPj4gVGhlIF91bmxvY2tlZCBwb3N0Zml4IGlt
cGxpZXMgdGhhdCB0aGVyZSBpcyBhbm90aGVyIGZ1bmN0aW9uIHdoaWNoDQo+PiBzaG91bGQgYmUg
Y2FsbGVkIHdpdGggdGhlIGxvY2tzIGFscmVhZHkgaGVsZCwgYnV0IHRoaXMgaXMgbm90IHRoZSBj
YXNlDQo+PiBmb3IgYXR0YWNoL2RldGFjaCAoYmVjYXVzZSB0aGV5IGFsd2F5cyBuZWVkIHRvIGdy
YWIgdGhlIGxvY2sgdGhlbXNlbHZlcykuDQo+IFRoYXQncyBjb3JyZWN0LiBUaGUgYXR0YWNoL2Rl
dGFjaCBvcHMgb2YgZXhwb3J0ZXIgY2FuIHRha2UgdGhlIGxvY2sNCj4gKGxpa2UgaTkxNSBleHBv
cnRlciBkb2VzIGl0KSwgaGVuY2UgaW1wb3J0ZXIgbXVzdCBub3QgZ3JhYiB0aGUgbG9jaw0KPiBh
cm91bmQgZG1hX2J1Zl9hdHRhY2goKSBpbnZvY2F0aW9uLg0KPg0KPj4gU28gSSBzdWdnZXN0IHRv
IGRyb3AgdGhlIF91bmxvY2tlZCBwb3N0Zml4IGZvciB0aGUgYXR0YWNoL2RldGFjaA0KPj4gZnVu
Y3Rpb25zLiBBbm90aGVyIHN0ZXAgd291bGQgdGhlbiBiZSB0byB1bmlmeSBhdHRhY2gvZGV0YWNo
IHdpdGgNCj4+IGR5bmFtaWNfYXR0YWNoL2R5bmFtaWNfZGV0YWNoIHdoZW4gYm90aCBoYXZlIHRo
ZSBzYW1lIGxvY2tpbmcgY29udmVudGlvbg0KPj4gYW55d2F5Lg0KPiBJdCdzIG5vdCBhIHByb2Js
ZW0gdG8gY2hhbmdlIHRoZSBuYW1lLCBidXQgaXQncyB1bmNsZWFyIHRvIG1lIHdoeSB3ZQ0KPiBz
aG91bGQgZG8gaXQuIFRoZSBfdW5sb2NrZWQgcG9zdGZpeCB0ZWxscyBpbXBvcnRlciB0aGF0IHJl
c2VydmF0aW9uIG11c3QNCj4gYmUgdW5sb2NrZWQgYW5kIGl0IG11c3QgYmUgdW5sb2NrZWQgaW4g
Y2FzZSBvZiBkbWFfYnVmX2F0dGFjaCgpLg0KPg0KPiBEcm9wcGluZyB0aGUgcG9zdGZpeCB3aWxs
IG1ha2UgZG1hX2J1Zl9hdHRhY2goKSBpbmNvbnNpc3RlbnQgd2l0aCB0aGUNCj4gcmVzdCBvZiB0
aGUgX3VubG9ja2VkIGZ1bmN0aW9ucyg/KS4gQXJlIHlvdSBzdXJlIHdlIG5lZWQgdG8gcmVuYW1l
IGl0Pw0KDQpUaGUgaWRlYSBvZiB0aGUgcG9zdGZpeCB3YXMgdG8gZGlzdGluZ3Vpc2ggYmV0d2Vl
biB0d28gZGlmZmVyZW50IA0KdmVyc2lvbnMgb2YgdGhlIHNhbWUgZnVuY3Rpb24sIGUuZy4gZG1h
X2J1Zl92bWFwX3VubG9ja2VkKCkgdnMgbm9ybWFsIA0KZG1hX2J1Zl92bWFwKCkuDQoNCldoZW4g
d2UgZG9uJ3QgaGF2ZSB0aG9zZSB0d28gdHlwZXMgb2YgdGhlIHNhbWUgZnVuY3Rpb24gSSBkb24n
dCB0aGluayBpdCANCm1ha2VzIHRvIG11Y2ggc2Vuc2UgdG8ga2VlcCB0aGF0LiBXZSBzaG91bGQg
anVzdCBwcm9wZXJseSBkb2N1bWVudCB3aGljaCANCmZ1bmN0aW9ucyBleHBlY3Qgd2hhdCBhbmQg
dGhhdCdzIHdoYXQgeW91ciBkb2N1bWVudGF0aW9uIHBhdGNoIGRvZXMuDQoNClJlZ2FyZHMsDQpD
aHJpc3RpYW4uDQoNCj4NCj4+IFNvcnJ5IHRoYXQgdGhpcyBpcyBnb2luZyBzbyBtdWNoIGJhY2sg
YW5kIGZvcnRoLCBpdCdzIHJlYWxseSBjb21wbGljYXRlZA0KPj4gdG8ga2VlcCBhbGwgdGhlIHN0
dWZmIGluIG15IGhlYWQgYXQgdGhlIG1vbWVudCA6KQ0KPiBOb3QgYSBwcm9ibGVtIGF0IGFsbCwg
SSBleHBlY3RlZCB0aGF0IGl0IHdpbGwgdGFrZSBzb21lIHRpbWUgZm9yIHRoaXMNCj4gcGF0Y2hz
ZXQgdG8gc2V0dGxlIGRvd24uDQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
