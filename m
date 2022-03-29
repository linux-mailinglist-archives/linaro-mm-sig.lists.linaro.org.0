Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF014EA9A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 10:49:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0E203EBFC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 08:49:49 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2044.outbound.protection.outlook.com [40.107.243.44])
	by lists.linaro.org (Postfix) with ESMTPS id B175B3EBCE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 08:49:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDFoWAPq+ijBNi/Hlh83AJgKtk2owgBzMiu0rLrWHwnXk3c6U5ndJnjF9rIE+ZVbjNABfqi33GvaKT1mFLzexHgDhf2vHyiEK6xoYTk486aGdi/yG9+OGUQFf8It5STR1Chs1rjCVhOUwD6rwA83VZ6M0R4fGFRG6CUOyZ5+3S71TCT1C5PBQwmZrEH/5n5gfD3Y1IcuOl+PmnNGOQXinHkOUaKN6wikkmgaFycjjcsPy2IVWrAzI5ckx9Pdl0zbyTd2xLoMjEuKBTkX11w6atFkHss5sGqWBEdEPmREJmebmPVsae3jIjDLFNwNjoIQSgUQxhwWb2lPoyws9gYnKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8DuwQxi/bJMaSo6yWjycMRG7xAuEg7CIa4PTBx9X3uw=;
 b=Gia2N900tUA9xXY8ZCcjCxZqsF5F03L/cBsaqk+eix1hsXjBPkhKRCmVaw8YyrNUd6wR5AAGh3sqXzEsAJ9HHvHn7ku1MfQ7kS86yNoezgi8XJn1mpX2+WyVgLHne51FqM7VVoI50lYnL9kcUVPnAyHNvxAbTuSOskbAM46wmFagsROpeJFKobWnoDBLPc/HAj4jXA7fE0L/3H7x2s/7bLZGa2GHOltrR7k/qKzfoAHzVkj1haoGt25UZHaZhKyQMOS0kZOwLr8wA8YG31YHTMuvL6NZuO4rpV5PJo/rGk6bssfOHG+fkL9e3CVvT96CihIazdLUn1bJ+RBm+nOkTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8DuwQxi/bJMaSo6yWjycMRG7xAuEg7CIa4PTBx9X3uw=;
 b=ZSbn+70CCWJ1g7S7adF6crmCgVQ21EZWdG2vyteIZfTAzOTBrqHTfcUyvJOz8wALtvIKaSMZ0UmrdUxukHFnYlk/+f4LLDg6H/2KUMAWiA4onoUZp/SxUWO7XMl0xt56RHYpakPE9VitJnodpd2aptLol/qwaD32srUoMxfOnBI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR12MB1420.namprd12.prod.outlook.com (2603:10b6:3:78::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.22; Tue, 29 Mar
 2022 08:49:41 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185%6]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 08:49:40 +0000
Message-ID: <cd372123-4403-6a7d-29a1-1581081a12a4@amd.com>
Date: Tue, 29 Mar 2022 10:49:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220329070001.134180-1-christian.koenig@amd.com>
 <YkLHcMGARAA9Ektl@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YkLHcMGARAA9Ektl@phenom.ffwll.local>
X-ClientProxiedBy: AM6P194CA0052.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:84::29) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3190a713-6de0-4bcd-43b7-08da11611012
X-MS-TrafficTypeDiagnostic: DM5PR12MB1420:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR12MB14203AAC3231F809309E4EFA831E9@DM5PR12MB1420.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	swoqtEITQk4biEmNeJOM1YUbU+aIaF6a7P7ah+E+tFm7Ll/eMkQzTh0rP4MJMkIzAzjcdFireeQHcE7nPIaNLvpsZjlh+HW+G7IW6muD3eImNJgO7M6aE5OegmCZj+4TRoj0dGhecd1pTH8WbJnW6l2xCTxDmKvQRtlW+K3v8FKEnCFMX2c+FOzTqOvi11+cUSl4P3F6YPj10kRANjdESaviI8Gnc8OqFUB+TNfe4FQDXBz8Cda9zkTbF1TMdKOZz24KmPnFGusTRbA+x/GHakB+mxjLvYa3gKKHWylEe0z6nLFHVyfozamDzY+gDGjSa/fAuqZwIfjbaNDH7IoHA2LkNXgZtcd57UpnqseLsfN2W859UaKrqFnmLkO9FbdDkX5Ao27KzcyBlE18r/u33G0DuaeozsA/GMnNq8dlVlTI0wiDlcexbypmAQWJ40exm5E4zg9itIV9hIibTQ4GuneA+9ye3dRr1Q0rcmg7vOJVE3GefLP8C4knWoQFgHD9qwYdDHofY4eM9tKhqcbO1rkqvBHwTK1WdUMEsWcb393o7P2oHsCHzNkeyvmpMImT/suPvpSpj8bmBuskraRM2nkHdgMp5jC7FhCaeErtpaSiUSw9Gzeaz4sSFp2uw75psyhyQWQDsI+/OOAOxtK4P/freh6PkfiWRVkMXpz3EuaFt4RpYyT0iyENcrEaMmRGP91iQ0ggArmaC9CaUm/IEpqpIHaH436cDwopwQjwGjDQgY/yhPpzPacO5wSJ+0fZ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(26005)(186003)(36756003)(83380400001)(110136005)(316002)(31686004)(66574015)(38100700002)(6512007)(66476007)(66556008)(6666004)(6506007)(4326008)(8936002)(66946007)(8676002)(6486002)(5660300002)(86362001)(2616005)(2906002)(31696002)(508600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WGRySUQ5U050NnhkNUZVaVRySjlsQjJXUk55NnhrMVhPT3o1dnNoaFVNbDRE?=
 =?utf-8?B?ZE94REM1M1lvZXd1ekxzdzN4dDRoY0ZSMnIwR0hKMlZpZlk5a1NUUWs1d0Fw?=
 =?utf-8?B?T3VRT2Foc2FJR2RPNXhpOVBkMjBzUWVDa0hyN3RjTWtTSnlCeCtENVBzZ1Q4?=
 =?utf-8?B?eGNHNUZZK215dWg3R3RWSVNKV0pVQWFYTFNkQk52cTVwaTBMdUxIMFBXQUJh?=
 =?utf-8?B?Q1g4Y0lzL0k3QlFpeGZiOFBRRW52OHRXWEhXSFo1Q2tTdXI2Z1JoQ1p4cFVt?=
 =?utf-8?B?aVFiNUFLK3VjZjFpS1FoV1J6MUEvRWJ2UFNyUk50UGVSU09FY05aS0NJK1Ar?=
 =?utf-8?B?Ym9qdmtoUnNxcC82VmpsTDcwVll2SGxYYWpraHlCVC9zZENKYks0b0U5ZEdN?=
 =?utf-8?B?STBVQW1BRWFCTzlLM3dLdmpZTHpCZzdHZUNHMVczYUdHRmJ1UUk2UU0xam00?=
 =?utf-8?B?NTVvU09QczVJUHdPVzBCWDhJeUhtU3FPRThXNWswRnJvOFRhWllpVkNRNXp6?=
 =?utf-8?B?YTdLc0RNRU5XUzlkb2tSbGZwc2Njbm9PdDBwbjV2T2k5SkVpTzZXN21Mcy9r?=
 =?utf-8?B?U0xMTWluSENPT1ZDdUJkYzM3SVFWbEVObmd3blVhNnZVL3FYVHpzVDR5bEo5?=
 =?utf-8?B?SnJZRlV2Snl2YzE4LzcvSko0SFpDZ2JxQ0x0bFpJZStpb3p5L0RFcUt5VWc2?=
 =?utf-8?B?S2ViNEx1SG8raGxZWE9ydURvZHdTTVBPbE9saXNVQWxtSlZlZXBBb2w0allU?=
 =?utf-8?B?aUxhSlRPcmNQNlZqZkgyaGFlMnZmVTF3dEdIS2NHNEhUeVdrcXB5SW52ajZW?=
 =?utf-8?B?blRQNlNuMEFuYVgrUXhzbVdVRk9lcmNMbExZZHJLZFhkRzYrRjNxS1hkaUNj?=
 =?utf-8?B?NllaMjVuc1dMUnBYM1RZMUJ3WGRuMFFobzFnNHB2YlNycWZOdFFWOHY5anhV?=
 =?utf-8?B?dzJsbkNzcW1Rakc3SjZUSUV5OERla1E2bDVmNWNUejlsQ21jck11THFORTNs?=
 =?utf-8?B?Y2pvZ04zVkQrVTFoYWw0OVBNemsxZXcxMDVzUy9IbFBLSlVwcUhkMW5xZWxO?=
 =?utf-8?B?Nk0zdVo0TXhaVFdRaGJuY2pUTWhYRDZYSmFyQ3VpS0xHUFovUFdBOXJLOFdy?=
 =?utf-8?B?bTdkZXZuaTIvZWd6Z3lkUjBONndlR0d1SnNQa3BiM2pNWGp2WkU5Q0lPV2JC?=
 =?utf-8?B?REJTR2E1bnFqU1VpcGdwbTU4MDJLaXZ3L0JnSVFZY20xampsNnMxcnA1L1l5?=
 =?utf-8?B?c291TVpSWDNqWExJNk1CNFBRMlVZK1B4TG1icng1ME41MkdTdnBwRUpxaktm?=
 =?utf-8?B?K2dOdXBTSW9kbDZmUVN4Q0ZUVVNIc25ydWxYVjR0aUE0WTVOZFlrYU1DMy83?=
 =?utf-8?B?NHZoMDQreTFIWWo3R2g3VnFOUVp2Tlp5TDlEeE9vTjlCbGkxZTF3RjJEOGV3?=
 =?utf-8?B?dW9DRHJsejNUZFRmOU9RYVpaeVVGY3ZHR1V5ejFPSG5TSE1tTWxjUFF1MkFs?=
 =?utf-8?B?MU96MVdubTZPdjI3Nll3NmFmNG5xMEpGa3ZBYm5reGtXRlkycDRpOHVLUGds?=
 =?utf-8?B?ZFR0N1p6dWpLbXFVYlNIUmpOUVZqYVVNd1ZjOFhEcG42SzNRQ1h3WUxlYkUv?=
 =?utf-8?B?NGlBN3BwZm02MFN6NE9GUkM2KzFqSVpMeXQvdDBJMDBtSytNcEZCRDY5VnF3?=
 =?utf-8?B?U2hlZFBQWHhwc1V6S0dROEl0Nm5QZS84cnJGd1JVc0pMUEswWW4zc0dOVWZp?=
 =?utf-8?B?UklteFdpSHkvVzNuTW5sM1Q3NllxT0NVaThQbndNNnN4YklPOCtqWEpxaUxm?=
 =?utf-8?B?VGZQUjNkV1A3TWFBZXl5dTJqemUrVDdLaFY1NFRiaDJLSCtJbVJzUXJJY3dV?=
 =?utf-8?B?WUdtUUo4VEY1SGFqYVA2amFTY1NJcFBtdlhPaUZXRUd0alhUc2c0SDhHMHFO?=
 =?utf-8?B?aWxsMEwvOThPZ3pvSjFiQndLT05YczRLbnFSQlNCcWczYmJrS2pPa0tkeTBJ?=
 =?utf-8?B?eDU5QWVQK1duQXN3djFST2hURStoSEJRdnl2enV3R2IxclowWFJjQmduS05w?=
 =?utf-8?B?NzI3ai9CRnRscTV1NTZwTEhKbzZ3OEhOblhnMHF5UGxIdTJUTks2YTl6WUM1?=
 =?utf-8?B?akdWWExqc0ZoYktWdnJZN1dRN1c2cHF1UjdVWGp5WmlkTlU2STJTOWZUQ2xx?=
 =?utf-8?B?aTJwL1hkTHNFUnp5ZDAwSWFGSVBEZE41TnY0SDZscUU0aG00a3pJVTFycDRG?=
 =?utf-8?B?UStrNWF0UENuV2Z4anQwUnE3OEdud1JGcWlpQVd0OENUVFNpNGw4aUdwMExo?=
 =?utf-8?B?Z0d5WkxxMHQvb0oyUUpZTjRsU3FLbFJIM2luY2s1c3RWN1NPOXVIUT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3190a713-6de0-4bcd-43b7-08da11611012
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 08:49:40.7822
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gPwWq7otjixQdyqXQqayY4oL/gfEHxRP3ar6+KlM316BFNN1t/RuDR3FcLaYFNXo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1420
Message-ID-Hash: TSJBTUJ2LYRCTV44ATS337LOG26UTVU6
X-Message-ID-Hash: TSJBTUJ2LYRCTV44ATS337LOG26UTVU6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ville.syrjala@linux.intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf/sync-file: fix logic error in new fence merge code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TSJBTUJ2LYRCTV44ATS337LOG26UTVU6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjkuMDMuMjIgdW0gMTA6NDYgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUdWUsIE1h
ciAyOSwgMjAyMiBhdCAwOTowMDowMEFNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gV2hlbiB0aGUgYXJyYXkgaXMgZW1wdHkgYmVjYXVzZSBldmVyeXRoaW5nIGlzIHNpZ25hbGVk
IHdlIGNhbid0IHVzZQ0KPj4gYWRkX2ZlbmNlKCkgdG8gYWRkIHNvbWV0aGluZyBiZWNhdXNlIHRo
YXQgd291bGQgZmlsdGVyIHRoZSBzaWduYWxlZA0KPj4gZmVuY2UgYWdhaW4uDQo+Pg0KPj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
Pj4gRml4ZXM6IDUxOWY0OTBkYjA3ZSAoImRtYS1idWYvc3luYy1maWxlOiBmaXggd2FybmluZyBh
Ym91dCBmZW5jZSBjb250YWluZXJzIikNCj4+IC0tLQ0KPj4gICBkcml2ZXJzL2RtYS1idWYvc3lu
Y19maWxlLmMgfCAyICstDQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxl
LmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMNCj4+IGluZGV4IGI4ZGVhNGVjMTIzYi4u
NTE0ZDIxMzI2MWRmIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5j
DQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMNCj4+IEBAIC0yNjIsNyArMjYy
LDcgQEAgc3RhdGljIHN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZV9tZXJnZShjb25zdCBjaGFy
ICpuYW1lLCBzdHJ1Y3Qgc3luY19maWxlICphLA0KPj4gICAJfQ0KPj4gICANCj4+ICAgCWlmIChp
bmRleCA9PSAwKQ0KPj4gLQkJYWRkX2ZlbmNlKGZlbmNlcywgJmluZGV4LCBkbWFfZmVuY2VfZ2V0
X3N0dWIoKSk7DQo+PiArCQlmZW5jZXNbaW5kZXgrK10gPSBkbWFfZmVuY2VfZ2V0X3N0dWIoKTsN
Cj4gVWggaWRpb3QgbWUgd29uZGVyZWQgYWJvdXQgdGhpcyBhbmQgc29tZWhvdyBjb252aW5jZWQg
bXlzZWxmIHRoYXQgYWRkaW5nIGENCj4gcmFuZG9tIGZlbmNlcyBpbnN0ZWFkIG9mIGEgc2luZ2Fs
bGVkIHN0dWIgaXMgb2suIEkgc2hvdWxkIGhhdmUgY2hlY2tlZA0KPiBtb3JlIGNhcmVmdWxseSA6
LS8NCg0KV2VsbCBpZGlvdCBtZSB3YW50ZWQgdG8gY2xlYW4gdGhhdCB1cCBmdWxseSBhbmQgbW92
ZSBhbGwgb2YgdGhhdCBpbnRvIA0Kc3luY19maWxlX3NldF9mZW5jZSgpLCBidXQgdGhlbiBJIHRo
b3VnaCAiTmEsIHRoYXQgcGF0Y2ggaXMgZm9yIA0KbmV4dC1maXhlcywgZG9uJ3QgbWFrZSBpdCB0
b28gY29tcGxpY2F0ZSIgYW5kIHRoZW4gY2hhbmdlZCB0aGUgY29kZSANCmFueXdheSBqdXN0IG91
dCBvZiBoYWJpdC4NCg0KQ2hlZXJzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFJldmlld2VkLWJ5OiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0KPg0KPj4gICANCj4+ICAgCWlm
IChudW1fZmVuY2VzID4gaW5kZXgpIHsNCj4+ICAgCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqdG1wOw0K
Pj4gLS0gDQo+PiAyLjI1LjENCj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
