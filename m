Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FCA3D8F1D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 15:32:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47E3061813
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 13:31:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1B50F63501; Wed, 28 Jul 2021 13:31:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 326FB634DE;
	Wed, 28 Jul 2021 13:31:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 585F360C39
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:31:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 506F6634DE; Wed, 28 Jul 2021 13:31:52 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2075.outbound.protection.outlook.com [40.107.236.75])
 by lists.linaro.org (Postfix) with ESMTPS id 3A1BA60C39
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:31:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AFD04RxSeI59Fj2pqyuN+MSaCyHmOo0EgI1ZYovp4IalpbjQwQwxPx54N3wHhFHyfEs/nYu60y9jUxp7GCz0D7RmpWbDW0ePLUp1s5eQpKgvAB6Bu2H8gmsi6PT1oLKIGKjnczUUUkb+5PtbUjxj8XxmTgofxHRBxkwaIkZ61xTZJcb3yzK+EeitV8Q84f4VArxeRKuZl97jRx9wSqrx0PZwCsVnKdcpsQIa3/v8vvPjDamp1C5fq/17kuHn4gb+ktonDA0VIhgK3G4gNeLMultiCt/wx6rFchpObAENmQCOsR2XYMNswtLsOGumFg+9M4znsIoZcAtRb6IByEedFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2IhckuCMbydUrQRFstJF3gWBrkPOsiPceSX2QZJn4I=;
 b=SC9RHH61yb34P6+1njliY0rsR4/Se2sahoWmjzzy4VW3QjmtWptzyYdbQR9zrXOjbDN10aPcsLs6oilbgNpY7hXoXywQLFBBt9EBNeWUGzBzaErUfXkN/U2H3Gh2NF/GIrCSqzsHMMjV+P4I8Tj1p2N5MdZc0erqZxQAdzbazx/CD2MLkRimM6XA/aVa/9e6vFwiVb2Q/BSUyHGoExAHshnT6mqk5d9edo18AcmfxzBXukRSXs+y3bnVbY2hPqDxY9kfXC82NOOIIjjeXvUoAI7jbJL5YvSrqFQzNSxTDpKypMJ6v9GytjiPCHe5sUq5EetxvAxP8u7y14a+clT5jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2IhckuCMbydUrQRFstJF3gWBrkPOsiPceSX2QZJn4I=;
 b=WPEtJNwE2A0spfTV/rWClAatKCOib9JAZRhf9hPdZmHWuFT7fwZK6znmFhu4sH6sEfnWN5C1+O2Fvc5n3joBzOQ3DI/CoDmvcbe+3mfLxlnB7nbf038fZOSk4xAOyKQ6XO4IzZcJy7knhFkMrBBaGMo8R6RK0viZ9sAS0sT2kOs=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3727.namprd12.prod.outlook.com (2603:10b6:208:15a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 13:31:47 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.031; Wed, 28 Jul 2021
 13:31:47 +0000
To: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Rob Clark <robdclark@chromium.org>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
Date: Wed, 28 Jul 2021 15:31:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
Content-Language: en-US
X-ClientProxiedBy: AM0PR03CA0002.eurprd03.prod.outlook.com
 (2603:10a6:208:14::15) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:af99:e30a:2b7e:eda8]
 (2a02:908:1252:fb60:af99:e30a:2b7e:eda8) by
 AM0PR03CA0002.eurprd03.prod.outlook.com (2603:10a6:208:14::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.17 via Frontend Transport; Wed, 28 Jul 2021 13:31:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4d8f66f3-c50d-40aa-190d-08d951cc0c3c
X-MS-TrafficTypeDiagnostic: MN2PR12MB3727:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3727F676BDDBE44478F5D90483EA9@MN2PR12MB3727.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GOn6NypFOvkWaRMrlmDPOLWFkQ1acbKg6wbP93rDnNXDPSIsUwtZHsYEUgqtwd4p4AWPVd5bevSONpWCtjR6oDLNR1YZovNtAtVKrlnIpjrqE5Z7u8xfTckxxXB0TFY6qKYm/Gn6MrPhFlRoxk2gAW0U8z4yYfe99qCEkuCo/CdVuQpo0ewDqo2W4yPEKcDxRvIhHEcvyXPHWonKOpHe/Of7IoTvE2428levhuT7LS22Geq40yIuJSHXbGR9VTXwAZZXz32WfIAt1JjhoUOCOqJvwMZ9B3O9kbiaaIjDS+bvnriEQz2lBj9FAMT4v6amYqIF17WfKLAtNp97O3Y/2PPT7Kpe26lwQ1Zthz5kseSHMCvu/ruHAnv6TlTQ/Tht2vV1ho0/FWIKnqQiqctjo1WxTC6sNQaNs48Glu1qEQV2ldS4dkDnF1ysSZhzmGkfuSo35xM/K6i+KGzD0vtzT6nwgHjKpoOCT1T/CMKox52Jf4aFbnEhsxzzXZ1gmF4I4m3vQiu8IJBfAeD08he1E/5T5goWzcmxfbgbjarZ4q9MD19pkcf8kD2mpGMo+yPAOJVmybkXmWF1w29aAbY2h4VOaFpxatgxoUhoBPNWH9JHYRxNT9zatL0bsI7ebNH8rJunQjtMhg7H4P9ZLGo76WYRIuLvtL2j6ZjUWsLCowtNj8vrWxNizThsAx4mWXGtq1aFHGXtHUL4HkGXA7OuCXdNP6hQScx0a0VKSurLm8p77HoZkjwUY0UmBqNzP8RUnjwHwWckeuM6dhuMlbpIrhP+uPb0KFv7XRe87O0/2H+6GZiNHwvpW25AVjRDniwy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(396003)(136003)(39850400004)(346002)(83380400001)(8676002)(66946007)(6486002)(66476007)(66556008)(31686004)(4326008)(66574015)(38100700002)(8936002)(966005)(53546011)(86362001)(6666004)(7416002)(2906002)(186003)(54906003)(2616005)(31696002)(5660300002)(36756003)(110136005)(45080400002)(478600001)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlNEUC9Tc3FaYlZCMzExa3Q4VGpzdU51WGs0WTRhRis0Qlh3WkJTYU9oeUxu?=
 =?utf-8?B?QWRsRnk4SkU5dGhreWpqM2NxNFhtNzhFMGVpa3hQeXB3SjN0RGF4YUVOUlQz?=
 =?utf-8?B?UWluT3BJZXVKVENyYWt5ODFoNVlUOTZSYWhnTjlPQ3hVVmFaM1lzcFdhWWdM?=
 =?utf-8?B?cmVYUUFhY1djdHZaeERVejR3STczT3VzN0w4M0FZeEEveDF5c0F2cnNPdmtR?=
 =?utf-8?B?U1k0cEVDMWN4OWZqc0Nzckpsb2x4cEptamFYdG5HaFk4MWpMai8wWTd2dkNL?=
 =?utf-8?B?bzF0VERERlRwOVFpdVlicWkyaVVUeHg1VzMvRElsUnlzYVUyWjFPZHBKaEp5?=
 =?utf-8?B?Ky9wejFtbHBvK2RibldTNmxKWFNneXh1VTc4TW5EMFNlREdBcnB5YWpYTXVm?=
 =?utf-8?B?TW1ETXJadmpPVDNXOGFleC9ic3gyRlluc3BZMkljZndOR2c5Z1JFeUFQbnAy?=
 =?utf-8?B?NFV2VmE2eWZhSjhLUktXL1RzQXNNL1EzWnc1SjBGZ3V5WTkyL0NmNTFld3Qy?=
 =?utf-8?B?OFlCM29kZEZFT0p2bXpGZDF2emV0Z3VEbitocHRYc1V1RU5rQXhST1VucjIz?=
 =?utf-8?B?T3FVVkU1emZoRlQwaXNGUHRiVVMvVUtSL0lpRlFmTE50UGcvcFpmY3RRTmVN?=
 =?utf-8?B?TG5xbFVROWxodXpSVll4RmxKWlJmTW9kR1plYzhldTYrWmZqY0p6ajVoUkVo?=
 =?utf-8?B?WEdjUWhxV2lQdUZtN01VTVVxNDZDdlRnamJJNTZNcVhJaytvckd3VFZndTc4?=
 =?utf-8?B?OVV3SFBDMWxOMzlmR0ljSmVEUWJJNCtuOEg0Z2lCOVNoOG9XRndTQzJwMERR?=
 =?utf-8?B?YnhrSThVVktGeW5CMGgrUTZST0JaMkhKSWp3ZXE4MzVvT0U1SGF0MnRyN2cx?=
 =?utf-8?B?aW1raDBpYVJ4allGVENoMTVQRHRrOXF5d0Y1ZWJoUE9PT0VyU3BQY1hnRkVz?=
 =?utf-8?B?ZGpZeHZadXYzWEdxRWpCY0xBZmc3NTR2Qi9BOU42cXNkYXBUdU01WmMxQ2o1?=
 =?utf-8?B?c2ZzQ1hZVFBwbnFLYkpHTlIxYUp0eS9vNmVhVXQ1cGZyK1hYNW9haFhZV2px?=
 =?utf-8?B?WjZOUGRpM0VPb2YxcGhKNGdybkJEb1l6MGdncjZ2cVhDQzEzN2w0andnUVZo?=
 =?utf-8?B?Yit6d2YyM2oxTU9FbFhtcDNqdFdqT2ZaUUlJMWlFbmFHMHFwNDRJUlozczJu?=
 =?utf-8?B?REVjUThvcW1rN0NTTGtDaHpxYnNqTjN4TlBIKzkrZzNUVDdEMUVQakQ4UHVW?=
 =?utf-8?B?cmRwTXF2cGh5cy9WSnFyR25mNHlySVRuU3NoNzF2c05EcjYvMTdJZGJSdkh4?=
 =?utf-8?B?REh5NEFCMHREZXg5bGlSRVk0TmllWW5kdmdGaFRLcmdaNm1JVDNQcS9mV1Qr?=
 =?utf-8?B?VTRzZFVrQVQrMEtyU2I1YlZLU2R4aHhmUDFZMlhOSy9mUXp1YllQY1IybjZG?=
 =?utf-8?B?bVY5ZkJTU3ZUdFE1dmREU24vTi8yZS85ZnRza2l5Q0ZXZFoxVGp5V0pKZDNE?=
 =?utf-8?B?R24xRitzYmdXN3RLYi9QdTQzWGtPa0pMQ2ZLT1lYM2ZKY0Q4ZDlRZjlZUzlY?=
 =?utf-8?B?NlcxWGdFRllrbzhYL2ZoVUNIeGZ0cVl4dE95N0l3WmVXUTFuOWJ6bTdGY1lu?=
 =?utf-8?B?UWZPc0dhU3hKRjB5dVRiQm1OU2RVMXNuNHR5VVVaN0dvVU1yeGEwdklRODBx?=
 =?utf-8?B?d3hvekdYVjUwdExwcEwvdHA1VG9SbXY4QUk1UjBrMGdyWDZTK1NaVnpqQXZY?=
 =?utf-8?B?ejIrRE9zZG4zK01NMWxkdXA3OUNTSGV2cDQ3emVSSGNwU3dvTlZPTmE2QUVt?=
 =?utf-8?B?NEgweU9TcGh4ODV4U2ZJc0JpbTlMTkZRaWRIdmRIa2NLUEtyc0Nua3RNZzVm?=
 =?utf-8?Q?5tUf2eOwHMRMo?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d8f66f3-c50d-40aa-190d-08d951cc0c3c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 13:31:47.1598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1jDnbFl110qYtxFvT8p45pCleP1Srd0whNzzv9GyDPV7C09XP55j4eJQZK/jEjTO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3727
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Matthew Brost <matthew.brost@intel.com>, Jack Zhang <Jack.Zhang1@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjguMDcuMjEgdW0gMTU6MjQgc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPiBPbiAyMDIxLTA3
LTI4IDM6MTMgcC5tLiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMjguMDcuMjEgdW0g
MTU6MDggc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPj4+IE9uIDIwMjEtMDctMjggMTozNiBwLm0u
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+IEFtIDI3LjA3LjIxIHVtIDE3OjM3IHNjaHJp
ZWIgUm9iIENsYXJrOgo+Pj4+PiBPbiBUdWUsIEp1bCAyNywgMjAyMSBhdCA4OjE5IEFNIE1pY2hl
bCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+IHdyb3RlOgo+Pj4+Pj4gT24gMjAyMS0wNy0y
NyA1OjEyIHAubS4sIFJvYiBDbGFyayB3cm90ZToKPj4+Pj4+PiBPbiBUdWUsIEp1bCAyNywgMjAy
MSBhdCA3OjUwIEFNIE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+IHdyb3RlOgo+
Pj4+Pj4+PiBPbiAyMDIxLTA3LTI3IDE6MzggYS5tLiwgUm9iIENsYXJrIHdyb3RlOgo+Pj4+Pj4+
Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+IEJhc2VkIG9uIGRpc2N1c3Npb24gZnJvbSBhIHByZXZpb3VzIHNlcmllc1sxXSB0byBh
ZGQgYSAiYm9vc3QiIG1lY2hhbmlzbQo+Pj4+Pj4+Pj4gd2hlbiwgZm9yIGV4YW1wbGUsIHZibGFu
ayBkZWFkbGluZXMgYXJlIG1pc3NlZC7CoCBJbnN0ZWFkIG9mIGEgYm9vc3QKPj4+Pj4+Pj4+IGNh
bGxiYWNrLCB0aGlzIGFwcHJvYWNoIGFkZHMgYSB3YXkgdG8gc2V0IGEgZGVhZGxpbmUgb24gdGhl
IGZlbmNlLCBieQo+Pj4+Pj4+Pj4gd2hpY2ggdGhlIHdhaXRlciB3b3VsZCBsaWtlIHRvIHNlZSB0
aGUgZmVuY2Ugc2lnbmFsbGVkLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEkndmUgbm90IHlldCBoYWQg
YSBjaGFuY2UgdG8gcmUtd29yayB0aGUgZHJtL21zbSBwYXJ0IG9mIHRoaXMsIGJ1dAo+Pj4+Pj4+
Pj4gd2FudGVkIHRvIHNlbmQgdGhpcyBvdXQgYXMgYW4gUkZDIGluIGNhc2UgSSBkb24ndCBoYXZl
IGEgY2hhbmNlIHRvCj4+Pj4+Pj4+PiBmaW5pc2ggdGhlIGRybS9tc20gcGFydCB0aGlzIHdlZWsu
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT3JpZ2luYWwgZGVzY3JpcHRpb246Cj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gSW4gc29tZSBjYXNlcywgbGlrZSBkb3VibGUtYnVmZmVyZWQgcmVuZGVyaW5nLCBtaXNz
aW5nIHZibGFua3MgY2FuCj4+Pj4+Pj4+PiB0cmljayB0aGUgR1BVIGludG8gcnVubmluZyBhdCBh
IGxvd2VyIGZyZXF1ZW5jZSwgd2hlbiByZWFsbHkgd2UKPj4+Pj4+Pj4+IHdhbnQgdG8gYmUgcnVu
bmluZyBhdCBhIGhpZ2hlciBmcmVxdWVuY3kgdG8gbm90IG1pc3MgdGhlIHZibGFua3MKPj4+Pj4+
Pj4+IGluIHRoZSBmaXJzdCBwbGFjZS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUaGlzIGlzIHBhcnRp
YWxseSBpbnNwaXJlZCBieSBhIHRyaWNrIGk5MTUgZG9lcywgYnV0IGltcGxlbWVudGVkCj4+Pj4+
Pj4+PiB2aWEgZG1hLWZlbmNlIGZvciBhIGNvdXBsZSBvZiByZWFzb25zOgo+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+IDEpIFRvIGNvbnRpbnVlIHRvIGJlIGFibGUgdG8gdXNlIHRoZSBhdG9taWMgaGVscGVy
cwo+Pj4+Pj4+Pj4gMikgVG8gc3VwcG9ydCBjYXNlcyB3aGVyZSBkaXNwbGF5IGFuZCBncHUgYXJl
IGRpZmZlcmVudCBkcml2ZXJzCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gWzFdIGh0dHBzOi8vbmFtMTEu
c2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnBhdGNo
d29yay5mcmVlZGVza3RvcC5vcmclMkZzZXJpZXMlMkY5MDMzMSUyRiZhbXA7ZGF0YT0wNCU3QzAx
JTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0NjZDM2NWJjMzk3YzI0N2JiOTZiMTA4ZDk1
MWNiMDY4NiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2
MzA3NTQ3MjAwNTU5MjglN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01E
QWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZh
bXA7c2RhdGE9MXMwb2JiZXFIJTJGb2lWaDFKUmZOYVpJcVBWSzNFYktCME9QOXpaJTJCQXo4NzQl
M0QmYW1wO3Jlc2VydmVkPTAKPj4+Pj4+Pj4gVW5mb3J0dW5hdGVseSwgbm9uZSBvZiB0aGVzZSBh
cHByb2FjaGVzIHdpbGwgaGF2ZSB0aGUgZnVsbCBpbnRlbmRlZCBlZmZlY3Qgb25jZSBXYXlsYW5k
IGNvbXBvc2l0b3JzIHN0YXJ0IHdhaXRpbmcgZm9yIGNsaWVudCBidWZmZXJzIHRvIGJlY29tZSBp
ZGxlIGJlZm9yZSB1c2luZyB0aGVtIGZvciBhbiBvdXRwdXQgZnJhbWUgKHRvIHByZXZlbnQgb3V0
cHV0IGZyYW1lcyBmcm9tIGdldHRpbmcgZGVsYXllZCBieSBjbGllbnQgd29yaykuIFNlZSBodHRw
czovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0El
MkYlMkZnaXRsYWIuZ25vbWUub3JnJTJGR05PTUUlMkZtdXR0ZXIlMkYtJTJGbWVyZ2VfcmVxdWVz
dHMlMkYxODgwJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3
Q2NkMzY1YmMzOTdjMjQ3YmI5NmIxMDhkOTUxY2IwNjg2JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFh
ODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzYzMDc1NDcyMDA2NTkyMiU3Q1Vua25vd24lN0NUV0Zw
Ykdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhh
V3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT02YVR2QnVnV3pmeVoxM05MUllXM1Fo
OXQyJTJCRGJtS3BDMTM5MG0wN0J4VjAlM0QmYW1wO3Jlc2VydmVkPTAgKHNoYW1lbGVzcyBwbHVn
IDopIGZvciBhIHByb29mIG9mIGNvbmNlcHQgb2YgdGhpcyBmb3IgbXV0dGVyLiBUaGUgYm9vc3Qg
d2lsbCBvbmx5IGFmZmVjdCB0aGUgY29tcG9zaXRvcidzIG93biBHUFUgd29yaywgbm90IHRoZSBj
bGllbnQgd29yayAod2hpY2ggbWVhbnMgbm8gZWZmZWN0IGF0IGFsbCBmb3IgZnVsbHNjcmVlbiBh
cHBzIHdoZXJlIHRoZSBjb21wb3NpdG9yIGNhbiBzY2FuIG91dCB0aGUgY2xpZW50IGJ1ZmZlcnMg
ZGlyZWN0bHkpLgo+Pj4+Pj4+Pgo+Pj4+Pj4+IEkgZ3Vlc3MgeW91IG1lYW4gIm5vIGVmZmVjdCBh
dCBhbGwgKmV4Y2VwdCogZm9yIGZ1bGxzY3JlZW4uLi4iPwo+Pj4+Pj4gSSBtZWFudCB3aGF0IEkg
d3JvdGU6IFRoZSBjb21wb3NpdG9yIHdpbGwgd2FpdCBmb3IgdGhlIG5leHQgYnVmZmVyIHRvIGJl
Y29tZSBpZGxlLCBzbyB0aGVyZSdzIG5vIGJvb3N0IGZyb20gdGhpcyBtZWNoYW5pc20gZm9yIHRo
ZSBjbGllbnQgZHJhd2luZyB0byB0aGF0IGJ1ZmZlci4gQW5kIHNpbmNlIHRoZSBjb21wb3NpdG9y
IGRvZXMgbm8gZHJhd2luZyBvZiBpdHMgb3duIGluIHRoaXMgY2FzZSwgdGhlcmUncyBubyBib29z
dCBmcm9tIHRoYXQgZWl0aGVyLgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pj4gSSdkIHBlcmhhcHMgcmVj
b21tZW5kIHRoYXQgd2F5bGFuZCBjb21wb3NpdG9ycywgaW4gY2FzZXMgd2hlcmUgb25seSBhCj4+
Pj4+Pj4gc2luZ2xlIGxheWVyIGlzIGNoYW5naW5nLCBub3QgdHJ5IHRvIGJlIGNsZXZlciBhbmQg
anVzdCBwdXNoIHRoZQo+Pj4+Pj4+IHVwZGF0ZSBkb3duIHRvIHRoZSBrZXJuZWwuCj4+Pj4+PiBF
dmVuIGp1c3QgZm9yIHRoZSBmdWxsc2NyZWVuIGRpcmVjdCBzY2Fub3V0IGNhc2UsIHRoYXQgd291
bGQgcmVxdWlyZSBzb21lIGtpbmQgb2YgYXRvbWljIEtNUyBBUEkgZXh0ZW5zaW9uIHRvIGFsbG93
IHF1ZXVpbmcgbXVsdGlwbGUgcGFnZSBmbGlwcyBmb3IgdGhlIHNhbWUgQ1JUQy4KPj4+Pj4+Cj4+
Pj4+PiBGb3Igb3RoZXIgY2FzZXMsIHRoaXMgd291bGQgYWxzbyByZXF1aXJlIGEgbWVjaGFuaXNt
IHRvIGNhbmNlbCBhIHBlbmRpbmcgYXRvbWljIGNvbW1pdCwgZm9yIHdoZW4gYW5vdGhlciBzdXJm
YWNlIHVwZGF0ZSBjb21lcyBpbiBiZWZvcmUgdGhlIGNvbXBvc2l0b3IncyBkZWFkbGluZSwgd2hp
Y2ggYWZmZWN0cyB0aGUgcHJldmlvdXNseSBzaW5nbGUgdXBkYXRpbmcgc3VyZmFjZSBhcyB3ZWxs
Lgo+Pj4+Pj4KPj4+Pj4gV2VsbCwgaW4gdGhlIGVuZCwgdGhlcmUgaXMgbW9yZSB0aGFuIG9uZSBj
b21wb3NpdG9yIG91dCB0aGVyZS4uIGFuZCBpZgo+Pj4+PiBzb21lIHdheWxhbmQgY29tcG9zaXRv
cnMgYXJlIGdvaW5nIHRoaXMgcm91dGUsIHRoZXkgY2FuIGFsc28gaW1wbGVtZW50Cj4+Pj4+IHRo
ZSBzYW1lIG1lY2hhbmlzbSBpbiB1c2Vyc3BhY2UgdXNpbmcgdGhlIHN5c2ZzIHRoYXQgZGV2ZnJl
cSBleHBvcnRzLgo+Pj4+Pgo+Pj4+PiBCdXQgaXQgc291bmRzIHNpbXBsZXIgdG8gbWUgZm9yIHRo
ZSBjb21wb3NpdG9yIHRvIGhhdmUgYSBzb3J0IG9mICJnYW1lCj4+Pj4+IG1vZGUiIGZvciBmdWxs
c2NyZWVuIGdhbWVzLi4gSSdtIGxlc3Mgd29ycmllZCBhYm91dCBVSSBpbnRlcmFjdGl2ZQo+Pj4+
PiB3b3JrbG9hZHMsIGJvb3N0aW5nIHRoZSBHUFUgZnJlcSB1cG9uIHN1ZGRlbiBhY3Rpdml0eSBh
ZnRlciBhIHBlcmlvZAo+Pj4+PiBvZiBpbmFjdGl2aXR5IHNlZW1zIHRvIHdvcmsgcmVhc29uYWJs
eSB3ZWxsIHRoZXJlLgo+Pj4+IEF0IGxlYXN0IEFNRCBoYXJkd2FyZSBpcyBhbHJlYWR5IGNhcGFi
bGUgb2YgZmxpcHBpbmcgZnJhbWVzIG9uIEdQVSBldmVudHMgbGlrZSBmaW5pc2hpbmcgcmVuZGVy
aW5nIChvciB1cGxvYWRpbmcgZXRjKS4KPj4+Pgo+Pj4+IEJ5IHdhaXRpbmcgaW4gdXNlcnNwYWNl
IG9uIHRoZSBDUFUgYmVmb3JlIHNlbmQgdGhlIGZyYW1lIHRvIHRoZSBoYXJkd2FyZSB5b3UgYXJl
IGNvbXBsZXRlbHkga2lsbGluZyBvZiBzdWNoIGZlYXR1cmVzLgo+Pj4+Cj4+Pj4gRm9yIGNvbXBv
c2luZyB1c2UgY2FzZXMgdGhhdCBtYWtlcyBzZW5zZSwgYnV0IGNlcnRhaW5seSBub3QgZm9yIGZ1
bGwgc2NyZWVuIGFwcGxpY2F0aW9ucyBhcyBmYXIgYXMgSSBjYW4gc2VlLgo+Pj4gRXZlbiBmb3Ig
ZnVsbHNjcmVlbiwgdGhlIGN1cnJlbnQgS01TIEFQSSBvbmx5IGFsbG93cyBxdWV1aW5nIGEgc2lu
Z2xlIHBhZ2UgZmxpcCBwZXIgQ1JUQywgd2l0aCBubyB3YXkgdG8gY2FuY2VsIG9yIG90aGVyd2lz
ZSBtb2RpZnkgaXQuIFRoZXJlZm9yZSwgYSBXYXlsYW5kIGNvbXBvc2l0b3IgaGFzIHRvIHNldCBh
IGRlYWRsaW5lIGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlLCBhbmQgd2hlbiB0aGUgZGVhZGxp
bmUgcGFzc2VzLCBpdCBoYXMgdG8gc2VsZWN0IHRoZSBiZXN0IGJ1ZmZlciBhdmFpbGFibGUgZm9y
IHRoZSBmdWxsc2NyZWVuIHN1cmZhY2UuIFRvIG1ha2Ugc3VyZSB0aGUgZmxpcCB3aWxsIG5vdCBt
aXNzIHRoZSBuZXh0IHJlZnJlc2ggY3ljbGUsIHRoZSBjb21wb3NpdG9yIGhhcyB0byBwaWNrIGFu
IGlkbGUgYnVmZmVyLiBJZiBpdCBwaWNrcyBhIG5vbi1pZGxlIGJ1ZmZlciwgYW5kIHRoZSBwZW5k
aW5nIHJlbmRlcmluZyBkb2VzIG5vdCBmaW5pc2ggaW4gdGltZSBmb3IgdmVydGljYWwgYmxhbmss
IHRoZSBmbGlwIHdpbGwgYmUgZGVsYXllZCBieSBhdCBsZWFzdCBvbmUgcmVmcmVzaCBjeWNsZSwg
d2hpY2ggcmVzdWx0cyBpbiB2aXNpYmxlIHN0dXR0ZXJpbmcuCj4+Pgo+Pj4gKFVudGlsIHRoZSBk
ZWFkbGluZSBwYXNzZXMsIHRoZSBXYXlsYW5kIGNvbXBvc2l0b3IgY2FuJ3QgZXZlbiBrbm93IGlm
IGEgcHJldmlvdXNseSBmdWxsc2NyZWVuIHN1cmZhY2Ugd2lsbCBzdGlsbCBiZSBmdWxsc2NyZWVu
IGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlKQo+PiBXZWxsIHRoZW4gbGV0J3MgZXh0ZW5kIHRo
ZSBLTVMgQVBJIGluc3RlYWQgb2YgaGFja2luZyB0b2dldGhlciB3b3JrYXJvdW5kcyBpbiB1c2Vy
c3BhY2UuCj4gVGhhdCdzIGluZGVlZCBhIHBvc3NpYmxlIHNvbHV0aW9uIGZvciB0aGUgZnVsbHNj
cmVlbiAvIGRpcmVjdCBzY2Fub3V0IGNhc2UuCj4KPiBOb3QgZm9yIHRoZSBnZW5lcmFsIGNvbXBv
c2l0aW5nIGNhc2UgdGhvdWdoLCBzaW5jZSBhIGNvbXBvc2l0b3IgZG9lcyBub3Qgd2FudCB0byBj
b21wb3NpdGUgbXVsdGlwbGUgb3V0cHV0IGZyYW1lcyBwZXIgZGlzcGxheSByZWZyZXNoIGN5Y2xl
LCBzbyBpdCBoYXMgdG8gbWFrZSBzdXJlIHRoZSBvbmUgZnJhbWUgaGl0cyB0aGUgdGFyZ2V0LgoK
WWVhaCwgdGhhdCdzIHRydWUgYXMgd2VsbC4KCkF0IGxlYXN0IGFzIGxvbmcgYXMgbm9ib2R5IGlu
dmVudHMgYSBtZWNoYW5pc20gdG8gZG8gdGhpcyBkZWNpc2lvbiBvbiAKdGhlIEdQVSBpbnN0ZWFk
LgoKQ2hyaXN0aWFuLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
