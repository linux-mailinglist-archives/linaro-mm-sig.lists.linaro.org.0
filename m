Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DD09D17128A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Feb 2020 09:29:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E184615DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Feb 2020 08:29:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0CAB4619B6; Thu, 27 Feb 2020 08:29:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6D5E617DE;
	Thu, 27 Feb 2020 08:28:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6FEE960AB2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Feb 2020 08:28:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5999F617DE; Thu, 27 Feb 2020 08:28:42 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2067.outbound.protection.outlook.com [40.107.243.67])
 by lists.linaro.org (Postfix) with ESMTPS id A92F360AB2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Feb 2020 08:28:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CvrDBDVVOfJ/vDMP0sqoy4STCIcrmblgzlcJsqA0ubQGlj0T+60iJSkdELZQxW/jOexlRxvstF3wHtOQMvgUhMOdiGTplEUwbXPUnr1tKH+LJUJfDUZcLYTRTTu2QeJG9AIKpzrk9i9uyhXHVXacnsS61EOzBeZ3ex2hxg6kk74RSqEkF7HAwPGe43YsL02SW7AY/i+1rT0KpWdXmjbJ7ApwkYVOFb6N1TjiOsj2YZommvlZA6+bRwetc29WsKcFhCoeAMcA5IBfFTAv5WBEWY4HbIuuILrG6QMopEj0/JYqSsCUX7yLMTF+7UeiA+vefgiQxZfAnT4CiMqTWBb5Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Qq4uOA3yO+M/yRygpiS5tBhy8VtK31AJPQvRnXv4p4=;
 b=evb7xq8e98aZAMS+SIz762CfI7EM9+rlgd40V3HGz16EtvIcO0GI/gQn3+Hha2OWXhKwFmfyz4coL3Kwu1CxJ/x+jQRClZ8cvLGBxY7gXecK6VEt4K10KLbXnsJqx96+NSIFtzdlA6cs3NvRLVXreRFj7C+7JOIeHUcqPT2MPvcSoLwTUl0wTRFqCyavl5UuaXwLlOHcNqpJxgWkxFsnsG13Jnm5n6m4MbabnHjqrbs6LjbHpG9c5XSJfcHkpfKH7M2Dy1Pdzjp1bKyglAQC+N331wWm65GxpZ2N9wvs/Q27AKBrqToy1oQ3faMhBlZpkTPbsk+qSdQ49xXgjTKhoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1705.namprd12.prod.outlook.com (2603:10b6:3:10c::22)
 by DM5PR12MB1820.namprd12.prod.outlook.com (2603:10b6:3:10d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Thu, 27 Feb
 2020 08:28:36 +0000
Received: from DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92]) by DM5PR12MB1705.namprd12.prod.outlook.com
 ([fe80::d40e:7339:8605:bc92%11]) with mapi id 15.20.2750.021; Thu, 27 Feb
 2020 08:28:36 +0000
To: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Jason Ekstrand <jason@jlekstrand.net>
References: <20200225235856.975366-1-jason@jlekstrand.net>
 <8066d8b2-dd6a-10ef-a7bb-2c18a0661912@amd.com>
 <20200226100523.GQ2363188@phenom.ffwll.local>
 <CAOFGe94O66HL212aXqhi9tdYqw---Xm-fwNSV4pxHyPmpSGpbg@mail.gmail.com>
 <CAP+8YyEUz29fXDW5kO_0ZG6c849=TuFWCK8ynT3LuM+Tn+rMzw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <810a26e7-4294-a615-b7ee-18148ac70641@amd.com>
Date: Thu, 27 Feb 2020 09:28:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <CAP+8YyEUz29fXDW5kO_0ZG6c849=TuFWCK8ynT3LuM+Tn+rMzw@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR10CA0029.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:17c::39) To DM5PR12MB1705.namprd12.prod.outlook.com
 (2603:10b6:3:10c::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR10CA0029.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:17c::39) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15 via Frontend
 Transport; Thu, 27 Feb 2020 08:28:33 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2fefc28b-8240-46b9-50a5-08d7bb5f09dd
X-MS-TrafficTypeDiagnostic: DM5PR12MB1820:
X-Microsoft-Antispam-PRVS: <DM5PR12MB18207C7CA038F70322AE451283EB0@DM5PR12MB1820.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 03264AEA72
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(396003)(376002)(189003)(199004)(186003)(4326008)(6666004)(2616005)(16526019)(53546011)(31686004)(478600001)(110136005)(5660300002)(52116002)(2906002)(54906003)(316002)(7416002)(6486002)(31696002)(66476007)(66946007)(66556008)(66574012)(81166006)(8936002)(81156014)(8676002)(86362001)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1820;
 H:DM5PR12MB1705.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U+o5quqCd3/zAFyzDijHQ3AvLur6Ab/RYmFqscIIlHOkXFckQXU1XOV5a3xiXDGP8nwUvwSfofyuAC78d5YHXBXISMVPTCjjvBeMDjUu9zIqR4M/7H0eNlm7JirhQspZOW7Lba1oiQVJKuGUIVTFg+0TKfpexx6R941b0YIg5mtgNzkWhE0qTJ1xBbK46zMrzBRirI2JjtvH0MCXk6TNAo3T9ziCuRSnC20VEeWazPxuAw7Fg1o2r1jVqMtrGszgJtnE3is/ln/IrQPt8pFw9lwN8Jj8oxLwoPsQBefMxDGNuy6/NGuJuTHByaED/YGAZWFKKvxAOpg/mMTDJCs/bDsmnGlyOTL9cvfWZ2TMwAPlmj/j4IgtLCs5C4vniIvjypICev3Ave7WmuaMifm++bCDIxjnBafyFEGfMBE75F5GMB8dBMLa0ez4ckmcSvz0
X-MS-Exchange-AntiSpam-MessageData: Y8RDKz4KokE6ayL7JGH1UoOAXzJlVMa3iS5TIb+oL9DlvnY5Q1mGvkeHXjMeaAuWAusRAxap3QIMehQn//SEO1YA7+U+p5yH7WAMB3LEyp4VmkjrJz3aG6Ko0K9S8fO/rtgVsUmK+ajMly+vfifQbSrTnnwZIrwo1GiwXtpBMiRUTVg4aNTSBP5UuWOR1h14PuC3jXZk1PuAk6Uz0mTD4w==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fefc28b-8240-46b9-50a5-08d7bb5f09dd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2020 08:28:36.1929 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fv3akRB3ftFbia1vA0hX+LM5A+jjNetxcPCc66UvFtPfDy0kqjdPNp2Jhq0WaGaN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1820
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Stone <daniels@collabora.com>, James Jones <jajones@nvidia.com>,
 Chenbo Feng <fengc@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Greg Hackmann <ghackmann@google.com>, linaro-mm-sig@lists.linaro.org,
 =?UTF-8?Q?Kristian_H=c3=b8gsberg?= <hoegsberg@google.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Jesse Hall <jessehall@google.com>, Dave Airlie <airlied@redhat.com>,
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

QW0gMjYuMDIuMjAgdW0gMTc6NDYgc2NocmllYiBCYXMgTmlldXdlbmh1aXplbjoKPiBPbiBXZWQs
IEZlYiAyNiwgMjAyMCBhdCA0OjI5IFBNIEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5k
Lm5ldD4gd3JvdGU6Cj4+IE9uIFdlZCwgRmViIDI2LCAyMDIwIGF0IDQ6MDUgQU0gRGFuaWVsIFZl
dHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPj4+IE9uIFdlZCwgRmViIDI2LCAyMDIwIGF0
IDEwOjE2OjA1QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBbU05JUF0KPj4+
PiBKdXN0IGltYWdpbmUgdGhhdCB5b3UgYWNjZXNzIHNvbWUgRE1BLWJ1ZiB3aXRoIGEgc2hhZGVy
IGFuZCB0aGF0IG9wZXJhdGlvbgo+Pj4+IGlzIHByZXNlbnRlZCBhcyBhIGZlbmNlIG9uIHRoZSBE
TUEtYnVmcyByZXNlcnZhdGlvbiBvYmplY3QuIEFuZCBub3cgeW91IGNhbgo+Pj4+IGdvIGFoZWFk
IGFuZCByZXBsYWNlIHRoYXQgZmVuY2UgYW5kIGZyZWUgdXAgdGhlIG1lbW9yeS4KPj4+Pgo+Pj4+
IFRyaWNraW5nIHRoZSBMaW51eCBrZXJuZWwgaW50byBhbGxvY2F0aW5nIHBhZ2UgdGFibGVzIGlu
IHRoYXQgZnJlZWQgbWVtb3J5Cj4+Pj4gaXMgdHJpdmlhbCBhbmQgdGhhdCdzIGJhc2ljYWxseSBp
dCB5b3UgY2FuIG92ZXJ3cml0ZSBwYWdlIHRhYmxlcyB3aXRoIHlvdXIKPj4+PiBzaGFkZXIgYW5k
IGdhaW4gYWNjZXNzIHRvIGFsbCBvZiBzeXN0ZW0gbWVtb3J5IDopCj4+Pj4KPj4+PiBXaGF0IHdl
IGNvdWxkIGRvIGlzIHRvIGFsd2F5cyBtYWtlIHN1cmUgdGhhdCB0aGUgYWRkZWQgZmVuY2VzIHdp
bGwgY29tcGxldGUKPj4+PiBsYXRlciB0aGFuIHRoZSBhbHJlYWR5IGV4aXN0aW5nIG9uZXMsIGJ1
dCB0aGF0IGlzIGFsc28gcmF0aGVyIHRyaWNreSB0byBnZXQKPj4+PiByaWdodC4gSSB3b3VsZG4n
dCBkbyB0aGF0IGlmIHdlIGRvbid0IGhhdmUgYSByYXRoZXIgYmlnIHVzZSBjYXNlIGZvciB0aGlz
Lgo+PiBSaWdodC4gIEkgdGhvdWdodCBhYm91dCB0aGF0IGJ1dCBJJ20gc3RpbGwgbGVhcm5pbmcg
aG93IGRtYV9yZXN2Cj4+IHdvcmtzLiAgSXQnZCBiZSBlYXN5IGVub3VnaCB0byBtYWtlIGEgZmVu
Y2UgYXJyYXkgdGhhdCBjb250YWlucyBib3RoCj4+IHRoZSBvbGQgZmVuY2UgYW5kIHRoZSBuZXcg
ZmVuY2UgYW5kIHJlcGxhY2UgdGhlIG9sZCBmZW5jZSB3aXRoIHRoYXQuCj4+IFdoYXQgSSBkb24n
dCBrbm93IGlzIHRoZSBwcm9wZXIgd2F5IHRvIHJlcGxhY2UgdGhlIGV4Y2x1c2l2ZSBmZW5jZQo+
PiBzYWZlbHkuICBTb21lIHNvcnQgb2YgYXRvbWljX2NweGNoZyBsb29wLCBwZXJoYXBzPyAgSSBw
cmVzdW1lIHRoZXJlJ3MKPj4gc29tZSB3YXkgb2YgZG9pbmcgaXQgcHJvcGVybHkgYmVjYXVzZSBE
Uk0gZHJpdmVycyBhcmUgZG9pbmcgaXQgYWxsIHRoZQo+PiB0aW1lLgoKRmlyc3Qgb2YgYWxsIHlv
dSBuZWVkIHRvIGdyYWIgdGhlIGxvY2sgb2YgdGhlIGRtYV9yZXN2IG9iamVjdCBvciB5b3UgCmNh
bid0IHJlcGxhY2UgdGhlIGV4Y2x1c2l2ZSBub3IgdGhlIHNoYXJlZCBvbmVzLgoKVGhpcyB3YXkg
eW91IGRvbid0IG5lZWQgdG8gZG8gYSBhdG9taWNfY21weGNoZyBvciBhbnl0aGluZyBlbHNlIGFu
ZCAKc3RpbGwgZ3VhcmFudGVlIGNvcnJlY3Qgb3JkZXJpbmcuCgo+IEkgdGhpbmsgZm9yIGFuIGV4
Y2x1c2l2ZSBmZW5jZSB5b3UgbWF5IG5lZWQgdG8gY3JlYXRlIGEgZmVuY2UgYXJyYXkKPiB0aGF0
IGluY2x1ZGVzIHRoZSBleGlzdGluZyBleGNsdXNpdmUgYW5kIHNoYXJlZCBmZW5jZXMgaW4gdGhl
IGRtYV9yZXN2Cj4gY29tYmluZWQgd2l0aCB0aGUgYWRkZWQgZmVuY2UuCgpZZXMsIHRoYXQgYXQg
bGVhc3QgZ2l2ZXMgdXMgdGhlIGNvcnJlY3Qgc3luY2hyb25pemF0aW9uLgoKPiBIb3dldmVyLCBJ
J20gbm90IHN1cmUgd2hhdCB0aGUgYmVzdCB3YXkgaXMgdG8gZG8gZ2FyYmFnZSBjb2xsZWN0aW9u
IG9uCj4gdGhhdCBzbyB0aGF0IHdlIGRvbid0IGdldCBhbiBpbXBvc3NpYmx5IGxpc3Qgb2YgZmVu
Y2UgYXJyYXlzLgoKRXhhY3RseSB5ZXMuIFRoYXQncyBhbHNvIHRoZSByZWFzb24gd2h5IHRoZSBk
bWFfZmVuY2VfY2hhaW4gY29udGFpbmVyIEkgCmNhbWUgdXAgd2l0aCBmb3IgdGhlIHN5bmMgdGlt
ZWxpbmUgc3R1ZmYgaGFzIHN1Y2ggYSByYXRoZXIgc29waGlzdGljYXRlZCAKZ2FyYmFnZSBjb2xs
ZWN0aW9uLgoKV2hlbiBzb21lIG9mIHRoZSBpbmNsdWRlZCBmZW5jZXMgc2lnbmFsIHlvdSBuZWVk
IHRvIGZyZWUgdXAgdGhlIAphcnJheS9jaGFpbiBhbmQgbWFrZSBzdXJlIHRoYXQgdGhlIG1lbW9y
eSBmb3IgdGhlIGNvbnRhaW5lciBjYW4gYmUgcmV1c2VkLgoKPiAgIChOb3RlCj4gdGhlIGRtYV9y
ZXN2IGhhcyBhIGxvY2sgdGhhdCBuZWVkcyB0byBiZSB0YWtlbiBiZWZvcmUgYWRkaW5nIGFuCj4g
ZXhjbHVzaXZlIGZlbmNlLCBtaWdodCBiZSB1c2VmdWwpLiBTb21lIGNvZGUgdGhhdCBkb2VzIGEg
dGhpbmcgbGlrZQo+IHRoaXMgaXMgX19kbWFfcmVzdl9tYWtlX2V4Y2x1c2l2ZSBpbgo+IGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgCgpXYW50ZWQgdG8gbW92ZSB0
aGF0IGludG8gZG1hX3Jlc3YuYyBmb3IgcXVpdGUgYSB3aGlsZSBzaW5jZSB0aGVyZSBhcmUgCnF1
aXRlIGEgZmV3IG90aGVyIGNhc2VzIHdoZXJlIHdlIG5lZWQgdGhpcy4KClJlZ2FyZHMsCkNocmlz
dGlhbi4KCj4gVGhlIG90aGVyIHBpZWNlIG9mIHRoZSBwdXp6bGUgaXMgdGhhdCBvbiB0aGUgc3Vi
bWl0IHBhdGggdGhpcyB3b3VsZAo+IG5lZWQgc29tZXRoaW5nIHRvIGlnbm9yZSBpbXBsaWNpdCBm
ZW5jZXMuIEFuZCB0aGVyZSBzZW1hbnRpY2FsbHkgdGhlCj4gcXVlc3Rpb24gY29tZXMgdXAgd2hl
dGhlciBpdCBpcyBzYWZlIGZvciBhIGRyaXZlciB0byBpZ25vcmUgZXhjbHVzaXZlCj4gZmVuY2Vz
IGZyb20gYW5vdGhlciBkcml2ZXIuIChhbmQgdGhlbiB3ZSBoYXZlIGFtZGdwdSB3aGljaCBoYXMg
aXRzIG93bgo+IHJ1bGVzIG9uIGV4Y2x1c2l2ZW5lc3Mgb2YgaXRzIHNoYXJlZCBmZW5jZXMgYmFz
ZWQgb24gdGhlIGNvbnRleHQuIGUuZy4KPiB0aGUgY3VycmVudCBvcHRpb24gdG8gaWdub3JlIGlt
cGxpY2l0IGZlbmNlcyBmb3IgYSBidWZmZXIgc3RpbGwgc3luY3MKPiBvbiBleGNsdXNpdmUgZmVu
Y2VzIG9uIHRoZSBidWZmZXIpLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
