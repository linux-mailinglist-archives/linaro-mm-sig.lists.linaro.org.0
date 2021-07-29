Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4592A3D9FC7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 10:43:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C99306354D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 08:43:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A9D686350F; Thu, 29 Jul 2021 08:43:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 038C06350A;
	Thu, 29 Jul 2021 08:43:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9885B603AB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 08:43:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8D2066350A; Thu, 29 Jul 2021 08:43:38 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2068.outbound.protection.outlook.com [40.107.92.68])
 by lists.linaro.org (Postfix) with ESMTPS id 76829603AB
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 08:43:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ODz9ibhulbCrKlHoDgrPmF0ob7ZS6jzNUXDtCg1b8CkQwU7Wrw4+xUqP6LUdTwoLaY0XMxrSTWBr7FyX4akJe4zd5Ac1wXA+YQUeBSA5zSd4/5uYbpYZjy54ldEujdts5m6ufho5SVo2bInS5RN9NIhWMjnckTLfCfRD69iw7M0tOkRvaVve7muVPqheuGsm16P0/q19W6duvDogUkAhQKv9pDsp9q3LUU08BbpiNT5B7+VqVMCfx7bq8NrWA4zT5j22W+EvfxD5fyrj0Y23W1+uLj4r4yHmDydi/0lIDG6mFFbg0moLqh0uJxgZhWqz5BIX/gaGpt8pktEuJAki0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wN4jFALw7xgibT7SY6MP8qoVWR2GlybbLVfVTmZCRK0=;
 b=kBOhFm1N0H0kvy1q68XxiZlxLjBlciV1ERCoUvx79FCREL8XfkObmHYHLQT2l3Rgvf+2kq6HF8QS9nn0n1MT6yXdqk0WyuVeODnluCfra8cpOucAbVGYn2hw+A4zLdMR68nAARVemFhwKqUK/M7XL6S4YK/J7xTLB3IXLA4OHCq48gB+FoM0bGn5anJW9NlWuG5ZAIwQtQ99Ke04mXznZJXz+6Gb3doIe+fRquP8qbVrFD3lxepVDFLJau0KL4JxIll64sbYJH0hPhmyQeQtQCKwAj4WU9pcw9gT8LY+F2o4BuBqwSQNUcoGBNgq2aaU5CS3zTNkkIzyLLceomzehA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wN4jFALw7xgibT7SY6MP8qoVWR2GlybbLVfVTmZCRK0=;
 b=i26wraluJEygr7z7/XRnYxiAA3aVG8Jg5DgucD5tDsOCGyNnjQTuNpwcejdOhkg6zefhA4LMb5Ry02S5De89SluDg4mvG1HN+kLMkKd/0YD69r8DedFOIBwp9SEo5XefxtTBQ3gpuNcL7+Nn6tGCzM4mw8qtc17mW35HDUvZNvc=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from BY5PR12MB3764.namprd12.prod.outlook.com (2603:10b6:a03:1ac::17)
 by BYAPR12MB2888.namprd12.prod.outlook.com (2603:10b6:a03:137::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Thu, 29 Jul
 2021 08:43:31 +0000
Received: from BY5PR12MB3764.namprd12.prod.outlook.com
 ([fe80::6c58:1598:e768:d45e]) by BY5PR12MB3764.namprd12.prod.outlook.com
 ([fe80::6c58:1598:e768:d45e%7]) with mapi id 15.20.4373.021; Thu, 29 Jul 2021
 08:43:30 +0000
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <3675d530-c9fc-7ec9-e157-b6abeeec7c2a@amd.com>
Date: Thu, 29 Jul 2021 10:43:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210729112358.237651ff@eldfell>
Content-Language: en-US
X-ClientProxiedBy: PR3P191CA0040.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:102:55::15) To BY5PR12MB3764.namprd12.prod.outlook.com
 (2603:10b6:a03:1ac::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:4b10:6e80:f619:9837]
 (2a02:908:1252:fb60:4b10:6e80:f619:9837) by
 PR3P191CA0040.EURP191.PROD.OUTLOOK.COM (2603:10a6:102:55::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.23 via Frontend Transport; Thu, 29 Jul 2021 08:43:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2dc70b4c-ef44-4f79-69a1-08d9526cf0fa
X-MS-TrafficTypeDiagnostic: BYAPR12MB2888:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR12MB288816D95FFE4B7E1C809F5883EB9@BYAPR12MB2888.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n9pe2bhXPaPVpAgkr7dlt7J1AQN9kHsZqmjwtQr3dskT+e1wYMsVQMoSXMhIH/qiOeBthdYBsJywWpTK0JgEFgwSgy/n9cuYN8voBE8tLMgm/rpKSZeHGATyvg2+c2xbUhOOmeSrc1yLa2pc8OC70NcfIrNeXn4C3g1YhkwUsooJxjQ2E+SOnKPLq/Mjqijm8vI7yTsLMBqZ4UqtbLvp5KDQFV9Eei83/GJqyPQFdyf75NC8c7r4FRKxjKHKW8b06poLN75hAYFlUuUDn6/mkBkKHsYv9T+m5wGTUnweIqcqbnWJRHbfNE/IaTvoVsw06OzbmiuKxmXrchuuf8r4wb1pJrCQCEv4GGniXmISGSk0WPP3MRCk8kjKQQoPePSKSOme4ThPRd++4ERIs4i4O94Vr4LURJ6CVWTyEtk21ipOLOSPgjg74qxceGzGpNPd8jAkPRIIzYv4l101a8E3uOBBaNkNfvLfP2zVGfqrC/Kj3r7Ep6QtPTj406UR6rRvd7iistqLpI3qA/ggRZOwETVbswMYadJAgyPDUVMzOGbDRdU5qnRQBRF0N/qVlRITvn81rYZ8lEHf8S5JNl1A0KWlLt1IQUmPNzkjhGTqT9QJkMh7uw8SNBrWATLDeFD1g5n+IJFOqXOBFxQrEbC4lBXL2HQl+Paffxm6vu+o8vTmcCbuqAB1HYVgeaYmkeM7B6A5QdIGGZXmvU0Uz+QimUUQDEGh+UdQjtOUEtcr3TX4H0aVI/2Xsadt0xWU364b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR12MB3764.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(54906003)(53546011)(8936002)(7416002)(86362001)(5660300002)(31696002)(8676002)(6916009)(83380400001)(66574015)(66946007)(316002)(38100700002)(6486002)(186003)(66476007)(36756003)(2616005)(66556008)(6666004)(31686004)(4326008)(478600001)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWZ3ODR2SWJNbDg2YnBLOU1idkV4MlNxU2ovS0hjYkN1SkYzNDZnUGordUFu?=
 =?utf-8?B?YjdwaEg3WU1oR21rcXk4eDVHTjFkcUkzYUI3V01sU21XZ05tdU4xNlZVMGdw?=
 =?utf-8?B?MTlqdXh5K3NTVUp0QmJCWklQa083UzRtdHJMYXczNEZueHY3S3dHUHFTUVBN?=
 =?utf-8?B?ZGtBczlBR25YdWdsK2RuM3ZCYzEvU29KOXBqSG84c1BBTVJFemoxMTNjYUNQ?=
 =?utf-8?B?ekwyaDJVT2ZkSUZ4MGZMVkt6VHJ4K1lxZGc1bzZWQzN1VkowdkpCNUlhNWk0?=
 =?utf-8?B?Z25DK3o0Rjk2dS9MWHYwbWNBM0kxa1FIZUd0WFRDK0xnQjZPV24vZ0VYcDdt?=
 =?utf-8?B?RFdTbGdvdXdMNTNMNTdMUXd5TDdqK3o3eTZKYkdQTkMrdSttUE0rdjRoOFU1?=
 =?utf-8?B?MDVpQXM4OGN3dmIydzl4RWhWZitacU5Ea1JRaDJRQkRQWkI3VkozcmNXTE9C?=
 =?utf-8?B?UnpQOGpQbEl6eS9STndZZXN4WUhFeEZMR01uZGJhaHJqWGZSOUM2V3Z3aHNW?=
 =?utf-8?B?cm9wNjVWZkJuQ0hZVVlEQnMveFlQaTlLbStsSW02em9HSjlYaW81ZDNSeWZG?=
 =?utf-8?B?cHRCOVVzQlJoMkZndUJoYXlhZ2E2VUtDWk5OeGtVS3RwcTdmempQdmJqaTlO?=
 =?utf-8?B?Y3hURGVMYkdCUldqb2F1cTVNcFdneGM1UDFQV0x0TCtQK1BqVk4vRVkyQ1Zw?=
 =?utf-8?B?MC9RbTF3QjErSFVFOWV6OHVCZ01XNzNZT2hRbnUxUkdLWjl4K2xYbCtvaW8z?=
 =?utf-8?B?akxaUExHRHBKYnRwa05teS9Ud0RMTUd0dHhvd3FQLzV4YVEzZ1B6SE9vb2RD?=
 =?utf-8?B?enBDT1VaZU5EelRpcjlveW1lb2dpbVl4SXpGdmVKaGhBeU5nZnBJU2ZnUFph?=
 =?utf-8?B?SDhvaE4xN0JGcjBSVWdYS0RreFczRUFXbVNnVXJZdGhqNFdLMVpsVVNzVG1S?=
 =?utf-8?B?cG4xTkxodC9SZzNjZ2FPUk5raXRKbklvN0cxUEtTZUZ4bWdNazlzQ1Z2eEtk?=
 =?utf-8?B?R0F1NVF1SGxzRlNBM2ZpVWJQNzg3Ry9pdC9VUzhiRlZCaTVvSUhwaWVkd011?=
 =?utf-8?B?T3JXcnc4L3gwY3RGY3VJNWVSM3RRcFMrNnNJRjBtUjdPdWxETDJrWWJaeGxh?=
 =?utf-8?B?ZmtOcEJMRHZ2WnhpUkZZVEhmQ1EwSitka3hMU1BocWZQNy80aWVzcFppUmty?=
 =?utf-8?B?c0h5bnFqM2VZcFlnSEtxYjdKOWRaVU04d3NHUXRLOHZuSzVCcFNEWTVvVkVQ?=
 =?utf-8?B?eVUzNTNSaHVDalEzM2NSMUlOZENtVllCbkZ5eTJMSXVWN2I2T2tFdUgxNjQz?=
 =?utf-8?B?V2VRRW5hRlpPcng2bi8zMHk2dDFmZm14c3hZSEFkUDNzUmlKbXhwQzRCdG4y?=
 =?utf-8?B?SkwrQkRmZXh2V0hZbDBGeG9yNUF5YnFFWWRremlFZjFNWGY3M081RmNkbC9u?=
 =?utf-8?B?SS8zR3lHam1XbXVHRHR0SVo1Zlc2UTkwbjJpa3hBVU5XR2w2K2Q3d2ZGZ3Zy?=
 =?utf-8?B?WTExZkdmY0ptZ3pFUEYzc0dMVDBSKzFqSlo4ZW1sUHUrTThZMGxpSnN5ZkN3?=
 =?utf-8?B?bXNhaFhKNTRVbUxkRGcrSmZkTEhzZ25qYUFzZUtUbnNjWHM3dHFJczhIb3dU?=
 =?utf-8?B?eHB4T25qQzc4OW1EbzRmZXIyWGw3bzRIVXQwZTBCNkFUK2RWazl0QXFNL3lw?=
 =?utf-8?B?NFY3SjkvenpLbnB5VTdvTkxqeVpMNDRJbUJEbXNRWlFSWk0rd21LUVl2Tkk1?=
 =?utf-8?B?L1hRNmY0M1dySk9ZazY4TktKMHVPQ2ZoZlE4TTV4a2M5dmdHQW1JdXhObE5Q?=
 =?utf-8?B?YWhVUStMeDhpWE1nT1dCQ0QxaVpMY3duNUgrd1U4N09maFFOT1Z4dUM0dTdo?=
 =?utf-8?Q?ve697MRONYXbI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dc70b4c-ef44-4f79-69a1-08d9526cf0fa
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB3764.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 08:43:30.5922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UJOwJyg2ELIru++ps3q8fMk9tJsn5PUNeEyxMicJFp6HG5TUAutdgLoNsSZB1zVT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2888
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

QW0gMjkuMDcuMjEgdW0gMTA6MjMgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoKPiBPbiBXZWQsIDI4
IEp1bCAyMDIxIDE2OjMwOjEzICswMjAwCj4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+PiBBbSAyOC4wNy4yMSB1bSAxNTo1NyBzY2hyaWViIFBl
a2thIFBhYWxhbmVuOgo+Pj4gT24gV2VkLCAyOCBKdWwgMjAyMSAxNTozMTo0MSArMDIwMAo+Pj4g
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPj4+ICAg
Cj4+Pj4gQW0gMjguMDcuMjEgdW0gMTU6MjQgc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPj4+Pj4g
T24gMjAyMS0wNy0yOCAzOjEzIHAubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4+PiBB
bSAyOC4wNy4yMSB1bSAxNTowOCBzY2hyaWViIE1pY2hlbCBEw6RuemVyOgo+Pj4+Pj4+IE9uIDIw
MjEtMDctMjggMTozNiBwLm0uLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pj4+PiBBdCBs
ZWFzdCBBTUQgaGFyZHdhcmUgaXMgYWxyZWFkeSBjYXBhYmxlIG9mIGZsaXBwaW5nIGZyYW1lcyBv
biBHUFUgZXZlbnRzIGxpa2UgZmluaXNoaW5nIHJlbmRlcmluZyAob3IgdXBsb2FkaW5nIGV0Yyku
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEJ5IHdhaXRpbmcgaW4gdXNlcnNwYWNlIG9uIHRoZSBDUFUgYmVm
b3JlIHNlbmQgdGhlIGZyYW1lIHRvIHRoZSBoYXJkd2FyZSB5b3UgYXJlIGNvbXBsZXRlbHkga2ls
bGluZyBvZiBzdWNoIGZlYXR1cmVzLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBGb3IgY29tcG9zaW5nIHVz
ZSBjYXNlcyB0aGF0IG1ha2VzIHNlbnNlLCBidXQgY2VydGFpbmx5IG5vdCBmb3IgZnVsbCBzY3Jl
ZW4gYXBwbGljYXRpb25zIGFzIGZhciBhcyBJIGNhbiBzZWUuCj4+Pj4+Pj4gRXZlbiBmb3IgZnVs
bHNjcmVlbiwgdGhlIGN1cnJlbnQgS01TIEFQSSBvbmx5IGFsbG93cyBxdWV1aW5nIGEgc2luZ2xl
IHBhZ2UgZmxpcCBwZXIgQ1JUQywgd2l0aCBubyB3YXkgdG8gY2FuY2VsIG9yIG90aGVyd2lzZSBt
b2RpZnkgaXQuIFRoZXJlZm9yZSwgYSBXYXlsYW5kIGNvbXBvc2l0b3IgaGFzIHRvIHNldCBhIGRl
YWRsaW5lIGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlLCBhbmQgd2hlbiB0aGUgZGVhZGxpbmUg
cGFzc2VzLCBpdCBoYXMgdG8gc2VsZWN0IHRoZSBiZXN0IGJ1ZmZlciBhdmFpbGFibGUgZm9yIHRo
ZSBmdWxsc2NyZWVuIHN1cmZhY2UuIFRvIG1ha2Ugc3VyZSB0aGUgZmxpcCB3aWxsIG5vdCBtaXNz
IHRoZSBuZXh0IHJlZnJlc2ggY3ljbGUsIHRoZSBjb21wb3NpdG9yIGhhcyB0byBwaWNrIGFuIGlk
bGUgYnVmZmVyLiBJZiBpdCBwaWNrcyBhIG5vbi1pZGxlIGJ1ZmZlciwgYW5kIHRoZSBwZW5kaW5n
IHJlbmRlcmluZyBkb2VzIG5vdCBmaW5pc2ggaW4gdGltZSBmb3IgdmVydGljYWwgYmxhbmssIHRo
ZSBmbGlwIHdpbGwgYmUgZGVsYXllZCBieSBhdCBsZWFzdCBvbmUgcmVmcmVzaCBjeWNsZSwgd2hp
Y2ggcmVzdWx0cyBpbiB2aXNpYmxlIHN0dXR0ZXJpbmcuCj4+Pj4+Pj4KPj4+Pj4+PiAoVW50aWwg
dGhlIGRlYWRsaW5lIHBhc3NlcywgdGhlIFdheWxhbmQgY29tcG9zaXRvciBjYW4ndCBldmVuIGtu
b3cgaWYgYSBwcmV2aW91c2x5IGZ1bGxzY3JlZW4gc3VyZmFjZSB3aWxsIHN0aWxsIGJlIGZ1bGxz
Y3JlZW4gZm9yIHRoZSBuZXh0IHJlZnJlc2ggY3ljbGUpCj4+Pj4+PiBXZWxsIHRoZW4gbGV0J3Mg
ZXh0ZW5kIHRoZSBLTVMgQVBJIGluc3RlYWQgb2YgaGFja2luZyB0b2dldGhlciB3b3JrYXJvdW5k
cyBpbiB1c2Vyc3BhY2UuCj4+Pj4+IFRoYXQncyBpbmRlZWQgYSBwb3NzaWJsZSBzb2x1dGlvbiBm
b3IgdGhlIGZ1bGxzY3JlZW4gLyBkaXJlY3Qgc2Nhbm91dCBjYXNlLgo+Pj4+Pgo+Pj4+PiBOb3Qg
Zm9yIHRoZSBnZW5lcmFsIGNvbXBvc2l0aW5nIGNhc2UgdGhvdWdoLCBzaW5jZSBhIGNvbXBvc2l0
b3IgZG9lcyBub3Qgd2FudCB0byBjb21wb3NpdGUgbXVsdGlwbGUgb3V0cHV0IGZyYW1lcyBwZXIg
ZGlzcGxheSByZWZyZXNoIGN5Y2xlLCBzbyBpdCBoYXMgdG8gbWFrZSBzdXJlIHRoZSBvbmUgZnJh
bWUgaGl0cyB0aGUgdGFyZ2V0Lgo+Pj4+IFllYWgsIHRoYXQncyB0cnVlIGFzIHdlbGwuCj4+Pj4K
Pj4+PiBBdCBsZWFzdCBhcyBsb25nIGFzIG5vYm9keSBpbnZlbnRzIGEgbWVjaGFuaXNtIHRvIGRv
IHRoaXMgZGVjaXNpb24gb24KPj4+PiB0aGUgR1BVIGluc3RlYWQuCj4+PiBUaGF0IHdvdWxkIG1l
YW4gcHV0dGluZyB0aGUgd2hvbGUgd2luZG93IG1hbmFnZXIgaW50byB0aGUgR1BVLgo+PiBOb3Qg
cmVhbGx5LiBZb3Ugb25seSBuZWVkIHRvIGRlY2lkZSBpZiB5b3Ugd2FudCB0byB1c2UgdGhlIG5l
dyBiYWNraW5nCj4+IHN0b3JlIG9yIHRoZSBvbGQgb25lIGJhc2VkIG9uIGlmIHRoZSBuZXcgc3Vy
ZmFjZSBpcyByZWFkeSBvciBub3QuCj4gRXhjZXB0IHRoYXQgYSB3aW5kb3cgY29udGVudCB1cGRh
dGUgaW4gV2F5bGFuZCBtdXN0IGJlIHN5bmNocm9uaXNlZCB3aXRoCj4gYWxsIHRoZSBwb3NzaWJs
ZSBhbmQgYXJiaXRyYXJ5IG90aGVyIHdpbmRvdyBzeXN0ZW0gc3RhdGUgY2hhbmdlcywgdGhhdAo+
IHdpbGwgYWZmZWN0IGhvdyBhbmQgd2hlcmUgb3RoZXIgd2luZG93cyB3aWxsIGdldCBkcmF3biAq
dGhpcyBmcmFtZSosCj4gaG93IGlucHV0IGV2ZW50cyBhcmUgcm91dGVkLCBhbmQgbW9yZS4KPgo+
IEJ1dCwgaWYgdGhlIHdpbmRvdyBtYW5hZ2VyIG1hZGUgc3VyZSB0aGF0ICpvbmx5KiB3aW5kb3cg
Y29udGVudHMgYXJlCj4gYWJvdXQgdG8gY2hhbmdlIGFuZCAqYWxsKiBvdGhlciBzdGF0ZSByZW1h
aW5zIGFzIGl0IHdhcywgdGhlbiBpdCB3b3VsZAo+IGJlIHBvc3NpYmxlIHRvIGxldCB0aGUgR1BV
IGRlY2lkZSB3aGljaCBmcmFtZSBpdCB1c2VzLiBBcyBsb25nIGFzIGl0Cj4gYWxzbyB0ZWxscyBi
YWNrIHdoaWNoIG9uZSBpdCBhY3R1YWxseSBkaWQsIHNvIHRoYXQgcHJlc2VudGF0aW9uCj4gZmVl
ZGJhY2sgZXRjLiBjYW4gdHJpZ2dlciB0aGUgcmlnaHQgV2F5bGFuZCBldmVudHMuCj4KPiBXYXls
YW5kIGhhcyAiYXRvbWljIGNvbW1pdHMiIHRvIHdpbmRvd3MsIGFuZCBhcmJpdHJhcnkgcHJvdG9j
b2wKPiBleHRlbnNpb25zIGNhbiBhZGQgYXJiaXRyYXJ5IHN0YXRlIHRvIGJlIHRyYWNrZWQgd2l0
aCBpdC4gQSBiaXQgbGlrZSBLTVMKPiBwcm9wZXJ0aWVzLiBFdmVuIGF0b21pYyBjb21taXRzIGFm
ZmVjdGluZyBtdWx0aXBsZSB3aW5kb3dzIHRvZ2V0aGVyIGFyZQo+IGEgdGhpbmcsIGFuZCB0aGV5
IG11c3QgYmUgbGF0Y2hlZCBlaXRoZXIgYWxsIG9yIG5vbmUuCj4KPiBTbyBpdCdzIHF1aXRlIGEg
bG90IG9mIHdvcmsgdG8gZGV0ZXJtaW5lIGlmIG9uZSBjYW4gYWxsb3cgdGhlIEdQVSB0bwo+IGNo
b29zZSB0aGUgYnVmZmVyIGl0IHdpbGwgdGV4dHVyZSBmcm9tLCBvciBub3QuCgpCdXQgaG93IGRv
ZXMgaXQgdGhlbiBoZWxwIHRvIHdhaXQgb24gdGhlIENQVSBpbnN0ZWFkPwoKU2VlIHdoYXQgSSdt
IHByb3Bvc2luZyBpcyB0byBlaXRoZXIgcmVuZGVyIHRoZSBuZXh0IHN0YXRlIG9mIHRoZSB3aW5k
b3cgCm9yIGNvbXBvc2UgZnJvbSB0aGUgb2xkIHN0YXRlIChpbmNsdWRpbmcgYWxsIGF0b21pYyBw
cm9wZXJ0aWVzKS4KCkUuZy4gd2hhdCBkbyB5b3UgZG8gaWYgeW91IHRpbWVvdXQgYW5kIGNhbid0
IGhhdmUgdGhlIG5ldyB3aW5kb3cgY29udGVudCAKb24gdGltZT8gV2hhdCdzIHRoZSBmYWxsYmFj
ayBoZXJlPwoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+Cj4gVGhhbmtzLAo+IHBxCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
