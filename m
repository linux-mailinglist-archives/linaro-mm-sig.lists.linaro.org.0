Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA58C4542EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Nov 2021 09:48:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F7AF60C6A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Nov 2021 08:48:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5B21060280; Wed, 17 Nov 2021 08:48:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46FED60851;
	Wed, 17 Nov 2021 08:48:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 40F0260280
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Nov 2021 08:48:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3E8EE60851; Wed, 17 Nov 2021 08:48:51 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2073.outbound.protection.outlook.com [40.107.237.73])
 by lists.linaro.org (Postfix) with ESMTPS id 23F8760280
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Nov 2021 08:48:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WvXlLBSks1lMrMZd8/CXAdIoA3hUYagqKO7NU2eHjqezX21T1HHlZ5Z3AtzVYCOg511hCWZaqA45NgzIM8DO3FfT8wbABImhaKzsiGNULjtkXIrNks8u0YCvD9SyOMMr2psO9cq4Vu/IpwKC2LX6JnuQmHFKfIltjSMDE6dfq1B3DZ6ILnCsCfM7OByibTrvoFbh/fkMqM1uSyuhKjnOGlIpXl/zSNhNA1rXlCKN4a8HZy5XoqCO06QzvW0GJIX0qHLuxUNjaKSHFBI2lncmg63p8U+rH73vMhc2hiZSqFjWagTB1kLG3NwEDYTGLuEo5lUXWIyHx/FqNbJrLBx8oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IO0w2EvVI85jmKe2NPiMIyLRvdvbCaLaALoGHUgWY9E=;
 b=Ssw42izo5m3bn2iHkKuIhbA8r7ow/UKbZXR62Sqqsf94+Orr8ryNVaLfPGbtYNRXD8le5gUAJn2vdvdo/SgKGEDgyZ2sFLHQ9D9mmv6ezL4NLNMQRkicF5yL6Scl+c3lSnde9wrBJqRXDt9Wp2rdrQrw0IZ/x1LNiHTsdVCyclTVGRbHlAucxMRWldjvACKh6CIUReqBKkJjW+SgpRdHxdcyylA5XUKCBKq2i+oCnZueRROfImjnAf+/nswmh/y3MWrs9KMlpmyPqJYA6KTDWnA//fwjXiVYk5WOR6YfXAXFfkqSyOYeTiEuXYeuPIe5whfU9dVdoMXQ/EPwruFHsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IO0w2EvVI85jmKe2NPiMIyLRvdvbCaLaALoGHUgWY9E=;
 b=i+IiIYDAtkIKg+rRiBwOjib6n2kL4LgENfJl2slzdYDo7Oeq62BCdYzQY43sqkhb5r0XrdQi2kp+ZEVQsPprULwLfhrj6xit8EixtnUjDJFhyOI1dOO9JHmPvUJJSwmCk8sLWR53AGx2/sw1KoHMHzVFEcQwfcMGZ6LdoB4Vbg4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR1201MB2478.namprd12.prod.outlook.com
 (2603:10b6:300:e5::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Wed, 17 Nov
 2021 08:48:46 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4690.027; Wed, 17 Nov 2021
 08:48:46 +0000
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20211115141925.60164-1-paul@crapouillou.net>
 <YZJwnPbgCOdeKq6S@phenom.ffwll.local> <18CM2R.6UYFWJDX5UQD@crapouillou.net>
 <YZPWEU2zRCY0En4l@phenom.ffwll.local>
 <YZPc6HNOe6YOLE9k@pendragon.ideasonboard.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <60b51cd7-7d18-b037-c77e-b2548d2f94c3@amd.com>
Date: Wed, 17 Nov 2021 09:48:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <YZPc6HNOe6YOLE9k@pendragon.ideasonboard.com>
Content-Language: en-US
X-ClientProxiedBy: AS8PR04CA0120.eurprd04.prod.outlook.com
 (2603:10a6:20b:31e::35) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:f3bc:62c7:d104:fb77]
 (2a02:908:1252:fb60:f3bc:62c7:d104:fb77) by
 AS8PR04CA0120.eurprd04.prod.outlook.com (2603:10a6:20b:31e::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19 via Frontend
 Transport; Wed, 17 Nov 2021 08:48:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f2aeb16-bd27-4ec5-6889-08d9a9a710cc
X-MS-TrafficTypeDiagnostic: MWHPR1201MB2478:
X-Microsoft-Antispam-PRVS: <MWHPR1201MB24787AE4A201AA4510DB1865839A9@MWHPR1201MB2478.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zXtUjraxiEXYgoK+4LWL6iQwcgk2PKDKM7eyR3EsIbbWcqXl4EfOc1GR6LWnfKfGSpPTADv6dZI2C1YqIwtBzXH8NoNmBdTIK94aaHs/yxM2PKun1Fdd0YEQGKTjQxCmYz3+nfOlWjfoaRtEoiOFXWsgDsZzyxNetKKyK9+ShPq1RwAWHjZjTL9i4g5yTsmR97rtdroxNUi3oRKWDIyYEwtI5c+s8LlrvzJlm6u8F01LFqyCwlIXJ13NtiM/2tfuqmf8qPICaUuC3QS1QdhsxtS1L6PyY/oZg8FTGzlHTZpsOIxg8zUP+6QhOKLEa36TC0PtlgK2TMhUvBWL+Bxpq49is+dHP+frInLRlqu3k7yxHPgRzK8HaShS5PIUJ8DU1o5yzmc9cfVUnkrchqxnwyx+cfHWZFf8NRkIvozK2WhCqFZIdCuZH/pOxvFrZBjdWuJl6z6aZE051HLsBJMEUAUL3oWnoeRUzWbVgUqWqu+0E81QMKoZlT0zlULgM3/3srERHLTgDg9RFmGnUFRIgWAYcF1Cqon6a6sPc6fWdHEbk9mpRhb0+TZsQuyytZEMKTrYk9R7L1Hqu5RE0/4JJhALR/kZD6v9q5tLP4zRUd0R3DdUcA6m3dG50UEsFqRtZ9IvLbRXpuv3HCTGhl9IUz7liaU3BQ0BUnkeDMcc9pSUa5bxD2aQhzjfVxbw3axG2NM4jLgPWZYVFkdvf9JHZFtyisXHM8wAUiVGblZpQGfCkvVtcKfCxU+3suDYqmET45c27Yl2dM0tTasRJIsVf1ux0ZOzKHsa7ArCxqQKjP2pLr1+hsl2zP3n73a2XJjIZbf0IP6dzSzm1JbWCcKu5g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(110136005)(54906003)(2906002)(83380400001)(4326008)(316002)(45080400002)(6666004)(66946007)(66476007)(66556008)(7416002)(186003)(2616005)(31686004)(508600001)(6486002)(966005)(8676002)(5660300002)(36756003)(38100700002)(8936002)(31696002)(66574015)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkhnaTg5dkY3OFo0U1Q2bEQrbTV2YlpSZW5YYngyeTg5bE1QdkoyQXZkeVRo?=
 =?utf-8?B?NUtoZzJxR1FDUksxTnBURzlFUUFmeVlXeXdsVHBiVS9DalN1K3ZkbXZPZ0x6?=
 =?utf-8?B?Y2xtYWxVbEdtNDE1TTUvcGRXdjgvM3NWMmovRnhjeldQTWJ1U2ZPamFzWmtV?=
 =?utf-8?B?UHJXeHB4ajNwNlEvVlQrYXZyUjBsYzd5aFE1cnhZdUMxRHp2c1hmaWFNV2lp?=
 =?utf-8?B?YS94VytWeGdxUzNSYldHb0IyV1RaS005VXNvSjRmT3h6WmkwNFhOS1lBSzNT?=
 =?utf-8?B?SENpMS9NNCtWU1VFWnRKd251aFZYNlFPck1hcUJwWDZQSnZZQ1haYis4MDVC?=
 =?utf-8?B?Y1h6V1NCUm5jbHEvZ2lXb0lsNktHVGFOakFpOTZNY0JUUUt1cmUxTmp1cjV5?=
 =?utf-8?B?NXcxVU5CT1Vrd0wyMDV1L2E0NHYybmxFR1BaNUFPekU1b2owSVVBcGU0WndC?=
 =?utf-8?B?RVJjRnowb0tmcnc2Y0h5Z2JnV20wbHNESC9PRmVCb0pmMjFNQnNsSEV2TkZx?=
 =?utf-8?B?Yk5TSkhBYVhNSGJFakNWK085b3UzMVJQUGgzS1YrOXEyOHE4RWwraTVDajNj?=
 =?utf-8?B?dlhNQzUrQkpqQW56Mzg5Q3MwSnVCQWNmb1RmZWZ6VXhmYk00ekFtYVg2S0Fi?=
 =?utf-8?B?MlJxZmdVQU5vOGt1MFlOSlpoYVZDcDhjc1d2ZEFyM0lNR2Y1SjE1dUNTbHhj?=
 =?utf-8?B?aGdWdkovWVN5cnJETkZjRkcvMlRINmVOb0pEa1hBbkJrcVQ0dXpZeG80bXAx?=
 =?utf-8?B?VHhEeDFyR3BXQ0hESS80cWdwSXRYMHUvKzNXM2N5REh3cmY5YnZablduUk5P?=
 =?utf-8?B?YUFuQ05lRWFoTkdHdkJEN2VQQlhMbHR6UTg5cW5seWFIVE9NQTMxaFp0a1Vp?=
 =?utf-8?B?ME8vOThmcU9IQU5FNThTMC8zVVg5UVpoZlhkTGxRT0ZlczB6a2ZtRjNmSHY3?=
 =?utf-8?B?U0JQWk5ZWmxSQ2JDTGFETmhJTDJmV205blQ0czRublNjY0VqN2RhUkwrd0hX?=
 =?utf-8?B?UllqZVlsZGx4TmdWcTdTQjJ3N2lvWVJSQnZXNWtjY1NHYmFaT0Q5R0VZNmZo?=
 =?utf-8?B?cXR6bzhNaldiQUo0ZXl2VkVhVGVsWTE1eWtzdEloNkdBYUlzRVhxcnRmK2Uy?=
 =?utf-8?B?c3pSdWdWL1FwKzhzczJBWm5DOVk2YlROT2tKTUxqcHdkbEVwR2JCRG85MG5G?=
 =?utf-8?B?NmY1d0FraER3ajFJbExQcStaT3FaNzVOYitzaWtuSW05T3lwbDJVc2ltNjMy?=
 =?utf-8?B?NzNsVzdrNW9kd2tEeHpSS1BRQ3JHR1g5NGZySUo2cmlpVTlEanRCaTBuakh3?=
 =?utf-8?B?REVGbDZJTHlybG43cjRyTDI1c3NraWI4QUJ2aWhabTFoNlE2QXEyRzhiTTBO?=
 =?utf-8?B?Y2krUFhsMjhsRExUa3RYNjliODk2dzBFVUVia29Id1J1MUFzam9Ua3R0RHpQ?=
 =?utf-8?B?c2kwWTVUVlF1MDFCd0ttdE5LVFd4eGJWVGQ5c291TTkxWWZUbEdvQVhDcEhw?=
 =?utf-8?B?V2c5QWp6bmJvSGlrcW0xeHFxc3lsam5KWDNXcE1Jc3d3TVhMdW9FOVNWdUdM?=
 =?utf-8?B?TzVvcmliaURKTjE4RnpveStXeGgxQWY2eXF4SEdORi9KZzdHWlQ2STl4WDd3?=
 =?utf-8?B?bGhFVUdtUm1TQTQ1Uy9HNEFvWUZoblNLeXlTblBzZmxOOFpocUk4VFBjcmNV?=
 =?utf-8?B?UWdtS29vZnBqaUYwVjloSXVNMVRNMnU1MXdXUXBHWll3Uk84QVd6VHVsRDFD?=
 =?utf-8?B?dlMvN0IwQ1FxdVJLVlhpZ1pnd2tsZUV4S3hRSk1hdjF6a1pOYmtjdVQ4RU1y?=
 =?utf-8?B?Tys3WnlVMUU5NFozOGlkYVdBUjVqOUpCOVBtVDRaYjJaOXNmY1pCZWVtOUJZ?=
 =?utf-8?B?MFpLY1NDdDZZRUdxMi9Pd01TVlNBLytCUUVsZFBhQVB4SmpzK29UZXVLbHQ0?=
 =?utf-8?B?T3VYc2JDT0Z3a3NHQ2oxaTcyVFQ1cURCR3dVUDZvVmpkNlhObENHdmpyNkY5?=
 =?utf-8?B?Nk53UkhPYkV3M3F4akdPY3NuVzdOajY2MlBTVVJTQk91TFh4TjNLdUNQY2F5?=
 =?utf-8?B?b1g3aDBVcythVW1mMHZ2R2txMDFUdkxZWnk1aG13RDh2OU5McVc2Z2gzZjZ3?=
 =?utf-8?B?dHdJRGNLSjlDYThMYzRCRzViYTdpY1I1d004VkdxWStlVlJSYlBNRGIveGV6?=
 =?utf-8?Q?3asFsWEmE611oKD+EONyt3s=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f2aeb16-bd27-4ec5-6889-08d9a9a710cc
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2021 08:48:46.2097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cUzN3yL5KUm5GRZ+xefR994OqSGAOpkp2XC8+luQK3MvdwVOb7P8yuFrY/DvNECR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB2478
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 00/15] iio: buffer-dma: write() and new
 DMABUF based API
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
Cc: linaro-mm-sig@lists.linaro.org,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Paul Cercueil <paul@crapouillou.net>,
 Alexandru Ardelean <ardeleanalex@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTYuMTEuMjEgdW0gMTc6MzEgc2NocmllYiBMYXVyZW50IFBpbmNoYXJ0Ogo+IE9uIFR1ZSwg
Tm92IDE2LCAyMDIxIGF0IDA1OjAyOjI1UE0gKzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+
IE9uIE1vbiwgTm92IDE1LCAyMDIxIGF0IDAyOjU3OjM3UE0gKzAwMDAsIFBhdWwgQ2VyY3VlaWwg
d3JvdGU6Cj4+PiBMZSBsdW4uLCBub3YuIDE1IDIwMjEgYXQgMTU6Mzc6MTYgKzAxMDAsIERhbmll
bCBWZXR0ZXIgYSDDqWNyaXQgOgo+Pj4+IE9uIE1vbiwgTm92IDE1LCAyMDIxIGF0IDAyOjE5OjEw
UE0gKzAwMDAsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6Cj4+Pj4+ICAgSGkgSm9uYXRoYW4sCj4+Pj4+
Cj4+Pj4+ICAgVGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIGEgbmV3IHVzZXJzcGFjZSBpbnRlcmZh
Y2UgYmFzZWQgb24gRE1BQlVGCj4+Pj4+ICAgb2JqZWN0cywgdG8gY29tcGxlbWVudCB0aGUgZXhp
c3RpbmcgZmlsZWlvIGJhc2VkIEFQSS4KPj4+Pj4KPj4+Pj4gICBUaGUgYWR2YW50YWdlIG9mIHRo
aXMgRE1BQlVGIGJhc2VkIGludGVyZmFjZSB2cy4gdGhlIGZpbGVpbwo+Pj4+PiAgIGludGVyZmFj
ZSwgaXMgdGhhdCBpdCBhdm9pZHMgYW4gZXh0cmEgY29weSBvZiB0aGUgZGF0YSBiZXR3ZWVuIHRo
ZQo+Pj4+PiAgIGtlcm5lbCBhbmQgdXNlcnNwYWNlLiBUaGlzIGlzIHBhcnRpY3VsYXJseSB1c2Vy
ZnVsIGZvciBoaWdoLXNwZWVkCj4+Pj4+ICAgZGV2aWNlcyB3aGljaCBwcm9kdWNlIHNldmVyYWwg
bWVnYWJ5dGVzIG9yIGV2ZW4gZ2lnYWJ5dGVzIG9mIGRhdGEgcGVyCj4+Pj4+ICAgc2Vjb25kLgo+
Pj4+Pgo+Pj4+PiAgIFRoZSBmaXJzdCBmZXcgcGF0Y2hlcyBbMDEvMTVdIHRvIFswMy8xNV0gYXJl
IG5vdCByZWFsbHkgcmVsYXRlZCwgYnV0Cj4+Pj4+ICAgYWxsb3cgdG8gcmVkdWNlIHRoZSBzaXpl
IG9mIHRoZSBwYXRjaGVzIHRoYXQgaW50cm9kdWNlIHRoZSBuZXcgQVBJLgo+Pj4+Pgo+Pj4+PiAg
IFBhdGNoIFswNC8xNV0gdG8gWzA2LzE1XSBlbmFibGVzIHdyaXRlKCkgc3VwcG9ydCB0byB0aGUg
YnVmZmVyLWRtYQo+Pj4+PiAgIGltcGxlbWVudGF0aW9uIG9mIHRoZSBidWZmZXIgQVBJLCB0byBj
b250aW51ZSB0aGUgd29yayBkb25lIGJ5Cj4+Pj4+ICAgTWloYWlsIENoaW5kcmlzLgo+Pj4+Pgo+
Pj4+PiAgIFBhdGNoZXMgWzA3LzE1XSB0byBbMTIvMTVdIGludHJvZHVjZSB0aGUgbmV3IERNQUJV
RiBiYXNlZCBBUEkuCj4+Pj4+Cj4+Pj4+ICAgUGF0Y2hlcyBbMTMvMTVdIGFuZCBbMTQvMTVdIGFk
ZCBzdXBwb3J0IGZvciBjeWNsaWMgYnVmZmVycywgb25seSB0aHJvdWdoCj4+Pj4+ICAgdGhlIG5l
dyBBUEkuIEEgY3ljbGljIGJ1ZmZlciB3aWxsIGJlIHJlcGVhdGVkIG9uIHRoZSBvdXRwdXQgdW50
aWwgdGhlCj4+Pj4+ICAgYnVmZmVyIGlzIGRpc2FibGVkLgo+Pj4+Pgo+Pj4+PiAgIFBhdGNoIFsx
NS8xNV0gYWRkcyBkb2N1bWVudGF0aW9uIGFib3V0IHRoZSBuZXcgQVBJLgo+Pj4+Pgo+Pj4+PiAg
IEZvciBub3csIHRoZSBBUEkgYWxsb3dzIHlvdSB0byBhbGxvYyBETUFCVUYgb2JqZWN0cyBhbmQg
bW1hcCgpIHRoZW0KPj4+Pj4gdG8KPj4+Pj4gICByZWFkIG9yIHdyaXRlIHRoZSBzYW1wbGVzLiBJ
dCBkb2VzIG5vdCB5ZXQgYWxsb3cgdG8gaW1wb3J0IERNQUJVRnMKPj4+Pj4gICBwYXJlbnRlZCB0
byBvdGhlciBzdWJzeXN0ZW1zLCBidXQgdGhhdCBzaG91bGQgZXZlbnR1YWxseSBiZSBwb3NzaWJs
ZQo+Pj4+PiAgIG9uY2UgaXQncyB3aXJlZC4KPj4+Pj4KPj4+Pj4gICBUaGlzIHBhdGNoc2V0IGlz
IGluc3BpcmVkIGJ5IHRoZSAibW1hcCBpbnRlcmZhY2UiIHRoYXQgd2FzIHByZXZpb3VzbHkKPj4+
Pj4gICBzdWJtaXR0ZWQgYnkgQWxleGFuZHJ1IEFyZGVsZWFuIGFuZCBMYXJzLVBldGVyIENsYXVz
ZW4sIHNvIGl0IHdvdWxkIGJlCj4+Pj4+ICAgZ3JlYXQgaWYgSSBjb3VsZCBnZXQgYSByZXZpZXcg
ZnJvbSB5b3UgZ3V5cy4gQWxleGFuZHJ1J3MgY29tbWl0IHdhcwo+Pj4+PiAgIHNpZ25lZCB3aXRo
IGhpcyBAYW5hbG9nLmNvbSBhZGRyZXNzIGJ1dCBoZSBkb2Vzbid0IHdvcmsgYXQgQURJIGFueW1v
cmUsCj4+Pj4+ICAgc28gSSBiZWxpZXZlIEknbGwgbmVlZCBoaW0gdG8gc2lnbiB3aXRoIGEgbmV3
IGVtYWlsLgo+Pj4+IFdoeSBkbWEtYnVmPyBkbWEtYnVmIGxvb2tzIGxpa2Ugc29tZXRoaW5nIHN1
cGVyIGdlbmVyaWMgYW5kIHVzZWZ1bCwgdW50aWwKPj4+PiB5b3UgcmVhbGl6ZSB0aGF0IHRoZXJl
J3MgYSBtZXRyaWMgdG9uIG9mIGdwdS9hY2NlbGVyYXRvciBiYWdhZ2UgcGlsZWQgaW4uCj4+Pj4g
U28gdW5sZXNzIGJ1ZmZlciBzaGFyaW5nIHdpdGggYSBncHUvdmlkZW8vYWNjZWwvd2hhdGV2ZXIg
ZGV2aWNlIGlzIHRoZQo+IEFuZCBjYW1lcmFzIChtYXliZSB0aGV5J3JlIGluY2x1ZGVkIGluICJ3
aGF0ZXZlciIgPykuCj4KPj4+PiBnb2FsIGhlcmUsIGFuZCBpdCdzIGp1c3QgZm9yIGEgY29udmVu
aWVudCB3YXkgdG8gZ2V0IGF0IGJ1ZmZlciBoYW5kbGVzLAo+Pj4+IHRoaXMgZG9lc24ndCBzb3Vu
ZCBsaWtlIGEgZ29vZCBpZGVhLgo+Pj4gR29vZCBxdWVzdGlvbi4gVGhlIGZpcnN0IHJlYXNvbiBp
cyB0aGF0IGEgc29tZXdoYXQgc2ltaWxhciBBUEkgd2FzIGludGVudGVkCj4+PiBiZWZvcmVbMV0s
IGJ1dCByZWZ1c2VkIHVwc3RyZWFtIGFzIGl0IHdhcyBraW5kIG9mIHJlLWludmVudGluZyB0aGUg
d2hlZWwuCj4+Pgo+Pj4gVGhlIHNlY29uZCByZWFzb24sIGlzIHRoYXQgd2Ugd2FudCB0byBiZSBh
YmxlIHRvIHNoYXJlIGJ1ZmZlcnMgdG9vLCBub3Qgd2l0aAo+Pj4gZ3B1L3ZpZGVvIGJ1dCB3aXRo
IHRoZSBuZXR3b3JrICh6Y3RhcCkgYW5kIGluIHRoZSBmdXR1cmUgd2l0aCBVU0IKPj4+IChmdW5j
dGlvbkZTKSB0b28uCj4+Pgo+Pj4gWzFdOiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0
aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsb3JlLmtlcm5lbC5vcmclMkZsaW51
eC1paW8lMkYyMDIxMDIxNzA3MzYzOC4yMTY4MS0xLWFsZXhhbmRydS5hcmRlbGVhbiU0MGFuYWxv
Zy5jb20lMkZUJTJGJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNv
bSU3QzdmZmZlMDllODI1MTQ1Nzc3NDc4MDhkOWE5MWU5ZGQ5JTdDM2RkODk2MWZlNDg4NGU2MDhl
MTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzcyNjc3MjAwNzMzNjk1MSU3Q1Vua25vd24lN0NU
V0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklr
MWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT13MXZEOElLejVHN3V0JTJGbHNP
eXVZWEtLUVJCVjFzOGRON3FKQlV3bzh4OWclM0QmYW1wO3Jlc2VydmVkPTAKPj4gSG0gaXMgdGhh
dCBjb2RlIG1lcmdlZCBhbHJlYWR5IGluIHVwc3RyZWFtIGFscmVhZHk/Cj4+Cj4+IEkga25vdyB0
aGF0IGRtYS1idWYgbG9va3MgcmVhbGx5IGdlbmVyaWMsIGJ1dCBsaWtlIEkgc2FpZCBpZiB0aGVy
ZSdzIG5vCj4+IG5lZWQgZXZlciB0byBpbnRlcmZhY2Ugd2l0aCBhbnkgb2YgdGhlIGdwdSBidWZm
ZXIgc2hhcmluZyBpdCBtaWdodCBiZQo+PiBiZXR0ZXIgdG8gdXNlIHNvbWV0aGluZyBlbHNlIChs
aWtlIGdldF91c2VyX3BhZ2VzIG1heWJlLCB3b3VsZCB0aGF0IHdvcms/KS4KPiBOb3QgR1VQIHBs
ZWFzZS4gVGhhdCBicmluZ3MgYW5vdGhlciBzZXQgb2YgaXNzdWVzLCBlc3BlY2lhbGx5IHdoZW4K
PiBkZWFsaW5nIHdpdGggRE1BLCB3ZSd2ZSBzdWZmZXJlZCBlbm91Z2ggZnJvbSB0aGUgVVNFUlBU
UiBzdXBwb3J0IGluIFY0TDIKPiB0byBhdm9pZCByZXBlYXRpbmcgdGhpcy4gTGV0J3MgbWFrZSBk
bWEtYnVmIGJldHRlciBpbnN0ZWFkLgoKWWVhaCwgd2hlbiBjb21wYXJpbmcgR1VQIGFuZCBETUEt
YnVmIHRoZSBsYXRlciBpcyBjbGVhcmx5IHRoZSBsZXNzZXIgZXZpbC4KCkRNQS1idWYgaW5kZWVk
IGhhcyBzb21lIGRlc2lnbiBpc3N1ZXMgd2UgbmVlZCB0byB3b3JrIG9uLCBlc3BlY2lhbGx5IAph
cm91bmQgdGhlIGFzeW5jIG9wZXJhdGlvbnMgYW5kIHN5bmNocm9uaXphdGlvbi4gQnV0IEkgc3Rp
bGwgdGhpbmsgdGhvc2UgCmFyZSBzb2x2YWJsZS4KCkdVUCBvbiB0aGUgb3RoZXIgaGFuZCBoYXMg
c29tZSBoYXJkIGZ1bmRhbWVudGFsIHByb2JsZW1zIHdoaWNoIHlvdSBjYW4gCm9ubHkgc29sdmVk
IGNvbXBsZXRlbHkgaWYgdGhlIGhhcmR3YXJlIGlzIGNhcGFibGUgb2YgZmFzdCBhbmQgcmVsaWFi
bGUgCnJlY292ZXJhYmxlIHBhZ2UgZmF1bHRzLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
