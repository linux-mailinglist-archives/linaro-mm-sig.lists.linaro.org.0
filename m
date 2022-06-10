Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A2C56583B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jul 2022 16:06:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E78314047A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jul 2022 14:06:10 +0000 (UTC)
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2130.outbound.protection.outlook.com [40.107.215.130])
	by lists.linaro.org (Postfix) with ESMTPS id 355973EBFA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jun 2022 07:52:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N5h4D6opVLtSGne5yC0db7N8DZNU7yju62VIC5EHM9XXJloZ5K37t/CLYtnBUSNNkyjL8oc1Duuu73fRTu3Pwvo2ZDvOYoOzXSC8zzG5WAaw0dY5qENROEBSgeZp0yMPiTV+HT250w1V/jkkB5is5aAUTr6C3H1GGHrezvCX1lmErs+vGiwN5Nio8EpowFAda2P2IiSbDK8NUTw2+x8K+kE4tkiVyyWTSFaLMOYZ9VtjUahc6ltYOquT8gOQ4iQg/XWDVJ5O1P4q1r5/lGndRLd4OPQYLuk6hgsFUkZyBTc92K0pM6tAnubgyzTAslyQbWd91jZ96pjRZbGtIATgzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKZoOldyoVb419C3vi8I1N+6etu14Vr1vxkkcwjqACg=;
 b=DWof5XhU8QZ6kzsI/Kl0s0sKkzKVgYxuzVXZ9Pgxe/NnycvEqbXF4XhCim3Xhp2hS5hrr+MREBIRBy4QP4hc4zvrjyAivS1nlId5SSNOuKZ6SZ9F1ZRQMwCvWFwpDKUDCs8HrrShFFhWmWqP4BSTp4m/I82GvwfRZsRPPnbeCZV75IWjLY5YIhY80q+/SSMf0/XXJZw3z+WY4Tj3Lnfax/76VCGWlRS7sV1wWJBol1sSYpaKojKcgkHJgwSHwSlO4q13eVL0ZxWOu9YawrPNIbhB18KPdjJvAjbk5GOrPNx7KZNlatVoCK2j+rOrpAgqOb/BaOyPzFvcVly3ESlGeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo0.onmicrosoft.com;
 s=selector2-vivo0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EKZoOldyoVb419C3vi8I1N+6etu14Vr1vxkkcwjqACg=;
 b=V0BXpiB+uyql0gyQtvog99p/0nm2wz8DMrDCQSR2AjBv4IkU9FnQeXa6eO6RMFVcZrXVfw7my1xc1my82d/90Thjuxm5jS1SrkS/X+5mgHVU0JKDhxoRawlQOOhssfJWcip657Meu1SKeb3SHkOeKto3hi+knpJLHgAfF7xlrqM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com (2603:1096:4:78::19) by
 PS1PR0601MB3689.apcprd06.prod.outlook.com (2603:1096:300:78::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.18; Fri, 10 Jun
 2022 07:52:48 +0000
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::ccb7:f612:80b2:64d5]) by SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::ccb7:f612:80b2:64d5%4]) with mapi id 15.20.5314.019; Fri, 10 Jun 2022
 07:52:48 +0000
Message-ID: <7a689b6c-31b7-61d2-7bf4-6fdf49bb4ae4@vivo.com>
Date: Fri, 10 Jun 2022 15:52:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20220610072019.3075023-1-wanjiabing@vivo.com>
 <c079243c-9084-b565-2320-20453815c79a@amd.com>
From: Jiabing Wan <wanjiabing@vivo.com>
Organization: vivo
In-Reply-To: <c079243c-9084-b565-2320-20453815c79a@amd.com>
X-ClientProxiedBy: ME2PR01CA0062.ausprd01.prod.outlook.com
 (2603:10c6:201:2b::26) To SG2PR06MB3367.apcprd06.prod.outlook.com
 (2603:1096:4:78::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f30d2bf0-464e-4186-6fcf-08da4ab63635
X-MS-TrafficTypeDiagnostic: PS1PR0601MB3689:EE_
X-Microsoft-Antispam-PRVS: 
	<PS1PR0601MB3689C6A6A8B056E862007E0CABA69@PS1PR0601MB3689.apcprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aQxy22c684aAePEda9FhYGeW26AqIMhTTwT6/H5qissipU4/QmU4wat+Sy6ZFYe6MZUWnrYXo6/XqFxl598LZ2ICTOPT/0HhjpvPfp4jpAqLD01Kbg8saDl1hiHWDLGqkICnZ+T8F0KlRZ6FSEo78wu/o+5YRT6hWM+plMmZEuzvPsr3jdfUp4VVFD5Hw8pQnwwhKFznhUEgdPBsxcSTF4ZBXSXzITPROahfQyysfwVzUoCqvni+4vO/at02yif0jAzJekvuqgUyZr10b/P6Afd8h3A1Stgzv16kzJ6/WUbrMXzxfRZK5jk/621BD08vOkV4s859wuq26oFgOta0fOOZixBAUkDY/BMcJZ4uaGndvPXbaIOWWOg8kbmvymbyg/8o1mPFXQk7yphi8jde39M8zsykN73T92aDts8aSi5jISDBf2DXRELo4PBN83VChhdBzYBMVeq3FCg7IiJ5cO7rxwoxhG8N+FGk8RC2qeRMgKXyaGUfXlYK2s3F55bkNd9OMY/mqIa8MZn662CLOpCTGwo6AwosS/miEFA4xvYHWH+SwAOTPyUsiIIVL3V9K8VB8LNKuo46jNPJVDwfOCE6yvxBe4RF11dXLgHf73IysH73LT3ryIF1nYAn0MlQde5Y2Z5m+lTQOZ81/1yAqU8uJnmLTUofT8jbdM+9LaX2ru3BgqmVvMVTKEATOdY4glz269HnLpnye7EDRgdtIg6aH6IVCCG+7CPbUxOj++pIXzIa6k9Ll478MWfZc4EvA5vC2OKZqGTTEmqYaqbLNrdedJgbgmaCkO3GZNTRQyM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR06MB3367.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(66556008)(31686004)(8676002)(31696002)(86362001)(8936002)(5660300002)(316002)(49246003)(66476007)(110136005)(6666004)(2906002)(53546011)(6506007)(508600001)(26005)(6512007)(83380400001)(36756003)(186003)(38100700002)(2616005)(66574015)(38350700002)(6486002)(36916002)(52116002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V3JITEFlZGg2bG9VL3l6RXFUVDRKQ2VCTmt0T0VpQy9OS1gzai9QQTBKdEIz?=
 =?utf-8?B?bkl4RnZ2aFpYKzczREtzbStOTnUyWnRWemdoK0xtM0dsUzVvN3ptMFRvYzRh?=
 =?utf-8?B?Y1J3djMwb09lNzlUUXZlNDQ5MlRiTDFTZmRzQy8vRC93Y05uemhvdStMcVlz?=
 =?utf-8?B?VjVJU3NNNWc4MXlFNVBlVE1NK0w2OGg3ZnRiZUhxY3ZJTVdoMjZlTEJ1STgr?=
 =?utf-8?B?a3RxeEJVQ0JtVndkNW5lN20wVUFGRmwwVCtkTHBZSmFTM1ZBMTk5d25sb0Ri?=
 =?utf-8?B?RWZ3ekZMK3U2N1lVbEdHWVR5bHo0SkZnUWltM3Y4ZVJuSEt3bnVNMXlxZ3hC?=
 =?utf-8?B?MXl6VDBkL2NobmVyMVMxZFFvbzFhWkVaL0ZPK0VNNEdDMURDU0podit4eFBr?=
 =?utf-8?B?RWxaQUd4dnRKUnEyV3lHU0orVWEyVmhIOWllMjNnekZ4NFpmWTNPc2JHTkdn?=
 =?utf-8?B?UFRLTkIxT3ZhbVYrQXdmWEJxRzR0K0F2T3MzeXIvWHJUKytsWDZWZm41a0NG?=
 =?utf-8?B?NGptOXplQlJZT1cyMUdzU3FjSDduanNabUZmNVdCNlBiTENyYjhIOXc4S3BJ?=
 =?utf-8?B?TTdvRVRnSERDbkorTVc4ZXM1cjVrMXNqOFp5cW1OMjhweXk3R1N0L1hSWDJr?=
 =?utf-8?B?RDlsV0plSjE1enBIZTFhOThEQS80cVNGOGZGWllXbnhjOXI1TEtVSnFTL0Zz?=
 =?utf-8?B?MXdjUVpFd01zejhxcURsUEI5KzZ3MXJaa2IyS0RORURWOCtBUkFlWWpoM0tt?=
 =?utf-8?B?aW03dDhIbGVMMHo5RE5yS0p1UlIxK0xoSkFYOW5ETnZkdE1wWitkeWJSTXZC?=
 =?utf-8?B?d05qOGpIYXpHU0VNRTRKUWpDS0RNK2NFN3ZnUGVveVRJMjg2Ky9BSWZOUG1I?=
 =?utf-8?B?cW9aQmNTT1JGY0szQUNwdGhOZGM1N3ZPalJsUWhzZGtVOTMrS1B0SElLbGNu?=
 =?utf-8?B?MW1Vakg1dXhNTE93R29FNHlGeHpZMGk1TU1haFVZUXJMSWdzdHpwdU9pa1k1?=
 =?utf-8?B?a1FVTEVNUVIwZThyakJTTjZhVFduRkxsUWdFY3pBRlhWK1B3NVJIeWFSalhz?=
 =?utf-8?B?VW9UTDdnNTJBbGkyUzd1d1hGM25jTzd3M3U5ZGV0ODlJWW8rREZZR1VVZlIz?=
 =?utf-8?B?QjFZRWtnV1JtUFZkTzYwNGRYdGdQcE4xK0pQdmFKek9WSGlzeVZQZ3laS21x?=
 =?utf-8?B?bUZRajVGQ0plTWlDclhNb2pDMExnbi9GOXJwaUNVQndlaTFuZGt1R1FVbzZp?=
 =?utf-8?B?T2R3cmxVL01UL3phRngrUlJxL3JteVZ0Y0swdm1kamVqZmk1U1dDNmJ1S0hD?=
 =?utf-8?B?cGt3b2ovVFZrQTMrK3NNWlFkZTRDWHV1NzJHRWVmakpiT1B2TUpMd1JXS0dN?=
 =?utf-8?B?R29lWG01bEN0b1ZwejBCR09ueUlPNHM0Q3lrRnFPTjhYUXlVVW9vaEVUdjNC?=
 =?utf-8?B?TXJNbUhNZE40ZG1kSnlpZmNWaUp5NFRPaStVM3BrV3UwcjZyY1NEd1ZUM2lG?=
 =?utf-8?B?UzFzcjJrNEtpR1YwRXAzWTdZSjYrYk5vd1FjcHhtZW9ZQkdNK0g3cW9xamRB?=
 =?utf-8?B?eDVqd0hPV2tuT0ptWVpsWmlvNVlZN09GK0FJbFROQjNGY3FGUG5KOFcyMk0w?=
 =?utf-8?B?UW1CMkNXNituVjN2cmFxdndhUzlwOFZpZVB1WDN0R2VIRm1hVjZiSmZkdWp0?=
 =?utf-8?B?TmZtU3pYWGtiazdtV3BSYTBxa2hENWFXV1pBekVNaHVxNXY0VFZSVmlFSU1X?=
 =?utf-8?B?WGtaRXJjaGlhejUzN09uSldXdnZ4SVhkN29FRzRQVTBPZXA1Nkt1T1A4ajlt?=
 =?utf-8?B?Q0NtaHluRTVRRHoxSjQ3ck5hV0R5MWM5cFlTZkxsSDUvK3BMNERuR05KT1dw?=
 =?utf-8?B?cjFjZ0x5ZVoyVHBwWW0xRXpPRy94ekgveVRLWi9MSzRLM1RGeFBTa3hjak5p?=
 =?utf-8?B?cHlleWltZ09sU2huYW1JYkIvcXEvSnFadElJMkp0YVIzMVhnSTdZM3hFVzBv?=
 =?utf-8?B?OHNVcWE0WFZjZGJIMkdJeWFXQXNGUFlrVE1JbTE5OGhUWHZiWDdNOEVWWXE3?=
 =?utf-8?B?TVpGTWJ3MTNpOHdyVGpvNU55d3pUeUdDQnlaZnBrM0lCQjNKNTNVVi82N2VD?=
 =?utf-8?B?M0FvVjVmVlVncmZqTnl0bVhwNitTN2MrVEFnNElEQUlSS2hZSmZZdWg5WlBV?=
 =?utf-8?B?U2JqVU54RmVCV3VNVEx3YThsL3kxZmRGYm4xM1Noa2YxK0ZDV0lxUWJBUWlS?=
 =?utf-8?B?VHRKVXZUL1JRUmpvbWxvdjVSVHY1SXBkdVBvVzY5NXQ4V3g0ZWRQRHF1ejJi?=
 =?utf-8?B?bEw3VUpSeFFFeHpOVFM3Rll1R3ZaVGZ4WGIxS1FoSEY2NG1XWmthUT09?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f30d2bf0-464e-4186-6fcf-08da4ab63635
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB3367.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2022 07:52:48.2665
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uN1Mhff/SJ13m9dHkLnDnoCiuIJv8dCTCycrihbWROPmr1F752SQrILwssUEQ+uRUfv0NYVG1uM8y9ba1Ccy+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR0601MB3689
X-MailFrom: wanjiabing@vivo.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MAWTUEEP5WST3HY7JE2CWALY3HQLOOUG
X-Message-ID-Hash: MAWTUEEP5WST3HY7JE2CWALY3HQLOOUG
X-Mailman-Approved-At: Mon, 04 Jul 2022 14:06:05 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Don't use typeof in va_arg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MAWTUEEP5WST3HY7JE2CWALY3HQLOOUG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCk9uIDIwMjIvNi8xMCAxNToyNCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMTAu
MDYuMjIgdW0gMDk6MjAgc2NocmllYiBXYW4gSmlhYmluZzoNCj4+IEZpeCBmb2xsb3dpbmcgY29j
Y2ljaGVjayB3YXJuaW5nOg0KPj4gLi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3Jh
cC5jOjc1OjM5LTQ1OiBFUlJPUjogcmVmZXJlbmNlIA0KPj4gcHJlY2VkZWQgYnkgZnJlZSBvbiBs
aW5lIDcwDQo+Pg0KPj4gVXNlICdzdHJ1Y3QgZG1hX2ZlbmNlIConIGluc3RlYWQgb2YgJ3R5cGVv
ZigqZmVuY2VzKScgdG8gYXZvaWQgdGhpcw0KPj4gd2FybmluZyBhbmQgYWxzbyBmaXggb3RoZXIg
J3R5cGVvZigqZmVuY2VzKScgdG8gbWFrZSB0aGVtIGNvbnNpc3RlbnQuDQo+DQo+IFdlbGwgdGhh
dCBkb2Vzbid0IGxvb2tzIGNvcnJlY3QgdG8gbWUuDQo+DQo+ICpmZW5jZSBzaG91bGQgYmUgdmFs
aWQgYXQgdGhpcyBwb2ludCwgd2h5IGRvZXMgY29jY2ljaGVjayB0aGluZ3MgaXQgaXMgDQo+IGZy
ZWVkPw0KDQoqZmVuY2UgaXMgdmFsaWQuIENvY2NpY2hlY2sgcmVwb3J0cyB0aGlzIGJlY2F1c2Ug
ZmVuY2UgaXMgZnJlZWQuDQpCdXQgdXNlICdzdHJ1Y3QgZG1hX2ZlbmNlIConIGNhbiBhdm9pZCB0
aGlzIHdyb25nIHJlcG9ydC4NCg0KSSBhbHNvIGdyZXAgYWxsIGNvZGUgYW5kIGZpbmQgaXQncyB1
bnVzdWFsIHRvIHVzZSAndHlwZW9mJyBpbiB2YV9hcmcsIA0Kb25seSB0d28gZmlsZXMuDQoNCmdy
ZXAgLVIgInZhX2FyZygiwqAgLiB8IGdyZXAgJ3R5cGVvZicNCi4vZHJpdmVycy9kbWEtYnVmL3N0
LWRtYS1mZW5jZS11bndyYXAuYzrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmVuY2Vz
W2ldID0gDQp2YV9hcmcodmFsaXN0LCB0eXBlb2YoKmZlbmNlcykpOw0KLi9kcml2ZXJzL2RtYS1i
dWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jOiBkbWFfZmVuY2VfcHV0KHZhX2FyZyh2YWxpc3QsIA0K
dHlwZW9mKCpmZW5jZXMpKSk7DQouL2xpYi90ZXN0X3NjYW5mLmM6wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHR5cGVvZigqZXhwZWN0KSBnb3QgPSAqdmFfYXJnKGFwLCANCnR5cGVvZihleHBlY3Qp
KTvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcDQoNCkFuZCBvdGhlciBmaWxlcyBhbGwgdXNl
IGRlY2xhcmF0aW9uIG5hbWUgZGlyZWN0bHkuDQpTbyBJIHNlbmQgdGhpcyBwYXRjaCBtYWtlcyBj
b2RlIGNsZWFyZXIgYW5kIGZpeCB0aGUgd3Jvbmcgd2FybmluZyBieSB0aGUgDQp3YXkuDQoNClRo
YW5rcywNCldhbiBKaWFiaW5nDQoNCj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPj4N
Cj4+IEZpeGVzOiAwYzUwNjRmYThkNWEgKCJkbWEtYnVmOiBjbGVhbnVwIGRtYV9mZW5jZV91bndy
YXAgc2VsZnRlc3QgdjIiKQ0KPj4gU2lnbmVkLW9mZi1ieTogV2FuIEppYWJpbmcgPHdhbmppYWJp
bmdAdml2by5jb20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2Ut
dW53cmFwLmMgfCA0ICsrLS0NCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1k
bWEtZmVuY2UtdW53cmFwLmMgDQo+PiBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53
cmFwLmMNCj4+IGluZGV4IDQxMDVkNWVhOGRkZS4uMTEzN2E2ZDkwYjMyIDEwMDY0NA0KPj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KPj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KPj4gQEAgLTU2LDcgKzU2LDcgQEAgc3Rh
dGljIHN0cnVjdCBkbWFfZmVuY2UgKm1vY2tfYXJyYXkodW5zaWduZWQgaW50IA0KPj4gbnVtX2Zl
bmNlcywgLi4uKQ0KPj4gwqAgwqDCoMKgwqDCoCB2YV9zdGFydCh2YWxpc3QsIG51bV9mZW5jZXMp
Ow0KPj4gwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytpKQ0KPj4gLcKg
wqDCoMKgwqDCoMKgIGZlbmNlc1tpXSA9IHZhX2FyZyh2YWxpc3QsIHR5cGVvZigqZmVuY2VzKSk7
DQo+PiArwqDCoMKgwqDCoMKgwqAgZmVuY2VzW2ldID0gdmFfYXJnKHZhbGlzdCwgc3RydWN0IGRt
YV9mZW5jZSAqKTsNCj4+IMKgwqDCoMKgwqAgdmFfZW5kKHZhbGlzdCk7DQo+PiDCoCDCoMKgwqDC
oMKgIGFycmF5ID0gZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShudW1fZmVuY2VzLCBmZW5jZXMsDQo+
PiBAQCAtNzIsNyArNzIsNyBAQCBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqbW9ja19hcnJheSh1
bnNpZ25lZCBpbnQgDQo+PiBudW1fZmVuY2VzLCAuLi4pDQo+PiDCoCBlcnJvcl9wdXQ6DQo+PiDC
oMKgwqDCoMKgIHZhX3N0YXJ0KHZhbGlzdCwgbnVtX2ZlbmNlcyk7DQo+PiDCoMKgwqDCoMKgIGZv
ciAoaSA9IDA7IGkgPCBudW1fZmVuY2VzOyArK2kpDQo+PiAtwqDCoMKgwqDCoMKgwqAgZG1hX2Zl
bmNlX3B1dCh2YV9hcmcodmFsaXN0LCB0eXBlb2YoKmZlbmNlcykpKTsNCj4+ICvCoMKgwqDCoMKg
wqDCoCBkbWFfZmVuY2VfcHV0KHZhX2FyZyh2YWxpc3QsIHN0cnVjdCBkbWFfZmVuY2UgKikpOw0K
Pj4gwqDCoMKgwqDCoCB2YV9lbmQodmFsaXN0KTsNCj4+IMKgwqDCoMKgwqAgcmV0dXJuIE5VTEw7
DQo+PiDCoCB9DQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
