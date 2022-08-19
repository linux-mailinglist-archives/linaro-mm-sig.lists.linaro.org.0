Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87265599CAC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Aug 2022 15:11:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5317E3F8D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Aug 2022 13:11:48 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2088.outbound.protection.outlook.com [40.107.92.88])
	by lists.linaro.org (Postfix) with ESMTPS id CC7EB3EBF9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Aug 2022 13:11:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DsVgXS5xzAb7yQKftDaIzT+UJR1kSiFx/2k9XXlUJsSGsJ+mv7kMShu89ZOtJnZHaso11tSLXcLpNYNStvWxGjNPffeLrfp6H3rSV6PcSwe1XqatPfxGpXKcR6wlWIawLNTzp2i8V8tJZcpJeGIbuU36SD/xYplyFtgjOLv+6ZQhVU8aMBzXlz7VpiRRqblQZQiBHZEKGihBo+9ebWmWNCJLR/dEPWkJLZ6qT97hpsC8zzaMKXBtQ+vTWavh5TMBhJDkHWHj+LhhEzFtkKYe1Ytfbb+D7e54pGtmOsyQJcXP2cRBG+vrMi0FPj0QzzGOuOWMj3AksyJ0Ot2ycucIIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K4sE+hR1hmQzL5Z180IgRUAwJU2pdygDjEazCAFWhAY=;
 b=T9N3D1XYyffY9wUK6W3snb4pYz9+OO/R8YAvbWLdMScrDj6DsIGFWEldNjrO1SeXI2SkZpzq24Ey/vo67jbfvNo6SxfKuYWL0o3Dq/YgXb29QQv6qjti1OBOswubzBop6DtgmHNCUQh9fj9gQOjoxh7wuV565+EFX1x+Trp0xeJ328A7r9deZ7de8aGhg+wUbz62qg/Mqj5tfjwGn9easNWKVc3LL+udYrSRvOYJAc4wyRRniuKoHKGo9bvnQJ8sXur6TIZCwhXc1k5GdvbOi7/oCoNcOn9fe1VPX0MXMfn4pPVfAAFgn5Og3/jyXPRxlk8crSjCGKchykq5OrYSyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K4sE+hR1hmQzL5Z180IgRUAwJU2pdygDjEazCAFWhAY=;
 b=lT3WM8uvZtTGJ2TlDXx6rVk4r8fNGgEN45dFtWQ84dR2eF8LfftGPTpddXuoJ+6wbaiGBQoHMVvC57jkaGbzRWh1TSMwJag4qeiTRKj1gqmhT1/p2Age67sU94Kv9HR8AM1U3H5L1aCszHvIzSMvjL2/w/bBLGGjJjAd148kNz0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN6PR12MB1923.namprd12.prod.outlook.com (2603:10b6:404:107::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.19; Fri, 19 Aug
 2022 13:11:42 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Fri, 19 Aug 2022
 13:11:42 +0000
Message-ID: <1d598742-5014-4b63-a2c7-aeacce8448f0@amd.com>
Date: Fri, 19 Aug 2022 15:11:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jeffy Chen <jeffy.chen@rock-chips.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20220819072834.17888-1-jeffy.chen@rock-chips.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220819072834.17888-1-jeffy.chen@rock-chips.com>
X-ClientProxiedBy: FR0P281CA0094.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::14) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b6756c3-3cef-4063-14de-08da81e45c2d
X-MS-TrafficTypeDiagnostic: BN6PR12MB1923:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	G6V4/vOkw3d/AYMyDsS3Qmltv+CyVu5vmYGKtr26Keb1Cfl7geIXotvybmOIxo5ZDyw37JGEgbozVeWUV0E4xpYWqjTIE4+XYsJQCjfhr4k/mkOhB47pDqs23EgBh7If48lP6OdjL+KlwXAj/L/dfrMm8jP9817aP2kYxtiKl7XjZEWDywuaPj7zIwXlVW7YKsJBBH9Eww5GXJdjZC2HkUGtWJ89IR9f6rMOwxtSNt/q/f96YkOxq6jwCz95JlwFNwe9XwIkI9UBxYxgVcbJxUR/wwNOF1X0DolvP3SalGzs5a+HtNfrLa2NsEB++bghH0pC9n9T250kaEERSxDAQ+LL4hbXEWdYv6/tDS1bgazs0hZXrsQ6Sj+cSeg+n5v0hMtx9kV8opjCY5kdaymRJgFWBWAWDi8rc3nlIQDFNUt7TNVwIKeDrAonMm3TB7KKrw9Rm3Wde/rIegpDcHzifboASCr2iTXfMTiBwb2/+zGV74ZhDjTZTvcMMjGkcA8vHjiqWwkAxvY6MlS/ryr4FfpueSq9+qj535YdrWu2jCCTH8Zh1qzFtZqXm1u4ee9ZhifK8L333oMVEBu5Xfpeq/Aa+g5eRuyKSV1HbWU1GphyA1j0enYXoHkxZt1YR/S/BgXJmuWswi1nvzRiikWryIpDp8qp4wAVIHjUlXjCrj9Q3y/2T4wgKwgYFJIX+TbiRO+AV97yy7F9idmBDbF44UINpldtEAVmrxtkKdbVYG6nXRjHhV7vL9XQOEFStY5gRI7ookzfLtS0U3C0y19npvvls6H1/DTC+O6zTTgXkULv05zX0FUR6My4ebVkWM6U9pz5XrEdgrNhJ+Uqc25Ajg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(38100700002)(6512007)(6506007)(6666004)(2906002)(66574015)(83380400001)(186003)(66556008)(66946007)(4326008)(66476007)(31686004)(8676002)(478600001)(6486002)(54906003)(966005)(36756003)(45080400002)(110136005)(31696002)(316002)(86362001)(5660300002)(41300700001)(8936002)(7416002)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L09yT3lCbjVab2R0WVlSWmQ0anBqN3ZWTVFhNE02akNQc050Vzg0OUJ3TDBo?=
 =?utf-8?B?dHVZMUN5TDlJOG5zMTU2ODFJVGsyempNdU84aTFjaUx5K2thUVAzeTEzUkh4?=
 =?utf-8?B?L0hITUhkaGQ3WkpKTUpOdDZ3dVExdXZoRklzL3hMZXVweTJrSjFtbmlqdFdn?=
 =?utf-8?B?aEZSY3NIdDBiQWZWbEtzSmVCSVE4Y3RPeGtvY21FaWVDSTdIT3lPMFJuWFFi?=
 =?utf-8?B?c3RCcVBUc2VZY0kvREI3RTgzdmhpMzdjNVlMcStVVTFRc3N5NDQrai83Z3VE?=
 =?utf-8?B?QTdyMVJXeXpIZmIyNVloc2FZMFFlRklGRmlxZjY5UXFHdlFDN0dtSzBOT3gx?=
 =?utf-8?B?NlRHdTJZUmZkalRlTEFoYkdZWjVlQmFjTnpDbCs2RENncnpPbFhjdWJkNHlx?=
 =?utf-8?B?UkNyeEhXSU8xZ21GT2t2SktYTEI1NjA3d1ZkS1ZySHZOeUdLVVltS05vc3h2?=
 =?utf-8?B?QzVEUEp3QjNvS2V5Zk5JTGZ6TWxOS2p1VjAxaWFuL3N3ekh6THhOcU53dVB6?=
 =?utf-8?B?azNRSlBoU3d5U1haY2FzaWxESXJoQTdMWlpRaDh0djFkWXRERHlNTTI2Vk9D?=
 =?utf-8?B?NU9YVmZKMmZMNlNaRGRLRm8xTS90czdmOTVSci9EOTM5Smt0c1FMSWp1VlhD?=
 =?utf-8?B?V2VWSHZrYzhOc2ZWSUNKcDJyNTE3TGJIQjNTTTVaN2E2R1ZYVmlCSW1tblZV?=
 =?utf-8?B?UFA2ZjNtem5lWTRSbjVoRGlodUFQT1dxMjkwYmI3enE0UGdZclo3L2E5WnZj?=
 =?utf-8?B?WVNLSW8raXdnOEduOS9aWk16aWhjbWxiV24ra2Zkai9hRVE1ZWpvc1llbm1x?=
 =?utf-8?B?ZFVRNnMzSXRFMHZwTk80YUNqVGV6WFJCeEU4ditkUzUwekhQK3hZeTNQV3pp?=
 =?utf-8?B?Q3Q3NWRubWZxa0duV1FoN2lvTjVFQzJGSm55eGRoeTlqY29tSWZrdlJGQVR2?=
 =?utf-8?B?RjdpNXNnWjZhaHJHMFRCYWNZOUNveithRisxRVZnY2N1YjZTVDdyTzJFVTMz?=
 =?utf-8?B?MFYyVlpEVy9lc1p4QUJXbzAzc2VNcVNtb0M5TURRK1kvWkZoS1l4bG1hK2lI?=
 =?utf-8?B?UGxCMit2TXk0N1BVeERsS2ZCc3hnOGF2ZDJvUmZrU1hUekgzc3ZvUUhBQVIy?=
 =?utf-8?B?d0lrS1ZPc1crMmRrc2M1WlFPeDhEQTN6Vnk3R2loOVpuZlE2enZ5Ly9FMzNL?=
 =?utf-8?B?dU9oMmZvQjFUamxmNXV2UG9va1NSVndCY2VQeHl0bWlqS3dTWC96dFRFMUEw?=
 =?utf-8?B?Z1c3WXNvRXNZMGhaQS9vWVF6Sk9kaWdrSkltSm5xeFE5dnNMNi91ejljRE9Q?=
 =?utf-8?B?SEFLVVNFRzQ3U1A0UzZoNkk4S2pNQnF6cWtHQmpHM2dzUkU2MUtSazF3MXc4?=
 =?utf-8?B?V2ppYVpYRGFqeXVxR3NLQ1kvSGI2T3RIMDlhakd5TkRaWVZUSTVqQ2ltMkd3?=
 =?utf-8?B?bDE3TDBKeUVwRUdXUGtCbXprU05hclZLVXZEZzhreGJxVklwa0gvcFBEei9P?=
 =?utf-8?B?TkxRSm1xWjZESDh0d3QwaVM5dlRpZSt2ODUzbDJia29HOUJJRjVhQ0FhOXdQ?=
 =?utf-8?B?Z3ZQOUZsNmwyOVRKUGVERU5FbmVXYlQ3MDE3K041eWdrN25GdUxJOUdYUW9n?=
 =?utf-8?B?OEFrOExzaTRDbUJNRDk3dVg1a2F5ZWNKdjNNekV2UzhJaVp1UkEvYXluTWls?=
 =?utf-8?B?aVNqK3hSeXVtRDI4amJ2UzJKempLMUJtSVdDU0lrZ3BtUEtLVGdMYVMwTzY3?=
 =?utf-8?B?VjltdWF1NWEvMjZUeUNnamVOSGkwV2VHQkp6cFpSYXdUZ0lHMDM1ZWpKOFVF?=
 =?utf-8?B?b1BZS3BneFFGUU5SWE1paGkrV0U1M1dzTVFndk9aNzJlN2VGVUdTWXgyZ3F3?=
 =?utf-8?B?ZXZsbVB5S2c1eDNnVkw1VE1CRjVOcU1ZblplZWJ0Q2J2bFVqWEtCTktTS25O?=
 =?utf-8?B?M2RYZFlMaVhabis0QWpUU2ZKL2djRGlxMTZlMnY1UTRaOUlKZno3b2d2dkw1?=
 =?utf-8?B?ZUpxdTdwaTNScE1DbzJzeUl3RWtYNWhqTkxBL0FFdHE1cDNhMFhibUxsdU5R?=
 =?utf-8?B?d2JMQ0hpZVAvWlcxb2dsUkMybkFRZjZHTU51K0FKK2RVWGNvZVdsZ2w5L2ha?=
 =?utf-8?B?K1pRL2ZnVVl4QURORzB0Zy9YQUFpZzYxejRPV3hxMTgvbHgrKzdEYlZhZ1hN?=
 =?utf-8?Q?CvUcVcgNczR8p4iaa37lBN5oTbX0QMdsyzp+01UpNZDO?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6756c3-3cef-4063-14de-08da81e45c2d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2022 13:11:42.8456
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q1RE5lki43b0VrXjTwOchfmaP37LaTPGjjRXF5bEMq6MCP3IaBvPtKC6dJnE0JSg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1923
Message-ID-Hash: OKDVA4Q5SVC3TQO45SBBS3HJ2R4DCRCU
X-Message-ID-Hash: OKDVA4Q5SVC3TQO45SBBS3HJ2R4DCRCU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andy Yan <andy.yan@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/gem: Fix GEM handle release errors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OKDVA4Q5SVC3TQO45SBBS3HJ2R4DCRCU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTkuMDguMjIgdW0gMDk6Mjggc2NocmllYiBKZWZmeSBDaGVuOg0KPiBDdXJyZW50bHkgd2Ug
YXJlIGFzc3VtaW5nIGEgb25lIHRvIG9uZSBtYXBwaW5nIGJldHdlZW4gZG1hYnVmIGFuZA0KPiBH
RU0gaGFuZGxlIHdoZW4gcmVsZWFzaW5nIEdFTSBoYW5kbGVzLg0KPg0KPiBCdXQgdGhhdCBpcyBu
b3QgYWx3YXlzIHRydWUsIHNpbmNlIHdlIHdvdWxkIGNyZWF0ZSBleHRyYSBoYW5kbGVzIGZvciB0
aGUNCj4gR0VNIG9iaiBpbiBjYXNlcyBsaWtlIGdlbV9vcGVuKCkgYW5kIGdldGZieywyfSgpLg0K
Pg0KPiBBIHNpbWlsYXIgaXNzdWUgd2FzIHJlcG9ydGVkIGF0Og0KPiBodHRwczovL25hbTExLnNh
ZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsb3JlLmtl
cm5lbC5vcmclMkZhbGwlMkYyMDIxMTEwNTA4MzMwOC4zOTIxNTYtMS1qYXkueHUlNDByb2NrLWNo
aXBzLmNvbSUyRiZhbXA7ZGF0YT0wNSU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20l
N0NkMTcxNmRkYmRiZWE0MTBhNzI0NDA4ZGE4MWI1MmJhMiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTEx
YTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc5NjQ5MTIzNzU4MjkyNDglN0NVbmtub3duJTdDVFdG
cGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFo
YVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3QyU3QyU3QyZhbXA7c2RhdGE9dU5kTjdNZ3VqSk1n
Qk1JU2Rab3dLRGgxUEZaMnNxc3VlQ3ZuJTJCWDFoWXVjJTNEJmFtcDtyZXNlcnZlZD0wDQo+DQo+
IEFub3RoZXIgcHJvYmxlbSBpcyB0aGF0IHRoZSBpbXBvcnRlZCBkbWFidWYgbWlnaHQgbm90IGFs
d2F5cyBoYXZlDQo+IGdlbV9vYmotPmRtYV9idWYgc2V0LCB3aGljaCB3b3VsZCBjYXVzZSBsZWFr
cyBpbg0KPiBkcm1fZ2VtX3JlbW92ZV9wcmltZV9oYW5kbGVzKCkuDQo+DQo+IExldCdzIGZpeCB0
aGVzZSBmb3Igbm93IGJ5IHVzaW5nIGhhbmRsZSB0byBmaW5kIHRoZSBleGFjdCBtYXAgdG8gcmVt
b3ZlLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmeSBDaGVuIDxqZWZmeS5jaGVuQHJvY2stY2hp
cHMuY29tPg0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KDQpJJ3ZlIGp1c3QgcHVzaGVkIHRoaXMgb25lIHRvIGRybS1taXNjLWZpeGVz
Lg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gLS0tDQo+DQo+IENoYW5nZXMgaW4gdjM6
DQo+IFJld3JpdGUgY29tbWl0IG1lc3NhZ2UgYSBiaXQuDQo+DQo+IENoYW5nZXMgaW4gdjI6DQo+
IEZpeCBhIHR5cG8gb2YgcmJ0cmVlLg0KPg0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMg
ICAgICB8IDE3ICstLS0tLS0tLS0tLS0tLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9pbnRl
cm5hbC5oIHwgIDQgKystLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyAgICB8IDIw
ICsrKysrKysrKysrKy0tLS0tLS0tDQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCAyNiBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jDQo+IGluZGV4IGViMGMyZDA0MWYx
My4uZWQzOWRhMzgzNTcwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4gQEAgLTE2OCwyMSArMTY4LDYg
QEAgdm9pZCBkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwNCj4gICB9DQo+ICAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2luaXQp
Ow0KPiAgIA0KPiAtc3RhdGljIHZvaWQNCj4gLWRybV9nZW1fcmVtb3ZlX3ByaW1lX2hhbmRsZXMo
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkcm1fZmlsZSAqZmlscCkNCj4gLXsN
Cj4gLQkvKg0KPiAtCSAqIE5vdGU6IG9iai0+ZG1hX2J1ZiBjYW4ndCBkaXNhcHBlYXIgYXMgbG9u
ZyBhcyB3ZSBzdGlsbCBob2xkIGENCj4gLQkgKiBoYW5kbGUgcmVmZXJlbmNlIGluIG9iai0+aGFu
ZGxlX2NvdW50Lg0KPiAtCSAqLw0KPiAtCW11dGV4X2xvY2soJmZpbHAtPnByaW1lLmxvY2spOw0K
PiAtCWlmIChvYmotPmRtYV9idWYpIHsNCj4gLQkJZHJtX3ByaW1lX3JlbW92ZV9idWZfaGFuZGxl
X2xvY2tlZCgmZmlscC0+cHJpbWUsDQo+IC0JCQkJCQkgICBvYmotPmRtYV9idWYpOw0KPiAtCX0N
Cj4gLQltdXRleF91bmxvY2soJmZpbHAtPnByaW1lLmxvY2spOw0KPiAtfQ0KPiAtDQo+ICAgLyoq
DQo+ICAgICogZHJtX2dlbV9vYmplY3RfaGFuZGxlX2ZyZWUgLSByZWxlYXNlIHJlc291cmNlcyBi
b3VuZCB0byB1c2Vyc3BhY2UgaGFuZGxlcw0KPiAgICAqIEBvYmo6IEdFTSBvYmplY3QgdG8gY2xl
YW4gdXAuDQo+IEBAIC0yNTMsNyArMjM4LDcgQEAgZHJtX2dlbV9vYmplY3RfcmVsZWFzZV9oYW5k
bGUoaW50IGlkLCB2b2lkICpwdHIsIHZvaWQgKmRhdGEpDQo+ICAgCWlmIChvYmotPmZ1bmNzLT5j
bG9zZSkNCj4gICAJCW9iai0+ZnVuY3MtPmNsb3NlKG9iaiwgZmlsZV9wcml2KTsNCj4gICANCj4g
LQlkcm1fZ2VtX3JlbW92ZV9wcmltZV9oYW5kbGVzKG9iaiwgZmlsZV9wcml2KTsNCj4gKwlkcm1f
cHJpbWVfcmVtb3ZlX2J1Zl9oYW5kbGUoJmZpbGVfcHJpdi0+cHJpbWUsIGlkKTsNCj4gICAJZHJt
X3ZtYV9ub2RlX3Jldm9rZSgmb2JqLT52bWFfbm9kZSwgZmlsZV9wcml2KTsNCj4gICANCj4gICAJ
ZHJtX2dlbV9vYmplY3RfaGFuZGxlX3B1dF91bmxvY2tlZChvYmopOw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oIGIvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRl
cm5hbC5oDQo+IGluZGV4IDFmYmJjMTlmMWFjMC4uN2JiOThlNmE0NDZkIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2ludGVybmFsLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9pbnRlcm5hbC5oDQo+IEBAIC03NCw4ICs3NCw4IEBAIGludCBkcm1fcHJpbWVfZmRfdG9f
aGFuZGxlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+ICAgDQo+
ICAgdm9pZCBkcm1fcHJpbWVfaW5pdF9maWxlX3ByaXZhdGUoc3RydWN0IGRybV9wcmltZV9maWxl
X3ByaXZhdGUgKnByaW1lX2Zwcml2KTsNCj4gICB2b2lkIGRybV9wcmltZV9kZXN0cm95X2ZpbGVf
cHJpdmF0ZShzdHJ1Y3QgZHJtX3ByaW1lX2ZpbGVfcHJpdmF0ZSAqcHJpbWVfZnByaXYpOw0KPiAt
dm9pZCBkcm1fcHJpbWVfcmVtb3ZlX2J1Zl9oYW5kbGVfbG9ja2VkKHN0cnVjdCBkcm1fcHJpbWVf
ZmlsZV9wcml2YXRlICpwcmltZV9mcHJpdiwNCj4gLQkJCQkJc3RydWN0IGRtYV9idWYgKmRtYV9i
dWYpOw0KPiArdm9pZCBkcm1fcHJpbWVfcmVtb3ZlX2J1Zl9oYW5kbGUoc3RydWN0IGRybV9wcmlt
ZV9maWxlX3ByaXZhdGUgKnByaW1lX2Zwcml2LA0KPiArCQkJCSB1aW50MzJfdCBoYW5kbGUpOw0K
PiAgIA0KPiAgIC8qIGRybV9kcnYuYyAqLw0KPiAgIHN0cnVjdCBkcm1fbWlub3IgKmRybV9taW5v
cl9hY3F1aXJlKHVuc2lnbmVkIGludCBtaW5vcl9pZCk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCj4gaW5k
ZXggZTNmMDlmMTgxMTBjLi5iZDUzNjZiMTYzODEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCj4g
QEAgLTE5MCwyOSArMTkwLDMzIEBAIHN0YXRpYyBpbnQgZHJtX3ByaW1lX2xvb2t1cF9idWZfaGFu
ZGxlKHN0cnVjdCBkcm1fcHJpbWVfZmlsZV9wcml2YXRlICpwcmltZV9mcHJpDQo+ICAgCXJldHVy
biAtRU5PRU5UOw0KPiAgIH0NCj4gICANCj4gLXZvaWQgZHJtX3ByaW1lX3JlbW92ZV9idWZfaGFu
ZGxlX2xvY2tlZChzdHJ1Y3QgZHJtX3ByaW1lX2ZpbGVfcHJpdmF0ZSAqcHJpbWVfZnByaXYsDQo+
IC0JCQkJCXN0cnVjdCBkbWFfYnVmICpkbWFfYnVmKQ0KPiArdm9pZCBkcm1fcHJpbWVfcmVtb3Zl
X2J1Zl9oYW5kbGUoc3RydWN0IGRybV9wcmltZV9maWxlX3ByaXZhdGUgKnByaW1lX2Zwcml2LA0K
PiArCQkJCSB1aW50MzJfdCBoYW5kbGUpDQo+ICAgew0KPiAgIAlzdHJ1Y3QgcmJfbm9kZSAqcmI7
DQo+ICAgDQo+IC0JcmIgPSBwcmltZV9mcHJpdi0+ZG1hYnVmcy5yYl9ub2RlOw0KPiArCW11dGV4
X2xvY2soJnByaW1lX2Zwcml2LT5sb2NrKTsNCj4gKw0KPiArCXJiID0gcHJpbWVfZnByaXYtPmhh
bmRsZXMucmJfbm9kZTsNCj4gICAJd2hpbGUgKHJiKSB7DQo+ICAgCQlzdHJ1Y3QgZHJtX3ByaW1l
X21lbWJlciAqbWVtYmVyOw0KPiAgIA0KPiAtCQltZW1iZXIgPSByYl9lbnRyeShyYiwgc3RydWN0
IGRybV9wcmltZV9tZW1iZXIsIGRtYWJ1Zl9yYik7DQo+IC0JCWlmIChtZW1iZXItPmRtYV9idWYg
PT0gZG1hX2J1Zikgew0KPiArCQltZW1iZXIgPSByYl9lbnRyeShyYiwgc3RydWN0IGRybV9wcmlt
ZV9tZW1iZXIsIGhhbmRsZV9yYik7DQo+ICsJCWlmIChtZW1iZXItPmhhbmRsZSA9PSBoYW5kbGUp
IHsNCj4gICAJCQlyYl9lcmFzZSgmbWVtYmVyLT5oYW5kbGVfcmIsICZwcmltZV9mcHJpdi0+aGFu
ZGxlcyk7DQo+ICAgCQkJcmJfZXJhc2UoJm1lbWJlci0+ZG1hYnVmX3JiLCAmcHJpbWVfZnByaXYt
PmRtYWJ1ZnMpOw0KPiAgIA0KPiAtCQkJZG1hX2J1Zl9wdXQoZG1hX2J1Zik7DQo+ICsJCQlkbWFf
YnVmX3B1dChtZW1iZXItPmRtYV9idWYpOw0KPiAgIAkJCWtmcmVlKG1lbWJlcik7DQo+IC0JCQly
ZXR1cm47DQo+IC0JCX0gZWxzZSBpZiAobWVtYmVyLT5kbWFfYnVmIDwgZG1hX2J1Zikgew0KPiAr
CQkJYnJlYWs7DQo+ICsJCX0gZWxzZSBpZiAobWVtYmVyLT5oYW5kbGUgPCBoYW5kbGUpIHsNCj4g
ICAJCQlyYiA9IHJiLT5yYl9yaWdodDsNCj4gICAJCX0gZWxzZSB7DQo+ICAgCQkJcmIgPSByYi0+
cmJfbGVmdDsNCj4gICAJCX0NCj4gICAJfQ0KPiArDQo+ICsJbXV0ZXhfdW5sb2NrKCZwcmltZV9m
cHJpdi0+bG9jayk7DQo+ICAgfQ0KPiAgIA0KPiAgIHZvaWQgZHJtX3ByaW1lX2luaXRfZmlsZV9w
cml2YXRlKHN0cnVjdCBkcm1fcHJpbWVfZmlsZV9wcml2YXRlICpwcmltZV9mcHJpdikNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
