Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAA45A8E6D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:42:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA23D479B9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:42:45 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2084.outbound.protection.outlook.com [40.107.237.84])
	by lists.linaro.org (Postfix) with ESMTPS id 69FA8479AB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 06:42:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O6z+nWYSe5o2/Whe6E+VgMHFNa3/OMt2THSM6kPHalPa/KX9gD0/wSHgfNY1LfRzntD3Dq7rAt/EfbHDXE+JUzObKVPo2/e2REKayfmE8h8CWaFIh6lUMTKmpOyjXZQJR20FqeQCgQ+uXQKeJ3oqKPa1Vnqd/jETy53CsPGACvYFxJtkfjVVbkH0eyUXvf+fF43/ZKsI6NfIrw0mrpdOA2eEvW8Ph8JsP2tNCRp/FX7C8lQIf6G+3U8/YNbATALO1B4mUmWjKUZT3vOO5tY1EJWyvq18h+TXc9fGwSdDUYU6LZxHr350GG2AcJEIVcXpnYbu4asedp5Tj8iUH3GN3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4BNAjZXyvIcCnEaVAEYj2ATw8Axwa4g12OM8Jd+Ac9A=;
 b=NyFYsM2iOSkvqaJDdRsXRwKCJVXrxIRiT6aM5sJGyku0AX8fZdXFqZmc/ydK4TrLPAY2r3VazD1GEFgryU/i7EJ2wd+itKirtCEjoaHVHydSYab1EPExFTKuks7hngsoxSzRg2kZjdXnvUEB6wXx6zYHLIgorjm6pr9uAQjmsVdYhrTpMvUkv3xrjU4CmWojLJF8J2+4IhoFX4JMbTsKbcEKy5NWw2eUJ3mFg4cqmoz5VH4WxmLFI/Zqb/GYa6tFn9QXHho+FCcMMPmAQHlOUFziNL/2jKHomNrwPnEESy/Mo3L+eelcaCxsNFu5A0VwRA44DUkcdj9i3lJiw0p3QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4BNAjZXyvIcCnEaVAEYj2ATw8Axwa4g12OM8Jd+Ac9A=;
 b=Hp53nflEvH07z68rk3W/XWgfOdkEqm7WT9ILbvLTbnxg8Ij8Hl9EKAJV8gSFCPjdfdaARYDJbmmPrZbbmGcYHFy5Rs/FIGTTSwox2Y9RSHCyJ7nWQQ69XGZ61QqXI9C+4xcKcOw9YgoH1Y1d8aRiGpkBysgi0ETeHx5mObGR/VQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH0PR12MB5156.namprd12.prod.outlook.com (2603:10b6:610:bb::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 06:42:39 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.011; Thu, 1 Sep 2022
 06:42:39 +0000
Message-ID: <708d3284-f363-9eae-eb68-3687e39e83b0@amd.com>
Date: Thu, 1 Sep 2022 08:42:28 +0200
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
 <20220831153757.97381-5-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-5-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AS8P251CA0002.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:2f2::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d3a9da6-9ff3-498c-c857-08da8be529d8
X-MS-TrafficTypeDiagnostic: CH0PR12MB5156:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aY4TaWwUa9CWM3h9LZeE0vuViOAo7bBBMpfT6gV0irN5QMhMVDMvw5K+G0q2t8zmqAQNGDrZHZWrS/JADaKmZ3mfg/1ShXR4Neu/C5MUVb6Nh1+YQgGQpDF1UsxeacNG+mquXSyhxgM1CUi/mzP85qGWIbA2NmbQ6Vy/Wf5FxBPZ0i1QL5LgINR4A8K571qSc3ELnwZtnb3ZKSBoxrCFAl6SfjyMn2vl7mvldJK9QRDwtT0cRgHE7eRDvJwFigeY2+Artq5Ropk8HA7vLn5kcqpgukXmgLKmza/IS5oiqdyThdr/qWHR/KdjtnHlA5UfuxpJm2sRtjxNEg1iTkmUK25gPDbpZhQPuti7L9oV3eUchlph6FR4X5Mrf+DFOwLxEaNNNsqEWVg0LvPcSZrGdGjJPgwenU1gJMCwsMie+PUe3BC8S1ibmPvE0L6oo277VGFz5lJGDMPtlQcPcCd8JGwyCYVfAx/GsZOq5DQ0/f6FiRu6AMbM2F2y8gJ125RmIgwS1nvYZFzkdC5iKWhocR/HLKjsl0gjH22UD+o4yMJpg4O/nSSV4EpmA5tyf4up8MEA1aB5fhTLkeYcCiHeaaKbS4hD6286UJYpi0XW2ooQdbqDxg7o+YG8QHJvZywZKXA6lrLrufeJoBPGwErpsAF59HFYUugn2BmXtZCmxXMqSGo7uwd7kYdwUPHvy+DuI0wWnFX1WLOugP19E/EajKm4+sQ2a4gI+a1Hbn1qXtEPb+UaiUyMuwTMnNIAe52FR2yqeVX1meIBXvmDtS+EZfoPE2qEQuRGOpgGRgWLJWsHYYRJ+ZsT/kUthgcwQpKa
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(5660300002)(83380400001)(36756003)(316002)(6666004)(31686004)(7406005)(7416002)(66574015)(110136005)(186003)(38100700002)(41300700001)(6512007)(86362001)(8936002)(31696002)(8676002)(2616005)(4326008)(6506007)(66476007)(66946007)(6486002)(478600001)(26005)(66556008)(921005)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTRZMlVCOTlPMThZbW85Y3RVRjNYZjloQSsra0JYMjR5elRjYXl1cEo1Wm91?=
 =?utf-8?B?WTB0cjJ0R2lnT1ZRZTgzWHNEV3ducHl0a2RtcklXYitlRU04Q1VrY2kvTlA3?=
 =?utf-8?B?eDErWW00aGhROVNUOVdqRnpaR1EzRSs0Yk9wR09EckJsc1ZVZVlTUS9qTm5u?=
 =?utf-8?B?VXByaDV5QzA3QngrWGlBcUg3RUFoWERDVU5ZYnZ0MzlabkorZGFnYzl1SnhQ?=
 =?utf-8?B?YlJEMW5xMUJmVFdqTHpsa1pDSHI4MDljZ0xwY2daZWlhNjlXUVI2TFIvWXlr?=
 =?utf-8?B?eXhrMVpTVnFIWExjczRSdHpaKzNqeHJYTnVHaU9FSFpMa2hnK0tUZmFZY3g4?=
 =?utf-8?B?NXZvZjM2RUxpNkZjZnkzYXY1S0VYSWJSS3lKS0lZTGRoUXVnbW5KMEdUTVNO?=
 =?utf-8?B?Z3NVNUZtUEh1SVFnajYyRE1sTkgwN1AxR1VZUGNuUjZkblN3WDFQd2xBL2c2?=
 =?utf-8?B?RWZ1Q2hjREdtNXJDNjZjNGVnYkVWdU5xSyszc2I0NnJ3d1RoRS82Q3MrRThV?=
 =?utf-8?B?cWVWS2pEbzF3Skh3SVd4WVYvdjJPaVdRZWUraWNLMHlWcGFCZ0pWdHgvTUsz?=
 =?utf-8?B?ZkZ5elN6S2hFZDlEY3lWdkh3aGpoT3ZBSE5IK0FFUGNOalJwZUpqYVVQSVFC?=
 =?utf-8?B?cFNJMVVkd3lxbjdpME16NVJ2ckRaajNoeE5DSDQrdllMcjBZY0hhQytmM2hz?=
 =?utf-8?B?QnowcHRHUGVqa0JjUmpZQUkyM1JicGtVQXlOWGxzQlhGc2lrS0FGWXBhWHV4?=
 =?utf-8?B?eWVRN1diMFhvbEtFSUgydXFOclRSQUZhOVZ1K0RlTHBsWFFmbkV0cDdzMC82?=
 =?utf-8?B?aFR4QmExUGlITXB5YzNYY2sxOEdLTjY3RG9xUGJHUTU2T3lmVmgzWXhWQyt4?=
 =?utf-8?B?c25KeFZ4dGYxenAvSjFubFl3QWQxZzI4cW9VZVRHVDZpc2oxQkxvekZIMjhv?=
 =?utf-8?B?RVU2QTdEYU0rK3FaNmY4WnpHSEUxcktQK1RZU3VoYUp4c296bFlLS2svdXpP?=
 =?utf-8?B?STdPN2w3NHZwTU1DcTVrV0t2VC9JT0cwbVNzTkJIdjVYVzdSWjFCT29WQWNp?=
 =?utf-8?B?YkNaQ21aS2NKSG1vZDkwdzYxOXQzdXpDN1JhZ2pVUFFUTTZ3bkI5dWtsMS9T?=
 =?utf-8?B?NXREOERLRVBkUnA4Z0x6aGd6Zi9DdW1BaDVIcjRha1NOMTJMUWhUeWNuZVhO?=
 =?utf-8?B?S1F5dExxWjlhR1prc3BGQjlET0VNaXUzY3VUYWU0VjJJK0hIbDk2WndJNFFi?=
 =?utf-8?B?dHRuNnVCNzMvdlM5L1BXYnVrZ3ZGSi9ZKzBvSENneUlncjMxdXVIVGE5b01p?=
 =?utf-8?B?N0tURzI0OHVqUnYzOFlZNXlTY1F5anZqTUUvYUR0bE8vK2ZEZWNkVzNPTjZ3?=
 =?utf-8?B?SFRYVVVRZmttcGt2VG1SSG1RUFcyMURsbytHS3VmdWlHY0MyRTM0Ti9TUGZ3?=
 =?utf-8?B?QWFtb2NINXhBWHY1T0Qzd2FtckVJOUtNcmRjdGdCWEpFeW1ZUzZjeG9kc2Rp?=
 =?utf-8?B?T1NUblBVeWIzalZleFI5RDV4TTVldVd6MjZvMVhYa1JBaGszdUdFVDJCamJP?=
 =?utf-8?B?T2NGSFJ6eGxXZ1M2b3ZVQ0svamtYY3lNSVhoV3V2WWUxQXJTSFdkR2NRUnRE?=
 =?utf-8?B?NGpGTDd3TkdNUXFsdVM0VFdWeWhMM1ZLeGpSeklEbW14TitsME5tc25Zb3lm?=
 =?utf-8?B?b3ZEbHNDTXlYUTVQRHZrZytOVi9LUTNhM2libW0ySUhYcXRVUEE1S29oYzZE?=
 =?utf-8?B?TkxjN3l6emlRMkFFTk15TUQ0N3Z3VHFIaE9pL3U3QmtzRXhxL1RwdHRWbUEy?=
 =?utf-8?B?UXM4VkYzTy8yakJ6b2RvcVM1N3l1NCsxY1F4RFpocmpBMFdZczNHaTc1QjVM?=
 =?utf-8?B?S1JFem5OYnorMU9ickZNRXpPVUk1VkxLa2JpR0FKN3VMeW9zVDdHRCt4M29x?=
 =?utf-8?B?Si92Tklxd05LMzlNYk5hSmhxUXJxYUhtS29raHRMem8yaG1OWDZXdTRQUHJM?=
 =?utf-8?B?bEJvbXkxSlhFaGNLMURRNzVUZ0c4bEdHb0VBamRoUVRkMUFoZU1NTzlmck5h?=
 =?utf-8?B?LzlyblA3aS81MkR2N2M4TlNTbUlpUEFoVDNqaVNTUnVhaFBnejc1OTdKem0x?=
 =?utf-8?Q?5kychvX0I8nkNI3QEUqMXQbE5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d3a9da6-9ff3-498c-c857-08da8be529d8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 06:42:39.4222
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hYiz98BVSRy9vMtowTQs0BSqDpbdslzvNTvgG25KNatCWU5+G8knz2QD7xmAznky
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5156
Message-ID-Hash: KLKZFMN2CT6BA3QVFKDQYVS7EBQSILY7
X-Message-ID-Hash: KLKZFMN2CT6BA3QVFKDQYVS7EBQSILY7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 04/21] drm/prime: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KLKZFMN2CT6BA3QVFKDQYVS7EBQSILY7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
RFJNIHByaW1lIGNvcmUgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBjb252
ZW50aW9uDQo+IGJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVyc2lvbnMgb2YgZG1h
LWJ1ZiBBUEkgZnVuY3Rpb25zLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28g
PGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9kcm1fcHJpbWUuYyB8IDYgKysrLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KPiBpbmRleCBl
YjA5ZTg2MDQ0YzYuLjIwZTEwOWE4MDJhZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KPiBAQCAt
OTQwLDcgKzk0MCw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZHJtX2dlbV9wcmltZV9pbXBv
cnRfZGV2KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ICAgDQo+ICAgCWdldF9kbWFfYnVmKGRt
YV9idWYpOw0KPiAgIA0KPiAtCXNndCA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBE
TUFfQklESVJFQ1RJT05BTCk7DQo+ICsJc2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxv
Y2tlZChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCj4gICAJaWYgKElTX0VSUihzZ3QpKSB7
DQo+ICAgCQlyZXQgPSBQVFJfRVJSKHNndCk7DQo+ICAgCQlnb3RvIGZhaWxfZGV0YWNoOw0KPiBA
QCAtOTU4LDcgKzk1OCw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZHJtX2dlbV9wcmltZV9p
bXBvcnRfZGV2KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ICAgCXJldHVybiBvYmo7DQo+ICAg
DQo+ICAgZmFpbF91bm1hcDoNCj4gLQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBz
Z3QsIERNQV9CSURJUkVDVElPTkFMKTsNCj4gKwlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5s
b2NrZWQoYXR0YWNoLCBzZ3QsIERNQV9CSURJUkVDVElPTkFMKTsNCj4gICBmYWlsX2RldGFjaDoN
Cj4gICAJZG1hX2J1Zl9kZXRhY2goZG1hX2J1ZiwgYXR0YWNoKTsNCj4gICAJZG1hX2J1Zl9wdXQo
ZG1hX2J1Zik7DQo+IEBAIC0xMDU2LDcgKzEwNTYsNyBAQCB2b2lkIGRybV9wcmltZV9nZW1fZGVz
dHJveShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHNnX3RhYmxlICpzZykNCj4g
ICANCj4gICAJYXR0YWNoID0gb2JqLT5pbXBvcnRfYXR0YWNoOw0KPiAgIAlpZiAoc2cpDQo+IC0J
CWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChhdHRhY2gsIHNnLCBETUFfQklESVJFQ1RJT05BTCk7
DQo+ICsJCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZChhdHRhY2gsIHNnLCBETUFf
QklESVJFQ1RJT05BTCk7DQo+ICAgCWRtYV9idWYgPSBhdHRhY2gtPmRtYWJ1ZjsNCj4gICAJZG1h
X2J1Zl9kZXRhY2goYXR0YWNoLT5kbWFidWYsIGF0dGFjaCk7DQo+ICAgCS8qIHJlbW92ZSB0aGUg
cmVmZXJlbmNlICovDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
