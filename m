Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 790D94F7E5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 13:49:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 893F1402B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:48:59 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2080.outbound.protection.outlook.com [40.107.244.80])
	by lists.linaro.org (Postfix) with ESMTPS id 837713E9E4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 11:48:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvVJPasZYX1rHDdNFWzgyoj3QJQVWVdFsh2QRfctPSPQZjMModgaxuPtuV3DAC7vf39efEG/b2Y0zpsvJERKuIj19GTUFRORRS0IGJWIcRrI3ZFLoCKMno9WNbMYlEXweWSwGuKvBk1ckiVGEotisOmxvj8fzw/lkmJ2fN67/Tiojq9utc/yzBRJuq6h5hOweQ5eiQEZXF9wZ7jifrQKbCKn87U0zHGix550ljrrjG2bkasQv41ydTEfFsryxn9JiwvKZjDnZUuVCkI/fRYGAmzgSb5hZWLNwP6AQlb9fAycFnK2ANvCNJMisS6baEitj944CTjQEEg+1EmlzCKUGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2tBYqNTQ3rhkv+kRsfDpV6bH79EabTtZ3xzN5ausHYc=;
 b=Wn3nx79+gTPfgzENz7jT7IkwFqtZ8XxJJTFvHsLJVjUS6mFWio4mj1xKAMYpngH4ir1jdFPgnM/ReUVnALAr1TTUYY5ohbzLJ532URWbjP/vlfRwJu29cZTC2ZdEh9PiD00mC013PmjfZud4aGI4kawnh9fkLqDR/Tu33IgkcbVAD5oMk/1E0toMJxNE+ghGS5TjmdkHY7Mj1HNLFjvC0x+wNv8o1laLl4+qC0eG6IUkmrOGFRv3OAEBSWqOKUIe+F/xHHMWFkxEF9IryeXfIB+iVHjsEDUerkdgGOgqBUaAtkHtCKoCcXaR39XVlOsVdzC/skJwA/KaHMkti5XfFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2tBYqNTQ3rhkv+kRsfDpV6bH79EabTtZ3xzN5ausHYc=;
 b=Va2ylq1tUkGiel8eo+73te8ZDr8QoreN/aAolT9poFESQqkUqQjqk7yMabmZ7sqMgo/ddsDed2YrowEDpV6ATb7AE7ZeFVPi0JWxfijAevRxKy9Bq8SmOWzV2DDusli/e4j3Eka3RrTdnSAXBCe4Kfkh0JugiwQZ5V21Ve0jIAo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BYAPR12MB3541.namprd12.prod.outlook.com (2603:10b6:a03:13c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Thu, 7 Apr
 2022 11:48:52 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5144.022; Thu, 7 Apr 2022
 11:48:51 +0000
Message-ID: <aa19b3ad-62d7-3ff2-4b28-5d34fc6120de@amd.com>
Date: Thu, 7 Apr 2022 13:48:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>,
 Boqun Feng <boqun.feng@gmail.com>, linux-kernel@vger.kernel.org
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-16-christian.koenig@amd.com>
 <Yk6spNv/zSCB2ewe@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <Yk6spNv/zSCB2ewe@phenom.ffwll.local>
X-ClientProxiedBy: FR0P281CA0039.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::22) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f9bdef4-d6f0-4d37-1a87-08da188c955d
X-MS-TrafficTypeDiagnostic: BYAPR12MB3541:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR12MB35413292ABA7FA1673E78D4F83E69@BYAPR12MB3541.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4MvrNIVQvQ3KDCXkwPvx1HY4YOui4VhBS0+vqj4shK0JaJ6l8WPCa6tdd51zP0TfdogmhFoNzFOAssI/hWr6pSszX1G6T0SieSQioxXExQzfbLgIf/2e3vetJ44vb9iKvqxaO303ygfberQD6wNS7nJ2zqU2sXTbnIMb9JyXH414BHZaTiBm/EtuG3/Bj4kRnNRekBQuhMtlFtokZVggwCb5LmitWHYiF8Pczgp2KEDZnSamP4Uj8qTx5sqtQsejYnCgMMjlVR2Eswy12NCOC40r2DDgKdt611StC6gqcJ3EibuRn3x8sW0XAhwIqwZDE00uZ6dbKQ41vhkYLIGDFYge+xmR0e9mGGsghzUnJkR/NTsTp8r2kNQnlGO6xBwGcmFHMueO9ajZ3V8FkXsZC2ZzIoE8Kujm337TyBqeXcxiBIlLAEmdYkgzOtWcZO/100sLCIvfCDXHkrBEoo5iFP++jm7wHoRS7uertintRUOw5OQfrXpM8yNjvftT109FDwb4/heA43XXgNI5yiVzwQ/nZZm2q7XJM4ATdCdQWBYA9HyfeQyU489Sfq/ko2GinUx0v5MeKH0ouDHg9envkKTsWY1FzlonYEhAaHCSdVBkV1AzAMnXdtpzmnU19Mjb7N0khSHBHQ/sbWzzuepP0KZpAauIaWPnKu34998MELrSZnROYo0kxgPcp+NHhqu6ZfLbHeaoiiraRwiRp4FQcugt0/Al6XYySLgugdmKbRkbsvYLRYhxQ3PRGVdJ6P/S
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(31696002)(2906002)(508600001)(86362001)(6486002)(83380400001)(6512007)(38100700002)(8676002)(66946007)(2616005)(921005)(36756003)(66476007)(66556008)(26005)(66574015)(7416002)(5660300002)(110136005)(6666004)(186003)(6506007)(8936002)(316002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y0xLcGZJRVNjYjJEZFlsZzV3dkQyVW0wcit6MlNGTzdORXNiak96eFl4Q0t2?=
 =?utf-8?B?YVRMWkNER3hsaFU0UFBjU01HUERITmNHaXMyam9adUZpNHpJeC8wNVB1MEtx?=
 =?utf-8?B?bGg4NEFXa09FbEZ0UVZmcTlGUldTbDZhK1hLRjIwNHgrTmZacE1VZEJEdHFx?=
 =?utf-8?B?MFJBODJBWldMdGNHU1E0TlorbFNKZEEzcUlzSks3N29PNWd2TjdRYmZFTHB0?=
 =?utf-8?B?dm9XMDJ1S0RHam9FU0tka09WWlJuNjd1TDRSTktzL0M5QkV0b3BIdFhwQXZX?=
 =?utf-8?B?Zkh1d2hrVXNtamlQdTNPL3JZZGl6dHh6aURVZ245NkVlYTJ2c0pXMHBBdFNh?=
 =?utf-8?B?ZzRUWG9mWkh5Y3RMSUVBTk1valgxSkFiVk9EdUgvWU1lQ3pFVjNOdlJma2JH?=
 =?utf-8?B?WU5IVEFnWGl6NGFJakpZcnNEU2xMUVJDL2p0SS9QMU56RDF5d0ZtUW5PcDdD?=
 =?utf-8?B?K1JYWEhaVFJ1NzNJVE9YRCtTVW5yN0d6cGRHaVdjc2szVlBWZFJIYXEwd20x?=
 =?utf-8?B?ZCtCMmU0ci9TUCtId2ZPSkJwT1dkYityWE5MbTVZQmRLd2dWbldiTmdrYXdj?=
 =?utf-8?B?WnlHbkM2dFlFTFJ2dXhhNGtqdmE2L0pNenZ6Um92SGN5M1ExMzI2bmM2V25x?=
 =?utf-8?B?cE1MemU5NGdzclF4U0FkbkJrU2h1ekcrYXJYVndnTzJMdkRUNVovK0J6WHVr?=
 =?utf-8?B?amZXMUV4RlZDaGdkd2VoaGV0Y2FubEV5WTVOUEl4dFp1WXVJOWg3dDBIUENq?=
 =?utf-8?B?d3paWTQzVTRkY3FBejBoSmFoelhjRit5NGdXRHZzSnhtNndyMVFPbUdzTUJK?=
 =?utf-8?B?Zzl5RTZpZWZWdlJzVDQxbGI2OTJIcWFHTkdNZDRrRnRvS2Q5bGNUZzZsYytS?=
 =?utf-8?B?RnVIeGlaNW1teG5GQjloYzZPTEtKQlkzWE5xSm5hM2ZrVUU0M0thRVVrUExk?=
 =?utf-8?B?TTJVRXF5dlV3T0Z3bDBSSWVWVnowOS84WWdvQ09oMjRRNGZpRlRZZE83RVpl?=
 =?utf-8?B?UFhVQWF4MXhBc0pjRFNpRWJmYUNWNjd4R0I3S1NzNEVzd05Pd2JhamVuTGs5?=
 =?utf-8?B?TjJvUXlvcmV2MXA1YUdzN3gyNkxBODRkeFlPeHc1dnFINzZqZDhTQmwzN0ZD?=
 =?utf-8?B?UUUyb3c5c0YwMXhvbldxOWxZalUrUHovTThsVFp5NitMbmtmcTBIVG9GMUZQ?=
 =?utf-8?B?Y2FvbWhXelVYbkZNK3RKZE80UFNuL1B1cnpQdnRIN29vZTVhWC9TdmZZSjBL?=
 =?utf-8?B?K3grT3Rabk4wWjdMNzIwYjd0UTVFWEZKcHFFdDBucnc5U2pCWHJjc0dLaFpD?=
 =?utf-8?B?bzRuRlNHcllmZjZ0RjFqbWRGRDZYcHhYZS9aY01Nc1kzVWVhL2ZqbGtHSEtY?=
 =?utf-8?B?YkhJenRseUtldmljZWQxRjU3NlFyeVQ0b29tQXZvUWoxcElxN1FNU1EydnB3?=
 =?utf-8?B?TDdLbzlleGN3ZU9aM2dNeEJRbzRwTUlidXVGRlVTcUkvVUhQSzJkbXdackFi?=
 =?utf-8?B?RjVyWU9kdUc3RkE2NmxmUXcvRXhrdTVhcklSdTVicCtSMFk5RTZNV29md1R0?=
 =?utf-8?B?WE9EOWpZd0Z6Yk9xNUI1d0lYcTExSUY0aWtIK3JvVFVWT3VVTnFnVHB1UXVF?=
 =?utf-8?B?aFVZYzFHU09LN1NqTmJHMkk4alJHZkhRUXhtUitkNi8wbzQ1ZDdBODdlOGJu?=
 =?utf-8?B?aGs0MGdrUWo1RytLVzg1MmtpRTlmNXdPcXd3cW1vamFsalczU0lsdnZCMXlP?=
 =?utf-8?B?U285Um9pdENlRG1TZlhEYWdFMTY4VUtRbEI3TVZwZmdwYzBaSlZuTURnbERG?=
 =?utf-8?B?bjl4L0tHdmFNU1dRN1EzcDFWbTdOMWtEZEhOeTlTNmhrTFZoN3FqeWRMOFBv?=
 =?utf-8?B?UERGeDdQVVFJNXJvajB4NjVtSHdwdkZOZU1vYWJ5YVZhZ08yNW9mdnhqYzVY?=
 =?utf-8?B?ekMvbDE1Z1NGdERzNXgrSzlQZXp2UXFLQk0zVWthU3ZpU21DbHlmaE1pbENQ?=
 =?utf-8?B?ZG9HQ3VKQ3Q3Q2NvdVh4SHBiTTQ1TmZLTndDWEhVMzJ3U1dFZDZEM1Ryb3lG?=
 =?utf-8?B?c21mNGhKbzI4UHJSY2RtOTVxU1h4cVMxYk9TZTlBeTdYZXk4TmtyNDEzZncy?=
 =?utf-8?B?TUlYOCtqcVNuZ1VMQWlnMU9uZklKaXhLeFh1RDlTUTFLV1BRVllydDlnOUtp?=
 =?utf-8?B?Y0Njcmd4NDROOEpWR1dHY0ZjekVpOWxlSktqVFJlU2phVnRqK1Z2bDg2dHFv?=
 =?utf-8?B?VW4xYjE4KzZyOUFUMVY0cmJDYVJVd1p5aHdkOXFMZStVUzhEZS80d0pxbXoz?=
 =?utf-8?B?OVR4MHY2ZnFMUDNKWXU0aTN4MzZ2Tk1uKzNoVmQ1SFZzcTFRUDE0dz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f9bdef4-d6f0-4d37-1a87-08da188c955d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2022 11:48:51.1741
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y3yM5GyDL22UCQl1gRQ5E1AgyxdOfxFLigyPhacgH6rgZQp/e3FfKP9M6r9GBAgi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3541
Message-ID-Hash: BRWU42QGOWVUSWDXDTYZGU4ZD3L2GX74
X-Message-ID-Hash: BRWU42QGOWVUSWDXDTYZGU4ZD3L2GX74
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15/15] seqlock: drop seqcount_ww_mutex_t
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BRWU42QGOWVUSWDXDTYZGU4ZD3L2GX74/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMDQuMjIgdW0gMTE6MTkgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUaHUsIEFw
ciAwNywgMjAyMiBhdCAxMDo1OTo0NkFNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gRGFuaWVsIHBvaW50ZWQgb3V0IHRoYXQgdGhpcyBzZXJpZXMgcmVtb3ZlcyB0aGUgbGFzdCB1
c2VyIG9mDQo+PiBzZXFjb3VudF93d19tdXRleF90LCBzbyBsZXQncyBkcm9wIHRoaXMuDQo+Pg0K
Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPj4gQ2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4NCj4+IENj
OiBJbmdvIE1vbG5hciA8bWluZ29AcmVkaGF0LmNvbT4NCj4+IENjOiBXaWxsIERlYWNvbiA8d2ls
bEBrZXJuZWwub3JnPg0KPj4gQ2M6IFdhaW1hbiBMb25nIDxsb25nbWFuQHJlZGhhdC5jb20+DQo+
PiBDYzogQm9xdW4gRmVuZyA8Ym9xdW4uZmVuZ0BnbWFpbC5jb20+DQo+PiBDYzogbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZw0KPiBZZWFoIEkgZG9uJ3QgdGhpbmsgd2UnbGwgZXZlciBuZWVk
IHRoaXMgYWdhaW4sIHd3X211dGV4IGFyZW4ndCBjb21tb24gYW5kDQo+IHRoZSB3d19tdXRleCtz
ZXFsb2NrIHRoaW5nIHdhc24ndCB0aGUgYnJpZ2hlc3QgaWRlYS4NCj4NCj4gUGV0ZXIvSW5nbywg
YXNzdW1pbmcgeW91IGFncmVlLCBjYW4geW91IGFjayB0aGlzIGZvciBtZXJnaW5nIHRocm91Z2gN
Cj4gZHJtLW1pc2MsIG9yIHdhbnQgdG8gcGljayB0aGlzIHVwIGxhdGVyIG9uIHdoZW4gdGhlIGxh
c3QgdXNlciBkaXNhcHBlYXJlZA0KPiBpbiBMaW51cycgdHJlZT8NCg0KTXBmLCBJIGRpZG4ndCBu
b3RpY2VkIHRoYXQgcmVtb3Zpbmcgd3dfbXV0ZXguaCBmcm9tIHNlcWxvY2suaCBpcyBjYXVzaW5n
IA0KYSBwcm9ibGVtIGZvciBmdXRleC5oLg0KDQpKdXN0IHNlbmQgb3V0IGEgcGF0Y2ggdG8gZml4
IHRoaXMgYmVjYXVzZSB0aGUgYnVpbGQgc2VydmVycyBhcmUgcG9pbnRpbmcgDQpvdXQgbm93IHRo
YXQgZHJtLW1pc2MtbmV4dCBpcyBicm9rZW4uDQoNClBsZWFzZSByZXZpZXcgQVNBUCwNCkNocmlz
dGlhbi4NCg0KPg0KPiBDaGVlcnMsIERhbmllbA0KPg0KPj4gLS0tDQo+PiAgIGluY2x1ZGUvbGlu
dXgvc2VxbG9jay5oIHwgOCArKy0tLS0tLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L3NlcWxvY2suaCBiL2luY2x1ZGUvbGludXgvc2VxbG9jay5oDQo+PiBpbmRleCAzN2RlZDZiOGZl
ZTYuLjM5MjZlOTAyNzk0NyAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgvc2VxbG9jay5o
DQo+PiArKysgYi9pbmNsdWRlL2xpbnV4L3NlcWxvY2suaA0KPj4gQEAgLTE3LDcgKzE3LDYgQEAN
Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L2tjc2FuLWNoZWNrcy5oPg0KPj4gICAjaW5jbHVkZSA8bGlu
dXgvbG9ja2RlcC5oPg0KPj4gICAjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4NCj4+IC0jaW5jbHVk
ZSA8bGludXgvd3dfbXV0ZXguaD4NCj4+ICAgI2luY2x1ZGUgPGxpbnV4L3ByZWVtcHQuaD4NCj4+
ICAgI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+DQo+PiAgIA0KPj4gQEAgLTE2NCw3ICsxNjMs
NyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgc2VxY291bnRfbG9ja2RlcF9yZWFkZXJfYWNjZXNzKGNv
bnN0IHNlcWNvdW50X3QgKnMpDQo+PiAgICAqIHN0YXRpYyBpbml0aWFsaXplciBvciBpbml0IGZ1
bmN0aW9uLiBUaGlzIGVuYWJsZXMgbG9ja2RlcCB0byB2YWxpZGF0ZQ0KPj4gICAgKiB0aGF0IHRo
ZSB3cml0ZSBzaWRlIGNyaXRpY2FsIHNlY3Rpb24gaXMgcHJvcGVybHkgc2VyaWFsaXplZC4NCj4+
ICAgICoNCj4+IC0gKiBMT0NLTkFNRToJcmF3X3NwaW5sb2NrLCBzcGlubG9jaywgcndsb2NrLCBt
dXRleCwgb3Igd3dfbXV0ZXguDQo+PiArICogTE9DS05BTUU6CXJhd19zcGlubG9jaywgc3Bpbmxv
Y2ssIHJ3bG9jayBvciBtdXRleA0KPj4gICAgKi8NCj4+ICAgDQo+PiAgIC8qDQo+PiBAQCAtMTg0
LDcgKzE4Myw2IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBzZXFjb3VudF9sb2NrZGVwX3JlYWRlcl9h
Y2Nlc3MoY29uc3Qgc2VxY291bnRfdCAqcykNCj4+ICAgI2RlZmluZSBzZXFjb3VudF9zcGlubG9j
a19pbml0KHMsIGxvY2spCQlzZXFjb3VudF9MT0NLTkFNRV9pbml0KHMsIGxvY2ssIHNwaW5sb2Nr
KQ0KPj4gICAjZGVmaW5lIHNlcWNvdW50X3J3bG9ja19pbml0KHMsIGxvY2spCQlzZXFjb3VudF9M
T0NLTkFNRV9pbml0KHMsIGxvY2ssIHJ3bG9jaykNCj4+ICAgI2RlZmluZSBzZXFjb3VudF9tdXRl
eF9pbml0KHMsIGxvY2spCQlzZXFjb3VudF9MT0NLTkFNRV9pbml0KHMsIGxvY2ssIG11dGV4KQ0K
Pj4gLSNkZWZpbmUgc2VxY291bnRfd3dfbXV0ZXhfaW5pdChzLCBsb2NrKQkJc2VxY291bnRfTE9D
S05BTUVfaW5pdChzLCBsb2NrLCB3d19tdXRleCkNCj4+ICAgDQo+PiAgIC8qDQo+PiAgICAqIFNF
UUNPVU5UX0xPQ0tOQU1FKCkJLSBJbnN0YW50aWF0ZSBzZXFjb3VudF9MT0NLTkFNRV90IGFuZCBo
ZWxwZXJzDQo+PiBAQCAtMjc3LDcgKzI3NSw2IEBAIFNFUUNPVU5UX0xPQ0tOQU1FKHJhd19zcGlu
bG9jaywgcmF3X3NwaW5sb2NrX3QsICBmYWxzZSwgICAgcy0+bG9jaywgICAgICAgIHJhd19zDQo+
PiAgIFNFUUNPVU5UX0xPQ0tOQU1FKHNwaW5sb2NrLCAgICAgc3BpbmxvY2tfdCwgICAgICBfX1NF
UV9SVCwgcy0+bG9jaywgICAgICAgIHNwaW4sICAgICBzcGluX2xvY2socy0+bG9jaykpDQo+PiAg
IFNFUUNPVU5UX0xPQ0tOQU1FKHJ3bG9jaywgICAgICAgcndsb2NrX3QsICAgICAgICBfX1NFUV9S
VCwgcy0+bG9jaywgICAgICAgIHJlYWQsICAgICByZWFkX2xvY2socy0+bG9jaykpDQo+PiAgIFNF
UUNPVU5UX0xPQ0tOQU1FKG11dGV4LCAgICAgICAgc3RydWN0IG11dGV4LCAgICB0cnVlLCAgICAg
cy0+bG9jaywgICAgICAgIG11dGV4LCAgICBtdXRleF9sb2NrKHMtPmxvY2spKQ0KPj4gLVNFUUNP
VU5UX0xPQ0tOQU1FKHd3X211dGV4LCAgICAgc3RydWN0IHd3X211dGV4LCB0cnVlLCAgICAgJnMt
PmxvY2stPmJhc2UsIHd3X211dGV4LCB3d19tdXRleF9sb2NrKHMtPmxvY2ssIE5VTEwpKQ0KPj4g
ICANCj4+ICAgLyoNCj4+ICAgICogU0VRQ05UX0xPQ0tOQU1FX1pFUk8gLSBzdGF0aWMgaW5pdGlh
bGl6ZXIgZm9yIHNlcWNvdW50X0xPQ0tOQU1FX3QNCj4+IEBAIC0zMDQsOCArMzAxLDcgQEAgU0VR
Q09VTlRfTE9DS05BTUUod3dfbXV0ZXgsICAgICBzdHJ1Y3Qgd3dfbXV0ZXgsIHRydWUsICAgICAm
cy0+bG9jay0+YmFzZSwgd3dfbXUNCj4+ICAgCV9fc2VxcHJvcF9jYXNlKChzKSwJcmF3X3NwaW5s
b2NrLAlwcm9wKSwJCQlcDQo+PiAgIAlfX3NlcXByb3BfY2FzZSgocyksCXNwaW5sb2NrLAlwcm9w
KSwJCQlcDQo+PiAgIAlfX3NlcXByb3BfY2FzZSgocyksCXJ3bG9jaywJCXByb3ApLAkJCVwNCj4+
IC0JX19zZXFwcm9wX2Nhc2UoKHMpLAltdXRleCwJCXByb3ApLAkJCVwNCj4+IC0JX19zZXFwcm9w
X2Nhc2UoKHMpLAl3d19tdXRleCwJcHJvcCkpDQo+PiArCV9fc2VxcHJvcF9jYXNlKChzKSwJbXV0
ZXgsCQlwcm9wKSkNCj4+ICAgDQo+PiAgICNkZWZpbmUgc2VxcHJvcF9wdHIocykJCQlfX3NlcXBy
b3AocywgcHRyKQ0KPj4gICAjZGVmaW5lIHNlcXByb3Bfc2VxdWVuY2UocykJCV9fc2VxcHJvcChz
LCBzZXF1ZW5jZSkNCj4+IC0tIA0KPj4gMi4yNS4xDQo+Pg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
