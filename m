Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B166357F89
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Apr 2021 11:43:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91DC666706
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Apr 2021 09:43:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8186266718; Thu,  8 Apr 2021 09:43:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D23C6665E9;
	Thu,  8 Apr 2021 09:42:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B5F7A65F83
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Apr 2021 09:42:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9EEF6665E9; Thu,  8 Apr 2021 09:42:10 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2088.outbound.protection.outlook.com [40.107.94.88])
 by lists.linaro.org (Postfix) with ESMTPS id 1F09B65F83
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Apr 2021 09:42:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lqt0xRiXpnp4qHDpcY2K3lj0nPo1q6HmaJevP5zmCPoi8yYeSrwSZXwKlNthylBg0uQ8k4aizoZGg57lv4/ooTLWiTRshCKfFOotOQkOzUXUefp5JvP3b2fwM9WjBDjVpvwFbixOiQm3WQzx4c3j34PaNCl6wzcEFSAhX/DuGtZq68ksaLh2LI+5K/MUPQQy0lLyqde0/Vv0y8pLgFlBOZUQnUniRlAh/QRq33V3JQRHIRZcb3jxAMm0u6h6HgLhLsLwK3TQbu2LhpOuw9qGrXv5dM/HMf2hzmzoMs/mxL+j83zQwB68t4yue8mR+TluolBc0ZMz8CVLQMse7yIQ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p0YRXYKn6Gpq4bPeBJtOfKA33NghXk8m3WIVyD8wRTI=;
 b=LOmDnzFWyGlt/ZajHBNu7ntNqcrVgc+5wy9SpNyLKQcL4aApaHUKuawBjA2yK3ugHjuU/I1OHYKVsD3mFtn7jUaYXoiX5dzttaaZTuoZxYF+59yQPH8JsAEShI+C3P7TLisC4GDE5neBwsNu7OWYn8qLxCE1JddaowZSdBUb6WRQfhSoo8iNr1QVjJuzwBTxHUqtTbCBKkxpAdkOcmnoPYV8BFTyIHuPfdYMHtUhmxFCFE0ycPAGQd8ZIU1pNyVmTc/yqWXrqlWWUEzRqjwuCvBQ67lUIMLgC/17Lq/k4RW7bSo6yms85gKrTWOnLpPHQ93ghJ46k4vkYVkxCAhOOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4552.namprd12.prod.outlook.com (2603:10b6:208:24f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Thu, 8 Apr
 2021 09:42:06 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4020.017; Thu, 8 Apr 2021
 09:42:05 +0000
To: David Stevens <stevensd@chromium.org>
References: <20210408093448.3897988-1-stevensd@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <fcc2eecf-b32d-1758-11d2-bd130f5925cf@amd.com>
Date: Thu, 8 Apr 2021 11:41:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210408093448.3897988-1-stevensd@google.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:db83:c532:1fa2:b0cc]
X-ClientProxiedBy: ZR0P278CA0004.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::14) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:db83:c532:1fa2:b0cc]
 (2a02:908:1252:fb60:db83:c532:1fa2:b0cc) by
 ZR0P278CA0004.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:16::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.17 via Frontend Transport; Thu, 8 Apr 2021 09:42:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce38a724-9fbb-425c-435b-08d8fa7291fc
X-MS-TrafficTypeDiagnostic: MN2PR12MB4552:
X-Microsoft-Antispam-PRVS: <MN2PR12MB455224C3188DA01F664E88FB83749@MN2PR12MB4552.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 88aAN2uT2waHcxUkQycqKFcp5fVtNe9j8MDMy3TRGuQigQc5JzVrVm9F+UHhTDh58SU+A7yiystP7uhwdIJaMNGzSBkjdh4/O527KgbG8yevHrhazX6FsQNcLVgXpSmapUghphjfLb4mxO0WXmtFnX80P892aH4urSGj7vdFWxNi9KYO+i0kwFu0d4v0yeaJ4YhvUVORlh14+fkFtboedIDJamSPqdSuvaRaXosBlO7ziU3P7tODT+jiEdXr/SNfHBdCFBcBuJQC+2jT0tdoL6tBiUhX4uRt+bhWaR1r1G+nK9TnGTqe+ClT4dzOkpAdQozU18EJUE5vm1Qk9m3m7eY4H1JYu7NBU7TyV3oLXkjDX+hh8BJpInIp1AKhoZaDaQiH/MwmnKk7HCW5jawUm4FTiOy2G7WAb52HHHnUauT1xhNiPmYJtPvgPUqlxGsil5Xmgn1cAj/fzXggs4enbBwuOYvTKYRTOeCcsdfhqzyjUZQoHdjU16Dnbqpme6nXLUa/kJY2UnGUUk9ofa08R6FGUPGX/GJn78d+sTwGiTK4XEazM/ryPW95mdR3zMFxVvmeNhGSqEKdqibWBnUi1tSjio+pT61HMqQZg02OBzUbDxfvL62/81zibhX6tNEzLtEh5zrN8LNrusdKtBtyTUlW6tvd13Ez20VgofK5/aPrtBcypfRX8lfGmYVt337vF3GLPhg939Ly4DN0pKzr059Hpql3zFJOFeCcQ3MlIwk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(66556008)(8676002)(6916009)(478600001)(66946007)(52116002)(2906002)(31696002)(8936002)(83380400001)(6666004)(36756003)(2616005)(316002)(38100700001)(186003)(54906003)(4326008)(16526019)(31686004)(6486002)(86362001)(5660300002)(7416002)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?alluSkRVblowMGJWMisrK0dEdVVzc3E5ZUpoclgzNFhOOXp6dEduNUZYRmJu?=
 =?utf-8?B?VHFXck9meThsZHJOMThVVy9NVnU5UHBSUmNudHZoTnFMVGVJRjFJVjZ4eVpI?=
 =?utf-8?B?SU9HbzdtL05hS2Z5OW84ZmIrZlorbTVNVTlHaWcwUTJkay8wTUk5NmpYbW5X?=
 =?utf-8?B?b3ppRFdDUVk0OW5aNWZLSVpZTDkzdFVVMm0wZFNKMWxzYjk3Y3Y0ZnM5UTAv?=
 =?utf-8?B?ZjdpYUhxN1plYldIMm5iOUJ0N083QTVIWWo5elBRczRpVW40Q3hVVHl1SXNF?=
 =?utf-8?B?elphc2hTSWFVQ1BBUTViOWV2SURZbXJONFdMZ1E2T3JJT1VIczE0Zm05QWNU?=
 =?utf-8?B?aDJleE1ydWEyL0trdGo1VGJpc3Rrc3RaNTl0MjNHUzFRNmNjajgwVHRDQXYz?=
 =?utf-8?B?SE4zWHVoU1hIV3ByK3JSRWlUMkJDV0VFKzdFOXZUZzJDei91RlplWkFrN3F1?=
 =?utf-8?B?NUpERGZPSkNSQXlUdTVTTU93M2ZyQjZ0ZmVCU1Yzdm9sK0JBYmRtYUJMemYy?=
 =?utf-8?B?WU43MXkxM01hM3FoeU9ZbWJTZm1PanBCZklKa05hUm9HYlhLaXhkM0NtZGRE?=
 =?utf-8?B?TzFrT1hIY1E1eXM2MW1ZMnNKRHlZS3ZtSW5lK3JEWS9mdUh4Z0kwbWI1V0NQ?=
 =?utf-8?B?b3I5UXNaSER3amJpMkdEb21KVEwzQ1dQeUtnS0lpM0pKcStqRUhtYllPaW1K?=
 =?utf-8?B?c0lweVhLcW85OGhnd1VHZ1lrVXBJVXdZWFFXdEs5WWx3ZjdudFExTlI3V21m?=
 =?utf-8?B?YUp0RG5rbnlLcUREZlRCcUJjSHk4OU9ma0g5dWhzcHVOa2wzTkwzVjUrUXpu?=
 =?utf-8?B?L2tDeVFZVi9sRSs3UU1jVnRNNG9KMTZqcE1RNFdvOGcvRmkzSExTRXJCSmdF?=
 =?utf-8?B?bWhtN2hnRkxsUnFjWkNTYldobzhiWjY3c0RQNFJtdU1UVCt3RGgyVndWbENt?=
 =?utf-8?B?VzQrTG5VdkRQTHlhZFIreGpuSlFYQ2dYY09qODN1Nit2K0xkZ3Zma1FsanRT?=
 =?utf-8?B?by83ekMyL3ZNQ3NRbFduVENmcDIzeEtmYnpxRE1VUDVtNGhsM1pXSGVEdVVF?=
 =?utf-8?B?Z2FwSWMxd1JSN1lrLytwTjJDMVo3VHN1V0JhbGNsOFdrbnpvYXpwT0w5TFFj?=
 =?utf-8?B?bHlaSFFEQ0NObHFLQWdXcUgyWkRFQk1BVEwwQ1AzQXRqUkxua2QyRGZWKy9p?=
 =?utf-8?B?V0VsVHhjTnE0ejdQYnoyWStMUy9ObWVicThtbTBvYzlvRWFJazRnM0VOc1J1?=
 =?utf-8?B?YmVuWlBDSTY5R3p3SDdDYW5POWRqcUFJdHFtQWRoM29GWE9idHJiRWJvRnc2?=
 =?utf-8?B?NTFjSnZEd2E3ODJyMW1ZZEpMb2c1aG04YmlnMmN1TkFUaUkxSG5LWDd3L3VO?=
 =?utf-8?B?S3FRWTJpMGVsYXlNc1Y4OHlKWmRDZElueUE1cEozcDM0RFBYQ0FRSzRGclor?=
 =?utf-8?B?QTVyUVQvMEZRQ25iU2hhRXRaNmlOYklETUJMTC9uRnNlQnpOazFTUXA2Y0Js?=
 =?utf-8?B?SDJQS1IwbzUzYzU1QkJKYXpUaXF5UkxYS0tRcWo5N3U4MTErV2lLTDM2QVNU?=
 =?utf-8?B?eFEvcEFpdHc0RnJtOFRRUUV4SW5MTW51VjJTZVQrdi9VVXFHdm9JVElyelMy?=
 =?utf-8?B?NWxrbjdPQktmSmVVZnVDMXgrUlFKYldRMTc1QWoyTDBiNlBVRHdhMWNLK24w?=
 =?utf-8?B?OXlITUVIMDNCRW9uYytQMTFZLys0WThYSEJYYndzUnRDWUxmZC9UNjc0RDlx?=
 =?utf-8?B?OWVDYUxKWnA2aDZDRkRMVi8zRkxBU0JhM2M3RTI5Q1MyUlRza3BNWG0rTXcy?=
 =?utf-8?B?RGMvY2xwWlZybTRIM2NrVUpTRkE4TGdwVm1oNXdROTJYdFhTNWFUU3FtOCtJ?=
 =?utf-8?Q?l9hSqwTyAcs0/?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce38a724-9fbb-425c-435b-08d8fa7291fc
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2021 09:42:05.6938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w5zYHm6Vqe0I0GwMLYJu3LzvyzbZku3VXXGwHWCFNR5xmOr/iXbSS7Ref/+xCNNT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4552
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] drm/syncobj: use newly allocated stub
	fences
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

QW0gMDguMDQuMjEgdW0gMTE6MzQgc2NocmllYiBEYXZpZCBTdGV2ZW5zOgo+IEZyb206IERhdmlk
IFN0ZXZlbnMgPHN0ZXZlbnNkQGNocm9taXVtLm9yZz4KPgo+IEFsbG9jYXRlIGEgbmV3IHByaXZh
dGUgc3R1YiBmZW5jZSBpbiBkcm1fc3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUsCj4gaW5zdGVh
ZCBvZiB1c2luZyBhIHN0YXRpYyBzdHViIGZlbmNlLgo+Cj4gV2hlbiB1c2Vyc3BhY2UgY3JlYXRl
cyBhIGZlbmNlIHdpdGggRFJNX1NZTkNPQkpfQ1JFQVRFX1NJR05BTEVEIG9yIHdoZW4KPiB1c2Vy
c3BhY2Ugc2lnbmFscyBhIGZlbmNlIHZpYSBEUk1fSU9DVExfU1lOQ09CSl9TSUdOQUwsIHRoZSB0
aW1lc3RhbXAKPiBvYnRhaW5lZCB3aGVuIHRoZSBmZW5jZSBpcyBleHBvcnRlZCBhbmQgcXVlcmll
ZCB3aXRoIFNZTkNfSU9DX0ZJTEVfSU5GTwo+IHNob3VsZCBtYXRjaCB3aGVuIHRoZSBmZW5jZSdz
IHN0YXR1cyB3YXMgY2hhbmdlZCBmcm9tIHRoZSBwZXJzcGVjdGl2ZSBvZgo+IHVzZXJzcGFjZSwg
d2hpY2ggaXMgZHVyaW5nIHRoZSByZXNwZWN0aXZlIGlvY3RsLgo+Cj4gV2hlbiBhIHN0YXRpYyBz
dHViIGZlbmNlIHN0YXJ0ZWQgYmVpbmcgdXNlZCBpbiBieSB0aGVzZSBpb2N0bHMsIHRoaXMKPiBi
ZWhhdmlvciBjaGFuZ2VkLiBJbnN0ZWFkLCB0aGUgdGltZXN0YW1wIHJldHVybmVkIGJ5IFNZTkNf
SU9DX0ZJTEVfSU5GTwo+IGJlY2FtZSB0aGUgZmlyc3QgdGltZSBhbnl0aGluZyB1c2VkIHRoZSBz
dGF0aWMgc3R1YiBmZW5jZSwgd2hpY2ggaGFzIG5vCj4gbWVhbmluZyB0byB1c2Vyc3BhY2UuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBTdGV2ZW5zIDxzdGV2ZW5zZEBjaHJvbWl1bS5vcmc+Cj4g
LS0tCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICB8IDMzICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrLQo+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCAy
OCArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tCj4gICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS5oICAgICB8ICAxICsKPiAgIDMgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKPiBpbmRleCBkNjRmYzAzOTI5YmUuLjYwODFl
Yjk2MjQ5MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKPiBAQCAtMjYsNiArMjYsMTEgQEAgRVhQT1JU
X1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9zaWduYWxlZCk7Cj4gICBzdGF0aWMgREVGSU5F
X1NQSU5MT0NLKGRtYV9mZW5jZV9zdHViX2xvY2spOwo+ICAgc3RhdGljIHN0cnVjdCBkbWFfZmVu
Y2UgZG1hX2ZlbmNlX3N0dWI7Cj4gICAKPiArc3RydWN0IGRybV9mZW5jZV9wcml2YXRlX3N0dWIg
ewo+ICsJc3RydWN0IGRtYV9mZW5jZSBiYXNlOwo+ICsJc3BpbmxvY2tfdCBsb2NrOwo+ICt9Owo+
ICsKCllvdSBjYW4gZHJvcCB0aGlzLiBUaGUgc3BpbmxvY2sgaXMgb25seSB1c2VkIHdoZW4gdGhl
IGZlbmNlIGlzIHNpZ25hbGVkIAp0byBhdm9pZCByYWNlcyBiZXR3ZWVuIHNpZ25hbGluZyBhbmQg
YWRkaW5nIGEgY2FsbGJhY2suCgpBbmQgZm9yIHRoaXMgdGhlIGdsb2JhbCBzcGlubG9jayBzaG91
bGQgYmUgcGVyZmVjdGx5IHN1ZmZpY2llbnQuIEFwYXJ0IApmcm9tIHRoYXQgbG9va3MgZ29vZCB0
byBtZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4gICAvKgo+ICAgICogZmVuY2UgY29udGV4dCBj
b3VudGVyOiBlYWNoIGV4ZWN1dGlvbiBjb250ZXh0IHNob3VsZCBoYXZlIGl0cyBvd24KPiAgICAq
IGZlbmNlIGNvbnRleHQsIHRoaXMgYWxsb3dzIGNoZWNraW5nIGlmIGZlbmNlcyBiZWxvbmcgdG8g
dGhlIHNhbWUKPiBAQCAtMTIzLDcgKzEyOCw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyBkbWFfZmVuY2Vfc3R1Yl9vcHMgPSB7Cj4gICAvKioKPiAgICAqIGRtYV9mZW5jZV9n
ZXRfc3R1YiAtIHJldHVybiBhIHNpZ25hbGVkIGZlbmNlCj4gICAgKgo+IC0gKiBSZXR1cm4gYSBz
dHViIGZlbmNlIHdoaWNoIGlzIGFscmVhZHkgc2lnbmFsZWQuCj4gKyAqIFJldHVybiBhIHN0dWIg
ZmVuY2Ugd2hpY2ggaXMgYWxyZWFkeSBzaWduYWxlZC4gVGhlIGZlbmNlJ3MKPiArICogdGltZXN0
YW1wIGNvcnJlc3BvbmRzIHRvIHRoZSBmaXJzdCB0aW1lIGFmdGVyIGJvb3QgdGhpcwo+ICsgKiBm
dW5jdGlvbiBpcyBjYWxsZWQuCj4gICAgKi8KPiAgIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5j
ZV9nZXRfc3R1Yih2b2lkKQo+ICAgewo+IEBAIC0xNDEsNiArMTQ4LDMwIEBAIHN0cnVjdCBkbWFf
ZmVuY2UgKmRtYV9mZW5jZV9nZXRfc3R1Yih2b2lkKQo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTChk
bWFfZmVuY2VfZ2V0X3N0dWIpOwo+ICAgCj4gKy8qKgo+ICsgKiBkbWFfZmVuY2VfYWxsb2NhdGVf
cHJpdmF0ZV9zdHViIC0gcmV0dXJuIGEgcHJpdmF0ZSwgc2lnbmFsZWQgZmVuY2UKPiArICoKPiAr
ICogUmV0dXJuIGEgbmV3bHkgYWxsb2NhdGVkIGFuZCBzaWduYWxlZCBzdHViIGZlbmNlLgo+ICsg
Ki8KPiArc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1Yih2
b2lkKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2ZlbmNlX3ByaXZhdGVfc3R1YiAqZmVuY2U7Cj4gKwo+
ICsJZmVuY2UgPSBremFsbG9jKHNpemVvZigqZmVuY2UpLCBHRlBfS0VSTkVMKTsKPiArCWlmIChm
ZW5jZSA9PSBOVUxMKQo+ICsJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ICsKPiArCXNwaW5f
bG9ja19pbml0KCZmZW5jZS0+bG9jayk7Cj4gKwlkbWFfZmVuY2VfaW5pdCgmZmVuY2UtPmJhc2Us
Cj4gKwkJICAgICAgICZkbWFfZmVuY2Vfc3R1Yl9vcHMsCj4gKwkJICAgICAgICZmZW5jZS0+bG9j
aywKPiArCQkgICAgICAgMCwgMCk7Cj4gKwlkbWFfZmVuY2Vfc2lnbmFsKCZmZW5jZS0+YmFzZSk7
Cj4gKwo+ICsJcmV0dXJuICZmZW5jZS0+YmFzZTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MKGRtYV9m
ZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIpOwo+ICsKPiAgIC8qKgo+ICAgICogZG1hX2ZlbmNl
X2NvbnRleHRfYWxsb2MgLSBhbGxvY2F0ZSBhbiBhcnJheSBvZiBmZW5jZSBjb250ZXh0cwo+ICAg
ICogQG51bTogYW1vdW50IG9mIGNvbnRleHRzIHRvIGFsbG9jYXRlCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2Jq
LmMKPiBpbmRleCAzNDkxNDYwNDk4NDkuLmM2MTI1ZTU3YWUzNyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3lu
Y29iai5jCj4gQEAgLTM1MCwxMiArMzUwLDE1IEBAIEVYUE9SVF9TWU1CT0woZHJtX3N5bmNvYmpf
cmVwbGFjZV9mZW5jZSk7Cj4gICAgKgo+ICAgICogQXNzaWduIGEgYWxyZWFkeSBzaWduYWxlZCBz
dHViIGZlbmNlIHRvIHRoZSBzeW5jIG9iamVjdC4KPiAgICAqLwo+IC1zdGF0aWMgdm9pZCBkcm1f
c3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqKQo+
ICtzdGF0aWMgaW50IGRybV9zeW5jb2JqX2Fzc2lnbl9udWxsX2hhbmRsZShzdHJ1Y3QgZHJtX3N5
bmNvYmogKnN5bmNvYmopCj4gICB7Cj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IGRtYV9m
ZW5jZV9nZXRfc3R1YigpOwo+ICsgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBkbWFf
ZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKCk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGZlbmNl
KSkKPiArCSAgICAgICByZXR1cm4gUFRSX0VSUihmZW5jZSk7Cj4gICAKPiAtCWRybV9zeW5jb2Jq
X3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2UpOwo+IC0JZG1hX2ZlbmNlX3B1dChmZW5jZSk7
Cj4gKyAgICAgICBkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsKPiAr
ICAgICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gICB9Cj4g
ICAKPiAgIC8qIDVzIGRlZmF1bHQgZm9yIHdhaXQgc3VibWlzc2lvbiAqLwo+IEBAIC00NjksNiAr
NDcyLDcgQEAgRVhQT1JUX1NZTUJPTChkcm1fc3luY29ial9mcmVlKTsKPiAgIGludCBkcm1fc3lu
Y29ial9jcmVhdGUoc3RydWN0IGRybV9zeW5jb2JqICoqb3V0X3N5bmNvYmosIHVpbnQzMl90IGZs
YWdzLAo+ICAgCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4gICB7Cj4gKwlpbnQg
cmV0Owo+ICAgCXN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsKPiAgIAo+ICAgCXN5bmNvYmog
PSBremFsbG9jKHNpemVvZihzdHJ1Y3QgZHJtX3N5bmNvYmopLCBHRlBfS0VSTkVMKTsKPiBAQCAt
NDc5LDggKzQ4MywxMyBAQCBpbnQgZHJtX3N5bmNvYmpfY3JlYXRlKHN0cnVjdCBkcm1fc3luY29i
aiAqKm91dF9zeW5jb2JqLCB1aW50MzJfdCBmbGFncywKPiAgIAlJTklUX0xJU1RfSEVBRCgmc3lu
Y29iai0+Y2JfbGlzdCk7Cj4gICAJc3Bpbl9sb2NrX2luaXQoJnN5bmNvYmotPmxvY2spOwo+ICAg
Cj4gLQlpZiAoZmxhZ3MgJiBEUk1fU1lOQ09CSl9DUkVBVEVfU0lHTkFMRUQpCj4gLQkJZHJtX3N5
bmNvYmpfYXNzaWduX251bGxfaGFuZGxlKHN5bmNvYmopOwo+ICsJaWYgKGZsYWdzICYgRFJNX1NZ
TkNPQkpfQ1JFQVRFX1NJR05BTEVEKSB7Cj4gKwkJcmV0ID0gZHJtX3N5bmNvYmpfYXNzaWduX251
bGxfaGFuZGxlKHN5bmNvYmopOwo+ICsJCWlmIChyZXQgPCAwKSB7Cj4gKwkJCWRybV9zeW5jb2Jq
X3B1dChzeW5jb2JqKTsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gKwl9Cj4gICAKPiAgIAlp
ZiAoZmVuY2UpCj4gICAJCWRybV9zeW5jb2JqX3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2Up
Owo+IEBAIC0xMzIyLDggKzEzMzEsMTEgQEAgZHJtX3N5bmNvYmpfc2lnbmFsX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAJaWYgKHJldCA8IDApCj4gICAJCXJl
dHVybiByZXQ7Cj4gICAKPiAtCWZvciAoaSA9IDA7IGkgPCBhcmdzLT5jb3VudF9oYW5kbGVzOyBp
KyspCj4gLQkJZHJtX3N5bmNvYmpfYXNzaWduX251bGxfaGFuZGxlKHN5bmNvYmpzW2ldKTsKPiAr
CWZvciAoaSA9IDA7IGkgPCBhcmdzLT5jb3VudF9oYW5kbGVzOyBpKyspIHsKPiArCQlyZXQgPSBk
cm1fc3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUoc3luY29ianNbaV0pOwo+ICsJCWlmIChyZXQg
PCAwKQo+ICsJCQlicmVhazsKPiArCX0KPiAgIAo+ICAgCWRybV9zeW5jb2JqX2FycmF5X2ZyZWUo
c3luY29ianMsIGFyZ3MtPmNvdW50X2hhbmRsZXMpOwo+ICAgCj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4gaW5kZXgg
OWYxMmVmYWFhOTNhLi42ZmZiNGIyYzYzNzEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKPiBAQCAtNTg3LDYg
KzU4Nyw3IEBAIHN0YXRpYyBpbmxpbmUgc2lnbmVkIGxvbmcgZG1hX2ZlbmNlX3dhaXQoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsIGJvb2wgaW50cikKPiAgIH0KPiAgIAo+ICAgc3RydWN0IGRtYV9m
ZW5jZSAqZG1hX2ZlbmNlX2dldF9zdHViKHZvaWQpOwo+ICtzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFf
ZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKHZvaWQpOwo+ICAgdTY0IGRtYV9mZW5jZV9jb250
ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSk7Cj4gICAKPiAgICNkZWZpbmUgRE1BX0ZFTkNFX1RSQUNF
KGYsIGZtdCwgYXJncy4uLikgXAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
