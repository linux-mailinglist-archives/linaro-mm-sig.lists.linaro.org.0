Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBAC5A8F23
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 09:05:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 066B6479AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 07:05:13 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2087.outbound.protection.outlook.com [40.107.212.87])
	by lists.linaro.org (Postfix) with ESMTPS id BF9893ED3D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 07:05:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fPzSCi8k3/7ttIhxg5dXw4/AAqegzMiOEUcFEOd0BKieVYx+9VsAfpU9a2w2ZAJTtqHhrM550K4FUJIcduPgeEfMgVKOIcwiCV9IoB/kXmTnK3qi58k6UKMgm9X7IB+qGbM43hM6TJ+8ZnMbDeo5kfqcwwG/o86PRinSsIOKWj6Qwv2XwvqiJK3K5bIYlHeRflgMwE7S+727bmqpINNOFO/c8Jzfh8+XK9a5DUxQUl2pvdASZ0HdaYFGoIFTCZgP39j9wShjZ/mXkXBywG2LOhQOw5wgnXsfTDnWKDGiNop4Z8fzQHR149vWrsX+oZeTJ9XfkoJkZ3vSfGajAtTqIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vC5z9Pw4VGhrPJSUH+dcWrH3COwcVlAwYmt0ib+q3LU=;
 b=VFmXvf9fjfqQ6nC6lexsvelhSaIMbkCxH8HfImq3FpjhxsYmRm3XHGlWk504Q6AXSh4CCJwJbhEV9EElMOutq2+b2q7QIP7Lms9YXl0rKH//rn/NUHKyJMmX1sF9Zjef+NwD5fhIJFw1XZPuytePERM0d7pr2yw/Eo3/UBd+V9ANA16870UDQwzyLeLxOArPbWRM0PqpR99HIJenIpMU4U+aGqhoIqi6Wfsd1PJhXsz8lHp4HDoHy2P346rtt18s/T15dyOoVzGWyiG6fx4cYNUYNOOknVO1qm0QnWT/XoZUAGIAsXQQutCVbixec17DrimPwqHn/j+oUUEys7LFsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vC5z9Pw4VGhrPJSUH+dcWrH3COwcVlAwYmt0ib+q3LU=;
 b=Kxwb2nY1uF3p7NWp2c1+Z0+JCxwcm817j1W2lNk+GUraCj3H6qpMyX8+vPVgRkN1/pHJwJ/eVZ1aNDgq25/ZUZX2mOFX85rui4FWsIlrvlTzfhrdPkaL/pe/E41+4SFyxaRECuSlSGUuy6a6gU37moGMXfz23nhqexZ2rFqLrgo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by DM6PR12MB4299.namprd12.prod.outlook.com (2603:10b6:5:223::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 07:05:05 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a%4]) with mapi id 15.20.5566.021; Thu, 1 Sep 2022
 07:05:05 +0000
Message-ID: <7a9bcf6e-45e8-0be5-b716-5b71c9cc0623@amd.com>
Date: Thu, 1 Sep 2022 09:04:48 +0200
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
 <20220831153757.97381-14-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-14-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AM5PR0701CA0051.eurprd07.prod.outlook.com
 (2603:10a6:203:2::13) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21dc0712-a379-467f-ce98-08da8be84bf8
X-MS-TrafficTypeDiagnostic: DM6PR12MB4299:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZMgUfPhbcrWv6bIrPmIkxakhJRXzfbNRoOCVc19g9GOlKxkBmzUb8DO3gq3Il6fMhRkrFDnP3kFEZ/AbgJHoiYjIHv0RiBiwgNSrSmCE6oGn+bmJmg/QPHBctAZmItZFlAYGt/Q7Wr3xWG5auv+x4cP03Oz+32x89OkaoxCHPzWhrHerVsOUIsOx5v0cPZxVN/0GUG8DOLostVAXK2N4PQkXHQD+O7ic+QdxT7vVF42wS2hiSBZY8THRkw/vRc0ew6TrtlLWGUXvHAfWqpgI1uzB1NYqS4+S5jDKS37JQaaIklgAU3kFlwmHKAdcrJaqRDIAAu9k1aB6XAom9oNV91Zc2b3BmVwECT3u34qb8H3+UqgHPIq6q7iUqAPUfjEKIbiQYWRLzr+qLF2gxqHzbRdioNIuM/KthQ5tlcN+qoWEl64UUK4QpUmavM3tbusNfpy00LZDCNVg222VNJvutkIVVL8cwP7vVR/tk6/xsMhv0ig2pc7pcMtInaq3tmaWf+WOpjlaLbymAapRe4k9VQkkPXhhxCXvL7XmU3d0496EyAYFDo1PhaQuh83wBFn9Q0SM2Mw95ZdzWPgsdmVLVqM2H+U8KXBdpei/brIykmO7vHI7Li0z6ccWVGVt11uW4iogbPoJsoP0KkONL9sB83Emlx7fqxaBAH7sR58GMcjlom8Pphq/hahll0YdMdayWboHLyo/s2VCoQr4ZLGjn5pdJREX9SUUH/QCkeJybrDB7gveXF5iC9iwJZ+W1jiylYtpZ4Z1JfI2uF/FF/bW70Ho9Boxi/Yb2HXrDEqnURL/IMI7pUXvxN8hJawf+0mw
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(39860400002)(136003)(376002)(346002)(41300700001)(6486002)(26005)(6506007)(316002)(6512007)(6666004)(2906002)(86362001)(66476007)(36756003)(31686004)(31696002)(478600001)(110136005)(66574015)(2616005)(921005)(186003)(8676002)(66556008)(7416002)(7406005)(66946007)(38100700002)(4326008)(5660300002)(83380400001)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eUlXNTl5Vmd3THJ5NjJyZHZOTTZDQlJoMnRtNTg2Q1dLMHBWc2RMeWFhMjdk?=
 =?utf-8?B?dUF5Zk5waW1nS25kYUhkTjhZV0RadVFBN2ppTW53YmtKVFFOUVJzeHhTTWtx?=
 =?utf-8?B?NlJWUjlnUGpXRVkzTWh6Nzg0ZVo2RGgvdnhZR0t2dFdhZ05jT2dsNFhHSEpj?=
 =?utf-8?B?M3VYeVZGRDVja1U2SEJYbDVrRWFyL2NBSis0OHdVVXpKeGFCL1lGOU5YaGFp?=
 =?utf-8?B?UEgxbVRmQkttVzV6TU1YWVRwN2c5dzRxM1R0UVZNcWU3VTZsOHpXQW00NThS?=
 =?utf-8?B?aWpkVS9hVTl4VnFDOExGVWdKaGZDRGJTNk9YWkFGWVpsdUxQYzhWQVI1WWtO?=
 =?utf-8?B?M3d2Rlk3akIvdi80UW9lVGkyRjNZT1F1TnNGQmVRT0ExZk14SVJ0R2prcGlh?=
 =?utf-8?B?blNmRHY3dGNSaThsWmt3Zm5JaDJjV2VxY2VXbEJzTjlxaDJleUpiejdqRml1?=
 =?utf-8?B?VnpabUl3ZnV6d0xnWmR0ZFN3ck5UNE5nTm1yNmlVYXZSUTVTQ09xZi9QTGY0?=
 =?utf-8?B?UktDZ01xYjFsOUxFang0WmhQT1BqODhocVJVYTFlaGNvT05uZ2pBTWR6RTZW?=
 =?utf-8?B?dnFOVVJITVg0aFhQVHFkM2hVTUJtL1lkM1hsVDRoZTBjS1o2YXZTSzJWMHBQ?=
 =?utf-8?B?a3A1SGt3Z0UrRnpnckFkUVVLQzNQR2V3RGpqUk5ONWZ2Wk5LN3l3dFAvbEJG?=
 =?utf-8?B?a3dLR3pOVE00QnZUaVQ5VUZFSTR6d2ZlbzA4REdjR01XWVorZEE2TkR0ZThp?=
 =?utf-8?B?c3lSaFBMeUFDcWhtOTBleCtGSnFkaW52bmhYV3ZjekpWTDQxNE9ZbUxLbzd5?=
 =?utf-8?B?NFRxZm1odytBVXBFUGhDSGZvTmJ4bERZUVYyS0NLdUpVY1BEb0cwYmt6Z0Fu?=
 =?utf-8?B?dTh0U1pHOC9NY0xOamVrQXJ1a1I1WEdXdnphbDRrd0o4SldHT1pNTUM0Ykxh?=
 =?utf-8?B?UFpXS2NWT3VGcE0wUjhMTURPSlQzZDlBRFdWNWd0QWh0TUtTa1hPZ2pMeUtz?=
 =?utf-8?B?QUl4cmRJaHZOUE82T045S1lGUDlrS001SXlwTWhmVTBoVUUzYWY2UUxBUlhl?=
 =?utf-8?B?bXhEbUx4NWtDTUJadThGSVBrcm1ZcHl5c05iQjh1dms5VTZ3SCtUZU9RUFg5?=
 =?utf-8?B?ZklHenpnWDVrWnFDU2FOdEVlYm1tK2syaERQdkN1YkhvOW1hQ3FkNjVwTFVG?=
 =?utf-8?B?dzhRLzVzb2lUdllZUktUemw5eTZpY1pueGo5Z3d1MHhSNmlLSE1kS2tGcWk4?=
 =?utf-8?B?TUpEMFJjNmhlUmFwZ3Nib2xlWGRVaWNCdy9tVGJjdWtFRUdBUGxKS1B3cGd5?=
 =?utf-8?B?T0tHbUtqdXV6cTJISnhDeUEveWt1bE52K1NSLzBCTEZ6YmZ0T2QwVzQ1WW9h?=
 =?utf-8?B?MlhZSTN0WFFGSGpSOE9sU05LeUg2aGFhd0doL0pjcjgwajdHUHFKM1dKR2VI?=
 =?utf-8?B?Q1JJT3c4RVdWWlA2dndDRkJ2NmRDbWlQblJ1QUh5OC92aWttSm9sZko4SFc2?=
 =?utf-8?B?Z21kOUswUjYzNHhpYWN0Ym0yYTViaGlta21weDBHZCs0V3FscVA4QlZUZlpy?=
 =?utf-8?B?V1FabXNyZlJXb0JIR2tST3NnTHV4MDlLZmx5ZVNmZklzNFBLR3NOM2tUbFpy?=
 =?utf-8?B?SWluamtKZWx4QUJmT2NiVzhDUExmTnB2dlpiRy9nVjdMN3BQeHV5U3cvTVNz?=
 =?utf-8?B?N00xWG8rbmpLWGJRbHl6a2tDOXY3Z2Rya1VHdGVRMEh4ajg1d2oxMkRuSEdl?=
 =?utf-8?B?dkc3SVVBRTJXalltU0orSlhBTkFvZ1M3S3drT0dGY3c5WGh5RkFGMksrU2pS?=
 =?utf-8?B?TUgxbks0Y3JHdUlycTR3ZXZ0TDhJRUpDdFZJM1dJa0llR3NSelZpVXMrYmdK?=
 =?utf-8?B?TXViRXpRMks3MzJmMlhCbmM0QVl0SDZSVjdOZUNpL0wvM0FNMjgyMlJPUE1r?=
 =?utf-8?B?cjBSOWk1Qk1yNmk0WHdNc1VKRlVUampadHhVMzdQNVpGWUNhVmx0bmxsZTVm?=
 =?utf-8?B?Yy9Yckl2N2hWTG5hMkNjVDlyeUJXNFVOT1pJcUF4YmJuYWF2RkdGdDIySXYz?=
 =?utf-8?B?VWpqZmo0VWtla01Qd2hhTi8wRWthc3Vlb2M1dFRJWUdCYWFDM3NGZW1kcnl1?=
 =?utf-8?Q?dz+gZ1ELI5g2AOAefsqYj/iTB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21dc0712-a379-467f-ce98-08da8be84bf8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 07:05:05.3991
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9RpEALNQu+tzLmymzDbw+VcGjdnYbhaEyG+s6xrIjfGNOotqBl6TIwZsS+TqblSv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4299
Message-ID-Hash: 65N34KEV2KNYNWC3KNVOTYEZM3CPOHTM
X-Message-ID-Hash: 65N34KEV2KNYNWC3KNVOTYEZM3CPOHTM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 13/21] media: videobuf2: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/65N34KEV2KNYNWC3KNVOTYEZM3CPOHTM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
VjRMMiBtZW1vcnkgYWxsb2NhdG9ycyB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2Nr
aW5nDQo+IGNvbnZlbnRpb24gYnkgc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9u
cyBvZiBkbWEtYnVmIEFQSQ0KPiBmdW5jdGlvbnMuDQo+DQo+IEFja2VkLWJ5OiBUb21hc3ogRmln
YSA8dGZpZ2FAY2hyb21pdW0ub3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28g
PGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KDQpBY2tlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvbWVk
aWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jIHwgMTEgKysrKysrLS0t
LS0NCj4gICBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5j
ICAgICB8ICA4ICsrKystLS0tDQo+ICAgZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3Zp
ZGVvYnVmMi12bWFsbG9jLmMgICAgfCAgNiArKystLS0NCj4gICAzIGZpbGVzIGNoYW5nZWQsIDEz
IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMgYi9kcml2ZXJz
L21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYw0KPiBpbmRleCA2
NzhiMzU5NzE3YzQuLjc5ZjRkODMwMWZiYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9tZWRpYS9j
b21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMNCj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMNCj4gQEAgLTEwMSw3
ICsxMDEsNyBAQCBzdGF0aWMgdm9pZCAqdmIyX2RjX3ZhZGRyKHN0cnVjdCB2YjJfYnVmZmVyICp2
Yiwgdm9pZCAqYnVmX3ByaXYpDQo+ICAgCWlmIChidWYtPmRiX2F0dGFjaCkgew0KPiAgIAkJc3Ry
dWN0IGlvc3lzX21hcCBtYXA7DQo+ICAgDQo+IC0JCWlmICghZG1hX2J1Zl92bWFwKGJ1Zi0+ZGJf
YXR0YWNoLT5kbWFidWYsICZtYXApKQ0KPiArCQlpZiAoIWRtYV9idWZfdm1hcF91bmxvY2tlZChi
dWYtPmRiX2F0dGFjaC0+ZG1hYnVmLCAmbWFwKSkNCj4gICAJCQlidWYtPnZhZGRyID0gbWFwLnZh
ZGRyOw0KPiAgIA0KPiAgIAkJcmV0dXJuIGJ1Zi0+dmFkZHI7DQo+IEBAIC03MTEsNyArNzExLDcg
QEAgc3RhdGljIGludCB2YjJfZGNfbWFwX2RtYWJ1Zih2b2lkICptZW1fcHJpdikNCj4gICAJfQ0K
PiAgIA0KPiAgIAkvKiBnZXQgdGhlIGFzc29jaWF0ZWQgc2NhdHRlcmxpc3QgZm9yIHRoaXMgYnVm
ZmVyICovDQo+IC0Jc2d0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudChidWYtPmRiX2F0dGFjaCwg
YnVmLT5kbWFfZGlyKTsNCj4gKwlzZ3QgPSBkbWFfYnVmX21hcF9hdHRhY2htZW50X3VubG9ja2Vk
KGJ1Zi0+ZGJfYXR0YWNoLCBidWYtPmRtYV9kaXIpOw0KPiAgIAlpZiAoSVNfRVJSKHNndCkpIHsN
Cj4gICAJCXByX2VycigiRXJyb3IgZ2V0dGluZyBkbWFidWYgc2NhdHRlcmxpc3RcbiIpOw0KPiAg
IAkJcmV0dXJuIC1FSU5WQUw7DQo+IEBAIC03MjIsNyArNzIyLDggQEAgc3RhdGljIGludCB2YjJf
ZGNfbWFwX2RtYWJ1Zih2b2lkICptZW1fcHJpdikNCj4gICAJaWYgKGNvbnRpZ19zaXplIDwgYnVm
LT5zaXplKSB7DQo+ICAgCQlwcl9lcnIoImNvbnRpZ3VvdXMgY2h1bmsgaXMgdG9vIHNtYWxsICVs
dS8lbHVcbiIsDQo+ICAgCQkgICAgICAgY29udGlnX3NpemUsIGJ1Zi0+c2l6ZSk7DQo+IC0JCWRt
YV9idWZfdW5tYXBfYXR0YWNobWVudChidWYtPmRiX2F0dGFjaCwgc2d0LCBidWYtPmRtYV9kaXIp
Ow0KPiArCQlkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoYnVmLT5kYl9hdHRhY2gs
IHNndCwNCj4gKwkJCQkJCSAgYnVmLT5kbWFfZGlyKTsNCj4gICAJCXJldHVybiAtRUZBVUxUOw0K
PiAgIAl9DQo+ICAgDQo+IEBAIC03NTAsMTAgKzc1MSwxMCBAQCBzdGF0aWMgdm9pZCB2YjJfZGNf
dW5tYXBfZG1hYnVmKHZvaWQgKm1lbV9wcml2KQ0KPiAgIAl9DQo+ICAgDQo+ICAgCWlmIChidWYt
PnZhZGRyKSB7DQo+IC0JCWRtYV9idWZfdnVubWFwKGJ1Zi0+ZGJfYXR0YWNoLT5kbWFidWYsICZt
YXApOw0KPiArCQlkbWFfYnVmX3Z1bm1hcF91bmxvY2tlZChidWYtPmRiX2F0dGFjaC0+ZG1hYnVm
LCAmbWFwKTsNCj4gICAJCWJ1Zi0+dmFkZHIgPSBOVUxMOw0KPiAgIAl9DQo+IC0JZG1hX2J1Zl91
bm1hcF9hdHRhY2htZW50KGJ1Zi0+ZGJfYXR0YWNoLCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICsJ
ZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50X3VubG9ja2VkKGJ1Zi0+ZGJfYXR0YWNoLCBzZ3QsIGJ1
Zi0+ZG1hX2Rpcik7DQo+ICAgDQo+ICAgCWJ1Zi0+ZG1hX2FkZHIgPSAwOw0KPiAgIAlidWYtPmRt
YV9zZ3QgPSBOVUxMOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItZG1hLXNnLmMNCj4gaW5kZXggZmE2OTE1OGE2NWIxLi4zNmVjZGVhOGQ3MDcgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1h
LXNnLmMNCj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1k
bWEtc2cuYw0KPiBAQCAtMzA5LDcgKzMwOSw3IEBAIHN0YXRpYyB2b2lkICp2YjJfZG1hX3NnX3Zh
ZGRyKHN0cnVjdCB2YjJfYnVmZmVyICp2Yiwgdm9pZCAqYnVmX3ByaXYpDQo+ICAgDQo+ICAgCWlm
ICghYnVmLT52YWRkcikgew0KPiAgIAkJaWYgKGJ1Zi0+ZGJfYXR0YWNoKSB7DQo+IC0JCQlyZXQg
PSBkbWFfYnVmX3ZtYXAoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+ICsJCQlyZXQg
PSBkbWFfYnVmX3ZtYXBfdW5sb2NrZWQoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+
ICAgCQkJYnVmLT52YWRkciA9IHJldCA/IE5VTEwgOiBtYXAudmFkZHI7DQo+ICAgCQl9IGVsc2Ug
ew0KPiAgIAkJCWJ1Zi0+dmFkZHIgPSB2bV9tYXBfcmFtKGJ1Zi0+cGFnZXMsIGJ1Zi0+bnVtX3Bh
Z2VzLCAtMSk7DQo+IEBAIC01NjUsNyArNTY1LDcgQEAgc3RhdGljIGludCB2YjJfZG1hX3NnX21h
cF9kbWFidWYodm9pZCAqbWVtX3ByaXYpDQo+ICAgCX0NCj4gICANCj4gICAJLyogZ2V0IHRoZSBh
c3NvY2lhdGVkIHNjYXR0ZXJsaXN0IGZvciB0aGlzIGJ1ZmZlciAqLw0KPiAtCXNndCA9IGRtYV9i
dWZfbWFwX2F0dGFjaG1lbnQoYnVmLT5kYl9hdHRhY2gsIGJ1Zi0+ZG1hX2Rpcik7DQo+ICsJc2d0
ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZChidWYtPmRiX2F0dGFjaCwgYnVmLT5k
bWFfZGlyKTsNCj4gICAJaWYgKElTX0VSUihzZ3QpKSB7DQo+ICAgCQlwcl9lcnIoIkVycm9yIGdl
dHRpbmcgZG1hYnVmIHNjYXR0ZXJsaXN0XG4iKTsNCj4gICAJCXJldHVybiAtRUlOVkFMOw0KPiBA
QCAtNTk0LDEwICs1OTQsMTAgQEAgc3RhdGljIHZvaWQgdmIyX2RtYV9zZ191bm1hcF9kbWFidWYo
dm9pZCAqbWVtX3ByaXYpDQo+ICAgCX0NCj4gICANCj4gICAJaWYgKGJ1Zi0+dmFkZHIpIHsNCj4g
LQkJZG1hX2J1Zl92dW5tYXAoYnVmLT5kYl9hdHRhY2gtPmRtYWJ1ZiwgJm1hcCk7DQo+ICsJCWRt
YV9idWZfdnVubWFwX3VubG9ja2VkKGJ1Zi0+ZGJfYXR0YWNoLT5kbWFidWYsICZtYXApOw0KPiAg
IAkJYnVmLT52YWRkciA9IE5VTEw7DQo+ICAgCX0NCj4gLQlkbWFfYnVmX3VubWFwX2F0dGFjaG1l
bnQoYnVmLT5kYl9hdHRhY2gsIHNndCwgYnVmLT5kbWFfZGlyKTsNCj4gKwlkbWFfYnVmX3VubWFw
X2F0dGFjaG1lbnRfdW5sb2NrZWQoYnVmLT5kYl9hdHRhY2gsIHNndCwgYnVmLT5kbWFfZGlyKTsN
Cj4gICANCj4gICAJYnVmLT5kbWFfc2d0ID0gTlVMTDsNCj4gICB9DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyBiL2RyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItdm1hbGxvYy5jDQo+IGluZGV4IDk0
ODE1MmYxNTk2Yi4uNzgzMWJmNTQ1ODc0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL21lZGlhL2Nv
bW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KPiArKysgYi9kcml2ZXJzL21lZGlh
L2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYw0KPiBAQCAtMzc2LDcgKzM3Niw3
IEBAIHN0YXRpYyBpbnQgdmIyX3ZtYWxsb2NfbWFwX2RtYWJ1Zih2b2lkICptZW1fcHJpdikNCj4g
ICAJc3RydWN0IGlvc3lzX21hcCBtYXA7DQo+ICAgCWludCByZXQ7DQo+ICAgDQo+IC0JcmV0ID0g
ZG1hX2J1Zl92bWFwKGJ1Zi0+ZGJ1ZiwgJm1hcCk7DQo+ICsJcmV0ID0gZG1hX2J1Zl92bWFwX3Vu
bG9ja2VkKGJ1Zi0+ZGJ1ZiwgJm1hcCk7DQo+ICAgCWlmIChyZXQpDQo+ICAgCQlyZXR1cm4gLUVG
QVVMVDsNCj4gICAJYnVmLT52YWRkciA9IG1hcC52YWRkcjsNCj4gQEAgLTM4OSw3ICszODksNyBA
QCBzdGF0aWMgdm9pZCB2YjJfdm1hbGxvY191bm1hcF9kbWFidWYodm9pZCAqbWVtX3ByaXYpDQo+
ICAgCXN0cnVjdCB2YjJfdm1hbGxvY19idWYgKmJ1ZiA9IG1lbV9wcml2Ow0KPiAgIAlzdHJ1Y3Qg
aW9zeXNfbWFwIG1hcCA9IElPU1lTX01BUF9JTklUX1ZBRERSKGJ1Zi0+dmFkZHIpOw0KPiAgIA0K
PiAtCWRtYV9idWZfdnVubWFwKGJ1Zi0+ZGJ1ZiwgJm1hcCk7DQo+ICsJZG1hX2J1Zl92dW5tYXBf
dW5sb2NrZWQoYnVmLT5kYnVmLCAmbWFwKTsNCj4gICAJYnVmLT52YWRkciA9IE5VTEw7DQo+ICAg
fQ0KPiAgIA0KPiBAQCAtMzk5LDcgKzM5OSw3IEBAIHN0YXRpYyB2b2lkIHZiMl92bWFsbG9jX2Rl
dGFjaF9kbWFidWYodm9pZCAqbWVtX3ByaXYpDQo+ICAgCXN0cnVjdCBpb3N5c19tYXAgbWFwID0g
SU9TWVNfTUFQX0lOSVRfVkFERFIoYnVmLT52YWRkcik7DQo+ICAgDQo+ICAgCWlmIChidWYtPnZh
ZGRyKQ0KPiAtCQlkbWFfYnVmX3Z1bm1hcChidWYtPmRidWYsICZtYXApOw0KPiArCQlkbWFfYnVm
X3Z1bm1hcF91bmxvY2tlZChidWYtPmRidWYsICZtYXApOw0KPiAgIA0KPiAgIAlrZnJlZShidWYp
Ow0KPiAgIH0NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
