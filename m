Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B78815AE5B1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 12:43:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6A7448A28
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 10:43:56 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2054.outbound.protection.outlook.com [40.107.94.54])
	by lists.linaro.org (Postfix) with ESMTPS id E924D3EF25
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 10:43:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3e2eE3+/4voLVQLcLn4EqenBlUemW5iiuCsWHKqVhvXk6Mb4165paJF2uPDbX7b0teNj3Tc+USdOTYW7M8TG/Pt6bk/azh8K+k7M9CAuIO6n6GcY7V6Us617yo9U8ig+9XdHhlGZuMa6fWG8GTTbv2A//yUkV7B7WE2YAMo9A2TL3bMUCLdQuPM1FxB/SkqE2lbyfExEvm38WK8uDnBv3HIgu7DJkre4tEOOnpdBjIjE4/iGrIASvTjDm9PskFNOzxYTunoMb8CjTB1eBFIYHDXke4oQtWh2nccAhJl7L3pQcZ0/v0XlPLfvy88rjTGAr2NNHB49KK7XCpxe/oKiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OOTc2P3N3Pe8q2hLkBPf4R8v07rUra1C+ryagE8qmX0=;
 b=DaVWVhzcNsL8azscS6m1aW3/JYD4wHnFYOewRYSgvXBdhIUrriirKyVRZgYfQEM5F6gI0ztXUZeSH/Jh9cWXeQ0AgAexW7yUsrPZ35+uvEqkun/1Qgu1mwXBDR5IxUC6g9wVwku552Sqsgo8qjk0YXI/Nm0yP26bU++eE3oudZ+4iunx8Qfztm89MMnOadkxtztx4jcnq9u5TNNIZWJ9XpBzX45zqqlGb/M6/Kf0CpLUrJGTq1Wo7Voi3uKd6CDBsLrMg+d9LlRJBr9770leSoGO9Y4pEVZGl/RVvbN3ziue8lJOghylyNnV+OxWgWj50COb+P2V+wJWFmY6EWr4uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OOTc2P3N3Pe8q2hLkBPf4R8v07rUra1C+ryagE8qmX0=;
 b=mMQ790rUoRUt0j4msDzy2vKA4HXZTMXCSOZhx3UaIWlyAYWeGFyOdsZRxmUbKNifEgiewgdh+J8UYKIx3JBOhRG1lxwNxNWI0ISps7p6tEf3qyLK4760wi5QuT2rBu3A6U8aoCVFvjtDLzuVbFZdxCeaFylMghe8y+Hdlt9oM4w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by SA0PR12MB4541.namprd12.prod.outlook.com (2603:10b6:806:9e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 10:43:47 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::a997:c7f:aea0:764a%4]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 10:43:47 +0000
Message-ID: <de799b93-1b55-c420-61d9-ad8fa926c7d2@amd.com>
Date: Tue, 6 Sep 2022 12:43:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905163502.4032-1-Arvind.Yadav@amd.com>
 <20220905163502.4032-5-Arvind.Yadav@amd.com>
 <f2e1367f-b056-b2af-365c-8ae4ef03f008@amd.com>
 <ec41b299-4280-d8e4-7ab0-23b5ea6ad401@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <ec41b299-4280-d8e4-7ab0-23b5ea6ad401@linux.intel.com>
X-ClientProxiedBy: AM5PR0301CA0032.eurprd03.prod.outlook.com
 (2603:10a6:206:14::45) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1419fc62-b0df-4785-6677-08da8ff4ad6d
X-MS-TrafficTypeDiagnostic: SA0PR12MB4541:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	a1xx2BKvWSTY3tsl9kcvDeL9BWsBIMjl/6PZkqqI1MOy8NQuHsPSA4GMVzmKQJTzdsNiJ5X+pvAk7p6UdkMoicqwds2pMzrBiaap+qbl0121ft7TZFSg02RPKjRZv6pxDXGte8QYnT+XwTH5L3ibfXHmP5V92nhRZCGiKVxDEslN9cLxGL7CyboXzeBA+ljAw0OTPAvmI07DYReMnvKIz31xCXX4XN0gpXPD4v4sfWZmMB7IJAU3AYZUULEm6F9rO/ha0r7fvntsV5wyPjWaOGDwHUNmN4405AFE7CkHEd740SSBbAvMezMyPqpRG1XNF1jCtGlGSizqIojuJlCu14oxbjL+iYfAGafSWHfD77F11TF3EsEtomWdUbTaI/9Y9NfOr4rS1OBtakXfsWdVCCB38QHvpy1l0xW6s0R7TnuakpADm1dVJm81CQLFPKAh5P96Xd2gAUdcHw0p2deInL5QdIdBRIEUHCN2TercNtKxqH8ycNeGA1crzgp6Dccpd8Bj3n3Muk+iETjm6kmSuIbTM9D2PS03t3O49eHbPx5J3yDlL2bQqqkLBXRg4QXCjn1NPk4XjFDRF18P/R8XVIzgHuEE7wwXlgnjtVg63dlN0s3z7JiQ33cEnSoDitMjsGo+nvRn2WTjoBb0JbzmpWUVdZJRUvFZYEx8DoCenpwQ/2LxW7Rzu/tU2PJyW5YsCVzMxHoPIka0AutAufBQLZ+2/YokmYiLI1W+JN6tdT6RocLy9HFufNCe9rrGJBToG7v9ItGhMjBHNtSe1jLUjEEDpKoFEpFCd2O3V9aHv2syxe5SAaeig/oKXtaF++fM
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(31686004)(186003)(66574015)(110136005)(921005)(83380400001)(316002)(2616005)(2906002)(6486002)(5660300002)(36756003)(6512007)(41300700001)(8936002)(8676002)(53546011)(31696002)(6506007)(38100700002)(66946007)(478600001)(66556008)(86362001)(6666004)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aGs4TjJ1Q2VhNSsxQkpDSXJaUllyYmU4M0o4MDNNOWt4LzVpSHcyMUNOVTg3?=
 =?utf-8?B?QmZrOHp4Z1BVaUMzVkpRdkg0WkhDT29CLzdhOStVOG14cERycWlTbjEvcHFR?=
 =?utf-8?B?OVpFOERNSjl5UENWamlnMDZpL0NKV3cvdjgrR1RjWitkcktjbk9kenU4TnZQ?=
 =?utf-8?B?UjRyNWtXS3JVRFhiMzlrMWsvdTZGM09lN1lrSzJZeE5yZ3ZpeWF3UnRrUlJH?=
 =?utf-8?B?My9jOTlvelIyUDJ4R0RsR0RzZjNJS0YyclFIQnp4YXRjckpxSXpNMVkzbVNu?=
 =?utf-8?B?dHEzN3c5YW9VOUllSER6VHJ5Nk9QNC9yeC9MQzhPR3UvNzhEbS9HYnFkNE5X?=
 =?utf-8?B?RTFwZDZRYXZvanF3WkQ3ZE9wTW1iem1jQUg3dkhXaFE4K2ZzbTFHZFJsUTZJ?=
 =?utf-8?B?QTJncmZNSXNsUmZvbTNEazE2Z1ZHSU1haUhLWDg3RklUOWhQQ1ZoUUJVWnFl?=
 =?utf-8?B?VW5qSFJ0WDV6T2JMbUNDYzFUOVJUOUN0UWhMTmIySlJ3RzFBa0J6THoxTHo3?=
 =?utf-8?B?dU1wMmx4SU5yKzZLazNmTW1pU2xjMG1IRXFxcEFxR2V2dm5Sam1yc1U0REEy?=
 =?utf-8?B?MjcycUsvekxEdmhvWndHUmx5OUlpd3hXV3V0ZjNrSG5QVm0zNi9WZTdPNkQw?=
 =?utf-8?B?aC8vUFpVaFRzamZmYVpnOTBVdkwxRTNJaXpVNXNjOFZHaXE2dnRkSEVpcVND?=
 =?utf-8?B?MEQ2azAySzIyQnRGd1VxWFJoeGhVSHR4TkhBSXZ3L2RieGJSemR0UGxwSWlU?=
 =?utf-8?B?N2NXRnFBbG92SmpNdmhZOHk3dmRQTnJ4MzZNZ21uOVY3M2kzNmFFdEJNZlBK?=
 =?utf-8?B?c1BZVU9VOVVHQWlJbHpmV2U4QVNQOUZOcFlUcENJdzZGMzAxcytGRW9yd25P?=
 =?utf-8?B?clBnSnF2V2pxNzdvblc2cWlnUGI4dklacjVDVmdlaGdkaXorU0pJbkpWTTA4?=
 =?utf-8?B?TlZGSk9ZYUl2M0JJcnhIMHhyYUtoaTQvK2FaRHMrZ0c3aDhHcGhMMG90T21h?=
 =?utf-8?B?WUViNlNSTWJsalhORnZDWFRhLzNuUDBFZnMvRjJFeUZGS1l1bEprNEVQWlpX?=
 =?utf-8?B?ZHo0T1ZhaGEydU9OQmh4amFxbGVDakJvNVlYSEZpMGYraXYvREdIbTBTRTBx?=
 =?utf-8?B?RUFYQnpway9ycUVUTUszVjhGRyt4THFQM3hWcW9jRkxRSjdDbFhQMmE0K1RY?=
 =?utf-8?B?eXRFdzV2RnBoNEJHbGpuTVJ6emUvbFNqbjVuWk02aVZrRStqV0FaNFFIeWM3?=
 =?utf-8?B?NDBNV2NwdEFNNkZiNDFid0Riem53TEM1WXFPbW4vOTUzTU9SdWlFSzJhTWFC?=
 =?utf-8?B?ZFh6TGdCOXVEbnpjSWxIR1FCaUQ4VjZJSmxORnVkSDI2L2lUR0w2TlB2WGJm?=
 =?utf-8?B?RjhqZmZ2ZEZBVWJqYk9KaDRTdi80azFscFFCTXdYRHdRR0xYWVB4ZGQ1VkxF?=
 =?utf-8?B?WHB3VEV3bVIwNEd6bjE5ejhzd1VLN09QZERucmpnUVY0U09pQjJYYkZ5N0NG?=
 =?utf-8?B?YStPVTF5T0c2TFZrajBNVHgxRzBiSyt3aEhsYmE5QU9Yd1BDRU1QMkVBYTJ3?=
 =?utf-8?B?cEZqeXJ1WFA4blVqaytKWFpNN2hyRHZ6THNvcGlSWnlYV0xpMDBpelBzM0d1?=
 =?utf-8?B?RnJSK21xMmozOFhlTmcxK0tpVkxNaHQ0Nm5lUERueU10UzJpS1lHdFJBVTJR?=
 =?utf-8?B?SGo0SVlPVlZwR0t1b1FrYjcraHUrRUtWV0xwa01TYVVobjJVY3dRbE1Ya2g0?=
 =?utf-8?B?TE5TNnQvUi9xQlRrdHNLc0J1cUdZQWo5RGJCTng1bGhRT0cwVVphSnJPQkF0?=
 =?utf-8?B?UmRHNk9uRVMyN0FFT3lvWjdtNzZRcmJHYmk2WWV4STV5VXdDS1NwZ1VSbDh5?=
 =?utf-8?B?ZGpITFJYNXhsbVJBUi9jTVNJYlJDZzYwY2dqS2c0RXlRRGN3Y0V5SlpOOXFj?=
 =?utf-8?B?T2c4ZUJPeXhmSjhDbWpGMTl6VENrK3Q0VC9JRklLYmYzQzUyTVNiNy9CeTRU?=
 =?utf-8?B?bHVaSUV0MmozM2JjbUJXZmZLdlN5VnNkOEFWTVAzdWNVczdmdzNNWGxmZ0FR?=
 =?utf-8?B?bU5tWmN0akRWSXFHOEFMK0JoUm1DQ1MyNzgwRk8yK0pwMXkrU0ZWL0RPVHgv?=
 =?utf-8?B?QXNvL2dQTUNDY0hMcEZpcUlPNUJBbDR2dDVNRHQ5UWUxWWlnQmF0NHc4N25V?=
 =?utf-8?Q?DvtuS2bEAYddgOPwSxJUDoQOd4CQhFyK4IqLScvQBOwx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1419fc62-b0df-4785-6677-08da8ff4ad6d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 10:43:47.3110
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NW+PcKaEEfxipMF5tDOAHEav1XCUvEqfO60W6YWsUiVUXgQUE+tJhdvZGYLrPse1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4541
Message-ID-Hash: EFYTA26ZA4UTJ72TDPOI6OKFDAYBB62J
X-Message-ID-Hash: EFYTA26ZA4UTJ72TDPOI6OKFDAYBB62J
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EFYTA26ZA4UTJ72TDPOI6OKFDAYBB62J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDYuMDkuMjIgdW0gMTI6MjAgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoNCj4NCj4gT24gMDYv
MDkvMjAyMiAwOTozOSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFtIDA1LjA5LjIyIHVt
IDE4OjM1IHNjaHJpZWIgQXJ2aW5kIFlhZGF2Og0KPj4+IFRoZSBjb3JlIERNQS1idWYgZnJhbWV3
b3JrIG5lZWRzIHRvIGVuYWJsZSBzaWduYWxpbmcNCj4+PiBiZWZvcmUgdGhlIGZlbmNlIGlzIHNp
Z25hbGVkLiBUaGUgY29yZSBETUEtYnVmIGZyYW1ld29yaw0KPj4+IGNhbiBmb3JnZXQgdG8gZW5h
YmxlIHNpZ25hbGluZyBiZWZvcmUgdGhlIGZlbmNlIGlzIHNpZ25hbGVkLg0KPj4NCj4+IFRoaXMg
c2VudGVuY2UgaXMgYSBiaXQgY29uZnVzaW5nLiBJJ20gbm90IGEgbmF0aXZlIHNwZWFrZXIgb2Yg
RW5nbGlzaCANCj4+IGVpdGhlciwgYnV0IEkgc3VnZ2VzdCBzb21ldGhpbmcgbGlrZToNCj4+DQo+
PiAiRmVuY2Ugc2lnbmFsaW5nIG11c3QgYmUgZW5hYmxlIHRvIG1ha2Ugc3VyZSB0aGF0IHRoZSAN
Cj4+IGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGZ1bmN0aW9uIGV2ZXIgcmV0dXJucyB0cnVlLiIN
Cj4+DQo+Pj4gVG8gYXZvaWQgdGhpcyBzY2VuYXJpbyBvbiB0aGUgZGVidWcga2VybmVsLCBjaGVj
ayB0aGUNCj4+PiBETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCBzdGF0dXMgYml0IGJl
Zm9yZSBjaGVja2luZw0KPj4+IHRoZSBzaWduYWxpbmcgYml0IHN0YXR1cyB0byBjb25maXJtIHRo
YXQgZW5hYmxlX3NpZ25hbGluZw0KPj4+IGlzIGVuYWJsZWQuDQo+Pg0KPj4gVGhpcyBkZXNjcmli
ZXMgdGhlIGltcGxlbWVudGF0aW9uLCBidXQgd2Ugc2hvdWxkIHJhdGhlciBkZXNjcmliZSB0aGUg
DQo+PiBiYWNrZ3JvdW5kIG9mIHRoZSBjaGFuZ2UuIFRoZSBpbXBsZW1lbnRhdGlvbiBzaG91bGQg
YmUgb2J2aW91cy4gDQo+PiBTb21ldGhpbmcgbGlrZSB0aGlzIG1heWJlOg0KPj4NCj4+ICINCj4+
IFNpbmNlIGRyaXZlcnMgYW5kIGltcGxlbWVudGF0aW9ucyBzb21ldGltZXMgbWVzcyB0aGlzIHVw
IGVuZm9yY2UgDQo+PiBjb3JyZWN0IGJlaGF2aW9yIHdoZW4gREVCVUdfV1dfTVVURVhfU0xPV1BB
VEggaXMgdXNlZCBkdXJpbmcgZGVidWdnaW5nLg0KPj4NCj4+IFRoaXMgc2hvdWxkIG1ha2UgYW55
IGltcGxlbWVudGF0aW9ucyBidWdzIHJlc3VsdGluZyBpbiBub3Qgc2lnbmFsZWQgDQo+PiBmZW5j
ZXMgbXVjaCBtb3JlIG9idmlvdXMuDQo+PiAiDQo+DQo+IEkgdGhpbmsgSSBmb2xsb3cgdGhlIGlk
ZWEgYnV0IGFtIG5vdCBzdXJlIGNvdXBsaW5nICh3ZWxsICJjb3VwbGluZyIuLiANCj4gbm90IHJl
YWxseSwgYnV0IGNyb3NzLWNvbnRhbWluYXRpbmcgaW4gYSB3YXkpIGRtYS1mZW5jZS5jIHdpdGgg
YSANCj4gZm9yZWlnbiBhbmQgZWZmZWN0aXZlbHkgdW5yZWxhdGVkIGNvbmNlcHQgb2YgYSB3dyBt
dXRleCBpcyB0aGUgYmVzdCB3YXkuDQo+DQo+IEluc3RlYWQsIGhvdyBhYm91dCBhIGRtYS1idWYg
c3BlY2lmaWMgZGVidWcga2NvbmZpZyBvcHRpb24/DQoNClllYWgsIEkgd2FzIHRoaW5raW5nIGFi
b3V0IHRoYXQgYXMgd2VsbC4NCg0KVGhlIHNsb3dwYXRoIGNvbmZpZyBvcHRpb24gd2FzIGp1c3Qg
YXQgaGFuZCBiZWNhdXNlIHdoZW4geW91IHdhbnQgdG8gDQp0ZXN0IHRoZSBzbG93cGF0aCB5b3Ug
d2FudCB0byB0ZXN0IHRoaXMgaGVyZSBhcyB3ZWxsLg0KDQo+DQo+IENvbmRpdGlvbiB3b3VsZCB0
aGVuIGJlLCBhY2NvcmRpbmcgdG8gbXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgcnVsZXMgDQo+IGFu
ZCBleHBlY3RhdGlvbnMsIGFsb25nIHRoZSBsaW5lcyBvZjoNCj4NCj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IGlu
ZGV4IDc3NWNkYzBiNGYyNC4uMTQ3YTlkZjJjOWQwIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gQEAg
LTQyOCw2ICs0MjgsMTcgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1h
X2ZlbmNlIA0KPiAqZmVuY2UpDQo+IMKgc3RhdGljIGlubGluZSBib29sDQo+IMKgZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiDCoHsNCj4gKyNpZmRlZiBD
T05GSUdfREVCVUdfRE1BRkVOQ0UNCj4gK8KgwqDCoMKgwqDCoCAvKg0KPiArwqDCoMKgwqDCoMKg
wqAgKiBJbXBsZW1lbnRhdGlvbnMgbm90IHByb3ZpZGluZyB0aGUgZW5hYmxlX3NpZ25hbGluZyBj
YWxsYmFjayANCj4gYXJlDQo+ICvCoMKgwqDCoMKgwqDCoCAqIHJlcXVpcmVkIHRvIGFsd2F5cyBo
YXZlIHNpZ25hbGluZyBlbmFibGVkIG9yIGZlbmNlcyBhcmUgbm90DQo+ICvCoMKgwqDCoMKgwqDC
oCAqIGd1YXJhbnRlZWQgdG8gZXZlciBzaWduYWwuDQo+ICvCoMKgwqDCoMKgwqDCoCAqLw0KDQpX
ZWxsIHRoYXQgY29tbWVudCBpcyBhIGJpdCBtaXNsZWFkaW5nLiBUaGUgaW50ZW50aW9uIG9mIHRo
ZSBleHRyYSBjaGVjayANCmlzIHRvIGZpbmQgYnVncyBpbiB0aGUgZnJvbnRlbmQgYW5kIG5vdCB0
aGUgYmFja2VuZC4NCg0KSW4gb3RoZXIgd29yZHMgc29tZXdoZXJlIGluIHRoZSBkcm1fc3luY29i
aiBjb2RlIHdlIGhhdmUgYSANCmRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGNhbGwgd2l0aG91dCBt
YXRjaGluZyANCmRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKCkuDQoNClJlZ2FyZHMsDQpD
aHJpc3RpYW4uDQoNCj4gKyBpZiAoIWZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcgJiYNCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgICF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lH
TkFMX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiBmYWxzZTsNCj4gKyNlbmRpZg0KPiArDQo+IMKgwqDCoMKgwqDCoMKgIGlmICh0ZXN0
X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7DQo+DQo+IFRob3VnaHRzPw0K
Pg0KPiBSZWdhcmRzLA0KPg0KPiBUdnJ0a28NCj4NCj4+DQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5
OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRhdkBhbWQuY29tPg0KPj4NCj4+IFdpdGggdGhlIGlt
cHJvdmVkIGNvbW1pdCBtZXNzYWdlIHRoaXMgcGF0Y2ggaXMgUmV2aWV3ZWQtYnk6IENocmlzdGlh
biANCj4+IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4NCj4+IFJlZ2FyZHMs
DQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IC0tLQ0KPj4+DQo+Pj4gQ2hhbmdlcyBpbiB2MSA6DQo+
Pj4gMS0gQWRkcmVzc2luZyBDaHJpc3RpYW4ncyBjb21tZW50IHRvIHJlcGxhY2UNCj4+PiBDT05G
SUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEggaW5zdGVhZCBvZiBDT05GSUdfREVCVUdfRlMuDQo+
Pj4gMi0gQXMgcGVyIENocmlzdGlhbidzIGNvbW1lbnQgbW92aW5nIHRoaXMgcGF0Y2ggYXQgbGFz
dCBzbw0KPj4+IFRoZSB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggaXMgYWxzbyBjaGFuZ2VkIGFuZCBw
cmV2aW91c2x5DQo+Pj4gaXQgd2FzIFtQQVRDSCAxLzRdDQo+Pj4NCj4+Pg0KPj4+IC0tLQ0KPj4+
IMKgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA1ICsrKysrDQo+Pj4gwqAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4gaW5kZXggNzc1
Y2RjMGI0ZjI0Li5iYTFkZGMxNGM1ZDQgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaA0KPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+PiBAQCAt
NDI4LDYgKzQyOCwxMSBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFf
ZmVuY2UgDQo+Pj4gKmZlbmNlKQ0KPj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPj4+IMKgIGRt
YV9mZW5jZV9pc19zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+PiDCoCB7DQo+
Pj4gKyNpZmRlZiBDT05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEgNCj4+PiArwqDCoMKgIGlm
ICghdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsICZmZW5jZS0+Zmxh
Z3MpKQ0KPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7DQo+Pj4gKyNlbmRpZg0KPj4+
ICsNCj4+PiDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9C
SVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdHJ1ZTsN
Cj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
