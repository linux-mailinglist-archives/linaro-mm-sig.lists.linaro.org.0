Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE854BB790
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Feb 2022 12:04:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B568C3EE64
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Feb 2022 11:04:12 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2047.outbound.protection.outlook.com [40.107.236.47])
	by lists.linaro.org (Postfix) with ESMTPS id 3BBE03EE60
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Feb 2022 11:04:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxHwtP1zRZifj+yJ+Ly6MeXnOXsw72c/GaF+KjBBi16XXLnG7LDYZrqXCtY2FIZj8Ru7+oYJxD5awz+pzudGaZaQImslwD6BJAo/msqE0XKF+pMi4MpYq/+poxu4xZtL+woJZOOF9o9SdsLhW9J9YKPjCvdI5KHVmR/scQF/m2JFosugzNUAbCCNRQrn+iZZ/UoVG7nmoosf9D5Ac+wxonf0dVF1IGps5opvkiaVLcNUQE26Me/yUEoHixuv5edoasWe/o8fU9eC2lPt0UPTnGzpY5uBn3w+XiBd/MG9oK4wGibeD769uUVN/FPpVTgM3q+1CkYkpKPSpboLjkR84A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fnGzXFSax4gw73BvJmffw9F7QjUAk+n4lWb67hEwwgU=;
 b=TLp6Xsr3wfM4oMaZAuLu4JJA+qIO4oGWqC1PUBcoVMZAseVQeKIILRsvyyT3AB14gfBm4iH1YE1I21yFCC38xqCNWEhf/8NAMrAMHfYvsolK1FqWNP7rsrjAB65ekFZgLhTL//lFBoJ+UiNeCIhYWKIdfSsmwAh34UFp85wDl3A/ebu4OrcDhY/fxWY7fzuJi8JhInxsLBrmd3YNopZX81aKxC5r9czGanKfLbmqecbcwtv2BB/fDJ/rlFYIVdRFKs3Ki92257owPkbVb5W6N5q31l5A43jd1i4hTIHU4rep6FCFms0ci4If71vm5DQnSj5LHotPSNlKFIpLHds5DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fnGzXFSax4gw73BvJmffw9F7QjUAk+n4lWb67hEwwgU=;
 b=eqweZwfy1sEAwH/UpiLxLco16DFLJ9dk2Fg1q1QtKAFJhMwj7/Lp1wnoXBQBh4DUnJy83/7NTRslNiRTubR5nim7DANKasGUYE2Dxxgdsp1bnEhzJarkNh8D+eke1Ww2YUtZueQCOVjkuXbOfrFMmRPJRYExNKAUI0HzayjWdLE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BYAPR12MB2871.namprd12.prod.outlook.com (2603:10b6:a03:13d::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Fri, 18 Feb
 2022 11:04:06 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581%6]) with mapi id 15.20.4995.022; Fri, 18 Feb 2022
 11:04:06 +0000
Message-ID: <145041b6-027a-a24a-4da0-7f49c4d46f6a@amd.com>
Date: Fri, 18 Feb 2022 12:03:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20220211125003.918447-1-christian.koenig@amd.com>
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
X-ClientProxiedBy: AM6PR10CA0085.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:8c::26) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de456168-5ed1-490e-54d7-08d9f2ce611f
X-MS-TrafficTypeDiagnostic: BYAPR12MB2871:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR12MB28719BA3DACFCCE9FFFD8C9B83379@BYAPR12MB2871.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0KExLCChh5iY55+zXp+sqgIeLQhB2bqfbAAJYs9cDTGmYKktwPBATNHKX6ph5CKMYIC4jLBhJIc4zJk+9qmHZenUE5DQ8Nvu/260GxA3b6gMoPn8PETZd8+yfg+49f/wmH6kNSSj7Lrob1QjwtXtK3r3yPgnMlYiDBLoY9xDABL03J2Osn+xcca35FFyK8U32VlmDxCX/rJjUnqBgVGMwn4KWNR8WNBR1gOaCrOfi7SEYunCe0icun4+aiOUmvtII5adXShIn79qajCUeC+YXg2fW5QNb9AMfKILcy3mHZH5ptLub9IuLmSgfFiBH9D65ASmU4RIzvUyMyXRn4jtVsvu3lk/pI9WzMXwk2Gz2HYyBnbjUSsVuyMxB0GqVC65SVnTtCrGVSeOCNJM+irDwMl8IH81nLn2e7CUiZkhesV49vJqQJAac/DAaB8UTyS4aDrXE38dC8qPM9oEZYl2hGI+3NLTKuIdMH5YRGLJD8xQeYJLegDUF01nlJSNAUggb8FXZevD50TSevyCfikioWAfAYt2DPgbONcbxsLvYxJvd8fwlqF4Y0AlHpGXyPOfTxDG1YkfeLIhnzC7e8qIbmT9Maxm5yiQq77JEiOPh8yirdCJkjAmdnuxauWsddEPEfunwgWsSlAKfWh9xCf1lH7aynjSrnJDUlHGtk6B8idGazDpR9Rd+Q9bBHL0ZOfltAlR9Auo1MxPfe2g7/dh/H5dtVD3MCcL1tkJieEyAqXeYwgp8EtIMRZDL2/1/uFO
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(38100700002)(4744005)(6486002)(2616005)(6506007)(6512007)(316002)(508600001)(2906002)(26005)(8936002)(31686004)(66476007)(66556008)(8676002)(186003)(6666004)(36756003)(83380400001)(31696002)(86362001)(5660300002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RG0rTHZXNWxrVWo4MndERmNuUG1ZVkxsRHJEdXRjRkFEY1dtZW94OTJXUlkz?=
 =?utf-8?B?S0pLTDNKQXFIU1RSUkZicE91VUpldXlIY0NXVGFSUW5iZVhZTDVGUlpPdUJx?=
 =?utf-8?B?WXhSSWZrOFdHVktySW5pOGsvNmpUQkVHWVRMdExYQ3FRdStxWXRKOTFoclJl?=
 =?utf-8?B?c0tKRldVbm51YUJveGx3YStvSmZKVTVnNGttNHBvUHYwM0FiS0FRcEZsS2Ix?=
 =?utf-8?B?Q3o4b2lDajdENWhvR2JTU1NURE1aNTQ0S2J0SlpSUVgzWk9OOUhlbkZXcUZO?=
 =?utf-8?B?eG1RMHFydm1HUVp2Z1Z4WWNvd1JRMWV2ZTlUM3V1cHFLVUFhb1NHdjRSV0ll?=
 =?utf-8?B?R3FZQTdVL2tadFlZSG1kQUtCbWhxQWR3SVFOMzYwc001TnpxM05EZHpXWTB0?=
 =?utf-8?B?d2ZWN3NyRWs2THRrVVpzcFRyN2ZBK3BZd0NGdFBrUXVZaWpkV1FTMWpoejdK?=
 =?utf-8?B?eEd0eDJZUzlHQWF5eTljWktZVlc4Y2xBUm51UUwzM252VWdlczMvVlExWHBw?=
 =?utf-8?B?M0ZVSGl5OTZoNThSUTJlcjNMVE1STVI0Y1dYZERXSjRLdTQ5bC9GRmVuYzNz?=
 =?utf-8?B?dHN2RW9HN0J0dzNoaDFWY0xmYnNaVG1Ednk2b3hBeEJSd3Rha2JIa1JQa2Y5?=
 =?utf-8?B?eitIcE5ENm9yUXc1Sm5YV2RKcW91aERHQlBkc3duaU5reWszY1cydWdQUm1P?=
 =?utf-8?B?NnhxOG1IQzc4YTgySW1YRGcxZlV2RDVzdDBVOG02Z3R2Sys2K0NEb2hzbkh2?=
 =?utf-8?B?YWNOSXhrNFNNREpGWm1DS3VTaStzVnI0bFpSQklZZ0djTDc5WnM5UGRiS043?=
 =?utf-8?B?U1ladUwzWEIzUUFYdHFhSzNlWWpyL3grUG9aTWFnZDFtYUJTRmpUeW5vemQw?=
 =?utf-8?B?UEdXT2N3RFJ5ZERzdU85bTZBQzdJRFhXRHI0MnZZcnBsNkRvR3lYYTJIS1BE?=
 =?utf-8?B?bEhpaWRqUXM5dlFoNWF2SHMvR0lld3p6dmcyc1o3MDdHQ3JYeEU4QnJEeXJy?=
 =?utf-8?B?VHZZM3VsUkk2dXljMW5SZmhrZHQyV1AyV29LdEs5K0Jvd2F2aTJQMkJVTGEw?=
 =?utf-8?B?amg1QnBpNW5tUStYZk1SRllRS0I5dTh0NVdWRzNQSzZPb1hBNFBKL25PRDRh?=
 =?utf-8?B?RkUxSm9OazZHaTVSQk5UQmh6VnptbEp4UTZjeUk2b1diOUMxUGlXRmdzbFhP?=
 =?utf-8?B?T1FWL2R0a1RrL3F1ajlVN3RYMmF2R1p0Tk9CZkwrejdlMVpiZEJwU3ByOWl3?=
 =?utf-8?B?cHl2NlZUc3VpakxWTlpjeFl5emp4QmJQWERsaXhVUGNkTkFyT0xPNGY5OWJr?=
 =?utf-8?B?RUJmQzVYenJ0OWZ2K1g1YlhoeGNzNkdxYTBTQVRERkVIci80czN1dTNHcldN?=
 =?utf-8?B?V1I1YW1WRUlOZ2JsMm5paFRPVTdpTHJza1k3ODY2bGlwL3JFT241VzVZYm4x?=
 =?utf-8?B?OExkay9UNWo5RWpXemdLY09lMVhrMXNQaEJWRnpWTzNrUXRqYXhEUDdvK1g2?=
 =?utf-8?B?US95dDBNTlZ6UmtFcTRvdmZyYjBtTnVPMkZWQ0RWYjhLak9veGpDZjh3L2lk?=
 =?utf-8?B?aUkwZ3FGZmFtejd0ek4zbFZkK0wwQ3JxSkorUitXYnkyVkNyK0RDRjlrdDB5?=
 =?utf-8?B?dHVNNWQ1ZVNiQzE5QkgzTTRyQzAzVlVyUnFlM0RxbmFKNU5zNnFiY1ltVFdi?=
 =?utf-8?B?Znl0Z3BwNkNkODNmT1lPcUNKN3pFeFhXZzk4UVBmMmhZS3ZkVGIyaXM0dFAv?=
 =?utf-8?B?Ym9VQXFFZWN2ejhQaVVBNUd0RGkzWTdiWGx1NzVBb25DajBZTFZkRFZCenBi?=
 =?utf-8?B?Mko5WFQ4T3lhUG9VS1RuNWRkOTZNN3lvQ1JmbmJYU0srM1p0S0JFSnJaOUlI?=
 =?utf-8?B?TUxMN0hEa2tIWU9qVjJzZ0VocVd3dWlyVW5SSFdxYlYwNjBtMDlmekdhMVV4?=
 =?utf-8?B?R0xpbGNlakptNy9xaWlDUis4NlhndUtvd1lGbmlBQ2xyQzE3RmhHSU9uUDRq?=
 =?utf-8?B?cCs2anMrMEIxdEpweGVUQXlmYWNDWWRvM1FwQTBrU0cvcVVtTVpyMExBVWpQ?=
 =?utf-8?B?LzVCNjhPRVpaQTFOQ29GNi94U2FrOE1iZnhLZWt3aFE3NlM2S3k4c0VNcnlj?=
 =?utf-8?Q?jREM=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de456168-5ed1-490e-54d7-08d9f2ce611f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2022 11:04:06.2200
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m6KPy8zPcaVxZ0OJD+sWSENMQM0bKHSvt/DvQA+teW44TWzS8XezIbidP5VHUdBs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2871
Message-ID-Hash: LEP4ZLJ5HVKK5Y6665P4EYODJ2YIRUNR
X-Message-ID-Hash: LEP4ZLJ5HVKK5Y6665P4EYODJ2YIRUNR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: completely rework the dma_resv semantic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LEP4ZLJ5HVKK5Y6665P4EYODJ2YIRUNR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGFuaWVsIGFueSBlc3RpbWF0aW9uIHdoZW4geW91IHdpbGwgaGF2ZSB0aW1lIHRvIHRha2UgYSBj
bG9zZXIgbG9vaz8NCg0KT3IgY291bGQgYW55Ym9keSBlbHNlIHRha2UgYW5vdGhlciBsb29rIGF0
IHRoaXM/DQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KQW0gMTEuMDIuMjIgdW0gMTM6NDkgc2No
cmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBIaSBndXlzLA0KPg0KPiBieSBub3cgdGhhdCBzaG91
bGQgYmUgYSByYXRoZXIgd2VsbCBrbm93biBzZXQgb2YgY2hhbmdlcy4NCj4NCj4gVGhlIGJhc2lj
IGlkZWEgaXMgdGhhdCBpbnN0ZWFkIG9mIHRoZSBmaXhlZCBleGNsdXNpdmUvc2hhcmVkIGNsYXNz
ZXMgd2Ugbm93DQo+IGF0dGFjaCBhbiB1c2FnZSB0byBlYWNoIGZlbmNlIGluIHRoZSBkbWFfcmVz
diBvYmplY3QgZGVzY3JpYmluZyBob3cgdGhlDQo+IG9wZXJhdGlvbiByZXByZXNlbnRlZCBieSB0
aGUgZmVuY2UgaXMgdXNpbmcgdGhlIHJlc291cmNlcyBwcm90ZWN0ZWQgYnkNCj4gdGhlIGRtYV9y
ZXN2Lg0KPg0KPiBJJ3ZlIGFkZHJlc3NlZCBxdWl0ZSBhIGJ1bmNoIG9mIGNvbW1lbnRzIGFscmVh
ZHkgYW5kIEkgdGhpbmsgdGhpcyBzZXQgaGFzDQo+IGFscmVhZHkgYmVlbiBkaXNjdXNzZWQgcXVp
dGUgd2VsbCBub3cuIEFzIGltcHJvdmVtZW50IHRvIHRoZSBsYXN0IHZlcnNpb24NCj4gSSd2ZSBu
b3cgYWRkZWQgQ0NzIGZvciBhbGwgdGhlIHJlbGV2YW50IG1haW50YWluZXJzIHRvIHRoZSBwYXRj
aGVzIGNoYW5naW5nDQo+IHNvbWUgZnVuY3Rpb25hbGl0eSBpbnNpZGUgZHJpdmVycy4NCj4NCj4g
UGxlYXNlIHJldmlldyBhbmQgY29tbWVudCwNCj4gQ2hyaXN0aWFuLg0KPg0KPg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
