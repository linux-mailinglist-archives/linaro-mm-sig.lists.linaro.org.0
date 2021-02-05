Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 33671310631
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 09:06:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54C0C6675F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 08:06:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4234B66760; Fri,  5 Feb 2021 08:06:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEC6966759;
	Fri,  5 Feb 2021 08:05:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9FCA16602A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 08:05:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 890A066759; Fri,  5 Feb 2021 08:05:46 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2059.outbound.protection.outlook.com [40.107.243.59])
 by lists.linaro.org (Postfix) with ESMTPS id D7D166602A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 08:05:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccsR30c9mh806hq8iyhQmzLpFd52rqzlis6Ca9CX3qI8D5YGejerO8k3MZsNm/QIGq+kjWWHwnLsKZY/RH0b+cAn+jW24QZ7clPM0QAq28h3OD9BzAgkyy/0feOmrg8FzT3qmpRUZr6jNQBjyuDtKjz1BvwYRFOT35EUPK7s41nEsTWP+1oC/XrcwDb4NdJHdLdERn3M3cEe89kzMcHb65z0aYGSGQS9xhYTmKC358j8UNNDpulZSp+Gu2Vq247wsEkPT1TgVzBFdVY2cXxwmw6r8tSOiFN27LnfvsJEPm5ay52VJjUcm1OeIC5AAL8ZYu/BucX9P+eR7/G5he5EIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JoJ/xwtY1C7gUbACDNAwK09L3m6Tafnh79HAKAyDpk4=;
 b=gj2LBeF6r26wipSOtFogSn5QU03RyEW95TWEYc9e4+WhB0sJHg0qr1DNZF98a9yCWNcyLa9pGc3AO3zRpxVecqm9/sA/+DbPyOk+dWPB9MO47bQRT3jEFoqEuLYRSaqebnaSe1K+XBqltSpD3Z5MBYZiLJ8ISv3nVe5EU/BFtPyBcCw0kBL18MV30tq8CH2H8BUqucEyqMJDEDTVz8a0jUDcLq7jF9ZvW6KecJTP573oB8cBy2txYmwwO3EmSmyLNsuHYFZwgDB8r0c+R6TwlblC642IGpi4NGE4FjQqKvDP/5TqtEVRzmy/7Uef5zbYL2/qRKAl27GmjQI/bvrNJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4343.namprd12.prod.outlook.com (2603:10b6:208:26f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17; Fri, 5 Feb
 2021 08:05:43 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2%2]) with mapi id 15.20.3825.023; Fri, 5 Feb 2021
 08:05:42 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>, Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
 <20210204183808.GY4718@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <8e1de27f-9200-8748-730e-4bd7b94444b3@amd.com>
Date: Fri, 5 Feb 2021 09:05:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20210204183808.GY4718@ziepe.ca>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM0PR01CA0171.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::40) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR01CA0171.eurprd01.prod.exchangelabs.com (2603:10a6:208:aa::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19 via Frontend
 Transport; Fri, 5 Feb 2021 08:05:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 674b2bbf-eb18-451b-44e5-08d8c9acd558
X-MS-TrafficTypeDiagnostic: MN2PR12MB4343:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4343C9CC268A548D920D843983B29@MN2PR12MB4343.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zQ3wn6xDeOuwF7aSqdlAZbOZ/suqZ8EyzRujaFTWmAb8PzyLJrk1p+1peJfU+BZ8gNUWe0NhaEg1trajLJeczSXon4twESE8Y5AGhgMZpWd2HzjX0Jtjep5ANqsgPT9pPC2Kxf1UPsETyljyHpmC8PW4qhZv2wv6nLUVsT5od5MUwylTxWsbN6HhSAq68Aol2gjrmvNq5gGX7tFZ/l76d+CfX1CR95A/0EBkLQkzOtsx2m2l12fjKvLU7S7HLNyY4AQzJslkZwSbuSPWh/z0BRv8FEbqYwEvuazHA59i1GPL4HIwN5yPnmSY90Li7WJY7ZTmhNFhURcl9X0yqcyPevnTZ7A9PCxLL8bwywUoaMXQhQszoTdK+2qAAelbMSMWXHwR8LDNvtT9132cw1SHca8ichf9ns4zrNzHyL2KIrMG4fL0U/XLfv3qkpn5BgIDDIsr1xhWoU4IaQoUJ8twr0ocAzYUKRvnajrVKC5wvnZmZbATYCR44wrNon0Ewqnv9zqyPmWxIQE+ecz7SvaraRqfPPXaZ+JO2ymnChczaYsQdXHtBacYcE93Y0X17875c6W06DALGpXi4XTYWO3RqQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(186003)(6666004)(2906002)(86362001)(16526019)(6486002)(7416002)(2616005)(31696002)(31686004)(83380400001)(8676002)(53546011)(8936002)(36756003)(478600001)(66556008)(316002)(5660300002)(54906003)(110136005)(52116002)(66946007)(66476007)(4326008)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?TjNUWksvTDdTVnhPY3RqM3p5dXdubEFKQklGMUZDU2JlcFdELzI0REx5OEVa?=
 =?utf-8?B?Z2krNENUYmcyeUc1WHptOGJiYkVIWVJZSkFJNGFQdUpOSVlUb01pbGdGY2ZP?=
 =?utf-8?B?TkJsOU1ubjhyQUsveG5ORng4NXh6MGJmLzAyL0JFUlpkYzNwR2EzRktxanRq?=
 =?utf-8?B?S1FEZEdGckNwTkF6SVdXT2ZpZlNoTmEzSmdkTldYTTRLSGo4YVdjNWk1Y1gy?=
 =?utf-8?B?QzhqczViZ2oveTlpV05McDJSbUdlTnkrZHpkYUNIcG5TS2htbjJsU2JUWmpy?=
 =?utf-8?B?SlhCVFRFWVY3T2NvM2pheUE5YlEzY29CS1hra1BtTHBPQlZsR3k0cUgyTTIv?=
 =?utf-8?B?N25PUTZZenZFWkRmc3hYSUVULzhoN2FIdFFrS29odkdqeEZFd3kvcDZTbWsw?=
 =?utf-8?B?NVcrNjdNYmFidTNpWENpY0dZRDd2MWRyUzFkWllkK3JRMGFBVzhYUnB6ZitB?=
 =?utf-8?B?blFqN3lHVUVqT0RxZVFxd0pLb3l5ckZSZlZ4T0pEeVBuTkgyaU5uZlA0L0pK?=
 =?utf-8?B?QVp3WFNuaWF4WUowNkQ0K2ZtTUIyejhCeGxrVGwrREFtTDlKUnBUYXdUZ0xq?=
 =?utf-8?B?RlR1MlBzTTVYcDNCanN1eEFKR1NRR0JVRXpGYTJsUytQZDlZYTNiWEpOT3ZC?=
 =?utf-8?B?Sy9YMlloMmJ3Y1RVMzdnQ1dQeHRiOGQ5cmhKRWZvSi9CZFFvaEV0UkZuZkJr?=
 =?utf-8?B?U2tmTzlrT3VvUlQvL3c1a0Y5enhuTXF0czYxUDFCTVlGZjJrc25VK1RCQXl6?=
 =?utf-8?B?Mms0azRHM2hGV0luQk43cURHdnhBUXlaakpSM01QL1AzSXczb3NtNGdYSURI?=
 =?utf-8?B?dDIrYnVzRXdiWkJNWDhWK1UwSjZvMXVmZS9NRXBBaEFhckg5eTZBRWVmdVJi?=
 =?utf-8?B?cmMvMTVmdDdSQVc4M0l3cW9QaXhDeGVXZ3dpRWxGbkEzK3JmWnBqeTZ3eEl5?=
 =?utf-8?B?UmFRVDMxRUhSSWJvWTlibHhyTjlkQ0EyUWNyUUcyVDV0ZWFVSnJ2S2V3QmEz?=
 =?utf-8?B?ckhQajNiNkVBUlVYakhRNHVCeWFGRFFiU3doY1dtb3VFZlJCNWZMRmpoeHdS?=
 =?utf-8?B?Y3VxTC9kenk1b2xlSERjZkErVGdLSHFZUmZKV256cWNWcWZPWlFrak5OdlFv?=
 =?utf-8?B?NllrVFB6UVU3ZHJzT1lvZG9kRFVhb2hYYjg2bElXanRtMHFObWJBam1iL016?=
 =?utf-8?B?cktYOURSVGRYTGtzcU1HV0JsdVowRXMyc1I2TTNhK3pDVzY0L1NqSktWZURV?=
 =?utf-8?B?MGRySmluUjFLb3pnUko0aHNPYmlsOW01czdaNzRmcXdzSE8zeWd5VjIxaVRH?=
 =?utf-8?B?UlhVdjVJUkw1cVlWRG92WlFGemlGN0xXQzZ4b0R4Y3ZleVFJMkhnbnN1UEJz?=
 =?utf-8?B?OWMvV1pXN0cyK2h6VlRDZm9EUUprRHh6dkdWZExrOWxCVlF0UVlMYXdhSkpp?=
 =?utf-8?B?cHN1RUhINk1SS0kyTDd0bVlVK1NBZlFrZUxERG93OFVSZ2swQ25xbkJCdFRU?=
 =?utf-8?B?SUJGRVlNWjE2dEV2Z0FYejR6dzNnOFVKQ2hhMml6a0ZSeHNsNWNRb1JCRDNZ?=
 =?utf-8?B?OHN2SUpOUGxiMlhrZHY2dklacFI5REs1QUFEUXgyTm9vcGRkeWVMRkJiVkU5?=
 =?utf-8?B?ci95UjByUVZ0MkFTbldma3ordTM1eklYTHRyMjc2VjNNNDJvNkdEc0ZkYXBH?=
 =?utf-8?B?dWNHTHplWEdQVTY2UnM2VEtXMG8rREh4UW5wRWgwSXg0STBFVWlRUWx0Y09P?=
 =?utf-8?B?MjdhWi9kUUduK212SHE3c0h4VDRyTGtTTGdzRXNJR0dBdTRwMzVIODJOVmlq?=
 =?utf-8?B?M3lOc0p1UEFjV0JJUHpzZ1YxZ2RlUk44QWd2ZWxYREh5UlBkczRzWXA0d1Nw?=
 =?utf-8?Q?WRW44iI6PkeF9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 674b2bbf-eb18-451b-44e5-08d8c9acd558
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2021 08:05:42.8732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vbdRAz0bszEhKM6J5A8SwXAT3ZKejnozVxX8mn3G8AB1OSqRVrPShYh2McvwImBg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4343
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Require VM_SPECIAL vma
	for mmap
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDQuMDIuMjEgdW0gMTk6Mzggc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gVGh1LCBG
ZWIgMDQsIDIwMjEgYXQgMDY6MTY6MjdQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPj4g
T24gVGh1LCBGZWIgNCwgMjAyMSBhdCA1OjEzIFBNIEphc29uIEd1bnRob3JwZSA8amdnQHppZXBl
LmNhPiB3cm90ZToKPj4+IE9uIFdlZCwgRmViIDAzLCAyMDIxIGF0IDEwOjE5OjQ4UE0gKzAxMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4gdGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1h
bCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlvdSBjYW4gdXNlCj4+Pj4gdGhlbSBsaWtlIHRoYXQg
KGxpa2UgY2FsbGluZyBnZXRfdXNlcl9wYWdlcyB3b3Jrcywgb3IgdGhhdCB0aGV5J3JlCj4+Pj4g
YWNjb3VudGluZyBsaWtlIGFueSBvdGhlciBub3JtYWwgbWVtb3J5KSBjYW5ub3QgYmUgZ3VhcmFu
dGVlZC4KPj4+Pgo+Pj4+IFNpbmNlIHNvbWUgdXNlcnNwYWNlIG9ubHkgcnVucyBvbiBpbnRlZ3Jh
dGVkIGRldmljZXMsIHdoZXJlIGFsbAo+Pj4+IGJ1ZmZlcnMgYXJlIGFjdHVhbGx5IGFsbCByZXNp
ZGVudCBzeXN0ZW0gbWVtb3J5LCB0aGVyZSdzIGEgaHVnZQo+Pj4+IHRlbXB0YXRpb24gdG8gYXNz
dW1lIHRoYXQgYSBzdHJ1Y3QgcGFnZSBpcyBhbHdheXMgcHJlc2VudCBhbmQgdXNlYWJsZQo+Pj4+
IGxpa2UgZm9yIGFueSBtb3JlIHBhZ2VjYWNoZSBiYWNrZWQgbW1hcC4gVGhpcyBoYXMgdGhlIHBv
dGVudGlhbCB0bwo+Pj4+IHJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJlLgo+Pj4+Cj4+Pj4gVG8g
c3RvcCB0aGlzIGdhcCByZXF1aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUgVk1fU1BFQ0lB
TCwgd2hpY2gKPj4+PiBibG9ja3MgZ2V0X3VzZXJfcGFnZXMgYW5kIGFsbCB0aGUgb3RoZXIgc3Ry
dWN0IHBhZ2UgYmFzZWQKPj4+PiBpbmZyYXN0cnVjdHVyZSBmb3IgZXZlcnlvbmUuIEluIHNwaXJp
dCB0aGlzIGlzIHRoZSB1YXBpIGNvdW50ZXJwYXJ0IHRvCj4+Pj4gdGhlIGtlcm5lbC1pbnRlcm5h
bCBDT05GSUdfRE1BQlVGX0RFQlVHLgo+Pj4gRmFzdCBndXAgbmVlZHMgdGhlIHNwZWNpYWwgZmxh
ZyBzZXQgb24gdGhlIFBURSBhcyB3ZWxsLi4gRmVlbHMgd2VpcmQKPj4+IHRvIGhhdmUgYSBzcGVj
aWFsIFZNQSB3aXRob3V0IGFsc28gaGF2aW5nIHNwZWNpYWwgUFRFcz8KPj4gVGhlcmUncyBraW5k
YSBubyBjb252ZW5pZW50ICYgY2hlYXAgd2F5IHRvIGNoZWNrIGZvciB0aGUgcHRlX3NwZWNpYWwK
Pj4gZmxhZy4gVGhpcyBoZXJlIHNob3VsZCBhdCBsZWFzdCBjYXRjaCBhY2NpZGVudGFsIG1pc3Vz
ZSwgcGVvcGxlCj4+IGJ1aWxkaW5nIHRoZWlyIG93biBwdGVzIHdlIGNhbid0IHN0b3AuIE1heWJl
IHdlIHNob3VsZCBleGNsdWRlCj4+IFZNX01JWEVETUFQIHRvIGNhdGNoIHZtX2luc2VydF9wYWdl
IGluIG9uZSBvZiB0aGVzZS4KPj4KPj4gSG0gbG9va2luZyBhdCBjb2RlIEkgdGhpbmsgd2UgbmVl
ZCB0byByZXF1aXJlIFZNX1BGTk1BUCBoZXJlIHRvIHN0b3AKPj4gdm1faW5zZXJ0X3BhZ2UuIEFu
ZCBsb29raW5nIGF0IHRoZSB2YXJpb3VzIGZ1bmN0aW9ucywgdGhhdCBzZWVtcyB0byBiZQo+PiBy
ZXF1aXJlZCAoYW5kIEkgZ3Vlc3MgVk1fSU8gaXMgbW9yZSBmb3IgcmVhbGx5IGZ1bmt5IGFyY2hp
dGVjdHVyZXMKPj4gd2hlcmUgaW8tc3BhY2UgaXMgc29tZXdoZXJlIGVsc2U/KS4gSSBndWVzcyBJ
IHNob3VsZCBjaGVjayBmb3IKPj4gVk1fUEZOTUFQIGluc3RlYWQgb2YgVk1fU1BFQ0lBTD8KPiBX
ZWxsLCB5b3Ugc2FpZCB0aGUgZ29hbCB3YXMgdG8gYmxvY2sgR1VQIHVzYWdlLCB0aGF0IHdvbid0
IGhhcHBlbgo+IHdpdGhvdXQgdGhlIFBURSBzcGVjaWFsIGZsYWcsIGF0IGxlYXN0IG9uIHg4NgoK
V2hlbiBpcyB0aGF0IHNwZWNpYWwgZmxhZyBiZWluZyBzZXQ/Cgo+IFNvLCByZWFsbHksIHdoYXQg
eW91IGFyZSBzYXlpbmcgaXMgYWxsIGRtYWJ1ZiB1c2VycyBzaG91bGQgYWx3YXlzIHVzZQo+IHZt
Zl9pbnNlcnRfcGZuX3Byb3QoKSBvciBzb21ldGhpbmcgc2ltaWxhciAtIGFuZCBuZXZlciBpbnNl
cnRfcGFnZS9ldGM/CgpFeGFjdGx5LCB5ZXMuCgpDaHJpc3RpYW4uCgo+IEl0IG1pZ2h0IG1ha2Ug
c2Vuc2UgdG8gY2hlY2sgdGhlIHZtYSBmbGFncyBpbiBhbGwgdGhlIGluc2VydCBwYXRocywgZWcK
PiB2bV9pbnNlcnRfcGFnZSgpIGNhbid0IHdvcmsgd2l0aCBWTUFzIHRoYXQgc2hvdWxkIG5vdCBo
YXZlIHN0cnVjdAo+IHBhZ2VzIGluIHRoZW0gKGVnIFZNX1NQRUNJQWwsIFZNX1BGTk1BUCwgIVZN
X01JWEVNQVAgaWYgSSB1bmRlcnN0YW5kCj4gaXQgcmlnaHQpCj4KPiBBdCBsZWFzdCBhcyBzb21l
IFZNIGRlYnVnIG9wdGlvbgo+Cj4gSmFzb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
