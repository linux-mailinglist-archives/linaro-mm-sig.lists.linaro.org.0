Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 133B45B9A56
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Sep 2022 14:07:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51F9F48A06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Sep 2022 12:07:00 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2070.outbound.protection.outlook.com [40.107.244.70])
	by lists.linaro.org (Postfix) with ESMTPS id 9581048A05
	for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Sep 2022 12:06:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odhGlNq1VTSbqF1Ep2u/jtSK85TVw0rorvkIRGtHtjfi8xd0HiKEzulJ7B1/SPvJk/RjZKHj2qfpUUkI4gIi8e1OjSVsk6eruoSTnb21EOMbYwUJs7B4/MeUKzhihNN0EeiwrbHDS2VYd3A9bhP+IFI5Nq+9bvLgd/C5qg8J1HGQi1Pf4DMNezY1FFiwJdV7YevFSADFGRzEeuP/u6UqLClN3EbhFpsJTEgWvVPnJ/dHo4oP3oAiYFOQ8uRJW4RIPTaXWTtVUJPcmblRagOevlhGwRzXwOvjo8Ai3+6PQljxDMDGPfgKuzLP29IIFyCbDYUMVxtfMcfSlNqLig1cjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DtMkkWZi01CYlZjTeKEAiaQ/rbxtvPyI3G2CjfjNRmU=;
 b=SmbxulHeu2MfaYjKN/G5F/9JRS8Uheh4sUcVc5UieE5C6EwcyZ45UuqnlKXKI+QSNeCJ7VJgk5r7GVllAdIy9TMOZgAKEhX/SFsmGX7uOQy0t/orTbvHQyhPLjIK3bojezTcRvrtATNeh9Lx1FfCJFiYw6bKAq+RRGOOFJ4To1h5sjJuNvLpWlPKsxxmjGor7zEla/Yum7vBgj/A0WWmKf4GVfUSi32g3YAf1Z+AhzVqVm7LgpLirOrdnitkdn9uKeKA5vJWC/zRwIJXxtfnEAgAhYmyaXylBODWy70jFuv28NHGTT4Vo7G2lHHFjO5AAnyOtq0fVE0tF+wREBqFpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtMkkWZi01CYlZjTeKEAiaQ/rbxtvPyI3G2CjfjNRmU=;
 b=kcptkPNr+Aj5B0cmDWApHfPXmDGsycWePgUPDYRUqFXS9abXDQBuiR7DUZOIWeuTl3zcxg2D8uzjzngS4r7g5XfMuuZy8BTtJr+Px6nK5a3Bk2CQlzRXQg8BkSq549J27XmI6F5Gq4CYFcyhbUfWCObFu8X6Qe+MXfIC82D+ir0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB4287.namprd12.prod.outlook.com (2603:10b6:208:1dd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Thu, 15 Sep
 2022 12:06:56 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::653f:e59b:3f40:8fed%6]) with mapi id 15.20.5632.015; Thu, 15 Sep 2022
 12:06:56 +0000
Message-ID: <893fc57d-7a49-4b39-ff74-867579141b22@amd.com>
Date: Thu, 15 Sep 2022 14:06:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
 <20220914164321.2156-7-Arvind.Yadav@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220914164321.2156-7-Arvind.Yadav@amd.com>
X-ClientProxiedBy: FR0P281CA0124.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|MN2PR12MB4287:EE_
X-MS-Office365-Filtering-Correlation-Id: 53afd2f5-2815-42c2-fd1e-08da9712c8d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0UOMuEhABNdJYFWp/UJpUOzil+9c14yXgdEXOMqkhhlDtjpo/4p52rZ67W4wuRKsLyXEC5uMD+yTh1K8sgghooVvfcbv0MUCZ2zBP//wYvfr0Uy4EWA17AEhtF/9vBqG7S0bLh9JhObUYRFnPKVNsXYjwHcG1STYtvz3bSrya/83VqtXzaNwERm9VYXzoMgHbL8MA2gNvxwqI9eSfMaNENBUUp9EfUGl8YFs7Pl3azwSs0GCuanzvJxeGqNcBZkFZroa160AQBUTH3HJwduwy3KQMQjXuc5ofbJuaF8sSp3CgQe+3nGx2h9E4iH2tH4p1FBe4kse6fy2iwU9bXMEqguzVyynIlVDN3Ok5d3E09n/dih06q3UwfZjKa3VJWe5fYHmvCYuSYYMDt4FrFWycTrhKPC7mvTdLeMAv8Jl/V82VMF5D9xYqGuZRdh/F7U3TrKd/7Z52b8vNxv03z43JCqbMu6FsxL9IZvXD4rZe5zxKJstMX43Cu4svfWv5aIoaQyXp6uQxZm7YaneL4XKQDiTqS1RgqtM8p7wEn3VpH8Nkm2se5W0nwj5C9+1AQcZcalMpmvyF4culbQW8hwo6GY6z/hRm2wojsBT/8r1XXeGheBS+jnmBf8xFRtXaMyLQmvJM+4aL9zHW2niW3DC3MLZIKG8h/QDawZDfBx7zTonpRvZw7myZVjcX7vDcJ5Df/HNmDGzlXSkYYijuutJ62AahvwT2y29nCw0jS8IMs/B2O4FX/TQ30DFvQWyXh/vh+viMY8SRFqXCqU9adLC4vu08Uys5e/08vyPQQgBOXXSAvg8OwzZF73rMmdfv574
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199015)(186003)(86362001)(31696002)(6512007)(478600001)(41300700001)(26005)(66574015)(36756003)(5660300002)(2616005)(6486002)(8936002)(83380400001)(316002)(6506007)(6666004)(921005)(66476007)(66556008)(8676002)(38100700002)(31686004)(66946007)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dHdFc251VDdnOEdkWEZtR3RvWTJNRkpzL0dESTJsNnVjcmxJTUxKTTAzS1lr?=
 =?utf-8?B?YkdqTS8rMHBIVlhxbDdEbnZ0QnR6UVNHZHVtOGl1SmROMXU2cjVDLzB0Sk42?=
 =?utf-8?B?cmtRU3JrRHB4bFVYOGlQVGE1MVFncDR2cVlVTHpjTnpoSUZJTkJNalBtTGxk?=
 =?utf-8?B?cjFiQzNra0VKNjY4TlJXbzBhSUpQMkd6QTA5akc5ejg5UHN1WlRRZHNmc1BQ?=
 =?utf-8?B?c0xuOENhcDlxbkpSeTRhTlVZL2dlQ1dwcTdYM29lOFV3ODhOZmVnSWcxQ1Nu?=
 =?utf-8?B?NVhoY2tsaGZxVUJTbWFRUURzd0FLL2V0ZU1ya3ZGelNwaE9WeFJHeGsycTA2?=
 =?utf-8?B?VXBUeGMvOXE0aGt6QzFhQ2l3QzdGbVdwUXVNU1hRb3BTQ0VPcVc1M2dvdTN5?=
 =?utf-8?B?c2VTbWJBY1MzcDNOTlhyY0dmUlpwb2d2cndCV2d3aGtzTTZyRnlnSmMxQXZT?=
 =?utf-8?B?Y0tXWW1YMUNYQ0ZxTmxMSjBBL0E1aVZMbVkxanh0REdCYmZScUkwR3JnRWZY?=
 =?utf-8?B?dFJOc2E5cUszYSs0N0VuSTMxL3RIcGVtSlRXRm9kVnp5aWVpakFJNXlBVjdI?=
 =?utf-8?B?ME44a2dLenMvMnlpbmYvOUJlcE95RHlTMzUvTlZWbWJJZXJaTDV6M3NEWnZE?=
 =?utf-8?B?SWQvQzRQRWI1MDllRDJNSStKbCtGZTdhOVc5MURvNi9WUTY1R3JacjZOZlBy?=
 =?utf-8?B?N3V4RkJTajNWMyt1c0syUmNzRzAvVHJTeFpmWWRFRHY4YjlyZDJMK2FqV2dM?=
 =?utf-8?B?bk5ud2JjbFhIdnNiajhZVXFQNjc1cWlnMVZha04vY09TYzBqZ1QrSTBMbE9w?=
 =?utf-8?B?c0JyeE5rMzlrRnkxRHVkL25yZkV5bG44bG12cjhoOTkzTHR1OHRycEpLVitk?=
 =?utf-8?B?bElIWU5BN1dDSHFMdkhNY1NSL3F0aTlITzBCbU9qa0FUOUlqWW92Tll6dnNK?=
 =?utf-8?B?eTJBdkt4dStFUXBGV3JBSHNiaDFCck1RbUVIeEpodW5NbGkrVGRPZFcvZ2xM?=
 =?utf-8?B?c3MvRS9uMXdXZWxXRmpFalB2WkxyYm5SOHl5RlR3U1A2dXplaE5tUVhZcnN6?=
 =?utf-8?B?QUdoLzd4UHk0WHBDVnBOZDZ6WEsySXl0VkJVdzNDc0NDb3MzM0J0ZUxEWG1m?=
 =?utf-8?B?TUlERDdsN2dRNGYzUjltMUdodFRSQ0V2YThZZHhQWnVMU0w3OFNhYTVsQkNq?=
 =?utf-8?B?ck5kQk53S1BxSHpuRjdRMTY3VnIzcG5GNTUvOFlTR2UvWmUwRlJpUXdqa3RV?=
 =?utf-8?B?MjNoZnN4WVlFc1RHcEVCRThPLzROaGMwZWR6b0ZMaHpJdnBOQ0RScjBFaEFD?=
 =?utf-8?B?bXpOYzE4TGNVY1hiUFpsaFJKZXBRV25iWHBIemhwenprK2w4TElndi9ITkc3?=
 =?utf-8?B?T0JNb3UyeDhkRGlTcXlaL0FUcWEvWlVzRXZ1WGlCYmxxOE9kdjB1b3pNQlZx?=
 =?utf-8?B?NVgxanYzY0ZYaWFycE4yOU1KVFZxd1dacUl6V3lhTXEwOEhQOGZBTmJYUTFz?=
 =?utf-8?B?WW05Mnk1Z084OVViNHpoQ1c4c3g4a3F2d2djdHFlZ05VdTBOc201NDZFazkx?=
 =?utf-8?B?RW92TFBPNml0a093N2tOREdkcmRtZEhSRnFRbWp1S1ZzVmRaS2lXbUxFZUx4?=
 =?utf-8?B?SjlNZFhjY1I2cVVhbmJRRnd0N1BPeW8rcXlWYXRCOUU4TGgvVEsyRFM2aEcy?=
 =?utf-8?B?SjZ5bDNyanRpYWNLN1JjeU1XcHNQc2V1VjZiQjFCTVoydTVsWFFnQTZpdHh5?=
 =?utf-8?B?NzV6a09aUDZSQ2F0OCthUzNCcytHRFFGaGFKN3U1Z1A3emRYODk5NitGMlhT?=
 =?utf-8?B?OHl3Z0ljZTExdDlnYXF6ZjZPQ2lDdnJMR2c4U2plOVlJb1N5Yi9aTzVKWlc2?=
 =?utf-8?B?a3lEV1I3RGs4NGM5bGFNWnRwcldseHNHWXUralVEYUZmNm1SblZqZFNnMXdu?=
 =?utf-8?B?ME50d1gxTmpXR2tMYXN0R0o5ZDZTSVhicmxUZFFEdkNUTndtVEMrOUJ5TGJq?=
 =?utf-8?B?bmI3azlzbngybUNJYXFpZElFUFEzMm81QTUyREtYSC8yVzdGYnRqNHNnSno1?=
 =?utf-8?B?UFdPZU1VY040dEpqcEhVOEQ2cnVidldtbkY3Zm93V1E1TGV0T3lmVzdDaFhM?=
 =?utf-8?Q?rfooHUr03ORYZiEQ+PfC4ML6z?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53afd2f5-2815-42c2-fd1e-08da9712c8d9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 12:06:56.3937
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UaZEn9Cv+DL0KZd+eoJ6UYWR2Dq8EDWEOHYo9/jQGVbq7/LvxSlMEgY/jzBpoyt0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4287
Message-ID-Hash: 4XXNATNIX7AR7KL6AK3KGLFPXZVJZW45
X-Message-ID-Hash: 4XXNATNIX7AR7KL6AK3KGLFPXZVJZW45
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 6/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4XXNATNIX7AR7KL6AK3KGLFPXZVJZW45/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTQuMDkuMjIgdW0gMTg6NDMgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+IEZlbmNlIHNpZ25h
bGluZyBtdXN0IGJlIGVuYWJsZWQgdG8gbWFrZSBzdXJlIHRoYXQNCj4gdGhlIGRtYV9mZW5jZV9p
c19zaWduYWxlZCgpIGZ1bmN0aW9uIGV2ZXIgcmV0dXJucyB0cnVlLg0KPiBTaW5jZSBkcml2ZXJz
IGFuZCBpbXBsZW1lbnRhdGlvbnMgc29tZXRpbWVzIG1lc3MgdGhpcyB1cCwNCj4gdGhpcyBlbnN1
cmVzwqBjb3JyZWN0IGJlaGF2aW91ciB3aGVuIERNQUJVRl9ERUJVR19FTkFCTEVfU0lHTkFMSU5H
DQo+IGlzIHVzZWQgZHVyaW5nIGRlYnVnZ2luZy4NCj4gVGhpcyBzaG91bGQgbWFrZSBhbnkgaW1w
bGVtZW50YXRpb24gYnVncyByZXN1bHRpbmcgaW4gbm90DQo+IHNpZ25hbGVkIGZlbmNlcyBtdWNo
IG1vcmUgb2J2aW91cy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQXJ2aW5kIFlhZGF2IDxBcnZpbmQu
WWFkYXZAYW1kLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4NCj4gQ2hhbmdlcyBpbiB2MSx2MiA6DQo+IDEt
IEFkZHJlc3NpbmcgQ2hyaXN0aWFuJ3MgY29tbWVudCB0byByZXBsYWNlDQo+IENPTkZJR19ERUJV
R19XV19NVVRFWF9TTE9XUEFUSCBpbnN0ZWFkIG9mIENPTkZJR19ERUJVR19GUy4NCj4gMi0gQXMg
cGVyIENocmlzdGlhbidzIGNvbW1lbnQgbW92aW5nIHRoaXMgcGF0Y2ggYXQgbGFzdCBzbw0KPiBU
aGUgdmVyc2lvbiBvZiB0aGlzIHBhdGNoIGlzIGFsc28gY2hhbmdlZCBhbmQgcHJldmlvdXNseQ0K
PiBpdCB3YXMgW1BBVENIIDEvNF0NCj4NCj4gQ2hhbmdlcyBpbiB2MzoNCj4gMSAtIEFkZGluZyBu
ZXcgY29uZmlnIERNQUJVRl9ERUJVR19FTkFCTEVfU0lHTkFMSU5HLg0KPiAyIC0gUmVwbGFjZSBD
T05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEggdG8gbmV3DQo+IENPTkZJR19ETUFCVUZfREVC
VUdfRU5BQkxFX1NJR05BTElORy4NCj4NCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVmL0tjb25m
aWcgICB8IDcgKysrKysrKw0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA1ICsrKysr
DQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvS2NvbmZpZyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnDQo+IGlu
ZGV4IGU0ZGM1M2EzNjQyOC4uYzk5MWU2YTUxNTEwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Rt
YS1idWYvS2NvbmZpZw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvS2NvbmZpZw0KPiBAQCAtNjUs
NiArNjUsMTMgQEAgY29uZmlnIERNQUJVRl9TRUxGVEVTVFMNCj4gICAJZGVmYXVsdCBuDQo+ICAg
CWRlcGVuZHMgb24gRE1BX1NIQVJFRF9CVUZGRVINCj4gICANCj4gK2NvbmZpZyBETUFCVUZfREVC
VUdfRU5BQkxFX1NJR05BTElORw0KPiArCWJvb2wgIkRNQSBGZW5jZSBlbmFibGUgc2lnbmFsaW5n
IGRlYnVnIGNoZWNrcyINCj4gKwlkZWZhdWx0IG4NCj4gKwlkZXBlbmRzIG9uIERNQV9TSEFSRURf
QlVGRkVSDQo+ICsJaGVscA0KPiArCSAgVGhpcyBvcHRpb24gZW5hYmxlcyBhZGRpdGlvbmFsIGNo
ZWNrcyBmb3Igc29mdHdhcmUgc2lnbmFsaW5nIG9mIGZlbmNlLg0KPiArDQo+ICAgbWVudWNvbmZp
ZyBETUFCVUZfSEVBUFMNCj4gICAJYm9vbCAiRE1BLUJVRiBVc2VybGFuZCBNZW1vcnkgSGVhcHMi
DQo+ICAgCXNlbGVjdCBETUFfU0hBUkVEX0JVRkZFUg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gaW5kZXggNzc1
Y2RjMGI0ZjI0Li4wMWUxZmE0ZDNjZWMgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBAQCAtNDI4LDYg
KzQyOCwxMSBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKQ0KPiAgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiAgIGRtYV9mZW5jZV9pc19zaWduYWxl
ZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICB7DQo+ICsjaWZkZWYgQ09ORklHX0RNQUJV
Rl9ERUJVR19FTkFCTEVfU0lHTkFMSU5HDQo+ICsJaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxB
R19FTkFCTEVfU0lHTkFMX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+ICsJCXJldHVybiBmYWxzZTsN
Cj4gKyNlbmRpZg0KPiArDQo+ICAgCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxF
RF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPiAgIAkJcmV0dXJuIHRydWU7DQo+ICAgDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
