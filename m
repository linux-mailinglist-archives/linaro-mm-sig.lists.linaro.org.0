Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A01C519B58
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 11:15:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42B414806E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 09:15:24 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam08on2074.outbound.protection.outlook.com [40.107.100.74])
	by lists.linaro.org (Postfix) with ESMTPS id 13C303EC34
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 May 2022 09:15:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jeGepD3ddE4EPfsVyG9lot3tUwwAIEGua5Png2t9H8r4tfcfSmKcsf53BU7kHMwMoNjY0qO5wziZVnANPp2hmtTSTBiyejC4cbql2wcCjWPuN+G/K+usx5GHebO9eCmyq2eCBTOiJrat8nZtqPWgZuC7gkiVdVDakKjXbq8+/bJl7eaCuJ4fhsU4iWm4uh8AMNHiC4sDQbULxAJ6C83Up++6Gi8sGSkPCP1gTNsUEt0iGAvyhmzPBktKpYKsDCE0vusGV6I3gIPTlvWCO6VnkthCWTJ3FmeJbAJFoDtsPJwm7uUzglUmKdxU5C1o4sutiYbxxHjqs4BsQEEIC8DvCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=87Ot/B6uHukEPfxUCty/O3JxLFrWMROa5DQQLu7rhpU=;
 b=eTIxqN2YJEtxXk4m9uq4OAPIdEjfs6iOmrLeJLcsKP1xW8+VboIQ7tzFxqDW4zPSuDEvDdT47RDq1jMt8f5PH2CpGWXrs0iE8RM00GNgMB5qYzfsThG21HDiXE+HmlHPr/OfWioWQb3M9TPNypJ+/1WAlIoBs2moep/PQcH8Szb3QWGIfyt9QF2RAInPc/bWDuIso4dWI0P5hfUhtShTDQI496mDrs94ORxrhWqXD33hr5pt+T4Ew0RcIWO9oOAWiVgtb7ovjGrysoc6kQB1w1jxjpe8T8fijVf8oDOGBLQNl91NF1J4AY3DaC8WKykxuFXOQgtgQnQn1ogkpca7ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=87Ot/B6uHukEPfxUCty/O3JxLFrWMROa5DQQLu7rhpU=;
 b=tlXKNIpzuFzEE82xuCbNPrmB+Ff5z4KLBqY71BOVB6RNKXJFxKs+VGMn7Jtvots3aUl+tw8fBmmYKAdm6WVqVsPCCrfM9a4CckWmmLwaLiB5UI7h1p4ffp+ojok9cq6Sk1XV1rWk3WgN5MdLQfdxRrdV77MA3UBhAVb0PcXAeRo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN8PR12MB3202.namprd12.prod.outlook.com (2603:10b6:408:9c::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.17; Wed, 4 May
 2022 09:15:18 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::fdba:2c6c:b9ab:38f%4]) with mapi id 15.20.5206.025; Wed, 4 May 2022
 09:15:18 +0000
Message-ID: <7b1c76b4-3074-24c1-5a76-46780f5056fd@amd.com>
Date: Wed, 4 May 2022 11:15:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel@ffwll.ch, jason@jlekstrand.net, daniels@collabora.com,
 skhawaja@google.com, maad.aldabagh@amd.com, sergemetral@google.com,
 sumit.semwal@linaro.org, gustavo@padovan.org, Felix.Kuehling@amd.com,
 alexander.deucher@amd.com, tzimmermann@suse.de, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20220502163722.3957-1-christian.koenig@amd.com>
 <20220502163722.3957-3-christian.koenig@amd.com>
 <c3e168cb-fbd5-07b7-f927-ac9e5e73b1e8@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <c3e168cb-fbd5-07b7-f927-ac9e5e73b1e8@linux.intel.com>
X-ClientProxiedBy: AM6P191CA0069.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:209:7f::46) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5f38a0c-9692-45a3-2dd2-08da2dae9b2b
X-MS-TrafficTypeDiagnostic: BN8PR12MB3202:EE_
X-Microsoft-Antispam-PRVS: 
	<BN8PR12MB320220E8F587BB1A3B81BB6183C39@BN8PR12MB3202.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LW43OKcO2EzMJHJN6/2KIYwWKOUitDXBEXjEJNpOTl9k67nur4tba7VDcIbGrOQZAbFdQh3t4Y+WwLNbL1MIRU4yU+NM5knsBtbIgvSql5DezBU4NbUEmW5qD6pQ6t+OVxVIMuWNTBun4nvr6hxpNujZ3jXXAjQzWnPA4j5R2z4X0PGM4z1x8EAiXhT5MGEBPbGs1nYkz6slXZrwo4kT8Pe2fGkDarUYtF3TccHVLE4q4xMKY7BH8BF9KSY2wEde4wZRqyWm0wfS1Dt/lSGlXiuT/dRFotuJmumdB81sO1NzLRnQYG0RFfvV6wZq1rJYzKVJaYm88q7BUC0Q+St8f9gN4P1I/c3yoDHSR+2RO0wMESlfWmaDR54dkEgW3FAhGxqmLs2KpyD9fy1vpcPHvs+LBBRS/yraNX+R7gauEcrmoiimC5/3hVYkCtcHgowRsd3pgCUr3SsfVxH8iTMhZSdzSH8f8AhcGp8HOZtvmL9oZtQOMLKtgyR7nrIMZithhTXVU6w20rFSPpkTI83CBF1oYWrTATgigVBXFrg6y/uF2pbpuzLdjeqJfOxC9wpS3xY1q8W0q/3+poL/ib9oK6LK3PQ0K4q5bJ+bVkViTH4Ze/7KF3n3qpWBng1fXFYEuQngJDJRJzg6JeJPG1it/mFSwvIJA3NWaAuo29nRywW0Ta42Y8mrpNoXGfGf4yy8mCqKfWxaQ2N9Mqr/VMuW6M/2gn5AxdgfTt6RSEQODvcVNx+2EWWgS4Kv2Syau0mm6Hfky9CVSexkas8saI0FlQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(6506007)(7416002)(53546011)(316002)(8936002)(6512007)(83380400001)(31686004)(5660300002)(2616005)(2906002)(36756003)(66556008)(86362001)(8676002)(66574015)(66476007)(31696002)(186003)(38100700002)(921005)(110136005)(66946007)(26005)(508600001)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eW1JUUdWdkJlS3p1OWJPa0xwblJCczdDVUt6TnRWMmcrbG0xUFpIT1hQODdv?=
 =?utf-8?B?Ulg3aWwyYmRsNm1NbXJkS3N0bEgya1VJdW14ZTg4L0lNanpwSUdXR3Roa3V6?=
 =?utf-8?B?dTFvR2R6VnJpTEpTVDQ3VnhKdDlTZVJ3WUVwVVZQQXI1VHIyZk93WlBBRHh0?=
 =?utf-8?B?UlBFYzl1bzdjSzBaczNvaGVyQ1ptQXk4aldzQ09paitURjhnb01MelpjbDJW?=
 =?utf-8?B?QzFlU2x0N3pwRkljUm1BQnlnMTNzWW9pSVV0SGxxUTRKUTdnbFNQVEt1cTQ1?=
 =?utf-8?B?NmpQSEgxWS9nZzBsNVIyZUcxbGx4czVHNlBFM2Uva3QzZHlXYmp4NHoybnhG?=
 =?utf-8?B?Z1VJUlVKZ0loMUEweCsrZzNrR2t3VUZZSkNRTU5qYkpaSTNWc1RxTnA4aHdK?=
 =?utf-8?B?SGJ4QnRnNFJsNzIxREMwV3pIb3lDVVc1djJjdVFoWkF2ODVxeHg5QUtOd2N5?=
 =?utf-8?B?VklKajdNRWYzKzlNSlFRSE5hSkZMcnVtd0ViOERBU2pISDhFNDY0Wk9zWHE5?=
 =?utf-8?B?akNoNnlic0lZVUluZGNhbXhPSERpQ1NXeVpZZDNHZzZWVEYvSFp6cWsxeENo?=
 =?utf-8?B?em10bjR0Tk9sOHU1ZFNZb21Pc2VnaHdvU3RNUzdlS2hYYWdUSzNJVmpUbks0?=
 =?utf-8?B?UHFrMzN3NzYyN2YzcGJ1UFZzaFhWb1dvaTJadVU0TkpCMDZicitIWDNZclFa?=
 =?utf-8?B?R1NCTUdIYmM0TmJlenBpTFJnUUVzVm1zU244OHJRVEpqUzRFZm9IUkxGWmYz?=
 =?utf-8?B?b2o1OXk5anhiQjlaWkRBcEdjSllCQUhzc1VOcXJ3cWQzTklQeVYrMDNTR3Jm?=
 =?utf-8?B?SWRDb25ibkZXTXF4V2tqVE5wVVlkaWtWVjBWbUVjcGRwN1NxSnhiNWE0WGx2?=
 =?utf-8?B?R1FOK2FoU0lRTkE1SlI0TVpRU0Q4Z3BabHVzQVVQMFRub2ZqWUVQek4zZ2c2?=
 =?utf-8?B?bTNmUnpkSi9oWnFMblZBbW9tL0lBVm5mRlFFbEZpSTRhQlE0aVhrVTJkcVVC?=
 =?utf-8?B?WEhDTVlQS0FmVkxNcWViQzZzVUFiQTltU1lTOEJRcS91Y3p5dUlYbmlSUjlZ?=
 =?utf-8?B?RkVLWG9IZ3gyTTJIbjh6YzVsdUQ1R0RoV3BlVVJHS2VwNS9YM2hyVlNMQlhX?=
 =?utf-8?B?a3FaM1RrMlA0TDJXWDFiSmJBSlFtMHNkd1hUTk9KNHdCWW56WGwzTkRvZWd5?=
 =?utf-8?B?VnVEempUdU5sYkJBZ3E1U3B5SDFSY3hPTkl4VDllNnp0dnJmRGFqTlU5S1hm?=
 =?utf-8?B?bU5sODAzME11akRjYklGeGZRTHR3c2dsTWV6bnhCYnVxZUM2enlwakFUMk4w?=
 =?utf-8?B?QVJhOWhyaVdvWUV3SlM3bEpwTU5VUW5WV2haUm5obWtJNUorbjZFZ2RqcXVL?=
 =?utf-8?B?ZE9naHZyZ2cvUFd1NXRDQVZDbXRJVkZpVkdLY25uTlprYkRoZTFDN0xWR1pi?=
 =?utf-8?B?anJPcFVPeXVGby95T0x1OGkxVVZwR2RBRUFrZ0hHNkJacldEWXFmNEUzWTVi?=
 =?utf-8?B?MTJpS3lONzlpNFhicWtob0xHdFNIWm5JK2tJRk1vM1ZLdkNzVzJESVV0bWVq?=
 =?utf-8?B?THZGa0xDWkFvQXhqUTdWaThhZ3BHbUJucVFzNlFQWENNWHM2UnpIbmNBSFFo?=
 =?utf-8?B?K0xsRHpLQmxSTCtpRVR1TjVFS1N3bkNzQm5HQnExVDlZUjg2S2xrdXkyTDRo?=
 =?utf-8?B?RWEySkdONEFUd29LSjR4MFVrVklRcnVOVFNnT2pYamdLNmpDOUJRTmhmd1Za?=
 =?utf-8?B?d0lJNVo3akhhRVFhUlI3eHJrdDVhU1FudVVzaDJtYTVrMTBtQWpBVlAvTDdV?=
 =?utf-8?B?TFRHNmlOTDZBVHVhMjhwYXA4L05TS1dScG5YOG1BbXAydHBmWDVFVG5QTitn?=
 =?utf-8?B?dEUvcHY1bThITGIrT1NrYnFHUU5xcmRhN3lhSzMvWmx4UFVEV1BGbkpNclZN?=
 =?utf-8?B?VE1ZSk80NVl4NWNvUk5HV3Y4MDZCc2VEK1JJcG1ITURIM2NxTzdMeHNjNXdL?=
 =?utf-8?B?ejlOQjhiOS9zemRqMVBIVXJhWitaS3h2eUt1bE9mN2ZWbWZCeTNxV2JVUUQ5?=
 =?utf-8?B?NHJqbWZ6RnJjZnozQzVXT1QxSzdpZ2o4bDNnNW1MSWJaS1pTZEVFREx5ckZt?=
 =?utf-8?B?Rlp3TFY4dDFYOWw2eElEanZlYnBscXE0d3hZRnpEVDN5bkw0eHBHVUJPYlQz?=
 =?utf-8?B?YjMwNGY1R3B1UFNIczJ5a2tLeUNGRlhnZGwzNGswdXk0Nm1rWEFuY2c4eVVy?=
 =?utf-8?B?emNISFA5VnRlblA4N1JDa1VCUmkvTktPbTEzVWR4WFR5S3JINVdkL0s5eWNv?=
 =?utf-8?B?NGVuaFNPUnlLTzhRV0FCYXdrTHNIcGpVdzQ4USsvYXBvNkdZZnJOdz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5f38a0c-9692-45a3-2dd2-08da2dae9b2b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2022 09:15:17.9860
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AIdCFqPHvYl8B7loVHQu5FVhsOyJF6VCqZvb9Pdn5Hshxa/wAoKwQL6m+b1/AKJK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3202
Message-ID-Hash: BRMQLFPRXOYEKRUC53F2CJQZO5HF2HLM
X-Message-ID-Hash: BRMQLFPRXOYEKRUC53F2CJQZO5HF2HLM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] dma-buf: introduce user fence support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BRMQLFPRXOYEKRUC53F2CJQZO5HF2HLM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDA0LjA1LjIyIHVtIDA5OjUzIHNjaHJpZWIgVHZydGtvIFVyc3VsaW46DQo+DQo+IE9u
IDAyLzA1LzIwMjIgMTc6MzcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBbU05JUF0NCj4+
IMKgIEBAIC0zOTgsNiArNDA4LDggQEAgdm9pZCBkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGlu
ZyhzdHJ1Y3QgDQo+PiBkbWFfZmVuY2UgKmZlbmNlKTsNCj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9v
bA0KPj4gwqAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSkNCj4+IMKgIHsNCj4+ICvCoMKgwqAgV0FSTl9PTih0ZXN0X2JpdChETUFfRkVOQ0VfRkxB
R19VU0VSLCAmZmVuY2UtPmZsYWdzKSk7DQo+PiArDQo+PiDCoMKgwqDCoMKgIGlmICh0ZXN0X2Jp
dChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOw0KPj4gwqAgQEAgLTQyOCw2ICs0NDAsOSBAQCBkbWFf
ZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgDQo+PiAqZmVuY2UpDQo+
PiDCoCBzdGF0aWMgaW5saW5lIGJvb2wNCj4+IMKgIGRtYV9mZW5jZV9pc19zaWduYWxlZChzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+IMKgIHsNCj4+ICvCoMKgwqAgaWYgKHRlc3RfYml0KERN
QV9GRU5DRV9GTEFHX1VTRVIsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4gK8KgwqDCoMKgwqDCoMKgIG1p
Z2h0X2ZhdWx0KCk7DQo+DQo+IFdoeSB0aGlzIG9uZSBjYW4gZmF1bHQgYW5kIHRoZSBkbWFfZmVu
Y2Vfc2lnbmFsX2xvY2tlZCBjYW5ub3Q/IEkgbWVhbiANCj4gb2J2aW9zdWx5IGl0IG11c3Qgbm90
IGluIHRoZSBsb2NrZWQgc2VjdGlvbiwgYnV0IGhvdyBkbyBzaWduYWxsaW5nIA0KPiBjYWxsYmFj
a3Mga25vdyB0aGUgY29udGV4dCBvZiB0aGUgY2FsbGVyPw0KDQpXZWxsLCBkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKCkgc2hvdWxkbid0IGV4aXN0cyBpbiB0aGUgZmlyc3QgcGxhY2UuDQoN
ClRoZSBsb2NraW5nIGNhbiBvbmx5IGJlIGRvbmUgYnkgZWl0aGVyIHRoZSBmcmFtZXdvcmsgaXRz
ZWxmIG9yIHRoZSANCmRyaXZlciBleHBvcnRpbmcgdGhlIGZlbmNlLiBBbmQgaWYgeW91IHRha2Ug
YXQgdGhlIGFjdHVhbCB1c2VycyB0aGFuIHlvdSANCmluZGVlZCBzZWUgdGhhdCB0aGUgb25seSB0
d28gY2FzZXMgd2hlcmUgdGhpcyBpcyB1c2VkIHRoZSBkcml2ZXIga25vd3MgDQp3aGF0IGZlbmNl
IGl0IGhhcyBhbmQgc2hvdWxkIHByb2JhYmx5IGNhbGwgaXQncyBpbnRlcm5hbCBmdW5jdGlvbiBp
dHNlbGYuDQoNCj4NCj4gVGhpcyBtYXliZSB0aWVzIGJhY2sgdG8gdGhlIGlzc3VlIEkgZG9uJ3Qg
dGhpbmsgSSBldmVyIGZvdW5kIGFuIA0KPiBleHBsYW5hdGlvbiB0byAtIHdoeSAiaXMgc2lnbmFs
IiBoZWxwZXJzIGFjdHVhbGx5IG5lZWQgKG9yIHdhbnQ/KSB0byANCj4gZG8gdGhlIHNpZ25hbGxp
bmcgaXRzZWxmLCBhbmQgYXJlIHRoZXJlZm9yZSBoaXQgYWxzbyB3aXRoIHRoZSANCj4gc2lnbmFs
bGluZyBhbm5vdGF0aW9ucz8NCg0KWWVhaCwgZXhhY3RseSB0aGF0J3Mgd2hhdCBJIGNvdWxkIG5l
dmVyIGZpZ3VyZSBvdXQgYXMgd2VsbC4gQW5kIEkgdGhpbmsgDQp0aGF0IGl0IGlzbid0IGdvb2Qg
ZGVzaWduIHRvIGRvIHRoaXMsIGJlY2F1c2UgaXQgcmVzdWx0cyBpbiB0aGUgDQpkbWFfZmVuY2Ug
YmVpbmcgc2lnbmFsZWQgZnJvbSBkaWZmZXJlbnQgc291cmNlcy4NCg0KV2l0aG91dCBpdCBpdCB3
b3VsZCBqdXN0IGJlIGNvbnNpc3RlbnRseSBzaWduYWxlZCBmcm9tIHRoZSBpbnRlcnJ1cHQgKG9y
IA0Kd2hhdGV2ZXIgY29udGV4dCkgdGhlIGV4cG9ydGVyIHVzZXMgdG8gc2lnbmFsIGl0Lg0KDQpU
aGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywNCj4NCj4gVHZydGtvDQo+DQo+PiAr
DQo+PiDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQs
ICZmZW5jZS0+ZmxhZ3MpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOw0KPj4g
wqAgQEAgLTU4Myw3ICs1OTgsNyBAQCBzdGF0aWMgaW5saW5lIHNpZ25lZCBsb25nIGRtYV9mZW5j
ZV93YWl0KHN0cnVjdCANCj4+IGRtYV9mZW5jZSAqZmVuY2UsIGJvb2wgaW50cikNCj4+IMKgwqDC
oMKgwqAgcmV0dXJuIHJldCA8IDAgPyByZXQgOiAwOw0KPj4gwqAgfQ0KPj4gwqAgLXN0cnVjdCBk
bWFfZmVuY2UgKmRtYV9mZW5jZV9nZXRfc3R1Yih2b2lkKTsNCj4+ICtzdHJ1Y3QgZG1hX2ZlbmNl
ICpkbWFfZmVuY2VfZ2V0X3N0dWIoYm9vbCB1c2VyKTsNCj4+IMKgIHN0cnVjdCBkbWFfZmVuY2Ug
KmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIodm9pZCk7DQo+PiDCoCB1NjQgZG1hX2Zl
bmNlX2NvbnRleHRfYWxsb2ModW5zaWduZWQgbnVtKTsNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
