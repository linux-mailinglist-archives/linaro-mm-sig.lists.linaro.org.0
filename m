Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FF241582D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Sep 2021 08:17:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 400306242C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Sep 2021 06:17:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2F27F62164; Thu, 23 Sep 2021 06:17:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37DB661945;
	Thu, 23 Sep 2021 06:17:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5726D6100A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Sep 2021 06:17:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4A02761945; Thu, 23 Sep 2021 06:17:47 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2051.outbound.protection.outlook.com [40.107.223.51])
 by lists.linaro.org (Postfix) with ESMTPS id 2A2FE6100A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Sep 2021 06:17:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KJ/JIidVzb1b5lOvjMIVw2lSjSSys4eyr67U2jTKB33QXwKnKlgStUBGAoHqVSGs2ufYcUBrSXgiux2tBKreitzaIxlmSfCkQfqgev5FMMEZ51dNviH+FYayEvs3/n/2p2UdbbiprAQNdguNah8v8XfP0oZOz0rUc3nZwfIJxQ+kcz03MkHh4kNpLhhYpwlsg+Y2GC/SQ/BAmKOVig9iCIsHuACXwDbcokgveifdJT/ckqnDqrgASKVb5+37UMzdadJw4EOAZ3PlZ+4pe/J8XhaVHCo2rS2PoMArg09lsxvUZ1nfn/OrRogG+xAUmak0Ch5IA08NmJ41HQprBUsMTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=iW+QWVNpioo1J/BHf1wZW0eYErhKVN3YhAdh/HVQAFI=;
 b=J+qpVUx9UbT7SUD3CGiVSqKuYLLzLY/TU2Y38ZYw8YN2GX8h9y8j08Z/FYnyXeSLFUJk3y76823aMhuUCEGMo6skMVG2/7S6yMvxe3gDC+MDLySVnKMNq1xVnwIyl/03iKXBD+oM/AplZpqvHdOqhP9H7SuVNPNcKEGABQtPsbqJdYFbE43FDRkEKtGcWFPc10DYNhU2o0SjABMbIgpZ60/ur7NvGJJ9Th9IMLJBy5psMwhrt65OdOQzTpLBwOeVK7B7vLTJ9R6aAq1CnWkVg14/FT/YsVR39FRhRdH0qPtw7XctaMQZ0guX20RnYnI5Y1c6ij/ekYhEJ2yDR2IvfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iW+QWVNpioo1J/BHf1wZW0eYErhKVN3YhAdh/HVQAFI=;
 b=Dj9/0z0Rch6MNu/dD/Y0J4VDO9hPgSemzCXaQQHL8g5g+kLtjJlpy4T70sutt+xz1wpwyxtA+cl0bU+Xh/IIh595rkHvR5Ep+7A3F113Thj1Nl5XwDIIjVpZHN7poxvyyLJD+D+zSl64N0raIYCgs8tgj2fzpZ8f1gcnJn64Yps=
Authentication-Results: baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4375.namprd12.prod.outlook.com (2603:10b6:208:24f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Thu, 23 Sep
 2021 06:17:41 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe%6]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 06:17:41 +0000
To: Dave Airlie <airlied@gmail.com>, Alexandre Bailon <abailon@baylibre.com>
References: <20210917125945.620097-1-abailon@baylibre.com>
 <20210917125945.620097-3-abailon@baylibre.com>
 <CAPM=9tzOADabEgEP1L+yNO4gj2JhNuVDL-Bhpbsz4=UX5feLcg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <ffc29919-809f-05c3-6079-62f1e6453f24@amd.com>
Date: Thu, 23 Sep 2021 08:17:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <CAPM=9tzOADabEgEP1L+yNO4gj2JhNuVDL-Bhpbsz4=UX5feLcg@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR05CA0090.eurprd05.prod.outlook.com
 (2603:10a6:208:136::30) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
Received: from [192.168.178.21] (91.14.161.181) by
 AM0PR05CA0090.eurprd05.prod.outlook.com (2603:10a6:208:136::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend
 Transport; Thu, 23 Sep 2021 06:17:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a93b627-b420-487d-f228-08d97e59d945
X-MS-TrafficTypeDiagnostic: MN2PR12MB4375:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4375B3F56493E32C96DF95FE83A39@MN2PR12MB4375.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KrkzJA2dNiZw3Yvdu/POyWStd4YAhzN3QexReseCYHnRsUIbkTFpm10Kd8WSL3/xGl5BlLFRGj4DkXplYDfMm9qQwu6nKSHCtlmO6+HTuKf4exTdteSX0FcJwya9HGbyX3zUKCyT+vSxIYfEaA4nUFEnWYxLXvLzEYo4/Ltb7h45EtTEw9B+6CKmkPehyItpjweBe+kcjrlu7hp6n8lbqIx5MEj/Qq+d9AYq6V4dXxzPa8JZ+aF+gTTZUEkBHwKymNwLZwPGkYhA5wO30ss1lPXUY8GyPli1NKTqobWDKo9q4jdJoH99BablpDXDNsBLZCBKslOS6YqbJfKFd/WQmsheMDQSUGJocKYfMAJCFhGQUQXCfj3JkNarfLB7BRFJvU0KhaYvMICf0HFugGFECmik01w0tG9Vz/LkWKSETjjBez4/95/nZBUMSEyrAm6Src3LZVgyt/22WIimsCPyW9+PkyrOUrWUENbdKa7gqjJtlYT/CDVdlwwPtNp3kJeStviYT/A9PXbDG6F3N02Wo0kqFpKXlAE6Vlppzr5Y2chLR5Tl5vkRJim/WvVCD53/bH/c7DQPfTuC9UOsSwhlrUVXJtzANa766j83nzj4aajN04thP6B1qDtAEUlr6MxTIkskPLFNrGBV/aWTGY/b5v8ohlBEBWaF/m8OU8B6MPFpoXyjMhjuwEJBnpyguTsb06tELJn8I8Y+KolV2v9zQidFJj0OhDc8oh33WKeCkhamy4uUPG/5CVThp5e8QWT6s7Yp2XvSRyeUcxi7wG/SxZ58UfXWhB90fiWyoV36jokZhQGe5X+xUu8eYgnWlBlQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6666004)(966005)(38100700002)(508600001)(6486002)(16576012)(31686004)(4326008)(5660300002)(36756003)(45080400002)(26005)(956004)(2906002)(110136005)(2616005)(54906003)(8936002)(7416002)(66476007)(66556008)(31696002)(186003)(8676002)(86362001)(316002)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFJEQVNzM2ZMazNJQlFkSTU5QUFDTjNVakNRM2JJR3krMWxzVEFIUWRQM0J2?=
 =?utf-8?B?eVlPNTM1Q004TklzUXp4T2h5TldydXdGZWxhZDFXeC80L2NSTWFFSFhINTNz?=
 =?utf-8?B?RFBQa2JaRnFUbVZGYTJmbVNpVnlhWUs0bUVBbUZNN3VnQXFuRTFoUWwxUlBi?=
 =?utf-8?B?YitGdjVZVUFnMzE3VGVwRUpqN1FSZ1Y5QmFFaEZobi9CZjBpc0VkSlJNajZ4?=
 =?utf-8?B?SkNSVVVnTlRtbXJpaHFOQ1FSWjdlbE9EVjVGMWl5K0xyTTRWZ3pQdktmZjc1?=
 =?utf-8?B?Qm9wZ2xLcGl2RmdWOE9OaVMra09samlRVnRyRGlaK2RkMHB4aGJkdnRtek1E?=
 =?utf-8?B?M2g0TFF6UlBLQU0xZGtIaFRKNnNnaTBOY0wwam9LZFI1RU9hZFdLMFVlZHlo?=
 =?utf-8?B?OEdlc2pTdDJjVFRRMHJqUlBJV3MrMHhIQlpFOElMVWNUemRveFlJWEtZNmsv?=
 =?utf-8?B?TkRSdjJjVElYdEJSK0F5OW5DaDd0MWJ4cWZkQnhLM29HU1JJeFRRVFVkdFJW?=
 =?utf-8?B?akpuZWluSWRxK0NuSzN5VmgzeTIvTXpLZ2E5cTRTb1FOUDdkSWFudkNkSExM?=
 =?utf-8?B?Y2ZnMlRSUGRTcVIxR3JxR2Z0NzdHZWg1ZFlpR3NhU0psOFFSVUZwdVAveEdV?=
 =?utf-8?B?REJKeVlrNFBqOUdZSFZXRDRSQWFob3ZCampaakVpbUZ6OW9xY21UK0xQckFa?=
 =?utf-8?B?N05tb2UrUCtJbjZwYVFScHRZVHcyTC9sVjlydFdMaUlmRzZjamhFalZST09q?=
 =?utf-8?B?TkZFSXRaeUp3dHlLYlZjOUx3ajZFQWI5a21HVVlhZGQ5dE9QaDhhV1hCNUFD?=
 =?utf-8?B?VkhOV3hMRFdISlJJR2czSmVZeE5KaHg4Z0JqZ0JxZGlxMzdWSlVmS1MvbThy?=
 =?utf-8?B?bk9kb3oxTk1oMi8zL1hKZVpQNUlCY1F1WVptdmlZVUhmWXVFVFg5dnZiMUFG?=
 =?utf-8?B?TWZQRysrbVhOblF3bStrM0ZPNjBnS1pBOVAvRmsvSitad2t6QWFPTW9lc3Ba?=
 =?utf-8?B?L0pKTDkxZ2FjWjZTd1g4TUw2dnY1elVEU0pVdTJDckYyZmxBZEo2QW1aNDdV?=
 =?utf-8?B?ZG1XQ3F6SnoxNlg5Y09QUWluUEw4bHpWZXYyV2kvU1NnYUdkYnd6MDdmd0Q0?=
 =?utf-8?B?eUxpclJ4QXVXdHpRUXo1cXU2Sno4NDRDL2tRS1pGTCtxdWhtd3lTbEFreVJ1?=
 =?utf-8?B?UzZRbjY5RTB0RWIyaEZSSkpCL1NpR0pEdzJCME1EVHFZK2U1NDgxaW41MDBr?=
 =?utf-8?B?VHBqdzFHQjhQb2ZMaFdWQmwvU2dSTkdBYTZna3NWaTZrckFjZ1diRHpZYXJW?=
 =?utf-8?B?M3h4NTI0T1JGSGE2eG11WGtKSlpYMm1pamZjUGs3Tzg1aDZjNUNNWW55RCsr?=
 =?utf-8?B?d210bHZZOE92b2tJbThLSzU3THVzS09WTUlYQW91dkNjcjFEaFN4bUdPQVBV?=
 =?utf-8?B?UytlRi9YNld1VlBXcnpHZm16eHc0Qjk3RzNibHR5ajI4bStwWElOSjB5Q0Fh?=
 =?utf-8?B?YXFRTUxjTGUvNm9kalFwajRLL1phbmZzMVVPNHFsY0ZrYjZxcEhsRFdwQmkx?=
 =?utf-8?B?OFJKSFc5MEZxVVhucEd1WlVBbkp1OU1CYy9uejhDY003Ymp5WTdyaE9zemtv?=
 =?utf-8?B?N056UlNRZlZHRnNJcnh1a1d0WElGYjlSeEQ3djBOZE1vV1dETjQ3OG5aYnA0?=
 =?utf-8?B?azhHSkdhSENJZ2ppTnRNSFdCeDRGckh2SUg3VkY2K1VESkZkbGIrOGdHS2Qv?=
 =?utf-8?Q?yQauzGVL4ggD98lZmViwOwXn9R9TDtFxNgTsI/F?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a93b627-b420-487d-f228-08d97e59d945
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2021 06:17:41.3773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i8ka79Yy4qjAzt5uimpZkB9KaQQt1SH7Mxl/Xj6gWKZyAoXfTP89tFfbNfWG3lyg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4375
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 2/4] DRM: Add support of AI
 Processor Unit (APU)
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
Cc: ohad@wizery.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Dave Airlie <airlied@linux.ie>,
 linux-remoteproc@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 bjorn.andersson@linaro.org,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 gpain@baylibre.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 khilman@baylibre.com, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjMuMDkuMjEgdW0gMDI6NTggc2NocmllYiBEYXZlIEFpcmxpZToKPiBPbiBTYXQsIDE4IFNl
cHQgMjAyMSBhdCAwNzo1NywgQWxleGFuZHJlIEJhaWxvbiA8YWJhaWxvbkBiYXlsaWJyZS5jb20+
IHdyb3RlOgo+PiBTb21lIE1lZGlhdGVrIFNvQyBwcm92aWRlcyBoYXJkd2FyZSBhY2NlbGVyYXRv
ciBmb3IgQUkgLyBNTC4KPj4gVGhpcyBkcml2ZXIgcHJvdmlkZXMgdGhlIGluZnJhc3RydWN0dXJl
IHRvIG1hbmFnZSBtZW1vcnkKPj4gc2hhcmVkIGJldHdlZW4gaG9zdCBDUFUgYW5kIHRoZSBhY2Nl
bGVyYXRvciwgYW5kIHRvIHN1Ym1pdAo+PiBqb2JzIHRvIHRoZSBhY2NlbGVyYXRvci4KPj4gVGhl
IEFQVSBpdHNlbGYgaXMgbWFuYWdlZCBieSByZW1vdGVwcm9jIHNvIHRoaXMgZHJpdmVycwo+PiBy
ZWxpZXMgb24gcmVtb3RlcHJvYyB0byBmb3VuZCB0aGUgQVBVIGFuZCBnZXQgc29tZSBpbXBvcnRh
bnQgZGF0YQo+PiBmcm9tIGl0LiBCdXQsIHRoZSBkcml2ZXIgaXMgcXVpdGUgZ2VuZXJpYyBhbmQg
aXQgc2hvdWxkIHBvc3NpYmxlCj4+IHRvIG1hbmFnZSBhY2NlbGVyYXRvciB1c2luZyBhbm90aGVy
IHdheXMuCj4+IFRoaXMgZHJpdmVyIGRvZXNuJ3QgbWFuYWdlIGl0c2VsZiB0aGUgZGF0YSB0cmFu
c21pdGlvbnMuCj4+IEl0IG11c3QgYmUgcmVnaXN0ZXJlZCBieSBhbm90aGVyIGRyaXZlciBpbXBs
ZW1lbnRpbmcgdGhlIHRyYW5zbWl0aW9ucy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZHJl
IEJhaWxvbiA8YWJhaWxvbkBiYXlsaWJyZS5jb20+Cj4+IFtTTklQXQoKPj4gUGxlYXNlIHJlZmVy
IHRvCj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3Vy
bD1odHRwcyUzQSUyRiUyRnd3dy5rZXJuZWwub3JnJTJGZG9jJTJGRG9jdW1lbnRhdGlvbiUyRmlv
Y3RsJTJGYm90Y2hpbmctdXAtaW9jdGxzLnJzdCZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFu
LmtvZW5pZyU0MGFtZC5jb20lN0M1M2EwZWYyNjMwNDA0ZGRjNGQ5NDA4ZDk3ZTJkNDA5YyU3QzNk
ZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2Nzk1NTUxMjM4Nzg0
MTUlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYy
bHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7c2RhdGE9Nm9W
WEFBT2pRWCUyRm5Eekp4WklBQUxxakRvdXJIZHJkR0Y2UVZRS1I1OEtJJTNEJmFtcDtyZXNlcnZl
ZD0wCj4+Cj4+IGhlcmUgYW5kIGJlbG93IGluIG1hbnkgcGxhY2VzLgo+Pgo+PiBUaGVyZSdzIGEg
bG90IG9mIG1pc3NpbmcgcGFkZGluZy9hbGlnbm1lbnQgaGVyZS4KClRoZXJlIGlzIGFsc28gdGhl
IHBhaG9sZSB1dGlsaXR5IHdoaWNoIHNob3cgeW91IG5pY2VseSB3aGVyZSB5b3UgbmVlZCAKcGFk
ZGluZyBmb3IgeW91ciBJT0NUTCBzdHJ1Y3R1cmVzLgoKRm9yIGV4YW1wbGUgInBhaG9sZSBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHUua28gLUMgCmRybV9hbWRncHVfZ2VtX3ZhIiBn
aXZlcyB5b3U6CgpzdHJ1Y3QgZHJtX2FtZGdwdV9nZW1fdmEgewogwqDCoMKgIF9fdTMywqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhhbmRsZTvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC8qwqDCoMKgwqAgMMKgwqDCoMKgIDQgKi8KIMKgwqDCoCBfX3UzMsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfcGFkO8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qwqDCoMKgwqAgNMKgwqDCoMKgIDQgKi8KIMKgwqDCoCBf
X3UzMsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcGVyYXRpb247
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKsKgwqDCoMKgIDjCoMKgwqDCoCA0ICovCiDCoMKgwqAg
X191MzLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmxhZ3M7wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qwqDCoMKgIDEywqDCoMKgwqAgNCAqLwogwqDC
oMKgIF9fdTY0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhX2Fk
ZHJlc3M7wqDCoMKgwqDCoMKgwqDCoMKgwqAgLyrCoMKgwqAgMTbCoMKgwqDCoCA4ICovCiDCoMKg
wqAgX191NjTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zmc2V0
X2luX2JvO8KgwqDCoMKgwqDCoMKgwqAgLyrCoMKgwqAgMjTCoMKgwqDCoCA4ICovCiDCoMKgwqAg
X191NjTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWFwX3NpemU7
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qwqDCoMKgIDMywqDCoMKgwqAgOCAqLwoKIMKgwqDC
oCAvKiBzaXplOiA0MCwgY2FjaGVsaW5lczogMSwgbWVtYmVyczogNyAqLwogwqDCoMKgIC8qIGxh
c3QgY2FjaGVsaW5lOiA0MCBieXRlcyAqLwp9OwoKQW5kIGFzIHlvdSBjYW4gc2VlIHdlIGhhdmUg
YWRkZWQgdGhlIF9wYWQgZmllbGQgdG8gb3VyIElPQ1RMIHBhcmFtZXRlciAKc3RydWN0dXJlIHRv
IHByb3Blcmx5IGFsaWduIHRoZSA2NGJpdCBtZW1iZXJzLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoK
Pj4KPj4gSSdtIHRyeWluZyB0byBmaW5kIHRoZSB0aW1lIHRvIHJldmlldyB0aGlzIHN0YWNrIGlu
IGZ1bGwsIGFueSB3cml0ZXVwcwo+PiBvbiBob3cgdGhpcyBpcyB1c2VkIGZyb20gdXNlcnNwYWNl
IHdvdWxkIGJlIHVzZWZ1bCAobm90IGp1c3QgdGhlIGNvZGUKPj4gcmVwbywgYnV0IHNvbWUgc29y
dCBvZiBob3cgZG8gSSBnZXQgYXQgaXQpIGl0IHJlYWRzIGFzIGtpbmRhIGdlbmVyaWMKPj4gKGNh
bGxpbmcgaXQgYXB1KSwgYnV0IHRoZW4gaGFzIHNvbWUgc3BlY2lmaWNzIGFyb3VuZCBkZXZpY2Ug
YmluZGluZy4KPj4KPj4gRGF2ZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
