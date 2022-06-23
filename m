Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AE15578BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 13:32:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A795E3F43F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 11:32:33 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2043.outbound.protection.outlook.com [40.107.93.43])
	by lists.linaro.org (Postfix) with ESMTPS id 9E30D3EF6E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 11:32:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvZ7NqPl4CQL5uDw7Wm6zGAoS5jjX0oGm9IFtQXFqpEQsWsf9hkHs1+sZX/6IFpLcmeBKZHgrWSYv31v8/5+5YyH66ABHNRq4+NtnZfd8w2pkKrsJB5ZtvqZ9D8c4DL46x7R+TVIGRdW9tbAcXLS4G8vj6FJFxey8+FqCobgK64qNk3S/hR3AImllY5w5IT9bOgbcVGHNis+xyOJyWm9zJLMkUo5VVGGgYhSq3xxGKd3ZTlihEcPlU1OyqsKvfokSnUH2CJZP31X34JA4uyV1D/tD/bGLdcXW70wmhIQ+uQZ83+A2GgKg6cQEjZfThimzf72ZHlPtrAJJ94Hu+P3HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=APiycPEHMnoeunBZCneioqv7F/BnjfeSAa9JqTJtpPM=;
 b=Jv5OfPTcsCjNRqqpwEbZzCtl7YNCVWtD7b4QeNZwCgxqqoi8gHj2nTVS7TIT04W2IwM3mzjux0/4FDGXe5qEICMoAYNqMR5MWlTOmTdVonfhrNMu8Jf343e8dgBVwCsaaeUU8M7RH4GHUXJ9Q94gqQXhVpyFsBZd9vGlCotbpSjtV726FCIO4bLDFfPPBYDKB+8QFQ3AL4mgUwzE8uUDvUUZuTMnmEk9DGr+J2NGb2ihekTVBQT8+Op7nMZBKgnxMPcS3IRV9F6BzgRTc1Q+GyqyPjYcMAvBIseho0MaKddzddv7QTGJ4Cy4lsBTEdx3ERC1tbr0THSbJCuQFWi0Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APiycPEHMnoeunBZCneioqv7F/BnjfeSAa9JqTJtpPM=;
 b=bGaXO6OyJY8+DuquVNTEsDI59cbbUH0AWLHk4BV99ikY9KzzImo+CscGj3g1oe20B1m1Q55fOyV0GuNCYP/aiMvQU0KdTSCbYrooSMVs+aB86OuW33SUGFd3IRhqZFKLCcwA1Zr9id5n+NgVXKeYIqqCIq++LbhJpNQliEPNb1o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CY4PR1201MB2535.namprd12.prod.outlook.com (2603:10b6:903:db::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.18; Thu, 23 Jun
 2022 11:32:26 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 11:32:25 +0000
Message-ID: <578953dd-6298-2bfe-a8fb-52004b84fd17@amd.com>
Date: Thu, 23 Jun 2022 13:32:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Daniel Stone <daniel@fooishbar.org>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
 <20220623101326.18beeab3@eldfell>
 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
 <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
 <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
 <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
 <05814ddb-4f3e-99d8-025a-c31db7b2c46b@amd.com>
 <708e27755317a7650ca08ba2e4c14691ac0d6ba2.camel@pengutronix.de>
 <6287f5f8-d9af-e03d-a2c8-ea8ddcbdc0d8@amd.com>
 <CAPj87rOykZv7bjNhHPT4StrsPz8Y_DWqab4Ryq=Qqh77LS2e=Q@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAPj87rOykZv7bjNhHPT4StrsPz8Y_DWqab4Ryq=Qqh77LS2e=Q@mail.gmail.com>
X-ClientProxiedBy: AM5PR0202CA0013.eurprd02.prod.outlook.com
 (2603:10a6:203:69::23) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: faba3128-d548-44c9-55d0-08da550c0bb9
X-MS-TrafficTypeDiagnostic: CY4PR1201MB2535:EE_
X-Microsoft-Antispam-PRVS: 
	<CY4PR1201MB2535CD7AB6D75220FE60AC9A83B59@CY4PR1201MB2535.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IiBP5DGlgpwBLNuPdGazKoGwI7TEyP7aEXEnneHj32eO++jYAUXFF88arc5ve5oP4zEEJWw+8Do0WiqHjcJ9rvsuzw83onrLw9Msv69m6FliI3cVtemDsizs9HdHDARpehsrCacAb00LoUrW7tmDjEmRmuyjSACr/oU8RD7rvzse8KUqx5WfR/LUT+hXT613qW/qslf5GjASnDL98+QaRdKSLMYj5wl7+WlPN9uSgO8LAWpKMvI546S1WBb8Thq3gv3URDGRxD9EsxNSMF23rfTTBBW2Rbmnypi2lOyWj94SbB+7WCwiwZJeBnaQnBUBhzuGKWW5Snyw1DT2zF/4TsLaP5vHBZRsN/OmyM3/+YGjSqoYdfiycRWjx8U/YuWOswN8msdCugZhNK6GKo1Twi0MBKBi+ZtEDiHtmnJ1V8ptPZ6Vb5hv8H0r7ag3EzHAVpO+RJqp3ivbkzq9/oUwsz1R778/rZbZ4837hSSg+Vu2mcD1ZmVAruUIyMauXR8ArlkFS80GyMzsgZW2TxHEb/YW8Pj3KOXCHV/ZgYTyRJPdJ6ZawY+1hHT2T5+GAqIsuzruKLG8yD0aSpx4aub1xEzqsl6d9r1JIw6PBP8zgyPb3/gkCPrQAi8lM+x6YgGGifeTMbYM00r59PjBmH87LyJPF5Pm7XpCplpTXJ5UZIeTAw4OoaS3Lql9mdux9xPn6aaYVtgkEKj6Rkqo05CTPMwPVvrurPTH+U4Z5avcjU43F7geT+2CZslGmEYBEQ0b5QgGPxzcXt7ZbUJ74EC6U78eBqgWZ+5rHHx5S/6ouNw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(366004)(136003)(39860400002)(83380400001)(41300700001)(186003)(2616005)(6486002)(6666004)(31696002)(66574015)(38100700002)(8676002)(26005)(54906003)(66946007)(66476007)(6512007)(31686004)(36756003)(6506007)(2906002)(8936002)(316002)(66556008)(6916009)(478600001)(86362001)(5660300002)(4326008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S3htZ1p1cWhnWHpWWjN5K3JJY1FZV2NOL2xhQ3JIWFdSUFAyMnRjN21NaVhT?=
 =?utf-8?B?WmxBdk1uT3dOQjhCdzhLU2MwTElVT3c5YWFtaXhDNFN0TW43WmxVV1RvSjRY?=
 =?utf-8?B?alludWpWdUc0cHZiRTFTZ1hqWE1LdDEra04vMVZMaU1vUWwxbmtFR2dxR1M2?=
 =?utf-8?B?aWtyNDNzVm1GSXRiUjFOSTl6WTN5L3RCZmREUlNUeis5bXQrdVNEckVZWUlj?=
 =?utf-8?B?Ylk1bHUxY3ltUytjQ0c3c1owajVoUUlUdndXcUdLb0ZqVjFwUm84Wm5SVEFu?=
 =?utf-8?B?QXZBT1NGdmxvZjBXR001bVdiQVlYc0E4aVp4VWllbWxFMkpiWjBvSHI5M2lY?=
 =?utf-8?B?eWxwcmpqRXc1eGpTR3hOcU14NytjbEs4Qmo2Qkp2YjhkTnAxQjJidVg5Y00y?=
 =?utf-8?B?Y01KeGFPRmFteXEyNFhWMGZCbWxoNytNUkpEV0NZOVdEYVVsNFQzWHJGRXRk?=
 =?utf-8?B?OXliUkdnZUVsR0E4b1kzUzRpaU9TbVcyUUs2Ukc3TFgrTEQvRGl3a0FXRHJo?=
 =?utf-8?B?WkJEaFFEN0VMWWxLRmJRT0pKZjhhUm1MSXdjV0I3RC94M3ZGZFZoRW15cVha?=
 =?utf-8?B?czN1UGFaNmhGbEhrUDk0ZVUyNEFLMVV0ZnZGYWwrZ0dzc2l0SmFOM25OLzAr?=
 =?utf-8?B?Y2ZHbXpCS2JydnZwRFBCclQxMTVOdmQydUZaZnZNcTRibFJVeVdKcUp2OWI3?=
 =?utf-8?B?YXM0RVJTTzA2TzFVR09JamJTZXV6aS8wUThGN2YwY2lDbnJWd1N5QXUvcE9Q?=
 =?utf-8?B?ZDZYUCtEckhER2dNMW1QV2FBTU5oVVdyZnhPK05IZ2wrOGZMQndZRGQxa2Ja?=
 =?utf-8?B?dFhmOGs1aGNKK05HUmxRQXhZbjN4eDBpVkphS1pvdXpwUmxyMk5md25ZYmh3?=
 =?utf-8?B?OHlvMjVJRHFYRmN2ZFhYVTZPSHVlcUJKbnJXMnlXc0ZkL0tjQjhReU5HZldH?=
 =?utf-8?B?eFBOREc0SnVtOU5reFB1Y3VSVkhqQkZGQVkxVmM0VUJtdTM1YzFzSUcvU0ln?=
 =?utf-8?B?MmRMUlNxcjNGMFVUd3ZldktwQS9OeGNXb2FteTZHYU1CTWliV0F0c3FBemR3?=
 =?utf-8?B?YTBFdlFLdkFPUWQ4YW5EL01xQlVVQnlmTG9nZ281MmlpUE9aRkUrTW5DQVp6?=
 =?utf-8?B?YU9lRlA3R212SVU5T0ExTDQxZEVycUtQNSs4RmdFVHdlN3R4b0RQMkZmcHdD?=
 =?utf-8?B?d1lYbVdYZmNjQUtkRU94blcyc3FXbE8rVy9NT3cwQ2VDdTk4dmFiTUZJdThE?=
 =?utf-8?B?VUtON0syYVBJYlNqZ0ZQQXN0SkNWc21FK1I5amdDY3kwN1kwUmdzajQ1Mjdz?=
 =?utf-8?B?ajBBN3pSb2ZzV2lTS05xQ0R0WGpHbjZlY1poZGpaYW5tVmRubGdmbi9YWGd6?=
 =?utf-8?B?Y0lFbVgvV0RGZzVmRk5lR2p6Nm5yeEI4UkFycThqOGFUN3owQW5Rd1hyN0xQ?=
 =?utf-8?B?UWNyK0VtU3RpQUg2Q1JIS0RvdW90K2l5Ly80TTBCNnB5WHJnVktmSTdXMUlW?=
 =?utf-8?B?cUtHc09XSFFzcVVFeXhLOTNWOWxOZHJoQWNYdWRaNEYzcE9YdFVvL1pEMkVi?=
 =?utf-8?B?TVl6YVdLUnZuUHJBTHljSFhUaGpnTUJrdHhLYW10SDFaMm92ZUhXekc3SG9t?=
 =?utf-8?B?TTUxeW9NbWE0MUpMU0pzcysyaUR2enBXY3FXczdZNGF4TmxxazE0dTBBTHZN?=
 =?utf-8?B?TmgrMmhyYzMxcG91cFUreUg2NU85eWRpSWF2bXJOVU0vYTBydktiS3g2dUd3?=
 =?utf-8?B?bDZoSEdlZGE0SXI0NC9rbGVzTXVmQ01kWmxEL2s5RWhyTzFsSloySndjanFD?=
 =?utf-8?B?NzZlVkhSUC9OL1dRWDY4dGc0OW82OXgyVERHeml0empoRjl6OXZtNDd1dTNO?=
 =?utf-8?B?ZkFwU3hzTVJOT0pNeDRrNW5sTWFtVjN5ZHNXUjd6UG9RY3ZqSGxGR3JOWnpk?=
 =?utf-8?B?L0N0NUptQjJ5N0h4ZXZ3Z1NMNXRqWnRKYkhHUitwU1ZNSGVwWlBVSDRrbE4z?=
 =?utf-8?B?UG9mWlFpcFR4YkdFOWk2ZmpZWVp0aEN1QkVuZWk5akNsbnd2QXBhak5MUUFn?=
 =?utf-8?B?akZ5aFZoL3RWNkJmaEdhZFdWQUF4UTFYeWplWUladnJsdE5VMHVJZDI2NFEw?=
 =?utf-8?Q?bGjqfyg9pMkt7/wPW+wKlVO3b?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faba3128-d548-44c9-55d0-08da550c0bb9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 11:32:25.2104
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rQA7DjBNq5bxz74eEw6j+qDebHix8nENwTsgIg9jnxWLBFLjvaOXwpA+ghhg97BT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2535
Message-ID-Hash: 2ZRJ6F7F6GTNNA3HQLOF5PGUQ6AFFT6Q
X-Message-ID-Hash: 2ZRJ6F7F6GTNNA3HQLOF5PGUQ6AFFT6Q
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pekka Paalanen <ppaalanen@gmail.com>, "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ZRJ6F7F6GTNNA3HQLOF5PGUQ6AFFT6Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDYuMjIgdW0gMTM6Mjcgc2NocmllYiBEYW5pZWwgU3RvbmU6DQo+IEhpIENocmlzdGlh
biwNCj4NCj4gT24gVGh1LCAyMyBKdW4gMjAyMiBhdCAxMjoxMSwgQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4+PiBJbiBmYWN0IERNQS1idWYgc2hh
cmluZyB3b3JrcyBmaW5lIG9uIG1vc3Qgb2YgdGhvc2UgU29DcyBiZWNhdXNlDQo+Pj4gZXZlcnlv
bmUganVzdCBhc3N1bWVzIHRoYXQgYWxsIHRoZSBhY2NlbGVyYXRvcnMgZG9uJ3Qgc25vb3AsIHNv
IHRoZQ0KPj4+IG1lbW9yeSBzaGFyZWQgdmlhIERNQS1idWYgaXMgbW9zdGx5IENQVSB1bmNhY2hl
ZC4gSXQgb25seSBmYWxscyBhcGFydA0KPj4+IGZvciB1c2VzIGxpa2UgdGhlIFVWQyBjYW1lcmFz
LCB3aGVyZSB0aGUgc2hhcmVkIGJ1ZmZlciBlbmRzIHVwIGJlaW5nDQo+Pj4gQ1BVIGNhY2hlZC4N
Cj4+IFdlbGwgdGhlbiB0aGUgZXhpc3RpbmcgRE1BLWJ1ZiBmcmFtZXdvcmsgaXMgbm90IHdoYXQg
eW91IHdhbnQgdG8gdXNlIGZvcg0KPj4gdGhpcy4NCj4+DQo+Pj4gTm9uLWNvaGVyZW50IHdpdGhv
dXQgZXhwbGljaXQgZG9tYWluIHRyYW5zZmVyIHBvaW50cyBpcyBqdXN0IG5vdCBnb2luZw0KPj4+
IHRvIHdvcmsuIFNvIHdoeSBjYW4ndCB3ZSBzb2x2ZSB0aGUgaXNzdWUgZm9yIERNQS1idWYgaW4g
dGhlIHNhbWUgd2F5IGFzDQo+Pj4gdGhlIERNQSBBUEkgYWxyZWFkeSBzb2x2ZWQgaXQgeWVhcnMg
YWdvOiBieSBhZGRpbmcgdGhlIGVxdWl2YWxlbnQgb2YNCj4+PiB0aGUgZG1hX3N5bmMgY2FsbHMg
dGhhdCBkbyBjYWNoZSBtYWludGVuYW5jZSB3aGVuIG5lY2Vzc2FyeT8gT24geDg2IChvcg0KPj4+
IGFueSBzeXN0ZW0gd2hlcmUgdGhpbmdzIGFyZSBtb3N0bHkgY29oZXJlbnQpIHlvdSBjb3VsZCBz
dGlsbCBuby1vcCB0aGVtDQo+Pj4gZm9yIHRoZSBjb21tb24gY2FzZSBhbmQgb25seSB0cmlnZ2Vy
IGNhY2hlIGNsZWFuaW5nIGlmIHRoZSBpbXBvcnRlcg0KPj4+IGV4cGxpY2l0bHkgc2F5cyB0aGF0
IGlzIGdvaW5nIHRvIGRvIGEgbm9uLXNub29waW5nIGFjY2Vzcy4NCj4+IEJlY2F1c2UgRE1BLWJ1
ZiBpcyBhIGZyYW1ld29yayBmb3IgYnVmZmVyIHNoYXJpbmcgYmV0d2VlbiBjYWNoZSBjb2hlcmVu
dA0KPj4gZGV2aWNlcyB3aGljaCBkb24ndCBzaWduYWwgdHJhbnNpdGlvbnMuDQo+Pg0KPj4gV2Ug
aW50ZW50aW9uYWxseSBkaWRuJ3QgaW1wbGVtZW50ZWQgYW55IG9mIHRoZSBkbWFfc3luY18qIGZ1
bmN0aW9ucw0KPj4gYmVjYXVzZSB0aGF0IHdvdWxkIGJyZWFrIHRoZSBpbnRlbmRlZCB1c2UgY2Fz
ZS4NCj4+DQo+PiBZb3UgY2FuIG9mIGNvdXJzZSB1c2UgRE1BLWJ1ZiBpbiBhbiBpbmNvaGVyZW50
IGVudmlyb25tZW50LCBidXQgdGhlbiB5b3UNCj4+IGNhbid0IGV4cGVjdCB0aGF0IHRoaXMgd29y
a3MgYWxsIHRoZSB0aW1lLg0KPj4NCj4+IFRoaXMgaXMgZG9jdW1lbnRlZCBiZWhhdmlvciBhbmQg
c28gZmFyIHdlIGhhdmUgYmx1bnRseSByZWplY3RlZCBhbnkgb2YNCj4+IHRoZSBjb21wbGFpbnMg
dGhhdCBpdCBkb2Vzbid0IHdvcmsgb24gbW9zdCBBUk0gU29DcyBhbmQgSSBkb24ndCByZWFsbHkN
Cj4+IHNlZSBhIHdheSB0byBkbyB0aGlzIGRpZmZlcmVudGx5Lg0KPiBGb3Igc29tZSBzdHJhbmdl
IHJlYXNvbiwgJ2xldCdzIGRvIGJ1ZmZlciBzaGFyaW5nIGJ1dCBtYWtlIHN1cmUgaXQNCj4gZG9l
c24ndCB3b3JrIG9uIEFybScgd2Fzbid0IGV4YWN0bHkgdGhlIGludGVudGlvbiBvZiB0aGUgZ3Jv
dXBzIHdobw0KPiBjYW1lIHRvZ2V0aGVyIHVuZGVyIHRoZSBMaW5hcm8gdW1icmVsbGEgdG8gY3Jl
YXRlIGRtYWJ1Zi4NCj4NCj4gSWYgaXQncyByZWFsbHkgeW91ciBiZWxpZWYgdGhhdCBkbWFidWYg
cmVxdWlyZXMgdW5pdmVyc2FsIHNub29waW5nLCBJDQo+IHJlY29tbWVuZCB5b3Ugc2VuZCB0aGUg
cGF0Y2ggdG8gdXBkYXRlIHRoZSBkb2N1bWVudGF0aW9uLCBhcyB3ZWxsIGFzDQo+IHRvIHJlbW92
ZSBEUklWRVJfUFJJTUUgZnJvbSwgcmVhbGlzdGljYWxseSwgbW9zdCBub24tUENJRSBkcml2ZXJz
Lg0KDQpXZWxsLCB0byBiZSBob25lc3QgSSB0aGluayB0aGF0IHdvdWxkIGluZGVlZCBiZSBuZWNl
c3NhcnkuDQoNCldoYXQgd2UgaGF2ZSBjcmVhdGVkIGFyZSBlc3NlbnRpYWxseSB0d28gZGlmZmVy
ZW50IHdvcmxkcywgb25lIGZvciBQQ0kgDQpkZXZpY2VzIGFuZCBvbmUgZm9yIHRoZSByZXN0Lg0K
DQpUaGlzIHdhcyBpbmRlZWQgbm90IHRoZSBpbnRlbnRpb24sIGJ1dCBpdCdzIGEgZmFjdCB0aGF0
IGJhc2ljYWxseSBhbGwgDQpETUEtYnVmIGJhc2VkIFBDSSBkcml2ZXJzIGFzc3VtZSBjb2hlcmVu
dCBhY2Nlc3MuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQ2hlZXJzLA0KPiBEYW5p
ZWwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
