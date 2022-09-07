Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B57BF5AFE78
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 10:04:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3B3243F1D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 08:04:43 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2083.outbound.protection.outlook.com [40.107.243.83])
	by lists.linaro.org (Postfix) with ESMTPS id 695413F30D
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 08:04:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CRml5kptsSdfspDvgjHvqQttbeOBewQM3IaYrAgtYgwiqOkzJHPbpfjzQ8aJkrCAZl69IGdLAFxIldI7sPUBI1BbZbgXqUyYrGj8vwU1Moz2WdaLKAsG3eTnD6LmsUZRqnTXDWfV/uVI0x9IOXZpU98m+yyh4ulbrd+9RYqxJjss8vXlIeHU3EPwLWnbNUlleJug5deZUSWxwXypp0ziCxREsvLAMWpzQ86Yee56vIpO1Uw7wEHUJ1Y7poYdIdqo2TA1FPBmInTSHL6FT989DZ2n+YK4mqONb6Hp2Be62/S+hmBpK9EB4uDceDIDLh7kEHn7MDy9V+ec82m7mETH/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Do9sQBtPj0vzAqccJAjkUSR799gq4PfpGgx8uRRxKc=;
 b=nemImdd+IZRIKwK3TqPBSboOejfQ/Uyw9yQFAikHUkq0oaKmpCrY7QqP+gaF/u0HVnBQL0bJCOPejUiAuh4oSfFkoabj3VGIOUX8+ljYtacB7HJgthJZGwCsaZSX7nWpNHMFFfZTA1e+byBP6OcHRVd7nboVjiSkL8oGahMnu5OVTKCuoW7icDUsA8DtyIxJMnpkuC+7Bm8SD/7J2FNhZ6a84ZopJWW2rV0EyjKTl4IsrMkiS1C/jdFtKJHGe9kvtHZiuUt2B5gxwNLvt3ovnLGLOWxGZpQicxGe7Vab+koiXxMLnPmeoJigGX3HxImq8nHBwzgaQK2UQzgaNqV53g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Do9sQBtPj0vzAqccJAjkUSR799gq4PfpGgx8uRRxKc=;
 b=SZKE4PN5rmXKzXXjPC7BvV78WEouzHoD5vXJOObz8QNR4mFZ4AD1SYOhZWxjxw14Mnqnwi1sd260BZWTb7HcWa/bzhxs8D26KdWPvQhBpD8abTbFoHjMpuLA9Z8yiP20CFAey/tD6fjEfwEnp4Le74wlmVGMByfC7BGP7LZiO3g=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by LV2PR12MB5943.namprd12.prod.outlook.com (2603:10b6:408:170::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.12; Wed, 7 Sep
 2022 06:37:53 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed%6]) with mapi id 15.20.5612.012; Wed, 7 Sep 2022
 06:37:53 +0000
Message-ID: <9b57b254-8d67-9937-5cec-783e7a4d8f56@amd.com>
Date: Wed, 7 Sep 2022 08:37:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, shashank.sharma@amd.com,
 amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com,
 sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie,
 daniel@ffwll.ch, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20220905163502.4032-1-Arvind.Yadav@amd.com>
 <20220905163502.4032-2-Arvind.Yadav@amd.com>
 <5568fad0-1503-a0f3-222e-c238fd4eefdd@amd.com>
 <ffb5acca-7c20-4497-d7d0-25508a6566d2@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <ffb5acca-7c20-4497-d7d0-25508a6566d2@amd.com>
X-ClientProxiedBy: AS9PR06CA0750.eurprd06.prod.outlook.com
 (2603:10a6:20b:487::29) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|LV2PR12MB5943:EE_
X-MS-Office365-Filtering-Correlation-Id: bae217ee-bd27-4c0f-5997-08da909b7d85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hXaakCuK4dfOJfXQZzbdiYy0CMD9idCTBvPOUCclfoOE0q/ScApJpGSKf6Ytyoi9yXHSkCmXQx4E1tkYlvz16QG+bPFldrhglsDt6IMG0ADdqRZtDHEgAWrRM8K/nL44eI1rzXT5OSi3sBzy9xl7/4lOoaU32mVYImXvLw/1jg+tM3jQ/Su4M+sbTZTFhYyWJyE1Kxp0nct2kDk9oJ7rBPhre8WkFWhWCA4LHWtkDZy02MugxZomvq4OCtJ6a4jRWDOvJkpztABR+GWRXNVhr0mB7ekKX5ejk9QN+e4r5dr9xcW/VhPf/XpJIBki0hRfKt5BE3xaBfeimO4cYo0etAMnjbYpqr3diUXMo28B8jSi2GXz27EI1GcNmfNI60YJAal2bm6Pjju80uUW0Z7SJFpl+/JPBfOZWwtEMGq+E49TvEb6E39tO1YdgSjXHACeWaWfjEPsCoee0ExKG3I2M92Dtwl6dq6g4KMLmDLwmH2jXqZ0Db5uPOGWjzYBPooEQev1rGU6DO+iHQdtS+7n/G5b1NPK0jhMXgBbHp+vyQSyDlBAhz8+KdrClbGq2Dy7YXSFKr4NeJKX/QLxIbOZMCCmRq5VN2Ov391yYr6afnt7uf1lc0TYJEXI3Ew5zZVC/U0fBWZeil8Im29+XgIC3n43LpbPHARS1wjCrphbjeK/jwfe3rfeNSgV4cIt+UNf6JIlwd6W3TrW5RJmRi8qi6feUP77oXaqsMlSVC2IeuBUwZ/uCivODJBedGHjRMw365OKCpP3DZMwyAgkSTJ+tXpgX3QlyGtzYLSijNA0IDyz3xKUAt3+VpNaWYEN/nuw
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(346002)(366004)(376002)(136003)(6666004)(36756003)(26005)(2616005)(6506007)(53546011)(86362001)(41300700001)(6512007)(921005)(66574015)(38100700002)(31696002)(186003)(5660300002)(8936002)(66556008)(66946007)(478600001)(66476007)(6486002)(2906002)(110136005)(8676002)(31686004)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bE5XYTFJY3hMM1RFUG9oSUJ3VVZOWHl2MlRtOFhaR3NwU0xqMFlQVG1PU04r?=
 =?utf-8?B?YlhRUlQzYUhOZGJNUWV0VUpCdzB2Z083RWpIV1oxT09ldFB2VzBxaXdtTlFF?=
 =?utf-8?B?Mm8zTnJiaUhFcGd2SStERTJrSlhrcEJnakJtQ2gvRU5ERkhWNWdLZURkSE1x?=
 =?utf-8?B?VEh2M0VIbUJZMmsvVzNjcXJURnFXMTVMdkxrWTRVc29PMGhzdUF1VlFoWEo2?=
 =?utf-8?B?dUIyL2VuTm9ENXdHUVd0MHVLNnRwN1Y3Nitaa08xOWVKaTFTTGJ6QzI5RUht?=
 =?utf-8?B?RnAzRnl1TFRBUjBuaVJFcy9zbVVpd1Z6b2hvekNReFFLSUJXSGJZaXZoeXYy?=
 =?utf-8?B?QWZwTkNJQVVYbHQ4eTcvM3RpOXFPMWZTek5EYXk3dXd6RUJKQUlrWE82bS8x?=
 =?utf-8?B?ZG9lczFBdEVCWTIzeU9POERHdCtPNG4rWFYvclJlY01qQXg0N21VUmFJd2Fa?=
 =?utf-8?B?S1hpa1puLy9RdTFOQlgvYWVKNEg5R0wvaGZFUTJSYXpUcHZqcHA4eDExdlc3?=
 =?utf-8?B?NzBmU0lUcDgvcER3YnJhVWQrY0FXU1hxOFlua2EvcENzMHV2M2ZoL0tBRlJp?=
 =?utf-8?B?cEZhS1FDZjlrWUhZU3NXbTc3NE0zQkNXVHp2OEtUK1FhQjc5ekloNE80ZlFY?=
 =?utf-8?B?Qnozc0V2Znd3citDQko0dEpBNWdXMjJWU3phVHlCbExPTHlPUzlPeklUekNi?=
 =?utf-8?B?U3hxWW9KMjVRZWZOYkg4amMveTZTdjRNK1hPSm04UVg5MVdyalR0czNHYzZX?=
 =?utf-8?B?YldIL3JUcllzaWIrWjNSSCtSM0RDdzZkK0ZXdE1jU2dmVlJnSktCNzdUcVZR?=
 =?utf-8?B?RXZscFV6UEk2WXRmNUlqNHNQandqdnEwVVJEb3RDd3JydWt1WkNIck9QUm95?=
 =?utf-8?B?bTg3WHZ4b2JuNDZZU1c4K0U4ZTVEMVZuTFFKUkJQRlNOUDlaTTN2dFI4UElB?=
 =?utf-8?B?clYxenM5OXJtUzRLRVJncmd0ajNEZGo1MlFwemQxQnMxTCtxZ0ZtaXErcHFK?=
 =?utf-8?B?bDFPdGlwZzJWNWJqYWN5VjVJVUpLMkltZnJoMW1wem4zcTVkMmsyT2pFaWtu?=
 =?utf-8?B?MHhOUVoyZ1UxWXkwQkNZbDJnTU5FT2crOFo1UVNjQ002QnROYVFVZTU0U1RK?=
 =?utf-8?B?WkUxZCtubGZ1TWZFZmpZaDFnREJxaDJHT0o0bFNWMjV4NmRDVkNRYWt6OUNQ?=
 =?utf-8?B?NTd3NlgyU2l5QjIrVFpwT29GQWM1d1J6bHNzOE5xSHptL2RnVitlK2tvTVlS?=
 =?utf-8?B?ZGRtUWkwci8xUUcwN3NEOG9BcnJJMERNOTNuVDRTdUNzS05WM2FaQUZIbThx?=
 =?utf-8?B?dG0waFdxcHU2YWR3NVlmb0RwYkg5TkZpQ0JUdlpyS3MxamdIb1NVTFVGNEhM?=
 =?utf-8?B?c09QRlgrdldIMmlPaEY5SkUwL0x2bVlGTFpyOGsyb0JoZmFQR082Z3oxSEpC?=
 =?utf-8?B?NTlpQnZMbG9EVTl3djlIQWtlRm90RjlDUmNzSnBEYzltL1drd0hSdDZ5SjVD?=
 =?utf-8?B?bS9oeThNSUI2OGFiTlFQaTFnYldHNVFUeHd2MElBLzFNZXpYTjluam5nZXRo?=
 =?utf-8?B?eHRrOHM4ZDA3dWZhZER0aGRLS3Mzb2Zjenhqd2pXRm9SVVFsUnA3a3FvQU1D?=
 =?utf-8?B?dkJPMmM1empubGhoS0lFUE5lMWtnWVc0ZE8zTVJCM1k1WnVoUlRFYWo5N3hW?=
 =?utf-8?B?TWltWmNzUGh6L0YvcmhRL3RKeDl3ZXRtbkYwVHRtVnc1U0Q4Y0U5dXlCSUdT?=
 =?utf-8?B?TENSWTNRU3hGMlc4cU00MGc1NTdUYVg4cGRkQjdtVXg4eE1RNUtCQm1TcTZJ?=
 =?utf-8?B?QVpJNjhRZzNBaXh4ZDdFWlIvRVZBVit2d3N4WVFzZ1ZVajN6K2JpaXdUUTFM?=
 =?utf-8?B?ak1BTUxlZU82N2RtelJkbHZtT0dWU2I0SmkrZTlIYWNLRVZMSkh0N3RLUzNa?=
 =?utf-8?B?NTgzb2lTc09LakpybGFsK1ZyQ0NRYWFCSDFZNW1CZE0zNkpnTWlLQmMwSVlw?=
 =?utf-8?B?YkZkdVpYdldJQmpUem5FRHRsOVZOY2VlOVM4R254R0ZxUlJYWEZWOWNNTWw2?=
 =?utf-8?B?em5rbHhFS0FhaGhVTzQvOHBOOWhIclkrYTMzRUJ5YVpuQjA0MC96YmhJVlBx?=
 =?utf-8?Q?A4Of4lqrVzZdLgn6t39Wl+MFm?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bae217ee-bd27-4c0f-5997-08da909b7d85
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 06:37:52.9224
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5F5Ib0uJS7ftRxbVPEK2m99Pwq4UsrJPs/9+0pEhtWIYZqC/jlOYuuiFUz4n6O7e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5943
Message-ID-Hash: WVMBOMKQC5LMIGKEO6LP4JJN2WFKVMCT
X-Message-ID-Hash: WVMBOMKQC5LMIGKEO6LP4JJN2WFKVMCT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] drm/sched: Enable signaling for finished fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WVMBOMKQC5LMIGKEO6LP4JJN2WFKVMCT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDYuMDkuMjIgdW0gMjE6NTUgc2NocmllYiBBbmRyZXkgR3JvZHpvdnNreToNCj4NCj4gT24g
MjAyMi0wOS0wNiAwMjozNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFtIDA1LjA5LjIy
IHVtIDE4OjM0IHNjaHJpZWIgQXJ2aW5kIFlhZGF2Og0KPj4+IEhlcmUncyBlbmFibGluZyBzb2Z0
d2FyZSBzaWduYWxpbmcgZm9yIGZpbmlzaGVkIGZlbmNlLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1i
eTogQXJ2aW5kIFlhZGF2IDxBcnZpbmQuWWFkYXZAYW1kLmNvbT4NCj4+PiAtLS0NCj4+Pg0KPj4+
IENoYW5nZXMgaW4gdjEgOg0KPj4+IDEtIEFkZHJlc3NpbmcgQ2hyaXN0aWFuJ3MgY29tbWVudCB0
byByZW1vdmUgQ09ORklHX0RFQlVHX0ZTIGNoZWNrIGZyb20NCj4+PiB0aGlzIHBhdGNoLg0KPj4+
IDItIFRoZSB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggaXMgYWxzbyBjaGFuZ2VkIGFuZCBwcmV2aW91
c2x5DQo+Pj4gaXQgd2FzIFtQQVRDSCAyLzRdDQo+Pj4NCj4+PiAtLS0NCj4+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDIgKysNCj4+PiDCoCAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgDQo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX21haW4uYw0KPj4+IGluZGV4IGUwYWIxNGUwZmI2Yi4uZmU3MmRlMGUyOTExIDEw
MDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4+PiBAQCAt
OTYyLDYgKzk2Miw4IEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21haW4odm9pZCAqcGFyYW0pDQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogRHJvcCBmb3Igb3JpZ2luYWwga3JlZl9p
bml0IG9mIHRoZSBmZW5jZSAqLw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9m
ZW5jZV9wdXQoZmVuY2UpOw0KPj4+IMKgICsgZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmco
JnNfZmVuY2UtPmZpbmlzaGVkKTsNCj4+DQo+PiBPaywgdGhpcyBtYWtlcyBpdCBhIGxvdCBjbGVh
cmVyLiBQcmV2aW91c2x5IEkgdGhvdWdoIHRoYXQgd2UgaGF2ZSANCj4+IHNvbWUgYnVnIGluIGRt
YV9mZW5jZV9hZGRfY2FsbGJhY2soKS4NCj4+DQo+PiBUaGlzIGlzIGVzc2VudGlhbGx5IHRoZSB3
cm9uZyBwbGFjZSB0byBjYWxsIHRoaXMsIHRoZSBmaW5pc2hlZCBmZW5jZSANCj4+IHNob3VsZCBi
ZSBlbmFibGVkIGJ5IHRoZSBjYWxsZXIgYW5kIG5vdCBoZXJlLg0KPj4NCj4+IFRoZXJlIGlzIGFs
c28gYW5vdGhlciBwcm9ibGVtIGluIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKCksIGl0
IA0KPj4gcmV0dXJucyBlYXJseSB3aGVuIHRoZSBmZW5jZSBpcyBhbHJlYWR5IHNpZ25hbGVkOg0K
Pj4NCj4+IMKgwqDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxF
RF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybjsNCj4+DQo+PiBQbGVhc2UgcmVtb3ZlIHRoYXQgb25lIGZpcnN0Lg0KPg0KPg0KPiBX
aHkgd2UgZXZlbiBuZWVkIHRoaXMgZXhwbGljaXQgY2FsbCBpZiBkbWFfZmVuY2VfYWRkX2NhbGxi
YWNrIGNhbGxzIA0KPiBfX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nIGFueXdheSA/DQoNClR3
byBkaWZmZXJlbnQgZmVuY2Ugb2JqZWN0cy4NCg0KVGhlIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2so
KSBpcyBkb25lIG9uIHRoZSBodyBmZW5jZSB3ZSBnZXQgaW4gcmV0dXJuIG9mIA0Kc3VibWl0dGlu
ZyB0aGUgam9iLg0KDQpUaGUgZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoKSBoZXJlIGlz
IGRvbmUgb24gdGhlIGZpbmlzaGVkIGZlbmNlIA0Kd2UgdXNlIHRvIHNpZ25hbCB0aGUgY29tcGxl
dGlvbiBleHRlcm5hbGx5Lg0KDQpLZXkgcG9pbnQgaXMgdGhlIGZpbmlzaGVkIGZlbmNlIHNob3Vs
ZCBiZSB1c2VkIGJ5IHRoZSBmcm9udGVuZCBkcml2ZXJzIA0Kd2hpY2ggdXNlcyB0aGUgc2NoZWR1
bGVyIGFuZCBub3QgYnkgdGhlIHNjaGVkdWxlciBpdHNlbGYuDQoNCkNocmlzdGlhbi4NCg0KPg0K
PiBBbmRyZXkNCj4NCj4NCj4+DQo+PiBUaGFua3MsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4NCj4+
PiArDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgciA9IGRtYV9mZW5jZV9hZGRfY2Fs
bGJhY2soZmVuY2UsICZzY2hlZF9qb2ItPmNiLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9zY2hlZF9qb2JfZG9uZV9jYik7
DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHIgPT0gLUVOT0VOVCkNCj4+DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
