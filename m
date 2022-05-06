Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E184E51DA34
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 16:11:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23CD647FC0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 14:11:43 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2086.outbound.protection.outlook.com [40.107.244.86])
	by lists.linaro.org (Postfix) with ESMTPS id 2DA403EBB2
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 May 2022 14:11:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJ6YXhi8HeFoHS0Hquo2xRqrHXRKHWqVS3gCC4oi+eOZf3vD103HPheGE8vqejnyz3W7X415Euj4PXRUFfma1xc6prHHDEPXvggXzLroJVqg7I0vh/hjyoz1c2MFTyvGlAex9VFkzRFxu8vV5t7GRKZ5wlaFR1Lj1LO4XUNqw856mAISPpa8bFpQUewVFYsgxrEJGgT3Hk2xEUT6oERadDKH73BnICqrwFWwjzlKlma330zl2BOFkuA7QxNL7xtwGSSl3SCAk7WdZmj7chUSn0QkvZL9g5nsbHdPHkZoErPQkI0JvWM9rBiOKh7Y5PBwyeaAscJZREzqM6dFRWvPsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wavymbw/CpU8mjw1nfB32XZpJqitOdfN/TV4KZysbPo=;
 b=iYM6vT1ly80wyx0j6wlmkxiCBULUkKRRvDcwttX129o0JFx6Mikx3V0Hy15R/1RZEkzyUlTtHVKXgVvn/jGRRyVODiFKnvGXCsFvf+FDBjIauaktZB62090QmOoCYhfm8zGu3obj357+2Y/+4a2omYvtu5rMAIyiu1uiogULbKxtpi+9/GLGDUaCbXSYses2/PgFjbvQGikPmNWfT0geF9i7Gd/bCjcyvjI/K4lO8ul3Cmr3bBao+mfnN7R95mU1zLkYW9+Lrchws3IZwLonP4NNinPwWR/ODK14Q6ne0oT2op4KAU2I0/83uHvwN+twqcUSjGIn6Mc1N8+6cAf5VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wavymbw/CpU8mjw1nfB32XZpJqitOdfN/TV4KZysbPo=;
 b=tvaNEhyS0T4EaoxrSTXozoAJyKQEUBePS79wVc6Tflm00kNbam1gWd7VODJJGgCZwQF+NKb03r2ZqD9ycveLT9+lBzzbdJvmVjHClSWh3xymnLK2o607sUSbP7/tZkfMUk4rXXvFjHfh+cPHKZ6waPLcjBHTUqkC0prnJ/kXNIM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR12MB2518.namprd12.prod.outlook.com (2603:10b6:4:b0::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13; Fri, 6 May
 2022 14:11:35 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f%4]) with mapi id 15.20.5206.025; Fri, 6 May 2022
 14:11:34 +0000
Message-ID: <bd90027c-5158-0d53-9b05-97a9e62309b3@amd.com>
Date: Fri, 6 May 2022 16:11:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <20220506141009.18047-1-christian.koenig@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220506141009.18047-1-christian.koenig@amd.com>
X-ClientProxiedBy: AM6PR10CA0052.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:80::29) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef35e6df-f071-4fd4-b7f7-08da2f6a53af
X-MS-TrafficTypeDiagnostic: DM5PR12MB2518:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR12MB2518BDBD9F001E3CFC5B95AD83C59@DM5PR12MB2518.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9WVm/kLNpHq3z2zVI2+OlzUODu6M9p0B9WPQZ8yNltPa9ylbw0tg+9cOZOZxpjebZpFCm40QJKOO8QuXT9Gjox6fyTxGHLUkAKVe3y9+zlob5XTkyw3AsGfmYJt4B+4kGY42j0D9fqkrxsf3Vr1CkSIQ6t/1DYMwC5h/BTsmseSZT0fzZJBNpKtRs2I/JTATDrpm9G98ZL7n20w1HYPc8L5Q5FeXo5fX2m1U1EK2bwTf/ZU/BfapgNWqe+0WJ4YXzLDr0MfQGfr//bbTiLj8ZsWGplydPLj3/rPFvxOTAqx30QRigp25JJ7G1qf6HJYJsevYMDJHnHisJXzWhIZw1Be/KiC6+5cLjNfM2zxNemdrPzRyQaG4aT5GyPRc7OqMg0WiBLx8zOOkVwt7CdIuU1sOjVPuaKb8vzGgRg8gk4/vaa+taL3gD6/cyXMzanUf8rqbdP0E0MFaHQX4YH3F/37JRMMuMWLAkQzjIpjHxVdCF00//MRz/XnYchmTl88A815ocWB/D+XEfAwWkduXnBnOLKkx/V/1kR4Oa3UPzYil+Kw6jsfc0DwEL2SPqLExd7Fc9oIVp8ThDRJLzCiPL7wPWonsChQ/9mOBMLKltp3UsT7c/z9V3QqilHMY8/V8WxrCbdSjxPOUr0uc++Li+hnm69FPY6LWhi638/DvVUQ0+gFdFTGy1NcGVvc/c+sJ3Pk26Q7YepdTMXcSyj+Fkhz2RuFaMCf6MqFsGBZdpLk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(316002)(6512007)(31686004)(6506007)(2616005)(83380400001)(5660300002)(8936002)(186003)(66574015)(2906002)(86362001)(66476007)(31696002)(66556008)(66946007)(8676002)(36756003)(6486002)(38100700002)(508600001)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VWUzaDcvMmFOZlZRL001RDN6K1MybVZLbnJ6MzdtYUdUNTVQT0VCVjlKT05K?=
 =?utf-8?B?V2IyWDBhR1NFQkc4SGRHOHFwM2FCSDNLVkx6aEpkOEcvL2NBcSt2ZDBJTUVq?=
 =?utf-8?B?UkhHR3RwbVAzTFNsOWFQWHIzSUlHdVVtbWdCMFR4dGFVcGt1bGlxUjhYUkVK?=
 =?utf-8?B?cXliY29OalVld1lscVNXWVpJRERicVZuYXVmeG40QjZxNXNWR2RRbG1xNkNr?=
 =?utf-8?B?OW13a2hxVVFPRW9LYlV6R0VYWmpsNlEyRTFQWXJxajJMZ2tSb1JmMm9iTU5s?=
 =?utf-8?B?aGxvc2NKK05CVDdRU0FIeVdLUDQ4ZVh2bEdqUzVkd2tIcnUxR2prZkJENFdF?=
 =?utf-8?B?cDhzak1WVFJuVE1EZWhLUldBaVpwYm5EcEd0MjJPL3ptUzZqNy9aYTZ3Vjg2?=
 =?utf-8?B?Mm04S0toQTZ2UU9Rb0FVVVBvTEVXZzllc0xaa2lWeUFmOHZzZ2xrTU90SUZh?=
 =?utf-8?B?SVZYMGpoOGdyRkxtVkpVdlBDMUcvTlF1c3NSTURsZW42YWNIK0cyQTdYN2h5?=
 =?utf-8?B?eXJ5RExjdXhxMWpEeGxMUlVabFRySi9PeFk1R0draE9laGpmZm92MTkrUXkz?=
 =?utf-8?B?bWlDajRVM3NvanpTMTBnTlpNakJaei84ckxHYmwybFd6QWZlSEFxQVZ2Y2Jy?=
 =?utf-8?B?SGNZL2FXMndIUWRkQUsrY2ZuWXhXSWpYakRNTGY0eGdabzc4aEI0SzBmM2p3?=
 =?utf-8?B?NTR2ZkFZYlpwcUVab0NvSU1VWFZHcHE4QXU4cDVwdTJpN3lWOFFQV3gwKzFB?=
 =?utf-8?B?K09yUGFqY1VYbmxtaWRTL1ZZLzZ4WTROdFUwbEtxc2pNdjdjZVg2OWd6ZVhu?=
 =?utf-8?B?Z1Y4cFFUR2UxVVEvaEU4ZEhkRE0yUUZiSW1EOWVVYVBWY0NiazZxa3laeHdk?=
 =?utf-8?B?VTE1Vk1PM1VidmtycTgydzJDWFdKNzQyVGhGTG0vUE9ydEoxZ25odEVDcEts?=
 =?utf-8?B?dzBJaFQzUnJ2VlRXSFp6M2N4MHhJM3RHSnJyOWRWQThXUzRCQzJTSFplTG5r?=
 =?utf-8?B?NldoMmk0YzgzTkJIRWZFWnJjUHE2TE1JNjgzZm9VU1FJMktJRkJTRFl5R3lh?=
 =?utf-8?B?aS9HRjF1TTFOeFNKYmVYVU9wd3d3Qmw5d2FwUFVndUN4Y2R0eCsvOVgzRFQ3?=
 =?utf-8?B?bVpIYWZpcXBRNHlEUGFlTzNwQkNXcUcxRWRHS0VGc05GOEt4b3NYMk05bTFP?=
 =?utf-8?B?cGZIbStSQXJETnhLVGs4QmFMWUZ1UGkybVVyLzNsZVlmUmVaY055cUZPL2Ez?=
 =?utf-8?B?eUhPVTBCMU41VUpqckNHczJsTVJwRUJUL3l1RGkxdDZ2bmJNVlJWRUk5UnVy?=
 =?utf-8?B?eE1QelpzMDUrcWhXRGRzazFLR3MxSmxGVkNvbnhiQnhtUThKTHE3NmpQQVVS?=
 =?utf-8?B?TEdoWnVmaE9HYTlCcXEzZ3FJeHZ1d0ZGcWVER3VJTENSNUc0MlNTblBvVTZS?=
 =?utf-8?B?MEUvTXlzeXBEUzFUd3FjNGxrRUhZU0ZGb2FxKzZFdTluanFVUisxeUhiTmFJ?=
 =?utf-8?B?RjJoQWlwMUFHeUczdXRJRzVnOWZ2RFU0Syt5ZUNBUTZBZWYyT2lad3BTK1ZV?=
 =?utf-8?B?UUxLb0N3VzdndERWVzgxL3J0ZEVDK0R1MUdNWWRuTjV3bTQwWlRlamlQUHZr?=
 =?utf-8?B?TjFGdHJsSFZBa3JUQ0NkU2QvaFU3QzVLRmdwMGdmSDdobEFxMFBFZEg1T0lr?=
 =?utf-8?B?cVRuVjFROTNHNWtkVno2NTRHbUMwdkZZSjIvdG4wNi9kajg1eWpTZmNqMCtB?=
 =?utf-8?B?djVYaEVaY3FpcEo3VmNJYVV1YU9vUXQwd05DaUpnem5rSTdDZXRvVFU5WnB6?=
 =?utf-8?B?WVJZTEVaZjZsZWg0K1VTM28zYkFxcU5xbmUwRnZDRDlERDdNOVJldDN5QUlF?=
 =?utf-8?B?eVpDWW1DNDNmQVcrU0EyeGF2aWlFQ1VPb1hwUXlISTYwMno1cFpxQldmTXgv?=
 =?utf-8?B?RVBKaEY0aWlTeitTYWV1RzgzZThUVnI5K1Nhb3JsWlZ4VUw5WW42SEpwNjdU?=
 =?utf-8?B?ZEdPaEhoaUxHNWMwa1VCazBmQ2xicm9xUTV2T1VnOXpzUWZWUTdvVVM3ZnYx?=
 =?utf-8?B?UkRycXRnY09IN21sWmpwQ1lZTkhWeWwvTXNYYU1PWmtHUnVXbXZEcXAvWVNC?=
 =?utf-8?B?aElCczFzaW1xSkFaM2tTTDNiUi96NWhHcHhDYUlCVitVc2RBaXg0ZXRwWVhZ?=
 =?utf-8?B?RmRsK05YaWZZWUNXdTV5UzVXUG1xY2QxeDlxSzhDM0ZxRTJiaFRtV0FDempv?=
 =?utf-8?B?RUNXWEVhajU3MmFGdHV2bjRtMTVqVU1BaG1ybXoxcENtYU12a3dFN3FSVGdh?=
 =?utf-8?B?aGlHUEVJY3YzRWgwS3lWa09NczhBTnZQTk5hak1KUTFiR0k5eVRBYm1EUXRl?=
 =?utf-8?Q?Hpl7pG7B6n1H3Cctj0pu1670GDL0agCDEsjRsg2olDdKq?=
X-MS-Exchange-AntiSpam-MessageData-1: hnuqIS6akq/28w==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef35e6df-f071-4fd4-b7f7-08da2f6a53af
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2022 14:11:34.6222
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YEMgpYdQq3gWP/vbufWj6J23+LTb8YBLVB4WpPAuxgFDDRGPrQ0RJWfxcpJzW+cn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2518
Message-ID-Hash: H4BWRCHOMCTP3UOFPYADE76WJJOUYNAQ
X-Message-ID-Hash: H4BWRCHOMCTP3UOFPYADE76WJJOUYNAQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-buf: cleanup dma_fence_unwrap selftest v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H4BWRCHOMCTP3UOFPYADE76WJJOUYNAQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SSBoYWQgdG8gc2VuZCB0aGlzIG91dCBvbmNlIG1vcmUuDQoNClRoaXMgdGltZSB3aXRoIHRoZSBy
aWdodCBtYWlsIGFkZHJlc3NlcyBhbmQgYSBtdWNoIHNpbXBsaWZpZWQgcGF0Y2ggIzMuDQoNCkNo
cmlzdGlhbi4NCg0KQW0gMDYuMDUuMjIgdW0gMTY6MTAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Og0KPiBUaGUgc2VsZnRlc3RzLCBmaXggdGhlIGVycm9yIGhhbmRsaW5nLCByZW1vdmUgdW51c2Vk
IGZ1bmN0aW9ucyBhbmQgc3RvcA0KPiBsZWFraW5nIG1lbW9yeSBpbiBmYWlsZWQgdGVzdHMuDQo+
DQo+IHYyOiBmaXggdGhlIG1lbW9yeSBsZWFrIGNvcnJlY3RseS4NCj4NCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4g
ICBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jIHwgNDggKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDI5
IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1m
ZW5jZS11bndyYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCj4g
aW5kZXggMDM5ZjAxNmI1N2JlLi5lMjBjNWE3ZGNmZTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0
LWRtYS1mZW5jZS11bndyYXAuYw0KPiBAQCAtNCwyNyArNCwxOSBAQA0KPiAgICAqIENvcHlyaWdo
dCAoQykgMjAyMiBBZHZhbmNlZCBNaWNybyBEZXZpY2VzLCBJbmMuDQo+ICAgICovDQo+ICAgDQo+
ICsjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvZG1hLWZl
bmNlLWFycmF5Lmg+DQo+ICsjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWNoYWluLmg+DQo+ICAg
I2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS11bndyYXAuaD4NCj4gLSNpZiAwDQo+IC0jaW5jbHVk
ZSA8bGludXgva2VybmVsLmg+DQo+IC0jaW5jbHVkZSA8bGludXgva3RocmVhZC5oPg0KPiAtI2lu
Y2x1ZGUgPGxpbnV4L21tLmg+DQo+IC0jaW5jbHVkZSA8bGludXgvc2NoZWQvc2lnbmFsLmg+DQo+
IC0jaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiAtI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+
DQo+IC0jaW5jbHVkZSA8bGludXgvcmFuZG9tLmg+DQo+IC0jZW5kaWYNCj4gICANCj4gICAjaW5j
bHVkZSAic2VsZnRlc3QuaCINCj4gICANCj4gICAjZGVmaW5lIENIQUlOX1NaICg0IDw8IDEwKQ0K
PiAgIA0KPiAtc3RhdGljIGlubGluZSBzdHJ1Y3QgbW9ja19mZW5jZSB7DQo+ICtzdHJ1Y3QgbW9j
a19mZW5jZSB7DQo+ICAgCXN0cnVjdCBkbWFfZmVuY2UgYmFzZTsNCj4gICAJc3BpbmxvY2tfdCBs
b2NrOw0KPiAtfSAqdG9fbW9ja19mZW5jZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKSB7DQo+IC0JcmV0
dXJuIGNvbnRhaW5lcl9vZihmLCBzdHJ1Y3QgbW9ja19mZW5jZSwgYmFzZSk7DQo+IC19DQo+ICt9
Ow0KPiAgIA0KPiAgIHN0YXRpYyBjb25zdCBjaGFyICptb2NrX25hbWUoc3RydWN0IGRtYV9mZW5j
ZSAqZikNCj4gICB7DQo+IEBAIC00NSw3ICszNyw4IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNl
ICptb2NrX2ZlbmNlKHZvaWQpDQo+ICAgCQlyZXR1cm4gTlVMTDsNCj4gICANCj4gICAJc3Bpbl9s
b2NrX2luaXQoJmYtPmxvY2spOw0KPiAtCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNlLCAmbW9ja19v
cHMsICZmLT5sb2NrLCAwLCAwKTsNCj4gKwlkbWFfZmVuY2VfaW5pdCgmZi0+YmFzZSwgJm1vY2tf
b3BzLCAmZi0+bG9jaywNCj4gKwkJICAgICAgIGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKDEpLCAx
KTsNCj4gICANCj4gICAJcmV0dXJuICZmLT5iYXNlOw0KPiAgIH0NCj4gQEAgLTU5LDcgKzUyLDcg
QEAgc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKm1vY2tfYXJyYXkodW5zaWduZWQgaW50IG51bV9m
ZW5jZXMsIC4uLikNCj4gICANCj4gICAJZmVuY2VzID0ga2NhbGxvYyhudW1fZmVuY2VzLCBzaXpl
b2YoKmZlbmNlcyksIEdGUF9LRVJORUwpOw0KPiAgIAlpZiAoIWZlbmNlcykNCj4gLQkJcmV0dXJu
IE5VTEw7DQo+ICsJCWdvdG8gZXJyb3JfcHV0Ow0KPiAgIA0KPiAgIAl2YV9zdGFydCh2YWxpc3Qs
IG51bV9mZW5jZXMpOw0KPiAgIAlmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytpKQ0KPiBA
QCAtNzAsMTMgKzYzLDE3IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICptb2NrX2FycmF5KHVu
c2lnbmVkIGludCBudW1fZmVuY2VzLCAuLi4pDQo+ICAgCQkJCSAgICAgICBkbWFfZmVuY2VfY29u
dGV4dF9hbGxvYygxKSwNCj4gICAJCQkJICAgICAgIDEsIGZhbHNlKTsNCj4gICAJaWYgKCFhcnJh
eSkNCj4gLQkJZ290byBjbGVhbnVwOw0KPiArCQlnb3RvIGVycm9yX2ZyZWU7DQo+ICAgCXJldHVy
biAmYXJyYXktPmJhc2U7DQo+ICAgDQo+IC1jbGVhbnVwOg0KPiAtCWZvciAoaSA9IDA7IGkgPCBu
dW1fZmVuY2VzOyArK2kpDQo+IC0JCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2ldKTsNCj4gK2Vycm9y
X2ZyZWU6DQo+ICAgCWtmcmVlKGZlbmNlcyk7DQo+ICsNCj4gK2Vycm9yX3B1dDoNCj4gKwl2YV9z
dGFydCh2YWxpc3QsIG51bV9mZW5jZXMpOw0KPiArCWZvciAoaSA9IDA7IGkgPCBudW1fZmVuY2Vz
OyArK2kpDQo+ICsJCWRtYV9mZW5jZV9wdXQodmFfYXJnKHZhbGlzdCwgdHlwZW9mKCpmZW5jZXMp
KSk7DQo+ICsJdmFfZW5kKHZhbGlzdCk7DQo+ICAgCXJldHVybiBOVUxMOw0KPiAgIH0NCj4gICAN
Cj4gQEAgLTExMyw3ICsxMTAsNiBAQCBzdGF0aWMgaW50IHNhbml0eWNoZWNrKHZvaWQgKmFyZykN
Cj4gICAJaWYgKCFjaGFpbikNCj4gICAJCXJldHVybiAtRU5PTUVNOw0KPiAgIA0KPiAtCWRtYV9m
ZW5jZV9zaWduYWwoZik7DQo+ICAgCWRtYV9mZW5jZV9wdXQoY2hhaW4pOw0KPiAgIAlyZXR1cm4g
ZXJyOw0KPiAgIH0NCj4gQEAgLTE1NCwxMCArMTUwLDggQEAgc3RhdGljIGludCB1bndyYXBfYXJy
YXkodm9pZCAqYXJnKQ0KPiAgIAkJZXJyID0gLUVJTlZBTDsNCj4gICAJfQ0KPiAgIA0KPiAtCWRt
YV9mZW5jZV9zaWduYWwoZjEpOw0KPiAtCWRtYV9mZW5jZV9zaWduYWwoZjIpOw0KPiAgIAlkbWFf
ZmVuY2VfcHV0KGFycmF5KTsNCj4gLQlyZXR1cm4gMDsNCj4gKwlyZXR1cm4gZXJyOw0KPiAgIH0N
Cj4gICANCj4gICBzdGF0aWMgaW50IHVud3JhcF9jaGFpbih2b2lkICphcmcpDQo+IEBAIC0xOTYs
MTAgKzE5MCw4IEBAIHN0YXRpYyBpbnQgdW53cmFwX2NoYWluKHZvaWQgKmFyZykNCj4gICAJCWVy
ciA9IC1FSU5WQUw7DQo+ICAgCX0NCj4gICANCj4gLQlkbWFfZmVuY2Vfc2lnbmFsKGYxKTsNCj4g
LQlkbWFfZmVuY2Vfc2lnbmFsKGYyKTsNCj4gICAJZG1hX2ZlbmNlX3B1dChjaGFpbik7DQo+IC0J
cmV0dXJuIDA7DQo+ICsJcmV0dXJuIGVycjsNCj4gICB9DQo+ICAgDQo+ICAgc3RhdGljIGludCB1
bndyYXBfY2hhaW5fYXJyYXkodm9pZCAqYXJnKQ0KPiBAQCAtMjQyLDEwICsyMzQsOCBAQCBzdGF0
aWMgaW50IHVud3JhcF9jaGFpbl9hcnJheSh2b2lkICphcmcpDQo+ICAgCQllcnIgPSAtRUlOVkFM
Ow0KPiAgIAl9DQo+ICAgDQo+IC0JZG1hX2ZlbmNlX3NpZ25hbChmMSk7DQo+IC0JZG1hX2ZlbmNl
X3NpZ25hbChmMik7DQo+ICAgCWRtYV9mZW5jZV9wdXQoY2hhaW4pOw0KPiAtCXJldHVybiAwOw0K
PiArCXJldHVybiBlcnI7DQo+ICAgfQ0KPiAgIA0KPiAgIGludCBkbWFfZmVuY2VfdW53cmFwKHZv
aWQpDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
