Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694D262B74
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Sep 2020 11:13:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EFFD619D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Sep 2020 09:13:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F2A1B666D9; Wed,  9 Sep 2020 09:13:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BD8D62BBE;
	Wed,  9 Sep 2020 09:12:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F12AE61839
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Sep 2020 09:11:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D89876187F; Wed,  9 Sep 2020 09:11:48 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2051.outbound.protection.outlook.com [40.107.94.51])
 by lists.linaro.org (Postfix) with ESMTPS id A573661839
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Sep 2020 09:11:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0LUJoMKePu9v8+Z1gjLZH4dmakXxEFS+yC5Vo2sEH297quMiljfi4WdeMZX68CF2p4GP8wrxFn96qomA/YBJp5RVimsXEBCtM8+2esynayjyeGmJHXaQvxLspGdDn70trB3hCavyZ3/JW4DEUsQN/BuBU1ceeXiTxTDUAM23sjtURmroM6YQIBEHAKJj+w+9qfsRFIBqhGYMFyI2yXjUHmrXpzn+vSdXgtM9K48b9D44kuzFoEg0V545HCxv2/52MPKn+VXsUoWv0FVJBaDeQ3M3eCUoiQx4/XmRBE/Q0vWrl2Te0C9J6FW8i0Ql5DyEQBHvFoTccO2IIjJ9a2m1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ojIVsDFW6K4dl4yoMYHQqEiv91LxnZ45+f7uNAnS8TI=;
 b=Hn7EH0qulfMidCVWFf9A/uOJZOEbi+ZxyNfc4ogAUd9RiBStAz5Zg26YV19u0Xcc8lGyOQ7aYb5myqwM4EPozZHbRfQF2JhnDI4f2OVhmXJzuPJS4mXiN8S2BMdrwSVVoVUI0LVvurUoF47VK9bfVYNZIECHCbSEbzAbFhApSYoRhBkEY1dklSwFGJkT9ZRBKxEwZ5Dz3GNH8A70juCQYOung5hrZ/r5HUkyyz6Uem1DNlAru7GXVe9trrLi7bSGqfEVGHSaibmfNgFrRl9YxqonaEaDsVsjEKPwnQTqSprmrQqpk/hhkN5P6W6/fHeYNXfKopLf4UVX2NhTMRMVeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4470.namprd12.prod.outlook.com (2603:10b6:208:260::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Wed, 9 Sep
 2020 09:11:43 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60%6]) with mapi id 15.20.3348.019; Wed, 9 Sep 2020
 09:11:43 +0000
To: Tian Tao <tiantao6@hisilicon.com>, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, alexander.deucher@amd.com,
 ben.dooks@codethink.co.uk, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <1599638225-39300-1-git-send-email-tiantao6@hisilicon.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <665ed169-cc12-2e6e-11f9-bc1a69fdaad7@amd.com>
Date: Wed, 9 Sep 2020 11:11:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <1599638225-39300-1-git-send-email-tiantao6@hisilicon.com>
Content-Language: en-US
X-ClientProxiedBy: AM4PR07CA0006.eurprd07.prod.outlook.com
 (2603:10a6:205:1::19) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM4PR07CA0006.eurprd07.prod.outlook.com (2603:10a6:205:1::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.5 via Frontend Transport; Wed, 9 Sep 2020 09:11:42 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: edf31d65-cac3-4238-0920-08d854a05eb1
X-MS-TrafficTypeDiagnostic: MN2PR12MB4470:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4470AD3C4CEEC0F07CC8924383260@MN2PR12MB4470.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eJegBLLNp6gJLKsK/c+RoQos7ztQiKShSWCE+xFIc69ZmFUMed34N6sqjIDFJzsB3ua72DUSuZ3Dp0d4NPmEddNqv2LqAl3L6ANDi3iGOYtzlAEdiOvGee146/ExCScRaRQ0pQ29H9wZun7Ec5ZjTo1OSJHaXpz4eMow2cnaxQjSi9/sgTPIPVofOgH/8LvsVgXbaDadcLvmhM7WqjhHnJ2GXt+kut3Rrwk+V/SaTzTS/51W7drWIhZJ8auKV8P0fQDkrSZddWrVfTA92/1Q7UH7BbW4bhLCF+oyRLzk+PbVeA/k+sgIu2eYxdtx4bAbDFO4u3E1VXV+LnqCP366PvGx2ZISVXmH2b7lAJVsHlTKDBHiIJyQ7wZIFpt6fDSv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39850400004)(346002)(376002)(396003)(4326008)(31686004)(6486002)(16526019)(8676002)(186003)(66574015)(478600001)(86362001)(83380400001)(52116002)(66946007)(66556008)(66476007)(36756003)(2906002)(2616005)(31696002)(5660300002)(6666004)(8936002)(316002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: GxS7cBM4/HJbdS+7ujA46jRKSDsOSjlo4kUTpmp0/TbMCYfU5Mk8/ap7kkIGFRaOtK+qbjPGIBNrDrxEJn3JDwhkdxycPAAS0vtt9rFe7FJe7aLC0607cMuvd31SB3/WgDGN0IQz9vi/da4MVy9J97kGUV71wWrOsnOP8fVmMdUBIQl+eG7Kjbyq4B9eaj2OL/jKkTphoCLjFwpiqg2QOyqhZRDiDIAN5VMroMxM2gHy3gnbfb8b6Ovv09gwlhz5evkAHX27i9aOlmSq86IFfla9hcnVsyuMdMBJAEIe2rJ9u2/F9J3wSkZbiK5ePfI848Y6poQACvwQaMcicvopc7jlVx/P6O1jw0BQDaAQRaZJigTKboJet8MHscz3Pq+4imadfXYAEeYP/MRAlXWsMdwssKNYI+l1h0O2T3e3onJUSl0fgK/evNQjOqzSYG8O/qOQpSWREHaqPKs+QQ1CozfWNT+C54owJhpLAioEjYhlDzQWyIUZZMrtf3I1v38h4J1XUjsFTgzbFjw5yOu0OQ6q+BOPJJxxgr+zb8PE2MH0STNxS/K3qOnvyAKQ0FeERNPZ3tRqGADGFIo2HAQsmCjDfXCbNhN+RuEM/EoH/M3t5UDDUdr2H2yd6AxguH6072qFItkI7WUMjgX8XYr0Wm1uZSBhOk9iTZxiwXnL3qlb33OWz3j0fYC5PbHthMMFNcH/jwjFuyxAOV9jy3j8oA==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edf31d65-cac3-4238-0920-08d854a05eb1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2020 09:11:43.4465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vsBV6xBsJ7ab3FaRPeu8HBzCeW7l8bfAtpHg4i+tOgzX5KKH7To9NZL+PKd1XVTN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4470
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linuxarm@huawei.com
Subject: Re: [Linaro-mm-sig] [PATCH] drm/scheduler: fix sched_fence.c
	kernel-doc warnings
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

QW0gMDkuMDkuMjAgdW0gMDk6NTcgc2NocmllYiBUaWFuIFRhbzoKPiBGaXgga2VybmVsLWRvYyB3
YXJuaW5ncy4KPiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmM6MTEwOiB3
YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IKPiBtZW1iZXIgJ2YnIG5vdCBkZXNjcmliZWQg
aW4gJ2RybV9zY2hlZF9mZW5jZV9yZWxlYXNlX3NjaGVkdWxlZCcKPiBkcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmM6MTEwOiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24KPiBw
YXJhbWV0ZXIgJ2ZlbmNlJyBkZXNjcmlwdGlvbiBpbiAnZHJtX3NjaGVkX2ZlbmNlX3JlbGVhc2Vf
c2NoZWR1bGVkJwo+Cj4gU2lnbmVkLW9mZi1ieTogVGlhbiBUYW8gPHRpYW50YW82QGhpc2lsaWNv
bi5jb20+CgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2Uu
YyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2Uu
YyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYwo+IGluZGV4IDhiNDVj
M2ExYjg0Li42OWRlMmM3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfZmVuY2UuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVu
Y2UuYwo+IEBAIC0xMDEsNyArMTAxLDcgQEAgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2ZlbmNlX2Zy
ZWUoc3RydWN0IHJjdV9oZWFkICpyY3UpCj4gICAvKioKPiAgICAqIGRybV9zY2hlZF9mZW5jZV9y
ZWxlYXNlX3NjaGVkdWxlZCAtIGNhbGxiYWNrIHRoYXQgZmVuY2UgY2FuIGJlIGZyZWVkCj4gICAg
Kgo+IC0gKiBAZmVuY2U6IGZlbmNlCj4gKyAqIEBmOiBmZW5jZQo+ICAgICoKPiAgICAqIFRoaXMg
ZnVuY3Rpb24gaXMgY2FsbGVkIHdoZW4gdGhlIHJlZmVyZW5jZSBjb3VudCBiZWNvbWVzIHplcm8u
Cj4gICAgKiBJdCBqdXN0IFJDVSBzY2hlZHVsZXMgZnJlZWluZyB1cCB0aGUgZmVuY2UuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
