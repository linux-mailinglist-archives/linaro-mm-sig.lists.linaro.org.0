Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2EF5A8EDA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:55:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BF00479BC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:55:24 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2052.outbound.protection.outlook.com [40.107.223.52])
	by lists.linaro.org (Postfix) with ESMTPS id 2BFF93ED3D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Sep 2022 06:55:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=neBzB0/O4hnlq3ymTWFbFsEgcMXcPV+f7tXm5XvXctAY2+zrKSqnpxZjd3Bq/WLIwnIgFmJmrR0aVTaZLvLEi3PGm/yzVTp4A+wqWEQ6sPlE5lt2+5F7rLLjNd88XMue81+WwW5qaXLr8ZDirfz6PC5wnLHGl94oVMZKnHsokZF7OdOwcpNYT0Nsg7TUBVqZFLbgEVXbVHlmLUw3vhIWRNfby/CTK4BiP7QdMfziqePE1VxQk95fZKUMYzwW0AwY+akJ4pZGxWUSjlbFXrduKUdNCwWnxb3WKQxNXGri3K9pnYR/Ji7CB7vdM84YcOQCZcIUHRGBwVyR0fdVP06W7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=akN2a1Wgmqf1q4N6+stU9PFi00lxSLd6MVgNGbipNas=;
 b=iGfykgLkTjZ9Gd6WJHt62zVq7CqqcfW2Uys7ueQDg6J52Tg7jU2KS+Ax80C+AE1z2eUDDhvEUzue0YKspY32Q2NFHfhg8ufpA99y9gsRsGsb7cTN+ujnJ3mu1oGtX+VjTzwGLj34+FH/yjIIbkVYfe/e7JUhjqxoV92bfH4S5aD1C2SZbvsDL/bdUaeBGxI3AecvAL8Ms7H6J23aFGiUXuhIt4aNkDqg9NnF1LB/o0jFNIx5CBpaBrM+nLmQxAuEspfqln5Jqnj7lxgSHx3RMjUyKNQqT37qZumx3gvfZ4nCw2HTi+wV0Jw9WXOuq0+mfij3UXzw0uyY9gq0DCjfzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=akN2a1Wgmqf1q4N6+stU9PFi00lxSLd6MVgNGbipNas=;
 b=JOsa0PLZMZgez0uuEzWIw1IpWh/JAekz/rllcbVfNs4f1vVMrL+LAX3Br8pUo9So1KF/rqkkhqFh2mCk3kcbDZnszgGbUbxt84l3YvB4guInZLmEBArRPqPxTMbYGksnBWBLD/Jyec7fw/H7wUQo20JAo+E9HwOUmcwuC2/0eUo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB6039.namprd12.prod.outlook.com (2603:10b6:8:aa::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 06:55:17 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::4524:eda6:873a:8f94%7]) with mapi id 15.20.5588.011; Thu, 1 Sep 2022
 06:55:16 +0000
Message-ID: <ad72df13-920e-6b22-80ae-ecf2e6bc5b55@amd.com>
Date: Thu, 1 Sep 2022 08:55:04 +0200
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
 <20220831153757.97381-12-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220831153757.97381-12-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AS8P251CA0005.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:2f2::10) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23112121-b4a2-47fe-3dc5-08da8be6ecd6
X-MS-TrafficTypeDiagnostic: DM4PR12MB6039:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9HRW5bqonJ5VobVy0GTfxPygJxSFhNLJHVvnhRc7TuhcMW+9cnhuBZ7TS3ikydx6eNTo6jMI54qtUTz1qb5sUykQ5uJj9xoKqaEQ3WtYJAaYhs3a6Xmll38shJ886vhH2x8reCYDPFu0cw6IQsDijSXq2TK9dm/RYTaOP3Zmha5NlYw5XS3MiaroNqPzYlIZXaoRrAZWfPOZYaoU5O8GF3BtMULgihu+mLlHQq9k+DlgJh9Ro3V9ikSl7xncvoP3VAzut1p21WXK9RpKZwTOEsixsrRECCIq9y2g5gQs5pcqTGVG5h6tD+EtZMzmIu9F/ajRZTX9FM5yZIDvfnCYFSTuCjIhDMm7nPTkk7RcreFw9n8xg3t+oqkexfeoUXDT0YRQuyY8dBdo+NPgqRldR/RcxLaZ+uIJ4OljE9I8OqLjvPz238RVoywTQoGQctP7GaFDrMdApkpQT+HS+PQ6YrmtlHobzHnZovye1ubGxwbbCBXHqHCtTQnoxrSJwpCnXj5f06JsT0w45XqFeolbbGsUamvpwmDeJVXyDLb/XOvnYGO/kIxg1FU8BaUkwxbon5UtMrmqOuxHek7VStq/cHcySl3Q6zuyXwv9qwX9nk/VzB6k4W0I6nYzCHC2bcoiX+vXYwQWTATefvDW6tnAD+DZ+VVHv7Ivnt1hc+QfNRmIMzYuxJ0Z1lUwqv0Qg4x4ElmSJtNhEZhaapxeO3CjhXfMSO4zWWrdBtdPY7HhUaScDFTj5fyjy3K2xr1mguwnvu+GEijS3vqm+yI9+rHFeo2+xpzXrqS4rmGchkjOyZkN1JKCZGUM+rZ38qwueBPE
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(2906002)(6506007)(6666004)(8676002)(66476007)(4326008)(66556008)(66946007)(316002)(478600001)(36756003)(6486002)(2616005)(41300700001)(6512007)(110136005)(26005)(31696002)(921005)(86362001)(186003)(66574015)(83380400001)(7406005)(8936002)(5660300002)(31686004)(7416002)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cTJWcENQdG9QeU1sLzVONlFiTTY1WUs4dGNKQTR3dDRCcy9Ic2Vnd1I1NmY2?=
 =?utf-8?B?bXR6U2hsbVpQU1JRTVE0d01Nbjk1cTQ4OGNCeVUrSHJrb1NoNzZsSzJ1eFVo?=
 =?utf-8?B?ODRzaWhCK1F2UlVwSGhDYlZZaUJhZFFmaDJkT2U4MXJNWW9yeWFPVDcxS1Rx?=
 =?utf-8?B?TzBIUTZXNEVpbXQxcHBkVHVXYmVqUXpGcFkwQWRaenlYaTBmYkk2L2pXOWdk?=
 =?utf-8?B?d2tHVUVlQzRFRjU5ZUpJZGZadEpEMnYzUzM5WjJONFNKVXRTdzNjVi91VWNP?=
 =?utf-8?B?NlUzVjNUZ096aENxbHVqRGxqZzE0cEdEUzczcVlqMWpDaFUxYmk2c0labnox?=
 =?utf-8?B?ajlPb2RKRnV1LzZkN1VvQTNxeUpkU1lZRDRTR1l3YjVnMnNCazduNTlvZFhE?=
 =?utf-8?B?YUNxWjR4VDVkTXhaMnBkbERhQ1crSXZOSHdxdGJML2V3UUxOS3FORmVzRHQ0?=
 =?utf-8?B?VnFmbDd3WUIxUTJ2ZkMzY01Jck4rY05YTGFrMFVkcFF4UG1QTi84cG5jSTRm?=
 =?utf-8?B?NWJSVEpKT2RXdjExc2JKTGhOKzZxSWIvQU9WUHYwazhCSUNqZW9aOVZrSndm?=
 =?utf-8?B?MjdXbEdwSW91eGRRUU5UaGVTV0FjZnc5RnFvSWZzTmpyVmdpQ0xLdkpMNGdw?=
 =?utf-8?B?OE40SUVBSGRwOGZyVFdTc1NnQVA1T1pRWmU3SFc0bWVFaHFFakxGOTIwMmky?=
 =?utf-8?B?TWJ2MlowVXY3VXM4TGdSclNKSzRQendRMGF4TWtJMnNTUXljNnJNTkwraXFj?=
 =?utf-8?B?NTZUMmF1UmpIR1NyZ25ObXFUTE1vYUYzN1NIWHlOVzFpTTR1dUZHc3Y3b1li?=
 =?utf-8?B?dW01Y0Myd3l1SmJtcFZ5VHlkWkdmY3pYUERsTVdyUlRVS2JFeDUzS21CRVE0?=
 =?utf-8?B?bWtIT2QyTWJOdCtRdnljclY1ZSsreHJiRXBSdXZ6Zy81dEhBZHBxWXFyNWEw?=
 =?utf-8?B?L0VMdld2T0o2MjRHNjV2NVJhUW1SVldKS2xhY1MzK3hrV2dpcC9DK2xCTFRl?=
 =?utf-8?B?NHhYRmMvcmJ5Q2lDVHk5Y2tQNlRxaFBhVEtwVENxbTFmaVNBOVg2NTVWb0hY?=
 =?utf-8?B?Z2ptWVpaN1lrQ2RGc1ZvTUVJTDBRelB2R2h2S1pHQXU3a0ZRRStkV2k5b2Vw?=
 =?utf-8?B?Y2FHUURDd1NqbTdHcWdvd01PMy9NTmlXMDJWUnJDcGNnRk9vTEV0eFdxaWtW?=
 =?utf-8?B?RWwvdU5jVk11Skp0aXYrc3BKcFN0ZWcrQkFwc3NEU0hLdFlJUWRBNHROcVJw?=
 =?utf-8?B?UGpVVWR2VVpydVFmUVZtdVcyWUNXQWh5RG4vK3F1WG1mVHVMZ2E2S1grRWZM?=
 =?utf-8?B?Qk1WRndhOGkyKzlmQ2xUQzZaekZWVXZRb1NMT0s4a2JuYWt4SlJwVk05anZ5?=
 =?utf-8?B?ek9jUGtLWUk5aE9BQmRUcmJVTVFzZlBuRnYvUFR5eEFnODY3dUlrZFQvNnFr?=
 =?utf-8?B?SmhzNlRwQ2VvT2xHbzJvenF0NjBiYXJMcjJuTnpiRVYvT3JQZWIraGh6RWVP?=
 =?utf-8?B?N0xjZ0VyUlNOSnZ1NkYrUWpRcytad1NNc3VEeWx3UGFGNzNvWWdBMXhqbEkr?=
 =?utf-8?B?a0pwdzl0MjZqQW0zUFlwTXFsc3hLSmlOWXo5VVRXZkUwSEZkdkwvTVJuYjFp?=
 =?utf-8?B?S2hUSDJjN21kOXFqeVVlcUltZ3QzQUxzL2FNY25FdTJIQUdNRkFXejJ3clhS?=
 =?utf-8?B?cHhHeE9JVytsNmRMSUFKejJlMHRDMDV3OXJERDdlTDZtK2ZVM3k4MXk0Z0pB?=
 =?utf-8?B?eUNFdlhGSlpQaTc3MjNzbUZ3cmJNLzR5K0RNZGpsWG9HSmRmSmJ2UzI0VDVa?=
 =?utf-8?B?aW1HYWdibHdkVDFDZXRTTEhobFdhS1l6ZWpaa0pTWWNuVHdrb0FNR21QTzJE?=
 =?utf-8?B?OHQyOEFCOE1WU3Vmc0xTV2o1UWM4dFI1ODdVRnFiUHdqcEdoZTlIN21Zd011?=
 =?utf-8?B?SU1JK1dpRGVEODRYUGFpZVdOdzVVazdLTmlDMS9RUE4zUmptbXJER2hCTW9J?=
 =?utf-8?B?R2NkQkF3eGF1TVBFVTA3cUZJbTk1amtaRncwY0xoZ0wwWUpuNDY4WGN1dkJi?=
 =?utf-8?B?VmJzVjZZOGZlTUI3SXUxRHFTTlFDQ1dWVFNMYWdpUjJMVEdNUE9Lcm9GTUh2?=
 =?utf-8?Q?oEoievHDTiOq5zZuuIUPVMSsz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23112121-b4a2-47fe-3dc5-08da8be6ecd6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 06:55:16.0892
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tQumFulxCHigYDaK47wSc4r97LXHDMk3BbjcwK0KyL9avvdD90aj3cnvKX+tKRNr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6039
Message-ID-Hash: HMMB422NWCVAWWBGSVASIM6LZA35MUZW
X-Message-ID-Hash: HMMB422NWCVAWWBGSVASIM6LZA35MUZW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 11/21] misc: fastrpc: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HMMB422NWCVAWWBGSVASIM6LZA35MUZW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMzEuMDguMjIgdW0gMTc6Mzcgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IFByZXBhcmUg
ZmFzdHJwYyB0byB0aGUgY29tbW9uIGR5bmFtaWMgZG1hLWJ1ZiBsb2NraW5nIGNvbnZlbnRpb24g
YnkNCj4gc3RhcnRpbmcgdG8gdXNlIHRoZSB1bmxvY2tlZCB2ZXJzaW9ucyBvZiBkbWEtYnVmIEFQ
SSBmdW5jdGlvbnMuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5
Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAgZHJpdmVycy9taXNjL2Zhc3Ry
cGMuYyB8IDYgKysrLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9mYXN0cnBjLmMgYi9k
cml2ZXJzL21pc2MvZmFzdHJwYy5jDQo+IGluZGV4IDkzZWJkMTc0ZDg0OC4uNmZjZmIyZTlmN2E3
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jDQo+ICsrKyBiL2RyaXZlcnMv
bWlzYy9mYXN0cnBjLmMNCj4gQEAgLTMxMCw4ICszMTAsOCBAQCBzdGF0aWMgdm9pZCBmYXN0cnBj
X2ZyZWVfbWFwKHN0cnVjdCBrcmVmICpyZWYpDQo+ICAgCQkJCXJldHVybjsNCj4gICAJCQl9DQo+
ICAgCQl9DQo+IC0JCWRtYV9idWZfdW5tYXBfYXR0YWNobWVudChtYXAtPmF0dGFjaCwgbWFwLT50
YWJsZSwNCj4gLQkJCQkJIERNQV9CSURJUkVDVElPTkFMKTsNCj4gKwkJZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50X3VubG9ja2VkKG1hcC0+YXR0YWNoLCBtYXAtPnRhYmxlLA0KPiArCQkJCQkJICBE
TUFfQklESVJFQ1RJT05BTCk7DQo+ICAgCQlkbWFfYnVmX2RldGFjaChtYXAtPmJ1ZiwgbWFwLT5h
dHRhY2gpOw0KPiAgIAkJZG1hX2J1Zl9wdXQobWFwLT5idWYpOw0KPiAgIAl9DQo+IEBAIC03MjYs
NyArNzI2LDcgQEAgc3RhdGljIGludCBmYXN0cnBjX21hcF9jcmVhdGUoc3RydWN0IGZhc3RycGNf
dXNlciAqZmwsIGludCBmZCwNCj4gICAJCWdvdG8gYXR0YWNoX2VycjsNCj4gICAJfQ0KPiAgIA0K
PiAtCW1hcC0+dGFibGUgPSBkbWFfYnVmX21hcF9hdHRhY2htZW50KG1hcC0+YXR0YWNoLCBETUFf
QklESVJFQ1RJT05BTCk7DQo+ICsJbWFwLT50YWJsZSA9IGRtYV9idWZfbWFwX2F0dGFjaG1lbnRf
dW5sb2NrZWQobWFwLT5hdHRhY2gsIERNQV9CSURJUkVDVElPTkFMKTsNCj4gICAJaWYgKElTX0VS
UihtYXAtPnRhYmxlKSkgew0KPiAgIAkJZXJyID0gUFRSX0VSUihtYXAtPnRhYmxlKTsNCj4gICAJ
CWdvdG8gbWFwX2VycjsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
