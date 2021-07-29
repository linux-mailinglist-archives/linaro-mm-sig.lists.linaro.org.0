Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F303DA486
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 15:41:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78D116451E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 13:41:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 35D5463567; Thu, 29 Jul 2021 13:41:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E894262EA6;
	Thu, 29 Jul 2021 13:41:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 968E36078C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 13:41:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8ABC562EA6; Thu, 29 Jul 2021 13:41:22 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2069.outbound.protection.outlook.com [40.107.237.69])
 by lists.linaro.org (Postfix) with ESMTPS id 5FB436078C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 13:41:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gW4WA+k5h7eOi1FobNf1ZQeVb+6R+tMu2zKlvgaLBBKJp7IGxy1hJiDCZZrPA5+7o4R3X1ZJJPzzYD7NUtiKM9k7qy5SmZpgCcKbGjh6CXf14aohnpskVD3Rti+PuaQOlfxW0Ydfyrl9vRm9AOLTsz5qfQaiP0KVifVzdhEJXBBIVdSVcPPK+fvzkxHyueoxaF1Tiq3PNfFc9VC6fT4FmQGu9F/1AAGJ/cCsy1ZfDbsHj7VW3sO3ZVUsHfCEEB/9gWcechc4ORkEDvbB8pZ8ani5Z0qaR0SdR/KtLI1dNkCtHZ3ZWLmZ/k7Mz++7nCnmiEv0kLNKomV7SEoqR4uQ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+4TSQ92L1IfHJd7i0pwqK3tl4vp3QLrxqw/hXojsOlU=;
 b=SoO6PglChZjjPLe8lst/O0gTIEc7zTeGqqGuOMJ2MzFvWdN+kWZAE3ZHYp54FIanZxjog8AIhVxoU8tMxD17ki0xYmLka5ed4wwSt9gWvRSNepoezCnwDI3HLG2ovif4vAr63bDbX/GB+/xaRi3LbhYzTeKERg4dIS0Bf0+zaljEiw9sl3wrtQnx8+7vnDPjr9N7adj+TlvKes8nGzvwV/Z9dCuSbk6I2NPjOLCj8L8z9+UpP/s6CrauKtksM3CKJEaM/Pvma7nafbBYQ0PWgqRKSXiKM1Hloj25u508vhoifM54JPaBjA16yVZ57hHkHFfSkmBGso6mVvjV1hj5Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+4TSQ92L1IfHJd7i0pwqK3tl4vp3QLrxqw/hXojsOlU=;
 b=b7ptvNTGIE+4l7QHgTN7nkQcU7OziKaBhEEFPm1+YdSIY4L7RTIry6J6UWf/9d1tVNoSE4mTwBUkoi82kOUHwnzIOUZikbFNSty+zIlX3d3ZRv/RatS7gH1WWsiCSC74FDLnFpBInboBA5FWXUxqp2jkTIU6SGsIlAVrHcNIdok=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from BY5PR12MB3764.namprd12.prod.outlook.com (2603:10b6:a03:1ac::17)
 by BYAPR12MB4741.namprd12.prod.outlook.com (2603:10b6:a03:a2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Thu, 29 Jul
 2021 13:41:18 +0000
Received: from BY5PR12MB3764.namprd12.prod.outlook.com
 ([fe80::6c58:1598:e768:d45e]) by BY5PR12MB3764.namprd12.prod.outlook.com
 ([fe80::6c58:1598:e768:d45e%7]) with mapi id 15.20.4373.021; Thu, 29 Jul 2021
 13:41:18 +0000
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
 <20210728165700.38c39cf8@eldfell>
 <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
 <20210729112358.237651ff@eldfell>
 <3675d530-c9fc-7ec9-e157-b6abeeec7c2a@amd.com>
 <20210729121542.27d9b1cc@eldfell>
 <15cf73a8-eda4-3559-561a-a05a14f445d0@gmail.com>
 <20210729140024.6a635be4@eldfell>
 <c090d320-7f2c-3858-d978-7a6f6e8001c0@amd.com>
 <20210729154917.5e664b24@eldfell>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <11692377-acae-696a-bbeb-9921a6f5d905@amd.com>
Date: Thu, 29 Jul 2021 15:41:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210729154917.5e664b24@eldfell>
Content-Language: en-US
X-ClientProxiedBy: AM0PR10CA0045.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::25) To BY5PR12MB3764.namprd12.prod.outlook.com
 (2603:10b6:a03:1ac::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3e62:c902:d5a3:6f28]
 (2a02:908:1252:fb60:3e62:c902:d5a3:6f28) by
 AM0PR10CA0045.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:150::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Thu, 29 Jul 2021 13:41:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 451cb912-7fdb-472a-394a-08d952968ab1
X-MS-TrafficTypeDiagnostic: BYAPR12MB4741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR12MB4741FB1B40D384681D917EEC83EB9@BYAPR12MB4741.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wXWCB0+NyMmD9nHTxsltl0u1DqchNSqiKjmVx+838ohfowp7j7LBAY+Ymg2A3Lqp/Bft7FYioeO3DwR5WHbcHrLzP8FZI9LsGdTl+nd5s9MyV1Ei05OuMJAdzemWdeKV0IL1nwJjoI5FpFW0rlOGX/2HcIN65npsWaiq3c3tPjhGeULotnXvTeiBRHi5LhFqi8QXxLRfyW+CFAqSjciC3j2BX8sMo6mg0TfaDbhxGfq+S1X91j2ykfhPagbmXOmUhrBkb0uapZo7FLZV5HZxOtkiakYYyzwnrlPRfF0csmWYQHWNVwcp6Tfq/ZymUVz9vSt1BDZFgoadaNMBRaXFaUat+yunZzeMlJSkcQN7eeROJSz3VckyVjAJyRWmWTwftAxiZUK0UcbGg5U90FY5lZEM/rKd+ff3h2S7pf9ySISTH4AbZMQY/RsutoGV58jBby+Jlmo9gS2D5QNRfy4BSz9QFBgwf4cMO8Iz6pHdX6uY1vD9id2Rn2BSOBNdQAndWsxX21GynHjPDA/p8vBWhD2jt+0Dut3l45K/GEo/oC08j9FADnEBqzK3zcgKGMvXKJYEwU/dYZKhyvGY4Sp056Es/r5nxq7BY6K8swbKr61rsatWiSGznsDIwc0bJKwjCpIbjsO4i0SCix7oASZ619NZvhVl7Wthn8sk3zzXYyr5YjQQ+r7SfU+01i7m9lS072P/jXN4qXZA4L55Omcd0nzXrjsBCBth7txeSqpkJEIwXorRtTchsqarBlmS6dw6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR12MB3764.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(5660300002)(2906002)(316002)(6666004)(31696002)(7416002)(86362001)(8936002)(2616005)(4326008)(38100700002)(6916009)(31686004)(186003)(66476007)(66556008)(66574015)(66946007)(83380400001)(54906003)(508600001)(6486002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkdVdDh4Y090MTh4SGJXamJWTkE1RWxiYks3NWNNeUxTbXdnL3RYTEJrbU4z?=
 =?utf-8?B?TTNya0xXaXREVEd3YzlvZ3lTMmd4eDR3d3hQZjl4YnBIWXY3WnEveVg3REQy?=
 =?utf-8?B?YVY4Zm14WXN1TG5icUdiYmRaa0VHUmJqaEl6aEFRNUtOc1E0RWxXTkYzUmNM?=
 =?utf-8?B?cC9yMllXSFpMTXlFSXRUclhKMWZqVEh6SE05YTlwRFVhMlh1eTJFbnYxZTZO?=
 =?utf-8?B?WG41S3BTNS9GVGVXMlhVMzJjeE9GY2lHQTdyZzBjSnZkZXJtUjBNZmF5K1Zr?=
 =?utf-8?B?bVY3WkUwZ1N0K1dHMDVibW5WZDFiL3JWSWpYYUhJQTBzUzYyN3VVcTBRSjRJ?=
 =?utf-8?B?RjJhNEM0VnpPSjU0aWtsMEd6b0J6ZHVZM3o0b0NhdE1qdzlrQ281Y3ZTSkda?=
 =?utf-8?B?NzlnaU43TGVtZnZhQ2tFbVIxOFBCcmliVUxLSU92cEk3NUNSM3ppWGh1dGpN?=
 =?utf-8?B?ZGhyc1p6UjVtVTlMamppeE1QeVY2Z2V6R3lDTnViTHo2VktvakxScXB2eWJ1?=
 =?utf-8?B?NDU3TVR2WVF5OS9wRVhsWjFKVUZQWERrajNNRkxlTmovcldlT3hhNnRDMU1R?=
 =?utf-8?B?ZjRGeTNDdzZlN3hKMzBSRllMQWdEbC92dm9aMzJ6TjhWRDZTY0tvUnVRVDBS?=
 =?utf-8?B?RmFaaHJmSDJ6SUZuZm5ZMGhIczhydWUrbWxuSmJCdmlPNktTODROcXlUOHNm?=
 =?utf-8?B?UDJFVlRQNThobko1amkxU1NDN0ZDRFNETzVvUEE2RkNpaFQvUURHK2h2dFRq?=
 =?utf-8?B?dmVvbDIyajdHK3BCSVhxRVljc2ZxTjB5REYxL1NqN2xockQ3amdwVDhNK2RG?=
 =?utf-8?B?Rmswcm53QWJCT2JkTXRPNWZnUmxkVWFKYWxjZUUzUHVqNTFIZUVXcmxqRFp3?=
 =?utf-8?B?WXhORE9vUVQwY1BqakN4UjdBM05BMGlvcWhGSGtQMlQ5TFB3SHZIVHlDc1Vr?=
 =?utf-8?B?SnJWNmZqRGFkY0dNWjlRRWtUdnBaTkx6OWlKU3N4M0Z4SmZmSXZIeTVoaUhC?=
 =?utf-8?B?bDZsMThRcXZYelBFWmxVOEUvbkNCcDRlRldleU85VmI5cVRYQTRlM0taN0Fp?=
 =?utf-8?B?d1hQQzdWcEFiSWtNNUlUOUJFaVkyVlpnZk9Hd3RFeUlXdEtIaCs2Yms5MTN6?=
 =?utf-8?B?N25kc0VQUC9WWDVuWkhxLytBbGJ0eDc1WHp5TUY2T0h2RUd0dEx3ck1ucW9I?=
 =?utf-8?B?cUJFQmxXL2k2Q3oyUDl5RkY3dDBkaUwrUWkrbCtWVHE5dEJpajdiemlUUTVI?=
 =?utf-8?B?ZktmbEhlMG9kYSt2TFUxOFcwWm9jM2k0aTJJM1pBWEs3bVVxQjNHSXhuWEZk?=
 =?utf-8?B?cndVWFNGNTE4WDNJTXczZVhoVEpwbnRPcFpWSHBoUFhjWUFBRWpjWlQ3ZjlR?=
 =?utf-8?B?MC9GNll1MnhweGMwWFhuaXd5Y2t5bVp0TFVxMWFvRUM2YWNhdGptUGtiK24x?=
 =?utf-8?B?V01WWTdyMVhZbzl4Z3JhZjR6Zld4R1dVdGQySDlwYnVYaGt3WmVwUWpuT2lN?=
 =?utf-8?B?RU91Nkp1dTl1b0wrMHhETVZzNnpocmRMeTdKRVE1YzBycWpRTjY0MHNEbEZP?=
 =?utf-8?B?ZE1KRmtScjBQbnlzVkRQY1N3K3JlMmlIM0MwWGdBSWM4SVVGMUZhQ21RL3c1?=
 =?utf-8?B?ZlFDRHhyMm5sdHl0bTJORDJxNFhjRkRlbkpIdHZ6RTllQWo1NmdQUUVuOHM1?=
 =?utf-8?B?MFR2YmE4M2RnckZ2WVo2SGVzeTljYTZnQlNMVjJuSGphMk0xYTRHcnlxQ1dq?=
 =?utf-8?B?Q3hRYmdhcmp5bEsyTGVWdGhSMDRVbmlUVGwrMGcwNTFiU0kwc000cGN2N2h6?=
 =?utf-8?B?Z0IwMzhtY0h6Q01Xd0hiNm5IZzk5S0lHVzVyOGJ5THJ2QXJaY3FaOUsxY29H?=
 =?utf-8?Q?3THRnOxOmHDmi?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 451cb912-7fdb-472a-394a-08d952968ab1
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB3764.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 13:41:17.9285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: poL+hSDONtP6lNp18RdxjQRpckMd5mZFCgLQu9jkbkbFA515ARB5V7s50Y7ImP7x
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB4741
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjkuMDcuMjEgdW0gMTQ6NDkgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoKPiBPbiBUaHUsIDI5
IEp1bCAyMDIxIDEzOjQzOjIwICswMjAwCj4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+PiBBbSAyOS4wNy4yMSB1bSAxMzowMCBzY2hyaWViIFBl
a2thIFBhYWxhbmVuOgo+Pj4gT24gVGh1LCAyOSBKdWwgMjAyMSAxMjoxNDoxOCArMDIwMAo+Pj4g
Q2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3Rl
Ogo+Pj4gICAKPj4+PiBBbSAyOS4wNy4yMSB1bSAxMToxNSBzY2hyaWViIFBla2thIFBhYWxhbmVu
Ogo+Pj4+PiBJZiB0aGUgYXBwIGhhcHBlbnMgdG8gYmUgZnJvemVuIChlLmcuIHNvbWUgd2VpcmQg
YnVnIGluIGZlbmNlIGhhbmRsaW5nCj4+Pj4+IHRvIG1ha2UgaXQgbmV2ZXIgcmVhZHksIG9yIG1h
eWJlIGl0J3MganVzdCBidWdnZWQgaXRzZWxmIGFuZCBuZXZlcgo+Pj4+PiBkcmF3aW5nIGFnYWlu
KSwgdGhlbiB0aGUgYXBwIGlzIGZyb3plbiwgYW5kIGFsbCB0aGUgcmVzdCBvZiB0aGUgZGVza3Rv
cAo+Pj4+PiBjb250aW51ZXMgcnVubmluZyBub3JtYWxseSB3aXRob3V0IGEgZ2xpdGNoLgo+Pj4+
IEJ1dCB0aGF0IGlzIGluIGNvbnRyYWRpY3QgdG8gd2hhdCB5b3UgdG9sZCBtZSBiZWZvcmUuCj4+
Pj4KPj4+PiBTZWUgd2hlbiB0aGUgd2luZG93IHNob3VsZCBtb3ZlIGJ1dCBmYWlscyB0byBkcmF3
IGl0J3MgbmV3IGNvbnRlbnQgd2hhdAo+Pj4+IGhhcHBlbnM/Cj4+Pj4KPj4+PiBBcmUgdGhlIG90
aGVyIHdpbmRvd3Mgd2hpY2ggd291bGQgYmUgYWZmZWN0ZWQgYnkgdGhlIG1vdmUgbm90IGRyYXdu
IGFzIHdlbGw/Cj4+PiBObywgYWxsIHRoZSBvdGhlciB3aW5kb3dzIHdpbGwgY29udGludWUgYmVo
YXZpbmcgbm9ybWFsbHkganVzdCBsaWtlCj4+PiB0aGV5IGFsd2F5cyBkaWQuIEl0J3MganVzdCB0
aGF0IG9uZSBmcm96ZW4gd2luZG93IHRoZXJlIHRoYXQgd29uJ3QKPj4+IHVwZGF0ZTsgaXQgd29u
J3QgcmVzaXplLCBzbyB0aGVyZSBpcyBubyByZWFzb24gdG8gbW92ZSB0aGF0IG90aGVyCj4+PiB3
aW5kb3cgZWl0aGVyLgo+Pj4KPj4+IEV2ZXJ5dGhpbmcgY29udGludWVzIGFzIGlmIHRoZSBmcm96
ZW4gd2luZG93IG5ldmVyIGV2ZW4gc2VudCBhbnl0aGluZwo+Pj4gdG8gdGhlIGNvbXBvc2l0b3Ig
YWZ0ZXIgaXRzIGxhc3QgZ29vZCB1cGRhdGUuCj4+Pgo+Pj4gV2UgaGF2ZSBhIHByaW5jaXBsZSBp
biBXYXlsYW5kOiB0aGUgY29tcG9zaXRvciBjYW5ub3QgYWZmb3JkIHRvIHdhaXQKPj4+IGZvciBj
bGllbnRzLCB0aGUgZGVza3RvcCBhcyBhIHdob2xlIG11c3QgcmVtYWluIHJlc3BvbnNpdmUuIFNv
IHRoZXJlIGlzCj4+PiBhbHdheXMgYSBiYWNrdXAgcGxhbiBldmVuIGZvciBjYXNlcyB3aGVyZSB0
aGUgY29tcG9zaXRvciBleHBlY3RzIHRoZQo+Pj4gY2xpZW50IHRvIGNoYW5nZSBzb21ldGhpbmcu
IEZvciByZXNpemVzLCBpbiBhIGZsb2F0aW5nLXdpbmRvdyBtYW5hZ2VyCj4+PiBpdCdzIGVhc3k6
IGp1c3QgbGV0IHRoaW5ncyBjb250aW51ZSBhcyB0aGV5IGFyZTsgaW4gYSB0aWxpbmcgd2luZG93
Cj4+PiBtYW5hZ2VyIHRoZXkgbWF5IGhhdmUgYSB0aW1lb3V0IGFmdGVyIHdoaWNoLi4uIHdoYXRl
dmVyIGlzIGFwcHJvcHJpYXRlLgo+Pj4KPj4+IEFub3RoZXIgZXhhbXBsZTogSWYgYSBjb21wb3Np
dG9yIGRlY2lkZXMgdG8gbWFrZSBhIHdpbmRvdyBtYXhpbWl6ZWQsIGl0Cj4+PiB0ZWxscyB0aGUg
Y2xpZW50IHRoZSBuZXcgc2l6ZSBhbmQgc3RhdGUgaXQgbXVzdCBoYXZlLiBVbnRpbCB0aGUgY2xp
ZW50Cj4+PiBhY2tzIHRoYXQgc3BlY2lmaWMgc3RhdGUgY2hhbmdlLCB0aGUgY29tcG9zaXRvciB3
aWxsIGNvbnRpbnVlIG1hbmFnaW5nCj4+PiB0aGF0IHdpbmRvdyBhcyBpZiBub3RoaW5nIGNoYW5n
ZWQuIEdpdmVuIHRoZSBhc3luY2hyb25vdXMgbmF0dXJlIG9mCj4+PiBXYXlsYW5kLCB0aGUgY2xp
ZW50IG1pZ2h0IGV2ZW4gY29udGludWUgc3VibWl0dGluZyB1cGRhdGVzCj4+PiBub24tbWF4aW1p
emVkIGZvciBhIHdoaWxlLCBhbmQgdGhhdCB3aWxsIGdvIHRocm91Z2ggYXMgaWYgdGhlCj4+PiBj
b21wb3NpdG9yIGRpZG4ndCBhc2sgZm9yIG1heGltaXplZC4gQnV0IGF0IHNvbWUgcG9pbnQgdGhl
IGNsaWVudCBhY2tzCj4+PiB0aGUgd2luZG93IHN0YXRlIGNoYW5nZSwgYW5kIGZyb20gdGhhdCBw
b2ludCBvbiBpZiBpdCBkb2Vzbid0IGJlaGF2ZQo+Pj4gbGlrZSBtYXhpbWl6ZWQgc3RhdGUgcmVx
dWlyZXMsIGl0IHdpbGwgZ2V0IGEgcHJvdG9jb2wgZXJyb3IgYW5kIGJlCj4+PiBkaXNjb25uZWN0
ZWQuCj4+IFllYWggYW5kIGFsbCBvZiB0aGlzIHRvdGFsbHkgbWFrZXMgc2Vuc2UuCj4+Cj4+IFRo
ZSBwcm9ibGVtIGlzIHRoYXQgbm90IGZvcndhcmRpbmcgdGhlIHN0YXRlIGNoYW5nZXMgdG8gdGhl
IGhhcmR3YXJlCj4+IGFkZHMgYSBDUFUgcm91bmQgdHJpcCB3aGljaCBpcyByYXRoZXIgYmFkIGZv
ciB0aGUgZHJpdmVyIGRlc2lnbiwKPj4gZXNwZWNpYWxseSBwb3dlciBtYW5hZ2VtZW50Lgo+Pgo+
PiBFLmcuIHdoZW4geW91IHN1Ym1pdCB0aGUgd29yayBvbmx5IGFmdGVyIGV2ZXJ5Ym9keSBiZWNv
bWVzIGF2YWlsYWJsZSB0aGUKPj4gR1BVIGJlY29tZXMgaWRsZSBpbiBiZXR3ZWVuIGFuZCBtaWdo
dCB0aGluayBpdCBpcyBhIGdvb2QgaWRlYSB0byByZWR1Y2UKPj4gY2xvY2tzIGV0Yy4uLgo+IEV2
ZXJ5Ym9keSBkb2VzIG5vdCBuZWVkIHRvIGJlIGF2YWlsYWJsZS4gVGhlIGNvbXBvc2l0b3IgY2Fu
IHN1Ym1pdCBpdHMKPiB3b3JrIGFueXdheSwgaXQganVzdCB1c2VzIG9sZCBzdGF0ZSBmb3Igc29t
ZSBvZiB0aGUgd2luZG93cy4KPgo+IEJ1dCBpZiBldmVyeWJvZHkgaGFwcGVucyB0byBiZSByZWFk
eSBiZWZvcmUgdGhlIGNvbXBvc2l0b3IgcmVwYWludHMsCj4gdGhlbiB0aGUgR1BVIHdpbGwgYmUg
aWRsZSBhbnl3YXksIHdoZXRoZXIgdGhlIGNvbXBvc2l0b3IgbG9va2VkIGF0IHRoZQo+IGJ1ZmZl
ciByZWFkeW5lc3MgYXQgYWxsIG9yIG5vdC4KCk9rIGdvb2QgcG9pbnQuCgo+IEdpdmVuIHRoYXQg
V2F5bGFuZCBjbGllbnRzIGFyZSBub3QgZXhwZWN0ZWQgKGJ1dCBjYW4gaWYgdGhleSB3YW50KSB0
bwo+IGRyYXcgYWdhaW4gdW50aWwgdGhlIGZyYW1lIGNhbGxiYWNrIHdoaWNoIGVuc3VyZXMgdGhh
dCB0aGVpciBwcmV2aW91cwo+IGZyYW1lIGlzIGRlZmluaXRlbHkgZ29pbmcgdG8gYmUgdXNlZCBv
biBzY3JlZW4sIHRoaXMgaWRsaW5nIG9mIEdQVQo+IG1pZ2h0IGhhcHBlbiByZWd1bGFybHkgd2l0
aCB3ZWxsLWJlaGF2ZWQgY2xpZW50cyBJIGd1ZXNzPwoKTWF5YmUgSSB3YXNuJ3QgY2xlYXIgd2hh
dCB0aGUgcHJvYmxlbSBpczogVGhhdCB0aGUgR1BVIGdvZXMgaWRsZSBpcyAKZXhwZWN0ZWQsIGJ1
dCBpdCBzaG91bGQgaXQgc2hvdWxkIGp1c3Qgbm90IGdvIGlkbGUgbXVsdGlwbGUgdGltZXMuCgo+
IFRoZSBhaW0gaXMgdGhhdCBjby1vcGVyYXRpdmUgY2xpZW50cyBuZXZlciBkcmF3IGEgZnJhbWUg
dGhhdCB3aWxsIG9ubHkKPiBnZXQgZGlzY2FyZGVkLgo+Cj4+IEhvdyBhYm91dCBkb2luZyB0aGlz
IGluc3RlYWQ6Cj4+Cj4+IDEuIEFzIHNvb24gYXMgYXQgbGVhc3Qgb25lIHdpbmRvdyBoYXMgbmV3
IGNvbW1pdHRlZCBzdGF0ZSB5b3Ugc3VibWl0IHRoZQo+PiByZW5kZXJpbmcuCj4+ICAgwqDCoMKg
IMKgwqDCoCBBcyBmYXIgYXMgSSB1bmRlcnN0YW5kIGl0IHRoYXQgaXMgYWxyZWFkeSB0aGUgY2Fz
ZSBhbnl3YXkuCj4gQXQgbGVhc3QgV2VzdG9uIGRvZXMgbm90IHdvcmsgbGlrZSB0aGF0LiBEb2lu
ZyB0aGF0IG1lYW5zIHRoYXQgdGhlCj4gZmlyc3QgY2xpZW50IHRvIHNlbmQgYSBuZXcgZnJhbWUg
d2lsbCBsb2NrIGFsbCBvdGhlciBjbGllbnQgdXBkYXRlcyBvdXQKPiBvZiB0aGF0IHVwZGF0ZSBj
eWNsZS4KPgo+IEhlbmNlLCBhIGNvbXBvc2l0b3IgdXN1YWxseSB3YWl0cyB1bnRpbCBzb21lIHBv
aW50IGJlZm9yZSB0aGUgdGFyZ2V0Cj4gdmJsYW5rIGJlZm9yZSBpdCBzdGFydHMgdGhlIHJlcGFp
bnQsIHdoaWNoIGxvY2tzIHRoZSB3aW5kb3cgc3RhdGUgaW4KPiBwbGFjZSBmb3IgdGhlIGZyYW1l
LgoKVWZmLCB0aGF0IG1lYW5zIHdlIGhhdmUgbG9zdCB0aGlzIGdhbWUgYW55d2F5LgoKU2VlIHlv
dSBnZXQgdGhlIGJlc3QgZW5lcmd5IHV0aWxpemF0aW9uIGlmIHRoZSBoYXJkd2FyZSB3YWtlcyB1
cCBhcyBmZXcgCmFzIHBvc3NpYmxlIGFuZCBzdGlsbCBnZXQgZXZlcnl0aGluZyBkb25lLgoKU28g
d2hhdCBoYXBwZW5zIGluIHRoZSBjYXNlIHlvdSBkZXNjcmliZXMgaXMgdGhhdCB0aGUgaGFyZHdh
cmUgY29tZXMgb3V0IApvZiBzbGVlcCBhdCBsZWFzdCB0d2ljZSwgb25jZSBmb3IgdGhlIGNsaWVu
dCBhbmQgb25jZSBmb3IgdGhlIHNlcnZlciAKd2hpY2ggaXMgcmF0aGVyIHN1YiBvcHRpbWFsLgoK
PiBBbnkgY2xpZW50IHVwZGF0ZSBjb3VsZCBjb250YWluIHdpbmRvdyBzdGF0ZSBjaGFuZ2VzIHRo
YXQgcHJldmVudHMgdGhlCj4gR1BVIGZyb20gY2hvb3NpbmcgdGhlIGNvbnRlbnQgYnVmZmVyIHRv
IHVzZS4KPgo+PiAyLiBCZWZvcmUgc3RhcnRpbmcgcmVuZGVyaW5nIHRoZSBoYXJkd2FyZSBkcml2
ZXIgd2FpdHMgd2l0aCBhIHRpbWVvdXQKPj4gZm9yIGFsbCB0aGUgd2luZG93IGNvbnRlbnQgdG8g
YmVjb21lIHJlYWR5Lgo+PiAgIMKgwqDCoCDCoMKgwqAgVGhlIHRpbWVvdXQgaXMgcGlja2VkIGlu
IGEgd2F5IHNvIHRoYXQgd2UgYXQgbGVhc3QgcmVhY2ggYQo+PiByZWFzb25hYmxlIGZwcy4gTWFr
aW5nIHRoYXQgZGVwZW5kaW5nIG9uIHRoZSBtYXhpbXVtIHJlZnJlc2ggcmF0ZSBvZiB0aGUKPj4g
ZGlzcGxheSBkZXZpY2Ugc291bmRzIHJlYXNvbmFibGUgdG8gbWUuCj4+Cj4+IDNhLiBJZiBhbGwg
d2luZG93cyBiZWNvbWUgcmVhZHkgb24gdGltZSB3ZSBkcmF3IHRoZSBmcmFtZSBhcyBleHBlY3Rl
ZC4KPj4gM2IuIElmIGEgdGltZW91dCBvY2N1cnMgdGhlIGNvbXBvc2l0b3IgaXMgbm90ZWQgb2Yg
dGhpcyBhbmQgZ29lcyBvbiBhCj4+IGZhbGxiYWNrIHBhdGggcmVuZGVyaW5nIG9ubHkgdGhlIGNv
bnRlbnQga25vd24gdG8gYmUgcmVhZHkuCj4gU291bmRzIGxpa2UgdGhlIGZhbGxiYWNrIHBhdGgs
IHdoZXJlIHRoZSBjb21wb3NpdG9yJ3MgcmVuZGVyaW5nIGlzCj4gYWxyZWFkeSBsYXRlLCB3b3Vs
ZCBuZWVkIHRvIHJlLWRvIGFsbCB0aGUgcmVuZGVyaW5nIHdpdGggYW4gZXh0cmVtZWx5Cj4gdGln
aHQgc2NoZWR1bGUganVzdCBiZWZvcmUgdGhlIEtNUyBzdWJtaXNzaW9uIGRlYWRsaW5lLiBJT1cs
IHdoZW4KPiB5b3UncmUgbm90IGdvaW5nIHRvIG1ha2UgaXQgaW4gdGltZSwgeW91IGhhdmUgdG8g
ZG8gZXZlbiBtb3JlIHdvcmsgYW5kCj4gcGluZy1wb25nIGV2ZW4gbW9yZSBiZXR3ZWVuIENQVSBh
bmQgR1BVIGFmdGVyIGJlaW5nIGEgYml0IGxhdGUgYWxyZWFkeS4KPiBJcyB0aGF0IHJlYWxseSBh
IGdvb2QgaWRlYT8KCk15IGlkZWEgaXMgdGhhdCBib3RoIHRoZSBmYWxsYmFjayBwYXRoIGFuZCB0
aGUgbm9ybWFsIHJlbmRlcmluZyBhcmUgCnN1Ym1pdHRlZCBhdCB0aGUgc2FtZSB0aW1lLCBqdXN0
IHdpdGggYSBiaWcgaWYvdGhlbi9lbHNlIGFyb3VuZCBpdC4gRS5nLiAKdGhlIHRpbWVvdXQgaGFw
cGVucyBvbiB0aGUgR1BVIGhhcmR3YXJlIGFuZCBub3Qgb24gdGhlIENQVS4KCkJ1dCBJIHRoaW5r
IHRoYXQgc3R1ZmYgaXMganVzdCB0byBjb21wbGljYXRlZCB0byBpbXBsZW1lbnQuCgpJIHdhbnQg
dG8gZGVzY3JpYmUgb25jZSBtb3JlIHdoYXQgdGhlIGlkZWFsIGNvbmZpZ3VyYXRpb24gd291bGQg
YmU6CjEuIFdoZW4geW91IHJlbmRlciBhIGZyYW1lIG9uZSBvciBtb3JlIGNsaWVudHMgc3VibWl0
IGpvYnMgdG8gdGhlIGhhcmR3YXJlLgoyLiBUaG9zZSBqb2JzIHRoZW4gZXhlY3V0ZSBvbiB0aGUg
aGFyZHdhcmUgYXN5bmNocm9ub3VzbHkgdG8gdGhlIENQVS4KMy4gQXQgdGhlIHNhbWUgdGltZSB0
aGUgQ1BVIHByZXBhcmVzIGEgY29tcG9zaXRpb24gam9iIHdoaWNoIHRha2VzIGFsbCAKdGhlIHdp
bmRvdyBjb250ZW50IGZyb20gY2xpZW50cyBhbmQgcmVuZGVycyBhIG5ldyBmcmFtZS4KNC4gVGhp
cyBuZXcgZnJhbWUgZ2V0cyBzdWJtaXR0ZWQgdG8gdGhlIGhhcmR3YXJlIGRyaXZlciBhcyBuZXcg
Y29udGVudCAKb24gdGhlIHNjcmVlbi4KNS4gVGhlIGhhcmR3YXJlIGRyaXZlciB3YWl0cyBmb3Ig
YWxsIHRoZSByZW5kZXJpbmcgdG8gYmUgY29tcGxldGVkIGFuZCAKZmxpcHMgdGhlIHNjcmVlbi4K
CgpUaGUgaWRlYSBpcyB0aGF0IHlvdSBoYXZlIG9ubHkgb25lIGJsb2NrIG9mIGFjdGl2aXR5IG9u
IHRoZSBoYXJkd2FyZSwgCmUuZy4gc29tZXRoaW5nIGxpa2UgdGhpczoKXy0tLS0tLS0tLS0tLV9f
X19fX19mbGlwXy0tLS0tLS0tLS0tLS1fX19fX2ZsaXAuLi4uLgoKCkJ1dCB3aGF0IGhhcHBlbnMg
d2l0aCBXYXlsYW5kIGN1cnJlbnRseSBpcyB0aGF0IHlvdSBlbmQgdXAgd2l0aDoKXy0tLS0tLS0t
X19fX19fXy1fX2ZsaXBfLS0tLS0tLS0tLS0tX19fLV9fZmxpcC4uLi4uCgoKT3IgZXZlbiB3b3Jz
ZSB3aGVuIHlvdSBoYXZlIG11bHRpcGxlIGNsaWVudHMgcmVuZGVyaW5nIGF0IHJhbmRvbSB0aW1l
czoKXy0tLV8tLS1fLS0tX19fXy1fX2ZsaXBfLS0tXy0tLV8tLS1fX18tX19mbGlwLi4uLi4KCgpJ
J20gYWN0dWFsbHkgbm90IHRoYXQgb2YgYSBwb3dlciBtYW5hZ2VtZW50IGd1eSwgYnV0IGl0IGlz
IHJhdGhlciAKb2J2aW91cyB0aGF0IHRoaXMgaXMgbm90IG9wdGltYWwuCgpSZWdhcmRzLApDaHJp
c3RpYW4uCgoKPiBJdCBhbHNvIG1lYW5zIHRoZSBjb21wb3NpdG9yIGNhbm5vdCBzdWJtaXQgdGhl
IEtNUyBhdG9taWMgY29tbWl0IHVudGlsCj4gdGhlIEdQVSBpcyBkb25lIG9yIHRpbWVkIG91dCB0
aGUgY29tcG9zaXRpbmcgam9iLCB3aGljaCBpcyBhbm90aGVyCj4gR1BVLUNQVSBwaW5nLXBvbmcu
Cj4KPj4gNC4gUmVwZWF0Lgo+Pgo+PiBUaGlzIHdheSB3ZSBzaG91bGQgYmUgYWJsZSB0byBoYW5k
bGUgYWxsIHVzZSBjYXNlcyBncmFjZWZ1bGx5LCBlLmcuIHRoZQo+PiBoYW5naW5nIGNsaWVudCB3
b24ndCBjYXVzZSB0aGUgc2VydmVyIHRvIGJsb2NrIGFuZCB3aGVuIGV2ZXJ5dGhpbmcKPj4gYmVj
b21lcyByZWFkeSBvbiB0aW1lIHdlIGp1c3QgcmVuZGVyIGFzIGV4cGVjdGVkLgo+Cj4gVGhhbmtz
LAo+IHBxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
