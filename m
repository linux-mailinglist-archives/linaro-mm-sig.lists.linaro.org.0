Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1353F178C9B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 09:35:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B6CD65FBF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 08:35:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2BA1665FBE; Wed,  4 Mar 2020 08:35:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C0F665FBB;
	Wed,  4 Mar 2020 08:34:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D02C16058D
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 08:34:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B2AB465FBB; Wed,  4 Mar 2020 08:34:33 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2064.outbound.protection.outlook.com [40.107.244.64])
 by lists.linaro.org (Postfix) with ESMTPS id 22FDA6058D
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 08:34:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/gHTgtPOjMOQBTotXnr1uun2rv3GAWtYNJMWO3J+RD4djCc/pitg6+lP6T4D+/1zljNb7FYz38Ypx/CLEx3n4mwW4Zl7GRsQHg5fT2t8vwsseeiIrH/poBs6Jed15zeK72R80aDtgoJ5XAY29UlOJJDpz/2M3fqi0V3buw2Oc5XaLnI7XK97LWWXTrOTFQtpyhB7cCI2KAoa4jJQna+jvkE9YqYXda5pyq66tbiic73XZFJDxmh22/436+CP2rub5oY1smiw4q5cRHV33oR3PNPp5kgWHI+EgAjU1q0+CA507jd6DcA2z/OwHS1KzTw2vAVFPxiAnX/Rie8H0VPjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJUl4Nq6XkzuqZcCGKpJvSr2+ixzpWWcr7f+eqZ/KX8=;
 b=HjqVHN+Hxy3Dw1hdMryI0YAAz1lbZKPvZGOTwzf/HKjwolGwDOUfxyhcSHBFYeR83WMS5Jam0p5Jcw+DH/MGC6T5KXxobDXDoCQ1JgFk1p6FJnoMpJb1Z2R2YbYkSc+QSWL1B2isaCUT0rD3hUPZglJFv3YK9y4Xo0Deid1wUUcG9N/lXihdnzSQkWj16Ub02TVi6vi37aaGbIbziSXZsJ7G/3rjEO210D7WWKGw+/+JctdQMLLMhp5TnwGe7q8q6xFghqDusc+3m+t/OLj7t/AdeqPxVQNyS7kv7vXD63D+bZdPYSpP+D7nyRyc69bxg7h+4pjn67DsTScBQZ4g1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (2603:10b6:3:10c::22)
 by DM5PR12MB1370.namprd12.prod.outlook.com (2603:10b6:3:76::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Wed, 4 Mar
 2020 08:34:30 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92%11]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 08:34:30 +0000
To: Jason Ekstrand <jason@jlekstrand.net>
References: <20200225235856.975366-1-jason@jlekstrand.net>
 <8066d8b2-dd6a-10ef-a7bb-2c18a0661912@amd.com>
 <20200226100523.GQ2363188@phenom.ffwll.local>
 <CAOFGe94O66HL212aXqhi9tdYqw---Xm-fwNSV4pxHyPmpSGpbg@mail.gmail.com>
 <CAP+8YyEUz29fXDW5kO_0ZG6c849=TuFWCK8ynT3LuM+Tn+rMzw@mail.gmail.com>
 <810a26e7-4294-a615-b7ee-18148ac70641@amd.com>
 <CAOFGe96namyeQXTvdrduM+=wkJuoWWx34CxcsJHS3fcCaKDadw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <21aeacc0-f3ae-c5dd-66df-4d2f3d73f73e@amd.com>
Date: Wed, 4 Mar 2020 09:34:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <CAOFGe96namyeQXTvdrduM+=wkJuoWWx34CxcsJHS3fcCaKDadw@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM3PR07CA0062.eurprd07.prod.outlook.com
 (2603:10a6:207:4::20) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM3PR07CA0062.eurprd07.prod.outlook.com (2603:10a6:207:4::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.5 via Frontend Transport; Wed, 4 Mar 2020 08:34:27 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f161961b-6500-40e1-b171-08d7c016db31
X-MS-TrafficTypeDiagnostic: DM5PR12MB1370:
X-Microsoft-Antispam-PRVS: <DM5PR12MB13707D43473B92F356B5C78F83E50@DM5PR12MB1370.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0332AACBC3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(376002)(39860400002)(346002)(189003)(199004)(316002)(54906003)(2616005)(52116002)(31686004)(36756003)(5660300002)(31696002)(86362001)(6486002)(6916009)(16526019)(66574012)(8936002)(2906002)(4326008)(186003)(81166006)(478600001)(66476007)(6666004)(81156014)(66946007)(8676002)(66556008)(53546011)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1370;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y3DXpqNpHqoqoOufSEm0oJ+5j0p+OFQt2T8ymMt5bboC1NDXbUfSs/v48wQ/ELy8JBhXal3x2NbsvOcV3WpOQUlgOgMuoL36gBGFw88IPdRx13G7Aw7TpvNWbo9/27eDc8zpaW5xDoSdgB+E4dhtt3hA3WHBPOdD9CiWHaV5kPCyLO9HzAy4mQKqCY9KUmSDDCLYjs4gcnsNrKkdVyGiC6glY8fbu8ssyTzKZS/kxV7MkiL5KnXOQBpDDRiGQQhCfVOt5UaVVcHbJ6hi2pWF38RRHj7X1RUwz9OqZjDKyIT+HVMH+dxQNxpKV7Xy0Qq9jsEcVAVK0Fq+f6s/0hc//aXmE1WJPgWdyw1UK7fxqarq84H0tfKTOOa/verbeQrIiXktz8fGr0UEgvIPUWtb4FhnZN7HWxlyWX9tJlLXz8NISOcpRLrqPhIr+G5n+KCw
X-MS-Exchange-AntiSpam-MessageData: hIqoKNK1YF7y9S1NBoc20Yp3+z3exIi0DFo0010jJjaXCBMvjL9CPvXmpLqSY/pdEVW7i/EHtgWrJMsSKRu/LtMCgAlfhdperN72LV1HWOpAS/zCsHAFOKhHQFfkJJYEoQmFtTPkqGwEOv5fTmqeSMYrhYsquxUP0L6CC4C2ta3WDnOK27ifdNW46pBiqsvejeT5Fs3wjgln3fqaKIlHaQ==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f161961b-6500-40e1-b171-08d7c016db31
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2020 08:34:29.8983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rk3OKu0GXCmwpYjJoJOeo2anRn93M0FTu86gATzEGI01r06z+LIaGHsHkeZeCVOQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1370
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, Daniel Stone <daniels@collabora.com>,
 James Jones <jajones@nvidia.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 LKML <linux-kernel@vger.kernel.org>, Greg Hackmann <ghackmann@google.com>,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?Q?Kristian_H=c3=b8gsberg?= <hoegsberg@google.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, Jesse Hall <jessehall@google.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Add an API for importing
 and exporting sync files
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

QW0gMDMuMDMuMjAgdW0gMjA6MTAgc2NocmllYiBKYXNvbiBFa3N0cmFuZDoKPiBPbiBUaHUsIEZl
YiAyNywgMjAyMCBhdCAyOjI4IEFNIENocmlzdGlhbiBLw7ZuaWcKPiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPiB3cm90ZToKPj4gW1NOSVBdCj4+PiBIb3dldmVyLCBJJ20gbm90IHN1cmUgd2hh
dCB0aGUgYmVzdCB3YXkgaXMgdG8gZG8gZ2FyYmFnZSBjb2xsZWN0aW9uIG9uCj4+PiB0aGF0IHNv
IHRoYXQgd2UgZG9uJ3QgZ2V0IGFuIGltcG9zc2libHkgbGlzdCBvZiBmZW5jZSBhcnJheXMuCj4+
IEV4YWN0bHkgeWVzLiBUaGF0J3MgYWxzbyB0aGUgcmVhc29uIHdoeSB0aGUgZG1hX2ZlbmNlX2No
YWluIGNvbnRhaW5lciBJCj4+IGNhbWUgdXAgd2l0aCBmb3IgdGhlIHN5bmMgdGltZWxpbmUgc3R1
ZmYgaGFzIHN1Y2ggYSByYXRoZXIgc29waGlzdGljYXRlZAo+PiBnYXJiYWdlIGNvbGxlY3Rpb24u
Cj4+Cj4+IFdoZW4gc29tZSBvZiB0aGUgaW5jbHVkZWQgZmVuY2VzIHNpZ25hbCB5b3UgbmVlZCB0
byBmcmVlIHVwIHRoZQo+PiBhcnJheS9jaGFpbiBhbmQgbWFrZSBzdXJlIHRoYXQgdGhlIG1lbW9y
eSBmb3IgdGhlIGNvbnRhaW5lciBjYW4gYmUgcmV1c2VkLgo+IEN1cnJlbnRseSAoYXMgb2YgdjIp
LCBJJ20gdXNpbmcgZG1hX2ZlbmNlX2FycmF5IGFuZCBiZWluZyBjYXJlZnVsIHRvCj4gbm90IGJv
dGhlciBjb25zdHJ1Y3Rpbmcgb25lIGlmIHRoZXJlJ3Mgb25seSBvbmUgZmVuY2UgaW4gcGxheS4g
IElzCj4gdGhpcyBpbnN1ZmZpY2llbnQ/ICBJZiBzbywgbWF5YmUgd2Ugc2hvdWxkIGNvbnNpZGVy
IGltcHJvdmluZwo+IGRtYV9mZW5jZV9hcnJheS4KClRoYXQgc3RpbGwgd29uJ3Qgd29yayBjb3Jy
ZWN0bHkgaW4gYWxsIGNhc2VzLiBTZWUgdGhlIHByb2JsZW0gaXMgbm90IApvbmx5IG9wdGltaXph
dGlvbiwgYnV0IGFsc28gYXZvaWRpbmcgc2l0dWF0aW9ucyB3aGVyZSB1c2Vyc3BhY2UgY2FuIAph
YnVzZSB0aGUgaW50ZXJmYWNlIHRvIGRvIG5hc3R5IHRoaW5ncy4KCkZvciBleGFtcGxlIGlmIHVz
ZXJzcGFjZSBqdXN0IGNhbGxzIHRoYXQgZnVuY3Rpb24gaW4gYSBsb29wIHlvdSBjYW4gCmNyZWF0
ZSBhIGxvbmcgY2hhaW4gb2YgZG1hX2ZlbmNlX2FycmF5IG9iamVjdHMuCgpJZiB0aGF0IGNoYWlu
IGlzIHRoZW4gc3VkZGVubHkgcmVsZWFzZWQgdGhlIHJlY3Vyc2l2ZSBkcm9wcGluZyBvZiAKcmVm
ZXJlbmNlcyBjYW4gb3ZlcndyaXRlIHRoZSBrZXJuZWwgc3RhY2suCgpGb3IgcmVmZXJlbmNlIHNl
ZSB3aGF0IGRhbmNlIGlzIG5lY2Vzc2FyeSBpbiB0aGUgZG1hX2ZlbmNlX2NoYWluX3JlbGVhc2Ug
CmZ1bmN0aW9uIHRvIGF2b2lkIHRoYXQ6Cj4gwqDCoMKgwqDCoMKgwqAgLyogTWFudWFsbHkgdW5s
aW5rIHRoZSBjaGFpbiBhcyBtdWNoIGFzIHBvc3NpYmxlIHRvIGF2b2lkIAo+IHJlY3Vyc2lvbgo+
IMKgwqDCoMKgwqDCoMKgwqAgKiBhbmQgcG90ZW50aWFsIHN0YWNrIG92ZXJmbG93Lgo+IMKgwqDC
oMKgwqDCoMKgwqAgKi8KPiDCoMKgwqDCoMKgwqDCoCB3aGlsZSAoKHByZXYgPSByY3VfZGVyZWZl
cmVuY2VfcHJvdGVjdGVkKGNoYWluLT5wcmV2LCB0cnVlKSkpIHsKLi4uLgoKSXQgdG9vayBtZSBx
dWl0ZSBhIHdoaWxlIHRvIGZpZ3VyZSBvdXQgaG93IHRvIGRvIHRoaXMgd2l0aG91dCBjYXVzaW5n
IAppc3N1ZXMuIEJ1dCBJIGRvbid0IHNlZSBob3cgdGhpcyB3b3VsZCBiZSBwb3NzaWJsZSBmb3Ig
ZG1hX2ZlbmNlX2FycmF5LgoKQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGUgb25seSByZWFsIG9wdGlv
biB0byBpbXBsZW1lbnQgdGhpcyB3b3VsZCBiZSB0byAKY2hhbmdlIHRoZSBkbWFfcmVzdiBvYmpl
Y3QgY29udGFpbmVyIHNvIHRoYXQgeW91IGNhbiBhZGQgZmVuY2VzIHdpdGhvdXQgCm92ZXJyaWRp
bmcgZXhpc3Rpbmcgb25lcy4KCkZvciBzaGFyZWQgZmVuY2VzIHRoYXQgY2FuIGJlIGRvbmUgcmVs
YXRpdmUgZWFzaWx5LCBidXQgSSBhYnNvbHV0ZWx5IApkb24ndCBzZWUgaG93IHRvIGRvIHRoaXMg
Zm9yIGV4Y2x1c2l2ZSBvbmVzIHdpdGhvdXQgYSBsYXJnZXIgcmV3b3JrLgoKPj4+ICAgIChOb3Rl
Cj4+PiB0aGUgZG1hX3Jlc3YgaGFzIGEgbG9jayB0aGF0IG5lZWRzIHRvIGJlIHRha2VuIGJlZm9y
ZSBhZGRpbmcgYW4KPj4+IGV4Y2x1c2l2ZSBmZW5jZSwgbWlnaHQgYmUgdXNlZnVsKS4gU29tZSBj
b2RlIHRoYXQgZG9lcyBhIHRoaW5nIGxpa2UKPj4+IHRoaXMgaXMgX19kbWFfcmVzdl9tYWtlX2V4
Y2x1c2l2ZSBpbgo+Pj4gZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYu
Ywo+PiBXYW50ZWQgdG8gbW92ZSB0aGF0IGludG8gZG1hX3Jlc3YuYyBmb3IgcXVpdGUgYSB3aGls
ZSBzaW5jZSB0aGVyZSBhcmUKPj4gcXVpdGUgYSBmZXcgb3RoZXIgY2FzZXMgd2hlcmUgd2UgbmVl
ZCB0aGlzLgo+IEkndmUgcm91Z2hseSBkb25lIHRoYXQuICBUaGUgcHJpbWFyeSBkaWZmZXJlbmNl
IGlzIHRoYXQgbXkgdmVyc2lvbgo+IHRha2VzIGFuIG9wdGlvbmFsIGFkZGl0aW9uYWwgZmVuY2Ug
dG8gYWRkIHRvIHRoZSBhcnJheS4gIFRoaXMgbWFrZXMgaXQKPiBhIGJpdCBtb3JlIGNvbXBsaWNh
dGVkIGJ1dCBJIHRoaW5rIEkgZ290IGl0IG1vc3RseSByaWdodC4KPgo+IEkndmUgYWxzbyB3cml0
dGVuIHVzZXJzcGFjZSBjb2RlIHdoaWNoIGV4ZXJjaXNlcyB0aGlzIGFuZCBpdCBzZWVtcyB0bwo+
IHdvcmsuICBIb3BlZnVsbHksIHRoYXQgd2lsbCBnaXZlIGEgYmV0dGVyIGlkZWEgb2Ygd2hhdCBJ
J20gdHJ5aW5nIHRvCj4gYWNjb21wbGlzaC4KClllcywgdGhhdCBpcyBpbmRlZWQgYSByZWFsbHkg
bmljZSB0byBoYXZlIGZlYXR1cmUuCgpSZWdhcmRzLApDaHJpc3RpYW4uCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
