Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6F7509AC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 10:34:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E7BE47FAA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 08:34:35 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2060.outbound.protection.outlook.com [40.107.236.60])
	by lists.linaro.org (Postfix) with ESMTPS id 2F6B43ECED
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Apr 2022 08:34:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SkTg8SkUNFDm2sv/msmPxbETD9320NOALaQJG3tSOdTWvt5EuXD0F9PCdxJVaTc1NtTxzo2ctJm2SYM52hjYd9oseTWoXnO18YYpxTEHYIxc/xJeNbyTx3rzayQMucVQryzEuq7NRs8Ym+J6DbTfU0dv3gXbB6C1AMPOEwOdOIKzYa45nOT/xllDVP+dXmcQPA+D4rcQiwrWs44dibaSgVaj47WSYVt1RDW+q6LAxqfad4oGhwQMXWjv4DrsyhQVCSxQqXj457KnlDHRD29nSxdLSv2LLJhUsIxvPByjq4IxMgRd4ctph/ez4xcNuL+1SzelrIL3a7HXRPNXwT7jgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45LSie8imRkKKWFN/jyK6rB29JrCJZkt6R/NbzmUMr8=;
 b=h87i3b3lZCM7rkQE8AyfdUiVixVgbr/BIkA1SYmAsF6XM/iKw1r3R3s20dh9r4zE13v4PY/aCFblr98RHXOOs36p1UEMVBnCJYUaTpluOywYcXWGpWyWNkr2UKh8YeNcaEfVrqw+Z6oDTZDft0mYpIqgjJ//uUVlXyBWC2V+v1IU1l9qchMZwjMhubzm79Yc0k9yvQC2PonjIgJAibsEqOf1WSRlNU47fo355417zJuDLTWlPKO3YS3M4oXz0z+2OITo4r9z+m5fdiS5d1mSq+qjInjyAFswt+rOXG5EIZHlmrzD/Lw9mu766JYBEsWInU54WRgBhgzNalodHcQjdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=45LSie8imRkKKWFN/jyK6rB29JrCJZkt6R/NbzmUMr8=;
 b=ZpFKIfQCc4wmZApb03gHGaoTTnt8Q+mD001bjcxJc8pLqNoDmvSQ/YKNvP7qhr034XzEwf1X/79LAQoqFWJXq42bd1SJLO56K5byGuFXxEex34UuYrTlP7DHpRvFL9m61gxk+oLd5cYnBkShkY/XDSIQmM2AbRNcbawUypm0xHE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB6135.namprd12.prod.outlook.com (2603:10b6:8:ac::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Thu, 21 Apr 2022 08:34:26 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5164.026; Thu, 21 Apr 2022
 08:34:26 +0000
Message-ID: <b34fa2a5-58b4-6270-2d19-2ad591e3e250@amd.com>
Date: Thu, 21 Apr 2022 10:34:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Cai Huoqing <cai.huoqing@linux.dev>
References: <20220419135908.39606-1-cai.huoqing@linux.dev>
 <20220419135908.39606-3-cai.huoqing@linux.dev>
 <2aeee5a2-b5a5-348e-ccf7-04f49e1119da@suse.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <2aeee5a2-b5a5-348e-ccf7-04f49e1119da@suse.de>
X-ClientProxiedBy: AM5PR04CA0031.eurprd04.prod.outlook.com
 (2603:10a6:206:1::44) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 02ddc887-ce5e-4103-5700-08da2371beb4
X-MS-TrafficTypeDiagnostic: DM4PR12MB6135:EE_
X-Microsoft-Antispam-PRVS: 
	<DM4PR12MB6135F7D135DA0C2E3F46ED7C83F49@DM4PR12MB6135.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	W3YH6kb3yfb0+Z7jg3I+s3enVz9pg3XFGoeZRDGz3KP5ll9rdlR1T/fBo8DuzBMTfmZ24qnBqE0/sMexhgLbB6HbMhG10uMFGCTcxR9/EI/g7QuLiqBXdtgK4xQP/StapfTDcCYyiAahmkzq8V+Xu1o3Q0zkKabRq/AS5u0PGwMQpvaaUXDxXjXK/XGqFTpHxqxMWTHTzHMydmlic4FBbYVqGrIiivfavocfbTg8Ae0aU91PYCKVt280qEGZPWqtg2r64mw/e+WoGe/pasvusCWdhb1fFPZ06SoxoRTZhXHSJIXPGeODdCLHPLXUYE178PqOVpZ4/4OkYNiOAgdu6C6eJqZG0UYVRId8VxUOnOcUoxCM+ZihyegCCp3kiRrBkraK7HWID0ZosB5yEIGgNGE1Xyk3VWhm3TMiP2Sp6MkUZjcLa3t6zdnC3l7JSgCHC/bD6FlQq9mVrqAmsUHm03llKsKp8qC5QA9Lim8Jsd8G/ZJtuuUJDxkE82pgtqiXwnHw1D7E/X78zwxKWFcDps9PyG8sjAl41UpwxTnxDPrW+eo2y5f00aJ0L/U7He+FZPoOthYt92fiv+JsN47Qkw7D8zjuadbvQmOay4YFcULkeZwai7C63Pm4D0bn5izIApEC3Al5mP2fgAw+K14kUGNowr6ANHG+NTnn0KVGQJ6j/auUKYqtbLZ6qlj/iH8m0QsDiZF/Du8c2ELhsSutUtT/xKZAhVtgfXmfYxaqnXE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6512007)(66556008)(66476007)(2616005)(54906003)(66946007)(36756003)(8676002)(31686004)(110136005)(4326008)(186003)(316002)(6506007)(86362001)(6486002)(31696002)(38100700002)(83380400001)(8936002)(5660300002)(6666004)(2906002)(508600001)(7416002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YXliWWV2WFNNaFVKVUdWUStTWjFLOFFIRnRYTG96MS9UVTQwc2xNRGZBa3Nh?=
 =?utf-8?B?N3ppaDhFRDQ0WGVseGhaVmNPa3k4R0VGYlUraFJyOG5Xdk5qajgrcVhnR3JF?=
 =?utf-8?B?VTd3VkxycUh1TXY5R3pTWFRUcWFIZFJMKzcxNDhVSzV2VVhjYjRZdVc5OHJh?=
 =?utf-8?B?Rmw4eVhjMk1XYzVkWXpDT3JFYllvR1J3d09HNlRaUEkyZWdVQnp1SWgzN2c4?=
 =?utf-8?B?MTJITXhCQkczc3BoclJ5QzZWeTl3TW51RXJNTVZNQTB3K1ZlOFl2Wi9aMWda?=
 =?utf-8?B?ZGlNbklPekZwOG5yajlrY1BwRkFBYUxvY2Q1QmhmQ1VLRlBFb2E0L3ovSHlk?=
 =?utf-8?B?TVdPZERMbmxYRC9LTVp2RXd0K0UvOW9GeVU0eEZ4Wk40SXdEM2JUOU52QzM4?=
 =?utf-8?B?andnQnlQOUNhWXQxc1pVRXV0NnRPbUx5Q1NQQ2dabzZqUUZsVlRXUkppa1dy?=
 =?utf-8?B?dTFqdGt1cHc5OE1lNDQ0OEI4Y01mbjR1YmllNEVGUlk1YVFpT1h2VjlZK0d4?=
 =?utf-8?B?MEVzMXpyQnhPZ0hwbXowSGVHaEwwWTFVb0VUVThyckpvQWNXRE1oaFhoRE01?=
 =?utf-8?B?USt1cXFYbjNZSUlWb2tOb1lUOGplalBMYVJHTEthSTJtODFzYmxCMjhIaFRo?=
 =?utf-8?B?MXFGMXRNalJRZk5maEgwWmRncStGbEg3K2l4Zi83UXlBNDJwdUNmaFhLRGdN?=
 =?utf-8?B?TThUQjI0eHBkM2FVeHNkZEUzZlJvYXc3WmthWjk2ZWQ0dDV2Y1picVBGSXJj?=
 =?utf-8?B?b2JydFpOZTFxSXVxeDZqTVBMNlpOZUoyTXRjMnpJdGYrU21EQTVNV2NoVXZJ?=
 =?utf-8?B?RmNCQ3F5WVo1MHlSbzhmSzNCdjFhR2dGYlVCN1pzc0tHemlEV2tOLzhJaHd4?=
 =?utf-8?B?SExoK2E5RFZnblZyTGE1QlM2UFJ3SEs4SDUvNllDazROUVBUcW43azRVTWgz?=
 =?utf-8?B?a005OTllMk9NUVRNcktkcmNyUzlsMitzQk9zdEFMY0hwdjc0TmZDcm5qdk1Z?=
 =?utf-8?B?TmNEYWJIeVBzOWhqaTdMai9tSGgrTXB1SGx1ay9aN05KczhicEp5TnN3OFVz?=
 =?utf-8?B?b0lsR1NwbUVRT3JxNWVwRTRyQUhKYjM1dXpnejVHSlQ0a2JwZ0lNR09jTjZS?=
 =?utf-8?B?R0FJNDBaTDh1WXhBemZSemNuajFXZklwZkhiakI5SXM4bzE4emptSjh6LzVJ?=
 =?utf-8?B?aTFBc0JRZTRVU1BGMSt1VlRPY043ZEgwcEpyN2ZnUkxzRkZJcWVOeGFCM3cw?=
 =?utf-8?B?cjRZdzJwLy96T3kvNGZZYkpNN09EU2M0K2lSNGpjdWtTNDZpQ1dFRGZOSEFL?=
 =?utf-8?B?UjNUMW1pMkRrdDl5cVBzQW5nVFVMNWxMQ2p4QXliNVZNS1RWTUd0V3Z1OEw2?=
 =?utf-8?B?TXJIWFc4bDM3L2hlMHFoWFlrNTVwTkJCRUJGMVV2NjJVNzJFV3JLY1E3U3Qy?=
 =?utf-8?B?LzJIUmRpUC9CMm91OFp5Y3RTUUJ0K3FGUDZ0cE5yZFVXc0ZOeTl1Nk1EbG0v?=
 =?utf-8?B?Y2NoQmFvenYyQUkwbVVldFhrLzFHOGJVRXJ5YlRzbU1YSzA0em41RnprQkxN?=
 =?utf-8?B?STJIamFZcGJyUzc1aG9Ia1ZyaXpGZndxTWlSazdjRzR6STFMUTVCTUd5RERG?=
 =?utf-8?B?OVZWVWhqTkNkTTVTV2c5SXh2NlRUbnVFeFVpUVVjSUh1VmhKUU9WZ05XVkdW?=
 =?utf-8?B?ZWZQb21WblFpWGJvRW5QVVFiZlpIY0V3TThlNno4VGpKTHBhZFpTenRiWGtK?=
 =?utf-8?B?M3VPcUl6OW1tb2ptM3NYUEtnTktyTVdIbG9SN2Rpc3d4S3pScTMwT2t5WWU2?=
 =?utf-8?B?Ym5pQ3lJRWpld1EzdkRsL2ZBN1o3c0JXblhzc3hoSGFQWFdmOGdKbFNsVjFa?=
 =?utf-8?B?MUIzQStVOVJyamxrdW1EMmIyWjdFL3dhS1ZSSW9YSTRuUExjcStWMGpYTG51?=
 =?utf-8?B?ZVUvNElZc2RNMnE0SVhac1pLdDB4SExsZzl2MldnRWJLempEdXVqNHFKNExR?=
 =?utf-8?B?SkJJTFQwVGYvSVgyNDZxaS9zNzJpUUtQQXl6NFpDRWprTWI3YUVzaGl6SWNx?=
 =?utf-8?B?UnNHeFRNNjU0Vkl2NmhveDJRRS8ybEdrZWpIVVZEV3pMaUkrSkd1aFZjRjdI?=
 =?utf-8?B?dlJKVG5HWkJxazNIanZCbmNHbUJZTkJnTm5ZNWtMU2Y2akJLcElFK2VQMWN2?=
 =?utf-8?B?VHorbFdxUnlCTVNKNkkrZ1p4QlgxSFc5U2RWZnBPVEhhRGtDaWducitzY2Q2?=
 =?utf-8?B?WFp6K0oyczU0SnFJNFdhd3c1YkhDWjJpM2tFWVVheEI0ZUpGYXhGNjFld0ZF?=
 =?utf-8?B?RlJJNCtleEY1MStiaTF6eVUrdUFQV2YrN0lPUFRvNWVVSzdKNENwUTk2cjdL?=
 =?utf-8?Q?nQ2d9QdWOMIokpgo6Y9tAWRBa0pvo8XZP3gjiExF/7oIR?=
X-MS-Exchange-AntiSpam-MessageData-1: rQR51j23UW932Q==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ddc887-ce5e-4103-5700-08da2371beb4
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2022 08:34:26.5831
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2OQncNVYniHhQlvyMN1LOjCDptY/Z8Lnew8hhOkk0N5xDzx2WV7r8fuhQyf3RBuS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6135
Message-ID-Hash: 2QZPF4J5OS4HLXIYS5KMVA5X2JBNKQ7P
X-Message-ID-Hash: 2QZPF4J5OS4HLXIYS5KMVA5X2JBNKQ7P
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] drm/nvdla: Add driver support for NVDLA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2QZPF4J5OS4HLXIYS5KMVA5X2JBNKQ7P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjEuMDQuMjIgdW0gMTA6MzAgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4gKFJlc2Vu
ZGluZywgYXMgc29tZSBNTHMgZGlkbid0IGxpa2UgdGhlIHNpemUgb2YgdGhlIG9yaWduaW5hbCBt
YWlsLikNCj4NCj4gSGksDQo+DQo+IHRoYW5rcyBmb3IgeW91ciBzdWJtaXNzaW9uLiBTb21lIGdl
bmVyYWwgY29tbWVudHM6DQo+DQo+IMKgICogc29tZSBmdW5jdGlvbnMgYXJlIHByZWZpeGVkIHdp
dGggZGxhXywgb3RoZXJzIHVzZSBudmRsYV8uIEl0IHNlZW1zIA0KPiBhcmJpdHJhcnkgdG8gbWUu
IFBsZWFzZSB1c2UgbnZkbGFfIGNvbnNpc3RlbnRseSB0aHJvdWdob3V0IHRoZSBzb3VyY2UgDQo+
IGNvZGUuDQo+DQo+IMKgICogRm9yIHJlcG9ydGluZyBlcnJvcnMsIHBsZWFzZSB1c2UgZHJtX2Vy
cigpLCBkcm1fd2FybigpLCBldGMuIEkgDQo+IHN1Z2dlc3QgdG8gcmVhcnJhbmdlIHRoZSBlcnJv
ciBtZXNzYWdlcyB0byBub3QgYmUgbG9jYXRlZCBpbiB0aGUgDQo+IGlubmVybW9zdCBmdW5jdGlv
bnMuDQoNCklmIHlvdSBwbGFuIHRvIGhhdmUgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIHRoZSBkcml2
ZXIgbG9hZGVkIGF0IHRoZSBzYW1lIA0KdGltZSwgdXNpbmcgZHJtX2Rldl9lcnIoKSwgZHJtX2Rl
dl93YXJuKCkgZXRjLi4gd291bGQgYmUgZXZlbiBiZXR0ZXIuDQoNCkJUVzogSSdtIHN0aWxsIGFi
c29sdXRlbHkgbm90IGtlZW4gdG8gZW5mb3JjaW5nIGRybV8qIGxvZyBmdW5jdGlvbnMuIFNvIA0K
aWYgeW91IHByZWZlciB0byBzdGljayB3aXRoIHByX2VycigpIGFuZCBkZXZfZXJyKCkgd2UgY291
bGQgZGlzY3VzcyB0aGF0IA0Kb25jZSBtb3JlLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+
DQo+IMKgICogQ291bGQgeW91IHBsZWFzZSBzcGxpdCB0aGlzIHBhdGNoIGludG8gc21hbGxlciBw
aWVjZXM/IEl0IA0KPiBjdXJyZW50bHkgaGl0cyBzaXplIGxpbWl0cyBvZiBzb21lIG1haWxpbmcg
bGlzdHMuIE1heWJlIGFkZCB0aGUgDQo+IHJlZ2lzdGVyIGNvbnN0YW50cyBzZXBhcmF0ZWx5Lg0K
Pg0KPiBQbGVhc2UgZmluZCBtb3JlIHJldmlldyBjb21tZW50cyBiZWxvdy4gSXQncyBub3QgYSBm
dWxsIHJldmlldywgYnV0IGF0IA0KPiBsZWFzdCBzb21ldGhpbmcgdG8gc3RhcnQgd2l0aC4NCj4N
Cj4gQmVzdCByZWdhcmRzDQo+IFRob21hcw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
