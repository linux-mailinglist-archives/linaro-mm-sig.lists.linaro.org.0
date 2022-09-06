Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3045AE2FE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 10:40:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62F6F48A0D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 08:40:08 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2044.outbound.protection.outlook.com [40.107.237.44])
	by lists.linaro.org (Postfix) with ESMTPS id 2FBAA48A05
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 08:40:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A44yNEVsVeuDPcgfR9fF2Hb2B5ndAOcV1k6LEpBmXDpDJZ6eQ3rNAWiFx51nnX1HxHajWm/VszGJRJjmP7h/kEJHUJ8y/NbIm2jL2Nji5R7YPU3dtXkqClAJgmbaX3dj/s6gwshXjc9H2IMxCRisvlLpDPGdxi9Rfv8A7jC68MxIth28vx6YT9Hjdmft6EhqbxiTrVrTmgcDt3QewsxumTC9iC+K6YHxVT3cp0Ywu7+FEfGocpjfVePBvR3rAW5QqVwIPBWRm3sjPBpkVMFZj4njm7/0O7YF5D76wbvQ+Mxhde9aK/o/ecghM1W0VzfcXgTnRG7adWLJ/wcXnelkZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XnsM3hA72ypo4KWbksa4+nMIMhau0wAJe5r6MFpobBY=;
 b=jTy9TW4w0yfBcrNlIyAxEuUeFkvEB6gbki1Tbt7OA3YZJxmoDL7NjJqcV+uqxYPRNWtOmOtYQmCCbxX+3o+XvUB1qWQvZwC7qWG3VPWBT+NewGBYu3wT//f37sUt65YSskklErcRrxUEhfQud3jOBs/vXwszApAgWt/oSF4yQwuv/fkMIhj1oZnACqgOzyNYXir9aYw4gdSFoleooSMu/fFSjZvC9gdBRzNK8GzP9amjKOQJUYp6Ynn9i5UoG5/4EVydfd8CnpRoqWw1aSPnKY1f+ycMbgWVCFHHHNhE1HB6uydDsFfx7XpBxsqNsKiAynZd20O6j2z/ZvpotnrbCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XnsM3hA72ypo4KWbksa4+nMIMhau0wAJe5r6MFpobBY=;
 b=mu7mcLlNKfRLpr/PAiHgq38p/6M5Zvm6YWTtVYZeVj10a6U+ng+sdvL3C2BfY/87d4adnMxdbIGnp/IpoXXy84xClsrXHUb5XGjzjYNMOsBl7PFu4viQWM58qEuWJSp44glWhSTjR3rtaUy4QMrmR6b2OGVOQLInpT8kM+mePwE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by BL1PR12MB5254.namprd12.prod.outlook.com (2603:10b6:208:31e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Tue, 6 Sep
 2022 08:40:01 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a%4]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 08:40:01 +0000
Message-ID: <f2e1367f-b056-b2af-365c-8ae4ef03f008@amd.com>
Date: Tue, 6 Sep 2022 10:39:53 +0200
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
 <20220905163502.4032-5-Arvind.Yadav@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220905163502.4032-5-Arvind.Yadav@amd.com>
X-ClientProxiedBy: AS9PR06CA0276.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::34) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19b3c42d-0419-4a22-6862-08da8fe3630a
X-MS-TrafficTypeDiagnostic: BL1PR12MB5254:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GOUqro81hPO+b6+SkxduHdXEtyKcPQeaMSBCfTsAGpBOt2Y4HRP8YW9d5bBmSS7N9hhGET4+0eTIAVMHJA1Not8M2x7ekKJ9dOUn53PgaSSuIebNpalf4jkPcNuK7ByqKcQmGICF2yVIabccTpEwev9fVrRB11WbCMG9W4PAsFepzIbS7dZTWxhtyyJf0HevmRoOHd+kabfl9lqSnHUEtq0zv+k9evsbfDSEADyKqEUyK2rPUwmxzjpLYlemYS5/O54pSbroChPHRiGTBgCsieL0jQqDljKcwWL0Ufa50iH2V2+6fmNvlRI9/U5nJs1/VX5NHlGF8DH7YnBazbg9us7tXC/8ki07O24+77Xta6ddohQNy4C9ZyFbjowdX3e5Z5Me2QjxBTSnRewI3kszf/L6Idi1nx6ygVXX2isJvimCB3vN2AmRzUcVWwCEcwBTsGZDzaVKOYxhuHX0nx3mr+61U0WIU5CjpGvQLK0g/zhBWbfw0EJ+Xw6AcKq3ZXTTLji0oat4r2ntppeRTjP5I7knrXiPbEhVg5XxfwV5IroGez2bh4HkEZuvlWCdCVpPwxU9nGr+siTd9twWMlJkBWKEpsg/gRV0Z/sDzdw+rPVfORuZyC3JTEg8eRxDYQxBA2tKEjBtKDF0ibVbI1bONE1r9UMjey54OoKQ2z4r2hsrfphHtVD9+Dq8zpa5IdrKfovaVe3dcHv0ooXrIJ3SrmgTtCR/R77G6sZ2GX2XU6afIEZohY1L5XY+C69kGrmKI+yrIK4y1PdL/mQ/2532OYijJ2fMnHj7ReX8pi1sHRwzmrHUe8UhOw0xNLmTeYkm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(5660300002)(8936002)(31686004)(2906002)(83380400001)(66476007)(36756003)(8676002)(38100700002)(66946007)(66556008)(316002)(6666004)(86362001)(31696002)(66574015)(2616005)(6506007)(186003)(41300700001)(921005)(6486002)(6512007)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZEY1WlhjUHFraXRKTitnQWFlcWdVWEVSQlFmYys4UWcyUTF2by9DQ29DODF4?=
 =?utf-8?B?RTVNZUtXQ2M2M0VEUzlISWJma3FSaC9qZUhSeUM5UWpSdXBDdUVjVkJHM1dm?=
 =?utf-8?B?d3dROG1SemlpcXdqSjFKNGlQRU5hb09aNWEvQytEQTFzV2p3QW5xRi9IQUlO?=
 =?utf-8?B?SnQ2M3JBdk1RUEdUaVNSSkpya2s5RlQ4a0twQW1lQ2V6SDljQ1IvdFk3RjI5?=
 =?utf-8?B?WlZ2aG9OY3hJd3dyNGJ4STV2ckxwYjFTV3VCZHF6TC9XKzlhM3RKSTZnaWda?=
 =?utf-8?B?eHRod2p1UU5CM210YVVHZHprVFc1SkZ0bWJMNk5KZ2p6eVUrQzk5cFJjUjhV?=
 =?utf-8?B?dWZBU2MvKzhSdWhjL0hQeTkwMS9zQW95cStJT25ISlM1UTFrK2Zvc2pPRkt5?=
 =?utf-8?B?SDBSamRmNTZ2MkpIcjFTeW5jSFhvTm5mZTJPUUpqeFlvTTJuWVZJVFdpcC9L?=
 =?utf-8?B?MzA4b3BkVUFUVGgyOTZCUGJTMFNNMVdSVWtOaEg0OUdyWmZ2aHV2bHB6OURQ?=
 =?utf-8?B?QmlkUFNmK1pOY1FFTjA0Q3ZIUXo5Rm4yWllnOFZsaFJTbUhKWk9KVTI5SWpt?=
 =?utf-8?B?NW1lN3J4a1BRaGdjQnlnWG80MmlHRjg0R3E2dkc4Ulo5S1kyN1RFU2Y3SFBm?=
 =?utf-8?B?N0k3eW1INjBlVUN3MWF1bTRxT1VGZ0R2OS9kMUdySmNKamlwcjI5MUhMV0ZM?=
 =?utf-8?B?RjF5Z0NwTUR1L2dDdS9jU3NJbXFGdGNFY3ZxV04rcDg2OWZ4ODVLSDNiV1JY?=
 =?utf-8?B?VGsySkRnZWozWWF1NjZJdzMyamVLVlFkYmt4bHVRZFprWG4vWU5sS0dPMkc1?=
 =?utf-8?B?L1FESU51bzF2V1hjZkt1YndvRXRrMHIvaEpHQSt6clMvMDZ4MXM4d2pGa0Jo?=
 =?utf-8?B?QTJUVk1xciswRzVkYjlsWmRBbmgyMGRGS2UrQ2hhMGE5RWg1aU9SYUt6NmtV?=
 =?utf-8?B?Ukt5NGpDL21yUFJtREZzYWkwcTVaQ1dUTk81dUZMcXpjUkU2V1NvMHRsYXZu?=
 =?utf-8?B?TlE0NDFQeDZDSlV2QUhaVHZRNWNaWGpWWFBOUk5rQ2dxaUEwU1pOb3hheW9h?=
 =?utf-8?B?ZlFjN0xaUVVKbUI0ckVRSkUrTUlvRGt3Rm9MU0J1UndSdUsrVzQxUjRaUWRJ?=
 =?utf-8?B?S2hYUUZpb29ieHJrYzl3b2x6YXhWdFNUbWpMZTZsZ1BKTStKUXVJSEpmWGJN?=
 =?utf-8?B?ZHRrV3N3MmpLaCtZbXJrM0NBQkpRMjhlbVY1dXhoMHVadHhRZWdwK0tDVGN2?=
 =?utf-8?B?U0ZKOXpnajJDNUQwcE9LY0gzRmtEZWlVa2h2MWt0MzR1TXhvTS9EaEN5WVNt?=
 =?utf-8?B?bmJqalA0VkRDZko0ZjJRenZDb2lPN2xmRlAwUSsvcVRuUUhpaEQ2NTB3alBW?=
 =?utf-8?B?L3h4MUJZV3AxMlhIRmpqMDJDVW1reWtxME1IdVR3UmVWK0I2Q2xlWXZIT1Y3?=
 =?utf-8?B?Qm9rMGRTanN6dGgzZDBOclZhT0lvbzhkeno2UGxQZWVucjA1eEhYOGc1QzQx?=
 =?utf-8?B?cUIreko4Qk54S1Y0NlBtMW4vemJNRDhXOUIzRnM3TW9XWlJYWWQzQ2VOejEr?=
 =?utf-8?B?SzJiTGI1OW8vSXRlVkRPOUxvY0NOcElDQzhaVnhVU3d3S2dxT0FjK1M5SHNC?=
 =?utf-8?B?alcvbmZPMHpudW1aTFkyRjF3YnQycS9QTHpESS9rVkxCUGJNdGRXZGRFN29o?=
 =?utf-8?B?RFF0WjNKa0YzT1NOcGh3UFFEQzFrYkhOcU84VUhOQU5iUklmd09LbkVaNm96?=
 =?utf-8?B?LzYrNDB6MS9WN21uZ0JBK2lSdVROS0J1UlNRSXBMM0IvNG53RHZNL0VFQmlX?=
 =?utf-8?B?Y0xJcEZWQi9iOUJJK3k4UmdZOXcvK2YwVHF2QTdOSyt4emJCUXgxWnQrRkxK?=
 =?utf-8?B?QlFLY0pyblpFTmdiNEJDRHBJRkNFTkxacTJrWHBJYS84dzZUaFlTT1B6N0Z6?=
 =?utf-8?B?THdGaGZZMHdPU0ZhTW9HcEhVT0p3aHozSzhiUzZTcHVJL3JsREZWL3MvT2h4?=
 =?utf-8?B?RHNUbEw0K1RMUGdUaDQ4eDhWSE1hSmFBTy93VTJORThXRTE4eGlEZTh6YWN2?=
 =?utf-8?B?cG9rall1bzlDejhXME1YZ2hkOVJrcU1qYittTFJ3dVJrVFFvejRKZnBZbWRt?=
 =?utf-8?B?UitYbStzRlc5VyswaExmdElXYkpqVndVVEdmdVhoc1hRUU1PTUJmUHp2RDBL?=
 =?utf-8?Q?1mw2OO0egx+B/eVYNzLnP9fxE1CbbB7Ij94jtdGtAHQS?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19b3c42d-0419-4a22-6862-08da8fe3630a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 08:40:00.9727
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qbtzlgf+aAmTPNPHfwQh/QFZEr1SNPgsOAber3dwHGMIrE3/N74FlhENY5TbslAq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5254
Message-ID-Hash: CRYL2IBQQBCLOACCNJ5EMIEC5BX2IVNI
X-Message-ID-Hash: CRYL2IBQQBCLOACCNJ5EMIEC5BX2IVNI
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CRYL2IBQQBCLOACCNJ5EMIEC5BX2IVNI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMDkuMjIgdW0gMTg6MzUgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+IFRoZSBjb3JlIERN
QS1idWYgZnJhbWV3b3JrIG5lZWRzIHRvIGVuYWJsZSBzaWduYWxpbmcNCj4gYmVmb3JlIHRoZSBm
ZW5jZSBpcyBzaWduYWxlZC4gVGhlIGNvcmUgRE1BLWJ1ZiBmcmFtZXdvcmsNCj4gY2FuIGZvcmdl
dCB0byBlbmFibGUgc2lnbmFsaW5nIGJlZm9yZSB0aGUgZmVuY2UgaXMgc2lnbmFsZWQuDQoNClRo
aXMgc2VudGVuY2UgaXMgYSBiaXQgY29uZnVzaW5nLiBJJ20gbm90IGEgbmF0aXZlIHNwZWFrZXIg
b2YgRW5nbGlzaCANCmVpdGhlciwgYnV0IEkgc3VnZ2VzdCBzb21ldGhpbmcgbGlrZToNCg0KIkZl
bmNlIHNpZ25hbGluZyBtdXN0IGJlIGVuYWJsZSB0byBtYWtlIHN1cmUgdGhhdCB0aGUgDQpkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoKSBmdW5jdGlvbiBldmVyIHJldHVybnMgdHJ1ZS4iDQoNCj4gVG8g
YXZvaWQgdGhpcyBzY2VuYXJpbyBvbiB0aGUgZGVidWcga2VybmVsLCBjaGVjayB0aGUNCj4gRE1B
X0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQgc3RhdHVzIGJpdCBiZWZvcmUgY2hlY2tpbmcN
Cj4gdGhlIHNpZ25hbGluZyBiaXQgc3RhdHVzIHRvIGNvbmZpcm0gdGhhdCBlbmFibGVfc2lnbmFs
aW5nDQo+IGlzIGVuYWJsZWQuDQoNClRoaXMgZGVzY3JpYmVzIHRoZSBpbXBsZW1lbnRhdGlvbiwg
YnV0IHdlIHNob3VsZCByYXRoZXIgZGVzY3JpYmUgdGhlIA0KYmFja2dyb3VuZCBvZiB0aGUgY2hh
bmdlLiBUaGUgaW1wbGVtZW50YXRpb24gc2hvdWxkIGJlIG9idmlvdXMuIA0KU29tZXRoaW5nIGxp
a2UgdGhpcyBtYXliZToNCg0KIg0KU2luY2UgZHJpdmVycyBhbmQgaW1wbGVtZW50YXRpb25zIHNv
bWV0aW1lcyBtZXNzIHRoaXMgdXAgZW5mb3JjZSBjb3JyZWN0IA0KYmVoYXZpb3Igd2hlbiBERUJV
R19XV19NVVRFWF9TTE9XUEFUSCBpcyB1c2VkIGR1cmluZyBkZWJ1Z2dpbmcuDQoNClRoaXMgc2hv
dWxkIG1ha2UgYW55IGltcGxlbWVudGF0aW9ucyBidWdzIHJlc3VsdGluZyBpbiBub3Qgc2lnbmFs
ZWQgDQpmZW5jZXMgbXVjaCBtb3JlIG9idmlvdXMuDQoiDQoNCj4NCj4gU2lnbmVkLW9mZi1ieTog
QXJ2aW5kIFlhZGF2IDxBcnZpbmQuWWFkYXZAYW1kLmNvbT4NCg0KV2l0aCB0aGUgaW1wcm92ZWQg
Y29tbWl0IG1lc3NhZ2UgdGhpcyBwYXRjaCBpcyBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIA0KS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4gLS0tDQo+DQo+IENoYW5nZXMgaW4gdjEgOg0KPiAxLSBBZGRyZXNzaW5nIENocmlzdGlhbidz
IGNvbW1lbnQgdG8gcmVwbGFjZQ0KPiBDT05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEggaW5z
dGVhZCBvZiBDT05GSUdfREVCVUdfRlMuDQo+IDItIEFzIHBlciBDaHJpc3RpYW4ncyBjb21tZW50
IG1vdmluZyB0aGlzIHBhdGNoIGF0IGxhc3Qgc28NCj4gVGhlIHZlcnNpb24gb2YgdGhpcyBwYXRj
aCBpcyBhbHNvIGNoYW5nZWQgYW5kIHByZXZpb3VzbHkNCj4gaXQgd2FzIFtQQVRDSCAxLzRdDQo+
DQo+DQo+IC0tLQ0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA1ICsrKysrDQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gaW5kZXgg
Nzc1Y2RjMGI0ZjI0Li5iYTFkZGMxNGM1ZDQgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBAQCAtNDI4
LDYgKzQyOCwxMSBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQ0KPiAgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiAgIGRtYV9mZW5jZV9pc19zaWdu
YWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICB7DQo+ICsjaWZkZWYgQ09ORklHX0RF
QlVHX1dXX01VVEVYX1NMT1dQQVRIDQo+ICsJaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19F
TkFCTEVfU0lHTkFMX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4g
KyNlbmRpZg0KPiArDQo+ICAgCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9C
SVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPiAgIAkJcmV0dXJuIHRydWU7DQo+ICAgDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
