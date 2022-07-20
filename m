Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B39257B2EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:29:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B91FC402F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:29:57 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2083.outbound.protection.outlook.com [40.107.237.83])
	by lists.linaro.org (Postfix) with ESMTPS id D735A3EC19
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Jul 2022 08:29:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2Qfr7yrz4ZNI4Tv/Vm9Yoet+KTUlfiZ7vB/3n5izmvXi1PMw4tPohUlNr5rdIhqa7beNUBfr6rUv+9CYCuRVLfKMunZvVTIgVN0BMCw2ePP9klYiXREbU4xQeC9yn9Rg2XQeNURFQ+4yfQN8aYr5os1Z282ppLQSikcOg9eSh8mw7JKDjvtlOUtqvv4guF4iou4KPFrImNIDYS5BILp+Ir95wqfD1tnJc11uXLmzDiGAXtgbStl0Jg7MWHXa9Zcu63oOjiwffkI9myJGh1J2ADXizzA2TjO/nwcoUnZD2w8RFgdzTtUiVlDPg26Y3zw1D7GYZyHIYfdkieX7EupcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+ZOJLZtqxPg1pMKZukdF3e/qzybtcdNG02Xi0IndsA=;
 b=Rdp3sREUzHQhdbqiADy25PQ15CbljVab9atASFDilskxVKSv7J5dzqWmJraSFWpJaLxGeNu0c+WvUiV6mDoYqvGAZg5HuyXT3BYLiZ4l2ToZ/uJWjoP+w6Y93W3RLwZ65LgEsSAFuEKrJf8mu1hJ0mSp0711N2GijrXjcWkXStDKKveUdAldBzGG/UxsaFJaEBhEK5zys/Mz0BGvq6XBCBGCW+WAd/Ii3EnEp3OL02p+PgSM1o/ls2fIj5mGzVE6Nys2+5nScsMMPGjJmNaTZYtfOoLqoxOWXuBr9oxPHjRleMkO/P9PehlxZHfLgQGkmNBVV7O/loWZRVovsJu0EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+ZOJLZtqxPg1pMKZukdF3e/qzybtcdNG02Xi0IndsA=;
 b=ADuMcQCg9r8K0Kayf42S4fpPCiMvBRE3UQSLwC6J7+6+pNCAd/8NyRw+ANofQYVmiFepVq2s2wKiPM4WJGgnIkIJhNtQHbZp5yuuMwFcfNJxENbI8UcVxBIPxymAFUoJX0xs9X+zhJQcD6BraMHxFCg/lfkaDzSAHuzVb29j2X0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB3198.namprd12.prod.outlook.com (2603:10b6:208:101::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21; Wed, 20 Jul
 2022 08:29:52 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5458.018; Wed, 20 Jul 2022
 08:29:52 +0000
Message-ID: <163d3271-e1e9-c325-185d-adb4391023e1@amd.com>
Date: Wed, 20 Jul 2022 10:29:42 +0200
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
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>
References: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
 <20220715005244.42198-5-dmitry.osipenko@collabora.com>
 <5ec9313e-8498-2838-0320-331c347ce905@amd.com>
 <1ce233a2-36c9-3698-59f0-c4ff902bec60@collabora.com>
 <43446124-b99a-32d8-f797-7ec0cdca9ee4@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <43446124-b99a-32d8-f797-7ec0cdca9ee4@collabora.com>
X-ClientProxiedBy: AS9PR06CA0476.eurprd06.prod.outlook.com
 (2603:10a6:20b:49a::35) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1e2450bb-1041-4e85-d769-08da6a2a0467
X-MS-TrafficTypeDiagnostic: MN2PR12MB3198:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WLvv5dP8RX2F4lqe+h5iJ3G2SHZCHO6d7SRIuKh4MEqbRbRxkjSsj56o/ajbJm4mD/8EZrB140gYOBXfgxn98IuXinhvonVCLVNpreHygwKho9I78XHN4SS1qsM3/1Ynfcvlyqt3LrKJKoLlez9KJ1YsURf7wPA0oq1X/Kv1qH8QNdPlkyGq9mzcpEV1WEAj64xqyyeNkbOnQByl/AvR0dGt8Dd+uViv6gJCpip4I9zl39uJzmMWkhyzL3LEYFG16ecL1CQqAYSOoJVyb6aVThGIvSyvY2pH2Ki2V1X3BlfhX3mR5xRohhmOONsRRCtaeUVoonGqBRbivWdMLs7fbHNwRyOF2iiyMoS8PQcPxuLjRXjQXMRiHHVAzOHZvrCxGfG2vI/rRSlenip4lWuV26v1txCIsQP+9O9mrueomS92c9yfiJ5YJtf8bQOUKJJ4hQnXUVrN4UnTgc0myIT6qpS5YjWElsX9zOEluYUTB1fI0Bhhae0CUVzVzObunps21ixHkgJjSGDjbwhrNbALRo0fG4tsU2RGKidgezn3Ea6g1qtlVxgOqgq9YElF18IJrhu1bCKPYGpV3HHUkcY8yGJgqX5JdAfKdopdeFYID1Fan6YvOh3EcVLu6j5fr5dhFH1IuEq98/nW4yrizSOyGVN/xKfoAVrMhRkqQn+f4KxpK6w+M0dpZSpjOZQ5Gg+knFbzw7qW+xJROnZQS5/0ssQXVZg7w9ZQ7F+/PsJ8JL42nSvxSRROzuM2FM0Rk/NzVxhPy9/jX3hQ3ju/aAamqMZoW+1xj1E6msOSMEbyV2ONPITKagnZ4swDiFJrvJjNqXTlygzxq1sYXye6g5GUa+mC81kuS3MqwZ4n+4xiKOQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(366004)(376002)(396003)(136003)(39860400002)(6506007)(53546011)(83380400001)(2906002)(41300700001)(8936002)(66574015)(5660300002)(7416002)(7406005)(6666004)(6486002)(478600001)(2616005)(316002)(6512007)(186003)(36756003)(38100700002)(31686004)(66476007)(66556008)(66946007)(4326008)(8676002)(110136005)(31696002)(86362001)(921005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QkZMNmhVd01WQU5sd1hKeVBJcFhMTzFPbS85dVVwR3BBZTBFaWtNeXhyUFNw?=
 =?utf-8?B?cEZnYTE2VTJPWExJaXJHZ0YzU1lzeFdOc1F5VTZWbnluV1c4VllEblNwVXlh?=
 =?utf-8?B?OW1taEs1a3BEWU5KTXgwSU9lSjVVdkNsVmx4OXdnQldERDVZZEsySmFqaTlx?=
 =?utf-8?B?dlFRbDg3RzlCMFNmYmJ1VHRheGFTYVo1T2NTL3hieHBteStVeE15cHUxaTBS?=
 =?utf-8?B?RnBrT1R4VWc4NzVZOHgvbGxLNkZRempwQjFIYmZ2Kzk5TnVsNTZLYXdQR0VD?=
 =?utf-8?B?cExpZ01LTHl3SDlkQ0FWcjZ5RUx4LzhlU282TkQxY2l1NDl3NVlLdkVlQmtK?=
 =?utf-8?B?dWFXMEJhRFJBVS8zdnkzZmhnb1RVRlhhOVhJeGJBZXBvNTdzM0RmZ3Y2WU5H?=
 =?utf-8?B?TDA5QWVTWFo0S0JsM09GeUdJNU11UGFNNnlDVjlaRTB1NmpXbTlBYWpGaHA3?=
 =?utf-8?B?MklQYVRZSXpaZnkzeFQwcmxOOXlSTk56WlFaaFhzN0Ezd0VkNzFpN1pHeDVN?=
 =?utf-8?B?SFdGQ2hhckJtNXFqbEVBRWMzSGlaWUJXMzZjZldLZnRob2k2OWZ5Yjd2K2hQ?=
 =?utf-8?B?OHhUTTlia1lrdllMSnNaVGlJUGVuMWtMK041MVRaaExYREttcE4xQzhSNnNK?=
 =?utf-8?B?UXVpTE9iTys5OWZRK1RmeHhTbDNBQVBrVnlVczdIZmEvY0dJUVJGaHR3Q2w1?=
 =?utf-8?B?Uk5lZC9wQzZwUGJLNW93bEt4Tm9nZS9zdkVhUEx3RXU5NFdOdnBOaklQQlpv?=
 =?utf-8?B?SHIvZy84Ylc4U2ZuVzlyVjhxeFo1MCtoUm9EbU1zd2Q2cmx0S3FmWlZXTzFr?=
 =?utf-8?B?MEFoS1RkcHcwZVBpVTVSeDdlTFdkaGNYVVdCd0NRS3ZiVHY4UVZ1dWpZSWlB?=
 =?utf-8?B?REQ2M3BvblRXK2xCa0xGc0xvM2Q0YnQzL0pkdmVHOUUwZHJDSEtxZUMzSnd2?=
 =?utf-8?B?dDdnb2I4Q0hJaXdPa2hzSHZ5b24zdmpCU2UwS1UvTlE3Nk96bXlKZFZsQytz?=
 =?utf-8?B?ZEhUWlgwdk1VVVNDY2JtUUxndDYrSXhWc0VmK3E3eUVnWnlNaENFV0VRSmZG?=
 =?utf-8?B?NU9qanNleGxrbmRxTFB5Y29NWklSZHBiQ01uQk1HNmQ3NUJud293S0NuOW02?=
 =?utf-8?B?R21nY2diWUZUNTFmVFZoYTNvMDVWVjN3TWVsQ0J4YVB3VWVacUtRV3kwWjk0?=
 =?utf-8?B?RUZTSGlLeE02ZUVoVnJPTFl1Y211aUY2ZG9JSS9qNTYxOFJudTNuZFpPcEwz?=
 =?utf-8?B?MnZjWG5MY2kwQzhwSnpIaExnL0RDcXhLRm5rUXpncGJsQ0NuQWUxK3dRbzYy?=
 =?utf-8?B?c1Yyc1NKT2w3VmxIWXVRS0xzYVk4cUYwN0s4c0ZJdnlkVm0yVGZFay9kL0dT?=
 =?utf-8?B?azV5MThJdnkwVmMyQ3NXNlpiNHlYZ2cxOTh4Y2pMdFlPMVN1Z2JDK3N5eHNK?=
 =?utf-8?B?ZVlubTNhSW5aMmdXTDFnVGphQ2JXNHE3VExHUXVpcEMzVGhKL1Z3bVB0QXpW?=
 =?utf-8?B?a0h2NlAycnJZN1pXWWtEWitBTlBFdlQ1Vzc3MEk3OWRTZWZ5Snd4b2dVR0Ft?=
 =?utf-8?B?UDY1RlhUa3Rmb3FmRmo3ZjdCbTBHVlJrUXpRcGhUZStaNzFibkhldjhoaXN5?=
 =?utf-8?B?Nis4RDJpbEVUbE9maUMrY3FLRFdkb21CV1Q5Uy94eUZwWjNoRURpS1EvRkwr?=
 =?utf-8?B?MSsrOG1uNmZqaHl5VUhCTXdFM2Z6YXk4NWsyZHY3QTFoRlRTaVdKT0UxOUU1?=
 =?utf-8?B?QURDUkVvS21RZmpZS0h4dG9HUXRFT1Z6UG1VV01VNlFhZi82L2VHS3htOExq?=
 =?utf-8?B?cVhGVTNlWUNyZUtXNFJ3T3IvaGowdFBkeHlOMzlKTFYycWQ3bTE2S0w4U2lU?=
 =?utf-8?B?Q0ZRbHM1VlB3cUNEZTNDNXZvZ0xXTU45a1N2Z1QyQW9Qdk5ieHhRRXRETFln?=
 =?utf-8?B?VEVNQzdMbit1Y2RZQnFIRnJrT3RBQmI4NGo3WlFhTzFRaGV2d2dGTkRtMGZY?=
 =?utf-8?B?QzhNUWV0NDJIelJpNHNmdDZKNEJhYVg4ZmlnNTlQaVZ5WGs5N2EzSngrSEVj?=
 =?utf-8?B?QkV6cGZ5ZGc1d0pHaGxxbk5QMmR5Rm1MdzIrSGpTQjU1d051TXpVeVFIaml3?=
 =?utf-8?B?RHRRRkgwZEVhdEJVMkpNNmoxMUJPUEtQc1ZaYXRrRTVHR25sQndkT1pIeEdv?=
 =?utf-8?Q?PuNHWYQ8aDFAsTw+mMIzPtFioocfS0aCF6/g2yMs33Nn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e2450bb-1041-4e85-d769-08da6a2a0467
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 08:29:52.3462
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wda2XqT0St5yc2qZ9a2h3AeB9JVXAmOHLXJDcCOg7+F1X68iVqAMI68HcQ0xlQBO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3198
Message-ID-Hash: YWUK62ZOPDS66XOYJHMZ3WQCFTVOJU47
X-Message-ID-Hash: YWUK62ZOPDS66XOYJHMZ3WQCFTVOJU47
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 4/6] dma-buf: Acquire wait-wound context on attachment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YWUK62ZOPDS66XOYJHMZ3WQCFTVOJU47/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTkuMDcuMjIgdW0gMjI6MDUgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IE9uIDcvMTUv
MjIgMDk6NTksIERtaXRyeSBPc2lwZW5rbyB3cm90ZToNCj4+IE9uIDcvMTUvMjIgMDk6NTAsIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gQW0gMTUuMDcuMjIgdW0gMDI6NTIgc2NocmllYiBE
bWl0cnkgT3NpcGVua286DQo+Pj4+IEludGVsIGk5MTUgR1BVIGRyaXZlciB1c2VzIHdhaXQtd291
bmQgbXV0ZXggdG8gbG9jayBtdWx0aXBsZSBHRU1zIG9uIHRoZQ0KPj4+PiBhdHRhY2htZW50IHRv
IHRoZSBpOTE1IGRtYS1idWYuIEluIG9yZGVyIHRvIGxldCBhbGwgZHJpdmVycyB1dGlsaXplDQo+
Pj4+IHNoYXJlZA0KPj4+PiB3YWl0LXdvdW5kIGNvbnRleHQgZHVyaW5nIGF0dGFjaG1lbnQgaW4g
YSBnZW5lcmFsIHdheSwgbWFrZSBkbWEtYnVmDQo+Pj4+IGNvcmUgdG8NCj4+Pj4gYWNxdWlyZSB0
aGUgd3cgY29udGV4dCBpbnRlcm5hbGx5IGZvciB0aGUgYXR0YWNobWVudCBvcGVyYXRpb24gYW5k
IHVwZGF0ZQ0KPj4+PiBpOTE1IGRyaXZlciB0byB1c2UgdGhlIGltcG9ydGVyJ3Mgd3cgY29udGV4
dCBpbnN0ZWFkIG9mIHRoZSBpbnRlcm5hbCBvbmUuDQo+Pj4+DQo+Pj4+ICDCoEZyb20gbm93IG9u
IGFsbCBkbWEtYnVmIGV4cG9ydGVycyBzaGFsbCB1c2UgdGhlIGltcG9ydGVyJ3Mgd3cgY29udGV4
dA0KPj4+PiBmb3INCj4+Pj4gdGhlIGF0dGFjaG1lbnQgb3BlcmF0aW9uLg0KPj4+Pg0KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEu
Y29tPg0KPj4+PiAtLS0NCj4+Pj4gIMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA4ICsrKysrLQ0KPj4+PiAgwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jwqDCoMKgIHzCoCAyICst
DQo+Pj4+ICDCoCAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmPCoMKg
wqAgfMKgIDIgKy0NCj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuaMKgwqDCoCB8wqAgNiArKy0tLQ0KPj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZXZpY3QuY8KgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4+Pj4gIMKgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjYg
KysrKysrKysrKysrKysrLS0tLQ0KPj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fd3cuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxNSArKysrKysrKystLQ0KPj4+PiAgwqAg
NyBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4+Pj4N
Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQo+Pj4+IGluZGV4IDBlZTU4ODI3NjUzNC4uMzc1NDVlY2I4NDVhIDEw
MDY0NA0KPj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4+ICsrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+Pj4gQEAgLTgwNyw2ICs4MDcsOCBAQCBzdGF0aWMg
c3RydWN0IHNnX3RhYmxlICogX19tYXBfZG1hX2J1ZihzdHJ1Y3QNCj4+Pj4gZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2gsDQo+Pj4+ICDCoMKgICogT3B0aW9uYWxseSB0aGlzIGNhbGxzICZkbWFf
YnVmX29wcy5hdHRhY2ggdG8gYWxsb3cNCj4+Pj4gZGV2aWNlLXNwZWNpZmljIGF0dGFjaA0KPj4+
PiAgwqDCoCAqIGZ1bmN0aW9uYWxpdHkuDQo+Pj4+ICDCoMKgICoNCj4+Pj4gKyAqIEV4cG9ydGVy
cyBzaGFsbCB1c2Ugd3dfY3R4IGFjcXVpcmVkIGJ5IHRoaXMgZnVuY3Rpb24uDQo+Pj4+ICsgKg0K
Pj4+PiAgwqDCoCAqIFJldHVybnM6DQo+Pj4+ICDCoMKgICoNCj4+Pj4gIMKgwqAgKiBBIHBvaW50
ZXIgdG8gbmV3bHkgY3JlYXRlZCAmZG1hX2J1Zl9hdHRhY2htZW50IG9uIHN1Y2Nlc3MsIG9yIGEN
Cj4+Pj4gbmVnYXRpdmUNCj4+Pj4gQEAgLTgyMiw2ICs4MjQsNyBAQCBkbWFfYnVmX2R5bmFtaWNf
YXR0YWNoX3VubG9ja2VkKHN0cnVjdCBkbWFfYnVmDQo+Pj4+ICpkbWFidWYsIHN0cnVjdCBkZXZp
Y2UgKmRldiwNCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdm9pZCAq
aW1wb3J0ZXJfcHJpdikNCj4+Pj4gIMKgIHsNCj4+Pj4gIMKgwqDCoMKgwqAgc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoOw0KPj4+PiArwqDCoMKgIHN0cnVjdCB3d19hY3F1aXJlX2N0
eCB3d19jdHg7DQo+Pj4+ICDCoMKgwqDCoMKgIGludCByZXQ7DQo+Pj4+ICDCoCDCoMKgwqDCoMKg
IGlmIChXQVJOX09OKCFkbWFidWYgfHwgIWRldikpDQo+Pj4+IEBAIC04NDEsNyArODQ0LDggQEAg
ZG1hX2J1Zl9keW5hbWljX2F0dGFjaF91bmxvY2tlZChzdHJ1Y3QgZG1hX2J1Zg0KPj4+PiAqZG1h
YnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+Pj4+ICDCoMKgwqDCoMKgIGF0dGFjaC0+aW1wb3J0
ZXJfb3BzID0gaW1wb3J0ZXJfb3BzOw0KPj4+PiAgwqDCoMKgwqDCoCBhdHRhY2gtPmltcG9ydGVy
X3ByaXYgPSBpbXBvcnRlcl9wcml2Ow0KPj4+PiAgwqAgLcKgwqDCoCBkbWFfcmVzdl9sb2NrKGRt
YWJ1Zi0+cmVzdiwgTlVMTCk7DQo+Pj4+ICvCoMKgwqAgd3dfYWNxdWlyZV9pbml0KCZ3d19jdHgs
ICZyZXNlcnZhdGlvbl93d19jbGFzcyk7DQo+Pj4+ICvCoMKgwqAgZG1hX3Jlc3ZfbG9jayhkbWFi
dWYtPnJlc3YsICZ3d19jdHgpOw0KPj4+IFRoYXQgd29uJ3Qgd29yayBsaWtlIHRoaXMuIFRoZSBj
b3JlIHByb3BlcnR5IG9mIGEgV1cgY29udGV4dCBpcyB0aGF0IHlvdQ0KPj4+IG5lZWQgdG8gdW53
aW5kIGFsbCB0aGUgbG9ja3MgYW5kIHJlLXF1aXJlIHRoZW0gd2l0aCB0aGUgY29udGVuZGVkIG9u
ZQ0KPj4+IGZpcnN0Lg0KPj4+DQo+Pj4gV2hlbiB5b3Ugc3RhdGljYWxseSBsb2NrIHRoZSBpbXBv
cnRlZCBvbmUgaGVyZSB5b3UgY2FuJ3QgZG8gdGhhdCBhbnkgbW9yZS4NCj4+IFlvdSdyZSByaWdo
dC4gSSBmZWx0IHRoYXQgc29tZXRoaW5nIGlzIG1pc3NpbmcgaGVyZSwgYnV0IGNvdWxkbid0DQo+
PiBub3RpY2UuIEknbGwgdGhpbmsgbW9yZSBhYm91dCB0aGlzIGFuZCBlbmFibGUNCj4+IENPTkZJ
R19ERUJVR19XV19NVVRFWF9TTE9XUEFUSC4gVGhhbmsgeW91IQ0KPj4NCj4gQ2hyaXN0aWFuLCBk
byB5b3UgdGhpbmsgd2UgY291bGQgbWFrZSBhbiBleGN1c2UgZm9yIHRoZSBhdHRhY2goKQ0KPiBj
YWxsYmFjayBhbmQgbWFrZSB0aGUgZXhwb3J0ZXIgcmVzcG9uc2libGUgZm9yIHRha2luZyB0aGUg
cmVzdiBsb2NrPyBJdA0KPiB3aWxsIGJlIGluY29uc2lzdGVudCB3aXRoIHRoZSByZXN0IG9mIHRo
ZSBjYWxsYmFja3MsIHdoZXJlIGltcG9ydGVyDQo+IHRha2VzIHRoZSBsb2NrLCBidXQgaXQgd2ls
bCBiZSB0aGUgc2ltcGxlc3QgYW5kIGxlYXN0IGludmFzaXZlIHNvbHV0aW9uLg0KPiBJdCdzIHZl
cnkgbWVzc3kgdG8gZG8gYSBjcm9zcy1kcml2ZXIgd3cgbG9ja2luZywgSSBkb24ndCB0aGluayBp
dCdzIHRoZQ0KPiByaWdodCBhcHByb2FjaC4NCg0KU28gdG8gc3VtbWFyaXplIHRoZSBmb2xsb3dp
bmcgY2FsbHMgd2lsbCByZXF1aXJlIHRoYXQgdGhlIGNhbGxlciBob2xkIA0KdGhlIHJlc3YgbG9j
azoNCjEuIGRtYV9idWZfcGluKCkvZG1hX2J1Zl91bnBpbigpDQoyLiBkbWFfYnVmX21hcF9hdHRh
Y2htZW50KCkvZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkNCjMuIGRtYV9idWZfdm1hcCgpL2Rt
YV9idWZfdnVubWFwKCkNCjQuIGRtYV9idWZfbW92ZV9ub3RpZnkoKQ0KDQpUaGUgZm9sbG93aW5n
IGNhbGxzIHJlcXVpcmUgdGhhdCBjYWxsZXIgZG9lcyBub3QgaGVsZCB0aGUgcmVzdiBsb2NrOg0K
MS4gZG1hX2J1Zl9hdHRhY2goKS9kbWFfYnVmX2R5bmFtaWNfYXR0YWNoKCkvZG1hX2J1Zl9kZXRh
Y2goKQ0KMi4gZG1hX2J1Zl9leHBvcnQoKS9kbWFfYnVmX2ZkKCkNCjMuIGRtYV9idWZfZ2V0KCkv
ZG1hX2J1Zl9wdXQoKQ0KNC4gZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkvZG1hX2J1Zl9lbmRf
Y3B1X2FjY2VzcygpDQoNCklmIHRoYXQncyBjb3JyZWN0IHRoYW4gdGhhdCB3b3VsZCB3b3JrIGZv
ciBtZSBhcyB3ZWxsLCBidXQgd2Ugc2hvdWxkIA0KcHJvYmFibHkgZG9jdW1lbnQgdGhpcy4NCg0K
T3IgbGV0IG1lIGFzayB0aGUgb3RoZXIgd2F5IGFyb3VuZDogV2hhdCBjYWxscyBleGFjdGx5IGRv
IHlvdSBuZWVkIHRvIA0KY2hhbmdlIHRvIHNvbHZlIHlvdXIgb3JpZ2luYWwgaXNzdWU/IFRoYXQg
d2FzIHZtYXAvdnVubWFwLCB3YXNuJ3QgaXQ/IElmIA0KeWVzIHRoZW4gbGV0J3MgY29uY2VudHJh
dGUgb24gdGhvc2UgZm9yIHRoZSBtb21lbnQuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
