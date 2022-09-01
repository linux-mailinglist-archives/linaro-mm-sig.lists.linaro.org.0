Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 000BF5A8E7F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:45:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FC9A479B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:45:23 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	by lists.linaro.org (Postfix) with ESMTPS id E914747965
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 06:45:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ahTYEC9QIsWQA3pCRmrDzL7V1OOzCuaXptvg2vcr1uBoWIAFAAgtX+QbbkVI2NFPfZUYBJWK+KJO9zV3UVZaaD4Ro/Eqc7g9+OdsaYBYlgpyAgwkyxhWUSxmo8YskqSNV64ZnPSAeGNWPq1KYlYBEEJocnN6w9l8djP+rWX8kscNuLbeBplro3YlWUYGlumtbpxPD1swatRLkJDKaJ3+VzVxFg/k8U611W4xpKzGTfdGbPI6taigcai9fIFnAFfj5hxUJV23p4Ub+cPqzcfjEfJrpIlDsrqBD+c+iVPfsD2T9o8H1tFoZSaDidRDhfzVwagYiuHaGiVs95DEuZaACA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CO9nrEklpYX7tnEq4edqxYFL4EsrLF2kpEA6u4/TGdM=;
 b=ZZIonSv9iByR9iS9HB5OlHzmBf6GTTCivAvlxcjDXBq4pgJ+4NWapX9gySWRjBR2MNQtiWxBRpzVEihEz9/cWmqGyR6n11OOuNhVqyo2+jdi2W4cfqBGNaJwiAvCOdMcj6c2YYws2Y1GvhDfw/ets5zvwdzbEdvR7+prG594Sg3eQRql1RI8+YtQxqb1o1x56+dqRlt+47I4qmAC64iREOxmCWxq7ldb1mSKCd1ay1/Yb6N/7T5Ckf0XGe+JRJab7hxK/YHYM0OkMiGzccXQ+d+HBuqNAEDizw2LhqKxML8JogQgU4y61SkU33Bct1HtN8QcB4mEoXQ65VfmbmN4gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CO9nrEklpYX7tnEq4edqxYFL4EsrLF2kpEA6u4/TGdM=;
 b=4nypQjFJBVh+sM+sOEWfC427n+XX8zUjZTaoB5cGzpcUUP1dRjktgLRW+4aowALo+SWkiNDqxwWw6Cc3ctr0Lhf0evKSvGKfTV2SB/ZOi/ydYMJ9u4aFrFopI4iQ+zsxFQ02s3DhCn8CzVo26sYpNKkY4hi1EO9fnaNxvMLompw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN9PR12MB5228.namprd12.prod.outlook.com (2603:10b6:408:101::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 06:45:15 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.011; Thu, 1 Sep 2022
 06:45:15 +0000
Message-ID: <2463ccb0-6620-8760-fc06-532847835207@amd.com>
Date: Thu, 1 Sep 2022 08:45:03 +0200
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
 <20220831153757.97381-7-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-7-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AM6P194CA0008.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:90::21) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a74a4ab-696e-4f28-3427-08da8be58665
X-MS-TrafficTypeDiagnostic: BN9PR12MB5228:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2T40/60DPhA+Jlw3HehoxUCX9U9KfdkJaTxhATgiaohs/vuipqQ4DlcD4ySaEFw7ZvmwOiOXxs1g76NONWvWt88M8trdKGRuRW1dzMTOE70HLSH3CutJ4N+UMdOMr1SWxRyLcVKzohJt9TP8TQdJFowdBLXtkRxe4IHx/EuCtQ6sX8C1D0dkvxS5yTf68hnBp1uC6FUIIZ9+SRsXeQDO1tKFF5gWlIms12mKNdGgRsZ/szyH3D6aWfZEEQtEEdxwJFfMKnuFfowHImYKwIDV9wdmT5uP2n9xwusvM7ucDpwoK83C5c1vcd8E7+vcRhlUCAJIZCsly5JBUybFFvLIbBjmu3qCMX6E2/vSpKRKSLnMmQIF3mQP2IA/TsBA5fZ//5v0ZHCNvZLiRSMhdhrdb3zL3W4AWBaSPOofEYv8vbcBh91seC14bLszZKadyWJSlh9x3Gw601jZwZ5fnJfrz8kCWke/Pst6dj3n677iOQOpkvM4IHFB+HkpxlTloWSxAQsXavg6eq28MUARpjB72idYgvmtijtJVrGbPtJlSqkid4zGJh45w23+hkZfIdoSo8G3qyUARh+Rw1OM19dGnClo718I2iOpmFEev8Skxk8UTFok6pAaZ70uTL7Fj7Bff6mZLnOpWLxOBKAhZdZRm3Y6GTIn2ij0JfJy6AFVOQ1roD+VnP/foaGWCHHdtME6C3Vsi0rxjDSDTSPcE1m7a17NWXQCgePLkwCv3hUe9Sw4uOza5DtqFKsP/0b0VZynOf+0j2kCMQAsWKG3KxOe7JD/IE5ZiioM6XFB0OGqC44v2um5rj77JktTbwxQYUZk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(136003)(376002)(366004)(396003)(8936002)(7406005)(6486002)(38100700002)(478600001)(7416002)(110136005)(31686004)(6506007)(316002)(41300700001)(6666004)(5660300002)(6512007)(26005)(86362001)(2616005)(83380400001)(2906002)(66946007)(66476007)(36756003)(31696002)(186003)(8676002)(66556008)(4326008)(66574015)(921005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WUdVWTBFbFJJUDZMMEdjZnlmcElNWXJrZkhKSThKWmlHUnB0cTc1R0VMc2xl?=
 =?utf-8?B?dXBGQUZ5YXJKeno1YXAwTFRoQldpVExYc2R2Y0RDWUI2cU4vMUhsdUZIOUI1?=
 =?utf-8?B?RFB1b3lZZE1EWVlzcDhJY0FWNXRIaXpmbk9xSDMrbm5VbEx4ajZaOGlHb1pX?=
 =?utf-8?B?bWVFOHg5SitlMkJKTmxQdXR0QVV1NW5GMW5XS2QzVzR5b2RqZ1BYUmw3WXN3?=
 =?utf-8?B?VnhHcjN3OUxGUTRpSTZvcW9oSVAzRDFUaDU5ZUZLY0NMNFpvZFE1VmJCSzBq?=
 =?utf-8?B?cHVYR2tKYVZNeFoyQzlYYm8veTNXaTFiUG8vVisxTGhtTzM1ZGd1NGE1ZDJY?=
 =?utf-8?B?eHdJV2NRbE1jUjNhT3NyNUdTdnM0dHVaK2trQldOdWlFYU9kUlBGa29kSzVL?=
 =?utf-8?B?amhtNXRwWjM1aGxJb0UrZktyaFBRMGhmbnl6NHJ3Nm0yYVVCM3pORCtIZVpV?=
 =?utf-8?B?MEJobVU2TWg3WEE4RGZxRzJlaFh2VHVNT2pWN0FWNDBOWGVEQ3FuVGQrVS82?=
 =?utf-8?B?N1hGNGYwdXRVeVY0MkRBUmJZamh3TGs4NUgwcmJqWEdTTFFTMmpBcm40Z28v?=
 =?utf-8?B?SnBWVG9ybkoyakIyaUFFbWp5ZC9mOXZaRDIvR1VxVVZkRXlwc004RndMWXda?=
 =?utf-8?B?bUNTb2o2SmVjNzNmODNiMDdjRVN2dTQvRnhRd1QyOGVkY0FCaytSTHdGSG5a?=
 =?utf-8?B?eEJoR3MzcXVYb2NIdU80Nmd2aXg4ZFkvVmNGcVVOOElTNDlvbkpaYkZIcmR0?=
 =?utf-8?B?aEpqVkNKR092ZGpPcmo2ckxuaFMrQzRqYlZ1bDV4Q0NqRGpnNmlYMVZRS2g3?=
 =?utf-8?B?ekt0MHZueTA0RGpSak1TYU1Oa0dYZFZBQ0h4WThwYjRlQ3BuMlRSVjBhSGI3?=
 =?utf-8?B?QjNhb09jRE94VUFHczUxYUtQRC9pRVkwNytueWhhUlJLdDZiOGNwU1hmQ3Fx?=
 =?utf-8?B?clVCWi9wNjJHYm5KV0VtdFBtaXJaVTR2dWdoS2o5ZWRHZUdBMzFUV0htQ280?=
 =?utf-8?B?N3VlSzJHQi8zUFo2VTdpM1pPdHNVeEUyRmtLRXByT2k0akVuTXUzTWwrN0JJ?=
 =?utf-8?B?VVNCQWdIVW5wcVhaMTVNbVFqVWZpZytZcmt4VXJmbWhGSWs2eGdVYWVMOEc4?=
 =?utf-8?B?UDVzeVZxdXVOaldCZU9xSDZoRW9IcGZiVmRrcDdoeUQ0andqeTY3N3E2WE1t?=
 =?utf-8?B?Z1J0WWx4anFrS0xUWG53UURRQVhkZEFXUzIxYzA0T0FFTXY5UlNKYXhQVlFK?=
 =?utf-8?B?akJMWEpEbGUzeXhlODR6RTZjb2N5UWxhSWNVS1NmK3BBTjdzd2pJWm8ya1VG?=
 =?utf-8?B?bW5vWEJuQ1Y3a2FUTitFLzNjdW1mS1RsQkQzOGdmRHR4WU1VeWt3RUNiVzcv?=
 =?utf-8?B?Ylc4bVZzNTdZVDY1aDNYNWJBb1czMWxwS2JhSGlENXpUS1dMSGhqRVloZlpE?=
 =?utf-8?B?ZjhFem1nd3MrY1ZnNUx4SVM5eFk4SE93UnpRRmRzU2VlbVNSd3JKbGNLZE0x?=
 =?utf-8?B?T3hzZkdVYXRwVWkwTDlWSWdidHYwdXlMSnVqNnl3QWcybWcyMjVEYVRkdVNQ?=
 =?utf-8?B?NDhSQ3A2bm5TRm1YTEMxYTRkZzJsLzEvSTJua1lkMnJnRVN5MUpVejRpaUtR?=
 =?utf-8?B?dU5UVFU1L3VyMW5TdjFTMk84NEE4aVo5V0U5UXUyRlR4NWVWdkFCZTJyc3NZ?=
 =?utf-8?B?Ym5nbmlrQ1grY2dIVmdXdHd4RGxVMGVodUc5T2JHUFdKUHRVaTNpeDZsZGJC?=
 =?utf-8?B?eEM0bkNDRUtjalZVdTROSklOZkUxRVFQTDdpeWZ1a1pNbHBhTmtBaGF1OG1Q?=
 =?utf-8?B?K09RaGdUL1hTSTB4SU5MMnRIeGw5VWM1WHRUSzR3NFdMVkdpNVhwNTVqSXMz?=
 =?utf-8?B?TUpybUY1aTZKWFRHU0p6UWZZak9MRzBXSDRZZm5KM1FaRlVkZmFYVUhlL3RB?=
 =?utf-8?B?RUExUnFDcUdib2JaQ1ZmYjV1NncycEFDWVlKRVRhL0Q0dDdDdW1XdktuL0Fa?=
 =?utf-8?B?SnZFSmlqWjZTZGkya2IrWDVGM0gzcWJjck9RMy8ybUdTbjNQV3FIRWNvZC9n?=
 =?utf-8?B?YnZkUGRKdkVFaktmR2hLZEZzVDg0dTdPanlKbGk4YURLaHllMjNJZ3lESlFz?=
 =?utf-8?Q?uR5oex08w5wYUxOtfuFIiXDAF?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a74a4ab-696e-4f28-3427-08da8be58665
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 06:45:14.9272
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i/9qNzgInkJX/XdKXehavtVkTevzayvvOgGwZJJ8NCfq3V7yS6nfj34Jq2ZmNdLj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5228
Message-ID-Hash: 5NZB7PANDMNLPHPDWPAXMYQGXV3C64O7
X-Message-ID-Hash: 5NZB7PANDMNLPHPDWPAXMYQGXV3C64O7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/21] drm/i915: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5NZB7PANDMNLPHPDWPAXMYQGXV3C64O7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
aTkxNSBkcml2ZXIgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBjb252ZW50
aW9uDQo+IGJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVyc2lvbnMgb2YgZG1hLWJ1
ZiBBUEkgZnVuY3Rpb25zDQo+IGFuZCBoYW5kbGluZyBjYXNlcyB3aGVyZSBpbXBvcnRlciBub3cg
aG9sZHMgdGhlIHJlc2VydmF0aW9uIGxvY2suDQo+DQo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBP
c2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQoNCkFja2VkLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+LCBidXQgaXQncyBwcm9iYWJs
eSANCmJlc3QgaWYgc29tZWJvZHkgZnJvbSB0aGUgSW50ZWwgZ3V5cyB0YWtlIGEgbG9vayBhcyB3
ZWxsLg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFi
dWYuYyAgICAgICB8ICAyICstDQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5jICAgICAgIHwgMTIgKysrKysrKysrKysrDQo+ICAgLi4uL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jIHwgMTYgKysrKysrKystLS0tLS0tLQ0KPiAg
IDMgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4NCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYw0KPiBpbmRleCBmNTA2
MmQwYzYzMzMuLjA3ZWVlMWMwOWFhZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9kbWFidWYuYw0KPiBAQCAtNzIsNyArNzIsNyBAQCBzdGF0aWMgaW50IGk5MTVf
Z2VtX2RtYWJ1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLA0KPiAgIAlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zl90b19vYmooZG1hX2J1Zik7DQo+ICAgCXZv
aWQgKnZhZGRyOw0KPiAgIA0KPiAtCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5s
b2NrZWQob2JqLCBJOTE1X01BUF9XQik7DQo+ICsJdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGlu
X21hcChvYmosIEk5MTVfTUFQX1dCKTsNCj4gICAJaWYgKElTX0VSUih2YWRkcikpDQo+ICAgCQly
ZXR1cm4gUFRSX0VSUih2YWRkcik7DQo+ICAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmMNCj4gaW5kZXggMzg5ZTlmMTU3Y2E1Li43ZTJhOWIwMjUyNmMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMNCj4gQEAg
LTMzMSw3ICszMzEsMTkgQEAgc3RhdGljIHZvaWQgX19pOTE1X2dlbV9mcmVlX29iamVjdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAgCQkJY29udGludWU7DQo+ICAgCQl9DQo+
ICAgDQo+ICsJCS8qDQo+ICsJCSAqIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgpIHJlcXVpcmVz
IHJlc2VydmF0aW9uIHRvIGJlDQo+ICsJCSAqIGxvY2tlZC4gVGhlIGltcG9ydGVkIEdFTSBzaG91
bGRuJ3Qgc2hhcmUgcmVzZXJ2YXRpb24gbG9jaywNCj4gKwkJICogc28gaXQncyBzYWZlIHRvIHRh
a2UgdGhlIGxvY2suDQo+ICsJCSAqLw0KPiArCQlpZiAob2JqLT5iYXNlLmltcG9ydF9hdHRhY2gp
DQo+ICsJCQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOw0KPiArDQo+ICAgCQlfX2k5
MTVfZ2VtX29iamVjdF9wYWdlc19maW5pKG9iaik7DQo+ICsNCj4gKwkJaWYgKG9iai0+YmFzZS5p
bXBvcnRfYXR0YWNoKQ0KPiArCQkJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOw0KPiArDQo+
ICAgCQlfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0KG9iaik7DQo+ICAgDQo+ICAgCQkvKiBCdXQga2Vl
cCB0aGUgcG9pbnRlciBhbGl2ZSBmb3IgUkNVLXByb3RlY3RlZCBsb29rdXBzICovDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1
Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYu
Yw0KPiBpbmRleCA2MmM2MWFmNzdhNDIuLjllM2VkNjM0YWEwZSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jDQo+
IEBAIC0yMTMsNyArMjEzLDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2Ry
aXZlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gICAJCWdvdG8gb3V0X2ltcG9y
dDsNCj4gICAJfQ0KPiAgIA0KPiAtCXN0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudChpbXBvcnRf
YXR0YWNoLCBETUFfQklESVJFQ1RJT05BTCk7DQo+ICsJc3QgPSBkbWFfYnVmX21hcF9hdHRhY2ht
ZW50X3VubG9ja2VkKGltcG9ydF9hdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCj4gICAJaWYg
KElTX0VSUihzdCkpIHsNCj4gICAJCWVyciA9IFBUUl9FUlIoc3QpOw0KPiAgIAkJZ290byBvdXRf
ZGV0YWNoOw0KPiBAQCAtMjI2LDcgKzIyNiw3IEBAIHN0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9pbXBv
cnRfc2FtZV9kcml2ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAgCQl0aW1l
b3V0ID0gLUVUSU1FOw0KPiAgIAl9DQo+ICAgCWVyciA9IHRpbWVvdXQgPiAwID8gMCA6IHRpbWVv
dXQ7DQo+IC0JZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KGltcG9ydF9hdHRhY2gsIHN0LCBETUFf
QklESVJFQ1RJT05BTCk7DQo+ICsJZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKGlt
cG9ydF9hdHRhY2gsIHN0LCBETUFfQklESVJFQ1RJT05BTCk7DQo+ICAgb3V0X2RldGFjaDoNCj4g
ICAJZG1hX2J1Zl9kZXRhY2goZG1hYnVmLCBpbXBvcnRfYXR0YWNoKTsNCj4gICBvdXRfaW1wb3J0
Og0KPiBAQCAtMjk2LDcgKzI5Niw3IEBAIHN0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9pbXBvcnQodm9p
ZCAqYXJnKQ0KPiAgIAkJZ290byBvdXRfb2JqOw0KPiAgIAl9DQo+ICAgDQo+IC0JZXJyID0gZG1h
X2J1Zl92bWFwKGRtYWJ1ZiwgJm1hcCk7DQo+ICsJZXJyID0gZG1hX2J1Zl92bWFwX3VubG9ja2Vk
KGRtYWJ1ZiwgJm1hcCk7DQo+ICAgCWRtYV9tYXAgPSBlcnIgPyBOVUxMIDogbWFwLnZhZGRyOw0K
PiAgIAlpZiAoIWRtYV9tYXApIHsNCj4gICAJCXByX2VycigiZG1hX2J1Zl92bWFwIGZhaWxlZFxu
Iik7DQo+IEBAIC0zMzcsNyArMzM3LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydCh2
b2lkICphcmcpDQo+ICAgDQo+ICAgCWVyciA9IDA7DQo+ICAgb3V0X2RtYV9tYXA6DQo+IC0JZG1h
X2J1Zl92dW5tYXAoZG1hYnVmLCAmbWFwKTsNCj4gKwlkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZChk
bWFidWYsICZtYXApOw0KPiAgIG91dF9vYmo6DQo+ICAgCWk5MTVfZ2VtX29iamVjdF9wdXQob2Jq
KTsNCj4gICBvdXRfZG1hYnVmOg0KPiBAQCAtMzU4LDcgKzM1OCw3IEBAIHN0YXRpYyBpbnQgaWd0
X2RtYWJ1Zl9pbXBvcnRfb3duZXJzaGlwKHZvaWQgKmFyZykNCj4gICAJaWYgKElTX0VSUihkbWFi
dWYpKQ0KPiAgIAkJcmV0dXJuIFBUUl9FUlIoZG1hYnVmKTsNCj4gICANCj4gLQllcnIgPSBkbWFf
YnVmX3ZtYXAoZG1hYnVmLCAmbWFwKTsNCj4gKwllcnIgPSBkbWFfYnVmX3ZtYXBfdW5sb2NrZWQo
ZG1hYnVmLCAmbWFwKTsNCj4gICAJcHRyID0gZXJyID8gTlVMTCA6IG1hcC52YWRkcjsNCj4gICAJ
aWYgKCFwdHIpIHsNCj4gICAJCXByX2VycigiZG1hX2J1Zl92bWFwIGZhaWxlZFxuIik7DQo+IEBA
IC0zNjcsNyArMzY3LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydF9vd25lcnNoaXAo
dm9pZCAqYXJnKQ0KPiAgIAl9DQo+ICAgDQo+ICAgCW1lbXNldChwdHIsIDB4YzUsIFBBR0VfU0la
RSk7DQo+IC0JZG1hX2J1Zl92dW5tYXAoZG1hYnVmLCAmbWFwKTsNCj4gKwlkbWFfYnVmX3Z1bm1h
cF91bmxvY2tlZChkbWFidWYsICZtYXApOw0KPiAgIA0KPiAgIAlvYmogPSB0b19pbnRlbF9ibyhp
OTE1X2dlbV9wcmltZV9pbXBvcnQoJmk5MTUtPmRybSwgZG1hYnVmKSk7DQo+ICAgCWlmIChJU19F
UlIob2JqKSkgew0KPiBAQCAtNDE4LDcgKzQxOCw3IEBAIHN0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9l
eHBvcnRfdm1hcCh2b2lkICphcmcpDQo+ICAgCX0NCj4gICAJaTkxNV9nZW1fb2JqZWN0X3B1dChv
YmopOw0KPiAgIA0KPiAtCWVyciA9IGRtYV9idWZfdm1hcChkbWFidWYsICZtYXApOw0KPiArCWVy
ciA9IGRtYV9idWZfdm1hcF91bmxvY2tlZChkbWFidWYsICZtYXApOw0KPiAgIAlwdHIgPSBlcnIg
PyBOVUxMIDogbWFwLnZhZGRyOw0KPiAgIAlpZiAoIXB0cikgew0KPiAgIAkJcHJfZXJyKCJkbWFf
YnVmX3ZtYXAgZmFpbGVkXG4iKTsNCj4gQEAgLTQzNSw3ICs0MzUsNyBAQCBzdGF0aWMgaW50IGln
dF9kbWFidWZfZXhwb3J0X3ZtYXAodm9pZCAqYXJnKQ0KPiAgIAltZW1zZXQocHRyLCAweGM1LCBk
bWFidWYtPnNpemUpOw0KPiAgIA0KPiAgIAllcnIgPSAwOw0KPiAtCWRtYV9idWZfdnVubWFwKGRt
YWJ1ZiwgJm1hcCk7DQo+ICsJZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoZG1hYnVmLCAmbWFwKTsN
Cj4gICBvdXQ6DQo+ICAgCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQo+ICAgCXJldHVybiBlcnI7DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
