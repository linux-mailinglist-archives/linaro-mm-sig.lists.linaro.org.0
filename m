Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2BB59FC80
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 16:01:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35AC23F60D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 14:01:27 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2052.outbound.protection.outlook.com [40.107.92.52])
	by lists.linaro.org (Postfix) with ESMTPS id 1723B3EC34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 14:01:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQMAWHZtg+IA+pEEQFFgW59ZdIR0TfhjmM1khYXe9ENGoDPUTRk0ic5JG633kfrHAUJTMZCt794Hfcy0+NusifMN1U/jC71vmmZaWPxW9CoD0giexkNLLwW2KYoUMNUNEXjjjFHsgpdJlNxOqwU4Z/II1Hu6KIPeera3kf9FvjOaXciEXaBRVsFcrJGqIKQ8k2yfapOGxQ8q/ycgRYoIWRQBTxKCZkYMXCTcmFSxP4bY8Njc9OqcvVULwo4e/PpQuUeWN1s+5Es/cUmu9F5KriyX6yMg+gEYtDzsQgjo5wjNEdvJxc7BDPkV7KToJ1BU/gt7W75PbsfREVbG0bVoow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a6tnmG1zTM4ApDA7S49avmJ7v1U8WXzdIdLD1/Us1WM=;
 b=Z+mX29rP4QWE87xXy6mbqlLiO9MnFkvU45YZnwheLpZxxhTuA8MnZkQEAEorZCG6rX6EjYfGQcSy5fRcNrHIiKfuZs4Fya+I9IhPL3AHV95jXDg71ys0iri7q/sd3xoz6d5bpB8zhFA3SNqTwYZgf6Fiq3omz6ntBXHkxbuB1ZOu8TrIm0Xe9Qv9nsGY11Jpk5tSen8+pEVqPFT/miPEMfsg7s/T89e7zv5QfF4fJZ8FPijj0L+4QFW3sBFGHbm0bBwDlZIF6ltARuWUSGZLZrBBYHvxitdPRJow74gJY7CHkzLP5QHMQRg7S+i38X4PO15nUFdxqeOKP3EQOdRAoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a6tnmG1zTM4ApDA7S49avmJ7v1U8WXzdIdLD1/Us1WM=;
 b=Hej0/obOVZj5Zx9l59hKRiN5loPORbM4VObM1YK/8TxN3iaV7Ok1cX+oATnXfK0H+BIStPLbpESFEtIhA11POXQt8+yFtLZq+qMnKbb+rQmKQOCMLy2p6rSuB8SemVsnHiTT8MFKQnRmYlxRxTw/2EM1WcQCLHkDWm3IdtDJ5Ec=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR12MB1305.namprd12.prod.outlook.com (2603:10b6:3:75::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Wed, 24 Aug
 2022 14:01:16 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5546.024; Wed, 24 Aug 2022
 14:01:16 +0000
Message-ID: <45dee40a-e1a9-2554-2af8-ea6b9dbbb161@amd.com>
Date: Wed, 24 Aug 2022 16:01:06 +0200
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
 Qiang Yu <yuq825@gmail.com>
References: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
 <20220824102248.91964-6-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220824102248.91964-6-dmitry.osipenko@collabora.com>
X-ClientProxiedBy: AS8PR04CA0152.eurprd04.prod.outlook.com
 (2603:10a6:20b:331::7) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18d244fd-891b-4415-1a87-08da85d91c9a
X-MS-TrafficTypeDiagnostic: DM5PR12MB1305:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RJaTX2fASYOjxVRoumKCysKPaCQ2jZtQEUNDWdjOd4mrDA+e6s/KEvNAP9D0IUojJex53LZ8aEJtokpzRaZw/RbDSCzyObI1NS/dtWMCpYC08fT798pKoWjAVQtLd1ZRNzKqHjhUygyGcsxijYeRbp2oapDtg5CBauxOwM+kHHAtCNxzE5P/9jAG2O3fb7nX1zgDFOgnMc1xrdZLnpEmq2Xan1xbY2g0Mqra6rBerU+v9InQ7I73ileczcG3YwdfAP844ktPdGojPYiwN+wSsLfmqkvWkPXTvBLQPtX0txDjka5YJlFtkkBoUG7PfdjaApj+e+F02y1morwp3VizTcAquRFswvk3PfqaiXzOPDlvWr/fPJ0+tz+XOiEVacXsY9ggwSdWMrKoptp7AptG9qMA8Hed3bTEwhnKJj6a1+rulBVOIux8u9LExplude3us20K7CKTXFpTJvixcJVmx87ydS2bb61YgV6ImQgq75JUcmxDRkaX3dJYR28CHXHC7EkFyYAtE7K86kSghuvFUAmeFZU0jveGIncfKEY/SCBMj3agJqoTK4+TfXM4veEAbYY8AYIvkmMH5oVHb7Es3xmU68tz+e/wbDlHxCE67CCO3q0F8T22pKkaAv0DT9P0lmX1vZf9EMmR+RrBdjjxeKiiObjnIoONsVF0fmrYzW2u5mTsr06z00m9uWi380slFnqEjOHWXuNd9tG+rWpDt/mgs7nRgakhaxcgfxnYEuc4imd0c4CEXmMJyExbmIVSqHLaHEThmpylV8Y882e9viggRQsOKvbS9dGXOdeXluZx1sWfkVO0tjRsBRe43fin
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(110136005)(66556008)(66476007)(8676002)(4326008)(316002)(66946007)(8936002)(5660300002)(7416002)(7406005)(2906002)(38100700002)(36756003)(86362001)(31696002)(921005)(41300700001)(6666004)(6512007)(6506007)(6486002)(66574015)(478600001)(83380400001)(2616005)(186003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S2YxM0JqT2p1azdnZEo5U1JJd0piSGtEYWZBU2NKb3I4TUgxSjgxY292bXpl?=
 =?utf-8?B?MWpBZGFTWlJqZ3BuazUxY2RIc0g0VUQxZlNaQU9VZkNTeFQ0QUkreVBvcWRy?=
 =?utf-8?B?dWhIRFpXN2ppRnhxWFBYQ3d3cDQ4VGxrY1BISXhUN21JWVVTdkxoaXFJSnk1?=
 =?utf-8?B?ZHoxQ2NOMmpJaFh0clZiRHJIQnpmNEorYm5ZcGNmNGhTcEsvZzdRSXRqaHJH?=
 =?utf-8?B?dlZQdGJpUm42dWIyZFA2WTArbTBSQ0pYUEhzeCs5MVdJcVFLYXBNWTN5Vm53?=
 =?utf-8?B?djBBcGQ4RzZ6SkxkQXB1aWZ5OXpaa05QdkN2anFSWXBrQjBrcmdad3ZKN25O?=
 =?utf-8?B?RUpBMWtURHZxdW1oZGhJeGlac2U3My9TZVM4eFFjSWxSUVJlQXZWSzY1R2Mr?=
 =?utf-8?B?RDkvNHcxeWVrUElYWC9mWGhWMU5CejY4dmNBVFJiRHpHemNoQUI3aUtjLzBP?=
 =?utf-8?B?K3RZb1FieUl6dmt4Nnp2RzQxdDUrRlp0Qk9IWENqU1NVa0pYRXVYOWpIVnBC?=
 =?utf-8?B?bEZVeWVqVE1kb3dIcVBCRGtnSWJ4ZUt3R1JnSWJjL09kUWJHQlB0TjA1SVpI?=
 =?utf-8?B?K3VucGJ6QncxK0hVS0FOMEsxeVlSYXBOYnFYSXdzOGVIcUo3MHlKcEpDTlB3?=
 =?utf-8?B?dklLMzk0WjNqV0FZMGxla0g5cUZlb1FveS9oRWU4bk9jd0hoSWEzU1NMT1Jy?=
 =?utf-8?B?TDk4TUJPVVA3TWxKUGV3dHkydzkvbk41a2RHN0NwN0h2RUFSWUxTak9halh5?=
 =?utf-8?B?UTRqdk01bm1TSTNDeXE1enFmK2luS2xob1QySFNaZmRWZDA5NjJwTHUzalRR?=
 =?utf-8?B?NE9udlBDcmFieFIreUhwQ1NkV280WWJFQVVBUkQ0emF5cHlUNVNzNUo2OStI?=
 =?utf-8?B?YmF6K25GYS84aGxLMmhQVFVkRDBBS3lLdjhJc3dmVGc2OGFVdXF3MVczeisw?=
 =?utf-8?B?bzVXaEljSUxTOXF5ZkRvSC9pZnRrTjlsSFZqVEFoWjRKeVBscDJXNUNzWXZk?=
 =?utf-8?B?RzJuSFlKTHhjdy9UUVAwNEx6RzBndXdVa0pLTDEvQlVUTFJzdmUwRGxaelAz?=
 =?utf-8?B?NVpvNS9BOWZIWGNzdWo4RDZRWU1nYkt5Zi9zS3owRHlWcU9VTFk2N3R1R05t?=
 =?utf-8?B?TlVTRitabzYzUDJhTUtiTmpWeTRXUlFvcjg1QUdLenVLMUhsWXBCNXdtWmY1?=
 =?utf-8?B?VHpmOU42dDEyVnA4eG5TRFMrcUdWeTVaaTRZRks0dzlSK0hQeTdtU1kvcG9T?=
 =?utf-8?B?cjBybGdvL3VOZTlnUFF5YUY1NzZaZnZSZ0dSTjFwdDR2T3NvTkVmMXg0amNz?=
 =?utf-8?B?RTJZK3hwaWxNekRhc05OcUQvd1Yzdjg0VXF6blZ2cFdwUDl4dVREVnZBbWNq?=
 =?utf-8?B?MENENG1ISHJPa0hrYlV2SFU4L01KdHhFZDlHYmo2MjBYaVA0TndPOTkzdGx4?=
 =?utf-8?B?bmFDRnhRNU9VbTJXdzJOaTBLSjZJZzBOUjB4TkJKNnpPR2dwTXRrR3JQTm81?=
 =?utf-8?B?ZHR3bnVBb2k3RHdyMTRCckJWVWFacFB4V0VSZkc3UlJjVVZFcG1IdjJZZ3NP?=
 =?utf-8?B?UnlNNU1Rc1ByRXhMQWJMdFMrMHVORlB4eTNKcmRRcmd2VWdyRFNSL09oVzI3?=
 =?utf-8?B?TmsyVllTdlZUb3N0dUlPUkJRMVFaZEJVSUs0RU1MUnJITTh2U0pjc2tERG9n?=
 =?utf-8?B?ck03VXFzMlVFYUdMNHUwTWJJdjZyUVlFTlNjMEMxSjV1S2NraXV0VC8vdnJr?=
 =?utf-8?B?QlVJMHMvN1Z1NHk4MUNXa3NvU2pIMEsvVVdsN0t4bnRnZVk2RSsyM2hzVUZC?=
 =?utf-8?B?dUZrTFJtdWdsTUtqNHRDdk55NEpkaW1OVm5EdFBzSldXWlNiRi9LVWRTSmRw?=
 =?utf-8?B?SGZlM1Q0T2g1N0pWbUFWQkdvV0xIS1BQODYwNVhQbGdWOHdYeFJiVE1MbERD?=
 =?utf-8?B?OHhma3EyaFVPMW1TTnQxenRwMkhpeFBtVis5SWo1a1dKSXFLWHJ5Zk1rOGlV?=
 =?utf-8?B?UlN5VCszOXpCaEFqQWxoRTNrVkd0VE5qbkkxMjJLQStvbXgvd001NTA3dUwx?=
 =?utf-8?B?Y2ZuTXlncVBCdVBUdGJyWVZGZk9RYzFaKzVVaVR1Nmpjb2ZpRVdoSklJak0z?=
 =?utf-8?B?dFRvc3BBV3pEbU91U1NKNytLR1ZjMU9JZEZPRmlvRk53Um5oL2xYRTdUQUl1?=
 =?utf-8?Q?OkHNpLdnTExpDKrMoqdy67Q3ZiZx7uLLUJzCPB6JirLX?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18d244fd-891b-4415-1a87-08da85d91c9a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 14:01:16.3261
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yIgqr06rV9pGCDGmg1lDmtmR9+TYmrXu7b/z/1OIahmSG9RUbWlHBv8OYypGN5S4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1305
Message-ID-Hash: ZZ4BHEN53MHTS2VPT5OKHKTTSBVW72D5
X-Message-ID-Hash: ZZ4BHEN53MHTS2VPT5OKHKTTSBVW72D5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/9] dma-buf: Move dma_buf_mmap_unlocked() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZZ4BHEN53MHTS2VPT5OKHKTTSBVW72D5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhpcyBzaG91bGQgd29yaywgYnV0IEknbSByZWFsbHkgd29uZGVyaW5nIGlmIHRoaXMgbWFrZXMg
YSBkaWZmZXJlbmNlIA0KZm9yIHNvbWVib2R5Lg0KDQpBbnl3YXkgdGhlIGFwcHJvYWNoIGlzIGZp
bmUgd2l0aCBtZTogQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgDQo8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQpBbSAyNC4wOC4yMiB1bSAxMjoy
MiBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4gTW92ZSBkbWFfYnVmX21tYXBfdW5sb2NrZWQo
KSBmdW5jdGlvbiB0byB0aGUgZHluYW1pYyBsb2NraW5nIHNwZWNpZmljYXRpb24NCj4gYnkgdGFr
aW5nIHRoZSByZXNlcnZhdGlvbiBsb2NrLiBOZWl0aGVyIG9mIHRoZSB0b2RheSdzIGRyaXZlcnMg
dGFrZSB0aGUNCj4gcmVzZXJ2YXRpb24gbG9jayB3aXRoaW4gdGhlIG1tYXAoKSBjYWxsYmFjaywg
aGVuY2UgaXQncyBzYWZlIHRvIGVuZm9yY2UNCj4gdGhlIGxvY2tpbmcuDQo+DQo+IFNpZ25lZC1v
ZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQo+
IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA4ICsrKysrKystDQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMNCj4gaW5kZXggZjM1OGFmNDAxMzYwLi40NTU2YTEyYmQ3NDEgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Yw0KPiBAQCAtMTM0OCw2ICsxMzQ4LDggQEAgRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9l
bmRfY3B1X2FjY2VzcywgRE1BX0JVRik7DQo+ICAgaW50IGRtYV9idWZfbW1hcF91bmxvY2tlZChz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCj4gICAJ
CQkgIHVuc2lnbmVkIGxvbmcgcGdvZmYpDQo+ICAgew0KPiArCWludCByZXQ7DQo+ICsNCj4gICAJ
aWYgKFdBUk5fT04oIWRtYWJ1ZiB8fCAhdm1hKSkNCj4gICAJCXJldHVybiAtRUlOVkFMOw0KPiAg
IA0KPiBAQCAtMTM2OCw3ICsxMzcwLDExIEBAIGludCBkbWFfYnVmX21tYXBfdW5sb2NrZWQoc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsDQo+ICAgCXZt
YV9zZXRfZmlsZSh2bWEsIGRtYWJ1Zi0+ZmlsZSk7DQo+ICAgCXZtYS0+dm1fcGdvZmYgPSBwZ29m
ZjsNCj4gICANCj4gLQlyZXR1cm4gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEpOw0KPiAr
CWRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4gKwlyZXQgPSBkbWFidWYtPm9w
cy0+bW1hcChkbWFidWYsIHZtYSk7DQo+ICsJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7
DQo+ICsNCj4gKwlyZXR1cm4gcmV0Ow0KPiAgIH0NCj4gICBFWFBPUlRfU1lNQk9MX05TX0dQTChk
bWFfYnVmX21tYXBfdW5sb2NrZWQsIERNQV9CVUYpOw0KPiAgIA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
