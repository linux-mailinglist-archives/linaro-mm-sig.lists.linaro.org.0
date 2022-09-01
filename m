Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3D05A8F1A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 09:04:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A4F6479B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 07:04:29 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2071.outbound.protection.outlook.com [40.107.212.71])
	by lists.linaro.org (Postfix) with ESMTPS id C4F293ED3D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 07:04:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SZ+Ezgb5QpQKgYUI7pdYaTmU6mCW20SmQOpoj9NWj7t1bRJGSnNObeacsJ1Kav0yQlf7bNnhl0PbKhelrd24bru2P+w4C5EWIAsxNUqM0C07I0xrLzSKE1xeYqRJoRVi+65OMH2SAeb21WVakodhbGte20hQBgPauDXiyo4Ua9GpC8/6JVPT9xWI/UOjrEiMB+zTt2TjnpHHExgUt0S3HcsKZ4JjM/DyvFGN2KPaPxtEIcErnmZUEVIC+bibUeLga1zfqqkVGMYQ7Wi6wpjdluHgbP8LvsJ7o1k7nfq2xH1wrYIr+SMIpammUDoZ6Gb3Fo0PCEnvQ9Ve+nYSY5fCbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hI8p1o+ca1GQesZmVDT4egJSBmgnJatgMcSBigp5sQs=;
 b=MUsag9XL9ziMoRTLHt5m6biIXrauFcsynpTbOCyivVtQiC4+8R3QcmBmv1kZbGYONLiRoNtYSAp71CC/g/lSmyQHehV89YoaDpvpFwOpcoeVzHn3RBEK9taJ2ahFI2UOHFKg4UXQzb11Z1eAcUC3oSE/hGdXDa2/yW8NqQBdX8TjlMget/UBGW7AmFMnmqKqr+Eokqab6f/5aKHqvUBkdgN+EW0EvBGX/nNTSzXZUx4K6z+OJM13F8xpoKWn8UEVtTgdsvqzC8lLrCiC2Qsez39a3BCeNjLpO4db6xkTUWJNfPXYpeJtOy9lHfAzdV6JtHHo2QkbdUTxRiNjyc5M1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hI8p1o+ca1GQesZmVDT4egJSBmgnJatgMcSBigp5sQs=;
 b=1QdVz8X4TYZ/v8JLRpaumK0LVXtpQYHMsbYwZZwOwwg9oKGDlu6Z4zcPLLeAQ1UxCoit1wbQ6DObcbvbgm7j/WJ3s36atulVLn/cTg9pRwbNGsydIuvexLhPnsCKGYJgh1jo9mDlIAottdEzzVI683HAaXUsgYnAEg+bMNLYEIA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by DM6PR12MB4299.namprd12.prod.outlook.com (2603:10b6:5:223::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 07:04:21 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a%4]) with mapi id 15.20.5566.021; Thu, 1 Sep 2022
 07:04:21 +0000
Message-ID: <0093f4c9-9935-3bc5-caf8-54669487634a@amd.com>
Date: Thu, 1 Sep 2022 09:04:05 +0200
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
 <20220831153757.97381-13-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-13-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AM5PR0701CA0049.eurprd07.prod.outlook.com
 (2603:10a6:203:2::11) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fd4b6807-4cca-4d46-089c-08da8be831d0
X-MS-TrafficTypeDiagnostic: DM6PR12MB4299:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	68atlB6wn1hbDpIsGi32LRbfVlQPUdePqRy4zfK4mbaMpnuLM6zu2NVY4nIYgEYn/4C2w4MG4Zb5Fij/Xj14VMz5NivI8ievag0rbWAuUIOUi5tTT8ZheYuQzP/sUlBRH2EGo9vvBJnPlVYNjFFvFJ/Y6pGhdflS8ckFA+OVNd4F8b98A6wA6A8a2QqtFY2l0IYdA4qCEIxwytBX99yAwuYJouYihtTUNUT1mdV5VvvYwWR2awjMJOpbvuQlE/JH8ZEdDObHXTN1DYfL/KbZ6yPSwwbas+u3tsuxlXpm5IkqyTClHuQsUH+8zveulCsm24hDENx/Prp5y22Zoufsv8OaNC3Kj6u23pJm5Be87d0ZLLjlTydKEiP3/wPvUKB8tVhWVpEQediet9N4vH5YM9HVpljD31/uMjZRiJKdAzsJEmgLlPAwcquHofiEzmhi5Cdt4TW7bfZ9XD0WkgFqFcJk+DxzY4Iz5VYh1MVaI2AnvQR/VPFbybo6MxiNRuWnunC61LGxHgyiXY6FkB8DR+fngYpTEUIb1kLEf+FwodODoVssA2PFBq3w/WoHAcN/TH17/c2C4jXQQb0ssjw5FGOnoKYTXV1j48v6ImtoclfaUoT8Gv4mM6zHjl/JRNyUQeD/2DEWUMOTpSiF/4jKs6EaxrjNMN1GWwwPeIi5aTkOXIZj9316L9ldugXxtnTPN1aApmRe+trByf/YdqD6rN1ilRL6YkAXRy18dVCzr3wha95ZhQ8AnXVAP5nCz9J7PekPTnXo5te9b6ASbZ80W0ggs58ep4zJpUbRxKKB64ttc/eSS8y91eNCRmtCe8sA
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(39860400002)(136003)(376002)(346002)(41300700001)(6486002)(26005)(6506007)(316002)(6512007)(6666004)(2906002)(86362001)(66476007)(36756003)(31686004)(31696002)(478600001)(110136005)(66574015)(2616005)(921005)(186003)(8676002)(66556008)(7416002)(7406005)(66946007)(38100700002)(4326008)(5660300002)(83380400001)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NVRGNzMvRnpud2xXU1FxWXIyRTFYQXBvWWcvSElVaHh1djJmb0t1WDBLdTdE?=
 =?utf-8?B?WE1TY1QyeHFEM3hvb2ZwTGtMZlhnUFR0Rm1iTG1UUTN2MzZGWGs0bGR5R0Fr?=
 =?utf-8?B?Vm4wQTZ2WkY1RlZKenNZZHJudEhIV1JaOEFDc2xSdUxjMUlrMzRkRDRBbGV3?=
 =?utf-8?B?blZ4THFpN1l1NjRJT1JnZ3E5NHRKTGk2RXR6Y3BoYkFTTGsyWDU2eVRVREFx?=
 =?utf-8?B?MUhkNjdvNkZZWUNzR2IycjZuUjY2ZWZwdG9rQW84U2ljS3ZrVWxjOUtUUU4w?=
 =?utf-8?B?MEtsS3grSUJuam5ldGNoMjc3V2Z2b1kzZ0taTzNJZFBFWWtjRGtSRHBTZHNx?=
 =?utf-8?B?OXlQaUhRS1RhMS92ZEVKZFdxUXFGV3hBQmplajBJYlVvc0hsRzN2UGFDUE1N?=
 =?utf-8?B?Mm5EWUF6YmxLRW91SENwbDdUcVIyeTBVUEIxYTVBaVY0U0RLRkhlUi9rdmZt?=
 =?utf-8?B?NnJJMlJVeGk0elJJUXRhYTBINERXWGdQL2luaEl6cTduRnljdjVaTkJYOHUw?=
 =?utf-8?B?VU03d0taakw2dEIxLzAwcUZiUml4d3o1WU0zZmx4bW9vNDl1V1orcDE3NVc4?=
 =?utf-8?B?YXhQS25FdzVTNk5aTTJua040Zk9aTjRXVGhteDM4TG5oZ21ySXlHZlE2ekk2?=
 =?utf-8?B?QkN5Q0tORjZaNUxuR0JJeWgxNEpxS0NaTndwRWF6U3Rnc0c4b01yMWN3M0tp?=
 =?utf-8?B?anVRaEJlTHdSUTNhU2k0V2Zibm1hdSsvNDNuY1BLeVM4bW9QSG00WTdCYmdj?=
 =?utf-8?B?YlQzQkVLcFo3Z1ZnVE5LWTlBTVU4WllITldSbEh4MCtnbzBaZWJiSlFQV2xS?=
 =?utf-8?B?RXBQWG1WWFQ0U0RRKzFzSkVrYTc0VVNnQmtuKzJjTmFPRDQ2dVNOR1N1RVhl?=
 =?utf-8?B?dHBNUTFMak1KNHJwWUlkWmI5NFY3UkZDRjM3SEprWTc4bGRYZGQwMFZhNEhQ?=
 =?utf-8?B?ZTNXMzY4SmdSK0JONkdmMnBobC9odzFxUjZwZHd0ZXRXOFcwQW5kNllEbFI1?=
 =?utf-8?B?Rm0vMnhycDd5aloySUNtOGJsMUZZL2U5NXJydzMwdW1sVDR2blVrQ0pHSFFi?=
 =?utf-8?B?TmgvUWZ4aGFHN3hpUFRLSDVSWEVkUDJLL1pEV2k4R1B5Q0lQQVNJR0lTdzVx?=
 =?utf-8?B?N2FPeGdPTXVtWmdEV2dQTXJTMGNCK2N2M2xXam5KVzNBYUEvNFlhSGx5S3Rz?=
 =?utf-8?B?OW1qdThjU1VoSVBIL3lmSzB5OGEvRm9wb2JWWnlrVHd0elF2NmlxdEFPR0VW?=
 =?utf-8?B?ZXk1TEVpcVlXbDgzeDRVSHlLNk5kZGJGbjRMcDIxN3RUYWl4ektXSEVXTXpl?=
 =?utf-8?B?MEJZTFRJOGhsR0FmRUt1bnE0QmpRSnl6blJsQ2hqRXBmWWd1cnJwaHBaSktB?=
 =?utf-8?B?T0lZcVdiUTB4cnFreWdRYXRYTzByN2hxZzhNeE5hRG9hb2c4Q0hRWGpZMWQ1?=
 =?utf-8?B?MGNSRlBZSTQvR0NJdnlYdGR3ZFgrQ2VLNlgrOGxGSVRTeVNJNW5tV2UvKzNS?=
 =?utf-8?B?S05OVTNVUDY4MHpUQmlvVXJ1SHJVdlJUb09tNU5iWkREN25YR2dqMzBuREFy?=
 =?utf-8?B?Sk9KL1lnakVtdTJVSk83NWZpbzYzK2hZZHVQUFNCQkdqN01CTHdxVWU3VVp5?=
 =?utf-8?B?akJ1enpDSW9xNXl2a3l0bTVKYURLRWhZU29vSmZMQU42ODEvQUN3UjZjUU9Y?=
 =?utf-8?B?dk9UTXZJbVNzUXdhbnZIdFFzQlh6UE1IcjVyNWNQc0VOMGRBUDMvb0FsbHRQ?=
 =?utf-8?B?VFQrdWNES2dpNUllU3M4RElnVG5MVHE5QkFtWXZuZnNQbjFBSXZaM1BXSUJF?=
 =?utf-8?B?NHo2My91c0lhTXpKWUNyTy9ESTdaSDBZbDlnTXBYdDRXa244NWJWSDBUR3RR?=
 =?utf-8?B?Y2Z0aWVEcmZjaW8zamM4Umo1ZXJONmdyRlBJaklEVEs2WEZ5aW1zNWVTZkVn?=
 =?utf-8?B?RVlEc0k4S3JnWGZGZlIwbFlUdEhKWWlISGxzc3dhV1QwUGJsUUxoelBXdDA0?=
 =?utf-8?B?QjNCTmNUR1YyNWx0ZE5VVmxlbUpXdE9iQ1p5M2QzbGczVnQyaWVFZGl1bDlQ?=
 =?utf-8?B?bnJwaStjWlRHK2JMRW1CcXJ1UUpOejN4OFJsckZFK3F1UG9rRG55aEUwRENj?=
 =?utf-8?Q?WoU141B3IFaXA+w/Z1ONu0aUh?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd4b6807-4cca-4d46-089c-08da8be831d0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 07:04:21.6518
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CX2Mov5TsFEO9Y8CQ4QJiT+iGJUdiUOOg+WUsDKNeD+3ITFaC/flbrRCer9EJVK2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4299
Message-ID-Hash: GIJQAQCQC2RE5D7VNKJ377M3GIA7TO7N
X-Message-ID-Hash: GIJQAQCQC2RE5D7VNKJ377M3GIA7TO7N
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 12/21] xen/gntdev: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GIJQAQCQC2RE5D7VNKJ377M3GIA7TO7N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
Z250ZGV2IGRyaXZlciB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nIGNvbnZl
bnRpb24NCj4gYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBvZiBkbWEt
YnVmIEFQSSBmdW5jdGlvbnMuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8
ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAgZHJpdmVycy94ZW4v
Z250ZGV2LWRtYWJ1Zi5jIHwgOCArKysrLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3hlbi9n
bnRkZXYtZG1hYnVmLmMgYi9kcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMNCj4gaW5kZXggOTQw
ZTVlOWU4YTU0Li40NDQwZTYyNmI3OTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMveGVuL2dudGRl
di1kbWFidWYuYw0KPiArKysgYi9kcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMNCj4gQEAgLTYw
MCw3ICs2MDAsNyBAQCBkbWFidWZfaW1wX3RvX3JlZnMoc3RydWN0IGdudGRldl9kbWFidWZfcHJp
diAqcHJpdiwgc3RydWN0IGRldmljZSAqZGV2LA0KPiAgIA0KPiAgIAlnbnRkZXZfZG1hYnVmLT51
LmltcC5hdHRhY2ggPSBhdHRhY2g7DQo+ICAgDQo+IC0Jc2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNo
bWVudChhdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCj4gKwlzZ3QgPSBkbWFfYnVmX21hcF9h
dHRhY2htZW50X3VubG9ja2VkKGF0dGFjaCwgRE1BX0JJRElSRUNUSU9OQUwpOw0KPiAgIAlpZiAo
SVNfRVJSKHNndCkpIHsNCj4gICAJCXJldCA9IEVSUl9DQVNUKHNndCk7DQo+ICAgCQlnb3RvIGZh
aWxfZGV0YWNoOw0KPiBAQCAtNjU4LDcgKzY1OCw3IEBAIGRtYWJ1Zl9pbXBfdG9fcmVmcyhzdHJ1
Y3QgZ250ZGV2X2RtYWJ1Zl9wcml2ICpwcml2LCBzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+ICAgZmFp
bF9lbmRfYWNjZXNzOg0KPiAgIAlkbWFidWZfaW1wX2VuZF9mb3JlaWduX2FjY2VzcyhnbnRkZXZf
ZG1hYnVmLT51LmltcC5yZWZzLCBjb3VudCk7DQo+ICAgZmFpbF91bm1hcDoNCj4gLQlkbWFfYnVm
X3VubWFwX2F0dGFjaG1lbnQoYXR0YWNoLCBzZ3QsIERNQV9CSURJUkVDVElPTkFMKTsNCj4gKwlk
bWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYXR0YWNoLCBzZ3QsIERNQV9CSURJUkVD
VElPTkFMKTsNCj4gICBmYWlsX2RldGFjaDoNCj4gICAJZG1hX2J1Zl9kZXRhY2goZG1hX2J1Ziwg
YXR0YWNoKTsNCj4gICBmYWlsX2ZyZWVfb2JqOg0KPiBAQCAtNzA4LDggKzcwOCw4IEBAIHN0YXRp
YyBpbnQgZG1hYnVmX2ltcF9yZWxlYXNlKHN0cnVjdCBnbnRkZXZfZG1hYnVmX3ByaXYgKnByaXYs
IHUzMiBmZCkNCj4gICAJYXR0YWNoID0gZ250ZGV2X2RtYWJ1Zi0+dS5pbXAuYXR0YWNoOw0KPiAg
IA0KPiAgIAlpZiAoZ250ZGV2X2RtYWJ1Zi0+dS5pbXAuc2d0KQ0KPiAtCQlkbWFfYnVmX3VubWFw
X2F0dGFjaG1lbnQoYXR0YWNoLCBnbnRkZXZfZG1hYnVmLT51LmltcC5zZ3QsDQo+IC0JCQkJCSBE
TUFfQklESVJFQ1RJT05BTCk7DQo+ICsJCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tl
ZChhdHRhY2gsIGdudGRldl9kbWFidWYtPnUuaW1wLnNndCwNCj4gKwkJCQkJCSAgRE1BX0JJRElS
RUNUSU9OQUwpOw0KPiAgIAlkbWFfYnVmID0gYXR0YWNoLT5kbWFidWY7DQo+ICAgCWRtYV9idWZf
ZGV0YWNoKGF0dGFjaC0+ZG1hYnVmLCBhdHRhY2gpOw0KPiAgIAlkbWFfYnVmX3B1dChkbWFfYnVm
KTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
