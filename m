Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 818BA50F412
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 10:30:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B31414800F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 08:30:00 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2072.outbound.protection.outlook.com [40.107.94.72])
	by lists.linaro.org (Postfix) with ESMTPS id F0DF747FF3
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 08:29:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVKJrsaJ+WgThRoykibiKs0R9JJU8Uykdy85RxO/Ce86E8gB953giSTV7Q4S5oPXB9ntoTIdQM2s2I4j6yrxKk5KzMX+xbwE2DiZs0lHfN+wuHAMzNatNBnDit+iBcYgSGcWdfWFivLh1V4lkIagoqkvF6hbRNiXxblgVpEIyqQM4GIOopqsMaam1nACY5c4SLUfBnYJgsYIEblDifVW0wiWM2sM2RP2CG5X/adiBz2IZ/KOOfPZ/W3CrM4lp50hKopV9ZlPONL21YItT3cfqS6Ym3HWIZKN5v5/JzxiavN8QBCu94brRKTNQb63hXITIjpZ3GejLLQNZS8aSDGDqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtiqOw6JFXZTKbH8oLzY6VoOX6PzE5yThI9dgF9+/Fw=;
 b=GxByBVLM7mRIhC9xGJY+qJXwtdQBK4hF4rCvWkwbyPm3FhWI3jVkKaWNUt2ceCM38tsVdNvATnmQQDwJm3QPw5E9VssUu5+vK8yw3sP6vZYSXC4Au64GddhXz2cY5zJ2dOhmJKzsu1tFIchpH1OSRBUVGzCKzIbgmEsLCgowwL2tut6Eff1tsIF/99Tol+HHf5niyTjACLYo5UEufWcwArnWc6y8sqbf6tiyUlY0NzNOA+uEeMpuq6a6/T5UdQT1BsS+aDwNMjQWhA+eV/tElXKMiesDL4yM7ON3OTWyEHZ8Go1eTLxks5gom8vFHFeIftCxjWBpQ5HLkheV4PADHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jtiqOw6JFXZTKbH8oLzY6VoOX6PzE5yThI9dgF9+/Fw=;
 b=0yTvZrPsCpbFo0WJUFxEmpGZlIJGkl17XYzO20gHiAIJS/3NDycZsAbbIiGBVVFXPHQtihTCGyqWtrCiXZgk2vSQmGxqaO+vqb7UEFK7TfDpp+eqw9vLwinpfRtN5gZaNcS4AkZLDiVPbpkPj2caoW9JnBgiGYXs9InsGgRhgXU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BY5PR12MB4819.namprd12.prod.outlook.com (2603:10b6:a03:1fd::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Tue, 26 Apr
 2022 08:29:50 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 08:29:50 +0000
Message-ID: <ad3edfe7-8dbf-b6a1-f51f-53ea600439c9@amd.com>
Date: Tue, 26 Apr 2022 10:29:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Cai Huoqing <cai.huoqing@linux.dev>
References: <20220426060808.78225-1-cai.huoqing@linux.dev>
 <20220426060808.78225-5-cai.huoqing@linux.dev>
 <618a4f53-0998-1e6b-e32b-8bf2d3057cec@amd.com>
 <20220426082341.GA83596@chq-T47>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220426082341.GA83596@chq-T47>
X-ClientProxiedBy: AS9PR06CA0562.eurprd06.prod.outlook.com
 (2603:10a6:20b:485::32) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac33cb8e-dd95-43e1-595f-08da275eee38
X-MS-TrafficTypeDiagnostic: BY5PR12MB4819:EE_
X-Microsoft-Antispam-PRVS: 
	<BY5PR12MB48197AEAD13C6F031AAB8B7483FB9@BY5PR12MB4819.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aUfYoCZUxxCee0kCk68dahd7W2LLM5s7UdqpsneAAQ4oooLdO8bHJWkKc2+C7ywQFm781BmTKF4QKWpGGpNa1iaKFuaNhG1rHW0REbBzXCoQVoO/3JpTgUALIwmuD8EDbZ+zqr3n82x6vseoWw9lJxnasJtTFdqVHRwQ0l1GhKOsK9CXee8Mz72J83bJgCgch++IFnCFOA5LYm9UU1qM5/VckxR1IU7u85T33zOTCEpvBDBi9/EdHgu2oWNGr0K7H3SmnSkx2STtzp2kFcZbdx5gWq/xF1mtWsVWkXQsygoz4usHyDjzXb9B7JHjcZT7DmQlehlAXtAvfaaJMQWO2z+TOkPGSMlsrOTyPF+n+aR0t+9QBYpgHhNNjZj7YTwIDi5eCjCBT8JA15J7Z4b+kglk1s/DTCDoH9LWprAoPOu4LaSY7r1mQWVnL51p/YLmEN0sKli1BZxvvDWzcz2WPrVSVkfH22CHxWDtKRcfooW+wXHdNaMmKOfu01E6U26MZ4yyahcMZpqj8g+4bzwY8kYQZlOQD4CAf/acENBcSG35l5ajauKiAfd93YWcQIOvv3rq34izPClhbJKsSBg65ANht322h/SW6RsPk0jgE9zj7lyvDk77NKPfJVjKWyFO4691umcDOe/E73jI3x3hTkwfGdnky4uLNd6gXzOCQtPmvyI85FslpJrZfNxiEAISvPNhr/+orZkS+csHEZZAyy2ESiIk1lfP72JJiA2/8DtpQuPtiUwTe/uPLaJYiMeD3QvgbPb3Wr4rKkL/LZxlJzixUmT6wqze0SkvsWpL4OEvYKUeHQ/fDGMK8t12ZiDY9dnaaGaqiXKxSWxrOHE7Mw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(38100700002)(26005)(86362001)(6512007)(6666004)(45080400002)(7416002)(31696002)(966005)(66556008)(6916009)(54906003)(316002)(8676002)(508600001)(66946007)(66476007)(2906002)(4326008)(5660300002)(6506007)(8936002)(6486002)(2616005)(66574015)(36756003)(186003)(83380400001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bktNUDNOYndGRWxwSzdiaXhWaFVaR3NIWmEzVzFvUUFPVXJpaXJONmx0UnZL?=
 =?utf-8?B?NnAzM3FNNW5ONmx2MnJVL0o5dmxLZklnT0dlbTRpS1RjNW44WkY5QzIvcEJy?=
 =?utf-8?B?MkVJNmZkWjFjZHQwN0hqSFBCNTY1WS9uU0dwTldKdVdjWVJkNndua1JOM1Y2?=
 =?utf-8?B?bml3WmhEdWlhdWhoY0RNTGdFMHhUYS80TFdpUTJidVNPcDJsaFhTYlMzdktB?=
 =?utf-8?B?K3piYk0yeGtvRjNxQjl1cy9mUWtFMnlFakVJMlhob1BpaFdTSEtNY1V6cy9x?=
 =?utf-8?B?TFNzVDlGZEJMbEZEYXArQzNjTnFRV0VxWFRBVlR2S3J4TVpSMDRhblVpY0hG?=
 =?utf-8?B?Z3JyaUZrN2FJam5ETXpaTjRaWEs4Z1Z6Uk1TUkN6ZmRCL2pPeTJkWWNkY0Zo?=
 =?utf-8?B?NEJGTXR1NVNJdEpVWlN2NDgrblJHMm1UeDJETGlyOEorNHNqdlNnVnRSQ3VS?=
 =?utf-8?B?Vzd1ZTRKVG5KZC9GU2lDeXozUXpWeVhjbG10azVYMHdjeHEzdUhGVlk2Y0gz?=
 =?utf-8?B?WlhOTlpjNDh3Mm1lWHpMN3p2T28zOVQ1eVpZWjJ5NFNFc09iY3lJcGk0NWZl?=
 =?utf-8?B?NnNibE9kaWg0Qkt6VlNNbHRxRXphS3FEMGNqV1luNWVYY3JkRmZza056dlJi?=
 =?utf-8?B?NGNKWjZERTNmdXhxcHg0dzRaUnJsbFRRcEVFTG5MV2h6MjhPMDlDbDMyVE5l?=
 =?utf-8?B?cUlaUVM5S1N5bzJiaTI3MW1lNll4RGtkRC90TlJBYm1LOUNUSFE3dDlSaURu?=
 =?utf-8?B?bm9GcDVpbUlQS3NpcVlCRGxDTW0wNHlJTW9XS3ZEM3dUYXYzSGlnWFMvWnlG?=
 =?utf-8?B?V3ZnczBUOUZKRFB3aG9QSUxzdTBKNHQwK0VzRHBGWWpUaGRaQlMvZDhOcnVB?=
 =?utf-8?B?eGdwSTNYL2FaNzNqQVhmK3FhSFl0OERuamdqVHlCR3NDWVA2WEdna1dDZHU3?=
 =?utf-8?B?THc5MUhEWDVhdEZBMkh2anY1Uk51aU4vb1lMZjR6RU5rV2V5d2Q1UmRucG9w?=
 =?utf-8?B?Tm5xTDJyaFdPSWlWbWxueXFEZzZFQmtYblZVWVlZWjVYT0U4eUNDSmVsVisy?=
 =?utf-8?B?QUw3YXVSdUFtY1RDZGxZZWhSS3pWbWlKUWZxN0JBTmJtYmd2OU1tUWh1UEk4?=
 =?utf-8?B?NEhKdHRKZ0NuYkRuU3Y5Y3B6bDh5cFRFeW1KMzZZOWY2TGFsc0ZMSHZ0ekV5?=
 =?utf-8?B?ckNLYVY3dXpBL3lNd2JkeWYwK01nYVBrUkpSTE5HZXJ2VlpvbEVYc2pITzVo?=
 =?utf-8?B?NEVOZjBrRWhpUTNrdW1zLy9DVmdSVnNjMHJTaTQ0NGxicWRGVi94aDRyN0d4?=
 =?utf-8?B?M2l0d0hUQmhLcE1vYnEyMkMrV092N2hYcUNuV1B5SlA2aUZNUWszSFBlbE8x?=
 =?utf-8?B?S2puZzFOaXBpcmU2czBBUWtyWXFzbXNTZ1ZxRld1YXFnV3oxbDFhbkl2cCtD?=
 =?utf-8?B?TmtRbnd5WDFnelNENVk5ZlFsUHdMZmh6YXZIMy9zTm5nRldXcnJ4dUFxMThI?=
 =?utf-8?B?TlFaSlNZOE9scnJnenRVeGhlcHIyaTFKcjIzTjh3SFNid2taVW9ZZ3J6QzN0?=
 =?utf-8?B?allEakY5STF3U2tKbURyeC9sdGw0MkhCekNvZWw5YlZIZVcwNlNrTEQrcWVn?=
 =?utf-8?B?R3hUK0JPRW5qU3BhbUpLdG45VW4yOHk1SExJREtkaHh0L3Z1ZWVrVk9Bc2pK?=
 =?utf-8?B?YUJjbmtHOVRjbUV1OW9rQXRrdWJWOHI3Z3NRbXJDNjZsQUdmRzB0U3IvNG5M?=
 =?utf-8?B?QTllcktIeW56TGF4RFdROXNzVXFDNVRTejNXL3ovb3ZBcVY1aUdPRkx1WkNl?=
 =?utf-8?B?ZTZYTHhvUXh4YXpXV0lyaUwzTnF1Lzh5bXZGYnFCaHZCSUZYbzhLTFBTTGtE?=
 =?utf-8?B?SVNZdCtOVGM2QU4xSk01dzVpV0QveFd3eFNuZjZFZ3FGbzFjcU1NZnE1Z3Ex?=
 =?utf-8?B?dUcxVU9nWGNqcDhVZVRxRUJtTmx4MGVWVytiSzFpcTRod1RTSkVRUjZVS3Ux?=
 =?utf-8?B?SXgwMXhMTVpNRGYyeG02OVkzMmZmbGc5U0dRNllNWWxwZTJLQzN5ZldqWVBP?=
 =?utf-8?B?NnJXSjlWN2Rockp5SDZJYkdrWU9ZanBidlNINGRFTW5uV0p2VlZRZ2hCVEI1?=
 =?utf-8?B?UzBLWENzSm1HRWtzREVqQVpVYzZIOGt2T29KbWV6bnJzbnJMNkRrRUcyOEha?=
 =?utf-8?B?MGdQSmZ5dWlycHNMWjdiQ1dKVS9iRktySGlVcld0YWVwaUk2YmJFbzNpc21Z?=
 =?utf-8?B?bHQ3TEdhVSt6NFhyV1hrVFU2ajA3MVJmSzNDS2xSeFIxM1pBMDZ1TDFxS2Y5?=
 =?utf-8?B?cVgrdXVxbngrRGE5VGM2T3RMSnE5MGRJYjVZZTNyTGZ6N2ExK05RZz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac33cb8e-dd95-43e1-595f-08da275eee38
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2022 08:29:50.6081
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: isHieWhYHdKv0S+KUVj4HIsvmmolzPnlzFS8jnJH+358mPtm9jdZHvDXMjaoBlPh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4819
Message-ID-Hash: EW7LADPMJ2OG6QXRTFOH2APZWNWOZ54L
X-Message-ID-Hash: EW7LADPMJ2OG6QXRTFOH2APZWNWOZ54L
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EW7LADPMJ2OG6QXRTFOH2APZWNWOZ54L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjYuMDQuMjIgdW0gMTA6MjMgc2NocmllYiBDYWkgSHVvcWluZzoNCj4gT24gMjYgNOaciCAy
MiAwODozMTowNSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFtIDI2LjA0LjIyIHVtIDA4
OjA4IHNjaHJpZWIgQ2FpIEh1b3Fpbmc6DQo+Pj4gVGhlIE5WSURJQSBEZWVwIExlYXJuaW5nIEFj
Y2VsZXJhdG9yIChOVkRMQSkgaXMgYW4gb3BlbiBzb3VyY2UgSVANCj4+PiB3aGljaCBpcyBpbnRl
Z3JhdGVkIGludG8gTlZJRElBIEpldHNvbiBBR1ggWGF2aWVyLA0KPj4+IHNvIGFkZCBVQVBJIG9m
IHRoaXMgZHJpdmVyLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogQ2FpIEh1b3FpbmcgPGNhaS5o
dW9xaW5nQGxpbnV4LmRldj4NCj4+PiAtLS0NCj4+PiB2MS0+djI6DQo+Pj4gKlJlbmFtZSBudmRs
YV9kcm0uW2NoXSB0byBudmRsYV9kcnYuW2NoXSBhbmQgcmVuYW1lIG52ZGxhX2lvY3RsLmggdG8g
bnZkbGFfZHJtLmgsDQo+Pj4gICAgbW92ZSBpdCB0byB1YXBpLg0KPj4+ICAgIGNvbW1lbnRzIGxp
bms6IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1o
dHRwcyUzQSUyRiUyRmxvcmUua2VybmVsLm9yZyUyRmxrbWwlMkYyMGJhYzYwNS05N2U2LWU1Y2Qt
YzRlNC04M2E4MTIxNjQ1ZDglNDBhbWQuY29tJTJGJmFtcDtkYXRhPTA1JTdDMDElN0NjaHJpc3Rp
YW4ua29lbmlnJTQwYW1kLmNvbSU3QzA3Nzc1MTNiMTViMzRkMjBjMzBlMDhkYTI3NWUyMzVjJTdD
M2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzg2NTU4MjU0MTAw
MjU0OCU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9p
VjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdDJmFt
cDtzZGF0YT16aVFTd0t4cWhldk9MRHhxJTJGdmdmaW5GOEJHM2hpQXdtVXhzSDNaelpGNEUlM0Qm
YW1wO3Jlc2VydmVkPTANCj4+Pg0KPj4+ICAgIGluY2x1ZGUvdWFwaS9kcm0vbnZkbGFfZHJtLmgg
fCA5OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgICAxIGZpbGUg
Y2hhbmdlZCwgOTkgaW5zZXJ0aW9ucygrKQ0KPj4+ICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNs
dWRlL3VhcGkvZHJtL252ZGxhX2RybS5oDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91
YXBpL2RybS9udmRsYV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vbnZkbGFfZHJtLmgNCj4+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uOTg0NjM1Mjg1NTI1
DQo+Pj4gLS0tIC9kZXYvbnVsbA0KPj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vbnZkbGFfZHJt
LmgNCj4+PiBAQCAtMCwwICsxLDk5IEBADQo+Pj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wIE9SIEJTRC0zLUNsYXVzZSAqLw0KPj4+ICsvKg0KPj4+ICsgKiBDb3B5cmlnaHQg
KEMpIDIwMTctMjAxOCBOVklESUEgQ09SUE9SQVRJT04uDQo+Pj4gKyAqIENvcHlyaWdodCAoQykg
MjAyMiBDYWkgSHVvcWluZw0KPj4+ICsgKi8NCj4+PiArDQo+Pj4gKyNpZm5kZWYgX19MSU5VWF9O
VkRMQV9JT0NUTF9IDQo+Pj4gKyNkZWZpbmUgX19MSU5VWF9OVkRMQV9JT0NUTF9IDQo+Pj4gKw0K
Pj4+ICsjaW5jbHVkZSA8bGludXgvaW9jdGwuaD4NCj4+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVz
Lmg+DQo+Pj4gKw0KPj4+ICsjaWYgIWRlZmluZWQoX19LRVJORUxfXykNCj4+PiArI2RlZmluZSBf
X3VzZXINCj4+PiArI2VuZGlmDQo+Pj4gKw0KPj4+ICsvKioNCj4+PiArICogc3RydWN0IG52ZGxh
X21lbV9oYW5kbGUgc3RydWN0dXJlIGZvciBtZW1vcnkgaGFuZGxlcw0KPj4+ICsgKg0KPj4+ICsg
KiBAaGFuZGxlCQloYW5kbGUgdG8gRE1BIGJ1ZmZlciBhbGxvY2F0ZWQgaW4gdXNlcnNwYWNlDQo+
Pj4gKyAqIEByZXNlcnZlZAkJUmVzZXJ2ZWQgZm9yIHBhZGRpbmcNCj4+PiArICogQG9mZnNldAkJ
b2Zmc2V0IGluIGJ5dGVzIGZyb20gc3RhcnQgYWRkcmVzcyBvZiBidWZmZXINCj4+PiArICoNCj4+
PiArICovDQo+Pj4gK3N0cnVjdCBudmRsYV9tZW1faGFuZGxlIHsNCj4+PiArCV9fdTMyIGhhbmRs
ZTsNCj4+PiArCV9fdTMyIHJlc2VydmVkOw0KPj4+ICsJX191NjQgb2Zmc2V0Ow0KPj4+ICt9Ow0K
Pj4+ICsNCj4+PiArLyoqDQo+Pj4gKyAqIHN0cnVjdCBudmRsYV9pb2N0bF9zdWJtaXRfdGFzayBz
dHJ1Y3R1cmUgZm9yIHNpbmdsZSB0YXNrIGluZm9ybWF0aW9uDQo+Pj4gKyAqDQo+Pj4gKyAqIEBu
dW1fYWRkcmVzc2VzCQl0b3RhbCBudW1iZXIgb2YgZW50cmllcyBpbiBhZGRyZXNzX2xpc3QNCj4+
PiArICogQHJlc2VydmVkCQkJUmVzZXJ2ZWQgZm9yIHBhZGRpbmcNCj4+PiArICogQGFkZHJlc3Nf
bGlzdAkJcG9pbnRlciB0byBhcnJheSBvZiBzdHJ1Y3QgbnZkbGFfbWVtX2hhbmRsZQ0KPj4+ICsg
Kg0KPj4+ICsgKi8NCj4+PiArc3RydWN0IG52ZGxhX2lvY3RsX3N1Ym1pdF90YXNrIHsNCj4+PiAr
I2RlZmluZSBOVkRMQV9NQVhfQlVGRkVSU19QRVJfVEFTSyAoNjE0NCkNCj4+PiArCV9fdTMyIG51
bV9hZGRyZXNzZXM7DQo+Pj4gKyNkZWZpbmUgTlZETEFfTk9fVElNRU9VVCAgICAoMHhmZmZmZmZm
ZikNCj4+PiArCV9fdTMyIHRpbWVvdXQ7DQo+PiBXaGF0IGZvcm1hdCBkb2VzIHRoYXQgdGltZW91
dCB2YWx1ZSBoYXZlPw0KPj4NCj4+IEluIGdlbmVyYWwgaXQgaXMgYmVzdCBwcmFjdGljZSB0byBo
YXZlIGFic29sdXRlIDY0Yml0IG5hbm9zZWNvbmQgdGltZW91dHMNCj4+ICh0byBiZSB1c2VkIHdp
dGgga3RpbWUgaW5zaWRlIHRoZSBrZXJuZWwpIHNvIHRoYXQgcmVzdGFydGluZyBpbnRlcnJ1cHRl
ZA0KPj4gSU9DVExzIHdvcmtzIHNtb290aC4NCj4+DQo+Pj4gKwlfX3U2NCBhZGRyZXNzX2xpc3Q7
DQo+PiBNYXliZSBtYWtlIHRoZSBjb21tZW50cyBpbmxpbmUsIGNhdXNlIEkganVzdCB3YW50ZWQg
dG8gd3JpdGUgdGhhdCB5b3Ugc2hvdWxkDQo+PiBub3RlIHRoYXQgdGhpcyBpcyBwb2ludGluZyB0
byBhbiBudmRsYV9tZW1faGFuZGxlIGFycmF5IHVudGlsIEkgc2F3IHRoZQ0KPj4gY29tbWVudCBh
Ym92ZS4NCj4+DQo+Pj4gK307DQo+Pj4gKw0KPj4+ICsvKioNCj4+PiArICogc3RydWN0IG52ZGxh
X3N1Ym1pdF9hcmdzIHN0cnVjdHVyZSBmb3IgdGFzayBzdWJtaXQNCj4+PiArICoNCj4+PiArICog
QHRhc2tzCQlwb2ludGVyIHRvIGFycmF5IG9mIHN0cnVjdCBudmRsYV9pb2N0bF9zdWJtaXRfdGFz
aw0KPj4+ICsgKiBAbnVtX3Rhc2tzCQludW1iZXIgb2YgZW50cmllcyBpbiB0YXNrcw0KPj4+ICsg
KiBAZmxhZ3MJCWZsYWdzIGZvciB0YXNrIHN1Ym1pdCwgbm8gZmxhZ3MgZGVmaW5lZCB5ZXQNCj4+
PiArICogQHZlcnNpb24JCXZlcnNpb24gb2YgdGFzayBzdHJ1Y3R1cmUNCj4+PiArICoNCj4+PiAr
ICovDQo+Pj4gK3N0cnVjdCBudmRsYV9zdWJtaXRfYXJncyB7DQo+Pj4gKwlfX3U2NCB0YXNrczsN
Cj4+PiArCV9fdTE2IG51bV90YXNrczsNCj4+PiArI2RlZmluZSBOVkRMQV9NQVhfVEFTS1NfUEVS
X1NVQk1JVAkyNA0KPj4+ICsjZGVmaW5lIE5WRExBX1NVQk1JVF9GTEFHU19BVE9NSUMJKDEgPDwg
MCkNCj4+IFdlbGwgdGhhdCAibm8gZmxhZ3MgZGVmaW5lZCB5ZXQiIGZyb20gdGhlIGNvbW1lbnQg
YWJvdmUgaXMgcHJvYmFibHkgb3V0ZGF0ZWQNCj4+IDopDQo+Pg0KPj4gQSBjb21tZW50IHdoYXQg
dGhpcyBmbGFnIG1lYW5zIHdvdWxkIGFsc28gYmUgbmljZSB0byBoYXZlLg0KPj4NCj4+IEFwYXJ0
IGZyb20gYWxsIHRob3NlIG5pdCBwaWNrcyB0aGF0IGxvb2tzIHByZXR0eSBzb2xpZCB0byBtZS4g
SnVzdCBvbmUgY29yZQ0KPj4gZnVuY3Rpb25hbGl0eSB3ZSB1c3VhbGx5IGhhdmUgc2VlbXMgdG8g
YmUgbWlzc2luZyBoZXJlOiBIb3cgaXMgY29tcGxldGlvbg0KPj4gc2lnbmFsaW5nIGltcGxlbWVu
dGVkPw0KPiBIaSx0aGFuayBmb3IgeW91ciByZXBseS4NCj4NCj4gRG8geW91IG1lYW4gZmVuY2Ug
c2lnbmFsPyBJbiB0aGlzIGRyaXZlciwgSU9DVExfU1VCTUlUIGlzIGEgc3luY2hyb25vdXMgY2Fs
bA0KPiB3aGljaCBkbyB0YXNrIHN1Ym1pc3Npb24gJiB3YWl0IGZvciBkb25lIGNvbXBsZXRpb24u
IFRoaXMgYWNjZXJsZXRvciBkZWFsDQo+IHdpdGggbWFzc2l2ZSBjb21wdXRlIG9wZXJhdG9yIChQ
b29saW5nLCBDb252Li4uKSwgdGhhdCBpcyBkaWZmZXJlbnQgdG8NCj4gR1BVLiBJdCdzIHVubmVj
ZXNzYXJ5IHRvIGV4cG9zZSBmZW5jZSBBUEkgdG8gVU1EIGZvciByZWR1Y2luZyBzdWNoIGxlc3Mg
dGltZS4NCg0KWW91IHNob3VsZCBwcm9iYWJseSBhZGQgdGhhdCBhcyBhIGNvbW1lbnQgc29tZXdo
ZXJlIGhlcmUuDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPg0KPiBUaGFua3MsDQo+IENhaQ0K
Pj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4gKwlfX3UxNiBmbGFnczsNCj4+PiAr
CV9fdTMyIHZlcnNpb247DQo+Pj4gK307DQo+Pj4gKw0KPj4+ICsvKioNCj4+PiArICogc3RydWN0
IG52ZGxhX2dlbV9jcmVhdGVfYXJncyBmb3IgYWxsb2NhdGluZyBETUEgYnVmZmVyIHRocm91Z2gg
R0VNDQo+Pj4gKyAqDQo+Pj4gKyAqIEBoYW5kbGUJCWhhbmRsZSB1cGRhdGVkIGJ5IGtlcm5lbCBh
ZnRlciBhbGxvY2F0aW9uDQo+Pj4gKyAqIEBmbGFncwkJaW1wbGVtZW50YXRpb24gc3BlY2lmaWMg
ZmxhZ3MNCj4+PiArICogQHNpemUJCXNpemUgb2YgYnVmZmVyIHRvIGFsbG9jYXRlDQo+Pj4gKyAq
Lw0KPj4+ICtzdHJ1Y3QgbnZkbGFfZ2VtX2NyZWF0ZV9hcmdzIHsNCj4+PiArCV9fdTMyIGhhbmRs
ZTsNCj4+PiArCV9fdTMyIGZsYWdzOw0KPj4+ICsJX191NjQgc2l6ZTsNCj4+PiArfTsNCj4+PiAr
DQo+Pj4gKy8qKg0KPj4+ICsgKiBzdHJ1Y3QgbnZkbGFfZ2VtX21hcF9vZmZzZXRfYXJncyBmb3Ig
bWFwcGluZyBETUEgYnVmZmVyDQo+Pj4gKyAqDQo+Pj4gKyAqIEBoYW5kbGUJCWhhbmRsZSBvZiB0
aGUgYnVmZmVyDQo+Pj4gKyAqIEByZXNlcnZlZAkJcmVzZXJ2ZWQgZm9yIHBhZGRpbmcNCj4+PiAr
ICogQG9mZnNldAkJb2Zmc2V0IHVwZGF0ZWQgYnkga2VybmVsIGFmdGVyIG1hcHBpbmcNCj4+PiAr
ICovDQo+Pj4gK3N0cnVjdCBudmRsYV9nZW1fbWFwX29mZnNldF9hcmdzIHsNCj4+PiArCV9fdTMy
IGhhbmRsZTsNCj4+PiArCV9fdTMyIHJlc2VydmVkOw0KPj4+ICsJX191NjQgb2Zmc2V0Ow0KPj4+
ICt9Ow0KPj4+ICsNCj4+PiArI2RlZmluZSBEUk1fTlZETEFfU1VCTUlUCQkweDAwDQo+Pj4gKyNk
ZWZpbmUgRFJNX05WRExBX0dFTV9DUkVBVEUJMHgwMQ0KPj4+ICsjZGVmaW5lIERSTV9OVkRMQV9H
RU1fTU1BUAkJMHgwMg0KPj4+ICsNCj4+PiArI2RlZmluZSBEUk1fSU9DVExfTlZETEFfU1VCTUlU
IERSTV9JT1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fTlZETEFfU1VCTUlULCBzdHJ1Y3QgbnZk
bGFfc3VibWl0X2FyZ3MpDQo+Pj4gKyNkZWZpbmUgRFJNX0lPQ1RMX05WRExBX0dFTV9DUkVBVEUg
RFJNX0lPV1IoRFJNX0NPTU1BTkRfQkFTRSArIERSTV9OVkRMQV9HRU1fQ1JFQVRFLCBzdHJ1Y3Qg
bnZkbGFfZ2VtX2NyZWF0ZV9hcmdzKQ0KPj4+ICsjZGVmaW5lIERSTV9JT0NUTF9OVkRMQV9HRU1f
TU1BUCBEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX05WRExBX0dFTV9NTUFQLCBzdHJ1
Y3QgbnZkbGFfZ2VtX21hcF9vZmZzZXRfYXJncykNCj4+PiArDQo+Pj4gKyNlbmRpZg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
