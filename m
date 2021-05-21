Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CE538C1C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 10:26:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BFE06171A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 08:26:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2D0606182C; Fri, 21 May 2021 08:26:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68833616BF;
	Fri, 21 May 2021 08:26:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6FDC86167A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 08:26:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6BFEC616BF; Fri, 21 May 2021 08:26:41 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2083.outbound.protection.outlook.com [40.107.220.83])
 by lists.linaro.org (Postfix) with ESMTPS id 3DC2E6167A
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 08:26:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcS3PxTwOmECFhsJJwBxYAVFhhuZ/uztWwtgERtFVdH+TF0npAWuUUkwFXVeWcJ565GDBRLy2X9Rb0GQ0gZfTOY/vHeAC0W7q/RxRsdfzXFvVuMDOoWPOkbGN/rWLMZPOu85VfmTiKKmzJvp1Zx2ozww32JciqDX8Y54KwjeGLvf5Avke5KEzgfoHqYTgxNQOn4Wk6hMIr+xDmX8U0Sy+adBeDd05AjvzsC7jYNrPyjsQ9buy/JwxHFztIsovK0w25qQAzvuh3KbzVnfFzCxEaHocxA2eY4vnAmkg13ykYY2egXwIXwGqYPPpyhMQnE99Md5PJCEv6tZu85eyveeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pm53H/hfQ0HfNCpNlOFtJbiftLPmyKizsSEEcr76cvM=;
 b=FN9bX5yDXzK6w1g/wqbGTxS8W+gNggmNiLhtb49FGE3JiH1b7v1gnYqza/Vu3KRwTXsb63fIqn9qB1LlOJo+ERjhqoj/NlvAmAiWT4DG6JIuHg2I4WccxMpxf98nKECnonkzK4aAdvqQb5DUWHeLSm/YAhRSYGf3FxgRIjU/Q5MSCmLxJL2AzeccwpyISVISIQNhG+GohLP6nZBQ5bZDwF0dDJAapjGF1P+IEldU10pd/mm22V6aFCY1AMLf6F2o3Cmb9cuvC++Y0QSLq6yzuvpsK/ZnhCGW9uSs8JyG9tDSccBMde5O/4OSwO2oZLckfKI2UIQWP0x8aCNCFXIeXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pm53H/hfQ0HfNCpNlOFtJbiftLPmyKizsSEEcr76cvM=;
 b=LbVqhv3fvicGQWQ/xvpnklNQGcVWelEjY6XFFrFzZw00HZzzxV9wQ/qwbERYtxPWx/fCnkwKxbuGUTcOLlupxdRqWlsqQZJUXT3CcETm/DqiZxKjV90vbvTpwgvn2npsdIirViq6m+j8gYnZzFAyuJXmKRCO4L4nMHGGC1SmszM=
Authentication-Results: lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3950.namprd12.prod.outlook.com (2603:10b6:208:16d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Fri, 21 May
 2021 08:26:34 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4150.023; Fri, 21 May 2021
 08:26:33 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210521082457.1656333-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <b8cfff00-2545-8a09-1591-f2f162e2adb7@amd.com>
Date: Fri, 21 May 2021 10:26:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210521082457.1656333-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d]
X-ClientProxiedBy: AM0PR03CA0067.eurprd03.prod.outlook.com (2603:10a6:208::44)
 To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d]
 (2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d) by
 AM0PR03CA0067.eurprd03.prod.outlook.com (2603:10a6:208::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.23 via Frontend Transport; Fri, 21 May 2021 08:26:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6691074c-b768-4bad-073f-08d91c322479
X-MS-TrafficTypeDiagnostic: MN2PR12MB3950:
X-Microsoft-Antispam-PRVS: <MN2PR12MB39508D21E42A007AE8AAD3AC83299@MN2PR12MB3950.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jTYdb16kp3UnDVDHVMtCLB3elK8BvaKzZTZX75K93DqU+lIwe/DgTSnbyrQw4WItMGbJkYRZ/6BoSnMJkR566h4sgG2ji0PP8rNPYhGIYYgwxr4cBN+DqMrLHxWpN/ALl7wtVbnE/D8HUXkXeqGXXpOnPaljqsj6Ucj7OKZJrnBGRLtufLLSdDCJr6clWIalxDr/usaLnSmflks1fjbMTgXpM0T74sRHa9/lDnsT0rLH/OQCuqu6VsfJURyb4J2qRWARrFO2K6WSmcujwsih+L1VKuOQ1WfASpeELnm6S2jpEHYqoolA6GrkqADdWG7/cxaBa1ekp63UaPnMIsKCnNoCgxvFCcZZFeS7UVG7yY+zeFKsMPZMYwB2rxtO5llYfXpu06pLLqV59AgROaSGOBz88N+aMuO3zmBLyzgvy52d/kS+OpNIBwsTe/hfUAihrqqQQmoj4LeIJmJp9aRzkh2zm/3vz7aAuVIovTWSp+ECEKt/bt/wiUd0qssrMreBq2f7vSKmVfH7/vJKdE1xLKrvUmoM2p3hFbjo6osEojnenLuIWB8XtRXxcSw9Ms9a7GmPruJu5sGX3dLgrjA+yGVHJXj7ZiBI5gycFGoTubqQJ+m1lzbFwDbdQfDbcf1LhSS1D5oOZ+GDs/BQFPoswyqdskVvETjZKwXl2dk1ExKmqQ0nDTQe+66qHTQPJyjA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(6486002)(2906002)(86362001)(52116002)(31696002)(2616005)(6666004)(478600001)(38100700002)(5660300002)(8936002)(36756003)(66556008)(16526019)(316002)(186003)(54906003)(110136005)(4326008)(31686004)(66476007)(8676002)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NVN4ZmgxVXc1NU9nMVVHL214WXNqMms1NlpzMWdkWGJ2RFZCd0Y3bTFlVExM?=
 =?utf-8?B?TE1HVElnK3B1bGVJZ2NYMW40QWxPSWpvOWhHT1pKRnNSN1BFdHFkRXVVM2pC?=
 =?utf-8?B?Yi9kMmN4K1VuVHU1UERha28ycVlNd0M1VENLcDdueFdaVjlMUmNySHhNdGZo?=
 =?utf-8?B?M3pyUGYwUW56aG5OY0pOeHh4T3ZwUmR1bmtndTljV2s0TXhUVzJHL0NXS3VZ?=
 =?utf-8?B?b2pueE4yYS8yRVV0SW80Z2UvYnRkTEZqMFBPYlNPOEs2bHF5dzljMHBGMFZR?=
 =?utf-8?B?U2Q3Ty9zY1RFUXR0TWZFb200QkgzM3U2QktZWHJFQkcrMUZjaGw5c2hmWHlh?=
 =?utf-8?B?eng5UkZmcU1RZEI4RWJyM3Q4d1JKMzkyWWpiUmViVkp1b3Y0NDV0SkZ0WWRY?=
 =?utf-8?B?R3J6SHlrSGU2WUM4K0JRbkpYek9FTFhyK0kwMjYvUlU2WE5lTkZnalFEejJP?=
 =?utf-8?B?SUJEMXF3enFmeS9kckNSc3ZrSUNRZER1OFU0bWt5VDQ1VU9VMnR4WFQ0b050?=
 =?utf-8?B?bElyQi9oLzVOTnZMd0ExMDA4VlpVa1ppSy9Pd1JsdGJ6N29IalJ1QmJEWTgw?=
 =?utf-8?B?NEhrT3lxSUtzeWluV3lmZjk0MVc4eXdidkM1VHAraDBsZWwrWjQ5UjQzdEp2?=
 =?utf-8?B?cWVLR1ZURE1IMkRCTmxrRkdBYkhQZ051dHRHUjJsRjhhL2ljaEJmN0tMNWtM?=
 =?utf-8?B?elVyakcyNkFDUmcwMHZDVTZhNG1POGdoM1FyT1YxNXdxRXVtZFdIMHVpbVJj?=
 =?utf-8?B?bC8xS1lCQkhGRVhwWFVVRWxabzdidHJUTjZ3ZEhkQ09GMmVhRVl3UUdhd0RH?=
 =?utf-8?B?Y2REYjA2ME1xVkc4SUlpRFFUMU54dGwrcThwbkJEQzFBZWlGTFMzZHM1bXlG?=
 =?utf-8?B?TGMwWGF0dWFtZ2lDSm1JbGdzNTJDcENqdUxKVUVlY1NFVFNLSG9RSHRHb3Zy?=
 =?utf-8?B?VEVTMitXTHpJZE96bFB0b1FQUnFBckFRVzFMN1NrVzJlck9EYWxXajBNU0E0?=
 =?utf-8?B?Q3NiUmJPMFViNjNUbERSV2xMOUFCTVN4b09IRlErN251RzZmNkswUkxFdjgv?=
 =?utf-8?B?U3NIMmx1MTRGYzNVT2xpT0FSdFNqbEV3Ui9IeDBDT2RnTEpDdXpBbVoweGlz?=
 =?utf-8?B?S2hWR2VUUzhXcHdhVkhBcXE4TGpNNlhmb04yL05qcGZIdXdrTThoUnk0cmJF?=
 =?utf-8?B?RGtydG5ROXgyL1ZPZXh6TXNWT216dUZFanlSbWlyTzN0U0RCVkNkekxhWjA3?=
 =?utf-8?B?dEdoNlJ2Zkt3RmxpdmIyQ29GMmU3NlYvM2czTC91QW8vU0NGMWU2b0JPZklz?=
 =?utf-8?B?cm81T0pzWXZ1WTAyQ0tOdmcwSHR1QU42OXkwK0RQUFpqeWZwaGtYNysrM0RX?=
 =?utf-8?B?OEUzeDVQY0hJYW1HY3ZYcldWYjR1eTkrTE5XalN4T1BLdThaNnFsUitYWmJk?=
 =?utf-8?B?LzQrK1kzYm4zemUyQmVDYjJGNVhpZnprbDByZWQ4Z1lTYjgxdEowd2ZmN3Mv?=
 =?utf-8?B?MC9aN1Nja2FzMndTSFUrdkRSVUdaczlmZ1F1YTFNVExIQXhCTzFTMmVMMDJk?=
 =?utf-8?B?VnRxR0dLTWt1M1dIa3ZvUDNJRFFtbytVaWhVNUJxMlo2NTBWeXRwWlMrM2p2?=
 =?utf-8?B?dmZBcE1pb0h5WVFtazhMakkxSzh6RHBZVmRjMDNWckZmVDlLUDI4bUJqMldJ?=
 =?utf-8?B?MkU2ek8wZkVYQUEybzBmYmxBZTRlVThZZmhVaTAvS0ZjcWRwK2IvYTMyMzNR?=
 =?utf-8?B?VXlXamMweVd4WTBqb3NSeXVoUzRsOEZ1ajhYSVVSY1FpdHJoSkVtckl6Mm1G?=
 =?utf-8?B?N0JYalBMYkVYU2p4Qlo5L2hmOEtRd20wZ2FlYjlBZFl6Q3N5TUlTSE8zR0pt?=
 =?utf-8?Q?6QyFgFpG0c8of?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6691074c-b768-4bad-073f-08d91c322479
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 08:26:33.7748 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lJwhP9sWBc7PJnMiEozyA0MRAI8+meKMhJGggOZ6FJRKPdjzlJcb1RsJ6SMXwO1D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3950
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/doc: Includ fence chain api
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
Cc: linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjEuMDUuMjEgdW0gMTA6MjQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IFdlIGhhdmUgdGhp
cyBuaWNlIGtlcm5lbGRvYywgYnV0IGZvcmdvdCB0byBpbmNsdWRlIGl0LgoKV2VsbCBJIGRpZG4n
dCBmb3Jnb3QgaXQsIEkganVzdCBkaWRuJ3QgaGFkIHRpbWUgdG8gZG91YmxlIGNoZWNrIHRoYXQg
aXQgCmlzIGJ1ZyBmcmVlIDopCgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgoKPiAtLS0KPiAgIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9k
bWEtYnVmLnJzdCB8IDkgKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0
IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0Cj4gaW5kZXggN2YzN2VjMzBk
OWZkLi43ZjIxNDI1ZDk0MzUgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBp
L2RtYS1idWYucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0
Cj4gQEAgLTE3OCw2ICsxNzgsMTUgQEAgRE1BIEZlbmNlIEFycmF5Cj4gICAuLiBrZXJuZWwtZG9j
OjogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaAo+ICAgICAgOmludGVybmFsOgo+ICAg
Cj4gK0RNQSBGZW5jZSBDaGFpbgo+ICt+fn5+fn5+fn5+fn5+fn4KPiArCj4gKy4uIGtlcm5lbC1k
b2M6OiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMKPiArICAgOmV4cG9ydDoKPiAr
Cj4gKy4uIGtlcm5lbC1kb2M6OiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oCj4gKyAg
IDppbnRlcm5hbDoKPiArCj4gICBETUEgRmVuY2UgdUFCSS9TeW5jIEZpbGUKPiAgIH5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fgo+ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
