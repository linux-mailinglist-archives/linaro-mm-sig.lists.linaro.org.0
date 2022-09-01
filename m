Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1333F5A8EAF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:50:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D9EC479B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:50:32 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2080.outbound.protection.outlook.com [40.107.243.80])
	by lists.linaro.org (Postfix) with ESMTPS id 351E147965
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 06:50:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IjqanZ55qW5/BprhanlVB9LP7mRvVxxFBdg8WX7Ql10KTNUWQY83GrxzQaba8j3yJaN54j4xWu/6luG+6U1zofKWf00bd56f62PTheVsk+oJ9pFaFFvmCQumnjuD/xkPY2I2tKHSGmB/8vOBKJTyx6i94c6jLD9GhqQ2uWVRe/oABfQ9dixptf12fg82yh0ibd3f+O3nKYFyZ3FYXQEFpgepqW0zIlAPcmsIxHFtAhdPAIT7QXNMbmIJ7ptQHnx0w7EeTfXeeCoIzspuG+WWNFfjYdN0wlnEFUScAwOy5KtneLfVg/VhLsGtW1QKHBppxE+OYq+NY84fsHmV0QrgiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BgyT2M/QOG12Qs0uYEkfkLK0upW7qST+TMjYAA1ALoY=;
 b=AIcKkDgltprrYGfS+IwQ2aglMbQL6gEEQ2SaXZ/FrDipRsisTp2SlEjkosNAYTIe63S+r+pn+PGmPJzysAIzbOC9CC4gOhvapdQFDYV8VUeT0L4gKtpt4XpkqU4ZEv4IIiVcOjAq2OzofLUf0liZD3xWNY0hCBPqOPFL64sdghFyaNsfafevGSSeHS8ulm4d1KfgaA9DByX3MhsefOBleHgJhhU6d+Avk5Tr9C9XTEKkmmm7RXai/SkDAaLBSQ0KKC8uhoVBfa4maC9NZVvedK+pMWjzS1uEBKVs28lo2T2UGoCgdru3r//oGcrLSqeB92q90Rq6iaMSGd/aiKW/Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BgyT2M/QOG12Qs0uYEkfkLK0upW7qST+TMjYAA1ALoY=;
 b=vnlYq+EcnbzeQtPf2ZO8kYSNBRVAvrEzYOQOT3RuERvaVYcNz5aAfL6bgx/5HctXIxcb1PRm4uO2ok+hMyV0Rdf0/Y4KMk/HP/AI3o52wm7P2TFNX+3pEe4TMT8CNyEilBuJSqIyK7WIXqvDOHVyRRrxf9EMqOQ5ddsicshTiVQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB4360.namprd12.prod.outlook.com (2603:10b6:208:266::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Thu, 1 Sep
 2022 06:50:25 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.011; Thu, 1 Sep 2022
 06:50:25 +0000
Message-ID: <641f372f-4a30-72bb-ec8b-4fd6ff825594@amd.com>
Date: Thu, 1 Sep 2022 08:50:13 +0200
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
 <20220831153757.97381-10-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-10-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AS8P189CA0056.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:458::33) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e38163cc-49ab-4860-2151-08da8be63f53
X-MS-TrafficTypeDiagnostic: MN2PR12MB4360:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4Qw3U1EYfNcrSQ87bm6Tu4B1uAOrXIyrW+XpocxvbZnWWfonykgGmcvXN6PXvlypl2DdMhkHKQRWEPueIv6D2+DmFytDHl7Krf3htjQKGmgQ2tGPtZzGaNRQdojH0m/T+f6BRTTsqCFSjtKq7xK9MJCJydqoOw+PfqmRcNKSeA12b9iVuIbrSTCwvx+KfdIRWslD38xomhB8v/1wYWXtGPfhnl5lex26bMYrfclz8f5vJLmx6CGURRj4akfvs4P4HW5jV79b2xE6G6Ivo7XjWM8rNHX8rdKM2tewD9NWQimGa6KTs8BObORW31tw1fQWadrJgbgUARH3WcV0Frebb7Ky9hE43R1yXDLEd0a8AyobpqJeTkdCM3MQCL4LPs8Rt/S5XsMZ8wW7d4XOfRdArL87vAPLoqNO0dZji18EAyVScEicWuYQ5ADLKHgJ8W7aP1WM+1ClXHfWrTlZMzJ+p/nfITxnsmwMZCWclvH113d0uI23F+KIfWdFH907ZrTAru2WmqH+WVS/qdv6s3Kpnj7y5gszXCdmGqF4qBI7DgzKXOjLJvfPS3i9Rdbx8EGpBZNma+OhpeztU/N9DH+YYGeFg8OdnNEsDsj6OjjV43FiehgML0WEw43IZZgJcTpjV+Ptt0RhVE+5GB8quqPgDCRWw5yL34RRpVRjKMOCBuv6HxMt70/LMdebszlkj8ixwlJC0jIvjDqsBbJ+qbOK9QeJ6E7tNo3mBri/Cu2EQmR+fo/GoQrSN6qU94b/bwVhuWGTdT2Kux4E3BLiUSiLRH41ZDHXffIHnXxNgcdL6Pvf0mFtovYhWBgCWlC/KgVe
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(83380400001)(38100700002)(66556008)(110136005)(316002)(66476007)(4326008)(8676002)(66946007)(478600001)(36756003)(6486002)(31686004)(6666004)(5660300002)(41300700001)(8936002)(921005)(31696002)(86362001)(2616005)(66574015)(186003)(7416002)(7406005)(26005)(6506007)(2906002)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dVZlVVhVdVRWcEFlU3BEQk1NZFVIS1pvRkt2LzlCTWxoY1JpT2V6a0h5N2xC?=
 =?utf-8?B?SmJ1elF3ZXBHRFJmdGVWdTF5Q1JwcDdycjVYN0VxTm4rTmlCOVpZczRNUVlm?=
 =?utf-8?B?NHBIWEVjMlhwZlFoR1RPK3VNZW11YXcrSVh1eFpXRlNjOXEzUWdGVG1zUFRS?=
 =?utf-8?B?K3F3MCt3eENiZ3N2NFJrTnBGaEhaQ3NOY0tvRWtTTDFIWEE5UkdSLzRmUy8w?=
 =?utf-8?B?SXdzQ0VJenVyUWMvWjNGZ1lqQ0Myc09mQkVvYWh2NWlJR3hGRDJzS1FoLzl1?=
 =?utf-8?B?Vzkva2RGVEJGOFlORUVPZTN0ZkEzQzloYlRPcmZKbk9lUnEzS0laNC9yMWhr?=
 =?utf-8?B?MFlvY2VHaGxZR0V3VktnZ21qZnY0bDhJUUEzbnd4MnZuZDVjVXl0ejZQbEk3?=
 =?utf-8?B?bWFwSG1ienEyS2NZcnBhS3hFSm8rdlVVaS9MY1lITTd2aXdSaEVQd282dHVT?=
 =?utf-8?B?dURkU2MrQ3ExN2FSdEUrV3BSaUw3aGJWZzdnNlBYbXIyZXpUelpWOVU5Y1VS?=
 =?utf-8?B?N1VBNzJHb29aUng1RjFCdjJlOFRscXQ1aGE0aTlQcUFnZVVlMEg2N1dqTFBX?=
 =?utf-8?B?My9laTI3NEtjSlpEekNhRWxIb2NWamdBZVVHdUVwK3RQR3c0QkhBWC81ZGYr?=
 =?utf-8?B?RUpRZ1JXM3VRMGkycFZUWjg4Y25MMFNERG5BN1lpQlBWY25DeCtrNlFWUzFm?=
 =?utf-8?B?NUQrK1hOSUpqV0ZWb283YmU5R0ZuOVlvODBzL1c4STJ4L04xNFhHcG9YcjRN?=
 =?utf-8?B?MGJKUWhkV0tBMWYvL0o0UThSNkJzS1dDZFN0NzhwanpNdGhObTFrc0c0Z1Jk?=
 =?utf-8?B?MVNQOHZqNjNYaDFvWGIwSlUrL1FrU080WllLQWU2cGJkdWlZQjJUUjdQMnlB?=
 =?utf-8?B?REZJaEI1RUEwYWNyc0FxZEU5QmZUR3VQVXZ3YmQ4NUlNa1Ewc3pSRnJqVmVM?=
 =?utf-8?B?SU1Hd3UwOFdMQlFrMU03NjdFQllVTy9BV29yQzUzY3k1U2hhVWpmRThjYkFE?=
 =?utf-8?B?WWkwODFXNndwRTVNUUdXVzQ3YnpzL0tucE1hNVd1MHU4U1JzRTZ4NDE4OTlW?=
 =?utf-8?B?ZExsWU5KY0NIMDl4aDZoS291WUR1dVVsTHpWY3FiRThuWWkwR3BCdm5iRVNa?=
 =?utf-8?B?eFBxRlpPNDBKTGVkSmdid1VxN3E4Vk5YNnFJOUxHbENYMVNEdXYwQnpDSDVP?=
 =?utf-8?B?UFp5RXJvanp6cEpYdmtLbWNyL0hBb29Wakhac016VEFBSkEzM3YrRFQyUW5G?=
 =?utf-8?B?c3VHa0tvcE91T2VFcTNJZ0pTeGZCR3dLZTBKVDI3ZG1rOTdwQklLMkJpUUxQ?=
 =?utf-8?B?U1k5NVR5N1NJaWVhTXczeXVnVk9qVHhoRWticWZvUEV5UmprelZKNDVtRldm?=
 =?utf-8?B?K2hBU2Jzc2VnS3hab3R1WVl0QTZBektpcy9YNnlBYUY1bitZUFZ6VDJxbWpU?=
 =?utf-8?B?WFBuTm10NW1aSjcvb2cyR3RZNjI5VjF6dVRKcENJalNrS24wRVdtMUl1UnR0?=
 =?utf-8?B?dVlHRHcvU3IvMmc5ZDFZaUIwbHprSEt0MDU5cjl0SlVYUFp3NUFQMlVidHlq?=
 =?utf-8?B?QVF0ek9oOHE2SWY0L3NIcmM4TENQT052MVJRMlprc2hJcWZNck91QXpaK1c1?=
 =?utf-8?B?MnBBcVFuNVROemhuai8yR0IxUTcwUkFwZUFPUE9saUlXS0M5ZHYzRFRFYnJk?=
 =?utf-8?B?ODFDUld2NHFFU3FaclFBN251cStGUkc4MzI2eDQ5OTVXYmQvMlFHNU85OXJJ?=
 =?utf-8?B?NlE4aldIRTg2N1FkTlFvU0NSL3VPc0dFUTROVmFlRHVFNUhlUk9XaUZkR3JI?=
 =?utf-8?B?QkZpNGlZZXB5b3lFb09GS3BGQUhYbzZXZllqVURVUHUzVlR3N0tMaGdJa05k?=
 =?utf-8?B?R2dJSGloTU4ybkN0aUVqVGxZNFIwVXhWTi9FamJFWk5PckNKTkRzdWFPVDRk?=
 =?utf-8?B?Wldab0FaY2F4aTh3anNKRTFUVmNwWDRUVzlLNm5ZYThpV2JPaUt6M3NMNWRr?=
 =?utf-8?B?SkJJSmVvU0ZOQjF0aVRURUtiRHY5NXlZSi9oa3JxSkk4dlZlMUROVXFaMkhr?=
 =?utf-8?B?dENnSGpzNjNkdlpwb2FqeG9jVThNT0JQaTdRc3NwNFB4SE1mSEpGdGFDRE5m?=
 =?utf-8?Q?tDO5VkcxVb0GesmHuui/cPbM2?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e38163cc-49ab-4860-2151-08da8be63f53
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 06:50:25.1247
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZiB7fjshmml/8gQ3BPLMGftskJ3cHXzwcEscqW4ZWTzEK9456jizc6fobvHEeBjJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4360
Message-ID-Hash: QPB3NBGMA2WQVWFR4LU4RGHKWFU3YOF6
X-Message-ID-Hash: QPB3NBGMA2WQVWFR4LU4RGHKWFU3YOF6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 09/21] drm/etnaviv: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QPB3NBGMA2WQVWFR4LU4RGHKWFU3YOF6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
RXRuYXZpdiBkcml2ZXIgdG8gdGhlIGNvbW1vbiBkeW5hbWljIGRtYS1idWYgbG9ja2luZyBjb252
ZW50aW9uDQo+IGJ5IHN0YXJ0aW5nIHRvIHVzZSB0aGUgdW5sb2NrZWQgdmVyc2lvbnMgb2YgZG1h
LWJ1ZiBBUEkgZnVuY3Rpb25zLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28g
PGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KDQpJbnRlcmVzdGluZywgd2hlcmUgaXMg
dGhlIG1hdGNoaW5nIHZtYXAoKT8NCg0KQW55d2F5LCB0aGlzIHBhdGNoIGlzIEFja2VkLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fcHJpbWUuYyB8IDIgKy0NCj4gICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtX3ByaW1lLmMgYi9kcml2
ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9wcmltZS5jDQo+IGluZGV4IDNmYTJkYTE0
OTYzOS4uNzAzMWRiMTQ1YTc3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZp
di9ldG5hdml2X2dlbV9wcmltZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0
bmF2aXZfZ2VtX3ByaW1lLmMNCj4gQEAgLTY1LDcgKzY1LDcgQEAgc3RhdGljIHZvaWQgZXRuYXZp
dl9nZW1fcHJpbWVfcmVsZWFzZShzdHJ1Y3QgZXRuYXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29i
aikNCj4gICAJc3RydWN0IGlvc3lzX21hcCBtYXAgPSBJT1NZU19NQVBfSU5JVF9WQUREUihldG5h
dml2X29iai0+dmFkZHIpOw0KPiAgIA0KPiAgIAlpZiAoZXRuYXZpdl9vYmotPnZhZGRyKQ0KPiAt
CQlkbWFfYnVmX3Z1bm1hcChldG5hdml2X29iai0+YmFzZS5pbXBvcnRfYXR0YWNoLT5kbWFidWYs
ICZtYXApOw0KPiArCQlkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZChldG5hdml2X29iai0+YmFzZS5p
bXBvcnRfYXR0YWNoLT5kbWFidWYsICZtYXApOw0KPiAgIA0KPiAgIAkvKiBEb24ndCBkcm9wIHRo
ZSBwYWdlcyBmb3IgaW1wb3J0ZWQgZG1hYnVmLCBhcyB0aGV5IGFyZSBub3QNCj4gICAJICogb3Vy
cywganVzdCBmcmVlIHRoZSBhcnJheSB3ZSBhbGxvY2F0ZWQ6DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
