Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E17B7604327
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:28:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF4DF40469
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:28:24 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2085.outbound.protection.outlook.com [40.107.96.85])
	by lists.linaro.org (Postfix) with ESMTPS id 74B0B402EE
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Sep 2022 14:58:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8ApC/5uZ7oi7rnZHDTl04As+0sjPs62JYiSU4f8RXATi7lNp4phhO/6cAKS7Jx4Nc4H+lTxlVgpx+WjmnwuRoshGcD/JSY05icpOXutfa0A63C4YBw/JLj66eGF95PoVEKthv0mtZEAZfZqIK93TLN45qhJ1wHLY2+Nrdh62xgwqDwpI3EWYvqxOWM35ore0RoNq3bteW3Q45z+uj+9719QtNKsK71IIbm0N76b5Azv9Qf6PoV7b1Rc0VkEK8Dp6I18RtsOhmSP1dEbjUEiCYIhKXJrdhJcRM1vWIeQhyL4Nt5kxj2N3XZauNc3XDlI2PCRoaQK2cMxAGNqzeIYjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+56O7ZwNu/V60IlYufm/5s2EWbglvy6wmv0UQMJofm8=;
 b=Mf4B3Oy48zg72rgeNkVf0ORj+VWC0+397lyb4C7qeNFSOwANi5MLPVDtFUWDFRbhcKymCdKQG0lshN58BhG8j0uJVpSzCrdRpTrRzECJdYMV45lnIWf6fWS+llbPRirMKED/v3nKpSsnD8nTBtfVrXetZR2I83i1qhMPwNizRcIaSoX9QzB/nCZWB004GxCWpTLhMiad2+r8tRJ+illuQ+4lCBBO2HNEInG1LHLShRN6HLxaD1vzOOADjCI71EuzTJ9/4HEPKTZCwnj4vXudJQ13wX0a08r6jhG/VfrRrYs+cxdWFV9nhLBD0CK1VHGDgR1bQXUAlple4Df2xceK2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+56O7ZwNu/V60IlYufm/5s2EWbglvy6wmv0UQMJofm8=;
 b=H0JckgeTGhgRAk4WRvLka113rcOdnKD9gTIAg4BzVLGfkrtK3ctarB1yTU3PmyDiWOBZrVgG+xPONZ2vik19+N4jmBfUxsRgcC0vDRBSR3xXCBujFnIXqCyhFEfGoaw4yx6C/YDRcWwkYe8HqfUKAf8tZeTfAaiePHZLMOROS0Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by MN2PR12MB4302.namprd12.prod.outlook.com (2603:10b6:208:1de::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 5 Sep
 2022 14:58:22 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c%5]) with mapi id 15.20.5588.015; Mon, 5 Sep 2022
 14:58:22 +0000
Message-ID: <979c371a-6210-161b-3541-ace6d68ef1a3@amd.com>
Date: Mon, 5 Sep 2022 20:28:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
From: "Yadav, Arvind" <arvyadav@amd.com>
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905105653.13670-1-Arvind.Yadav@amd.com>
 <20220905105653.13670-3-Arvind.Yadav@amd.com>
 <96d14c8a-e3de-fcea-b3b1-434bc6a78ae4@amd.com>
 <5b84f7c1-99a6-02c8-2606-8986891a95b0@amd.com>
In-Reply-To: <5b84f7c1-99a6-02c8-2606-8986891a95b0@amd.com>
X-ClientProxiedBy: PN2PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::6) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 26ce0c7c-3715-4e97-5dd6-08da8f4f1354
X-MS-TrafficTypeDiagnostic: MN2PR12MB4302:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KkOZN/jnv6hdPQ58R8AgCOj3/bDjTWNZ05+ywJ4Zm4ojwG4L1fhFBiwBq27tOMQ9ntUPlbwQNdSBhsBmKfqZ0E9NI7o3Ae7K8aNcJIR7YanMp3hl8NESpzYx0WAVCw20EMNYIL9Tv1EyoShZXRWQT7m5fU5kxuM/ibI1nfChC2Cn0axAzShWuwHcVDoPG/0V4vmtlAHt09rtc1QL2jmgTUXYr8rQEDNjAagoSWYGBDYPqx97q6Z7bj3I6/3R1gG6fFjkmHPl3HAargzlfoBr7MaQctSHqn9rVAx9NUZeuNmZWQjhRmosERMQFa8oFK0pcGKO8uMRGAohDLUANaj/JW0W6lD4FbVbCZ8XHy6ypePuKzzwiY8stxGUjkg1ApMljLOnVhaEXugQmyfXvHkbeckSbZTJKFqANukI26yjTc0HXWA3m/wtfCv+w9SUC2y9GgsnY+OSXWoRWO/xCMquDmfV6zObm1ln5/iTtrCUWkVkr5SV6yKjijT4KE0eCKwprS1WwC97A5VFqai+boeZ3dsKUsN3czUF2JaVNUyrNasvl8l+5hfDuvF0OrRikoWlv3RGeogysBUmoutB9tQV+C7NLAuOxSLa9XL1CI9OzqOCnxofdhvqrvXK8HFjX5+MLmVe2ysp6NZMK4mXkW7/E4+UG3SZxQU0C9y4a9eL8KvtEOOR5NhOqWP4ros5HX5HHM30RhKOlJ2tqC+7tGypLA3j70YKQUwQkVhqb8yM0TyaprMp81oBj6Lw3z3gpAMnXAfth0L/CtltTuWqQIui/eZznJU9w692RhVTIgf0fLxPZAj0muMoJuh06ah8K0yP
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(66574015)(186003)(921005)(110136005)(2616005)(83380400001)(316002)(31686004)(8936002)(26005)(6486002)(2906002)(36756003)(6512007)(41300700001)(5660300002)(6506007)(53546011)(8676002)(31696002)(478600001)(38100700002)(66946007)(66476007)(6666004)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RDBkNk10TWpXcWx0Zkl1Mmw2MGRUbXNCVW4zUnFybjV5Qk1MakdPSmVIaVNj?=
 =?utf-8?B?eFZ4STlPTk1taHJsWUVubHR4cCs3WENPaExjVWJqamdSUTNiVUx3QjhNT0lO?=
 =?utf-8?B?Z3dZMmNHbXBIdUJTMC9NcldxZzVoc0pIMms2LzNkUTJ6NG1WMTFFRjFlS2JY?=
 =?utf-8?B?c2lVLzFRZFNIeHpTNEc2aHdZTWJYRVVXUDkvSUJJSXlhTitieHhOS1M3eTVT?=
 =?utf-8?B?cjJYdmdqYUhuOFRFME1LVnZ6N2pEbWlkT3dUT01zREtUNzBQSWUwQ20zY09Y?=
 =?utf-8?B?RXNsL0NuU0x6bGtCb21qeU02TjBVVWYvNVNFcnV0d3IwSkdRTU1sVHVmR3d1?=
 =?utf-8?B?UVFqUS9Gc2dUY2NEbEpOcEpuQmpyVUozZjBNc1lpKzVhV3R3YXpqaEVYTjZM?=
 =?utf-8?B?cWxQbnNoUTVibm9qRWswQmxyOExDaDB0NnFnTU5nRXZIUVdoS041Q0FrVTh3?=
 =?utf-8?B?ZjBYZmdEMlV3RWNQQ2JNRWNmT0dodUVNaHp5SFNRNkw0cFFuMnFGMHVzRmxP?=
 =?utf-8?B?VFlPaDcwVGpYRklmMVR2TnM5SzVTWXJONjVuMFVta3FlYzJmM1lOd2tNUzNV?=
 =?utf-8?B?QVltZGROamJ1a0UwUlFkRUt4Sm1lMkFyL2NTS2d2enVPc2FMK01WTVhhNHU1?=
 =?utf-8?B?QUtORm1QaDViS2l4SERyaVpqSnBOc0pRczM0Mm12QnVmc3dEZUhPUG9SQXcr?=
 =?utf-8?B?VDl3b1A0TldnZkJVSDI3Y0NSR1hGcTZGN0ZJL3NSd2VOb1lXdUdQQk55Nmxp?=
 =?utf-8?B?SlczcW9TaE5vOGx4YjhTN1pyeEM1WEdSbWp6dzRHY2NtSHgwRm5VWGRxYzJU?=
 =?utf-8?B?djNTWnBZSEw4QmNNUVZheWliZlBKQStpQnF2R1dMUzJ1cjd6aDQzMHd4N1cx?=
 =?utf-8?B?QVlyVGo1aHhGSnFxdlE1TElrRVo3OFlqTzJzYVkvdnJ2cFIwRkpXTGo0ZEt0?=
 =?utf-8?B?SEM2VWFCb1E3NkFvMlQvbkZmdlp4eEVjYkF2L002d2ZTbHY2ZklReGFoREE2?=
 =?utf-8?B?WklUQjVhK0VjbENrckFRYk5LdThLa1ptcGtjeXFWcEIwYTlaYjVTU0dhMHpD?=
 =?utf-8?B?VE1FRy9mRTFpN2NiNlFpMzRTaFZqODdSNkxnMmYzZksxWGF5YXgyZ2R3emkx?=
 =?utf-8?B?cjdDRHFkRGxxeWhKRklKdEpiMWxwSGttTlUyZVh6V29LQk1mRnhMNFVuUjlN?=
 =?utf-8?B?eFppQXI5Yy81eG1aT0FMQXV3djZNN2V4WXNSdTdQMndKYnJIQ3h2SVpsZVBD?=
 =?utf-8?B?ZFh1bDM2eHlaRGlZYzFWWHpNOTAvcDJjS1hTcWJTWGQ3ZHNISDgwZHgrRHor?=
 =?utf-8?B?dWIySXFFcENpOC9oUXZPMHdnSkFqVUd2SDdwYkRTcEJYcGpoS1psTnFuTEZU?=
 =?utf-8?B?WjVrb3hxY3F0Q0JieFJ2ajl4ZTJrWDJvVlp6Q2J5TFJ4RUVvOVRzZm9wMTVT?=
 =?utf-8?B?WmYrazlTVVpPaTRNTkV3cGFLZm50bERjK3Nob3hUY1l1RmxXTkRTUVJKTUQ4?=
 =?utf-8?B?Zm1ZMnMzR1owNnNtekRiaFhhWDlyTDRhcWV2TFQyM2FnVXpIYW1sbjYxbWhq?=
 =?utf-8?B?eWhNYmZpNkJjQmhZMTdHbFdDenZJMFF3UlJ4YTI2TytxUWFMZUZsY29mSkxQ?=
 =?utf-8?B?Ymc5QlNzeUhPM05DRHpqYndyaWtEZWpna1p3SDc4cC82NUJSMTRWNFlHNytx?=
 =?utf-8?B?SlR0YzdkSTgyT2NWVUpzeG1XeVhvK2dMYk43NFI1N2N2SW0yVUMvYS82VXhW?=
 =?utf-8?B?SmhXU1VFdnl3V0lISERuYlhKc2pxdERsSjgxWmFhVXlNdjVxU0UybjlSV1d1?=
 =?utf-8?B?YjViZHYvZVR5aGJIK3UwQ2pDK2NSejBINlQ1NXIxdUg5V3pLdG96Q2lKN3p4?=
 =?utf-8?B?ZUtOTDFBUTU4aWhzd0M3VHlHRldCTnRHbmhobHl6bjNnTGpIeUttN0NYMURI?=
 =?utf-8?B?emxlVEQ1aFZtbDBHVFRnelBDNE5QVWVFQW9SVVJBV2ZOb2hORCs4MFUzWGFN?=
 =?utf-8?B?ZHludUFJOG1MaTR3bERxMktZS2drQis3RmM1bUREU2paQ3ZZb1FoN3AvKzcx?=
 =?utf-8?B?cVpmWXp2MmlwUVE1L1hqS2lnSzNGZWhic0VxMmhRZElVV2pmMk13TlBJU0hP?=
 =?utf-8?Q?gkrr6Xs1rreays3Sy6mdxe86j?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26ce0c7c-3715-4e97-5dd6-08da8f4f1354
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 14:58:21.9258
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n4ywl8MsPNkrvedwLIHB2G+67UsY4NrX+Z8W0Pmo7AfnkFuSoEvyRJDGb3BUBd6PqyJ56Y9ZKUluovgs9h3IuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4302
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FAT5TZIGCS4FG4RJA2SAXFIBFTSSWJCG
X-Message-ID-Hash: FAT5TZIGCS4FG4RJA2SAXFIBFTSSWJCG
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:25:29 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] drm/sched: Add callback and enable signaling on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FAT5TZIGCS4FG4RJA2SAXFIBFTSSWJCG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzUvMjAyMiA3OjE2IFBNLCBZYWRhdiwgQXJ2aW5kIHdyb3RlOg0KPg0KPiBPbiA5LzUv
MjAyMiA0OjU1IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4NCj4+DQo+PiBBbSAwNS4w
OS4yMiB1bSAxMjo1NiBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+PiBIZXJlJ3Mgb24gZGVidWcg
YWRkaW5nIGFuIGVuYWJsZV9zaWduYWxpbmcgY2FsbGJhY2sgZm9yIGZpbmlzaGVkDQo+Pj4gZmVu
Y2VzIGFuZCBlbmFibGluZyBzb2Z0d2FyZSBzaWduYWxpbmcgZm9yIGZpbmlzaGVkIGZlbmNlLg0K
Pj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogQXJ2aW5kIFlhZGF2IDxBcnZpbmQuWWFkYXZAYW1kLmNv
bT4NCj4+PiAtLS0NCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNl
LmMgfCAxMiArKysrKysrKysrKysNCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX21haW4uY8KgIHzCoCA0ICsrKy0NCj4+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgDQo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX2ZlbmNlLmMNCj4+PiBpbmRleCA3ZmQ4Njk1MjBlZjIuLmViZDI2Y2RiNzlh
MCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNl
LmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMNCj4+
PiBAQCAtMTIyLDE2ICsxMjIsMjggQEAgc3RhdGljIHZvaWQgDQo+Pj4gZHJtX3NjaGVkX2ZlbmNl
X3JlbGVhc2VfZmluaXNoZWQoc3RydWN0IGRtYV9mZW5jZSAqZikNCj4+PiDCoCDCoMKgwqDCoMKg
IGRtYV9mZW5jZV9wdXQoJmZlbmNlLT5zY2hlZHVsZWQpOw0KPj4+IMKgIH0NCj4+PiArI2lmZGVm
IENPTkZJR19ERUJVR19GUw0KPj4+ICtzdGF0aWMgYm9vbCBkcm1fc2NoZWRfZW5hYmxlX3NpZ25h
bGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPj4+ICt7DQo+Pj4gK8KgwqDCoCByZXR1cm4gdHJ1
ZTsNCj4+PiArfQ0KPj4+ICsjZW5kaWYNCj4+PiDCoCDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IGRt
YV9mZW5jZV9vcHMgZHJtX3NjaGVkX2ZlbmNlX29wc19zY2hlZHVsZWQgPSB7DQo+Pj4gwqDCoMKg
wqDCoCAuZ2V0X2RyaXZlcl9uYW1lID0gZHJtX3NjaGVkX2ZlbmNlX2dldF9kcml2ZXJfbmFtZSwN
Cj4+PiDCoMKgwqDCoMKgIC5nZXRfdGltZWxpbmVfbmFtZSA9IGRybV9zY2hlZF9mZW5jZV9nZXRf
dGltZWxpbmVfbmFtZSwNCj4+PiArI2lmZGVmIENPTkZJR19ERUJVR19GUw0KPj4+ICvCoMKgwqAg
LmVuYWJsZV9zaWduYWxpbmcgPSBkcm1fc2NoZWRfZW5hYmxlX3NpZ25hbGluZywNCj4+PiArI2Vu
ZGlmDQo+Pj4gwqDCoMKgwqDCoCAucmVsZWFzZSA9IGRybV9zY2hlZF9mZW5jZV9yZWxlYXNlX3Nj
aGVkdWxlZCwNCj4+PiDCoCB9Ow0KPj4+IMKgIMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyBkcm1fc2NoZWRfZmVuY2Vfb3BzX2ZpbmlzaGVkID0gew0KPj4+IMKgwqDCoMKgwqAg
LmdldF9kcml2ZXJfbmFtZSA9IGRybV9zY2hlZF9mZW5jZV9nZXRfZHJpdmVyX25hbWUsDQo+Pj4g
wqDCoMKgwqDCoCAuZ2V0X3RpbWVsaW5lX25hbWUgPSBkcm1fc2NoZWRfZmVuY2VfZ2V0X3RpbWVs
aW5lX25hbWUsDQo+Pj4gKyNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4+PiArwqDCoMKgIC5lbmFi
bGVfc2lnbmFsaW5nID0gZHJtX3NjaGVkX2VuYWJsZV9zaWduYWxpbmcsDQo+Pj4gKyNlbmRpZg0K
Pj4NCj4+IEFkZGluZyB0aGUgY2FsbGJhY2sgc2hvdWxkIG5vdCBiZSBuZWNlc3NhcnkuDQo+IHN1
cmUsIEkgd2lsbCByZW1vdmUgdGhpcyBjaGFuZ2UuDQo+Pg0KPj4+IMKgwqDCoMKgwqAgLnJlbGVh
c2UgPSBkcm1fc2NoZWRfZmVuY2VfcmVsZWFzZV9maW5pc2hlZCwNCj4+PiDCoCB9Ow0KPj4+IMKg
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyANCj4+
PiBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+Pj4gaW5kZXggZTBh
YjE0ZTBmYjZiLi4xNDBlM2Q4NjQ2ZTIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX21haW4uYw0KPj4+IEBAIC05NjEsNyArOTYxLDkgQEAgc3RhdGljIGludCBkcm1f
c2NoZWRfbWFpbih2b2lkICpwYXJhbSkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
X2ZlbmNlLT5wYXJlbnQgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAvKiBEcm9wIGZvciBvcmlnaW5hbCBrcmVmX2luaXQgb2YgdGhlIGZlbmNl
ICovDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7
DQo+Pg0KPj4gVWZmLCBub3QgcmVsYXRlZCB0byB5b3VyIHBhdGNoIGJ1dCB0aGF0IGxvb2tzIHdy
b25nIHRvIG1lLiBUaGUgDQo+PiByZWZlcmVuY2UgY2FuIG9ubHkgYmUgZHJvcHBlZCBhZnRlciB0
aGUgY2FsbCB0byANCj4+IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKS4NCj4+DQo+IFNoYWxsIEkg
dGFrZSBjYXJlIHdpdGggdGhpcyBwYXRjaCBvciBJIHdpbGwgc3VibWl0IHNlcGFyYXRlIG9uZSA/
DQoNClRoaXMgY2hhbmdlcyB3YXMgcmVjZW50bHkgYWRkZWQgYnnCoCBBbmRyZXkgR3JvZHpvdnNr
eSAoY29tbWl0IDogDQo0NWVjYWVhNzMpIHRvIGZpeCB0aGUgbmVnYXRpdmUgcmVmY291bnQuDQoN
Cj4+PiAtDQo+Pj4gKyNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4+PiArIGRtYV9mZW5jZV9lbmFi
bGVfc3dfc2lnbmFsaW5nKCZzX2ZlbmNlLT5maW5pc2hlZCk7DQo+Pj4gKyNlbmRpZg0KPj4NCj4+
IFRoaXMgc2hvdWxkIGFsd2F5cyBiZSBjYWxsZWQsIGluZGVwZW5kZW50IG9mIHRoZSBjb25maWcg
b3B0aW9ucyBzZXQuDQo+Pg0KPj4gQ2hyaXN0aWFuLg0KPg0KPiBzdXJlLCBJIHdpbGwgcmVtb3Zl
IHRoZSBDb25maWcgY2hlY2suDQo+DQo+IH5hcnZpbmQNCj4NCj4+DQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgciA9IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZmVuY2UsICZzY2hlZF9q
b2ItPmNiLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGRybV9zY2hlZF9qb2JfZG9uZV9jYik7DQo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaWYgKHIgPT0gLUVOT0VOVCkNCj4+DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
