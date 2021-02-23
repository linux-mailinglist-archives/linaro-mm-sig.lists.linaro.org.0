Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 951363227A6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Feb 2021 10:19:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6C7D66034
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Feb 2021 09:19:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 960D7664E3; Tue, 23 Feb 2021 09:19:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,RCVD_IN_DNSWL_HI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD017664E2;
	Tue, 23 Feb 2021 09:18:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 95228615AF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Feb 2021 09:18:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7C4DA664E2; Tue, 23 Feb 2021 09:18:51 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2043.outbound.protection.outlook.com [40.107.236.43])
 by lists.linaro.org (Postfix) with ESMTPS id 8375A615AF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Feb 2021 09:18:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CavRL1TPfRu282nJyIH5m9dJh4bBr8nCcaU0GE+XboGVr7hPFoBP9M98tK+gBOkJWLnLzMJmmmOdCvuLXsGr2E3G8TDZtDgJ93p+D6xa+zLEg472pLVlFaJ6B6JzB/lbcfFNAUpSbinp+7xsyEDsJlkMYPZ4dFtc1ltIRI5xKr6Ie47t0tBpyGCEdq1db+S8h36GbQ8IwIlKVIBIgtCxBvTkOLNDrlpYhzsP1j26sH0uACJQry3yKjKCVlwmipbYHBD8Sg8lqDl1F/cDIdzjBH8AgpgTuGa1m62yljnFFr2au6NU4tsYf+ooz/z8y5MLB+8oBrlMcfGxKt6d/7NkUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EuFEOZDHiGxi3VUZ1XDlD+hZmsc38ugPNrDu5/DfX0E=;
 b=lDGf0i7C+zxBA1d167VkKWSG4XNXWonRDCG1HIGyQ6CfFn0U08IFxfHV59xux4mvPla5O+3OI60Q0SeBU9GC6fck1+xXEZuUhj3oVuicybYQqLTJRP84uMsRG93Wdec6qmEsyDzIjYA9fhZ5Mmjma5C1KHMIfidby7bGOJYDPiei4RrpL4t2p/DWmDhM+Z8KCcn6fTFzU3WoBLcBVk+IeAorm7C8406MU7D6HUQOkI4K3n2p7X2wh7epa6Uulfrc9DM/2B8xRPnhUXSSSidfnlWFA+EX6bhTvMSW0WX+UNC0EnrchhgwqomeC5PvJ0j8u5ibeQq8taR3pnuu1+lA3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4659.namprd12.prod.outlook.com (2603:10b6:207:1d::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29; Tue, 23 Feb
 2021 09:18:49 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2%2]) with mapi id 15.20.3868.031; Tue, 23 Feb 2021
 09:18:49 +0000
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
References: <1614070452-91054-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <5a2f3ed1-2867-25af-bb9b-51d99ef66d28@amd.com>
Date: Tue, 23 Feb 2021 10:18:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <1614070452-91054-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Content-Language: en-US
X-Originating-IP: [46.189.55.12]
X-ClientProxiedBy: ZR0P278CA0050.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::19) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.201.250.142] (46.189.55.12) by
 ZR0P278CA0050.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1d::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Tue, 23 Feb 2021 09:18:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b61af509-0e2b-4d2a-6af7-08d8d7dc06d5
X-MS-TrafficTypeDiagnostic: BL0PR12MB4659:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB465929C8F24CC58EBCC3E38D83809@BL0PR12MB4659.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kjxz54Qvqa4yFlCu7ED5xWVIqXbxjMzM2wYVvS/lJLYAF8nC1B4h4iBygApACf5di9bW83QOjlPSCkUIGgabuTD+MekP5U+9T4srF3bYM8/07yC1QmUrD761tNknJ4fbtqeefu5HJ3XZwaevYQ0mRFUBmbqvhg56SedmBR+yAlmUcFsH7uHqe0LZZ8RpLgLrnvHQvsbJE+3RU2hsRkPwbcIgeY6HzajSdUd1Yl4vDWh5IxL9vxmygBD5gato8wlykA0KawbIWabLw69ZPTfRRWHycQ2L8hwK/KIhF08dBU4WKbsToVm/WBJOjuHNJo2bt7x67QoCP1UFRTJLkX7OWthBo/5Ksk+iCpQ4Zn8zCb3EPDGNJcxI7eQeRWRK7U/7AuR96xB7yzyCQ9ltIhZKQVpt/m8MZGe9yUxl6xytbn7o0Yn7NzyEjczS7LPWP0xtXPCcUt0U9eUOaQpQR5HynPY3sZG8HWIf5uTdl2fvkF0kT8UiYFodFgCE6uWuY8uX1H7WQSCXxt0YiXWaoqoEGh+VRMeWOWQUxd32Os4tTlN+6boKrFkjBdHekcwdhY6qEWyU8GLPpIUQEiz3FDRPvEArLBtFTWTCTSvMkjvgN7I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(186003)(16526019)(316002)(8936002)(31686004)(956004)(2616005)(2906002)(26005)(16576012)(6916009)(4326008)(6666004)(6486002)(83380400001)(478600001)(66476007)(4744005)(52116002)(66946007)(8676002)(36756003)(86362001)(5660300002)(31696002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?R0tXTHUzL0F1WkRDYVdOR2hZS0EzcmlZalY1RzdoY1pkOCtzSzhTaktVMlo4?=
 =?utf-8?B?R28yeERJVVJoeEhmNDZ6NWJuc2xoUy9EWXd4b3VtUU9KYkd6d2tVYXRHTk5q?=
 =?utf-8?B?aUREc1hqSG1oR0hWUmdjYlBDM3o0OE9UOTZiWTZFeTlNSERFRERMUTNpUFcy?=
 =?utf-8?B?cjU5dk1hU3A2c0ttMnJnUzJTYlhXOGs0NURlNW9ERXU4Y3FPcUpTQTU0dGdv?=
 =?utf-8?B?QTB1TUo4QnBubDBndm9lNGFFZ3JtZDJGUi90akV4RHg4blpDc0ZuaHIwaThJ?=
 =?utf-8?B?RStKekFhU3Q2NHVhMCtib3o1bjZxdlZDZ2QzczhkVEVYZG5FQ2lqMTNzcTNn?=
 =?utf-8?B?TDBmcmNvdWRyejZsYzZSSUhSVWxIUGRiU3YxTTU5enhWOWF0N2lLQk1RNHFi?=
 =?utf-8?B?M1ZYdFEvcWpxTkQvRmFlNm55WFIxYW9WRFlHa1dCMGw4MjY3M0FaOTE2eE5W?=
 =?utf-8?B?YXRPTS84ak9nY2NVenRkWjRYYXhveUhvaTdpZWdyYjdOZzl3Y0tMQ3dWdTV2?=
 =?utf-8?B?TEFzcTZKR1Z1ZDNuWXdXZ280SElhYlhGWnJqYkJ1dGRCYk1UeHd1TW5QY3Zz?=
 =?utf-8?B?ZFVZQWJ0bXk5cmFQNzVpRWxMakIwOUhCNmFheWZWQ1FBblQxZUQvR0JOcUVs?=
 =?utf-8?B?c3Ezb0QzZ2t2NXhSbnRDOWhqY0tXL1ZTUElsakpKQ2I1QnFwb2JTVmRGcWpa?=
 =?utf-8?B?aWw3N3pnaTBKSWdML1FNVGI2cTZubDlEeG1JMUE0NUFadzYzNUtuaWpqbGg4?=
 =?utf-8?B?VmJUS016WFJQNTZEeFVDUW90V1BPNGF0MFk3QVF5NC9pbUV1U3RiUFdRb2lT?=
 =?utf-8?B?d3EyaHZGQWNMRkFObjdrc3B4b3BwTWFEUXJxUDJEVjhBLytVMFA5cHNkU2w4?=
 =?utf-8?B?VXp4TTEyV3lSbGpvb0tIczdNdFBmWU1CemxXUWw1TVV1NTFlSUxnUWtvYmVy?=
 =?utf-8?B?TmNHRHFhSU03YU1yNzZxczVRcFJ5dWFlaExPazhkMXBKbU1OM050aDlLbnJO?=
 =?utf-8?B?WHNEdCtCOUdqcmkyUUExMmV4NmxROWF2UmZ4WDFZN2VSYkhKRjBCOExIUytJ?=
 =?utf-8?B?Yk0zQzhCZXZIN21PZzdOaGRSVTBZR3Vpd3ExQ1c2c1p5cTRJV3FRc2dmSW1q?=
 =?utf-8?B?aUhxcnRUNjhuREZhUTZ3VGtJdGV4VXdRTU92clRaSWZKQkErOEowU1ZNRXdz?=
 =?utf-8?B?MzFiTDVJR3N5TERuRHRVcUJ2SFN6U2JRZ256L2Nnb00xcGJRcWFYZ1lHaFhB?=
 =?utf-8?B?VTVpT0RYK3Z2anVUM0t4dmlrdzNObHRhcmUzNWxTNXVob1ZJLzJKSDljbzI4?=
 =?utf-8?B?eldyWkdWRjJyVnV4OGhVNHdqbEFQRTlvb2xqWlBYT2tLY3A0N05rK2VDQ0t3?=
 =?utf-8?B?QmJPc1p2aHJicStIV2ExdXlNZVVPTml1R2RMS0J1REY2eWtaOE1mZ0JIcnFX?=
 =?utf-8?B?T05ZdmdZbDd2c1JmSnFSMjYrUE43Rk1teVB3K2J5aVVxWWIrZVRyQUtrRzd5?=
 =?utf-8?B?TVU5RFB1ODk4VjB6QldTelVNenNMcnBBbVpMc2VnYXhXNWZKNnBFNkMybzI0?=
 =?utf-8?B?RThndU5DWVdTbzFjSVFzNFZlTHU2bzlCNUl5dmhLOEQ4WmQyOVBnYkpaRndi?=
 =?utf-8?B?b2JHVDZJZU85M3lVR1hKdXVTVThJMG1JWnIrNWhDeGNKR3l6NWJJbFM5a3Y0?=
 =?utf-8?B?S3h2VEFLRi9vclQxS0xYWnBGYjBQR1puUC9xQytabUdhZVRaajBhaThjM1k2?=
 =?utf-8?Q?444JORB0/BWfrfTbxMGg4Umdktl6yPtLmaka2Dj?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b61af509-0e2b-4d2a-6af7-08d8d7dc06d5
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2021 09:18:48.8717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DFcrQXKcCg1+9sXUHtYumfwUO6x2+SPuG5JMXSkyKVaIdQ5+VW5v4o8lLNjTX+YB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4659
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 ray.huang@amd.com, daniel@ffwll.ch, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] drm/ttm/ttm_bo: make
	ttm_bo_glob_use_count static
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

QW0gMjMuMDIuMjEgdW0gMDk6NTQgc2NocmllYiBKaWFwZW5nIENob25nOgo+IEZpeCB0aGUgZm9s
bG93aW5nIHNwYXJzZSB3YXJuaW5nOgo+Cj4gZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYzo1
MzoxMDogd2FybmluZzogc3ltYm9sCj4gJ3R0bV9ib19nbG9iX3VzZV9jb3VudCcgd2FzIG5vdCBk
ZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KCklJUkMgd2UgYWxyZWFkeSBoYXZlIGEgcGF0
Y2ggZm9yIHRoaXMgb24gdGhlIG1haWxpbmcgbGlzdCBhbmQgdGhlIG11dGV4IApjYW4gYmUgc3Rh
dGljIGFzIHdlbGwuCgpDaHJpc3RpYW4uCgo+Cj4gUmVwb3J0ZWQtYnk6IEFiYWNpIFJvYm90IDxh
YmFjaUBsaW51eC5hbGliYWJhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKaWFwZW5nIENob25nIDxq
aWFwZW5nLmNob25nQGxpbnV4LmFsaWJhYmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJt
L3R0bS90dG1fYm8uYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Jv
LmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gaW5kZXggYjY1ZjRiMS4uMTA3ZGQx
MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+IEBAIC01MCw3ICs1MCw3IEBACj4gICAgKiB0dG1f
Z2xvYmFsX211dGV4IC0gcHJvdGVjdGluZyB0aGUgZ2xvYmFsIEJPIHN0YXRlCj4gICAgKi8KPiAg
IERFRklORV9NVVRFWCh0dG1fZ2xvYmFsX211dGV4KTsKPiAtdW5zaWduZWQgdHRtX2JvX2dsb2Jf
dXNlX2NvdW50Owo+ICtzdGF0aWMgdW5zaWduZWQgdHRtX2JvX2dsb2JfdXNlX2NvdW50Owo+ICAg
c3RydWN0IHR0bV9ib19nbG9iYWwgdHRtX2JvX2dsb2I7Cj4gICBFWFBPUlRfU1lNQk9MKHR0bV9i
b19nbG9iKTsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
