Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4FD4045DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 08:55:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A7416362A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 06:55:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 462EC63423; Thu,  9 Sep 2021 06:55:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3992608CD;
	Thu,  9 Sep 2021 06:55:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 028F0605FF
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 06:55:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F1A2F608CD; Thu,  9 Sep 2021 06:55:49 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2048.outbound.protection.outlook.com [40.107.236.48])
 by lists.linaro.org (Postfix) with ESMTPS id E9834605FF
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 06:55:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8hi416SYQ8OmtSXb2elLen7azLgACPET8/naLugxb7qCJ648k+e6NAgIROY1xS2ffNDE6walsPwHoqJ4rMfFhMwMnuq4vR+qhPc3mUmU7nzj3zNgCqBkUVwBXKw+qauyrgHO7iGPGhPekL7PpSU7rdZ9ZR0+71JZ/jMA2vuu9xVVUXSHgLrTB6WdD1XZdM6i6zvlZ0OdFxN2s2yT6YcxSQ4gON1mUy5z1F85FT5DDRETxbTlUHZpFBd2JUu/zMBkYFA3WwvUFYd0WOnKSaCZqbqNVnMU4JQexisUz7FbmofvK/AeXBcwEOedGyindK70OA56+4CVTQ6jTrdHomppg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=teFepYySKYD2C48iFNbnpJ3EzklsUFTx0ylm39NuI5s=;
 b=NCbtHPW3IKxiYFrEgemV6f8sHy2+Oybgq3Eck0MdP3fVmld/C+Gl5EK2waWIYhHr6x1thM6kJT9LBvbvFZ6SEnFXGPM1W0QPJ00RxCbi2EkXMAnaIDmapSHr/X0emsPpbkZUN0R2w9ef/HDBtfi5YPVt9VPcKBwa1CLwFZrFjI8kKTeT38xsMpC1JGqQgARBPiEcq9JOcV3ZXS3uZns2lFSvxwU2ZMsu9jGnzOEl1sdfMwVcv7FLgyQyid5GUJLDME+WVs88cMO2yVV7kw3oCy2BCJazOHO+IxAAbXck32BM4PrFFJFxGLeIsBK3SedfUBNYHkh5oREYkoxUYIvTLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=teFepYySKYD2C48iFNbnpJ3EzklsUFTx0ylm39NuI5s=;
 b=dB3T59yd29okl/cXEJ00Sc9PPcjLtcDuoCmqVs5BoL/ZBDQOE0H9AtBlMAL9YZVxeCpwQVyt2qJDB/NmwJM765LCp83q1/Jukh6jKGisxcQ3g70Nmjno/sKeqmmZkgJozzpX2PbZyJ4BJuGP0uBgsLyjc80G1u538pnRMA6GaBM=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4755.namprd12.prod.outlook.com (2603:10b6:208:82::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15; Thu, 9 Sep
 2021 06:55:45 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe%6]) with mapi id 15.20.4500.015; Thu, 9 Sep 2021
 06:55:45 +0000
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@chromium.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan
 <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-7-robdclark@gmail.com>
 <YTj6S1yVvBPAZ9RJ@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <dae7e0ce-5159-b935-2387-b6a6a961be5a@amd.com>
Date: Thu, 9 Sep 2021 08:55:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <YTj6S1yVvBPAZ9RJ@phenom.ffwll.local>
Content-Language: en-US
X-ClientProxiedBy: AM0PR06CA0120.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::25) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:327b:a453:3daa:de36]
 (2a02:908:1252:fb60:327b:a453:3daa:de36) by
 AM0PR06CA0120.eurprd06.prod.outlook.com (2603:10a6:208:ab::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Thu, 9 Sep 2021 06:55:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f8bfe381-3a19-4d05-ac4c-08d9735ed8a8
X-MS-TrafficTypeDiagnostic: BL0PR12MB4755:
X-Microsoft-Antispam-PRVS: <BL0PR12MB4755DA44286D68A611E0083683D59@BL0PR12MB4755.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EKMZnT/3CJzLzhnggAaQcNGi18dt+SFuefOCRPlVSmIGP+YV1EqVWUkXW5+yXw/POwkKFtrOITei26zphFsVMalF3UE+6mAQHzcQp2bqQO8rvoI5VNb1/2WN5s9bLO9JSP6XTemnJzB7TbIMaHWqx2tKg1HQMICAH1nQXt4MNlmaW+ZcA3jKkS5si7XnbVJ14c9CnYy2C1wMpHxqD7MaXceHSDcovNntr7utOM4hklqjP/WDtKstTSRFT4lIfuMzE+OkBvhZnaXpyxKZMFbYnIWeLLEKfRqazmOtCim6TKrJ07n1tqK4RBIVeU1FkqWw2IudjDX/OAJChBWRXTWKHMhJjLzDwH04JXk1VUSjcsrKTYo3ljfqV58KUBb2tzMAmRdjIIBD0FBH7HTcQmCXq58+nA3hihkmqZ9oDxwaPPTVq7n2MES68JqTtiGxsNazDZ/C5f4coUOmDpHhmCvMOvV4pUSz9wRYHyiIgvZqCsV149ujeiu5zuA8vGyIWbknUIPD+Sn+TIUkgocslcAkpLpGPKxhywr7dWXgl2TK6uMhW/MEfHr9lZYuDATKNpx500djEryRQH/tSavXjFTzkLzn43vhoTSoUTFW72Uy/5bTiOJ46t0iklX0X8Em67mh/YA6egaC7iNq+3c5XcwlLn+3BXRorGF4bZ1O+om0xjK6CN2975NBNlQ+1xEHcX2BuAdFQ0/1OR+5/IOZbtlq67U/hmk9kMxOj0fTzCK3AlJTKKjJ4f+gqgOsvRx8XE+8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(136003)(396003)(346002)(366004)(38100700002)(2906002)(478600001)(36756003)(2616005)(316002)(66556008)(186003)(31686004)(7416002)(110136005)(66574015)(83380400001)(8936002)(86362001)(66946007)(6486002)(921005)(8676002)(6666004)(5660300002)(31696002)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXJzbUJTa3EvVFUraXA0UHJIaENsaUs1Mk5xbGtBbkxJRGk0N3pSdFBMUDNM?=
 =?utf-8?B?ekZJME5QSUY4MFFueHo5QmVnN2phdHg4bU1YZDRsVkVCbDhKYytMaktEUWNq?=
 =?utf-8?B?ZS8vMEtVV2lucENKSzUvcVBsbWN3YklGaXBhNkhaekU0K0pwM1NQTmk2SytK?=
 =?utf-8?B?L3FKQkdWVTA0ZG1YWUdGNms4USsrN3BlcG81VDBEYyszTWNaWTU5NWlKaXE1?=
 =?utf-8?B?Mi8vUzFUdDR1dTJqQVliL0szQ2Vrc0R0a0Y4dUpHb1U0SnF1VXBnbDZBQXVt?=
 =?utf-8?B?V21FWElqY0M0QW5GU2hLNnhkb1FmUURpMmI1Rk9TY0tWTDMvbEQvMjZsZTh6?=
 =?utf-8?B?dG5JN3JvemliRlNWbFA2MGtYYmR1UXQvNUkzWEY3eFBydWJEZDBVanBEYkJw?=
 =?utf-8?B?a2ZocnVaTnZNUktORy9IMUwyaDB4cWJXSGUrNU1XVHdIdU1iWkVxYnN1M1d5?=
 =?utf-8?B?WUtERWpZd2tOeDI3MkJTUko5bFNNemJjOXl3V2NpL3FqTXBmK1BIYjlRVFVu?=
 =?utf-8?B?VXlySzlpYXJJT0hXQTBMZy81SGNjS1hLZUtBejE4MlBDVmtaM2w1YUVDYjVj?=
 =?utf-8?B?bEY0amN5S1k3TTZEbUpCRHYvYkt6S2hWOUdDTC94L3ZObVY1MnlWVC9Gdi9J?=
 =?utf-8?B?MXg3ejNTK3kvRS9FSTRXZjZBMHB4ZkNSWDdDMzVhQTdCVUt2aXU4SWpKUzF4?=
 =?utf-8?B?U3R5Ujl4cGhXcDhzNUFPZ3cwU0VFMlZXZjBPT3ZmLy9ITDlhWWhlTWljNzha?=
 =?utf-8?B?RW9ycGhuNXhQL1lLUUhqV2thdDQ3THJISWpsN2tvZUNGVDVaVTlBZWJreWR5?=
 =?utf-8?B?WVVQcUVYaWJWR1hWN1FmVGpLb3V2VFk0TlU1eTVwaXRENjA0QmFKM1plUjdM?=
 =?utf-8?B?UXpHckgyRjUyTzJNenVHbWVmeG9GQWFrdjlaZFV5QU40eHplazc0YVRaZlVj?=
 =?utf-8?B?S0RqNHpWT0YxVEVDVWt2T3ZETWdYNVk1NzBUNERkWTlocnJxNFhYbjR0U015?=
 =?utf-8?B?cHMvUGZSdzZXSlU3dm84bEVQQTFZb3RKK2JWeWw1Q1RoREtENEZyVWVBVU1r?=
 =?utf-8?B?dGd6MFNwT2lUMmpUSEJ1enkzYW5yZFBHMlF5VUVaWXNaNGo1L0dBa3BEK3Iw?=
 =?utf-8?B?MkdZZXNiOFliMHFzWVhvVkd1S1NYYmNIOEtQVW1hZXRtYmpnY0VYNmovNHo1?=
 =?utf-8?B?Y3o2M2h0U25jUmJkcjR6dDRITlQ1WjJZb2R6MndtUHVTRllUY0dLSEtaVVBO?=
 =?utf-8?B?OHVSR0VNV003R2tVTzIvb0p0ejMwZVpMR01Bb0M0MkFaUE9xR3BvOTdPaTRx?=
 =?utf-8?B?RmNEZjBWUWdadzExTjEzb3k0eldTMmVjVWZHd0N6M3RPd0RQK3RhdnlRVXh2?=
 =?utf-8?B?V3h0Z2kvL0FxYVhWN1F0Nm9VUm12RzJwMzdJRlgvOXlkNEd5ZlVmSjNvcG5P?=
 =?utf-8?B?YzRLWksvSzlUeTY2NkRCUEtYSlhNMXRuYnBJaWQ0YWl4ZzB5K2lvNFE5Ym5E?=
 =?utf-8?B?TkxhNkV3YU8xcG4xdzIwSFZKNEJweXN4Vll0Z3kyZHJWbHhsYVB5dFJuUExi?=
 =?utf-8?B?aFNqMzNURk4rVmxFVWI2dG5oeUM5T2xHVE9QUTRWdmtCVmJudHdMRVFlTWN5?=
 =?utf-8?B?Tjh1TXQ4VjJnTFVCbEREKzFjeCtFUzZXenFLSW1ndUhHYVBKZUNSWDFtNXVq?=
 =?utf-8?B?d0tVT0RiZ3pkbmZJTytvSWRpS2s5dExuMjRUNVJmajZGOEd3K3BuMnFIUWxz?=
 =?utf-8?B?WDVtbWFvdTJKUURsWHlkLzNLZzZicUExeXh1VUVib0U5MHg3eDVQVW4rOUd3?=
 =?utf-8?B?QnUxWEZWVVZ0SVJZdjJoL2c1YzZDSE1TSTBnUmZCOC96TUYrNmpiQjdMS2Mz?=
 =?utf-8?Q?1cBPNCvBLl2Vn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8bfe381-3a19-4d05-ac4c-08d9735ed8a8
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2021 06:55:45.2796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gZtBaUXvty48A6JKOwjwKmKg8d2Ej4WQiDHJRAUJc48WY84c0Q+pMA788KQ/kM9Z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4755
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 6/9] dma-buf/fence-array: Add fence
 deadline support
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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

QW0gMDguMDkuMjEgdW0gMjA6MDAgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIEZyaSwgU2Vw
IDAzLCAyMDIxIGF0IDExOjQ3OjU3QU0gLTA3MDAsIFJvYiBDbGFyayB3cm90ZToKPj4gRnJvbTog
Um9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBS
b2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDExICsrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UtYXJyYXkuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYwo+PiBp
bmRleCBkM2ZiZDk1MGJlOTQuLjhkMTk0YjA5ZWUzZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UtYXJyYXkuYwo+PiBAQCAtMTE5LDEyICsxMTksMjMgQEAgc3RhdGljIHZvaWQgZG1hX2ZlbmNl
X2FycmF5X3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4+ICAgCWRtYV9mZW5jZV9m
cmVlKGZlbmNlKTsKPj4gICB9Cj4+ICAgCj4+ICtzdGF0aWMgdm9pZCBkbWFfZmVuY2VfYXJyYXlf
c2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAo+PiArCQkJCQkga3RpbWVfdCBk
ZWFkbGluZSkKPj4gK3sKPj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSA9IHRvX2Rt
YV9mZW5jZV9hcnJheShmZW5jZSk7Cj4+ICsJdW5zaWduZWQgaTsKPj4gKwo+PiArCWZvciAoaSA9
IDA7IGkgPCBhcnJheS0+bnVtX2ZlbmNlczsgKytpKQo+PiArCQlkbWFfZmVuY2Vfc2V0X2RlYWRs
aW5lKGFycmF5LT5mZW5jZXNbaV0sIGRlYWRsaW5lKTsKPiBIbSBJIHdvbmRlciB3aGV0aGVyIHRo
aXMgY2FuIGdvIHdyb25nLCBhbmQgd2hldGhlciB3ZSBuZWVkIENocmlzdGlhbidzCj4gbWFzc2l2
ZSBmZW5jZSBpdGVyYXRvciB0aGF0IEkndmUgc2VlbiBmbHlpbmcgYXJvdW5kLiBJZiB5b3UgbmVz
dCB0aGVzZQo+IHRoaW5ncyB0b28gbXVjaCBpdCBjb3VsZCBhbGwgZ28gd3JvbmcgSSB0aGluay4g
SSBsb29rZWQgYXQgb3RoZXIgdXNlcnMKPiB3aGljaCBpbnNwZWN0IGRtYV9mZW5jZV9hcnJheSBh
bmQgbm9uZSBvZiB0aGVtIGhhdmUgYSByaXNrIGZvciB1bmJvdW5kZWQKPiByZWN1cnNpb24uCgpU
aGF0IHNob3VsZCB3b3JrIGZpbmUgb3IgYXQgbGVhc3QgZG9lc24ndCBhZGQgYW55dGhpbmcgbmV3
IHdoaWNoIGNvdWxkIApnbyBib29tLgoKVGhlIGRtYV9mZW5jZV9hcnJheSgpIGNhbid0IGNvbnRh
aW4gb3RoZXIgZG1hX2ZlbmNlX2FycmF5IG9yIApkbWFfZmVuY2VfY2hhaW4gb2JqZWN0cyBvciBp
dCBjb3VsZCBlbmQgdXAgaW4gYSByZWN1cnNpb24gYW5kIGNvcnJ1cHQgCnRoZSBrZXJuZWwgc3Rh
Y2suCgpUaGF0J3MgYSB3ZWxsIGtub3duIGxpbWl0YXRpb24gZm9yIG90aGVyIGNvZGUgcGF0aHMg
YXMgd2VsbC4KClNvIFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+IGZvciB0aGlzIG9uZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBNYXli
ZSBjaGVjayB3aXRoIENocmlzdGlhbi4KPiAtRGFuaWVsCj4KPgo+PiArfQo+PiArCj4+ICAgY29u
c3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2FycmF5X29wcyA9IHsKPj4gICAJLmdl
dF9kcml2ZXJfbmFtZSA9IGRtYV9mZW5jZV9hcnJheV9nZXRfZHJpdmVyX25hbWUsCj4+ICAgCS5n
ZXRfdGltZWxpbmVfbmFtZSA9IGRtYV9mZW5jZV9hcnJheV9nZXRfdGltZWxpbmVfbmFtZSwKPj4g
ICAJLmVuYWJsZV9zaWduYWxpbmcgPSBkbWFfZmVuY2VfYXJyYXlfZW5hYmxlX3NpZ25hbGluZywK
Pj4gICAJLnNpZ25hbGVkID0gZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkLAo+PiAgIAkucmVsZWFz
ZSA9IGRtYV9mZW5jZV9hcnJheV9yZWxlYXNlLAo+PiArCS5zZXRfZGVhZGxpbmUgPSBkbWFfZmVu
Y2VfYXJyYXlfc2V0X2RlYWRsaW5lLAo+PiAgIH07Cj4+ICAgRVhQT1JUX1NZTUJPTChkbWFfZmVu
Y2VfYXJyYXlfb3BzKTsKPj4gICAKPj4gLS0gCj4+IDIuMzEuMQo+PgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
