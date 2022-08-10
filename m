Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4236158F24B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 20:25:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49F484798A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 18:25:35 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lists.linaro.org (Postfix) with ESMTPS id 75E3F4109C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 18:25:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0NKo6TTsJdrrN6ek4jlMZ7dthsr3gQFluS6xELWkyENZevVVpatPzQqWMVzJfYuQoLZGFNy0Gnqxra6pDisQZA+S7S4K+3ked+D0Q6m37x6gadoTvsCjp7gWOLwi4wQeLj99E4+VAlb2o0U5mtORnEMI2ZC47cJ7AfFrL7dXd2XsXaUyMIjGgkrzvlW9ai7l4mf/4MdBfMU7TC+N/aT4hgF1bRhMr+VVdXXTk9eXSdvjARmgKhy4g8Q3Af0L/lBHhfPbINNdWLPzxyhlYAb1UBCtQctwq5ZmaMiUsyTOD7Uh/QdJdeGeRrvFBAlgH/1C/YRY+cAOwWF2x+LPkMGRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2z7V89+Xj5X0XVh1KdQTRSnY17YH9p3d/j77vjpwuV8=;
 b=JF93jQ7KcNQOqtwYh49V0MWIFqrQfFeWUpFqg7kmZGjwDtxFEp4LYMqZkUoAiSZLxghNM3iiykyqtLIurmktybuXLuWDb78yye5w2KkNtdtCQecqExuVzY9sARhrySifukOVjZcX4qtBenSi7QGHPi/A/0VLNPCoKucKViv5HgdtzGzEuc/S/MsAP6+bAiwa2QwsU6t1TlB2EeadtRJUU5v8CgIBXGtu2HrJ5XSBQJfnvXy8XYThab0YIquZF2dqAxKoRtux2+0i+EozbGRCxrPOgULulUB1cVV781uoE7BHrc+gEBwYIVHigGZ65ZDEa80W5uJz/TmH5jwxaPQGaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2z7V89+Xj5X0XVh1KdQTRSnY17YH9p3d/j77vjpwuV8=;
 b=zV/+VDK1NRLBc4HNZyv+qJWWVPyDUPULiXoZTFoeVvOtFYaNveS1aIOE8SlWhBEKfmvSIyajBaQ2W78AtbdwZsef9IYvMPn5HfpkbFq81s5Qwbn5WlZbwaycRdvW/eGoDkI7d8r5qjY+2yGPEZZ3OYAlSBey/dav1VNoF7fzKWE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH2PR12MB3799.namprd12.prod.outlook.com (2603:10b6:610:21::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Wed, 10 Aug
 2022 18:25:19 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Wed, 10 Aug 2022
 18:25:18 +0000
Message-ID: <87724722-b9f3-a016-c25c-4b0415f2c37f@amd.com>
Date: Wed, 10 Aug 2022 20:25:08 +0200
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
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>
References: <20220725151839.31622-1-dmitry.osipenko@collabora.com>
 <20220725151839.31622-4-dmitry.osipenko@collabora.com>
 <6c8bded9-1809-608f-749a-5ee28b852d32@gmail.com>
 <562fbacf-3673-ff3c-23a1-124284b4456c@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <562fbacf-3673-ff3c-23a1-124284b4456c@collabora.com>
X-ClientProxiedBy: FR0P281CA0045.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::14) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee30698b-870b-4316-1e1f-08da7afdada4
X-MS-TrafficTypeDiagnostic: CH2PR12MB3799:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rbV18GfgWn+DjVzrKRIm7sNzLJj+8hXrueSX16ldQSYbsw2tQzDEmpjmhi2L0A3iEPxYtgZBkmlVzHOCPXSYvAmaW2T71ZlJdxFhl+yHqwB/SvQVm7vKp1Mm2TI0vjiPGCBcwyPAscfx7UeTBL20vwR4qZST6L1GUcv1V8qWJXje3MoW8Wtnh0MXSWhi0ri7vLTJCmt/X5lhTGvse/EEVemZH0l08OIgGtEnotUQ1m5VlaxwdF06AWF9qS49bLx22OkIY9hgRu9dNBIF/OlroAR8Y5KQtWXSHvnhc7qfus6OQSX8ndGe7Q4K7clFmq9FTCFSCkQERH/P30PpTkn/Ws3qfghkxgNwuL87D4mIGi5Dkuz2qWsmq6pIN6B26I2zCXTSnxFglSuFjR/iQ+ODYTInrVH7keaMhFncT+S9mb8a5m7OB7CU5ioI4e3+STU0dUvi/ykei7BoDfaW9iwubSnWJwNIEBFXu97DCmxIPnodvYX2XeKVHxBVuXbSbOA3r4gMQLN3Pv/L7Uv96sX96qlcnAU80fIAT5clAR996FJ+PfJ8F7hxeNXzKygc5Sr9DWIFoACkgj17i7DSN+RQpuXu7CrINzvcWPkeqB07MQIG+PyM1WPKGAiFUz/NAxZKnAvpCI2j053kGvpD0eLEIPFELEDgGriMz1skoViGKWq9OjCU7lvQb2pdd7Y5m8EJP4nMjDwMcvV8JQfy6nQ33rpATBXlPwGHYSr6m3vwptqvUWc0fE1MSLTnzyX2YR5MyfuPQXJrZy3HzlYoW5LGVhFc3sQJ2hLHSfos8Z9MS8xAA+4+GqPSULF3jhaVwp7e2u0PUvm+0zTuQqLa5faRGLEIOAtCi49TXjiVUNecVAtbslsyRTDvZR6bHFaSuT44
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(66476007)(38100700002)(86362001)(7406005)(921005)(66946007)(66556008)(53546011)(7416002)(45080400002)(6666004)(110136005)(4326008)(6506007)(8676002)(6512007)(2906002)(31696002)(6486002)(478600001)(316002)(966005)(41300700001)(186003)(36756003)(66574015)(2616005)(83380400001)(8936002)(5660300002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXVjV01hVWlaYzhCZExpTTBtQmlwN1pDcHZxU1d3bEVnRm10UXU3d0dRWDhq?=
 =?utf-8?B?Nm1yY2RneHpPWVFUNzZncmtVTmVUTjVOcFNLbXJ1c09mRGZaVWY0dlR2Q2RP?=
 =?utf-8?B?WkdnR1JQQjI3dHY3NkJHNitMcUZYbyt4MEF2bDZldmV5T1B1aGZiSDFBSVhq?=
 =?utf-8?B?SWZPb2haWWlFMW14QjFvdmZIUDBtZUNnQ2lZR3BzTjJLTXBIMmVoOUlkTWVx?=
 =?utf-8?B?N3ZEOGIwU216ODd1SDlObUltR3h4YjFuM1M1eElVMVMrUC9aMjVzL3RwNEt6?=
 =?utf-8?B?RFRQTVFvQzRtQ21EcS9mWFNRc2s5Mm9QNlk4WDZuZWtFbUVFOEtUWmFIaVRa?=
 =?utf-8?B?RVJlL3ZCVVZReGZjaXBET0lTOERsbEJHa3lsWTlrSWtjZGRlRlh3Q1p2dlhG?=
 =?utf-8?B?ZG8rVGhoczVjSUVQZlNWdjB1VlFpaXZxbXFDWkhzMW5SelZhd3lSSnc2STJ2?=
 =?utf-8?B?Qit1L0tEUmQ4YU1XVDh6akV6UTExczlsUmo0RGQvY2ZCUC9rb1I5dTZ6bzVj?=
 =?utf-8?B?K01rY0tQVVJ1eWRPcktpampiR3FkNWZoTWtUQW5aS3ZZczZJVlRHVmJhRUgx?=
 =?utf-8?B?WXpTT3VyMlRxYjNvVEtqYXg3VmhlNW1Ld3ZCVzNLZ3dlaHRpOEk4NEpGdmNV?=
 =?utf-8?B?eVVNT1cxWUhxM1NyV0IzMTM3NWF3M05ZWGJVQ2JSYU5sQVpRemIxTjkzczV5?=
 =?utf-8?B?cFF0emhneXE3V2pPUlRvWFdnK3NPcGk3YUVhRzRjdlRjdnhWci91NmxDRWtz?=
 =?utf-8?B?N1VhMHBGeW9HQzBKbEpqWWNaK1I0ZVByVWlPTTJvT2NxTUdpOWhBckxkaldZ?=
 =?utf-8?B?b2VvWGpFQUpkTnczb2xzVXhGM2htT1M2UERzcWpRb21mZnZOYy93TlY5aE5n?=
 =?utf-8?B?QWFzdmNEK2JpQjd0YUMyR0c3YzZ1Nm92Wmw5Z3hBV0pjVGYzbTA1VENZRjd6?=
 =?utf-8?B?Z3JMdEtJM29uZEVqVGt5K3MzYXdlWit1NXRWS3AwZGg3SlJPVi82US9MSkxa?=
 =?utf-8?B?RktNdmE4NlN4ZU1NZUpkVG9tdnNUM2swQzJzYUhYWVlkRkZibEl4VlhHZnZI?=
 =?utf-8?B?ZDkraE56V3BCcUd5NllFNEJVVzExTFlrTnllRU5LSWlpcVpndmVuNGF6Vk9r?=
 =?utf-8?B?QmptOXIvbUpoZVhBc2Y3Y0FTbXA2cHdIOWtqZUg1V0NlY1QyZytINGhqSEtW?=
 =?utf-8?B?QlRnRVI4a3dCTVoraUxIVW9VNE5jVGQvUk84WGxlYUtOeGhGYzVNVjVFeldP?=
 =?utf-8?B?WXN2QTE1Zm1hUTJMb2EzbHU4YkU0STd5dEhQazllT2xyVTlUdlVkMUVlM1JH?=
 =?utf-8?B?VHI3cXlheFdmMVZTVmI5MzhoR0crQUx1N0tNNFhzRHZRaE85czUwdC9iaXpF?=
 =?utf-8?B?WG5GYUlCQVphMUhaeFVibUVweXU0OVU2YXB4RjA5MndwVkVudFpxckc0OFhY?=
 =?utf-8?B?c25SbDlaWFNjYzRuWFpOOWhvVDJYN3lXS1RDbFRVOHJKaEFhQW9icVMxeTFW?=
 =?utf-8?B?NEVPRXdWTWpKMmw0KzBtMlFubEVINjBQckdXMEMrSFZja0t5WG1JNVFsSnE3?=
 =?utf-8?B?dUR3UnhYbGJPSjd1WWVBU003ZnZ2STNZYjQydm54QWhJOE91WnNZM0o1SnlG?=
 =?utf-8?B?VTNKOVpyTlBsc0Y2TEpwRDdYTytubGpybHNiT0RlSjFZUUVaQ0VKV0U2Zm1G?=
 =?utf-8?B?bm1aaXN0eUpxZHZLQm42eVpkM2tGbzF1VEhZTTRrSzF0MWxlRjdvZENyM0Zi?=
 =?utf-8?B?d3E3NnhLL2U1YldlN1dMbU1wdEZrUk55TmZBZ2pOVW05MlRxb3NhQ2RhbC9r?=
 =?utf-8?B?MHVtWEJSZTk5NTZCRTZWTzRrV3RTVDNEakd3TkRtWXF2WTNFYkJ5U2wyeXRl?=
 =?utf-8?B?WW4wMlBuZ3cxakpKRlJNUnRHaFI2MW4vY3A5RU0xd2lENk04dkZjcnFzQ09s?=
 =?utf-8?B?QldxSldsVlN3cC9QYmhUWU40cjh1d2tpNEs3aFFyeEl5OXV0T1F2ZkxHN3Vt?=
 =?utf-8?B?dkViblV5VGZxTVVNTG9iM01uVTBWWlBDcnpLL1ExVmN6T3JDQmxwTEdGd2Nk?=
 =?utf-8?B?NCtpWHgwY1ZlcElyMXlNREZJQXIzOFJHazZ3YmlvZndaalp1QXBpRTdWejY5?=
 =?utf-8?B?eU5SSk1PQXBya2xTRW9lOUlaNzh0Q3F3ZkNQMC9sRmZaNlNKSEc5bFBWNkd1?=
 =?utf-8?Q?aszJjPlvcmjj5qPTmh4lFkw/+Z70uA1yNv+GH0XlwYVg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee30698b-870b-4316-1e1f-08da7afdada4
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2022 18:25:18.7531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RnSwu3NPxQo7v4swMSByEMvQIdn9sDlawOfJVot6gjHBiluOb/rqqG1pXdfra/EQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB3799
Message-ID-Hash: W32IAV2NX5MFX4ZTVAOKEPSCG6UHULQ7
X-Message-ID-Hash: W32IAV2NX5MFX4ZTVAOKEPSCG6UHULQ7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] dma-buf: Move all dma-bufs to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W32IAV2NX5MFX4ZTVAOKEPSCG6UHULQ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDguMjIgdW0gMTk6NDkgc2NocmllYiBEbWl0cnkgT3NpcGVua286DQo+IE9uIDgvMTAv
MjIgMTQ6MzAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAyNS4wNy4yMiB1bSAxNzox
OCBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4+PiBUaGlzIHBhdGNoIG1vdmVzIHRoZSBub24t
ZHluYW1pYyBkbWEtYnVmIHVzZXJzIG92ZXIgdG8gdGhlIGR5bmFtaWMNCj4+PiBsb2NraW5nIHNw
ZWNpZmljYXRpb24uIFRoZSBzdHJpY3QgbG9ja2luZyBjb252ZW50aW9uIHByZXZlbnRzIGRlYWRs
b2NrDQo+Pj4gc2l0dWF0aW9uIGZvciBkbWEtYnVmIGltcG9ydGVycyBhbmQgZXhwb3J0ZXJzLg0K
Pj4+DQo+Pj4gUHJldmlvdXNseSB0aGUgInVubG9ja2VkIiB2ZXJzaW9ucyBvZiB0aGUgZG1hLWJ1
ZiBBUEkgZnVuY3Rpb25zIHdlcmVuJ3QNCj4+PiB0YWtpbmcgdGhlIHJlc2VydmF0aW9uIGxvY2sg
YW5kIHRoaXMgcGF0Y2ggbWFrZXMgdGhlbSB0byB0YWtlIHRoZSBsb2NrLg0KPj4+DQo+Pj4gSW50
ZWwgYW5kIEFNRCBHUFUgZHJpdmVycyBhbHJlYWR5IHdlcmUgbWFwcGluZyBpbXBvcnRlZCBkbWEt
YnVmcyB1bmRlcg0KPj4+IHRoZSBoZWxkIGxvY2ssIGhlbmNlIHRoZSAibG9ja2VkIiB2YXJpYW50
IG9mIHRoZSBmdW5jdGlvbnMgYXJlIGFkZGVkDQo+Pj4gZm9yIHRoZW0gYW5kIHRoZSBkcml2ZXJz
IGFyZSB1cGRhdGVkIHRvIHVzZSB0aGUgImxvY2tlZCIgdmVyc2lvbnMuDQo+PiBJbiBnZW5lcmFs
ICJZZXMsIHBsZWFzZSIsIGJ1dCB0aGF0IHdvbid0IGJlIHRoYXQgZWFzeS4NCj4+DQo+PiBZb3Ug
bm90IG9ubHkgbmVlZCB0byBjaGFuZ2UgYW1kZ3B1IGFuZCBpOTE1LCBidXQgYWxsIGRyaXZlcnMN
Cj4+IGltcGxlbWVudGluZyB0aGUgbWFwX2RtYV9idWYoKSwgdW5tYXBfZG1hX2J1ZigpIGNhbGxi
YWNrcy4NCj4+DQo+PiBBdWRpdGluZyBhbGwgdGhhdCBjb2RlIGlzIGEgaHVnZSBidW5jaCBvZiB3
b3JrLg0KPiBIbSwgbmVpdGhlciBvZiBkcml2ZXJzIHRha2UgdGhlIHJlc3YgbG9jayBpbiBtYXBf
ZG1hX2J1Zi91bm1hcF9kbWFfYnVmLg0KPiBJdCdzIGVhc3kgdG8gYXVkaXQgdGhlbSBhbGwgYW5k
IEkgZGlkIGl0LiBTbyBlaXRoZXIgSSdtIG1pc3NpbmcNCj4gc29tZXRoaW5nIG9yIGl0IGRvZXNu
J3QgdGFrZSBtdWNoIHRpbWUgdG8gY2hlY2sgdGhlbSBhbGwuIEFtIEkgcmVhbGx5DQo+IG1pc3Np
bmcgc29tZXRoaW5nPw0KDQpPaywgc28gdGhpcyBpcyBvbmx5IGNoYW5naW5nIG1hcC91bm1hcCBu
b3c/DQoNCkluIHRoaXMgY2FzZSBwbGVhc2Ugc2VwYXJhdGUgdGhpcyBmcm9tIHRoZSBkb2N1bWVu
dGF0aW9uIGNoYW5nZS4NCg0KSSB3b3VsZCBhbHNvIGRyb3AgdGhlIF9sb2NrZWQgcG9zdGZpeCBm
cm9tIHRoZSBmdW5jdGlvbiBuYW1lLCBqdXN0IA0KaGF2aW5nIF91bmxvY2tlZCBvbiBhbGwgZnVu
Y3Rpb25zIHdoaWNoIGFyZSBzdXBwb3NlZCB0byBiZSBjYWxsZWQgd2l0aCANCnRoZSBsb2NrIGhl
bGQgc2hvdWxkIGJlIHN1ZmZpY2llbnQuDQoNClRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMs
DQpDaHJpc3RpYW4uDQoNCj4NCj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZWxpeGlyLmJvb3RsaW4uY29tJTJGbGludXgl
MkZsYXRlc3QlMkZBJTJGaWRlbnQlMkZtYXBfZG1hX2J1ZiZhbXA7ZGF0YT0wNSU3QzAxJTdDY2hy
aXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M3MGZkNTJkMGE4MmE0NzdiZmJmZTA4ZGE3YWY4YmVj
NyU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc5NTc1MDYw
NDE5MTQ0NDIlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pR
SWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3QyU3QyU3
QyZhbXA7c2RhdGE9SzQ3dUNVTHNvaVVSanplMEgwa3NVYTR2ekolMkJ4cWdvU2hIOTEwNkZ2eXlB
JTNEJmFtcDtyZXNlcnZlZD0wDQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
