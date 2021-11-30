Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8001A4634B7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 13:42:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 097D060A45
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 12:42:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F146661478; Tue, 30 Nov 2021 12:42:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C808B60A45;
	Tue, 30 Nov 2021 12:42:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5984860753
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 12:42:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4DD9A60A45; Tue, 30 Nov 2021 12:42:23 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2085.outbound.protection.outlook.com [40.107.94.85])
 by lists.linaro.org (Postfix) with ESMTPS id 3739760753
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 12:42:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnaNL8BgEShOt6jUHxxvvEK05CWp6wIZRibcXxVhLYf5PgFQ7Ry9E67FMfDTstQF+SLGIYGDzwdfT9s61elcaZsBlbe431N2QzyJ3sJ8gW0qALA1vFtHqqWTbmFnjlfl25g0/Bw5rbo9NRQqlanq8Q1heK9CzTToUFmOAmMjicwE/Wt4ql4iXteP6UMQZCWPeWkjfByohGS0aIpF2UFmMTBTm8hSpB3Jg1+Zvkyj1WhB9+5j9XRY9+73TajERBHiwkGL30U73jrn5FVlDk3ysPvwigqpgkHV9siB5La0jeFB6WFj0Yf3a6ZlpXY//RbucyXGAVs3w/P8ORqJ+OQPGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=94gzx+3marU94/oQZDHoEWqABw7u0gYVn1gasqnW+Hk=;
 b=n4bflnJYlfpXmmXfJ8kC+37pgJ60UgoZTRHxaPo2HPn8QvXIP+63v52VzjLJPe34bhvc53rJFIYsmcIFdHKw6haOlY1nMbjJYF530y449NB/ephrnhgMkDJAcbjtBjil2yKM2RTFsJohoErVv3X91Wg9vYWoXubCg5MlwOJianeIkQghKla3A4kJ3S8QzXWw0yMcXE+I+lVTRHl2jHBZRjqy850OfjEP8P1OE7cFf5/Qx/HRdQ/QZu3LqdvokbBByRYp7pTCJXLnJPiaOtnoo9tpBrwHxrwGUoyFRgImzsEkQavPHIlWuqqPV01VGEc/H60byO3xuEeJt6Y2ZHa7eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=94gzx+3marU94/oQZDHoEWqABw7u0gYVn1gasqnW+Hk=;
 b=UQOQxt40Hm0KaOkktwkPUE3J688rbhOO5Rfr7kxheYv5+fT4LavJvkJf33204p+EW2wt+kK4Mzgo0IFQ9MsGmF/9MWqK51Yr6rlSYb13tfENdu6ihMbVNaodBYy9OrDWDqaPPEqrwc7CiI3eXiN5O1WFMeny6V8JdypGc3IHRG0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR12MB1341.namprd12.prod.outlook.com
 (2603:10b6:300:11::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 12:42:18 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4713.027; Tue, 30 Nov 2021
 12:42:11 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
 <20211130121936.586031-2-thomas.hellstrom@linux.intel.com>
 <c7502701-e85c-39f0-c249-702d029faa9e@linux.intel.com>
 <b440cfbc-2b9a-1aa2-76d6-17337f835777@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <52a7cf8c-59c7-fec0-2274-d19bdc505314@amd.com>
Date: Tue, 30 Nov 2021 13:42:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <b440cfbc-2b9a-1aa2-76d6-17337f835777@linux.intel.com>
Content-Language: en-US
X-ClientProxiedBy: AM6PR04CA0011.eurprd04.prod.outlook.com
 (2603:10a6:20b:92::24) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:fa20:e17b:e063:b6d3]
 (2a02:908:1252:fb60:fa20:e17b:e063:b6d3) by
 AM6PR04CA0011.eurprd04.prod.outlook.com (2603:10a6:20b:92::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.22 via Frontend Transport; Tue, 30 Nov 2021 12:42:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b70122b0-d32f-4aae-e782-08d9b3fed435
X-MS-TrafficTypeDiagnostic: MWHPR12MB1341:
X-Microsoft-Antispam-PRVS: <MWHPR12MB1341CB3B5EC56BA902A7C56883679@MWHPR12MB1341.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:549;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9S3aL/GgZwVcv07+j5Z/8bp5OJHwp+Zd4i4bKJ997P52spwk2Iu6hpSYuffG+rSy12DGHHJ3N+0iE+SJklzsCbRjznQKGPNluSnpqKfHTmAtH+h4Ko+vSwcvyf9c8VrnUPr6s1/LaFOefqqofyMBc1z4zsxsqL3jXLIaMcLIs2O1Vlh3xbKBRBeA1F8ODaVfeWysahmHg2d23znWNBXYRqOGL85/SzK+GGLOrVQ5B9nkvanflFLc7rTl/Rs9tzK47pajzFwlcZy01sQJfrJnoKvcqU98hUCrJjWOPPAeIhFjeNHv8Kg3H4obacxmjPerMpRFXAzUsJ1rvX8iNCoz2NwkY5uP8By/upAWOJVrzx+KYGgu1QpgE5G7gVw5RbVTfjs3RcpgHPcQyx5dIZPKizyz0eOz8SLK0xx5q8iXhqPdLKIeWaGzAwqkWyBNfbA6FaTPgPwu/XaNoWPwoxO6xQv4scTRcTOriCP9Jj1G5rCxaZzeATu8a1VH1rW62ieu3+mwRiCSdwopEAGep2p/fu28F6F39FGMBAbS0Rf4SjU6bzSdLDnwrUOu/DQUu3uXQjJcKaR+q+/oBK6H+W7wirTqBUvlKDPMaRpvoHQY2cBF0Mnf8kVEg9d3XGCAnURB+6f+NqS1tIH1urRsZR5cFNcpFgpPP7YuucnmvGeYCNvDmmUEiMTtBf4tW2ThAZNDuwGe/4umVBBFEimn9vr34eqdJFOMpYGj0U6vI+FsHQdon96DhMFN5rEpbTpu+UNu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2616005)(31686004)(316002)(5660300002)(6486002)(83380400001)(66574015)(110136005)(86362001)(508600001)(186003)(66476007)(66946007)(2906002)(6666004)(4744005)(31696002)(4326008)(66556008)(36756003)(8936002)(38100700002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXJoMTFVaU5hcm5TUFhXcGp4OWwwclkwNkEybUhkK0dxVlRCZU1qUUI5Vlg4?=
 =?utf-8?B?M1FsT0FrNGJOVDFTVzJUNWJNV3RrYlNnTjZkQ3g1Y25xNGJDQW5kOWQrOVd2?=
 =?utf-8?B?cmhmQ1JyeHRQMnJuRW9Qd3BqcEY1WjllemQ4QVhsclNJd1hibXRLd2g1OEZp?=
 =?utf-8?B?WCtGYTBLb2NjVzdDbG1KU3dicytFdFlsemNleE5tWVVKMXpQai80aGdpR25J?=
 =?utf-8?B?VjVNK2haQys2bmZ6bkNiS2t6WFhWb2t6WkVZQnFudzRickR6MFhMbVpROHVF?=
 =?utf-8?B?ZGE5aTJUUjJBSzcrTlRWS1VWQUZtT3QxdTBHYjVVclJJNy9kSnlsajRtU2ZR?=
 =?utf-8?B?bG5DZ3VmUWlaQ1ZqZVdCQktsTWUwUTM5bEpJYldzckhmUjl6ZFV2K1lsRVE4?=
 =?utf-8?B?QTVBVFpLWEV1YWY2ZXd1NDlncG53NVFXQUgzVDVFVGRJQ0gwbzgyZkRSMmg1?=
 =?utf-8?B?NUZyODJVUXpIbFU1NkNnZVRFaU9vYTh5aEdUcVJ4czN5Y3RYQko5aGc3OEVD?=
 =?utf-8?B?ejJRSnNGbUEwaWVMWDVLTUpUSmp6RmEzUWlzbTd5dU8xRHJ2MTlxcFF3ZzVr?=
 =?utf-8?B?QTZBRlo2bEx2djV6eEFJcE9DU0NYNmczblExZHFGc1lHM0xKckFyN09YWGds?=
 =?utf-8?B?RWJCYktvR1dzdmMyTUpHZ21nQXhmTUF1eGc1bmU1L1hUakNEUHNTYzQ3Y0R5?=
 =?utf-8?B?QUJudm5iMElLOGhYRFFqWVJ5SEVMQVBLdVdxVzJvVUZ6OXlCb2Q2VVJ4SDFj?=
 =?utf-8?B?ay9YWTQrZFdFVTBXRGxTaVNYdElRZGJmU0xucXNXSk1CV1Q1ODdQS1hWVFRL?=
 =?utf-8?B?M3FxcUl4RjJxWmRHSVllcWlkZlhpYnY4K0owamxjSC9NMThBOGFHYW9YV1Qv?=
 =?utf-8?B?TnBGMjVGWm9CNTdqQUc5N2NXdTJJYWg3MHR2Q2FoTHZLc0paamJLY2dIbitW?=
 =?utf-8?B?WVgyK3hadklBRnkzSGZsRGI2UzhwNHc2M2c3dno1UnV3V1NIL1R0cDhyVnlu?=
 =?utf-8?B?alhkSGp5ZnJ3UFZ3Z2FScEhWa0l1aFNsNFNRb0svNjBoMnZhK3lRV0ttcXh5?=
 =?utf-8?B?RTB6S2hzb0lKSFpiVDYzd2g3dCtFMThqbytCUHYyK2I4N0xSelhKRjFnN3dm?=
 =?utf-8?B?RzArTTFncWRFZWpIUjZSTTBZRmQ0N2hNdjcwbkZ6Y0JHR0hBajVvZ25jNHh5?=
 =?utf-8?B?dGpxVDFCTTB1RlgvMWw5bERjZSs0WDVsV1pSa1djWHhMYkdsNVk3RngwTFc3?=
 =?utf-8?B?ZEpiN0luV1ppWnFEVUpJYzFyY2tuQndrOCtiNUVESXRYeEFWY0pyRTdrYVVV?=
 =?utf-8?B?NnZkZkk5b0hid2dqY2ZMOExJRUdZYU9hQjRuVGtEdGIxa3hidjRqZFFlUTRU?=
 =?utf-8?B?Tmt5SEYwbGxhUmJaM3Nla1J0ZDNlVno0TUJNVWpYWHRzdEluTjdyMll5cXg5?=
 =?utf-8?B?L2tJTDBjWlNJMldpeWN3ajl6QnYxRFJIckV5SXo0V2FSby92ZHdlam91bEk0?=
 =?utf-8?B?bTdBRThKV2V2eGZlN0lmMWVlOFZrc0dVVzFPQVZzbTJCWHZoN3lCMW0yWGNN?=
 =?utf-8?B?aTlJSFlKNmZsTWFLUzRudnhVTTV1SVI3VFlQTEJOaHlkazF6VDVBcXVScVBl?=
 =?utf-8?B?ZWMvdCs0SWVxeXg2S1RXS1RyNStadmlSQW9NeWlTcVp0QWNzNit0NHRnNDIw?=
 =?utf-8?B?K0hJSGlDMzJGejhpa2FjV3FYcFVmblpmUUxrTDZ2anBZVGR3Tyt2eTRZb1Uy?=
 =?utf-8?B?UVBMNENkUnMrZndtN3RCWkZPOTJCT2tmVWU3UkNFYjJNb1Nxd1FydW5mcVNU?=
 =?utf-8?B?WW11dFZRZk9ZUS91aG1naWI1WEcreVFvQkJ0Lzhwcy9vQ2VockFxSm1oSFBm?=
 =?utf-8?B?OENoTkh6YzNOWW1YV01ZdjFuSTRhajlpa3VoZlljMnRtYWNPakhHS3IvK2c4?=
 =?utf-8?B?R3hGSTh4R3NWajFqcHVheHFTL2pTNzFvUjQrSHpUS3l2MFVwck1lNTFYS0Vn?=
 =?utf-8?B?QmtMTTBKbUFOLzdteU1vYTk3ZERCdW54ek9WNjFuTEZTVmdLcUwxQlhFbzBZ?=
 =?utf-8?B?TkRVREE4TnBxcDZFTlhYU1RUTWVxUWVneUZMT1Qxckh2ZTl5K200RVcxTnVG?=
 =?utf-8?B?UGxRalUrZHlwMldUMEhGTDZkWTVaeXBBSDZxbnNJOHVYSk1KRVR4c2QzVlRm?=
 =?utf-8?Q?0JswDC/YD5NhrJgPUoySNKQ=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b70122b0-d32f-4aae-e782-08d9b3fed435
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 12:42:11.4262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jgN7ugWh0PvTD/bsVFkMoEKZKxRY3q/0Oj3fJhYe2cE+fOg9VT85FbQL9nYmrpr6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1341
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 1/2] dma-fence: Avoid establishing a
 locking order between fence classes
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
Cc: linaro-mm-sig@lists.linaro.org, matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMzAuMTEuMjEgdW0gMTM6MzEgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBbU05JUF0K
Pj4gT3RoZXIgdGhhbiB0aGF0LCBJIGRpZG4ndCBpbnZlc3RpZ2F0ZSB0aGUgbmVzdGluZyBmYWls
cyBlbm91Z2ggdG8gc2F5IAo+PiBJIGNhbiBhY2N1cmF0ZWx5IHJldmlldyB0aGlzLiA6KQo+Cj4g
QmFzaWNhbGx5IHRoZSBwcm9ibGVtIGlzIHRoYXQgd2l0aGluIGVuYWJsZV9zaWduYWxpbmcoKSB3
aGljaCBpcyAKPiBjYWxsZWQgd2l0aCB0aGUgZG1hX2ZlbmNlIGxvY2sgaGVsZCwgd2UgdGFrZSB0
aGUgZG1hX2ZlbmNlIGxvY2sgb2YgCj4gYW5vdGhlciBmZW5jZS4gSWYgdGhhdCBvdGhlciBmZW5j
ZSBpcyBhIGRtYV9mZW5jZV9hcnJheSwgb3IgYSAKPiBkbWFfZmVuY2VfY2hhaW4gd2hpY2ggaW4g
dHVybiB0cmllcyB0byBsb2NrIGEgZG1hX2ZlbmNlX2FycmF5IHdlIGhpdCBhIAo+IHNwbGF0LgoK
WWVhaCwgSSBhbHJlYWR5IHRob3VnaHQgdGhhdCB5b3UgY29uc3RydWN0ZWQgc29tZXRoaW5nIGxp
a2UgdGhhdC4KCllvdSBnZXQgdGhlIHNwbGF0IGJlY2F1c2Ugd2hhdCB5b3UgZG8gaGVyZSBpcyBp
bGxlZ2FsLCB5b3UgY2FuJ3QgbWl4IApkbWFfZmVuY2VfYXJyYXkgYW5kIGRtYV9mZW5jZV9jaGFp
biBsaWtlIHRoaXMgb3IgeW91IGNhbiBlbmQgdXAgaW4gYSAKc3RhY2sgY29ycnVwdGlvbi4KClJl
Z2FyZHMsCkNocmlzdGlhbi4KCj4KPiBCdXQgSSdsbCB1cGRhdGUgdGhlIGNvbW1pdCBtZXNzYWdl
IHdpdGggYSB0eXBpY2FsIHNwbGF0Lgo+Cj4gL1Rob21hcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
