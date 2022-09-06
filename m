Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CA45ADFD8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 08:34:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D51C848A0F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 06:34:22 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2066.outbound.protection.outlook.com [40.107.96.66])
	by lists.linaro.org (Postfix) with ESMTPS id 9F6B23EE64
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 06:34:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ndsm9xR1SnAInqTtljsA0Plrhf75eS3AtzWHEXrftSSVYiNmrQGwbbyJ4I8LROn0uI4L+68x0WzCV5JkbvvCnbI8Sym1MCc061wijmlFqbdYbI/mp6w6B9IuG82efLH+8GhW2dD+ifzLvBsiJSD+z572jSaO3zrd7a1yf4ygCIyEFis1L57g3bcsEUO9bMPcx/BSrxtCUxIiVQwVCQjvKnECkJy9bNyGM7Nd9yQAgwoFnb605ODgTKKmb8VWj61qwwmv9q+05F6uViNelTCkG51tTNe4+8IEUqEpm9N+czi432cJLqvh2Ha4CUsmBFdhjYcKUIzSZKnYaoBiVCHy0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=unpovRgVykmyXBcqOISSIJeS+NqAtp9fThXQw+eT2Wc=;
 b=X7Q1IzjK4wp84qkp1uN3ph+jA4knnzKCKp/19EsqY9eSaUtlElx4GXEa5uXcfqaUKigd5qNiqdJTHnYYMLq4cWRA8hFzBVbQ6h6bOwUmMZc2QvMlzV2NZA5JmrFtMUEu+VWn1PAklu/vltNELmzI7B9NC9kQntNTQmFwDd9znpmsO2YYsJb7ngi276q3p5898cWBuVif1xa9I5zin5fjeBrMvSr7tLBwp2E9CaYT7toryg949O90idUp3XQY6mUgR/xoSCcklDrbUJw2CkIW4Es2kJTK+GtxRBu2pyudomtgebBcp30/q7i+EblAuy1ofM6t9jTPwAJIiL1qxd6ywA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=unpovRgVykmyXBcqOISSIJeS+NqAtp9fThXQw+eT2Wc=;
 b=OymRNjPcvIyjCZrSIt2cDQAZaa161ITjLlDQV+IFM3pCF7Ff6BPSVtMiGY2dHQiWlg31onxBg/zPNffH2aRNMjzRWl70hv0L+IaZBeIaoA1TUkAiX2mGloaDORpl1xJNGbLivIO5yOJmTdN/dGSkQvASICEQoo7TxMfPF+eI9Xc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by CH0PR12MB5236.namprd12.prod.outlook.com (2603:10b6:610:d3::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 06:34:14 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a%4]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 06:34:14 +0000
Message-ID: <5568fad0-1503-a0f3-222e-c238fd4eefdd@amd.com>
Date: Tue, 6 Sep 2022 08:34:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905163502.4032-1-Arvind.Yadav@amd.com>
 <20220905163502.4032-2-Arvind.Yadav@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220905163502.4032-2-Arvind.Yadav@amd.com>
X-ClientProxiedBy: FR3P281CA0156.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::17) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8bfaacaf-9905-4831-0b8b-08da8fd1d0a1
X-MS-TrafficTypeDiagnostic: CH0PR12MB5236:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TxpxU/d+toPLFSeVpLzBxh0gC5qWBAsx1IOBgFbZImrB3iBR5sHIconVWlPQF2HEXgnFs3f9LPRVCvCn1GjhbcaGX01wGz3jyPGVlpDC59Mm5U+aC9l8KdkAG51J0qkrumDZMFihXPBp65g9gAt5UHGUoTvDpQJpRLZepm84+u/d6wL55mH4nPo3FUoHFTv0A0wtMr2JZODU7bpSuUQhLvwUA9lOBERVQxfmvunfW+msLUo1PE9xkOOFHP9ym9AbFkno+kpvMuHyIK8YpUoh7OJBzu9TJyJQADIFaPgfWbbIr5sVZCMFZCL+rCZ/fzMmmXdfJlk33RqVizkjq7iAzY/YDNtC5c/eEg0nWAEs9nSSh7IAkvNOlJLf9g+gu24E8t2uGZKK2uYyIbfpIg+fKOxsl0GTylTp6zCNuH+Pa3mVfB5T+3gkns+n+UK6XsGQQZti7c2vQqU1g68+UkAbiVc+JFIgx04EL94Q4ZmgWBFaUd2mt0dEcCn6L1rNR4im2crDzAUyCTwuewu1SZrYIFNINkVQ7Uu0Vtni6uwbXKqWBImsNZfsBz0ezsYnNs6rGYqwjjqHgnTIbkvKUWx6v5VxGwetwfKHRFfTgzfWXICXwZ397Fv3HzBIPszYKn8P0QBnSNo2+mqlFtQQtIuqvuZBo+Gmgb6vLA4VZLmK6J24mcuK6IixPyGrWMZDXJWXGauKdzhWMG2HDIQ5YG6TzRkPJLleZ1RgY7Qq0i7ZquLEd+VquG2hIX/kQnE1V174K1mDK240jBs3b7eEGsl281LKJoVYAo5qVd7z1MmjwZ5LJ57eSUb8GukVVRb5I0Tb
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(366004)(396003)(346002)(39860400002)(36756003)(6512007)(5660300002)(41300700001)(6486002)(8936002)(2906002)(38100700002)(6666004)(66556008)(66476007)(66946007)(86362001)(8676002)(31696002)(6506007)(478600001)(921005)(31686004)(186003)(2616005)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZzJUbHhVTk5yNHNTUk1tUmc5eHJtZUNNKzBBbUR2R1gzR0RzaUZNSmF4UzRU?=
 =?utf-8?B?bDdXdGR3ck9uelNDTFpMZ1NKcFhlaFVNSWFtbTVLQWsvUnFyUHZ6Z2E4cFQw?=
 =?utf-8?B?OVd1WXEzSndpaXVveUJEcGREcXNzN09UK2VvbW9va0dFdzEwdFBUaWhUcTRX?=
 =?utf-8?B?VExBMkJUNUJpR1Q3VktrTFNWR05ZMHJ4c1E0SWZMZVBVMlhlWTJZYkR1dGx5?=
 =?utf-8?B?LzVNbEY1RmtRd0F6SEc4V0pGYlV0RGdLc0FJREpMeG5hdlF2bjdyS1BtMVlp?=
 =?utf-8?B?RmYyVzRoOER5RzQ1U0JIN25SQzZMeHFHVmpvWlV6VnVueGd3dGRoR3daYUd6?=
 =?utf-8?B?dnNaTzdaUGVha1R3bGoyc29TYUtPZEVWWm1VeExremlzRFNCTkc2bWFrRHpu?=
 =?utf-8?B?T1o2UFhqTkkvRGNCcTdDZXRyYXEyUFdBUGJJNElmV1Q4cGxaYU1YZDhSeGNI?=
 =?utf-8?B?K2ZzQy9KVEk0Y2QzcVpsajdMNjFEQ2JzVUFyZ0ZZQ3VVR2dPMjUrczhTWVNN?=
 =?utf-8?B?Q2hhREdhRkZaUHhJSC9XVE45MWczM3Zya29TK29WaC9hWGd6NE5Rb3VZeHp6?=
 =?utf-8?B?UTJrbm04SDJuRkhiMGdSMjl0UDBPK0dteUFpbGVqTWdDRk54ZEhlOCtFbXY4?=
 =?utf-8?B?bXF3RG1hczRlZktBOWtTMDdZTjdiWUw4NmowUFBoVm8wRVRaOEpRNHUvV2Vy?=
 =?utf-8?B?Qy93a3NiYXBaMjdUT1ZaREhFU0JYbnlMWitHQjkya0x6R0lEMnhzNUk2MWNV?=
 =?utf-8?B?ekdLOWZvRlFVVThHTXRPand4WlhLWGFHYzlqQW9Pdm9xM0FNcitRS3FlZ0Z2?=
 =?utf-8?B?L0xIL25OYTE4aXJEVVY4NlNORnFMb09VTmlCMjFlZllvZ0tRNmdSRis1d0lP?=
 =?utf-8?B?TVY0ZmoxWVlISzdJQzBQSm44TW4zOVFyR21HdlI2UGpYNGdBcFJobWFMOTdq?=
 =?utf-8?B?Ky8vQ1RKZjZiUTduZ2M2bngzOHdjSHVSRXhXTDVHTjVkamNzY1A5VE9yamZH?=
 =?utf-8?B?anZkeWRkWnA4UUtsSjQrUEczRjFGaWpzNmlIMjh3ejFjdjNSdVdTaFZGK2Ns?=
 =?utf-8?B?MzNKWmlNQ2dJMmVjRDgxWUVWQjlEYUpERy9TQVZQOUZ4R0x3QnF2clFKcHc0?=
 =?utf-8?B?UmdZNnpVWkpYeFl6RFpLQ3hHMjhYMTA0UDFVaTY0UTh5a25IWlo5SkkzQ3g0?=
 =?utf-8?B?cmk1SzdHWlkwQWh1VkJNWkd6REl0QkpSZ3RhK2NrUytnK1J0TlB2bEdTVmZ6?=
 =?utf-8?B?NlFyRG9sOEloa3ZpOTgrVkZvc2VnKy9xTWMyVlBtSm5iVUM0ck43enhEeHR3?=
 =?utf-8?B?Z0tBY3diWGlxSTgxQjd2K2NMeEVLQVZ2NDNNZnJrSkQwQlhSSk9VK1VPSFRk?=
 =?utf-8?B?RklSRXdxbVZ5WVVJQURJNHVwdEQxU0JFazJ0ZmZRek5qNVoxMWlJeWFOcE9k?=
 =?utf-8?B?ZkFueUg3ZnZ3ZllDc1dVRXUwNXZWN0cxditLWU9SM2FKL1FmV3BaMHFPb0pX?=
 =?utf-8?B?OWt4U3NQK3MreGxFZTVqdG9YbnZ1Q3llMEhCSEhpT3JTRHhsVEhHN2R5TWc0?=
 =?utf-8?B?TGJvbzhlTzZsakoyOE54OUFKcEYwbzc2NkVwOFFPeEpCRVl6bW5KbHFzMzJT?=
 =?utf-8?B?ZGhjMXFWSC9YU0k0d0Z1YTBORVhaUWRBajcwdTlqdVdOdDBEeWMzMStSYnlV?=
 =?utf-8?B?L0p4bGxPMENZbGRQWjI3cFRLWmxoL1dtQWJ2NE1DTVNiTzh2REtxZFV5RDFt?=
 =?utf-8?B?MEo5L1RqRzFhZDJpTURlczNrTjVUQ2NVN1ora1RJV3daTFJHSEdYL3VkaG5h?=
 =?utf-8?B?LytYM1REZmI2NXN4bWROM04rYzM1eVg1RnNLUllwUGZyTFNTYVV6bHhTd3N2?=
 =?utf-8?B?R01GZ05RV3Q5NkF6RXdDY0JJc0NiZGdCYURnNVpFUGFpcVZieTEvSFNWTjla?=
 =?utf-8?B?S3JYamNBVUNTN0gvU2x5eUxGUnpnT1R6aEVCMmw3ZDNQeDF0U3lBd2J3ZU1C?=
 =?utf-8?B?TlZCb2ljYUdhdmJCWFB2dDBSd2FySCtNbERoTFR3dlpVYlIyR3RXM29HUmFU?=
 =?utf-8?B?d2x3cldTOGdqVVJ5Mmdkd1VlMTlBVHNkK3RBVlBsR1ZVeEFxUm9EVnBTYkNr?=
 =?utf-8?B?aFFVMlRFYmo5eTZtM0ZWcVcxMmFoeVVyUldoOTBiVnY2NWNVUzF0L1MwNkdG?=
 =?utf-8?Q?73lydpUOkDZpeGRLZT6/IVU=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bfaacaf-9905-4831-0b8b-08da8fd1d0a1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 06:34:14.0935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jHyz2+BWKOsngCCEigA6Wbh+aIxtoYfhrQbS5UdStG0vOnkb+ErbRfmPyoaTSPvk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5236
Message-ID-Hash: LMOTI752RYCSD2PKTZZBBOVAOI4BSARV
X-Message-ID-Hash: LMOTI752RYCSD2PKTZZBBOVAOI4BSARV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] drm/sched: Enable signaling for finished fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LMOTI752RYCSD2PKTZZBBOVAOI4BSARV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMDkuMjIgdW0gMTg6MzQgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+IEhlcmUncyBlbmFi
bGluZyBzb2Z0d2FyZSBzaWduYWxpbmcgZm9yIGZpbmlzaGVkIGZlbmNlLg0KPg0KPiBTaWduZWQt
b2ZmLWJ5OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRhdkBhbWQuY29tPg0KPiAtLS0NCj4NCj4g
Q2hhbmdlcyBpbiB2MSA6DQo+IDEtIEFkZHJlc3NpbmcgQ2hyaXN0aWFuJ3MgY29tbWVudCB0byBy
ZW1vdmUgQ09ORklHX0RFQlVHX0ZTIGNoZWNrIGZyb20NCj4gdGhpcyBwYXRjaC4NCj4gMi0gVGhl
IHZlcnNpb24gb2YgdGhpcyBwYXRjaCBpcyBhbHNvIGNoYW5nZWQgYW5kIHByZXZpb3VzbHkNCj4g
aXQgd2FzIFtQQVRDSCAyLzRdDQo+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVs
ZXIvc2NoZWRfbWFpbi5jIHwgMiArKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFp
bi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4gaW5kZXggZTBh
YjE0ZTBmYjZiLi5mZTcyZGUwZTI5MTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfbWFpbi5jDQo+IEBAIC05NjIsNiArOTYyLDggQEAgc3RhdGljIGludCBkcm1fc2NoZWRf
bWFpbih2b2lkICpwYXJhbSkNCj4gICAJCQkvKiBEcm9wIGZvciBvcmlnaW5hbCBrcmVmX2luaXQg
b2YgdGhlIGZlbmNlICovDQo+ICAgCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+ICAgDQo+ICsJ
CQlkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZygmc19mZW5jZS0+ZmluaXNoZWQpOw0KDQpP
aywgdGhpcyBtYWtlcyBpdCBhIGxvdCBjbGVhcmVyLiBQcmV2aW91c2x5IEkgdGhvdWdoIHRoYXQg
d2UgaGF2ZSBzb21lIA0KYnVnIGluIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKS4NCg0KVGhpcyBp
cyBlc3NlbnRpYWxseSB0aGUgd3JvbmcgcGxhY2UgdG8gY2FsbCB0aGlzLCB0aGUgZmluaXNoZWQg
ZmVuY2UgDQpzaG91bGQgYmUgZW5hYmxlZCBieSB0aGUgY2FsbGVyIGFuZCBub3QgaGVyZS4NCg0K
VGhlcmUgaXMgYWxzbyBhbm90aGVyIHByb2JsZW0gaW4gZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWdu
YWxpbmcoKSwgaXQgDQpyZXR1cm5zIGVhcmx5IHdoZW4gdGhlIGZlbmNlIGlzIGFscmVhZHkgc2ln
bmFsZWQ6DQoNCiDCoMKgwqDCoMKgwqDCoCBpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lH
TkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuOw0KDQpQbGVhc2UgcmVtb3ZlIHRoYXQgb25lIGZpcnN0Lg0KDQpUaGFua3MsDQpD
aHJpc3RpYW4uDQoNCg0KPiArDQo+ICAgCQkJciA9IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZmVu
Y2UsICZzY2hlZF9qb2ItPmNiLA0KPiAgIAkJCQkJCSAgIGRybV9zY2hlZF9qb2JfZG9uZV9jYik7
DQo+ICAgCQkJaWYgKHIgPT0gLUVOT0VOVCkNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
