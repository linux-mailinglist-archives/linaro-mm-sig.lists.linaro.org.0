Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DB555604325
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:27:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2DDA3EA49
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:27:44 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2056.outbound.protection.outlook.com [40.107.101.56])
	by lists.linaro.org (Postfix) with ESMTPS id 7DC9E3F909
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Sep 2022 13:46:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=byr+4kUrDvpPezNMRwar3Vo+W+MlZ/M549VPOrYVx/PnlbLJF7i8yJIEoVKzm0kXwHmZ1Nq7jCHaDJTJ9oQLt/kibaMoQ/lYtZ01VXIOSjKkgt6ypsapR4rTnnaBauCBfpy8tvJCoqDfDXQr5rJA7M/MZNXDde8bNrP0nrqTwsHDGNjpxoA/lBDcDJbEt/8oBQsmcF0Ry1WmDk/EciiferOb6M9sR0t0O1raDC6pYh8IyOAiQaz8bRWbWhoX5aSLINGCQLDNkkteQUFGihMFA8fCabw4t4MOGvqi8eiSz3f+BaqyPkf1VC3RCmbdJ1E3RBkFuja9dk2qwpn3rqrGpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lcPplKUDEjgINzdCtUs89a9QyZXpiG00bMXBwbd+XpI=;
 b=Sd9Bz+JLSYa1O9d3Efcl7qIGHqXtvRPSi2WX8Euo1cvApM618z5VMCfKMHGJmDVew0M5Ot3GY9973UF8lH7lTm9TA7UQbYlKwKQG6PYIgNOD13l2oKaAESpSc3kbOAUhkWyBF5snZhdy+yJylI5ISF3dNeuhY0D8lOv/bOKxMt4qVapIZUstYhGwCH1KbNjRHdXXhh0lyhvNIhhffIgnW40F47t9l+kYfxcPz7jT84eh143ZWiw3PDYN5pe+PJmzOuLF6NfPKoWai5ODvYQtSJbB7nl7DuBsxbB5j251lPIiYzI45vUO29v0htQQClt10WxlRkKPKCrEI0mSiB/Xow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lcPplKUDEjgINzdCtUs89a9QyZXpiG00bMXBwbd+XpI=;
 b=v62AZ6Pe5LLh8jzELQNAMDRTRe7Bpf23tuhTlMOp8xaeg04dPXqma1sBupioqiR6NOfRu8yU/v/evEaZ9buSRv92LlSD6HKvMNSlb4+J5bOHV7hzxAOOugACWV7N18ZC18RksoPyiu01tknH9KU9EyVANlAD092BdtUu6PFpGOQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by DM6PR12MB4076.namprd12.prod.outlook.com (2603:10b6:5:213::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 5 Sep
 2022 13:46:32 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c%5]) with mapi id 15.20.5588.015; Mon, 5 Sep 2022
 13:46:32 +0000
Message-ID: <5b84f7c1-99a6-02c8-2606-8986891a95b0@amd.com>
Date: Mon, 5 Sep 2022 19:16:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
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
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <96d14c8a-e3de-fcea-b3b1-434bc6a78ae4@amd.com>
X-ClientProxiedBy: PN3PR01CA0124.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::12) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30e2f401-affd-410f-12cb-08da8f450a69
X-MS-TrafficTypeDiagnostic: DM6PR12MB4076:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NSjuUShio2ILT0zk62TYe5TONYQt77Hk/ZHETT28HMIdp9+QpriKb00M5PvrBMPLldT5l1mosvUOB/thkBQvzMp2BmSkz9WXwJbvClyTjrDRdoyreBYw1d3SRhsN8hN/7ey9adgONo8CThHIDH6HRzToTziEur826EbIbKN5eG8hfQ5Ydnv2t6z2/UrOwVLkHx5CtNANoUtEknM4OFjYRxMCUPAYotyGLOZ3thIao3kXf0nszupgRy9L1w97rlScRckJAWl9vNCpUzYid/fGXF8OCVugpHZNqU7rAO2XkGSAC6nes7CSg02HR1iHtK+Y2gDM90l+wailTQRcTjeGcRao3j6up/vfh35+63hMD1oGaEIGJsH1y4SyyKRzgIC3BbakXrPV0kDnt+wvD7oqxlrdNMsit2DkTbRFmSsDj+3VFIcRPRmq/4it6lPAOz6GdYDJKQQR6tC3rpUGpISGnhT/ptznJ5KGqW8/m4Mq02LL5FwhtUbAyr52C29/ssLOHcziFSuaWhqBbvVVfbquX8GFb8GICPBmi0frbi3C3hiOQ0b0WtUVEC863UDqO1TzDWyuuoTVx3Jg2ICbzC9kuj8hQz/ajFgWEky0WHM3F4DVG+wOW6cDNVgyxnthsDMdvFXalsRjN4iKNrtEZMY1AwnlDyYYSq/Gi/xdbOTTx6OgM8Suf3ya3gX4t/rYX3AOvYonejNkcfSGheWGQbjqPymZZG8EZG4u/fEiMa8vpEl3qZUOVjodis5DYRliGG4M3tOfuBT3miQzDzAqH3sThspfgqlYdFqw2NJy45WitXLdSSE43EzaBAKD2O+XKkkj
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39860400002)(346002)(376002)(396003)(136003)(8676002)(83380400001)(66476007)(66574015)(66946007)(8936002)(66556008)(5660300002)(6506007)(478600001)(26005)(53546011)(6486002)(6666004)(41300700001)(186003)(2616005)(6512007)(316002)(110136005)(31696002)(36756003)(31686004)(921005)(38100700002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RW5Pb0xGZndnTlRrYjJuQVpWZjI0TzJtN0M0RVhSamo3dWNnUnhuaW9HSElm?=
 =?utf-8?B?S3IvMXpxbHd2ZjNMaDJ1ZjVESUd4SDB2SFpmSGlDY3R6amtlcXBWK2JqaWhY?=
 =?utf-8?B?VVhwOXpWeEZuRk9NRkRNcTUycXRHcEUyd3Q4VFdLR2g3NEp4ck5pazJQR3BL?=
 =?utf-8?B?RHB0VXBBZmlwaWFBS1RRbzdHREI1RXJja1pZWFhWdkNJOSszZUJYZyttTFpv?=
 =?utf-8?B?aVZUWW1nRmNEUmxONnVyWndRNWJKZ21uSDZkS3JxNi9Hc3dCcmd2RVJ3VWli?=
 =?utf-8?B?OXlDVWNieGNSVmxyalJveUN0K3ZGOVVMSU5vdHRBaXR0cmdLSFYwd25KZFpK?=
 =?utf-8?B?YVRuTW9Dam9keSt1VDhFNVdlcmNYYVl4UjRaZk4xbjJIR0JnaVByMjJQZS95?=
 =?utf-8?B?YlVoQVlLQS8wbkNvaHZxZWg1SzVVWHJmOHhLUUtuTER3ZzJ0ZktFTDhPMzgz?=
 =?utf-8?B?Q0ZqOUZqWWMxbllkQ2tZS3BYa28xb1NGVTB1T0xxQXBqeW9YSEJiODRSMFlL?=
 =?utf-8?B?UVlqalptdnFNM1d4b0NHYURrOVg4emxzZlYzMWRlVzd4NzcydjY5eW5aR2Jk?=
 =?utf-8?B?Y3VLOHMzcXAycTNtRjVtVFlNcWdjU1d2bnBVdlNRRVlDQmRHcGZqSDZHU2Zy?=
 =?utf-8?B?WHNIVk1tNkhYZDZrdkdyTlloYjR3YkRTTnI0bERtQzJ6VnphZ0MwKzBGb1E3?=
 =?utf-8?B?dCtCcDFFelFzRWR1UUJScFlXNkVVelBUYjE5bGJmQ3ZKTnhlK2RFZWdpM1dG?=
 =?utf-8?B?azB3RXJyeXE3ak01ek1zU05wcVFaT0h4MllNWHNaK2Z2V1dWMlhGdjh4QXhy?=
 =?utf-8?B?bnlhMU9xSm9lZjc5TTRFcWJqeG5ab2dQT2o4bjYyZDBFNnNtU0xNcU9OeUNJ?=
 =?utf-8?B?ZU1PNVBYc2FCRE51Q3BSU3QzdDNsMFNubC9zZzNWQUVuU3V4VlhjME5CTk5a?=
 =?utf-8?B?RTR6ZnpuWFZ6Rmo3SlJpMk1qZk5Wb3B3cUE5QVQwdVJLYXFOeHM3bkJieDQv?=
 =?utf-8?B?dzRLYm9VdmUxTjV5REppb3ZzZHhLL1pRangyeDF3dmRGZm8rdllYNUlnS3Zv?=
 =?utf-8?B?bzBFdzJrbTc0clNhRDU3TStEbXQrTzh4bE5xeEZxOE9PUzZsc3U1ekVROEwy?=
 =?utf-8?B?VVVaY0Q3RFJGOGozOElJSFcyL25LK1lweEFSb3lhZDNBczh4MlA5UnRpRDFq?=
 =?utf-8?B?MTdKSnhybGN6Z2w2cmowc1FpNmZocVRTand1QjNnZVFZSlhIS0RzRi82MGpL?=
 =?utf-8?B?TEZ1WGFrdVQ1M0lITEUyTWNiYW5WY2tVbXQzOXlVYWt1aVRSS3RjL3c2V2s3?=
 =?utf-8?B?ZEE1TFhma1ZvTS8wblA0U04vWEhjdDQrR2J4bEhmVFZ4cE9aejhVdkVURjdV?=
 =?utf-8?B?eGp4YTBIVWxwUUVKQXZJdHZZNG90YU5GSUdudzVyNWxLNmMzRnUyandaVlI1?=
 =?utf-8?B?RWxGeCsyKy9pYlZGY3J6cEdJd3E4cDZrV1IvMVVRRk1iUWRnMnJmSnNDTUFy?=
 =?utf-8?B?dnl2TzAreFgvUzNBNmFXN2hRM1BWYlcvekpzZ3hXR1d1TjNlZEhMeE1lS0M5?=
 =?utf-8?B?V1lsWWVibDVnTVRFYkpoUVlYRjFxak1WSzRVd1hpeW1XUkJwU0lYUTVWV0t5?=
 =?utf-8?B?OXF4WWVVcENGZWZIbUlnbm1mR2xnSzhPT1g5T1JnVnBtQWhrbi93dndSUS9q?=
 =?utf-8?B?TVk2amJkM1dFUDFsTWUzQS8ra0U4OUJXbXB4S0lFTHBlSjZ0aXpGM003NmZ5?=
 =?utf-8?B?bHNKa0RveG5sVEdzSG1ZeU5rL2hZRVdqdXZpSG1BQXZkY0VoQzNTbHdjVzd2?=
 =?utf-8?B?UkJvYVBNdFFTcjZmYUJUNmlnSWxTcEg1Y1Q1NmJBUDQ0cDB5aWN0RVEwdGI1?=
 =?utf-8?B?QWZlUUkzZ1Bmb2lwTVVVQmJYNWgwdWc5WVNFaGhOdXBYL0phL0xsS2I0Tng1?=
 =?utf-8?B?ZUNwTVZMNUtCTXFyM2NhRk1YRU9veFhLM0tNV0JmYXNjWnJmR20vaUpCazhB?=
 =?utf-8?B?SXc3VkhTaHVhQ2oxeVhoSHROUGw0RWtsTmxBb2h1c0VIbWdiUTBTZm91WU5w?=
 =?utf-8?B?Y2NMbzUwdWNHeVdjUUFpek41THlWUlgxRnJHcUJTYm1PQ2pxRlJjelVSalB5?=
 =?utf-8?Q?wVCcWDhTMAtnTpHTmI3o9NNpF?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e2f401-affd-410f-12cb-08da8f450a69
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 13:46:31.9538
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3stqcI/vNP/B/x10L2HyNZgjzxXFXVYChKj7Nz3AUMqiCwXA9DuSZ1SjbNqQ5sILuIzU+tQhCQ/1pw2Cc1mJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4076
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2X5AFYQ7YXVMGUMU2D77SJWWSTKKLSKN
X-Message-ID-Hash: 2X5AFYQ7YXVMGUMU2D77SJWWSTKKLSKN
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:25:28 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] drm/sched: Add callback and enable signaling on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2X5AFYQ7YXVMGUMU2D77SJWWSTKKLSKN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzUvMjAyMiA0OjU1IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPg0KPg0KPiBB
bSAwNS4wOS4yMiB1bSAxMjo1NiBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+IEhlcmUncyBvbiBk
ZWJ1ZyBhZGRpbmcgYW4gZW5hYmxlX3NpZ25hbGluZyBjYWxsYmFjayBmb3IgZmluaXNoZWQNCj4+
IGZlbmNlcyBhbmQgZW5hYmxpbmcgc29mdHdhcmUgc2lnbmFsaW5nIGZvciBmaW5pc2hlZCBmZW5j
ZS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRhdkBhbWQu
Y29tPg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNl
LmMgfCAxMiArKysrKysrKysrKysNCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jwqAgfMKgIDQgKysrLQ0KPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyANCj4+IGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9mZW5jZS5jDQo+PiBpbmRleCA3ZmQ4Njk1MjBlZjIuLmViZDI2Y2RiNzlhMCAxMDA2
NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+PiBAQCAtMTIy
LDE2ICsxMjIsMjggQEAgc3RhdGljIHZvaWQgDQo+PiBkcm1fc2NoZWRfZmVuY2VfcmVsZWFzZV9m
aW5pc2hlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPj4gwqAgwqDCoMKgwqDCoCBkbWFfZmVuY2Vf
cHV0KCZmZW5jZS0+c2NoZWR1bGVkKTsNCj4+IMKgIH0NCj4+ICsjaWZkZWYgQ09ORklHX0RFQlVH
X0ZTDQo+PiArc3RhdGljIGJvb2wgZHJtX3NjaGVkX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRt
YV9mZW5jZSAqZikNCj4+ICt7DQo+PiArwqDCoMKgIHJldHVybiB0cnVlOw0KPj4gK30NCj4+ICsj
ZW5kaWYNCj4+IMKgIMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkcm1fc2No
ZWRfZmVuY2Vfb3BzX3NjaGVkdWxlZCA9IHsNCj4+IMKgwqDCoMKgwqAgLmdldF9kcml2ZXJfbmFt
ZSA9IGRybV9zY2hlZF9mZW5jZV9nZXRfZHJpdmVyX25hbWUsDQo+PiDCoMKgwqDCoMKgIC5nZXRf
dGltZWxpbmVfbmFtZSA9IGRybV9zY2hlZF9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCj4+ICsj
aWZkZWYgQ09ORklHX0RFQlVHX0ZTDQo+PiArwqDCoMKgIC5lbmFibGVfc2lnbmFsaW5nID0gZHJt
X3NjaGVkX2VuYWJsZV9zaWduYWxpbmcsDQo+PiArI2VuZGlmDQo+PiDCoMKgwqDCoMKgIC5yZWxl
YXNlID0gZHJtX3NjaGVkX2ZlbmNlX3JlbGVhc2Vfc2NoZWR1bGVkLA0KPj4gwqAgfTsNCj4+IMKg
IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkcm1fc2NoZWRfZmVuY2Vfb3Bz
X2ZpbmlzaGVkID0gew0KPj4gwqDCoMKgwqDCoCAuZ2V0X2RyaXZlcl9uYW1lID0gZHJtX3NjaGVk
X2ZlbmNlX2dldF9kcml2ZXJfbmFtZSwNCj4+IMKgwqDCoMKgwqAgLmdldF90aW1lbGluZV9uYW1l
ID0gZHJtX3NjaGVkX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lLA0KPj4gKyNpZmRlZiBDT05GSUdf
REVCVUdfRlMNCj4+ICvCoMKgwqAgLmVuYWJsZV9zaWduYWxpbmcgPSBkcm1fc2NoZWRfZW5hYmxl
X3NpZ25hbGluZywNCj4+ICsjZW5kaWYNCj4NCj4gQWRkaW5nIHRoZSBjYWxsYmFjayBzaG91bGQg
bm90IGJlIG5lY2Vzc2FyeS4NCnN1cmUsIEkgd2lsbCByZW1vdmUgdGhpcyBjaGFuZ2UuDQo+DQo+
PiDCoMKgwqDCoMKgIC5yZWxlYXNlID0gZHJtX3NjaGVkX2ZlbmNlX3JlbGVhc2VfZmluaXNoZWQs
DQo+PiDCoCB9Ow0KPj4gwqAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfbWFpbi5jIA0KPj4gYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4u
Yw0KPj4gaW5kZXggZTBhYjE0ZTBmYjZiLi4xNDBlM2Q4NjQ2ZTIgMTAwNjQ0DQo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4+IEBAIC05NjEsNyArOTYxLDkgQEAgc3Rh
dGljIGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpwYXJhbSkNCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNfZmVuY2UtPnBhcmVudCA9IGRtYV9mZW5jZV9nZXQoZmVuY2UpOw0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogRHJvcCBmb3Igb3JpZ2luYWwga3JlZl9pbml0IG9m
IHRoZSBmZW5jZSAqLw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1
dChmZW5jZSk7DQo+DQo+IFVmZiwgbm90IHJlbGF0ZWQgdG8geW91ciBwYXRjaCBidXQgdGhhdCBs
b29rcyB3cm9uZyB0byBtZS4gVGhlIA0KPiByZWZlcmVuY2UgY2FuIG9ubHkgYmUgZHJvcHBlZCBh
ZnRlciB0aGUgY2FsbCB0byBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKCkuDQo+DQpTaGFsbCBJIHRh
a2UgY2FyZSB3aXRoIHRoaXMgcGF0Y2ggb3IgSSB3aWxsIHN1Ym1pdCBzZXBhcmF0ZSBvbmUgPw0K
Pj4gLQ0KPj4gKyNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4+ICsgZG1hX2ZlbmNlX2VuYWJsZV9z
d19zaWduYWxpbmcoJnNfZmVuY2UtPmZpbmlzaGVkKTsNCj4+ICsjZW5kaWYNCj4NCj4gVGhpcyBz
aG91bGQgYWx3YXlzIGJlIGNhbGxlZCwgaW5kZXBlbmRlbnQgb2YgdGhlIGNvbmZpZyBvcHRpb25z
IHNldC4NCj4NCj4gQ2hyaXN0aWFuLg0KDQpzdXJlLCBJIHdpbGwgcmVtb3ZlIHRoZSBDb25maWcg
Y2hlY2suDQoNCn5hcnZpbmQNCg0KPg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgciA9
IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZmVuY2UsICZzY2hlZF9qb2ItPmNiLA0KPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX3Nj
aGVkX2pvYl9kb25lX2NiKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyID09
IC1FTk9FTlQpDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
